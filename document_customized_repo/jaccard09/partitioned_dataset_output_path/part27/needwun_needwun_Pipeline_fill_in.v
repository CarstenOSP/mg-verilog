
module needwun_needwun_Pipeline_fill_in (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SEQA_address0,SEQA_ce0,SEQA_q0,SEQA_address1,SEQA_ce1,SEQA_q1,SEQB_load,empty,M_address0,M_ce0,M_we0,M_d0,M_q0,M_address1,M_ce1,M_we1,M_d1,M_q1,mul_ln29,ptr_address0,ptr_ce0,ptr_we0,ptr_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 14'd1;
parameter    ap_ST_fsm_pp0_stage1 = 14'd2;
parameter    ap_ST_fsm_pp0_stage2 = 14'd4;
parameter    ap_ST_fsm_pp0_stage3 = 14'd8;
parameter    ap_ST_fsm_pp0_stage4 = 14'd16;
parameter    ap_ST_fsm_pp0_stage5 = 14'd32;
parameter    ap_ST_fsm_pp0_stage6 = 14'd64;
parameter    ap_ST_fsm_pp0_stage7 = 14'd128;
parameter    ap_ST_fsm_pp0_stage8 = 14'd256;
parameter    ap_ST_fsm_pp0_stage9 = 14'd512;
parameter    ap_ST_fsm_pp0_stage10 = 14'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 14'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 14'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 14'd8192;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] SEQA_address0;
output   SEQA_ce0;
input  [7:0] SEQA_q0;
output  [6:0] SEQA_address1;
output   SEQA_ce1;
input  [7:0] SEQA_q1;
input  [7:0] SEQB_load;
input  [14:0] empty;
output  [14:0] M_address0;
output   M_ce0;
output   M_we0;
output  [31:0] M_d0;
input  [31:0] M_q0;
output  [14:0] M_address1;
output   M_ce1;
output   M_we1;
output  [31:0] M_d1;
input  [31:0] M_q1;
input  [14:0] mul_ln29;
output  [14:0] ptr_address0;
output   ptr_ce0;
output   ptr_we0;
output  [7:0] ptr_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln29_reg_1411;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_subdone;
reg   [31:0] reg_395;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_399;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] grp_fu_404_p2;
reg   [31:0] reg_416;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] grp_fu_410_p2;
reg   [31:0] reg_420;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] a_idx_reg_1405;
wire   [0:0] icmp_ln29_fu_432_p2;
wire   [14:0] zext_ln29_1_fu_443_p1;
reg   [14:0] zext_ln29_1_reg_1415;
wire   [6:0] trunc_ln29_fu_447_p1;
reg   [6:0] trunc_ln29_reg_1420;
wire   [6:0] add_ln30_fu_451_p2;
reg   [6:0] add_ln30_reg_1430;
wire   [0:0] grp_fu_385_p2;
reg   [0:0] icmp_ln30_reg_1450;
wire   [6:0] add_ln29_fu_496_p2;
reg   [6:0] add_ln29_reg_1465;
wire   [0:0] grp_fu_390_p2;
reg   [0:0] icmp_ln30_1_reg_1470;
wire   [6:0] add_ln29_1_fu_506_p2;
reg   [6:0] add_ln29_1_reg_1475;
wire   [31:0] up_left_fu_523_p2;
reg   [31:0] up_left_reg_1490;
wire   [31:0] left_fu_529_p2;
reg   [31:0] left_reg_1496;
wire   [14:0] zext_ln30_3_fu_535_p1;
reg   [14:0] zext_ln30_3_reg_1503;
wire   [31:0] up_left_1_fu_545_p2;
reg   [31:0] up_left_1_reg_1508;
wire   [14:0] zext_ln30_5_fu_561_p1;
reg   [14:0] zext_ln30_5_reg_1519;
reg   [0:0] icmp_ln30_2_reg_1524;
wire   [6:0] add_ln29_2_fu_574_p2;
reg   [6:0] add_ln29_2_reg_1534;
reg   [0:0] icmp_ln30_3_reg_1539;
wire   [6:0] add_ln29_3_fu_584_p2;
reg   [6:0] add_ln29_3_reg_1544;
wire   [31:0] max_fu_611_p3;
reg   [31:0] max_reg_1559;
wire   [14:0] zext_ln30_7_fu_618_p1;
reg   [14:0] zext_ln30_7_reg_1567;
wire   [14:0] zext_ln30_9_fu_631_p1;
reg   [14:0] zext_ln30_9_reg_1577;
reg   [0:0] icmp_ln30_4_reg_1582;
wire   [6:0] add_ln29_4_fu_644_p2;
reg   [6:0] add_ln29_4_reg_1592;
reg   [0:0] icmp_ln30_5_reg_1597;
wire   [6:0] add_ln29_5_fu_654_p2;
reg   [6:0] add_ln29_5_reg_1602;
wire   [63:0] zext_ln45_fu_668_p1;
reg   [63:0] zext_ln45_reg_1617;
wire   [31:0] left_1_fu_709_p2;
reg   [31:0] left_1_reg_1622;
wire   [0:0] icmp_ln43_2_fu_714_p2;
reg   [0:0] icmp_ln43_2_reg_1628;
wire   [14:0] add_ln45_1_fu_720_p2;
reg   [14:0] add_ln45_1_reg_1633;
wire   [31:0] up_left_2_fu_731_p2;
reg   [31:0] up_left_2_reg_1638;
wire   [14:0] add_ln45_2_fu_737_p2;
reg   [14:0] add_ln45_2_reg_1644;
wire   [14:0] add_ln45_3_fu_741_p2;
reg   [14:0] add_ln45_3_reg_1649;
reg   [31:0] M_load_6_reg_1654;
wire   [14:0] add_ln45_4_fu_745_p2;
reg   [14:0] add_ln45_4_reg_1660;
wire   [14:0] add_ln45_5_fu_762_p2;
reg   [14:0] add_ln45_5_reg_1670;
reg   [0:0] icmp_ln30_6_reg_1675;
wire   [14:0] add_ln45_6_fu_780_p2;
reg   [14:0] add_ln45_6_reg_1685;
reg   [0:0] icmp_ln30_7_reg_1690;
wire   [14:0] add_ln40_14_fu_794_p2;
reg   [14:0] add_ln40_14_reg_1695;
wire   [14:0] add_ln45_7_fu_799_p2;
reg   [14:0] add_ln45_7_reg_1700;
wire   [31:0] max_1_fu_815_p3;
reg   [31:0] max_1_reg_1705;
wire   [0:0] icmp_ln46_1_fu_822_p2;
reg   [0:0] icmp_ln46_1_reg_1710;
wire   [0:0] icmp_ln48_1_fu_827_p2;
reg   [0:0] icmp_ln48_1_reg_1716;
wire   [31:0] left_2_fu_833_p2;
reg   [31:0] left_2_reg_1721;
wire   [31:0] up_left_3_fu_846_p2;
reg   [31:0] up_left_3_reg_1728;
reg   [31:0] M_load_8_reg_1734;
wire   [31:0] max_2_fu_902_p3;
reg   [31:0] max_2_reg_1745;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [31:0] M_load_9_reg_1753;
wire   [31:0] left_3_fu_950_p2;
reg   [31:0] left_3_reg_1758;
wire   [31:0] select_ln43_6_fu_961_p3;
reg   [31:0] select_ln43_6_reg_1763;
wire   [31:0] up_left_4_fu_976_p2;
reg   [31:0] up_left_4_reg_1769;
wire   [63:0] zext_ln45_3_fu_993_p1;
reg   [63:0] zext_ln45_3_reg_1775;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln46_3_fu_997_p2;
reg   [0:0] icmp_ln46_3_reg_1780;
wire   [0:0] icmp_ln48_3_fu_1002_p2;
reg   [0:0] icmp_ln48_3_reg_1786;
wire   [31:0] up_4_fu_1008_p2;
reg   [31:0] up_4_reg_1791;
wire   [31:0] left_4_fu_1013_p2;
reg   [31:0] left_4_reg_1798;
wire   [31:0] up_left_5_fu_1026_p2;
reg   [31:0] up_left_5_reg_1805;
wire   [31:0] max_4_fu_1070_p3;
reg   [31:0] max_4_reg_1811;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] left_5_fu_1117_p2;
reg   [31:0] left_5_reg_1819;
wire   [31:0] select_ln43_10_fu_1128_p3;
reg   [31:0] select_ln43_10_reg_1824;
wire   [31:0] up_left_6_fu_1143_p2;
reg   [31:0] up_left_6_reg_1830;
wire   [63:0] zext_ln45_5_fu_1160_p1;
reg   [63:0] zext_ln45_5_reg_1836;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [0:0] icmp_ln46_5_fu_1164_p2;
reg   [0:0] icmp_ln46_5_reg_1841;
wire   [0:0] icmp_ln48_5_fu_1169_p2;
reg   [0:0] icmp_ln48_5_reg_1847;
wire   [31:0] up_6_fu_1175_p2;
reg   [31:0] up_6_reg_1852;
wire   [31:0] left_6_fu_1180_p2;
reg   [31:0] left_6_reg_1859;
wire   [31:0] up_left_7_fu_1193_p2;
reg   [31:0] up_left_7_reg_1866;
wire   [31:0] max_6_fu_1237_p3;
reg   [31:0] max_6_reg_1872;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [31:0] up_7_fu_1284_p2;
reg   [31:0] up_7_reg_1880;
wire    ap_block_pp0_stage13_11001;
wire   [31:0] left_7_fu_1289_p2;
reg   [31:0] left_7_reg_1885;
wire   [31:0] select_ln43_14_fu_1300_p3;
reg   [31:0] select_ln43_14_reg_1890;
wire   [63:0] zext_ln45_7_fu_1329_p1;
reg   [63:0] zext_ln45_7_reg_1896;
wire   [0:0] icmp_ln46_7_fu_1333_p2;
reg   [0:0] icmp_ln46_7_reg_1901;
wire   [0:0] icmp_ln48_7_fu_1338_p2;
reg   [0:0] icmp_ln48_7_reg_1907;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln30_fu_457_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln40_fu_468_p1;
wire   [63:0] zext_ln29_fu_438_p1;
wire   [63:0] zext_ln39_fu_481_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln41_fu_491_p1;
wire   [63:0] zext_ln30_2_fu_501_p1;
wire   [63:0] zext_ln30_4_fu_511_p1;
wire   [63:0] zext_ln40_1_fu_556_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln40_2_fu_569_p1;
wire   [63:0] zext_ln30_6_fu_579_p1;
wire   [63:0] zext_ln30_8_fu_589_p1;
wire   [63:0] zext_ln40_3_fu_626_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln40_4_fu_639_p1;
wire   [63:0] zext_ln30_10_fu_649_p1;
wire   [63:0] zext_ln30_12_fu_659_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln40_5_fu_757_p1;
wire   [63:0] zext_ln40_6_fu_775_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln40_7_fu_852_p1;
wire   [63:0] zext_ln45_1_fu_856_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln45_2_fu_909_p1;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln45_4_fu_1077_p1;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln45_6_fu_1244_p1;
wire    ap_block_pp0_stage13;
reg   [7:0] a_idx_2_fu_68;
wire   [7:0] add_ln29_7_fu_1308_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx;
reg    SEQA_ce1_local;
reg   [6:0] SEQA_address1_local;
reg    SEQA_ce0_local;
reg   [6:0] SEQA_address0_local;
reg    M_ce1_local;
reg   [14:0] M_address1_local;
reg    M_ce0_local;
reg   [14:0] M_address0_local;
reg    M_we0_local;
reg   [31:0] M_d0_local;
reg    M_we1_local;
reg   [31:0] M_d1_local;
wire   [31:0] max_3_fu_986_p3;
wire   [31:0] max_5_fu_1153_p3;
wire   [31:0] max_7_fu_1322_p3;
reg    ptr_we0_local;
reg   [7:0] ptr_d0_local;
wire   [7:0] zext_ln47_fu_704_p1;
reg    ptr_ce0_local;
reg   [14:0] ptr_address0_local;
wire   [7:0] zext_ln47_1_fu_880_p1;
wire   [7:0] zext_ln47_2_fu_945_p1;
wire   [7:0] zext_ln47_3_fu_1050_p1;
wire   [7:0] zext_ln47_4_fu_1112_p1;
wire   [7:0] zext_ln47_5_fu_1217_p1;
wire   [7:0] zext_ln47_6_fu_1279_p1;
wire   [7:0] zext_ln47_7_fu_1362_p1;
wire   [14:0] add_ln40_fu_462_p2;
wire   [14:0] zext_ln30_1_fu_473_p1;
wire   [14:0] add_ln39_fu_476_p2;
wire   [14:0] add_ln41_fu_486_p2;
wire   [31:0] select_ln39_fu_516_p3;
wire   [31:0] select_ln39_1_fu_538_p3;
wire   [14:0] add_ln40_2_fu_551_p2;
wire   [14:0] add_ln40_4_fu_564_p2;
wire   [0:0] icmp_ln43_fu_594_p2;
wire   [31:0] select_ln43_fu_599_p3;
wire   [0:0] icmp_ln43_1_fu_606_p2;
wire   [14:0] add_ln40_6_fu_621_p2;
wire   [14:0] add_ln40_8_fu_634_p2;
wire   [14:0] add_ln45_fu_664_p2;
wire   [0:0] icmp_ln46_fu_673_p2;
wire   [0:0] icmp_ln48_fu_677_p2;
wire   [0:0] empty_16_fu_690_p2;
wire   [6:0] select_ln48_fu_682_p3;
wire   [6:0] storemerge8_fu_696_p3;
wire   [31:0] select_ln39_2_fu_724_p3;
wire   [14:0] zext_ln30_11_fu_749_p1;
wire   [14:0] add_ln40_10_fu_752_p2;
wire   [14:0] zext_ln30_13_fu_767_p1;
wire   [14:0] add_ln40_12_fu_770_p2;
wire   [7:0] add_ln29_6_fu_785_p2;
wire   [14:0] zext_ln30_14_fu_790_p1;
wire   [31:0] select_ln43_2_fu_804_p3;
wire   [0:0] icmp_ln43_3_fu_810_p2;
wire   [31:0] select_ln39_3_fu_839_p3;
wire   [0:0] empty_17_fu_868_p2;
wire   [6:0] select_ln48_1_fu_861_p3;
wire   [6:0] storemerge10_fu_872_p3;
wire   [0:0] icmp_ln43_4_fu_885_p2;
wire   [31:0] select_ln43_4_fu_890_p3;
wire   [0:0] icmp_ln43_5_fu_897_p2;
wire   [0:0] icmp_ln46_2_fu_914_p2;
wire   [0:0] icmp_ln48_2_fu_918_p2;
wire   [0:0] empty_18_fu_931_p2;
wire   [6:0] select_ln48_2_fu_923_p3;
wire   [6:0] storemerge12_fu_937_p3;
wire   [0:0] icmp_ln43_6_fu_955_p2;
wire   [31:0] select_ln39_4_fu_969_p3;
wire   [0:0] icmp_ln43_7_fu_982_p2;
wire   [31:0] select_ln39_5_fu_1019_p3;
wire   [0:0] empty_19_fu_1038_p2;
wire   [6:0] select_ln48_3_fu_1031_p3;
wire   [6:0] storemerge14_fu_1042_p3;
wire   [0:0] icmp_ln43_8_fu_1055_p2;
wire   [31:0] select_ln43_8_fu_1059_p3;
wire   [0:0] icmp_ln43_9_fu_1065_p2;
wire   [0:0] icmp_ln46_4_fu_1082_p2;
wire   [0:0] icmp_ln48_4_fu_1086_p2;
wire   [0:0] empty_20_fu_1098_p2;
wire   [6:0] select_ln48_4_fu_1090_p3;
wire   [6:0] storemerge16_fu_1104_p3;
wire   [0:0] icmp_ln43_10_fu_1122_p2;
wire   [31:0] select_ln39_6_fu_1136_p3;
wire   [0:0] icmp_ln43_11_fu_1149_p2;
wire   [31:0] select_ln39_7_fu_1186_p3;
wire   [0:0] empty_21_fu_1205_p2;
wire   [6:0] select_ln48_5_fu_1198_p3;
wire   [6:0] storemerge18_fu_1209_p3;
wire   [0:0] icmp_ln43_12_fu_1222_p2;
wire   [31:0] select_ln43_12_fu_1226_p3;
wire   [0:0] icmp_ln43_13_fu_1232_p2;
wire   [0:0] icmp_ln46_6_fu_1249_p2;
wire   [0:0] icmp_ln48_6_fu_1253_p2;
wire   [0:0] empty_22_fu_1265_p2;
wire   [6:0] select_ln48_6_fu_1257_p3;
wire   [6:0] storemerge20_fu_1271_p3;
wire   [0:0] icmp_ln43_14_fu_1294_p2;
wire   [0:0] icmp_ln43_15_fu_1318_p2;
wire   [0:0] empty_23_fu_1350_p2;
wire   [6:0] select_ln48_7_fu_1343_p3;
wire   [6:0] storemerge22_fu_1354_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [13:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_idx_2_fu_68 = 8'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage13_subdone) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_fu_68 <= 8'd1;
    end else if (((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        a_idx_2_fu_68 <= add_ln29_7_fu_1308_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_399 <= M_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_399 <= M_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        M_load_6_reg_1654 <= M_q0;
        icmp_ln30_6_reg_1675 <= grp_fu_385_p2;
        icmp_ln30_7_reg_1690 <= grp_fu_390_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_load_8_reg_1734 <= M_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        M_load_9_reg_1753 <= M_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_reg_1405 <= ap_sig_allocacmp_a_idx;
        add_ln30_reg_1430 <= add_ln30_fu_451_p2;
        icmp_ln29_reg_1411 <= icmp_ln29_fu_432_p2;
        icmp_ln46_7_reg_1901 <= icmp_ln46_7_fu_1333_p2;
        icmp_ln48_7_reg_1907 <= icmp_ln48_7_fu_1338_p2;
        trunc_ln29_reg_1420 <= trunc_ln29_fu_447_p1;
        zext_ln29_1_reg_1415[7 : 0] <= zext_ln29_1_fu_443_p1[7 : 0];
        zext_ln45_7_reg_1896[14 : 0] <= zext_ln45_7_fu_1329_p1[14 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln29_1_reg_1475 <= add_ln29_1_fu_506_p2;
        add_ln29_reg_1465 <= add_ln29_fu_496_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln29_2_reg_1534 <= add_ln29_2_fu_574_p2;
        add_ln29_3_reg_1544 <= add_ln29_3_fu_584_p2;
        left_reg_1496 <= left_fu_529_p2;
        up_left_1_reg_1508 <= up_left_1_fu_545_p2;
        up_left_reg_1490 <= up_left_fu_523_p2;
        zext_ln30_3_reg_1503[6 : 0] <= zext_ln30_3_fu_535_p1[6 : 0];
        zext_ln30_5_reg_1519[6 : 0] <= zext_ln30_5_fu_561_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln29_4_reg_1592 <= add_ln29_4_fu_644_p2;
        add_ln29_5_reg_1602 <= add_ln29_5_fu_654_p2;
        max_reg_1559 <= max_fu_611_p3;
        zext_ln30_7_reg_1567[6 : 0] <= zext_ln30_7_fu_618_p1[6 : 0];
        zext_ln30_9_reg_1577[6 : 0] <= zext_ln30_9_fu_631_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln40_14_reg_1695 <= add_ln40_14_fu_794_p2;
        add_ln45_1_reg_1633 <= add_ln45_1_fu_720_p2;
        add_ln45_2_reg_1644 <= add_ln45_2_fu_737_p2;
        add_ln45_3_reg_1649 <= add_ln45_3_fu_741_p2;
        add_ln45_4_reg_1660 <= add_ln45_4_fu_745_p2;
        add_ln45_5_reg_1670 <= add_ln45_5_fu_762_p2;
        add_ln45_6_reg_1685 <= add_ln45_6_fu_780_p2;
        add_ln45_7_reg_1700 <= add_ln45_7_fu_799_p2;
        icmp_ln43_2_reg_1628 <= icmp_ln43_2_fu_714_p2;
        left_1_reg_1622 <= left_1_fu_709_p2;
        up_left_2_reg_1638 <= up_left_2_fu_731_p2;
        zext_ln45_reg_1617[14 : 0] <= zext_ln45_fu_668_p1[14 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln30_1_reg_1470 <= grp_fu_390_p2;
        icmp_ln30_reg_1450 <= grp_fu_385_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln30_2_reg_1524 <= grp_fu_385_p2;
        icmp_ln30_3_reg_1539 <= grp_fu_390_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln30_4_reg_1582 <= grp_fu_385_p2;
        icmp_ln30_5_reg_1597 <= grp_fu_390_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln46_1_reg_1710 <= icmp_ln46_1_fu_822_p2;
        icmp_ln48_1_reg_1716 <= icmp_ln48_1_fu_827_p2;
        left_2_reg_1721 <= left_2_fu_833_p2;
        max_1_reg_1705 <= max_1_fu_815_p3;
        up_left_3_reg_1728 <= up_left_3_fu_846_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln46_3_reg_1780 <= icmp_ln46_3_fu_997_p2;
        icmp_ln48_3_reg_1786 <= icmp_ln48_3_fu_1002_p2;
        left_4_reg_1798 <= left_4_fu_1013_p2;
        up_4_reg_1791 <= up_4_fu_1008_p2;
        up_left_5_reg_1805 <= up_left_5_fu_1026_p2;
        zext_ln45_3_reg_1775[14 : 0] <= zext_ln45_3_fu_993_p1[14 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        icmp_ln46_5_reg_1841 <= icmp_ln46_5_fu_1164_p2;
        icmp_ln48_5_reg_1847 <= icmp_ln48_5_fu_1169_p2;
        left_6_reg_1859 <= left_6_fu_1180_p2;
        up_6_reg_1852 <= up_6_fu_1175_p2;
        up_left_7_reg_1866 <= up_left_7_fu_1193_p2;
        zext_ln45_5_reg_1836[14 : 0] <= zext_ln45_5_fu_1160_p1[14 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        left_3_reg_1758 <= left_3_fu_950_p2;
        select_ln43_6_reg_1763 <= select_ln43_6_fu_961_p3;
        up_left_4_reg_1769 <= up_left_4_fu_976_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        left_5_reg_1819 <= left_5_fu_1117_p2;
        select_ln43_10_reg_1824 <= select_ln43_10_fu_1128_p3;
        up_left_6_reg_1830 <= up_left_6_fu_1143_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        left_7_reg_1885 <= left_7_fu_1289_p2;
        select_ln43_14_reg_1890 <= select_ln43_14_fu_1300_p3;
        up_7_reg_1880 <= up_7_fu_1284_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        max_2_reg_1745 <= max_2_fu_902_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        max_4_reg_1811 <= max_4_fu_1070_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        max_6_reg_1872 <= max_6_fu_1237_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_395 <= M_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_416 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_420 <= grp_fu_410_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_address0_local = zext_ln45_7_fu_1329_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        M_address0_local = zext_ln45_5_fu_1160_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        M_address0_local = zext_ln45_3_fu_993_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        M_address0_local = zext_ln45_1_fu_856_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_address0_local = zext_ln45_reg_1617;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        M_address0_local = zext_ln40_6_fu_775_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_address0_local = zext_ln40_4_fu_639_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_address0_local = zext_ln40_2_fu_569_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_address0_local = zext_ln41_fu_491_p1;
    end else begin
        M_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            M_address1_local = zext_ln45_6_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            M_address1_local = zext_ln45_4_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_address1_local = zext_ln45_2_fu_909_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_address1_local = zext_ln40_7_fu_852_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_address1_local = zext_ln40_5_fu_757_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_address1_local = zext_ln40_3_fu_626_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_address1_local = zext_ln40_1_fu_556_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_address1_local = zext_ln39_fu_481_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_address1_local = zext_ln40_fu_468_p1;
        end else begin
            M_address1_local = 'bx;
        end
    end else begin
        M_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_ce0_local = 1'b1;
    end else begin
        M_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_ce1_local = 1'b1;
    end else begin
        M_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_d0_local = max_7_fu_1322_p3;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        M_d0_local = max_5_fu_1153_p3;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        M_d0_local = max_3_fu_986_p3;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        M_d0_local = max_1_reg_1705;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_d0_local = max_reg_1559;
    end else begin
        M_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            M_d1_local = max_6_reg_1872;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            M_d1_local = max_4_reg_1811;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_d1_local = max_2_reg_1745;
        end else begin
            M_d1_local = 'bx;
        end
    end else begin
        M_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_we0_local = 1'b1;
    end else begin
        M_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        M_we1_local = 1'b1;
    end else begin
        M_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            SEQA_address0_local = zext_ln30_12_fu_659_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            SEQA_address0_local = zext_ln30_8_fu_589_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            SEQA_address0_local = zext_ln30_4_fu_511_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            SEQA_address0_local = zext_ln29_fu_438_p1;
        end else begin
            SEQA_address0_local = 'bx;
        end
    end else begin
        SEQA_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            SEQA_address1_local = zext_ln30_10_fu_649_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            SEQA_address1_local = zext_ln30_6_fu_579_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            SEQA_address1_local = zext_ln30_2_fu_501_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            SEQA_address1_local = zext_ln30_fu_457_p1;
        end else begin
            SEQA_address1_local = 'bx;
        end
    end else begin
        SEQA_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        SEQA_ce0_local = 1'b1;
    end else begin
        SEQA_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        SEQA_ce1_local = 1'b1;
    end else begin
        SEQA_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_1411 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage13_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_a_idx = 8'd1;
    end else begin
        ap_sig_allocacmp_a_idx = a_idx_2_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_address0_local = zext_ln45_7_reg_1896;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ptr_address0_local = zext_ln45_6_fu_1244_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ptr_address0_local = zext_ln45_5_reg_1836;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_address0_local = zext_ln45_4_fu_1077_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ptr_address0_local = zext_ln45_3_reg_1775;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ptr_address0_local = zext_ln45_2_fu_909_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_address0_local = zext_ln45_1_fu_856_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ptr_address0_local = zext_ln45_fu_668_p1;
    end else begin
        ptr_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_ce0_local = 1'b1;
    end else begin
        ptr_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_d0_local = zext_ln47_7_fu_1362_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ptr_d0_local = zext_ln47_6_fu_1279_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ptr_d0_local = zext_ln47_5_fu_1217_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_d0_local = zext_ln47_4_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ptr_d0_local = zext_ln47_3_fu_1050_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ptr_d0_local = zext_ln47_2_fu_945_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_d0_local = zext_ln47_1_fu_880_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ptr_d0_local = zext_ln47_fu_704_p1;
    end else begin
        ptr_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln29_reg_1411 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) &(ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_we0_local = 1'b1;
    end else begin
        ptr_we0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_address0 = M_address0_local;
assign M_address1 = M_address1_local;
assign M_ce0 = M_ce0_local;
assign M_ce1 = M_ce1_local;
assign M_d0 = M_d0_local;
assign M_d1 = M_d1_local;
assign M_we0 = M_we0_local;
assign M_we1 = M_we1_local;
assign SEQA_address0 = SEQA_address0_local;
assign SEQA_address1 = SEQA_address1_local;
assign SEQA_ce0 = SEQA_ce0_local;
assign SEQA_ce1 = SEQA_ce1_local;
assign add_ln29_1_fu_506_p2 = (trunc_ln29_reg_1420 + 7'd2);
assign add_ln29_2_fu_574_p2 = (trunc_ln29_reg_1420 + 7'd3);
assign add_ln29_3_fu_584_p2 = (trunc_ln29_reg_1420 + 7'd4);
assign add_ln29_4_fu_644_p2 = (trunc_ln29_reg_1420 + 7'd5);
assign add_ln29_5_fu_654_p2 = (trunc_ln29_reg_1420 + 7'd6);
assign add_ln29_6_fu_785_p2 = (a_idx_reg_1405 + 8'd7);
assign add_ln29_7_fu_1308_p2 = (a_idx_reg_1405 + 8'd8);
assign add_ln29_fu_496_p2 = (trunc_ln29_reg_1420 + 7'd1);
assign add_ln30_fu_451_p2 = ($signed(trunc_ln29_fu_447_p1) + $signed(7'd127));
assign add_ln39_fu_476_p2 = (zext_ln30_1_fu_473_p1 + empty);
assign add_ln40_10_fu_752_p2 = (zext_ln30_11_fu_749_p1 + empty);
assign add_ln40_12_fu_770_p2 = (zext_ln30_13_fu_767_p1 + empty);
assign add_ln40_14_fu_794_p2 = (zext_ln30_14_fu_790_p1 + empty);
assign add_ln40_2_fu_551_p2 = (zext_ln30_3_fu_535_p1 + empty);
assign add_ln40_4_fu_564_p2 = (zext_ln30_5_fu_561_p1 + empty);
assign add_ln40_6_fu_621_p2 = (zext_ln30_7_fu_618_p1 + empty);
assign add_ln40_8_fu_634_p2 = (zext_ln30_9_fu_631_p1 + empty);
assign add_ln40_fu_462_p2 = (zext_ln29_1_fu_443_p1 + empty);
assign add_ln41_fu_486_p2 = (zext_ln30_1_fu_473_p1 + mul_ln29);
assign add_ln45_1_fu_720_p2 = (zext_ln30_3_reg_1503 + mul_ln29);
assign add_ln45_2_fu_737_p2 = (zext_ln30_5_reg_1519 + mul_ln29);
assign add_ln45_3_fu_741_p2 = (zext_ln30_7_reg_1567 + mul_ln29);
assign add_ln45_4_fu_745_p2 = (zext_ln30_9_reg_1577 + mul_ln29);
assign add_ln45_5_fu_762_p2 = (zext_ln30_11_fu_749_p1 + mul_ln29);
assign add_ln45_6_fu_780_p2 = (zext_ln30_13_fu_767_p1 + mul_ln29);
assign add_ln45_7_fu_799_p2 = (zext_ln30_14_fu_790_p1 + mul_ln29);
assign add_ln45_fu_664_p2 = (zext_ln29_1_reg_1415 + mul_ln29);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
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
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign empty_16_fu_690_p2 = (icmp_ln48_fu_677_p2 | icmp_ln46_fu_673_p2);
assign empty_17_fu_868_p2 = (icmp_ln48_1_reg_1716 | icmp_ln46_1_reg_1710);
assign empty_18_fu_931_p2 = (icmp_ln48_2_fu_918_p2 | icmp_ln46_2_fu_914_p2);
assign empty_19_fu_1038_p2 = (icmp_ln48_3_reg_1786 | icmp_ln46_3_reg_1780);
assign empty_20_fu_1098_p2 = (icmp_ln48_4_fu_1086_p2 | icmp_ln46_4_fu_1082_p2);
assign empty_21_fu_1205_p2 = (icmp_ln48_5_reg_1847 | icmp_ln46_5_reg_1841);
assign empty_22_fu_1265_p2 = (icmp_ln48_6_fu_1253_p2 | icmp_ln46_6_fu_1249_p2);
assign empty_23_fu_1350_p2 = (icmp_ln48_7_reg_1907 | icmp_ln46_7_reg_1901);
assign grp_fu_385_p2 = ((SEQA_q1 == SEQB_load) ? 1'b1 : 1'b0);
assign grp_fu_390_p2 = ((SEQA_q0 == SEQB_load) ? 1'b1 : 1'b0);
assign grp_fu_404_p2 = ($signed(reg_395) + $signed(32'd4294967295));
assign grp_fu_410_p2 = ($signed(reg_399) + $signed(32'd4294967295));
assign icmp_ln29_fu_432_p2 = ((ap_sig_allocacmp_a_idx < 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln43_10_fu_1122_p2 = (($signed(grp_fu_410_p2) > $signed(left_5_fu_1117_p2)) ? 1'b1 : 1'b0);
assign icmp_ln43_11_fu_1149_p2 = (($signed(up_left_5_reg_1805) > $signed(select_ln43_10_reg_1824)) ? 1'b1 : 1'b0);
assign icmp_ln43_12_fu_1222_p2 = (($signed(up_6_reg_1852) > $signed(left_6_reg_1859)) ? 1'b1 : 1'b0);
assign icmp_ln43_13_fu_1232_p2 = (($signed(up_left_6_reg_1830) > $signed(select_ln43_12_fu_1226_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_14_fu_1294_p2 = (($signed(up_7_fu_1284_p2) > $signed(left_7_fu_1289_p2)) ? 1'b1 : 1'b0);
assign icmp_ln43_15_fu_1318_p2 = (($signed(up_left_7_reg_1866) > $signed(select_ln43_14_reg_1890)) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_606_p2 = (($signed(up_left_reg_1490) > $signed(select_ln43_fu_599_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_2_fu_714_p2 = (($signed(grp_fu_404_p2) > $signed(left_1_fu_709_p2)) ? 1'b1 : 1'b0);
assign icmp_ln43_3_fu_810_p2 = (($signed(up_left_1_reg_1508) > $signed(select_ln43_2_fu_804_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_4_fu_885_p2 = (($signed(reg_420) > $signed(left_2_reg_1721)) ? 1'b1 : 1'b0);
assign icmp_ln43_5_fu_897_p2 = (($signed(up_left_2_reg_1638) > $signed(select_ln43_4_fu_890_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_6_fu_955_p2 = (($signed(grp_fu_404_p2) > $signed(left_3_fu_950_p2)) ? 1'b1 : 1'b0);
assign icmp_ln43_7_fu_982_p2 = (($signed(up_left_3_reg_1728) > $signed(select_ln43_6_reg_1763)) ? 1'b1 : 1'b0);
assign icmp_ln43_8_fu_1055_p2 = (($signed(up_4_reg_1791) > $signed(left_4_reg_1798)) ? 1'b1 : 1'b0);
assign icmp_ln43_9_fu_1065_p2 = (($signed(up_left_4_reg_1769) > $signed(select_ln43_8_fu_1059_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_594_p2 = (($signed(reg_416) > $signed(left_reg_1496)) ? 1'b1 : 1'b0);
assign icmp_ln46_1_fu_822_p2 = ((max_1_fu_815_p3 == left_1_reg_1622) ? 1'b1 : 1'b0);
assign icmp_ln46_2_fu_914_p2 = ((max_2_reg_1745 == left_2_reg_1721) ? 1'b1 : 1'b0);
assign icmp_ln46_3_fu_997_p2 = ((max_3_fu_986_p3 == left_3_reg_1758) ? 1'b1 : 1'b0);
assign icmp_ln46_4_fu_1082_p2 = ((max_4_reg_1811 == left_4_reg_1798) ? 1'b1 : 1'b0);
assign icmp_ln46_5_fu_1164_p2 = ((max_5_fu_1153_p3 == left_5_reg_1819) ? 1'b1 : 1'b0);
assign icmp_ln46_6_fu_1249_p2 = ((max_6_reg_1872 == left_6_reg_1859) ? 1'b1 : 1'b0);
assign icmp_ln46_7_fu_1333_p2 = ((max_7_fu_1322_p3 == left_7_reg_1885) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_673_p2 = ((max_reg_1559 == left_reg_1496) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_827_p2 = ((max_1_fu_815_p3 == reg_416) ? 1'b1 : 1'b0);
assign icmp_ln48_2_fu_918_p2 = ((max_2_reg_1745 == reg_420) ? 1'b1 : 1'b0);
assign icmp_ln48_3_fu_1002_p2 = ((max_3_fu_986_p3 == reg_416) ? 1'b1 : 1'b0);
assign icmp_ln48_4_fu_1086_p2 = ((max_4_reg_1811 == up_4_reg_1791) ? 1'b1 : 1'b0);
assign icmp_ln48_5_fu_1169_p2 = ((max_5_fu_1153_p3 == reg_420) ? 1'b1 : 1'b0);
assign icmp_ln48_6_fu_1253_p2 = ((max_6_reg_1872 == up_6_reg_1852) ? 1'b1 : 1'b0);
assign icmp_ln48_7_fu_1338_p2 = ((max_7_fu_1322_p3 == up_7_reg_1880) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_677_p2 = ((max_reg_1559 == reg_416) ? 1'b1 : 1'b0);
assign left_1_fu_709_p2 = ($signed(max_reg_1559) + $signed(32'd4294967295));
assign left_2_fu_833_p2 = ($signed(max_1_fu_815_p3) + $signed(32'd4294967295));
assign left_3_fu_950_p2 = ($signed(max_2_reg_1745) + $signed(32'd4294967295));
assign left_4_fu_1013_p2 = ($signed(max_3_fu_986_p3) + $signed(32'd4294967295));
assign left_5_fu_1117_p2 = ($signed(max_4_reg_1811) + $signed(32'd4294967295));
assign left_6_fu_1180_p2 = ($signed(max_5_fu_1153_p3) + $signed(32'd4294967295));
assign left_7_fu_1289_p2 = ($signed(max_6_reg_1872) + $signed(32'd4294967295));
assign left_fu_529_p2 = ($signed(M_q0) + $signed(32'd4294967295));
assign max_1_fu_815_p3 = ((icmp_ln43_3_fu_810_p2[0:0] == 1'b1) ? up_left_1_reg_1508 : select_ln43_2_fu_804_p3);
assign max_2_fu_902_p3 = ((icmp_ln43_5_fu_897_p2[0:0] == 1'b1) ? up_left_2_reg_1638 : select_ln43_4_fu_890_p3);
assign max_3_fu_986_p3 = ((icmp_ln43_7_fu_982_p2[0:0] == 1'b1) ? up_left_3_reg_1728 : select_ln43_6_reg_1763);
assign max_4_fu_1070_p3 = ((icmp_ln43_9_fu_1065_p2[0:0] == 1'b1) ? up_left_4_reg_1769 : select_ln43_8_fu_1059_p3);
assign max_5_fu_1153_p3 = ((icmp_ln43_11_fu_1149_p2[0:0] == 1'b1) ? up_left_5_reg_1805 : select_ln43_10_reg_1824);
assign max_6_fu_1237_p3 = ((icmp_ln43_13_fu_1232_p2[0:0] == 1'b1) ? up_left_6_reg_1830 : select_ln43_12_fu_1226_p3);
assign max_7_fu_1322_p3 = ((icmp_ln43_15_fu_1318_p2[0:0] == 1'b1) ? up_left_7_reg_1866 : select_ln43_14_reg_1890);
assign max_fu_611_p3 = ((icmp_ln43_1_fu_606_p2[0:0] == 1'b1) ? up_left_reg_1490 : select_ln43_fu_599_p3);
assign ptr_address0 = ptr_address0_local;
assign ptr_ce0 = ptr_ce0_local;
assign ptr_d0 = ptr_d0_local;
assign ptr_we0 = ptr_we0_local;
assign select_ln39_1_fu_538_p3 = ((icmp_ln30_1_reg_1470[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_2_fu_724_p3 = ((icmp_ln30_2_reg_1524[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_3_fu_839_p3 = ((icmp_ln30_3_reg_1539[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_4_fu_969_p3 = ((icmp_ln30_4_reg_1582[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_5_fu_1019_p3 = ((icmp_ln30_5_reg_1597[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_6_fu_1136_p3 = ((icmp_ln30_6_reg_1675[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_7_fu_1186_p3 = ((icmp_ln30_7_reg_1690[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_fu_516_p3 = ((icmp_ln30_reg_1450[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln43_10_fu_1128_p3 = ((icmp_ln43_10_fu_1122_p2[0:0] == 1'b1) ? grp_fu_410_p2 : left_5_fu_1117_p2);
assign select_ln43_12_fu_1226_p3 = ((icmp_ln43_12_fu_1222_p2[0:0] == 1'b1) ? up_6_reg_1852 : left_6_reg_1859);
assign select_ln43_14_fu_1300_p3 = ((icmp_ln43_14_fu_1294_p2[0:0] == 1'b1) ? up_7_fu_1284_p2 : left_7_fu_1289_p2);
assign select_ln43_2_fu_804_p3 = ((icmp_ln43_2_reg_1628[0:0] == 1'b1) ? reg_416 : left_1_reg_1622);
assign select_ln43_4_fu_890_p3 = ((icmp_ln43_4_fu_885_p2[0:0] == 1'b1) ? reg_420 : left_2_reg_1721);
assign select_ln43_6_fu_961_p3 = ((icmp_ln43_6_fu_955_p2[0:0] == 1'b1) ? grp_fu_404_p2 : left_3_fu_950_p2);
assign select_ln43_8_fu_1059_p3 = ((icmp_ln43_8_fu_1055_p2[0:0] == 1'b1) ? up_4_reg_1791 : left_4_reg_1798);
assign select_ln43_fu_599_p3 = ((icmp_ln43_fu_594_p2[0:0] == 1'b1) ? reg_416 : left_reg_1496);
assign select_ln48_1_fu_861_p3 = ((icmp_ln46_1_reg_1710[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign select_ln48_2_fu_923_p3 = ((icmp_ln46_2_fu_914_p2[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign select_ln48_3_fu_1031_p3 = ((icmp_ln46_3_reg_1780[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign select_ln48_4_fu_1090_p3 = ((icmp_ln46_4_fu_1082_p2[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign select_ln48_5_fu_1198_p3 = ((icmp_ln46_5_reg_1841[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign select_ln48_6_fu_1257_p3 = ((icmp_ln46_6_fu_1249_p2[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign select_ln48_7_fu_1343_p3 = ((icmp_ln46_7_reg_1901[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign select_ln48_fu_682_p3 = ((icmp_ln46_fu_673_p2[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign storemerge10_fu_872_p3 = ((empty_17_fu_868_p2[0:0] == 1'b1) ? select_ln48_1_fu_861_p3 : 7'd92);
assign storemerge12_fu_937_p3 = ((empty_18_fu_931_p2[0:0] == 1'b1) ? select_ln48_2_fu_923_p3 : 7'd92);
assign storemerge14_fu_1042_p3 = ((empty_19_fu_1038_p2[0:0] == 1'b1) ? select_ln48_3_fu_1031_p3 : 7'd92);
assign storemerge16_fu_1104_p3 = ((empty_20_fu_1098_p2[0:0] == 1'b1) ? select_ln48_4_fu_1090_p3 : 7'd92);
assign storemerge18_fu_1209_p3 = ((empty_21_fu_1205_p2[0:0] == 1'b1) ? select_ln48_5_fu_1198_p3 : 7'd92);
assign storemerge20_fu_1271_p3 = ((empty_22_fu_1265_p2[0:0] == 1'b1) ? select_ln48_6_fu_1257_p3 : 7'd92);
assign storemerge22_fu_1354_p3 = ((empty_23_fu_1350_p2[0:0] == 1'b1) ? select_ln48_7_fu_1343_p3 : 7'd92);
assign storemerge8_fu_696_p3 = ((empty_16_fu_690_p2[0:0] == 1'b1) ? select_ln48_fu_682_p3 : 7'd92);
assign trunc_ln29_fu_447_p1 = ap_sig_allocacmp_a_idx[6:0];
assign up_4_fu_1008_p2 = ($signed(M_load_6_reg_1654) + $signed(32'd4294967295));
assign up_6_fu_1175_p2 = ($signed(M_load_8_reg_1734) + $signed(32'd4294967295));
assign up_7_fu_1284_p2 = ($signed(M_load_9_reg_1753) + $signed(32'd4294967295));
assign up_left_1_fu_545_p2 = (reg_395 + select_ln39_1_fu_538_p3);
assign up_left_2_fu_731_p2 = (reg_395 + select_ln39_2_fu_724_p3);
assign up_left_3_fu_846_p2 = (reg_399 + select_ln39_3_fu_839_p3);
assign up_left_4_fu_976_p2 = (reg_395 + select_ln39_4_fu_969_p3);
assign up_left_5_fu_1026_p2 = (M_load_6_reg_1654 + select_ln39_5_fu_1019_p3);
assign up_left_6_fu_1143_p2 = (reg_399 + select_ln39_6_fu_1136_p3);
assign up_left_7_fu_1193_p2 = (M_load_8_reg_1734 + select_ln39_7_fu_1186_p3);
assign up_left_fu_523_p2 = (M_q1 + select_ln39_fu_516_p3);
assign zext_ln29_1_fu_443_p1 = ap_sig_allocacmp_a_idx;
assign zext_ln29_fu_438_p1 = ap_sig_allocacmp_a_idx;
assign zext_ln30_10_fu_649_p1 = add_ln29_4_fu_644_p2;
assign zext_ln30_11_fu_749_p1 = add_ln29_4_reg_1592;
assign zext_ln30_12_fu_659_p1 = add_ln29_5_fu_654_p2;
assign zext_ln30_13_fu_767_p1 = add_ln29_5_reg_1602;
assign zext_ln30_14_fu_790_p1 = add_ln29_6_fu_785_p2;
assign zext_ln30_1_fu_473_p1 = add_ln30_reg_1430;
assign zext_ln30_2_fu_501_p1 = add_ln29_fu_496_p2;
assign zext_ln30_3_fu_535_p1 = add_ln29_reg_1465;
assign zext_ln30_4_fu_511_p1 = add_ln29_1_fu_506_p2;
assign zext_ln30_5_fu_561_p1 = add_ln29_1_reg_1475;
assign zext_ln30_6_fu_579_p1 = add_ln29_2_fu_574_p2;
assign zext_ln30_7_fu_618_p1 = add_ln29_2_reg_1534;
assign zext_ln30_8_fu_589_p1 = add_ln29_3_fu_584_p2;
assign zext_ln30_9_fu_631_p1 = add_ln29_3_reg_1544;
assign zext_ln30_fu_457_p1 = add_ln30_fu_451_p2;
assign zext_ln39_fu_481_p1 = add_ln39_fu_476_p2;
assign zext_ln40_1_fu_556_p1 = add_ln40_2_fu_551_p2;
assign zext_ln40_2_fu_569_p1 = add_ln40_4_fu_564_p2;
assign zext_ln40_3_fu_626_p1 = add_ln40_6_fu_621_p2;
assign zext_ln40_4_fu_639_p1 = add_ln40_8_fu_634_p2;
assign zext_ln40_5_fu_757_p1 = add_ln40_10_fu_752_p2;
assign zext_ln40_6_fu_775_p1 = add_ln40_12_fu_770_p2;
assign zext_ln40_7_fu_852_p1 = add_ln40_14_reg_1695;
assign zext_ln40_fu_468_p1 = add_ln40_fu_462_p2;
assign zext_ln41_fu_491_p1 = add_ln41_fu_486_p2;
assign zext_ln45_1_fu_856_p1 = add_ln45_1_reg_1633;
assign zext_ln45_2_fu_909_p1 = add_ln45_2_reg_1644;
assign zext_ln45_3_fu_993_p1 = add_ln45_3_reg_1649;
assign zext_ln45_4_fu_1077_p1 = add_ln45_4_reg_1660;
assign zext_ln45_5_fu_1160_p1 = add_ln45_5_reg_1670;
assign zext_ln45_6_fu_1244_p1 = add_ln45_6_reg_1685;
assign zext_ln45_7_fu_1329_p1 = add_ln45_7_reg_1700;
assign zext_ln45_fu_668_p1 = add_ln45_fu_664_p2;
assign zext_ln47_1_fu_880_p1 = storemerge10_fu_872_p3;
assign zext_ln47_2_fu_945_p1 = storemerge12_fu_937_p3;
assign zext_ln47_3_fu_1050_p1 = storemerge14_fu_1042_p3;
assign zext_ln47_4_fu_1112_p1 = storemerge16_fu_1104_p3;
assign zext_ln47_5_fu_1217_p1 = storemerge18_fu_1209_p3;
assign zext_ln47_6_fu_1279_p1 = storemerge20_fu_1271_p3;
assign zext_ln47_7_fu_1362_p1 = storemerge22_fu_1354_p3;
assign zext_ln47_fu_704_p1 = storemerge8_fu_696_p3;
always @ (posedge ap_clk) begin
    zext_ln29_1_reg_1415[14:8] <= 7'b0000000;
    zext_ln30_3_reg_1503[14:7] <= 8'b00000000;
    zext_ln30_5_reg_1519[14:7] <= 8'b00000000;
    zext_ln30_7_reg_1567[14:7] <= 8'b00000000;
    zext_ln30_9_reg_1577[14:7] <= 8'b00000000;
    zext_ln45_reg_1617[63:15] <= 49'b0000000000000000000000000000000000000000000000000;
    zext_ln45_3_reg_1775[63:15] <= 49'b0000000000000000000000000000000000000000000000000;
    zext_ln45_5_reg_1836[63:15] <= 49'b0000000000000000000000000000000000000000000000000;
    zext_ln45_7_reg_1896[63:15] <= 49'b0000000000000000000000000000000000000000000000000;
end
endmodule 
