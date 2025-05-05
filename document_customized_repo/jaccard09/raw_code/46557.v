module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1); 
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
output  [7:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [7:0] smem_2_address1;
output   smem_2_ce1;
output   smem_2_we1;
output  [63:0] smem_2_d1;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [7:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [7:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [7:0] smem_address1;
output   smem_ce1;
output   smem_we1;
output  [63:0] smem_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_1675;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [63:0] reg_712;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_720;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_727;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_735;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_743;
reg   [6:0] tid_3_reg_1667;
wire   [3:0] lshr_ln172_4_fu_767_p4;
reg   [3:0] lshr_ln172_4_reg_1679;
wire   [5:0] offset_fu_805_p1;
reg   [5:0] offset_reg_1711;
wire   [63:0] zext_ln172_4_fu_808_p1;
reg   [63:0] zext_ln172_4_reg_1722;
wire   [63:0] zext_ln298_fu_820_p1;
reg   [63:0] zext_ln298_reg_1729;
wire   [63:0] zext_ln304_7_fu_845_p1;
reg   [63:0] zext_ln304_7_reg_1749;
wire   [8:0] zext_ln172_14_fu_853_p1;
reg   [8:0] zext_ln172_14_reg_1759;
wire   [63:0] zext_ln302_4_fu_897_p1;
reg   [63:0] zext_ln302_4_reg_1780;
wire   [9:0] trunc_ln172_fu_929_p1;
reg   [9:0] trunc_ln172_reg_1790;
reg   [63:0] DATA_x_load_14_reg_1800;
reg   [63:0] DATA_x_load_15_reg_1805;
wire   [7:0] zext_ln172_13_fu_954_p1;
reg   [7:0] zext_ln172_13_reg_1810;
wire   [4:0] tmp_s_fu_991_p4;
reg   [4:0] tmp_s_reg_1831;
wire   [63:0] zext_ln298_1_fu_1008_p1;
reg   [63:0] zext_ln298_1_reg_1839;
reg   [5:0] trunc_ln5_reg_1849;
reg   [6:0] lshr_ln15_reg_1854;
wire   [5:0] offset_7_fu_1103_p3;
reg   [5:0] offset_7_reg_1859;
wire   [8:0] zext_ln172_17_fu_1110_p1;
reg   [8:0] zext_ln172_17_reg_1865;
wire   [63:0] zext_ln302_5_fu_1155_p1;
reg   [63:0] zext_ln302_5_reg_1886;
wire   [7:0] zext_ln172_16_fu_1192_p1;
reg   [7:0] zext_ln172_16_reg_1896;
wire   [63:0] zext_ln298_2_fu_1236_p1;
reg   [63:0] zext_ln298_2_reg_1917;
reg   [5:0] trunc_ln303_1_reg_1927;
reg   [6:0] lshr_ln304_1_reg_1932;
wire   [5:0] offset_8_fu_1355_p3;
reg   [5:0] offset_8_reg_1937;
wire   [8:0] zext_ln172_20_fu_1362_p1;
reg   [8:0] zext_ln172_20_reg_1943;
wire   [63:0] zext_ln302_6_fu_1407_p1;
reg   [63:0] zext_ln302_6_reg_1964;
wire   [7:0] zext_ln172_19_fu_1444_p1;
reg   [7:0] zext_ln172_19_reg_1974;
reg   [7:0] lshr_ln305_3_reg_2000;
reg   [5:0] trunc_ln303_2_reg_2005;
reg   [6:0] lshr_ln304_2_reg_2010;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln298_3_fu_785_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln300_7_fu_799_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln302_7_fu_832_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln299_fu_872_p1;
wire   [63:0] zext_ln300_4_fu_884_p1;
wire   [63:0] zext_ln299_3_fu_949_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln300_fu_973_p1;
wire   [63:0] zext_ln304_4_fu_985_p1;
wire   [63:0] zext_ln300_3_fu_1028_p1;
wire   [63:0] zext_ln301_fu_1048_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln302_fu_1068_p1;
wire   [63:0] zext_ln299_1_fu_1130_p1;
wire   [63:0] zext_ln300_5_fu_1142_p1;
wire   [63:0] zext_ln301_3_fu_1175_p1;
wire   [63:0] zext_ln303_fu_1183_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln304_fu_1188_p1;
wire   [63:0] zext_ln300_1_fu_1211_p1;
wire   [63:0] zext_ln304_5_fu_1223_p1;
wire   [63:0] zext_ln302_3_fu_1256_p1;
wire   [63:0] zext_ln305_fu_1280_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln301_1_fu_1300_p1;
wire   [63:0] zext_ln302_1_fu_1320_p1;
wire   [63:0] zext_ln299_2_fu_1382_p1;
wire   [63:0] zext_ln300_6_fu_1394_p1;
wire   [63:0] zext_ln303_3_fu_1427_p1;
wire   [63:0] zext_ln303_1_fu_1435_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln304_1_fu_1440_p1;
wire   [63:0] zext_ln300_2_fu_1463_p1;
wire   [63:0] zext_ln304_6_fu_1475_p1;
wire   [63:0] zext_ln304_3_fu_1496_p1;
wire   [63:0] zext_ln305_1_fu_1545_p1;
wire   [63:0] zext_ln301_2_fu_1565_p1;
wire   [63:0] zext_ln302_2_fu_1585_p1;
wire   [63:0] zext_ln305_3_fu_1620_p1;
wire   [63:0] zext_ln303_2_fu_1627_p1;
wire   [63:0] zext_ln304_2_fu_1632_p1;
wire   [63:0] zext_ln305_2_fu_1655_p1;
reg   [6:0] tid_fu_134;
wire   [6:0] add_ln294_fu_1516_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [7:0] smem_3_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [7:0] smem_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [7:0] smem_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [7:0] smem_1_address1_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [7:0] smem_2_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [7:0] smem_2_address0_local;
wire   [7:0] shl_ln298_2_fu_777_p3;
wire   [7:0] or_ln300_3_fu_791_p3;
wire   [7:0] shl_ln6_fu_812_p3;
wire   [7:0] or_ln302_3_fu_825_p3;
wire   [7:0] or_ln304_3_fu_838_p3;
wire   [8:0] add_ln299_fu_856_p2;
wire   [6:0] lshr_ln_fu_862_p4;
wire   [7:0] or_ln_fu_877_p3;
wire   [7:0] or_ln8_fu_890_p3;
wire   [0:0] tmp_27_fu_902_p3;
wire   [31:0] zext_ln295_fu_850_p1;
wire   [2:0] or_ln11_fu_909_p3;
wire   [31:0] offset_9_fu_917_p5;
wire   [9:0] add_ln299_3_fu_933_p2;
wire   [7:0] lshr_ln299_3_fu_939_p4;
wire   [7:0] add_ln300_fu_957_p2;
wire   [5:0] lshr_ln12_fu_963_p4;
wire   [7:0] or_ln9_fu_978_p3;
wire   [7:0] shl_ln298_1_fu_1000_p3;
wire   [9:0] add_ln300_3_fu_1013_p2;
wire   [7:0] lshr_ln300_3_fu_1018_p4;
wire   [8:0] add_ln301_fu_1033_p2;
wire   [6:0] lshr_ln13_fu_1038_p4;
wire   [7:0] add_ln302_fu_1053_p2;
wire   [5:0] lshr_ln14_fu_1058_p4;
wire   [7:0] add_ln303_fu_1073_p2;
wire   [8:0] add_ln304_fu_1088_p2;
wire   [8:0] add_ln299_1_fu_1114_p2;
wire   [6:0] lshr_ln299_1_fu_1120_p4;
wire   [7:0] or_ln300_1_fu_1135_p3;
wire   [7:0] or_ln302_1_fu_1148_p3;
wire   [9:0] add_ln301_3_fu_1160_p2;
wire   [7:0] lshr_ln301_3_fu_1165_p4;
wire  signed [6:0] sext_ln303_fu_1180_p1;
wire   [7:0] add_ln300_1_fu_1195_p2;
wire   [5:0] lshr_ln300_1_fu_1201_p4;
wire   [7:0] or_ln304_1_fu_1216_p3;
wire   [7:0] or_ln10_fu_1229_p3;
wire   [9:0] add_ln302_3_fu_1241_p2;
wire   [7:0] lshr_ln302_3_fu_1246_p4;
wire   [9:0] zext_ln172_fu_1261_p1;
wire   [9:0] add_ln305_fu_1264_p2;
wire   [7:0] lshr_ln16_fu_1270_p4;
wire   [8:0] add_ln301_1_fu_1285_p2;
wire   [6:0] lshr_ln301_1_fu_1290_p4;
wire   [7:0] add_ln302_1_fu_1305_p2;
wire   [5:0] lshr_ln302_1_fu_1310_p4;
wire   [7:0] add_ln303_1_fu_1325_p2;
wire   [8:0] add_ln304_1_fu_1340_p2;
wire   [8:0] add_ln299_2_fu_1366_p2;
wire   [6:0] lshr_ln299_2_fu_1372_p4;
wire   [7:0] or_ln300_2_fu_1387_p3;
wire   [7:0] or_ln302_2_fu_1400_p3;
wire   [9:0] add_ln303_3_fu_1412_p2;
wire   [7:0] lshr_ln303_3_fu_1417_p4;
wire  signed [6:0] sext_ln303_1_fu_1432_p1;
wire   [7:0] add_ln300_2_fu_1447_p2;
wire   [5:0] lshr_ln300_2_fu_1453_p4;
wire   [7:0] or_ln304_2_fu_1468_p3;
wire   [9:0] add_ln304_3_fu_1481_p2;
wire   [7:0] lshr_ln304_3_fu_1486_p4;
wire   [9:0] add_ln305_3_fu_1501_p2;
wire   [9:0] zext_ln172_15_fu_1526_p1;
wire   [9:0] add_ln305_1_fu_1529_p2;
wire   [7:0] lshr_ln305_1_fu_1535_p4;
wire   [8:0] add_ln301_2_fu_1550_p2;
wire   [6:0] lshr_ln301_2_fu_1555_p4;
wire   [7:0] add_ln302_2_fu_1570_p2;
wire   [5:0] lshr_ln302_2_fu_1575_p4;
wire   [7:0] add_ln303_2_fu_1590_p2;
wire   [8:0] add_ln304_2_fu_1605_p2;
wire  signed [6:0] sext_ln303_2_fu_1624_p1;
wire   [9:0] zext_ln172_18_fu_1636_p1;
wire   [9:0] add_ln305_2_fu_1639_p2;
wire   [7:0] lshr_ln305_2_fu_1645_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
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
#0 tid_fu_134 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_720 <= DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_720 <= DATA_x_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_727 <= DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_727 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        reg_735 <= DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_735 <= DATA_x_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_743 <= DATA_x_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_743 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_134 <= 7'd0;
    end else if (((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tid_fu_134 <= add_ln294_fu_1516_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_load_14_reg_1800 <= DATA_x_q1;
        DATA_x_load_15_reg_1805 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln15_reg_1854 <= {{add_ln304_fu_1088_p2[8:2]}};
        offset_7_reg_1859[5 : 1] <= offset_7_fu_1103_p3[5 : 1];
        trunc_ln5_reg_1849 <= {{add_ln303_fu_1073_p2[7:2]}};
        zext_ln172_17_reg_1865[5 : 1] <= zext_ln172_17_fu_1110_p1[5 : 1];
        zext_ln302_5_reg_1886[7 : 3] <= zext_ln302_5_fu_1155_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln172_4_reg_1679 <= {{ap_sig_allocacmp_tid_3[5:2]}};
        lshr_ln304_2_reg_2010 <= {{add_ln304_2_fu_1605_p2[8:2]}};
        tid_3_reg_1667 <= ap_sig_allocacmp_tid_3;
        tmp_reg_1675 <= ap_sig_allocacmp_tid_3[32'd6];
        trunc_ln303_2_reg_2005 <= {{add_ln303_2_fu_1590_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln304_1_reg_1932 <= {{add_ln304_1_fu_1340_p2[8:2]}};
        offset_8_reg_1937[5 : 2] <= offset_8_fu_1355_p3[5 : 2];
        trunc_ln303_1_reg_1927 <= {{add_ln303_1_fu_1325_p2[7:2]}};
        zext_ln172_20_reg_1943[5 : 2] <= zext_ln172_20_fu_1362_p1[5 : 2];
        zext_ln302_6_reg_1964[7 : 4] <= zext_ln302_6_fu_1407_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        lshr_ln305_3_reg_2000 <= {{add_ln305_3_fu_1501_p2[9:2]}};
        zext_ln172_19_reg_1974[5 : 2] <= zext_ln172_19_fu_1444_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_reg_1711 <= offset_fu_805_p1;
        zext_ln172_4_reg_1722[3 : 0] <= zext_ln172_4_fu_808_p1[3 : 0];
        zext_ln298_reg_1729[7 : 2] <= zext_ln298_fu_820_p1[7 : 2];
        zext_ln304_7_reg_1749[7 : 4] <= zext_ln304_7_fu_845_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_712 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_s_reg_1831 <= {{tid_3_reg_1667[5:1]}};
        zext_ln172_13_reg_1810[5 : 0] <= zext_ln172_13_fu_954_p1[5 : 0];
        zext_ln298_1_reg_1839[7 : 3] <= zext_ln298_1_fu_1008_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln172_reg_1790 <= trunc_ln172_fu_929_p1;
        zext_ln172_14_reg_1759[5 : 0] <= zext_ln172_14_fu_853_p1[5 : 0];
        zext_ln302_4_reg_1780[7 : 2] <= zext_ln302_4_fu_897_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        zext_ln172_16_reg_1896[5 : 1] <= zext_ln172_16_fu_1192_p1[5 : 1];
        zext_ln298_2_reg_1917[7 : 4] <= zext_ln298_2_fu_1236_p1[7 : 4];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_x_1_address0_local = zext_ln304_7_reg_1749;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_x_1_address0_local = zext_ln302_6_fu_1407_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_x_1_address0_local = zext_ln298_2_fu_1236_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_x_1_address0_local = zext_ln302_5_fu_1155_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address0_local = zext_ln298_1_fu_1008_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address0_local = zext_ln302_4_fu_897_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln302_7_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln300_7_fu_799_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_x_1_address1_local = zext_ln304_6_fu_1475_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_x_1_address1_local = zext_ln300_6_fu_1394_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_x_1_address1_local = zext_ln304_5_fu_1223_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_x_1_address1_local = zext_ln300_5_fu_1142_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address1_local = zext_ln304_4_fu_985_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address1_local = zext_ln300_4_fu_884_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln298_fu_820_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln298_3_fu_785_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_x_address0_local = zext_ln304_6_fu_1475_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_x_address0_local = zext_ln300_6_fu_1394_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_x_address0_local = zext_ln304_5_fu_1223_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_x_address0_local = zext_ln300_5_fu_1142_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address0_local = zext_ln304_4_fu_985_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address0_local = zext_ln300_4_fu_884_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln304_7_fu_845_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln300_7_fu_799_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_x_address1_local = zext_ln302_6_reg_1964;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_x_address1_local = zext_ln298_2_reg_1917;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_x_address1_local = zext_ln302_5_reg_1886;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_x_address1_local = zext_ln298_1_reg_1839;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address1_local = zext_ln302_4_reg_1780;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address1_local = zext_ln298_reg_1729;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln302_7_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln298_3_fu_785_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1675 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln305_1_fu_1545_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln303_1_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln301_1_fu_1300_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln300_1_fu_1211_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln299_1_fu_1130_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_1_address1_local = zext_ln304_1_fu_1440_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_1_address1_local = zext_ln302_1_fu_1320_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address1_local = zext_ln172_4_reg_1722;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_720;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d0_local = reg_743;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d0_local = reg_735;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d0_local = DATA_x_1_q0;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = reg_712;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_1_d1_local = DATA_x_q1;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln305_2_fu_1655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln304_2_fu_1632_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln302_2_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln300_2_fu_1463_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln303_2_fu_1627_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln301_2_fu_1565_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address1_local = zext_ln172_4_reg_1722;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address1_local = zext_ln299_2_fu_1382_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = reg_743;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = reg_712;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d0_local = DATA_x_q0;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = reg_735;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = reg_727;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d1_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d1_local = DATA_x_1_q0;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln305_3_fu_1620_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln304_3_fu_1496_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln303_3_fu_1427_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln302_3_fu_1256_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln301_3_fu_1175_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln300_3_fu_1028_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln299_3_fu_949_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_4_fu_808_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d0_local = DATA_x_load_15_reg_1805;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_x_load_14_reg_1800;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_d0_local = reg_727;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = reg_712;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d0_local = reg_720;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_q1;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address0_local = zext_ln303_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address0_local = zext_ln301_fu_1048_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address0_local = zext_ln300_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address0_local = zext_ln299_fu_872_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_address1_local = zext_ln305_fu_1280_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address1_local = zext_ln304_fu_1188_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address1_local = zext_ln302_fu_1068_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address1_local = zext_ln172_4_reg_1722;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_d0_local = reg_743;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_d0_local = reg_735;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_d0_local = DATA_x_q0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_d0_local = DATA_x_1_q1;
        end else begin
            smem_d0_local = 'bx;
        end
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d1_local = reg_727;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d1_local = reg_712;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_d1_local = DATA_x_q1;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln294_fu_1516_p2 = (tid_3_reg_1667 + 7'd4);
assign add_ln299_1_fu_1114_p2 = ($signed(zext_ln172_17_fu_1110_p1) + $signed(9'd288));
assign add_ln299_2_fu_1366_p2 = ($signed(zext_ln172_20_fu_1362_p1) + $signed(9'd288));
assign add_ln299_3_fu_933_p2 = (trunc_ln172_fu_929_p1 + 10'd288);
assign add_ln299_fu_856_p2 = ($signed(zext_ln172_14_fu_853_p1) + $signed(9'd288));
assign add_ln300_1_fu_1195_p2 = (zext_ln172_16_fu_1192_p1 + 8'd72);
assign add_ln300_2_fu_1447_p2 = (zext_ln172_19_fu_1444_p1 + 8'd72);
assign add_ln300_3_fu_1013_p2 = (trunc_ln172_reg_1790 + 10'd72);
assign add_ln300_fu_957_p2 = (zext_ln172_13_fu_954_p1 + 8'd72);
assign add_ln301_1_fu_1285_p2 = ($signed(zext_ln172_17_reg_1865) + $signed(9'd360));
assign add_ln301_2_fu_1550_p2 = ($signed(zext_ln172_20_reg_1943) + $signed(9'd360));
assign add_ln301_3_fu_1160_p2 = (trunc_ln172_reg_1790 + 10'd360);
assign add_ln301_fu_1033_p2 = ($signed(zext_ln172_14_reg_1759) + $signed(9'd360));
assign add_ln302_1_fu_1305_p2 = ($signed(zext_ln172_16_reg_1896) + $signed(8'd144));
assign add_ln302_2_fu_1570_p2 = ($signed(zext_ln172_19_reg_1974) + $signed(8'd144));
assign add_ln302_3_fu_1241_p2 = (trunc_ln172_reg_1790 + 10'd144);
assign add_ln302_fu_1053_p2 = ($signed(zext_ln172_13_reg_1810) + $signed(8'd144));
assign add_ln303_1_fu_1325_p2 = ($signed(zext_ln172_16_reg_1896) + $signed(8'd176));
assign add_ln303_2_fu_1590_p2 = ($signed(zext_ln172_19_reg_1974) + $signed(8'd176));
assign add_ln303_3_fu_1412_p2 = (trunc_ln172_reg_1790 + 10'd432);
assign add_ln303_fu_1073_p2 = ($signed(zext_ln172_13_reg_1810) + $signed(8'd176));
assign add_ln304_1_fu_1340_p2 = (zext_ln172_17_reg_1865 + 9'd216);
assign add_ln304_2_fu_1605_p2 = (zext_ln172_20_reg_1943 + 9'd216);
assign add_ln304_3_fu_1481_p2 = (trunc_ln172_reg_1790 + 10'd216);
assign add_ln304_fu_1088_p2 = (zext_ln172_14_reg_1759 + 9'd216);
assign add_ln305_1_fu_1529_p2 = (zext_ln172_15_fu_1526_p1 + 10'd504);
assign add_ln305_2_fu_1639_p2 = (zext_ln172_18_fu_1636_p1 + 10'd504);
assign add_ln305_3_fu_1501_p2 = (trunc_ln172_reg_1790 + 10'd504);
assign add_ln305_fu_1264_p2 = (zext_ln172_fu_1261_p1 + 10'd504);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign lshr_ln12_fu_963_p4 = {{add_ln300_fu_957_p2[7:2]}};
assign lshr_ln13_fu_1038_p4 = {{add_ln301_fu_1033_p2[8:2]}};
assign lshr_ln14_fu_1058_p4 = {{add_ln302_fu_1053_p2[7:2]}};
assign lshr_ln16_fu_1270_p4 = {{add_ln305_fu_1264_p2[9:2]}};
assign lshr_ln172_4_fu_767_p4 = {{ap_sig_allocacmp_tid_3[5:2]}};
assign lshr_ln299_1_fu_1120_p4 = {{add_ln299_1_fu_1114_p2[8:2]}};
assign lshr_ln299_2_fu_1372_p4 = {{add_ln299_2_fu_1366_p2[8:2]}};
assign lshr_ln299_3_fu_939_p4 = {{add_ln299_3_fu_933_p2[9:2]}};
assign lshr_ln300_1_fu_1201_p4 = {{add_ln300_1_fu_1195_p2[7:2]}};
assign lshr_ln300_2_fu_1453_p4 = {{add_ln300_2_fu_1447_p2[7:2]}};
assign lshr_ln300_3_fu_1018_p4 = {{add_ln300_3_fu_1013_p2[9:2]}};
assign lshr_ln301_1_fu_1290_p4 = {{add_ln301_1_fu_1285_p2[8:2]}};
assign lshr_ln301_2_fu_1555_p4 = {{add_ln301_2_fu_1550_p2[8:2]}};
assign lshr_ln301_3_fu_1165_p4 = {{add_ln301_3_fu_1160_p2[9:2]}};
assign lshr_ln302_1_fu_1310_p4 = {{add_ln302_1_fu_1305_p2[7:2]}};
assign lshr_ln302_2_fu_1575_p4 = {{add_ln302_2_fu_1570_p2[7:2]}};
assign lshr_ln302_3_fu_1246_p4 = {{add_ln302_3_fu_1241_p2[9:2]}};
assign lshr_ln303_3_fu_1417_p4 = {{add_ln303_3_fu_1412_p2[9:2]}};
assign lshr_ln304_3_fu_1486_p4 = {{add_ln304_3_fu_1481_p2[9:2]}};
assign lshr_ln305_1_fu_1535_p4 = {{add_ln305_1_fu_1529_p2[9:2]}};
assign lshr_ln305_2_fu_1645_p4 = {{add_ln305_2_fu_1639_p2[9:2]}};
assign lshr_ln_fu_862_p4 = {{add_ln299_fu_856_p2[8:2]}};
assign offset_7_fu_1103_p3 = {{tmp_s_reg_1831}, {1'd1}};
assign offset_8_fu_1355_p3 = {{lshr_ln172_4_reg_1679}, {2'd2}};
assign offset_9_fu_917_p5 = {{zext_ln295_fu_850_p1[31:3]}, {or_ln11_fu_909_p3}};
assign offset_fu_805_p1 = tid_3_reg_1667[5:0];
assign or_ln10_fu_1229_p3 = {{lshr_ln172_4_reg_1679}, {4'd8}};
assign or_ln11_fu_909_p3 = {{tmp_27_fu_902_p3}, {2'd3}};
assign or_ln300_1_fu_1135_p3 = {{tmp_s_reg_1831}, {3'd6}};
assign or_ln300_2_fu_1387_p3 = {{lshr_ln172_4_reg_1679}, {4'd10}};
assign or_ln300_3_fu_791_p3 = {{lshr_ln172_4_fu_767_p4}, {4'd14}};
assign or_ln302_1_fu_1148_p3 = {{tmp_s_reg_1831}, {3'd5}};
assign or_ln302_2_fu_1400_p3 = {{lshr_ln172_4_reg_1679}, {4'd9}};
assign or_ln302_3_fu_825_p3 = {{lshr_ln172_4_reg_1679}, {4'd13}};
assign or_ln304_1_fu_1216_p3 = {{tmp_s_reg_1831}, {3'd7}};
assign or_ln304_2_fu_1468_p3 = {{lshr_ln172_4_reg_1679}, {4'd11}};
assign or_ln304_3_fu_838_p3 = {{lshr_ln172_4_reg_1679}, {4'd15}};
assign or_ln8_fu_890_p3 = {{offset_reg_1711}, {2'd1}};
assign or_ln9_fu_978_p3 = {{offset_reg_1711}, {2'd3}};
assign or_ln_fu_877_p3 = {{offset_reg_1711}, {2'd2}};
assign sext_ln303_1_fu_1432_p1 = $signed(trunc_ln303_1_reg_1927);
assign sext_ln303_2_fu_1624_p1 = $signed(trunc_ln303_2_reg_2005);
assign sext_ln303_fu_1180_p1 = $signed(trunc_ln5_reg_1849);
assign shl_ln298_1_fu_1000_p3 = {{tmp_s_fu_991_p4}, {3'd4}};
assign shl_ln298_2_fu_777_p3 = {{lshr_ln172_4_fu_767_p4}, {4'd12}};
assign shl_ln6_fu_812_p3 = {{offset_fu_805_p1}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_d1 = smem_1_d1_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_1_we1 = smem_1_we1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_d1 = smem_2_d1_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_2_we1 = smem_2_we1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_27_fu_902_p3 = tid_3_reg_1667[32'd2];
assign tmp_s_fu_991_p4 = {{tid_3_reg_1667[5:1]}};
assign trunc_ln172_fu_929_p1 = offset_9_fu_917_p5[9:0];
assign zext_ln172_13_fu_954_p1 = offset_reg_1711;
assign zext_ln172_14_fu_853_p1 = offset_reg_1711;
assign zext_ln172_15_fu_1526_p1 = offset_7_reg_1859;
assign zext_ln172_16_fu_1192_p1 = offset_7_reg_1859;
assign zext_ln172_17_fu_1110_p1 = offset_7_fu_1103_p3;
assign zext_ln172_18_fu_1636_p1 = offset_8_reg_1937;
assign zext_ln172_19_fu_1444_p1 = offset_8_reg_1937;
assign zext_ln172_20_fu_1362_p1 = offset_8_fu_1355_p3;
assign zext_ln172_4_fu_808_p1 = lshr_ln172_4_reg_1679;
assign zext_ln172_fu_1261_p1 = offset_reg_1711;
assign zext_ln295_fu_850_p1 = offset_reg_1711;
assign zext_ln298_1_fu_1008_p1 = shl_ln298_1_fu_1000_p3;
assign zext_ln298_2_fu_1236_p1 = or_ln10_fu_1229_p3;
assign zext_ln298_3_fu_785_p1 = shl_ln298_2_fu_777_p3;
assign zext_ln298_fu_820_p1 = shl_ln6_fu_812_p3;
assign zext_ln299_1_fu_1130_p1 = lshr_ln299_1_fu_1120_p4;
assign zext_ln299_2_fu_1382_p1 = lshr_ln299_2_fu_1372_p4;
assign zext_ln299_3_fu_949_p1 = lshr_ln299_3_fu_939_p4;
assign zext_ln299_fu_872_p1 = lshr_ln_fu_862_p4;
assign zext_ln300_1_fu_1211_p1 = lshr_ln300_1_fu_1201_p4;
assign zext_ln300_2_fu_1463_p1 = lshr_ln300_2_fu_1453_p4;
assign zext_ln300_3_fu_1028_p1 = lshr_ln300_3_fu_1018_p4;
assign zext_ln300_4_fu_884_p1 = or_ln_fu_877_p3;
assign zext_ln300_5_fu_1142_p1 = or_ln300_1_fu_1135_p3;
assign zext_ln300_6_fu_1394_p1 = or_ln300_2_fu_1387_p3;
assign zext_ln300_7_fu_799_p1 = or_ln300_3_fu_791_p3;
assign zext_ln300_fu_973_p1 = lshr_ln12_fu_963_p4;
assign zext_ln301_1_fu_1300_p1 = lshr_ln301_1_fu_1290_p4;
assign zext_ln301_2_fu_1565_p1 = lshr_ln301_2_fu_1555_p4;
assign zext_ln301_3_fu_1175_p1 = lshr_ln301_3_fu_1165_p4;
assign zext_ln301_fu_1048_p1 = lshr_ln13_fu_1038_p4;
assign zext_ln302_1_fu_1320_p1 = lshr_ln302_1_fu_1310_p4;
assign zext_ln302_2_fu_1585_p1 = lshr_ln302_2_fu_1575_p4;
assign zext_ln302_3_fu_1256_p1 = lshr_ln302_3_fu_1246_p4;
assign zext_ln302_4_fu_897_p1 = or_ln8_fu_890_p3;
assign zext_ln302_5_fu_1155_p1 = or_ln302_1_fu_1148_p3;
assign zext_ln302_6_fu_1407_p1 = or_ln302_2_fu_1400_p3;
assign zext_ln302_7_fu_832_p1 = or_ln302_3_fu_825_p3;
assign zext_ln302_fu_1068_p1 = lshr_ln14_fu_1058_p4;
assign zext_ln303_1_fu_1435_p1 = $unsigned(sext_ln303_1_fu_1432_p1);
assign zext_ln303_2_fu_1627_p1 = $unsigned(sext_ln303_2_fu_1624_p1);
assign zext_ln303_3_fu_1427_p1 = lshr_ln303_3_fu_1417_p4;
assign zext_ln303_fu_1183_p1 = $unsigned(sext_ln303_fu_1180_p1);
assign zext_ln304_1_fu_1440_p1 = lshr_ln304_1_reg_1932;
assign zext_ln304_2_fu_1632_p1 = lshr_ln304_2_reg_2010;
assign zext_ln304_3_fu_1496_p1 = lshr_ln304_3_fu_1486_p4;
assign zext_ln304_4_fu_985_p1 = or_ln9_fu_978_p3;
assign zext_ln304_5_fu_1223_p1 = or_ln304_1_fu_1216_p3;
assign zext_ln304_6_fu_1475_p1 = or_ln304_2_fu_1468_p3;
assign zext_ln304_7_fu_845_p1 = or_ln304_3_fu_838_p3;
assign zext_ln304_fu_1188_p1 = lshr_ln15_reg_1854;
assign zext_ln305_1_fu_1545_p1 = lshr_ln305_1_fu_1535_p4;
assign zext_ln305_2_fu_1655_p1 = lshr_ln305_2_fu_1645_p4;
assign zext_ln305_3_fu_1620_p1 = lshr_ln305_3_reg_2000;
assign zext_ln305_fu_1280_p1 = lshr_ln16_fu_1270_p4;
always @ (posedge ap_clk) begin
    zext_ln172_4_reg_1722[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln298_reg_1729[1:0] <= 2'b00;
    zext_ln298_reg_1729[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln304_7_reg_1749[3:0] <= 4'b1111;
    zext_ln304_7_reg_1749[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_14_reg_1759[8:6] <= 3'b000;
    zext_ln302_4_reg_1780[1:0] <= 2'b01;
    zext_ln302_4_reg_1780[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_13_reg_1810[7:6] <= 2'b00;
    zext_ln298_1_reg_1839[2:0] <= 3'b100;
    zext_ln298_1_reg_1839[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    offset_7_reg_1859[0] <= 1'b1;
    zext_ln172_17_reg_1865[0] <= 1'b1;
    zext_ln172_17_reg_1865[8:6] <= 3'b000;
    zext_ln302_5_reg_1886[2:0] <= 3'b101;
    zext_ln302_5_reg_1886[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_16_reg_1896[0] <= 1'b1;
    zext_ln172_16_reg_1896[7:6] <= 2'b00;
    zext_ln298_2_reg_1917[3:0] <= 4'b1000;
    zext_ln298_2_reg_1917[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    offset_8_reg_1937[1:0] <= 2'b10;
    zext_ln172_20_reg_1943[1:0] <= 2'b10;
    zext_ln172_20_reg_1943[8:6] <= 3'b000;
    zext_ln302_6_reg_1964[3:0] <= 4'b1001;
    zext_ln302_6_reg_1964[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_19_reg_1974[1:0] <= 2'b10;
    zext_ln172_19_reg_1974[7:6] <= 2'b00;
end
endmodule 