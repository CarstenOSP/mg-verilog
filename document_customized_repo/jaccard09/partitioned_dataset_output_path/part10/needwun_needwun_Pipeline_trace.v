
module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,ptr_0_address0,ptr_0_ce0,ptr_0_q0,ptr_1_address0,ptr_1_ce0,ptr_1_q0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,b_str_idx_6_out,b_str_idx_6_out_ap_vld,a_str_idx_0_0_out,a_str_idx_0_0_out_ap_vld,ap_return);  
parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_pp0_stage0 = 18'd2;
parameter    ap_ST_fsm_pp0_stage1 = 18'd4;
parameter    ap_ST_fsm_pp0_stage2 = 18'd8;
parameter    ap_ST_fsm_pp0_stage3 = 18'd16;
parameter    ap_ST_fsm_pp0_stage4 = 18'd32;
parameter    ap_ST_fsm_pp0_stage5 = 18'd64;
parameter    ap_ST_fsm_pp0_stage6 = 18'd128;
parameter    ap_ST_fsm_pp0_stage7 = 18'd256;
parameter    ap_ST_fsm_pp0_stage8 = 18'd512;
parameter    ap_ST_fsm_pp0_stage9 = 18'd1024;
parameter    ap_ST_fsm_pp0_stage10 = 18'd2048;
parameter    ap_ST_fsm_pp0_stage11 = 18'd4096;
parameter    ap_ST_fsm_state15 = 18'd8192;
parameter    ap_ST_fsm_state16 = 18'd16384;
parameter    ap_ST_fsm_state17 = 18'd32768;
parameter    ap_ST_fsm_state18 = 18'd65536;
parameter    ap_ST_fsm_state19 = 18'd131072;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [6:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [6:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [6:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [5:0] SEQB_0_address0;
output   SEQB_0_ce0;
input  [7:0] SEQB_0_q0;
output  [5:0] SEQB_1_address0;
output   SEQB_1_ce0;
input  [7:0] SEQB_1_q0;
output  [13:0] ptr_0_address0;
output   ptr_0_ce0;
input  [7:0] ptr_0_q0;
output  [13:0] ptr_1_address0;
output   ptr_1_ce0;
input  [7:0] ptr_1_q0;
output  [5:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
output  [5:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
output  [31:0] b_str_idx_6_out;
output   b_str_idx_6_out_ap_vld;
output  [31:0] a_str_idx_0_0_out;
output   a_str_idx_0_0_out_ap_vld;
output  [1:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg b_str_idx_6_out_ap_vld;
reg a_str_idx_0_0_out_ap_vld;
reg[1:0] ap_return;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] a_idx_4_reg_554;
reg   [31:0] b_idx_4_reg_566;
reg   [31:0] a_idx_7_reg_578;
reg   [31:0] b_idx_7_reg_591;
reg   [31:0] a_idx_10_reg_604;
reg   [31:0] b_idx_10_reg_617;
wire   [31:0] grp_fu_675_p2;
reg   [31:0] reg_869;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] or_ln62_reg_1502;
wire   [7:0] select_ln64_fu_1013_p3;
wire   [31:0] grp_fu_690_p2;
reg   [31:0] reg_875;
wire   [31:0] grp_fu_721_p2;
reg   [31:0] reg_881;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [0:0] or_ln62_1_reg_1592;
wire   [7:0] select_ln64_1_fu_1153_p3;
wire   [31:0] grp_fu_737_p2;
reg   [31:0] reg_887;
wire   [31:0] grp_fu_769_p2;
reg   [31:0] reg_893;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [0:0] or_ln62_2_reg_1675;
wire   [7:0] select_ln64_2_fu_1262_p3;
wire   [31:0] grp_fu_785_p2;
reg   [31:0] reg_899;
wire   [31:0] grp_fu_817_p2;
reg   [31:0] reg_905;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [0:0] or_ln62_3_reg_1754;
wire   [7:0] select_ln64_3_fu_1397_p3;
wire   [31:0] grp_fu_833_p2;
reg   [31:0] reg_911;
reg   [31:0] b_idx_1_reg_1488;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_1495;
wire   [0:0] or_ln62_fu_955_p2;
wire   [0:0] trunc_ln64_fu_993_p1;
reg   [0:0] trunc_ln64_reg_1506;
reg   [7:0] select_ln64_reg_1521;
reg   [63:0] b_str_idx_1_reg_1565;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] trunc_ln18_fu_1047_p1;
reg   [31:0] trunc_ln18_reg_1571;
wire   [63:0] zext_ln18_fu_1061_p1;
reg   [63:0] zext_ln18_reg_1576;
wire   [0:0] trunc_ln17_fu_1075_p1;
reg   [0:0] trunc_ln17_reg_1582;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] trunc_ln17_1_fu_1079_p1;
reg   [0:0] trunc_ln17_1_reg_1587;
wire   [0:0] or_ln62_1_fu_1103_p2;
wire   [0:0] trunc_ln64_1_fu_1133_p1;
reg   [0:0] trunc_ln64_1_reg_1596;
reg   [6:0] alignedA_1_addr_reg_1611;
reg   [6:0] alignedB_1_addr_reg_1616;
reg   [7:0] select_ln64_1_reg_1621;
wire   [0:0] trunc_ln17_4_fu_1184_p1;
reg   [0:0] trunc_ln17_4_reg_1665;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] trunc_ln17_5_fu_1188_p1;
reg   [0:0] trunc_ln17_5_reg_1670;
wire   [0:0] or_ln62_2_fu_1212_p2;
wire   [0:0] trunc_ln64_2_fu_1242_p1;
reg   [0:0] trunc_ln64_2_reg_1679;
reg   [7:0] select_ln64_2_reg_1694;
wire   [63:0] zext_ln65_1_fu_1310_p1;
reg   [63:0] zext_ln65_1_reg_1738;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [0:0] trunc_ln17_8_fu_1316_p1;
reg   [0:0] trunc_ln17_8_reg_1744;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [0:0] trunc_ln17_9_fu_1320_p1;
reg   [0:0] trunc_ln17_9_reg_1749;
wire   [0:0] or_ln62_3_fu_1344_p2;
wire   [0:0] trunc_ln64_3_fu_1374_p1;
reg   [0:0] trunc_ln64_3_reg_1758;
reg   [6:0] alignedA_1_addr_1_reg_1773;
reg   [6:0] alignedB_1_addr_1_reg_1778;
reg   [7:0] select_ln64_3_reg_1783;
wire    ap_block_pp0_stage10_subdone;
reg    ap_predicate_tran12to15_state12;
reg    ap_predicate_tran12to16_state12;
reg    ap_predicate_tran12to17_state12;
reg    ap_condition_pp0_exit_iter0_state12;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage11_subdone;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_4_reg_554;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_4_reg_566;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_7_reg_578;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_7_reg_591;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_10_reg_604;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_10_reg_617;
reg   [31:0] ap_phi_mux_a_idx_13_phi_fu_633_p6;
wire   [31:0] ap_phi_reg_pp0_iter1_a_idx_13_reg_630;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] ap_phi_mux_b_idx_13_phi_fu_645_p6;
wire   [31:0] ap_phi_reg_pp0_iter1_b_idx_13_reg_642;
reg   [1:0] UnifiedRetVal_reg_654;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire   [63:0] zext_ln64_fu_1007_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln71_fu_1020_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln65_fu_1026_p1;
wire   [63:0] zext_ln66_fu_1032_p1;
wire   [63:0] zext_ln77_fu_1038_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln64_1_fu_1147_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln71_1_fu_1160_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln65_2_fu_1166_p1;
wire   [63:0] zext_ln66_1_fu_1172_p1;
wire   [63:0] zext_ln77_1_fu_1178_p1;
wire   [63:0] zext_ln64_2_fu_1256_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln71_2_fu_1269_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln65_3_fu_1275_p1;
wire   [63:0] zext_ln66_2_fu_1281_p1;
wire   [63:0] zext_ln77_2_fu_1287_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln64_3_fu_1388_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln71_3_fu_1415_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln65_4_fu_1421_p1;
wire   [63:0] zext_ln66_3_fu_1427_p1;
wire   [63:0] zext_ln77_3_fu_1433_p1;
reg   [31:0] a_str_idx_0_0_fu_90;
wire   [31:0] b_str_idx_fu_1409_p2;
reg   [63:0] a_str_idx_fu_94;
wire   [63:0] add_ln65_fu_1404_p2;
reg   [31:0] b_idx_fu_98;
reg   [31:0] a_idx_fu_102;
reg    ptr_0_ce0_local;
reg   [13:0] ptr_0_address0_local;
reg    ptr_1_ce0_local;
reg   [13:0] ptr_1_address0_local;
reg    SEQA_0_ce0_local;
reg   [5:0] SEQA_0_address0_local;
reg    SEQA_1_ce0_local;
reg   [5:0] SEQA_1_address0_local;
reg    SEQB_0_ce0_local;
reg   [5:0] SEQB_0_address0_local;
reg    SEQB_1_ce0_local;
reg   [5:0] SEQB_1_address0_local;
reg    alignedA_0_we0_local;
reg   [7:0] alignedA_0_d0_local;
wire   [7:0] grp_fu_705_p3;
reg    alignedA_0_ce0_local;
reg   [6:0] alignedA_0_address0_local;
wire   [7:0] grp_fu_801_p3;
reg    alignedB_0_we0_local;
reg   [7:0] alignedB_0_d0_local;
reg    alignedB_0_ce0_local;
reg   [6:0] alignedB_0_address0_local;
wire   [7:0] grp_fu_713_p3;
wire   [7:0] grp_fu_809_p3;
reg    alignedA_1_we0_local;
reg   [7:0] alignedA_1_d0_local;
wire   [7:0] grp_fu_753_p3;
wire    ap_block_pp0_stage6;
reg    alignedA_1_ce0_local;
reg   [6:0] alignedA_1_address0_local;
wire   [7:0] grp_fu_849_p3;
wire    ap_block_pp0_stage0;
reg    alignedB_1_we0_local;
reg   [7:0] alignedB_1_d0_local;
reg    alignedB_1_ce0_local;
reg   [6:0] alignedB_1_address0_local;
wire   [7:0] grp_fu_761_p3;
wire   [7:0] grp_fu_857_p3;
wire   [0:0] trunc_ln18_1_fu_1067_p1;
wire   [0:0] trunc_ln18_2_fu_1071_p1;
wire   [0:0] icmp_ln62_fu_943_p2;
wire   [0:0] icmp_ln62_1_fu_949_p2;
wire   [7:0] trunc_ln16_fu_969_p1;
wire   [14:0] p_shl_fu_973_p3;
wire   [14:0] trunc_ln18_4_fu_965_p1;
wire   [14:0] r_3_fu_981_p2;
wire   [14:0] trunc_ln18_3_fu_961_p1;
wire   [14:0] add_ln64_fu_987_p2;
wire   [13:0] lshr_ln7_fu_997_p4;
wire   [5:0] grp_fu_680_p4;
wire   [5:0] grp_fu_695_p4;
wire   [6:0] lshr_ln6_fu_1051_p4;
wire   [0:0] icmp_ln62_2_fu_1091_p2;
wire   [0:0] icmp_ln62_3_fu_1097_p2;
wire   [7:0] trunc_ln16_1_fu_1109_p1;
wire   [14:0] trunc_ln17_2_fu_1083_p1;
wire   [14:0] trunc_ln17_3_fu_1087_p1;
wire   [14:0] r_2_fu_1121_p2;
wire   [14:0] p_shl1_fu_1113_p3;
wire   [14:0] add_ln64_1_fu_1127_p2;
wire   [13:0] lshr_ln64_1_fu_1137_p4;
wire   [5:0] grp_fu_727_p4;
wire   [5:0] grp_fu_743_p4;
wire   [0:0] icmp_ln62_4_fu_1200_p2;
wire   [0:0] icmp_ln62_5_fu_1206_p2;
wire   [7:0] trunc_ln16_2_fu_1218_p1;
wire   [14:0] trunc_ln17_6_fu_1192_p1;
wire   [14:0] trunc_ln17_7_fu_1196_p1;
wire   [14:0] r_1_fu_1230_p2;
wire   [14:0] p_shl2_fu_1222_p3;
wire   [14:0] add_ln64_2_fu_1236_p2;
wire   [13:0] lshr_ln64_2_fu_1246_p4;
wire   [5:0] grp_fu_775_p4;
wire   [5:0] grp_fu_791_p4;
wire   [5:0] tmp_s_fu_1293_p4;
wire   [6:0] or_ln4_fu_1302_p3;
wire   [0:0] icmp_ln62_6_fu_1332_p2;
wire   [0:0] icmp_ln62_7_fu_1338_p2;
wire   [7:0] trunc_ln16_3_fu_1350_p1;
wire   [14:0] trunc_ln17_10_fu_1324_p1;
wire   [14:0] trunc_ln17_11_fu_1328_p1;
wire   [14:0] r_fu_1362_p2;
wire   [14:0] p_shl3_fu_1354_p3;
wire   [14:0] add_ln64_3_fu_1368_p2;
wire   [13:0] lshr_ln64_3_fu_1378_p4;
wire   [5:0] grp_fu_823_p4;
wire   [5:0] grp_fu_839_p4;
reg   [1:0] ap_return_preg;
wire    ap_CS_fsm_state19;
reg   [17:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_1368;
reg    ap_condition_1372;
reg    ap_condition_1378;
reg    ap_condition_1383;
reg    ap_condition_1390;
reg    ap_condition_1397;
reg    ap_condition_1405;
reg    ap_condition_1413;
reg    ap_condition_1419;
reg    ap_condition_1424;
reg    ap_condition_1431;
reg    ap_condition_1438;
reg    ap_condition_1446;
reg    ap_condition_1454;
reg    ap_condition_1459;
reg    ap_condition_1465;
reg    ap_condition_1472;
reg    ap_condition_1479;
reg    ap_condition_1487;
reg    ap_condition_1495;
reg    ap_condition_1504;
reg    ap_condition_1510;
reg    ap_condition_1516;
reg    ap_condition_1523;
reg    ap_condition_1530;
reg    ap_condition_1538;
reg    ap_condition_1546;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_str_idx_0_0_fu_90 = 32'd0;
#0 a_str_idx_fu_94 = 64'd0;
#0 b_idx_fu_98 = 32'd0;
#0 a_idx_fu_102 = 32'd0;
#0 ap_return_preg = 2'd0;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state12) & (1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 2'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state19)) begin
            ap_return_preg <= UnifiedRetVal_reg_654;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        UnifiedRetVal_reg_654 <= 2'd3;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        UnifiedRetVal_reg_654 <= 2'd2;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        UnifiedRetVal_reg_654 <= 2'd1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        UnifiedRetVal_reg_654 <= 2'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_idx_fu_102 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        a_idx_fu_102 <= ap_phi_mux_a_idx_13_phi_fu_633_p6;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_str_idx_0_0_fu_90 <= 32'd0;
    end else if (((or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_str_idx_0_0_fu_90 <= b_str_idx_fu_1409_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_str_idx_fu_94 <= 64'd0;
    end else if (((or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_str_idx_fu_94 <= add_ln65_fu_1404_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(select_ln64_2_reg_1694 == 8'd60) & ~(select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_10_reg_604 <= a_idx_7_reg_578;
    end else if ((((select_ln64_2_reg_1694 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_10_reg_604 <= reg_893;
    end
end
always @ (posedge ap_clk) begin
    if ((~(select_ln64_reg_1521 == 8'd60) & ~(select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_554 <= a_idx_1_reg_1495;
    end else if ((((select_ln64_reg_1521 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_554 <= reg_869;
    end
end
always @ (posedge ap_clk) begin
    if ((~(select_ln64_1_reg_1621 == 8'd60) & ~(select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_7_reg_578 <= a_idx_4_reg_554;
    end else if ((((select_ln64_1_reg_1621 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_7_reg_578 <= reg_881;
    end
end
always @ (posedge ap_clk) begin
    if (((select_ln64_2_reg_1694 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_10_reg_617 <= b_idx_7_reg_591;
    end else if (((~(select_ln64_2_reg_1694 == 8'd60) & ~(select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_10_reg_617 <= reg_899;
    end
end
always @ (posedge ap_clk) begin
    if (((select_ln64_reg_1521 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_566 <= b_idx_1_reg_1488;
    end else if (((~(select_ln64_reg_1521 == 8'd60) & ~(select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_566 <= reg_875;
    end
end
always @ (posedge ap_clk) begin
    if (((select_ln64_1_reg_1621 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_7_reg_591 <= b_idx_4_reg_566;
    end else if (((~(select_ln64_1_reg_1621 == 8'd60) & ~(select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_7_reg_591 <= reg_887;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        b_idx_fu_98 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        b_idx_fu_98 <= ap_phi_mux_b_idx_13_phi_fu_645_p6;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_10_reg_604 <= ap_phi_reg_pp0_iter0_a_idx_10_reg_604;
        b_idx_10_reg_617 <= ap_phi_reg_pp0_iter0_b_idx_10_reg_617;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        a_idx_1_reg_1495 <= a_idx_fu_102;
        b_idx_1_reg_1488 <= b_idx_fu_98;
        or_ln62_reg_1502 <= or_ln62_fu_955_p2;
        trunc_ln64_reg_1506 <= trunc_ln64_fu_993_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_4_reg_554 <= ap_phi_reg_pp0_iter0_a_idx_4_reg_554;
        b_idx_4_reg_566 <= ap_phi_reg_pp0_iter0_b_idx_4_reg_566;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_7_reg_578 <= ap_phi_reg_pp0_iter0_a_idx_7_reg_578;
        b_idx_7_reg_591 <= ap_phi_reg_pp0_iter0_b_idx_7_reg_591;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001))) begin
        alignedA_1_addr_1_reg_1773[6 : 1] <= zext_ln65_1_reg_1738[6 : 1];
        alignedB_1_addr_1_reg_1778[6 : 1] <= zext_ln65_1_reg_1738[6 : 1];
        or_ln62_3_reg_1754 <= or_ln62_3_fu_1344_p2;
        trunc_ln17_8_reg_1744 <= trunc_ln17_8_fu_1316_p1;
        trunc_ln17_9_reg_1749 <= trunc_ln17_9_fu_1320_p1;
        trunc_ln64_3_reg_1758 <= trunc_ln64_3_fu_1374_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        alignedA_1_addr_reg_1611 <= zext_ln18_reg_1576;
        alignedB_1_addr_reg_1616 <= zext_ln18_reg_1576;
        or_ln62_1_reg_1592 <= or_ln62_1_fu_1103_p2;
        trunc_ln17_1_reg_1587 <= trunc_ln17_1_fu_1079_p1;
        trunc_ln17_reg_1582 <= trunc_ln17_fu_1075_p1;
        trunc_ln64_1_reg_1596 <= trunc_ln64_1_fu_1133_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        b_str_idx_1_reg_1565 <= a_str_idx_fu_94;
        zext_ln18_reg_1576[6 : 0] <= zext_ln18_fu_1061_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        or_ln62_2_reg_1675 <= or_ln62_2_fu_1212_p2;
        trunc_ln17_4_reg_1665 <= trunc_ln17_4_fu_1184_p1;
        trunc_ln17_5_reg_1670 <= trunc_ln17_5_fu_1188_p1;
        trunc_ln64_2_reg_1679 <= trunc_ln64_2_fu_1242_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1013_p3 == 8'd92) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1013_p3 == 8'd60) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_869 <= grp_fu_675_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_fu_1013_p3 == 8'd92) & ~(select_ln64_fu_1013_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1013_p3 == 8'd92) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_875 <= grp_fu_690_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd92) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd60) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_881 <= grp_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_1_fu_1153_p3 == 8'd92) & ~(select_ln64_1_fu_1153_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd92) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_887 <= grp_fu_737_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((select_ln64_2_fu_1262_p3 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_fu_1262_p3 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_893 <= grp_fu_769_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_2_fu_1262_p3 == 8'd92) & ~(select_ln64_2_fu_1262_p3 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_fu_1262_p3 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_899 <= grp_fu_785_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((select_ln64_3_fu_1397_p3 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_fu_1397_p3 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_905 <= grp_fu_817_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_3_fu_1397_p3 == 8'd92) & ~(select_ln64_3_fu_1397_p3 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_fu_1397_p3 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_911 <= grp_fu_833_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        select_ln64_1_reg_1621 <= select_ln64_1_fu_1153_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        select_ln64_2_reg_1694 <= select_ln64_2_fu_1262_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        select_ln64_3_reg_1783 <= select_ln64_3_fu_1397_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        select_ln64_reg_1521 <= select_ln64_fu_1013_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        trunc_ln18_reg_1571 <= trunc_ln18_fu_1047_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001))) begin
        zext_ln65_1_reg_1738[6 : 1] <= zext_ln65_1_fu_1310_p1[6 : 1];
    end
end
always @ (*) begin
    if (((or_ln62_reg_1502 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1413)) begin
            SEQA_0_address0_local = zext_ln65_4_fu_1421_p1;
        end else if ((1'b1 == ap_condition_1405)) begin
            SEQA_0_address0_local = zext_ln71_3_fu_1415_p1;
        end else if ((1'b1 == ap_condition_1397)) begin
            SEQA_0_address0_local = zext_ln65_3_fu_1275_p1;
        end else if ((1'b1 == ap_condition_1390)) begin
            SEQA_0_address0_local = zext_ln71_2_fu_1269_p1;
        end else if ((1'b1 == ap_condition_1383)) begin
            SEQA_0_address0_local = zext_ln65_2_fu_1166_p1;
        end else if ((1'b1 == ap_condition_1378)) begin
            SEQA_0_address0_local = zext_ln71_1_fu_1160_p1;
        end else if ((1'b1 == ap_condition_1372)) begin
            SEQA_0_address0_local = zext_ln65_fu_1026_p1;
        end else if ((1'b1 == ap_condition_1368)) begin
            SEQA_0_address0_local = zext_ln71_fu_1020_p1;
        end else begin
            SEQA_0_address0_local = 'bx;
        end
    end else begin
        SEQA_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln17_8_reg_1744 == 1'd1) & (select_ln64_3_fu_1397_p3 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_8_reg_1744 == 1'd1) & (select_ln64_3_fu_1397_p3 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_1665 == 1'd1) & (select_ln64_2_fu_1262_p3 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_1665 == 1'd1) & (select_ln64_2_fu_1262_p3 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592== 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_1582 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd92) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_1582 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd60) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1013_p3 == 8'd92) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1013_p3 == 8'd60) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1502 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1454)) begin
            SEQA_1_address0_local = zext_ln65_4_fu_1421_p1;
        end else if ((1'b1 == ap_condition_1446)) begin
            SEQA_1_address0_local = zext_ln71_3_fu_1415_p1;
        end else if ((1'b1 == ap_condition_1438)) begin
            SEQA_1_address0_local = zext_ln65_3_fu_1275_p1;
        end else if ((1'b1 == ap_condition_1431)) begin
            SEQA_1_address0_local = zext_ln71_2_fu_1269_p1;
        end else if ((1'b1 == ap_condition_1424)) begin
            SEQA_1_address0_local = zext_ln65_2_fu_1166_p1;
        end else if ((1'b1 == ap_condition_1419)) begin
            SEQA_1_address0_local = zext_ln71_1_fu_1160_p1;
        end else if ((1'b1 == ap_condition_1372)) begin
            SEQA_1_address0_local = zext_ln65_fu_1026_p1;
        end else if ((1'b1 == ap_condition_1368)) begin
            SEQA_1_address0_local = zext_ln71_fu_1020_p1;
        end else begin
            SEQA_1_address0_local = 'bx;
        end
    end else begin
        SEQA_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln17_8_reg_1744 == 1'd0) & (select_ln64_3_fu_1397_p3 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_8_reg_1744 == 1'd0) & (select_ln64_3_fu_1397_p3 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_1665 == 1'd0) & (select_ln64_2_fu_1262_p3 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_1665 == 1'd0) & (select_ln64_2_fu_1262_p3 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592== 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_1582 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd92) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_1582 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd60) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1013_p3 == 8'd92) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1013_p3 == 8'd60) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1502 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1504)) begin
            SEQB_0_address0_local = zext_ln77_3_fu_1433_p1;
        end else if ((1'b1 == ap_condition_1495)) begin
            SEQB_0_address0_local = zext_ln66_3_fu_1427_p1;
        end else if ((1'b1 == ap_condition_1487)) begin
            SEQB_0_address0_local = zext_ln77_2_fu_1287_p1;
        end else if ((1'b1 == ap_condition_1479)) begin
            SEQB_0_address0_local = zext_ln66_2_fu_1281_p1;
        end else if ((1'b1 == ap_condition_1472)) begin
            SEQB_0_address0_local = zext_ln77_1_fu_1178_p1;
        end else if ((1'b1 == ap_condition_1465)) begin
            SEQB_0_address0_local = zext_ln66_1_fu_1172_p1;
        end else if ((1'b1 == ap_condition_1459)) begin
            SEQB_0_address0_local = zext_ln77_fu_1038_p1;
        end else if ((1'b1 == ap_condition_1372)) begin
            SEQB_0_address0_local = zext_ln66_fu_1032_p1;
        end else begin
            SEQB_0_address0_local = 'bx;
        end
    end else begin
        SEQB_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln17_9_reg_1749 == 1'd1) & (select_ln64_3_fu_1397_p3 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_5_reg_1670 == 1'd1) & (select_ln64_2_fu_1262_p3 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_1_reg_1587 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd92) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_3_fu_1397_p3 == 8'd92) & ~(select_ln64_3_fu_1397_p3 == 8'd60) & (trunc_ln17_9_reg_1749 == 1'd1) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)& (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_2_fu_1262_p3 == 8'd92) & ~(select_ln64_2_fu_1262_p3 == 8'd60) & (trunc_ln17_5_reg_1670 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_1_fu_1153_p3 == 8'd92) & ~(select_ln64_1_fu_1153_p3 == 8'd60) & (trunc_ln17_1_reg_1587 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_fu_1013_p3 == 8'd92) & ~(select_ln64_fu_1013_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1013_p3 == 8'd92) & (or_ln62_reg_1502== 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1502 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1546)) begin
            SEQB_1_address0_local = zext_ln77_3_fu_1433_p1;
        end else if ((1'b1 == ap_condition_1538)) begin
            SEQB_1_address0_local = zext_ln66_3_fu_1427_p1;
        end else if ((1'b1 == ap_condition_1530)) begin
            SEQB_1_address0_local = zext_ln77_2_fu_1287_p1;
        end else if ((1'b1 == ap_condition_1523)) begin
            SEQB_1_address0_local = zext_ln66_2_fu_1281_p1;
        end else if ((1'b1 == ap_condition_1516)) begin
            SEQB_1_address0_local = zext_ln77_1_fu_1178_p1;
        end else if ((1'b1 == ap_condition_1510)) begin
            SEQB_1_address0_local = zext_ln66_1_fu_1172_p1;
        end else if ((1'b1 == ap_condition_1459)) begin
            SEQB_1_address0_local = zext_ln77_fu_1038_p1;
        end else if ((1'b1 == ap_condition_1372)) begin
            SEQB_1_address0_local = zext_ln66_fu_1032_p1;
        end else begin
            SEQB_1_address0_local = 'bx;
        end
    end else begin
        SEQB_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln17_9_reg_1749 == 1'd0) & (select_ln64_3_fu_1397_p3 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_5_reg_1670 == 1'd0) & (select_ln64_2_fu_1262_p3 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_1_reg_1587 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd92) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_3_fu_1397_p3 == 8'd92) & ~(select_ln64_3_fu_1397_p3 == 8'd60) & (trunc_ln17_9_reg_1749 == 1'd0) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)& (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_2_fu_1262_p3 == 8'd92) & ~(select_ln64_2_fu_1262_p3 == 8'd60) & (trunc_ln17_5_reg_1670 == 1'd0) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_1_fu_1153_p3 == 8'd92) & ~(select_ln64_1_fu_1153_p3 == 8'd60) & (trunc_ln17_1_reg_1587 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_fu_1013_p3 == 8'd92) & ~(select_ln64_fu_1013_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1013_p3 == 8'd92) & (or_ln62_reg_1502== 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18))) begin
        a_str_idx_0_0_out_ap_vld = 1'b1;
    end else begin
        a_str_idx_0_0_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_2_reg_1694 == 8'd60) & ~(select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_address0_local = zext_ln65_1_fu_1310_p1;
    end else if (((~(select_ln64_reg_1521 == 8'd60) & ~(select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_address0_local = zext_ln18_fu_1061_p1;
    end else begin
        alignedA_0_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_2_reg_1694 == 8'd60) & ~(select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_reg_1521 == 8'd60) & ~(select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502== 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((select_ln64_2_reg_1694 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_d0_local = grp_fu_801_p3;
    end else if (((~(select_ln64_2_reg_1694 == 8'd60) & ~(select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_reg_1521 == 8'd60) & ~(select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_d0_local = 8'd45;
    end else if ((((select_ln64_reg_1521 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_d0_local = grp_fu_705_p3;
    end else begin
        alignedA_0_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_2_reg_1694 == 8'd60) & ~(select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_reg_1521 == 8'd60) & ~(select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502== 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_3_reg_1783 == 8'd60) & ~(select_ln64_3_reg_1783 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedA_1_address0_local = alignedA_1_addr_1_reg_1773;
    end else if (((~(select_ln64_1_reg_1621 == 8'd60) & ~(select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_address0_local = alignedA_1_addr_reg_1611;
    end else begin
        alignedA_1_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_3_reg_1783 == 8'd60) & ~(select_ln64_3_reg_1783 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(select_ln64_1_reg_1621 == 8'd60) & ~(select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedA_1_d0_local = grp_fu_849_p3;
    end else if (((~(select_ln64_3_reg_1783 == 8'd60) & ~(select_ln64_3_reg_1783 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | (~(select_ln64_1_reg_1621 == 8'd60) & ~(select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_d0_local = 8'd45;
    end else if ((((select_ln64_1_reg_1621 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_d0_local = grp_fu_753_p3;
    end else begin
        alignedA_1_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_3_reg_1783 == 8'd60) & ~(select_ln64_3_reg_1783 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(select_ln64_1_reg_1621 == 8'd60) & ~(select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_2_reg_1694 == 8'd60) & ~(select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_address0_local = zext_ln65_1_fu_1310_p1;
    end else if (((~(select_ln64_reg_1521 == 8'd60) & ~(select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_address0_local = zext_ln18_fu_1061_p1;
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_2_reg_1694 == 8'd60) & ~(select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_reg_1521 == 8'd60) & ~(select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502== 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_2_reg_1694 == 8'd60) & ~(select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_d0_local = grp_fu_809_p3;
    end else if (((~(select_ln64_reg_1521 == 8'd60) & ~(select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_d0_local = grp_fu_713_p3;
    end else if ((((select_ln64_2_reg_1694 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_d0_local = 8'd45;
    end else begin
        alignedB_0_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_2_reg_1694 == 8'd60) & ~(select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_1694 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_reg_1521 == 8'd60) & ~(select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502== 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_1521 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_3_reg_1783 == 8'd60) & ~(select_ln64_3_reg_1783 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_1_address0_local = alignedB_1_addr_1_reg_1778;
    end else if (((~(select_ln64_1_reg_1621 == 8'd60) & ~(select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_address0_local = alignedB_1_addr_reg_1616;
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_3_reg_1783 == 8'd60) & ~(select_ln64_3_reg_1783 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(select_ln64_1_reg_1621 == 8'd60) & ~(select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_3_reg_1783 == 8'd60) & ~(select_ln64_3_reg_1783 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_1_d0_local = grp_fu_857_p3;
    end else if (((~(select_ln64_1_reg_1621 == 8'd60) & ~(select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_d0_local = grp_fu_761_p3;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((select_ln64_1_reg_1621 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_d0_local = 8'd45;
    end else begin
        alignedB_1_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_3_reg_1783 == 8'd60) & ~(select_ln64_3_reg_1783 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_3_reg_1783 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(select_ln64_1_reg_1621 == 8'd60) & ~(select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_1621 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_tran12to17_state12 == 1'b1) | (ap_predicate_tran12to16_state12 == 1'b1) | (ap_predicate_tran12to15_state12 == 1'b1) | (or_ln62_reg_1502 == 1'd0))) begin
        ap_condition_pp0_exit_iter0_state12 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state12 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~(select_ln64_3_reg_1783 == 8'd60) & ~(select_ln64_3_reg_1783 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1))) begin
        ap_phi_mux_a_idx_13_phi_fu_633_p6 = a_idx_10_reg_604;
    end else if ((((select_ln64_3_reg_1783 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1)) | ((select_ln64_3_reg_1783 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1)))) begin
        ap_phi_mux_a_idx_13_phi_fu_633_p6 = reg_905;
    end else begin
        ap_phi_mux_a_idx_13_phi_fu_633_p6 = ap_phi_reg_pp0_iter1_a_idx_13_reg_630;
    end
end
always @ (*) begin
    if (((select_ln64_3_reg_1783 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1))) begin
        ap_phi_mux_b_idx_13_phi_fu_645_p6 = b_idx_10_reg_617;
    end else if (((~(select_ln64_3_reg_1783 == 8'd60) & ~(select_ln64_3_reg_1783 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1)) | ((select_ln64_3_reg_1783 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1)))) begin
        ap_phi_mux_b_idx_13_phi_fu_645_p6 = reg_911;
    end else begin
        ap_phi_mux_b_idx_13_phi_fu_645_p6 = ap_phi_reg_pp0_iter1_b_idx_13_reg_642;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        ap_return = UnifiedRetVal_reg_654;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18))) begin
        b_str_idx_6_out_ap_vld = 1'b1;
    end else begin
        b_str_idx_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10))) begin
            ptr_0_address0_local = zext_ln64_3_fu_1388_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            ptr_0_address0_local = zext_ln64_2_fu_1256_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            ptr_0_address0_local = zext_ln64_1_fu_1147_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_0_address0_local = zext_ln64_fu_1007_p1;
        end else begin
            ptr_0_address0_local = 'bx;
        end
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10))) begin
            ptr_1_address0_local = zext_ln64_3_fu_1388_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            ptr_1_address0_local = zext_ln64_2_fu_1256_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            ptr_1_address0_local = zext_ln64_1_fu_1147_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_1_address0_local = zext_ln64_fu_1007_p1;
        end else begin
            ptr_1_address0_local = 'bx;
        end
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((~(((or_ln62_reg_1502 == 1'd0) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran12to17_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran12to16_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran12to15_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) & (1'b0 == ap_block_pp0_stage10_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else if (((or_ln62_reg_1502 == 1'd0) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else if (((ap_predicate_tran12to17_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else if (((ap_predicate_tran12to16_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else if (((ap_predicate_tran12to15_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign SEQA_0_address0 = SEQA_0_address0_local;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = SEQA_1_address0_local;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQB_0_address0 = SEQB_0_address0_local;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = SEQB_1_address0_local;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign a_str_idx_0_0_out = a_str_idx_0_0_fu_90;
assign add_ln64_1_fu_1127_p2 = (r_2_fu_1121_p2 + p_shl1_fu_1113_p3);
assign add_ln64_2_fu_1236_p2 = (r_1_fu_1230_p2 + p_shl2_fu_1222_p3);
assign add_ln64_3_fu_1368_p2 = (r_fu_1362_p2 + p_shl3_fu_1354_p3);
assign add_ln64_fu_987_p2 = (r_3_fu_981_p2 + trunc_ln18_3_fu_961_p1);
assign add_ln65_fu_1404_p2 = (b_str_idx_1_reg_1565 + 64'd4);
assign alignedA_0_address0 = alignedA_0_address0_local;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_d0 = alignedA_0_d0_local;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_1_address0 = alignedA_1_address0_local;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_d0 = alignedA_1_d0_local;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_d0 = alignedB_0_d0_local;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_d0 = alignedB_1_d0_local;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd17];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1368 = ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1013_p3 == 8'd60) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1372 = ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1013_p3 == 8'd92) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1378 = ((trunc_ln17_reg_1582 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd60) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1383 = ((trunc_ln17_reg_1582 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd92) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1390 = ((trunc_ln17_4_reg_1665 == 1'd1) & (select_ln64_2_fu_1262_p3 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1397 = ((trunc_ln17_4_reg_1665 == 1'd1) & (select_ln64_2_fu_1262_p3 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1405 = ((trunc_ln17_8_reg_1744 == 1'd1) & (select_ln64_3_fu_1397_p3 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1413 = ((trunc_ln17_8_reg_1744 == 1'd1) & (select_ln64_3_fu_1397_p3 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1419 = ((trunc_ln17_reg_1582 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd60) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1424 = ((trunc_ln17_reg_1582 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd92) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1431 = ((trunc_ln17_4_reg_1665 == 1'd0) & (select_ln64_2_fu_1262_p3 == 8'd60) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1438 = ((trunc_ln17_4_reg_1665 == 1'd0) & (select_ln64_2_fu_1262_p3 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1446 = ((trunc_ln17_8_reg_1744 == 1'd0) & (select_ln64_3_fu_1397_p3 == 8'd60) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1454 = ((trunc_ln17_8_reg_1744 == 1'd0) & (select_ln64_3_fu_1397_p3 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1459 = (~(select_ln64_fu_1013_p3 == 8'd92) & ~(select_ln64_fu_1013_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1465 = ((trunc_ln17_1_reg_1587 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd92) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1472 = (~(select_ln64_1_fu_1153_p3 == 8'd92) & ~(select_ln64_1_fu_1153_p3 == 8'd60) & (trunc_ln17_1_reg_1587 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1479 = ((trunc_ln17_5_reg_1670 == 1'd1) & (select_ln64_2_fu_1262_p3 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1487 = (~(select_ln64_2_fu_1262_p3 == 8'd92) & ~(select_ln64_2_fu_1262_p3 == 8'd60) & (trunc_ln17_5_reg_1670 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1495 = ((trunc_ln17_9_reg_1749 == 1'd1) & (select_ln64_3_fu_1397_p3 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1504 = (~(select_ln64_3_fu_1397_p3 == 8'd92) & ~(select_ln64_3_fu_1397_p3 == 8'd60) & (trunc_ln17_9_reg_1749 == 1'd1) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1510 = ((trunc_ln17_1_reg_1587 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_1153_p3 == 8'd92) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1516 = (~(select_ln64_1_fu_1153_p3 == 8'd92) & ~(select_ln64_1_fu_1153_p3 == 8'd60) & (trunc_ln17_1_reg_1587 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1523 = ((trunc_ln17_5_reg_1670 == 1'd0) & (select_ln64_2_fu_1262_p3 == 8'd92) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1530 = (~(select_ln64_2_fu_1262_p3 == 8'd92) & ~(select_ln64_2_fu_1262_p3 == 8'd60) & (trunc_ln17_5_reg_1670 == 1'd0) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1538 = ((trunc_ln17_9_reg_1749 == 1'd0) & (select_ln64_3_fu_1397_p3 == 8'd92) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1546 = (~(select_ln64_3_fu_1397_p3 == 8'd92) & ~(select_ln64_3_fu_1397_p3 == 8'd60) & (trunc_ln17_9_reg_1749 == 1'd0) & (or_ln62_3_reg_1754 == 1'd1) & (or_ln62_2_reg_1675 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_1_reg_1592 == 1'd1) & (1'b0 == ap_block_pp0_stage11));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_phi_reg_pp0_iter1_a_idx_13_reg_630 = 'bx;
assign ap_phi_reg_pp0_iter1_b_idx_13_reg_642 = 'bx;
always @ (*) begin
    ap_predicate_tran12to15_state12 = ((or_ln62_3_fu_1344_p2 == 1'd0) & (or_ln62_2_reg_1675 == 1'd1) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran12to16_state12 = ((or_ln62_2_reg_1675 == 1'd0) & (or_ln62_1_reg_1592 == 1'd1) & (or_ln62_reg_1502 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran12to17_state12 = ((or_ln62_1_reg_1592 == 1'd0) & (or_ln62_reg_1502 == 1'd1));
end
assign b_str_idx_6_out = trunc_ln18_reg_1571;
assign b_str_idx_fu_1409_p2 = (a_str_idx_0_0_fu_90 + 32'd4);
assign grp_fu_675_p2 = ($signed(a_idx_1_reg_1495) + $signed(32'd4294967295));
assign grp_fu_680_p4 = {{grp_fu_675_p2[6:1]}};
assign grp_fu_690_p2 = ($signed(b_idx_1_reg_1488) + $signed(32'd4294967295));
assign grp_fu_695_p4 = {{grp_fu_690_p2[6:1]}};
assign grp_fu_705_p3 = ((trunc_ln18_1_fu_1067_p1[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_713_p3 = ((trunc_ln18_2_fu_1071_p1[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign grp_fu_721_p2 = ($signed(a_idx_4_reg_554) + $signed(32'd4294967295));
assign grp_fu_727_p4 = {{grp_fu_721_p2[6:1]}};
assign grp_fu_737_p2 = ($signed(b_idx_4_reg_566) + $signed(32'd4294967295));
assign grp_fu_743_p4 = {{grp_fu_737_p2[6:1]}};
assign grp_fu_753_p3 = ((trunc_ln17_reg_1582[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_761_p3 = ((trunc_ln17_1_reg_1587[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign grp_fu_769_p2 = ($signed(a_idx_7_reg_578) + $signed(32'd4294967295));
assign grp_fu_775_p4 = {{grp_fu_769_p2[6:1]}};
assign grp_fu_785_p2 = ($signed(b_idx_7_reg_591) + $signed(32'd4294967295));
assign grp_fu_791_p4 = {{grp_fu_785_p2[6:1]}};
assign grp_fu_801_p3 = ((trunc_ln17_4_reg_1665[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_809_p3 = ((trunc_ln17_5_reg_1670[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign grp_fu_817_p2 = ($signed(a_idx_10_reg_604) + $signed(32'd4294967295));
assign grp_fu_823_p4 = {{grp_fu_817_p2[6:1]}};
assign grp_fu_833_p2 = ($signed(b_idx_10_reg_617) + $signed(32'd4294967295));
assign grp_fu_839_p4 = {{grp_fu_833_p2[6:1]}};
assign grp_fu_849_p3 = ((trunc_ln17_8_reg_1744[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_857_p3 = ((trunc_ln17_9_reg_1749[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign icmp_ln62_1_fu_949_p2 = (($signed(b_idx_fu_98) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_2_fu_1091_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_4_reg_554) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_3_fu_1097_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_4_reg_566) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_4_fu_1200_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_7_reg_578) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_5_fu_1206_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_7_reg_591) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_6_fu_1332_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_10_reg_604) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_7_fu_1338_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_10_reg_617) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_943_p2 = (($signed(a_idx_fu_102) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign lshr_ln64_1_fu_1137_p4 = {{add_ln64_1_fu_1127_p2[14:1]}};
assign lshr_ln64_2_fu_1246_p4 = {{add_ln64_2_fu_1236_p2[14:1]}};
assign lshr_ln64_3_fu_1378_p4 = {{add_ln64_3_fu_1368_p2[14:1]}};
assign lshr_ln6_fu_1051_p4 = {{a_str_idx_fu_94[7:1]}};
assign lshr_ln7_fu_997_p4 = {{add_ln64_fu_987_p2[14:1]}};
assign or_ln4_fu_1302_p3 = {{tmp_s_fu_1293_p4}, {1'd1}};
assign or_ln62_1_fu_1103_p2 = (icmp_ln62_3_fu_1097_p2 | icmp_ln62_2_fu_1091_p2);
assign or_ln62_2_fu_1212_p2 = (icmp_ln62_5_fu_1206_p2 | icmp_ln62_4_fu_1200_p2);
assign or_ln62_3_fu_1344_p2 = (icmp_ln62_7_fu_1338_p2 | icmp_ln62_6_fu_1332_p2);
assign or_ln62_fu_955_p2 = (icmp_ln62_fu_943_p2 | icmp_ln62_1_fu_949_p2);
assign p_shl1_fu_1113_p3 = {{trunc_ln16_1_fu_1109_p1}, {7'd0}};
assign p_shl2_fu_1222_p3 = {{trunc_ln16_2_fu_1218_p1}, {7'd0}};
assign p_shl3_fu_1354_p3 = {{trunc_ln16_3_fu_1350_p1}, {7'd0}};
assign p_shl_fu_973_p3 = {{trunc_ln16_fu_969_p1}, {7'd0}};
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign r_1_fu_1230_p2 = (trunc_ln17_6_fu_1192_p1 + trunc_ln17_7_fu_1196_p1);
assign r_2_fu_1121_p2 = (trunc_ln17_2_fu_1083_p1 + trunc_ln17_3_fu_1087_p1);
assign r_3_fu_981_p2 = (p_shl_fu_973_p3 + trunc_ln18_4_fu_965_p1);
assign r_fu_1362_p2 = (trunc_ln17_10_fu_1324_p1 + trunc_ln17_11_fu_1328_p1);
assign select_ln64_1_fu_1153_p3 = ((trunc_ln64_1_reg_1596[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign select_ln64_2_fu_1262_p3 = ((trunc_ln64_2_reg_1679[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign select_ln64_3_fu_1397_p3 = ((trunc_ln64_3_reg_1758[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign select_ln64_fu_1013_p3 = ((trunc_ln64_reg_1506[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign tmp_s_fu_1293_p4 = {{b_str_idx_1_reg_1565[7:2]}};
assign trunc_ln16_1_fu_1109_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_566[7:0];
assign trunc_ln16_2_fu_1218_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_591[7:0];
assign trunc_ln16_3_fu_1350_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_617[7:0];
assign trunc_ln16_fu_969_p1 = b_idx_fu_98[7:0];
assign trunc_ln17_10_fu_1324_p1 = ap_phi_reg_pp0_iter0_a_idx_10_reg_604[14:0];
assign trunc_ln17_11_fu_1328_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_617[14:0];
assign trunc_ln17_1_fu_1079_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_566[0:0];
assign trunc_ln17_2_fu_1083_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_554[14:0];
assign trunc_ln17_3_fu_1087_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_566[14:0];
assign trunc_ln17_4_fu_1184_p1 = ap_phi_reg_pp0_iter0_a_idx_7_reg_578[0:0];
assign trunc_ln17_5_fu_1188_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_591[0:0];
assign trunc_ln17_6_fu_1192_p1 = ap_phi_reg_pp0_iter0_a_idx_7_reg_578[14:0];
assign trunc_ln17_7_fu_1196_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_591[14:0];
assign trunc_ln17_8_fu_1316_p1 = ap_phi_reg_pp0_iter0_a_idx_10_reg_604[0:0];
assign trunc_ln17_9_fu_1320_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_617[0:0];
assign trunc_ln17_fu_1075_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_554[0:0];
assign trunc_ln18_1_fu_1067_p1 = a_idx_1_reg_1495[0:0];
assign trunc_ln18_2_fu_1071_p1 = b_idx_1_reg_1488[0:0];
assign trunc_ln18_3_fu_961_p1 = a_idx_fu_102[14:0];
assign trunc_ln18_4_fu_965_p1 = b_idx_fu_98[14:0];
assign trunc_ln18_fu_1047_p1 = a_str_idx_fu_94[31:0];
assign trunc_ln64_1_fu_1133_p1 = add_ln64_1_fu_1127_p2[0:0];
assign trunc_ln64_2_fu_1242_p1 = add_ln64_2_fu_1236_p2[0:0];
assign trunc_ln64_3_fu_1374_p1 = add_ln64_3_fu_1368_p2[0:0];
assign trunc_ln64_fu_993_p1 = add_ln64_fu_987_p2[0:0];
assign zext_ln18_fu_1061_p1 = lshr_ln6_fu_1051_p4;
assign zext_ln64_1_fu_1147_p1 = lshr_ln64_1_fu_1137_p4;
assign zext_ln64_2_fu_1256_p1 = lshr_ln64_2_fu_1246_p4;
assign zext_ln64_3_fu_1388_p1 = lshr_ln64_3_fu_1378_p4;
assign zext_ln64_fu_1007_p1 = lshr_ln7_fu_997_p4;
assign zext_ln65_1_fu_1310_p1 = or_ln4_fu_1302_p3;
assign zext_ln65_2_fu_1166_p1 = grp_fu_727_p4;
assign zext_ln65_3_fu_1275_p1 = grp_fu_775_p4;
assign zext_ln65_4_fu_1421_p1 = grp_fu_823_p4;
assign zext_ln65_fu_1026_p1 = grp_fu_680_p4;
assign zext_ln66_1_fu_1172_p1 = grp_fu_743_p4;
assign zext_ln66_2_fu_1281_p1 = grp_fu_791_p4;
assign zext_ln66_3_fu_1427_p1 = grp_fu_839_p4;
assign zext_ln66_fu_1032_p1 = grp_fu_695_p4;
assign zext_ln71_1_fu_1160_p1 = grp_fu_727_p4;
assign zext_ln71_2_fu_1269_p1 = grp_fu_775_p4;
assign zext_ln71_3_fu_1415_p1 = grp_fu_823_p4;
assign zext_ln71_fu_1020_p1 = grp_fu_680_p4;
assign zext_ln77_1_fu_1178_p1 = grp_fu_743_p4;
assign zext_ln77_2_fu_1287_p1 = grp_fu_791_p4;
assign zext_ln77_3_fu_1433_p1 = grp_fu_839_p4;
assign zext_ln77_fu_1038_p1 = grp_fu_695_p4;
always @ (posedge ap_clk) begin
    zext_ln18_reg_1576[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln65_1_reg_1738[0] <= 1'b1;
    zext_ln65_1_reg_1738[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    alignedA_1_addr_1_reg_1773[0] <= 1'b1;
    alignedB_1_addr_1_reg_1778[0] <= 1'b1;
end
endmodule 
