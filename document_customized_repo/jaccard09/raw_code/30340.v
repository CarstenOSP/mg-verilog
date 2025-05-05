module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1); 
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
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [8:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [8:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [8:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [8:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_1643;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [63:0] reg_681;
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
reg   [63:0] reg_687;
reg   [6:0] tid_2_reg_1633;
wire   [2:0] tmp_23_fu_709_p4;
reg   [2:0] tmp_23_reg_1647;
wire   [9:0] zext_ln172_fu_731_p1;
reg   [9:0] zext_ln172_reg_1654;
wire   [9:0] zext_ln172_2_fu_800_p1;
reg   [9:0] zext_ln172_2_reg_1674;
wire   [5:0] trunc_ln314_fu_825_p1;
reg   [5:0] trunc_ln314_reg_1694;
wire   [63:0] zext_ln314_fu_836_p1;
reg   [63:0] zext_ln314_reg_1700;
wire   [63:0] zext_ln315_4_fu_849_p1;
reg   [63:0] zext_ln315_4_reg_1705;
wire   [4:0] tmp_s_fu_974_p4;
reg   [4:0] tmp_s_reg_1740;
wire   [63:0] zext_ln314_1_fu_991_p1;
reg   [63:0] zext_ln314_1_reg_1746;
wire   [63:0] zext_ln315_5_fu_1004_p1;
reg   [63:0] zext_ln315_5_reg_1751;
wire   [63:0] zext_ln318_4_fu_1056_p1;
reg   [63:0] zext_ln318_4_reg_1766;
wire   [63:0] zext_ln319_4_fu_1068_p1;
reg   [63:0] zext_ln319_4_reg_1771;
wire   [63:0] zext_ln318_5_fu_1160_p1;
reg   [63:0] zext_ln318_5_reg_1796;
wire   [63:0] zext_ln319_5_fu_1172_p1;
reg   [63:0] zext_ln319_5_reg_1801;
wire   [9:0] zext_ln172_3_fu_1186_p1;
reg   [9:0] zext_ln172_3_reg_1806;
wire   [9:0] zext_ln172_5_fu_1253_p1;
reg   [9:0] zext_ln172_5_reg_1826;
wire   [3:0] grp_fu_672_p4;
reg   [3:0] tmp_22_reg_1846;
wire   [63:0] zext_ln314_2_fu_1286_p1;
reg   [63:0] zext_ln314_2_reg_1856;
wire   [63:0] zext_ln315_6_fu_1299_p1;
reg   [63:0] zext_ln315_6_reg_1861;
wire   [63:0] zext_ln314_3_fu_1431_p1;
reg   [63:0] zext_ln314_3_reg_1896;
wire   [63:0] zext_ln315_7_fu_1443_p1;
reg   [63:0] zext_ln315_7_reg_1901;
wire   [63:0] zext_ln318_6_fu_1495_p1;
reg   [63:0] zext_ln318_6_reg_1916;
wire   [63:0] zext_ln319_6_fu_1507_p1;
reg   [63:0] zext_ln319_6_reg_1921;
wire   [63:0] zext_ln318_7_fu_1609_p1;
reg   [63:0] zext_ln318_7_reg_1946;
wire   [63:0] zext_ln319_7_fu_1621_p1;
reg   [63:0] zext_ln319_7_reg_1951;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln172_1_fu_753_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_fu_775_p1;
wire   [63:0] zext_ln315_1_fu_820_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln316_fu_869_p1;
wire   [63:0] zext_ln317_fu_889_p1;
wire   [63:0] zext_ln316_1_fu_909_p1;
wire   [63:0] zext_ln317_1_fu_929_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln318_fu_949_p1;
wire   [63:0] zext_ln319_fu_969_p1;
wire   [63:0] zext_ln318_1_fu_1024_p1;
wire   [63:0] zext_ln319_1_fu_1044_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln320_fu_1088_p1;
wire   [63:0] zext_ln321_fu_1108_p1;
wire   [63:0] zext_ln320_1_fu_1128_p1;
wire   [63:0] zext_ln321_1_fu_1148_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln172_4_fu_1208_p1;
wire   [63:0] zext_ln315_2_fu_1230_p1;
wire   [63:0] zext_ln315_3_fu_1273_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln316_2_fu_1319_p1;
wire   [63:0] zext_ln317_2_fu_1339_p1;
wire   [63:0] zext_ln316_3_fu_1359_p1;
wire   [63:0] zext_ln317_3_fu_1379_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln318_2_fu_1399_p1;
wire   [63:0] zext_ln319_2_fu_1419_p1;
wire   [63:0] zext_ln318_3_fu_1463_p1;
wire   [63:0] zext_ln319_3_fu_1483_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln320_2_fu_1527_p1;
wire   [63:0] zext_ln321_2_fu_1547_p1;
wire   [63:0] zext_ln320_3_fu_1567_p1;
wire   [63:0] zext_ln321_3_fu_1587_p1;
reg   [6:0] tid_fu_116;
wire   [6:0] add_ln309_fu_1592_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg   [8:0] smem_address1_local;
reg    smem_ce0_local;
reg   [8:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [8:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [8:0] smem_1_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
wire   [5:0] trunc_ln312_fu_719_p1;
wire   [8:0] offset_fu_723_p3;
wire   [4:0] tmp_24_fu_735_p4;
wire   [7:0] lshr_ln172_s_fu_745_p3;
wire   [9:0] add_ln315_fu_759_p2;
wire   [8:0] lshr_ln_fu_765_p4;
wire   [4:0] tmp_25_fu_780_p4;
wire   [8:0] offset_1_fu_790_p4;
wire   [9:0] add_ln315_1_fu_804_p2;
wire   [8:0] lshr_ln315_1_fu_810_p4;
wire   [7:0] shl_ln7_fu_828_p3;
wire   [7:0] or_ln_fu_841_p3;
wire   [9:0] add_ln316_fu_854_p2;
wire   [8:0] lshr_ln1_fu_859_p4;
wire   [9:0] add_ln317_fu_874_p2;
wire   [8:0] lshr_ln2_fu_879_p4;
wire   [9:0] add_ln316_1_fu_894_p2;
wire   [8:0] lshr_ln316_1_fu_899_p4;
wire   [9:0] add_ln317_1_fu_914_p2;
wire   [8:0] lshr_ln317_1_fu_919_p4;
wire   [9:0] add_ln318_fu_934_p2;
wire   [8:0] lshr_ln3_fu_939_p4;
wire   [9:0] add_ln319_fu_954_p2;
wire   [8:0] lshr_ln4_fu_959_p4;
wire   [7:0] shl_ln314_1_fu_983_p3;
wire   [7:0] or_ln315_1_fu_996_p3;
wire   [9:0] add_ln318_1_fu_1009_p2;
wire   [8:0] lshr_ln318_1_fu_1014_p4;
wire   [9:0] add_ln319_1_fu_1029_p2;
wire   [8:0] lshr_ln319_1_fu_1034_p4;
wire   [7:0] or_ln4_fu_1049_p3;
wire   [7:0] or_ln5_fu_1061_p3;
wire   [9:0] add_ln320_fu_1073_p2;
wire   [8:0] lshr_ln5_fu_1078_p4;
wire   [9:0] add_ln321_fu_1093_p2;
wire   [8:0] lshr_ln6_fu_1098_p4;
wire   [9:0] add_ln320_1_fu_1113_p2;
wire   [8:0] lshr_ln320_1_fu_1118_p4;
wire   [9:0] add_ln321_1_fu_1133_p2;
wire   [8:0] lshr_ln321_1_fu_1138_p4;
wire   [7:0] or_ln318_1_fu_1153_p3;
wire   [7:0] or_ln319_1_fu_1165_p3;
wire   [8:0] offset_2_fu_1177_p4;
wire   [3:0] tmp_27_fu_1190_p4;
wire   [7:0] lshr_ln172_1_fu_1199_p4;
wire   [9:0] add_ln315_2_fu_1214_p2;
wire   [8:0] lshr_ln315_2_fu_1220_p4;
wire   [3:0] tmp_28_fu_1235_p4;
wire   [8:0] offset_3_fu_1244_p4;
wire   [9:0] add_ln315_3_fu_1257_p2;
wire   [8:0] lshr_ln315_3_fu_1263_p4;
wire   [7:0] or_ln6_fu_1278_p3;
wire   [7:0] or_ln315_2_fu_1291_p3;
wire   [9:0] add_ln316_2_fu_1304_p2;
wire   [8:0] lshr_ln316_2_fu_1309_p4;
wire   [9:0] add_ln317_2_fu_1324_p2;
wire   [8:0] lshr_ln317_2_fu_1329_p4;
wire   [9:0] add_ln316_3_fu_1344_p2;
wire   [8:0] lshr_ln316_3_fu_1349_p4;
wire   [9:0] add_ln317_3_fu_1364_p2;
wire   [8:0] lshr_ln317_3_fu_1369_p4;
wire   [9:0] add_ln318_2_fu_1384_p2;
wire   [8:0] lshr_ln318_2_fu_1389_p4;
wire   [9:0] add_ln319_2_fu_1404_p2;
wire   [8:0] lshr_ln319_2_fu_1409_p4;
wire   [7:0] shl_ln314_2_fu_1424_p3;
wire   [7:0] or_ln315_3_fu_1436_p3;
wire   [9:0] add_ln318_3_fu_1448_p2;
wire   [8:0] lshr_ln318_3_fu_1453_p4;
wire   [9:0] add_ln319_3_fu_1468_p2;
wire   [8:0] lshr_ln319_3_fu_1473_p4;
wire   [7:0] or_ln318_2_fu_1488_p3;
wire   [7:0] or_ln319_2_fu_1500_p3;
wire   [9:0] add_ln320_2_fu_1512_p2;
wire   [8:0] lshr_ln320_2_fu_1517_p4;
wire   [9:0] add_ln321_2_fu_1532_p2;
wire   [8:0] lshr_ln321_2_fu_1537_p4;
wire   [9:0] add_ln320_3_fu_1552_p2;
wire   [8:0] lshr_ln320_3_fu_1557_p4;
wire   [9:0] add_ln321_3_fu_1572_p2;
wire   [8:0] lshr_ln321_3_fu_1577_p4;
wire   [7:0] or_ln318_3_fu_1602_p3;
wire   [7:0] or_ln319_3_fu_1614_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_116 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_116 <= 7'd0;
    end else if (((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tid_fu_116 <= add_ln309_fu_1592_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_681 <= smem_1_q1;
        reg_687 <= smem_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_2_reg_1633 <= ap_sig_allocacmp_tid_2;
        tmp_23_reg_1647 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_reg_1643 <= ap_sig_allocacmp_tid_2[32'd6];
        zext_ln172_2_reg_1674[8 : 1] <= zext_ln172_2_fu_800_p1[8 : 1];
        zext_ln172_reg_1654[8 : 0] <= zext_ln172_fu_731_p1[8 : 0];
        zext_ln318_7_reg_1946[7 : 4] <= zext_ln318_7_fu_1609_p1[7 : 4];
        zext_ln319_7_reg_1951[7 : 4] <= zext_ln319_7_fu_1621_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_22_reg_1846 <= {{tid_2_reg_1633[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_s_reg_1740 <= {{tid_2_reg_1633[5:1]}};
        zext_ln314_1_reg_1746[7 : 3] <= zext_ln314_1_fu_991_p1[7 : 3];
        zext_ln315_5_reg_1751[7 : 3] <= zext_ln315_5_fu_1004_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln314_reg_1694 <= trunc_ln314_fu_825_p1;
        zext_ln314_reg_1700[7 : 2] <= zext_ln314_fu_836_p1[7 : 2];
        zext_ln315_4_reg_1705[7 : 2] <= zext_ln315_4_fu_849_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        zext_ln172_3_reg_1806[8 : 2] <= zext_ln172_3_fu_1186_p1[8 : 2];
        zext_ln172_5_reg_1826[8 : 2] <= zext_ln172_5_fu_1253_p1[8 : 2];
        zext_ln318_5_reg_1796[7 : 3] <= zext_ln318_5_fu_1160_p1[7 : 3];
        zext_ln319_5_reg_1801[7 : 3] <= zext_ln319_5_fu_1172_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        zext_ln314_2_reg_1856[7 : 4] <= zext_ln314_2_fu_1286_p1[7 : 4];
        zext_ln315_6_reg_1861[7 : 4] <= zext_ln315_6_fu_1299_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln314_3_reg_1896[7 : 4] <= zext_ln314_3_fu_1431_p1[7 : 4];
        zext_ln315_7_reg_1901[7 : 4] <= zext_ln315_7_fu_1443_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln318_4_reg_1766[7 : 2] <= zext_ln318_4_fu_1056_p1[7 : 2];
        zext_ln319_4_reg_1771[7 : 2] <= zext_ln319_4_fu_1068_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        zext_ln318_6_reg_1916[7 : 4] <= zext_ln318_6_fu_1495_p1[7 : 4];
        zext_ln319_6_reg_1921[7 : 4] <= zext_ln319_6_fu_1507_p1[7 : 4];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln319_7_reg_1951;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln319_6_reg_1921;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address0_local = zext_ln315_7_reg_1901;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address0_local = zext_ln315_6_reg_1861;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address0_local = zext_ln319_5_reg_1801;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address0_local = zext_ln319_4_reg_1771;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_5_reg_1751;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln315_4_reg_1705;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln318_7_reg_1946;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln318_6_reg_1916;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address1_local = zext_ln314_3_reg_1896;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address1_local = zext_ln314_2_reg_1856;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address1_local = zext_ln318_5_reg_1796;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address1_local = zext_ln318_4_reg_1766;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_1_reg_1746;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln314_reg_1700;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_d0_local = reg_687;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_d0_local = smem_q0;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_d1_local = reg_681;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_d1_local = smem_q1;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln319_7_fu_1621_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address0_local = zext_ln319_6_fu_1507_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address0_local = zext_ln315_7_fu_1443_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address0_local = zext_ln315_6_fu_1299_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address0_local = zext_ln319_5_fu_1172_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln319_4_fu_1068_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln315_5_fu_1004_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_4_fu_849_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln318_7_fu_1609_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address1_local = zext_ln318_6_fu_1495_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address1_local = zext_ln314_3_fu_1431_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address1_local = zext_ln314_2_fu_1286_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address1_local = zext_ln318_5_fu_1160_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln318_4_fu_1056_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln314_1_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_fu_836_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_d0_local = reg_687;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_d0_local = smem_q0;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_d1_local = reg_681;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_d1_local = smem_q1;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_1643 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1643 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_116;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_1_address0_local = zext_ln321_3_fu_1587_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_1_address0_local = zext_ln319_3_fu_1483_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address0_local = zext_ln317_3_fu_1379_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_1_address0_local = zext_ln315_3_fu_1273_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address0_local = zext_ln321_1_fu_1148_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address0_local = zext_ln319_1_fu_1044_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address0_local = zext_ln317_1_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address0_local = zext_ln315_1_fu_820_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_1_address1_local = zext_ln320_3_fu_1567_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_1_address1_local = zext_ln318_3_fu_1463_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address1_local = zext_ln316_3_fu_1359_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_1_address1_local = zext_ln172_4_fu_1208_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address1_local = zext_ln320_1_fu_1128_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address1_local = zext_ln318_1_fu_1024_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address1_local = zext_ln316_1_fu_909_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address1_local = zext_ln172_1_fu_753_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_address0_local = zext_ln321_2_fu_1547_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_address0_local = zext_ln319_2_fu_1419_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address0_local = zext_ln317_2_fu_1339_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address0_local = zext_ln315_2_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address0_local = zext_ln321_fu_1108_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address0_local = zext_ln319_fu_969_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address0_local = zext_ln317_fu_889_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address0_local = zext_ln315_fu_775_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_address1_local = zext_ln320_2_fu_1527_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_address1_local = zext_ln318_2_fu_1399_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address1_local = zext_ln316_2_fu_1319_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address1_local = zext_ln172_4_fu_1208_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address1_local = zext_ln320_fu_1088_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address1_local = zext_ln318_fu_949_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address1_local = zext_ln316_fu_869_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address1_local = zext_ln172_1_fu_753_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_d1 = DATA_x_1_d1_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_1592_p2 = (tid_2_reg_1633 + 7'd4);
assign add_ln315_1_fu_804_p2 = (zext_ln172_2_fu_800_p1 + 10'd32);
assign add_ln315_2_fu_1214_p2 = (zext_ln172_3_fu_1186_p1 + 10'd32);
assign add_ln315_3_fu_1257_p2 = (zext_ln172_5_fu_1253_p1 + 10'd32);
assign add_ln315_fu_759_p2 = (zext_ln172_fu_731_p1 + 10'd32);
assign add_ln316_1_fu_894_p2 = (zext_ln172_2_reg_1674 + 10'd8);
assign add_ln316_2_fu_1304_p2 = (zext_ln172_3_reg_1806 + 10'd8);
assign add_ln316_3_fu_1344_p2 = (zext_ln172_5_reg_1826 + 10'd8);
assign add_ln316_fu_854_p2 = (zext_ln172_reg_1654 + 10'd8);
assign add_ln317_1_fu_914_p2 = (zext_ln172_2_reg_1674 + 10'd40);
assign add_ln317_2_fu_1324_p2 = (zext_ln172_3_reg_1806 + 10'd40);
assign add_ln317_3_fu_1364_p2 = (zext_ln172_5_reg_1826 + 10'd40);
assign add_ln317_fu_874_p2 = (zext_ln172_reg_1654 + 10'd40);
assign add_ln318_1_fu_1009_p2 = (zext_ln172_2_reg_1674 + 10'd16);
assign add_ln318_2_fu_1384_p2 = (zext_ln172_3_reg_1806 + 10'd16);
assign add_ln318_3_fu_1448_p2 = (zext_ln172_5_reg_1826 + 10'd16);
assign add_ln318_fu_934_p2 = (zext_ln172_reg_1654 + 10'd16);
assign add_ln319_1_fu_1029_p2 = (zext_ln172_2_reg_1674 + 10'd48);
assign add_ln319_2_fu_1404_p2 = (zext_ln172_3_reg_1806 + 10'd48);
assign add_ln319_3_fu_1468_p2 = (zext_ln172_5_reg_1826 + 10'd48);
assign add_ln319_fu_954_p2 = (zext_ln172_reg_1654 + 10'd48);
assign add_ln320_1_fu_1113_p2 = (zext_ln172_2_reg_1674 + 10'd24);
assign add_ln320_2_fu_1512_p2 = (zext_ln172_3_reg_1806 + 10'd24);
assign add_ln320_3_fu_1552_p2 = (zext_ln172_5_reg_1826 + 10'd24);
assign add_ln320_fu_1073_p2 = (zext_ln172_reg_1654 + 10'd24);
assign add_ln321_1_fu_1133_p2 = (zext_ln172_2_reg_1674 + 10'd56);
assign add_ln321_2_fu_1532_p2 = (zext_ln172_3_reg_1806 + 10'd56);
assign add_ln321_3_fu_1572_p2 = (zext_ln172_5_reg_1826 + 10'd56);
assign add_ln321_fu_1093_p2 = (zext_ln172_reg_1654 + 10'd56);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_672_p4 = {{tid_2_reg_1633[5:2]}};
assign lshr_ln172_1_fu_1199_p4 = {{{tmp_23_reg_1647}, {tmp_27_fu_1190_p4}}, {1'd1}};
assign lshr_ln172_s_fu_745_p3 = {{tmp_23_fu_709_p4}, {tmp_24_fu_735_p4}};
assign lshr_ln1_fu_859_p4 = {{add_ln316_fu_854_p2[9:1]}};
assign lshr_ln2_fu_879_p4 = {{add_ln317_fu_874_p2[9:1]}};
assign lshr_ln315_1_fu_810_p4 = {{add_ln315_1_fu_804_p2[9:1]}};
assign lshr_ln315_2_fu_1220_p4 = {{add_ln315_2_fu_1214_p2[9:1]}};
assign lshr_ln315_3_fu_1263_p4 = {{add_ln315_3_fu_1257_p2[9:1]}};
assign lshr_ln316_1_fu_899_p4 = {{add_ln316_1_fu_894_p2[9:1]}};
assign lshr_ln316_2_fu_1309_p4 = {{add_ln316_2_fu_1304_p2[9:1]}};
assign lshr_ln316_3_fu_1349_p4 = {{add_ln316_3_fu_1344_p2[9:1]}};
assign lshr_ln317_1_fu_919_p4 = {{add_ln317_1_fu_914_p2[9:1]}};
assign lshr_ln317_2_fu_1329_p4 = {{add_ln317_2_fu_1324_p2[9:1]}};
assign lshr_ln317_3_fu_1369_p4 = {{add_ln317_3_fu_1364_p2[9:1]}};
assign lshr_ln318_1_fu_1014_p4 = {{add_ln318_1_fu_1009_p2[9:1]}};
assign lshr_ln318_2_fu_1389_p4 = {{add_ln318_2_fu_1384_p2[9:1]}};
assign lshr_ln318_3_fu_1453_p4 = {{add_ln318_3_fu_1448_p2[9:1]}};
assign lshr_ln319_1_fu_1034_p4 = {{add_ln319_1_fu_1029_p2[9:1]}};
assign lshr_ln319_2_fu_1409_p4 = {{add_ln319_2_fu_1404_p2[9:1]}};
assign lshr_ln319_3_fu_1473_p4 = {{add_ln319_3_fu_1468_p2[9:1]}};
assign lshr_ln320_1_fu_1118_p4 = {{add_ln320_1_fu_1113_p2[9:1]}};
assign lshr_ln320_2_fu_1517_p4 = {{add_ln320_2_fu_1512_p2[9:1]}};
assign lshr_ln320_3_fu_1557_p4 = {{add_ln320_3_fu_1552_p2[9:1]}};
assign lshr_ln321_1_fu_1138_p4 = {{add_ln321_1_fu_1133_p2[9:1]}};
assign lshr_ln321_2_fu_1537_p4 = {{add_ln321_2_fu_1532_p2[9:1]}};
assign lshr_ln321_3_fu_1577_p4 = {{add_ln321_3_fu_1572_p2[9:1]}};
assign lshr_ln3_fu_939_p4 = {{add_ln318_fu_934_p2[9:1]}};
assign lshr_ln4_fu_959_p4 = {{add_ln319_fu_954_p2[9:1]}};
assign lshr_ln5_fu_1078_p4 = {{add_ln320_fu_1073_p2[9:1]}};
assign lshr_ln6_fu_1098_p4 = {{add_ln321_fu_1093_p2[9:1]}};
assign lshr_ln_fu_765_p4 = {{add_ln315_fu_759_p2[9:1]}};
assign offset_1_fu_790_p4 = {{{tmp_23_fu_709_p4}, {tmp_25_fu_780_p4}}, {1'd1}};
assign offset_2_fu_1177_p4 = {{{tmp_23_reg_1647}, {grp_fu_672_p4}}, {2'd2}};
assign offset_3_fu_1244_p4 = {{{tmp_23_reg_1647}, {tmp_28_fu_1235_p4}}, {2'd3}};
assign offset_fu_723_p3 = {{tmp_23_fu_709_p4}, {trunc_ln312_fu_719_p1}};
assign or_ln315_1_fu_996_p3 = {{tmp_s_fu_974_p4}, {3'd6}};
assign or_ln315_2_fu_1291_p3 = {{grp_fu_672_p4}, {4'd10}};
assign or_ln315_3_fu_1436_p3 = {{tmp_22_reg_1846}, {4'd14}};
assign or_ln318_1_fu_1153_p3 = {{tmp_s_reg_1740}, {3'd5}};
assign or_ln318_2_fu_1488_p3 = {{tmp_22_reg_1846}, {4'd9}};
assign or_ln318_3_fu_1602_p3 = {{tmp_22_reg_1846}, {4'd13}};
assign or_ln319_1_fu_1165_p3 = {{tmp_s_reg_1740}, {3'd7}};
assign or_ln319_2_fu_1500_p3 = {{tmp_22_reg_1846}, {4'd11}};
assign or_ln319_3_fu_1614_p3 = {{tmp_22_reg_1846}, {4'd15}};
assign or_ln4_fu_1049_p3 = {{trunc_ln314_reg_1694}, {2'd1}};
assign or_ln5_fu_1061_p3 = {{trunc_ln314_reg_1694}, {2'd3}};
assign or_ln6_fu_1278_p3 = {{grp_fu_672_p4}, {4'd8}};
assign or_ln_fu_841_p3 = {{trunc_ln314_fu_825_p1}, {2'd2}};
assign shl_ln314_1_fu_983_p3 = {{tmp_s_fu_974_p4}, {3'd4}};
assign shl_ln314_2_fu_1424_p3 = {{tmp_22_reg_1846}, {4'd12}};
assign shl_ln7_fu_828_p3 = {{trunc_ln314_fu_825_p1}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_23_fu_709_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_24_fu_735_p4 = {{ap_sig_allocacmp_tid_2[5:1]}};
assign tmp_25_fu_780_p4 = {{ap_sig_allocacmp_tid_2[5:1]}};
assign tmp_27_fu_1190_p4 = {{tid_2_reg_1633[5:2]}};
assign tmp_28_fu_1235_p4 = {{tid_2_reg_1633[5:2]}};
assign tmp_s_fu_974_p4 = {{tid_2_reg_1633[5:1]}};
assign trunc_ln312_fu_719_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_825_p1 = tid_2_reg_1633[5:0];
assign zext_ln172_1_fu_753_p1 = lshr_ln172_s_fu_745_p3;
assign zext_ln172_2_fu_800_p1 = offset_1_fu_790_p4;
assign zext_ln172_3_fu_1186_p1 = offset_2_fu_1177_p4;
assign zext_ln172_4_fu_1208_p1 = lshr_ln172_1_fu_1199_p4;
assign zext_ln172_5_fu_1253_p1 = offset_3_fu_1244_p4;
assign zext_ln172_fu_731_p1 = offset_fu_723_p3;
assign zext_ln314_1_fu_991_p1 = shl_ln314_1_fu_983_p3;
assign zext_ln314_2_fu_1286_p1 = or_ln6_fu_1278_p3;
assign zext_ln314_3_fu_1431_p1 = shl_ln314_2_fu_1424_p3;
assign zext_ln314_fu_836_p1 = shl_ln7_fu_828_p3;
assign zext_ln315_1_fu_820_p1 = lshr_ln315_1_fu_810_p4;
assign zext_ln315_2_fu_1230_p1 = lshr_ln315_2_fu_1220_p4;
assign zext_ln315_3_fu_1273_p1 = lshr_ln315_3_fu_1263_p4;
assign zext_ln315_4_fu_849_p1 = or_ln_fu_841_p3;
assign zext_ln315_5_fu_1004_p1 = or_ln315_1_fu_996_p3;
assign zext_ln315_6_fu_1299_p1 = or_ln315_2_fu_1291_p3;
assign zext_ln315_7_fu_1443_p1 = or_ln315_3_fu_1436_p3;
assign zext_ln315_fu_775_p1 = lshr_ln_fu_765_p4;
assign zext_ln316_1_fu_909_p1 = lshr_ln316_1_fu_899_p4;
assign zext_ln316_2_fu_1319_p1 = lshr_ln316_2_fu_1309_p4;
assign zext_ln316_3_fu_1359_p1 = lshr_ln316_3_fu_1349_p4;
assign zext_ln316_fu_869_p1 = lshr_ln1_fu_859_p4;
assign zext_ln317_1_fu_929_p1 = lshr_ln317_1_fu_919_p4;
assign zext_ln317_2_fu_1339_p1 = lshr_ln317_2_fu_1329_p4;
assign zext_ln317_3_fu_1379_p1 = lshr_ln317_3_fu_1369_p4;
assign zext_ln317_fu_889_p1 = lshr_ln2_fu_879_p4;
assign zext_ln318_1_fu_1024_p1 = lshr_ln318_1_fu_1014_p4;
assign zext_ln318_2_fu_1399_p1 = lshr_ln318_2_fu_1389_p4;
assign zext_ln318_3_fu_1463_p1 = lshr_ln318_3_fu_1453_p4;
assign zext_ln318_4_fu_1056_p1 = or_ln4_fu_1049_p3;
assign zext_ln318_5_fu_1160_p1 = or_ln318_1_fu_1153_p3;
assign zext_ln318_6_fu_1495_p1 = or_ln318_2_fu_1488_p3;
assign zext_ln318_7_fu_1609_p1 = or_ln318_3_fu_1602_p3;
assign zext_ln318_fu_949_p1 = lshr_ln3_fu_939_p4;
assign zext_ln319_1_fu_1044_p1 = lshr_ln319_1_fu_1034_p4;
assign zext_ln319_2_fu_1419_p1 = lshr_ln319_2_fu_1409_p4;
assign zext_ln319_3_fu_1483_p1 = lshr_ln319_3_fu_1473_p4;
assign zext_ln319_4_fu_1068_p1 = or_ln5_fu_1061_p3;
assign zext_ln319_5_fu_1172_p1 = or_ln319_1_fu_1165_p3;
assign zext_ln319_6_fu_1507_p1 = or_ln319_2_fu_1500_p3;
assign zext_ln319_7_fu_1621_p1 = or_ln319_3_fu_1614_p3;
assign zext_ln319_fu_969_p1 = lshr_ln4_fu_959_p4;
assign zext_ln320_1_fu_1128_p1 = lshr_ln320_1_fu_1118_p4;
assign zext_ln320_2_fu_1527_p1 = lshr_ln320_2_fu_1517_p4;
assign zext_ln320_3_fu_1567_p1 = lshr_ln320_3_fu_1557_p4;
assign zext_ln320_fu_1088_p1 = lshr_ln5_fu_1078_p4;
assign zext_ln321_1_fu_1148_p1 = lshr_ln321_1_fu_1138_p4;
assign zext_ln321_2_fu_1547_p1 = lshr_ln321_2_fu_1537_p4;
assign zext_ln321_3_fu_1587_p1 = lshr_ln321_3_fu_1577_p4;
assign zext_ln321_fu_1108_p1 = lshr_ln6_fu_1098_p4;
always @ (posedge ap_clk) begin
    zext_ln172_reg_1654[9] <= 1'b0;
    zext_ln172_2_reg_1674[0] <= 1'b1;
    zext_ln172_2_reg_1674[9] <= 1'b0;
    zext_ln314_reg_1700[1:0] <= 2'b00;
    zext_ln314_reg_1700[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln315_4_reg_1705[1:0] <= 2'b10;
    zext_ln315_4_reg_1705[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln314_1_reg_1746[2:0] <= 3'b100;
    zext_ln314_1_reg_1746[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln315_5_reg_1751[2:0] <= 3'b110;
    zext_ln315_5_reg_1751[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln318_4_reg_1766[1:0] <= 2'b01;
    zext_ln318_4_reg_1766[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln319_4_reg_1771[1:0] <= 2'b11;
    zext_ln319_4_reg_1771[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln318_5_reg_1796[2:0] <= 3'b101;
    zext_ln318_5_reg_1796[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln319_5_reg_1801[2:0] <= 3'b111;
    zext_ln319_5_reg_1801[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_3_reg_1806[1:0] <= 2'b10;
    zext_ln172_3_reg_1806[9] <= 1'b0;
    zext_ln172_5_reg_1826[1:0] <= 2'b11;
    zext_ln172_5_reg_1826[9] <= 1'b0;
    zext_ln314_2_reg_1856[3:0] <= 4'b1000;
    zext_ln314_2_reg_1856[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln315_6_reg_1861[3:0] <= 4'b1010;
    zext_ln315_6_reg_1861[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln314_3_reg_1896[3:0] <= 4'b1100;
    zext_ln314_3_reg_1896[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln315_7_reg_1901[3:0] <= 4'b1110;
    zext_ln315_7_reg_1901[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln318_6_reg_1916[3:0] <= 4'b1001;
    zext_ln318_6_reg_1916[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln319_6_reg_1921[3:0] <= 4'b1011;
    zext_ln319_6_reg_1921[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln318_7_reg_1946[3:0] <= 4'b1101;
    zext_ln318_7_reg_1946[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln319_7_reg_1951[3:0] <= 4'b1111;
    zext_ln319_7_reg_1951[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 