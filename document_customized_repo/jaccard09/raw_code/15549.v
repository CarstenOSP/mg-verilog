module ss_sort_update (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_q0,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_q0,b_0_address0,b_0_ce0,b_0_q0,b_0_address1,b_0_ce1,b_0_q1,b_1_address0,b_1_ce0,b_1_q0,b_1_address1,b_1_ce1,b_1_q1,b_2_address0,b_2_ce0,b_2_q0,b_2_address1,b_2_ce1,b_2_q1,b_3_address0,b_3_ce0,b_3_q0,b_3_address1,b_3_ce1,b_3_q1,exp); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
output  [8:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
output  [8:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
output  [8:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
output  [8:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [8:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [8:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
input  [31:0] bucket_2_q0;
output  [8:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
input  [31:0] bucket_3_q0;
output  [8:0] b_0_address0;
output   b_0_ce0;
input  [31:0] b_0_q0;
output  [8:0] b_0_address1;
output   b_0_ce1;
input  [31:0] b_0_q1;
output  [8:0] b_1_address0;
output   b_1_ce0;
input  [31:0] b_1_q0;
output  [8:0] b_1_address1;
output   b_1_ce1;
input  [31:0] b_1_q1;
output  [8:0] b_2_address0;
output   b_2_ce0;
input  [31:0] b_2_q0;
output  [8:0] b_2_address1;
output   b_2_ce1;
input  [31:0] b_2_q1;
output  [8:0] b_3_address0;
output   b_3_ce0;
input  [31:0] b_3_q0;
output  [8:0] b_3_address1;
output   b_3_ce1;
input  [31:0] b_3_q1;
input  [4:0] exp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] tmp_reg_1310;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [31:0] reg_624;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_628;
reg   [31:0] reg_632;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_636;
wire   [31:0] exp_cast12_fu_665_p1;
reg   [31:0] exp_cast12_reg_1290;
reg   [9:0] blockID_1_reg_1302;
reg   [31:0] b_0_load_reg_1354;
reg   [31:0] b_1_load_reg_1363;
reg   [31:0] b_2_load_reg_1372;
reg   [31:0] b_3_load_reg_1381;
reg   [31:0] b_3_load_reg_1381_pp0_iter1_reg;
reg   [31:0] b_0_load_1_reg_1390;
reg   [31:0] b_0_load_1_reg_1390_pp0_iter1_reg;
reg   [31:0] b_1_load_1_reg_1399;
reg   [31:0] b_1_load_1_reg_1399_pp0_iter1_reg;
reg   [31:0] b_2_load_1_reg_1408;
reg   [31:0] b_2_load_1_reg_1408_pp0_iter1_reg;
reg   [31:0] b_3_load_1_reg_1417;
reg   [31:0] b_3_load_1_reg_1417_pp0_iter1_reg;
wire   [1:0] trunc_ln70_fu_723_p1;
reg   [1:0] trunc_ln70_reg_1426;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [10:0] zext_ln68_1_fu_727_p1;
reg   [10:0] zext_ln68_1_reg_1431;
reg   [8:0] bucket_0_addr_reg_1438;
reg   [8:0] bucket_2_addr_reg_1443;
wire   [0:0] icmp_ln72_8_fu_763_p2;
reg   [0:0] icmp_ln72_8_reg_1448;
wire   [0:0] icmp_ln73_fu_769_p2;
reg   [0:0] icmp_ln73_reg_1453;
wire   [1:0] trunc_ln70_1_fu_779_p1;
reg   [1:0] trunc_ln70_1_reg_1457;
wire   [1:0] trunc_ln72_1_fu_790_p1;
reg   [1:0] trunc_ln72_1_reg_1462;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [8:0] lshr_ln72_1_reg_1466;
wire   [31:0] add_ln73_fu_804_p2;
reg   [31:0] add_ln73_reg_1471;
wire   [1:0] trunc_ln70_4_fu_814_p1;
reg   [1:0] trunc_ln70_4_reg_1477;
wire   [1:0] trunc_ln70_2_fu_822_p1;
reg   [1:0] trunc_ln70_2_reg_1482;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [6:0] tmp_5_fu_826_p4;
reg   [6:0] tmp_5_reg_1487;
reg   [8:0] bucket_1_addr_reg_1494;
reg   [8:0] bucket_3_addr_reg_1499;
reg   [8:0] bucket_0_addr_1_reg_1504;
wire    ap_block_pp0_stage6_11001;
reg   [8:0] bucket_2_addr_1_reg_1509;
wire   [0:0] icmp_ln72_9_fu_883_p2;
reg   [0:0] icmp_ln72_9_reg_1514;
wire   [0:0] icmp_ln73_1_fu_889_p2;
reg   [0:0] icmp_ln73_1_reg_1519;
wire   [0:0] icmp_ln72_12_fu_895_p2;
reg   [0:0] icmp_ln72_12_reg_1523;
wire   [1:0] trunc_ln72_8_fu_909_p1;
reg   [1:0] trunc_ln72_8_reg_1529;
reg   [8:0] lshr_ln72_9_reg_1533;
wire   [31:0] add_ln73_4_fu_923_p2;
reg   [31:0] add_ln73_4_reg_1538;
wire   [0:0] icmp_ln73_4_fu_929_p2;
reg   [0:0] icmp_ln73_4_reg_1544;
wire   [1:0] trunc_ln70_5_fu_939_p1;
reg   [1:0] trunc_ln70_5_reg_1548;
wire   [1:0] trunc_ln70_3_fu_964_p1;
reg   [1:0] trunc_ln70_3_reg_1553;
reg   [8:0] bucket_1_addr_1_reg_1561;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [8:0] bucket_3_addr_1_reg_1566;
wire   [1:0] trunc_ln70_6_fu_1021_p1;
reg   [1:0] trunc_ln70_6_reg_1571;
reg   [8:0] bucket_0_addr_2_reg_1576;
reg   [8:0] bucket_2_addr_2_reg_1581;
wire   [0:0] icmp_ln72_10_fu_1057_p2;
reg   [0:0] icmp_ln72_10_reg_1586;
wire   [0:0] icmp_ln73_2_fu_1063_p2;
reg   [0:0] icmp_ln73_2_reg_1591;
reg   [8:0] lshr_ln72_6_reg_1595;
wire   [0:0] icmp_ln72_11_fu_1095_p2;
reg   [0:0] icmp_ln72_11_reg_1600;
wire   [0:0] icmp_ln73_3_fu_1101_p2;
reg   [0:0] icmp_ln73_3_reg_1605;
wire   [1:0] trunc_ln70_7_fu_1111_p1;
reg   [1:0] trunc_ln70_7_reg_1609;
wire   [1:0] trunc_ln72_9_fu_1122_p1;
reg   [1:0] trunc_ln72_9_reg_1614;
reg   [8:0] lshr_ln72_10_reg_1618;
reg   [8:0] bucket_1_addr_2_reg_1626;
wire    ap_block_pp0_stage11_11001;
reg   [8:0] bucket_3_addr_2_reg_1631;
reg   [8:0] bucket_0_addr_3_reg_1636;
reg   [8:0] bucket_2_addr_3_reg_1641;
wire   [1:0] trunc_ln72_10_fu_1198_p1;
reg   [1:0] trunc_ln72_10_reg_1646;
reg   [8:0] lshr_ln72_12_reg_1650;
reg   [8:0] bucket_1_addr_3_reg_1658;
reg   [8:0] bucket_3_addr_3_reg_1663;
wire   [1:0] trunc_ln72_11_fu_1265_p1;
reg   [1:0] trunc_ln72_11_reg_1668;
reg   [8:0] lshr_ln72_14_reg_1672;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln68_fu_685_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_fu_711_p1;
wire   [63:0] zext_ln72_8_fu_757_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln72_12_fu_842_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln72_9_fu_877_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln72_fu_953_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln72_1_fu_989_p1;
wire    ap_block_pp0_stage8;
wire   [1:0] trunc_ln72_3_fu_975_p1;
wire   [63:0] zext_ln72_13_fu_1011_p1;
wire   [63:0] zext_ln72_10_fu_1051_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln72_2_fu_1165_p1;
wire    ap_block_pp0_stage11;
wire   [1:0] trunc_ln72_5_fu_1151_p1;
wire   [63:0] zext_ln72_14_fu_1187_p1;
wire   [63:0] zext_ln72_11_fu_1193_p1;
wire   [63:0] zext_ln72_3_fu_1223_p1;
wire    ap_block_pp0_stage2;
wire   [1:0] trunc_ln72_7_fu_1209_p1;
wire   [63:0] zext_ln72_15_fu_1245_p1;
wire   [63:0] zext_ln72_4_fu_1251_p1;
wire   [63:0] zext_ln72_5_fu_1258_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln72_6_fu_1269_p1;
wire   [63:0] zext_ln72_7_fu_1276_p1;
reg   [9:0] blockID_fu_90;
wire   [9:0] add_ln68_fu_943_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID_1;
reg    b_0_ce1_local;
reg    b_0_ce0_local;
reg    b_1_ce1_local;
reg    b_1_ce0_local;
reg    b_2_ce1_local;
reg    b_2_ce0_local;
reg    b_3_ce1_local;
reg    b_3_ce0_local;
reg    bucket_0_ce0_local;
reg   [8:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire   [31:0] add_ln73_1_fu_997_p2;
wire   [31:0] add_ln73_2_fu_1173_p2;
wire   [31:0] add_ln73_3_fu_1231_p2;
reg    bucket_2_ce0_local;
reg   [8:0] bucket_2_address0_local;
reg    bucket_2_we0_local;
reg   [31:0] bucket_2_d0_local;
reg    bucket_1_ce0_local;
reg   [8:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
wire   [31:0] add_ln73_5_fu_1136_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] grp_fu_657_p2;
wire    ap_block_pp0_stage1;
reg    bucket_3_ce0_local;
reg   [8:0] bucket_3_address0_local;
reg    bucket_3_we0_local;
reg   [31:0] bucket_3_d0_local;
reg    a_2_we0_local;
reg   [31:0] a_2_d0_local;
reg    a_2_ce0_local;
reg   [8:0] a_2_address0_local;
reg    a_1_we0_local;
reg   [31:0] a_1_d0_local;
reg    a_1_ce0_local;
reg   [8:0] a_1_address0_local;
reg    a_0_we0_local;
reg   [31:0] a_0_d0_local;
reg    a_0_ce0_local;
reg   [8:0] a_0_address0_local;
reg    a_3_we0_local;
reg   [31:0] a_3_d0_local;
reg    a_3_ce0_local;
reg   [8:0] a_3_address0_local;
wire   [31:0] grp_fu_640_p3;
wire   [7:0] tmp_4_fu_693_p4;
wire   [8:0] or_ln_fu_703_p3;
wire   [31:0] ashr_ln70_fu_719_p2;
wire   [10:0] shl_ln_fu_730_p3;
wire   [10:0] add_ln70_fu_737_p2;
wire   [8:0] lshr_ln_fu_747_p4;
wire   [1:0] trunc_ln72_fu_743_p1;
wire   [31:0] ashr_ln70_1_fu_775_p2;
wire   [31:0] select_ln72_fu_783_p3;
wire   [31:0] ashr_ln70_4_fu_810_p2;
wire   [31:0] ashr_ln70_2_fu_818_p2;
wire   [8:0] lshr_ln72_8_fu_835_p3;
wire   [10:0] shl_ln70_1_fu_851_p3;
wire   [10:0] add_ln70_1_fu_858_p2;
wire   [8:0] lshr_ln72_2_fu_867_p4;
wire   [1:0] trunc_ln72_2_fu_863_p1;
wire   [1:0] trunc_ln68_fu_848_p1;
wire   [31:0] select_ln72_4_fu_901_p3;
wire   [31:0] ashr_ln70_5_fu_935_p2;
wire   [31:0] ashr_ln70_3_fu_960_p2;
wire   [31:0] select_ln72_1_fu_968_p3;
wire   [8:0] lshr_ln72_3_fu_979_p4;
wire   [8:0] lshr_ln72_s_fu_1005_p3;
wire   [31:0] ashr_ln70_6_fu_1017_p2;
wire   [10:0] shl_ln70_2_fu_1025_p3;
wire   [10:0] add_ln70_2_fu_1032_p2;
wire   [8:0] lshr_ln72_4_fu_1041_p4;
wire   [1:0] trunc_ln72_4_fu_1037_p1;
wire   [10:0] shl_ln70_3_fu_1069_p3;
wire   [10:0] add_ln70_3_fu_1076_p2;
wire   [1:0] trunc_ln72_6_fu_1081_p1;
wire   [31:0] ashr_ln70_7_fu_1107_p2;
wire   [31:0] select_ln72_5_fu_1115_p3;
wire   [31:0] select_ln72_2_fu_1144_p3;
wire   [8:0] lshr_ln72_5_fu_1155_p4;
wire   [8:0] lshr_ln72_11_fu_1181_p3;
wire   [31:0] select_ln72_3_fu_1202_p3;
wire   [8:0] lshr_ln72_7_fu_1213_p4;
wire   [8:0] lshr_ln72_13_fu_1239_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 blockID_fu_90 = 10'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_fu_90 <= 10'd0;
    end else if (((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        blockID_fu_90 <= add_ln68_fu_943_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln73_4_reg_1538 <= add_ln73_4_fu_923_p2;
        bucket_0_addr_1_reg_1504 <= zext_ln72_9_fu_877_p1;
        bucket_2_addr_1_reg_1509 <= zext_ln72_9_fu_877_p1;
        icmp_ln72_12_reg_1523 <= icmp_ln72_12_fu_895_p2;
        icmp_ln72_9_reg_1514 <= icmp_ln72_9_fu_883_p2;
        icmp_ln73_1_reg_1519 <= icmp_ln73_1_fu_889_p2;
        icmp_ln73_4_reg_1544 <= icmp_ln73_4_fu_929_p2;
        lshr_ln72_9_reg_1533 <= {{select_ln72_4_fu_901_p3[10:2]}};
        trunc_ln70_5_reg_1548 <= trunc_ln70_5_fu_939_p1;
        trunc_ln72_8_reg_1529 <= trunc_ln72_8_fu_909_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln73_reg_1471 <= add_ln73_fu_804_p2;
        lshr_ln72_1_reg_1466 <= {{select_ln72_fu_783_p3[10:2]}};
        trunc_ln70_4_reg_1477 <= trunc_ln70_4_fu_814_p1;
        trunc_ln72_11_reg_1668 <= trunc_ln72_11_fu_1265_p1;
        trunc_ln72_1_reg_1462 <= trunc_ln72_1_fu_790_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_load_1_reg_1390 <= b_0_q0;
        b_0_load_reg_1354 <= b_0_q1;
        b_1_load_1_reg_1399 <= b_1_q0;
        b_1_load_reg_1363 <= b_1_q1;
        b_2_load_1_reg_1408 <= b_2_q0;
        b_2_load_reg_1372 <= b_2_q1;
        b_3_load_1_reg_1417 <= b_3_q0;
        b_3_load_reg_1381 <= b_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_load_1_reg_1390_pp0_iter1_reg <= b_0_load_1_reg_1390;
        b_1_load_1_reg_1399_pp0_iter1_reg <= b_1_load_1_reg_1399;
        b_2_load_1_reg_1408_pp0_iter1_reg <= b_2_load_1_reg_1408;
        b_3_load_1_reg_1417_pp0_iter1_reg <= b_3_load_1_reg_1417;
        b_3_load_reg_1381_pp0_iter1_reg <= b_3_load_reg_1381;
        trunc_ln72_10_reg_1646 <= trunc_ln72_10_fu_1198_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_1_reg_1302 <= ap_sig_allocacmp_blockID_1;
        bucket_0_addr_3_reg_1636 <= zext_ln72_11_fu_1193_p1;
        bucket_2_addr_3_reg_1641 <= zext_ln72_11_fu_1193_p1;
        exp_cast12_reg_1290[4 : 0] <= exp_cast12_fu_665_p1[4 : 0];
        tmp_reg_1310 <= ap_sig_allocacmp_blockID_1[32'd9];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_0_addr_2_reg_1576 <= zext_ln72_10_fu_1051_p1;
        bucket_2_addr_2_reg_1581 <= zext_ln72_10_fu_1051_p1;
        icmp_ln72_10_reg_1586 <= icmp_ln72_10_fu_1057_p2;
        icmp_ln72_11_reg_1600 <= icmp_ln72_11_fu_1095_p2;
        icmp_ln73_2_reg_1591 <= icmp_ln73_2_fu_1063_p2;
        icmp_ln73_3_reg_1605 <= icmp_ln73_3_fu_1101_p2;
        lshr_ln72_6_reg_1595 <= {{add_ln70_3_fu_1076_p2[10:2]}};
        trunc_ln70_7_reg_1609 <= trunc_ln70_7_fu_1111_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_addr_reg_1438 <= zext_ln72_8_fu_757_p1;
        bucket_2_addr_reg_1443 <= zext_ln72_8_fu_757_p1;
        icmp_ln72_8_reg_1448 <= icmp_ln72_8_fu_763_p2;
        icmp_ln73_reg_1453 <= icmp_ln73_fu_769_p2;
        trunc_ln70_1_reg_1457 <= trunc_ln70_1_fu_779_p1;
        zext_ln68_1_reg_1431[9 : 0] <= zext_ln68_1_fu_727_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_1_addr_1_reg_1561 <= zext_ln72_13_fu_1011_p1;
        bucket_3_addr_1_reg_1566 <= zext_ln72_13_fu_1011_p1;
        trunc_ln70_6_reg_1571 <= trunc_ln70_6_fu_1021_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_1_addr_2_reg_1626 <= zext_ln72_14_fu_1187_p1;
        bucket_3_addr_2_reg_1631 <= zext_ln72_14_fu_1187_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_addr_3_reg_1658 <= zext_ln72_15_fu_1245_p1;
        bucket_3_addr_3_reg_1663 <= zext_ln72_15_fu_1245_p1;
        trunc_ln70_reg_1426 <= trunc_ln70_fu_723_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_addr_reg_1494 <= zext_ln72_12_fu_842_p1;
        bucket_3_addr_reg_1499 <= zext_ln72_12_fu_842_p1;
        tmp_5_reg_1487 <= {{blockID_1_reg_1302[8:2]}};
        trunc_ln70_2_reg_1482 <= trunc_ln70_2_fu_822_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        lshr_ln72_10_reg_1618 <= {{select_ln72_5_fu_1115_p3[10:2]}};
        trunc_ln72_9_reg_1614 <= trunc_ln72_9_fu_1122_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln72_12_reg_1650 <= {{grp_fu_640_p3[10:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln72_14_reg_1672 <= {{grp_fu_640_p3[10:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_624 <= bucket_0_q0;
        reg_628 <= bucket_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_632 <= bucket_1_q0;
        reg_636 <= bucket_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        trunc_ln70_3_reg_1553 <= trunc_ln70_3_fu_964_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_0_address0_local = zext_ln72_7_fu_1276_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_0_address0_local = zext_ln72_6_fu_1269_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_0_address0_local = zext_ln72_5_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_0_address0_local = zext_ln72_4_fu_1251_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_0_address0_local = zext_ln72_3_fu_1223_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        a_0_address0_local = zext_ln72_2_fu_1165_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        a_0_address0_local = zext_ln72_1_fu_989_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_0_address0_local = zext_ln72_fu_953_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_0_d0_local = b_3_load_1_reg_1417_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_0_d0_local = b_2_load_1_reg_1408_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_0_d0_local = b_1_load_1_reg_1399_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_0_d0_local = b_0_load_1_reg_1390_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_0_d0_local = b_3_load_reg_1381_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        a_0_d0_local = b_2_load_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        a_0_d0_local = b_1_load_reg_1363;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_0_d0_local = b_0_load_reg_1354;
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln72_7_fu_1209_p1 == 2'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln72_5_fu_1151_p1 == 2'd0) & (tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_1310 == 1'd0) & (trunc_ln72_3_fu_975_p1 == 2'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_1_reg_1462 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln72_11_reg_1668 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln72_10_reg_1646 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln72_9_reg_1614 == 2'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln72_8_reg_1529 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_1_address0_local = zext_ln72_7_fu_1276_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_1_address0_local = zext_ln72_6_fu_1269_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_1_address0_local = zext_ln72_5_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_1_address0_local = zext_ln72_4_fu_1251_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_1_address0_local = zext_ln72_3_fu_1223_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        a_1_address0_local = zext_ln72_2_fu_1165_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        a_1_address0_local = zext_ln72_1_fu_989_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_1_address0_local = zext_ln72_fu_953_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_1_d0_local = b_3_load_1_reg_1417_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_1_d0_local = b_2_load_1_reg_1408_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_1_d0_local = b_1_load_1_reg_1399_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_1_d0_local = b_0_load_1_reg_1390_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_1_d0_local = b_3_load_reg_1381_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        a_1_d0_local = b_2_load_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        a_1_d0_local = b_1_load_reg_1363;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_1_d0_local = b_0_load_reg_1354;
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln72_7_fu_1209_p1 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln72_5_fu_1151_p1 == 2'd1) & (tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_1310 == 1'd0) & (trunc_ln72_3_fu_975_p1 == 2'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_1_reg_1462 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln72_11_reg_1668 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln72_10_reg_1646 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln72_9_reg_1614 == 2'd1) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln72_8_reg_1529 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_2_address0_local = zext_ln72_7_fu_1276_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_2_address0_local = zext_ln72_6_fu_1269_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_2_address0_local = zext_ln72_5_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_2_address0_local = zext_ln72_4_fu_1251_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_2_address0_local = zext_ln72_3_fu_1223_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        a_2_address0_local = zext_ln72_2_fu_1165_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        a_2_address0_local = zext_ln72_1_fu_989_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_2_address0_local = zext_ln72_fu_953_p1;
    end else begin
        a_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_2_d0_local = b_3_load_1_reg_1417_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_2_d0_local = b_2_load_1_reg_1408_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_2_d0_local = b_1_load_1_reg_1399_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_2_d0_local = b_0_load_1_reg_1390_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_2_d0_local = b_3_load_reg_1381_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        a_2_d0_local = b_2_load_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        a_2_d0_local = b_1_load_reg_1363;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_2_d0_local = b_0_load_reg_1354;
    end else begin
        a_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln72_7_fu_1209_p1 == 2'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln72_5_fu_1151_p1 == 2'd2) & (tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_1310 == 1'd0) & (trunc_ln72_3_fu_975_p1 == 2'd2) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_1_reg_1462 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln72_11_reg_1668 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln72_10_reg_1646 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln72_9_reg_1614 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln72_8_reg_1529 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        a_2_we0_local = 1'b1;
    end else begin
        a_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_3_address0_local = zext_ln72_7_fu_1276_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_3_address0_local = zext_ln72_6_fu_1269_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_3_address0_local = zext_ln72_5_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_3_address0_local = zext_ln72_4_fu_1251_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_3_address0_local = zext_ln72_3_fu_1223_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        a_3_address0_local = zext_ln72_2_fu_1165_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        a_3_address0_local = zext_ln72_1_fu_989_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_3_address0_local = zext_ln72_fu_953_p1;
    end else begin
        a_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_3_d0_local = b_3_load_1_reg_1417_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_3_d0_local = b_2_load_1_reg_1408_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_3_d0_local = b_1_load_1_reg_1399_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_3_d0_local = b_0_load_1_reg_1390_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_3_d0_local = b_3_load_reg_1381_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        a_3_d0_local = b_2_load_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        a_3_d0_local = b_1_load_reg_1363;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_3_d0_local = b_0_load_reg_1354;
    end else begin
        a_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln72_7_fu_1209_p1 == 2'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln72_5_fu_1151_p1 == 2'd3) & (tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_1310 == 1'd0) & (trunc_ln72_3_fu_975_p1 == 2'd3) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_1_reg_1462 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln72_11_reg_1668 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln72_10_reg_1646 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln72_9_reg_1614 == 2'd3) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln72_8_reg_1529 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        a_3_we0_local = 1'b1;
    end else begin
        a_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1310 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_blockID_1 = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_1 = blockID_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_0_ce0_local = 1'b1;
    end else begin
        b_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_0_ce1_local = 1'b1;
    end else begin
        b_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_1_ce0_local = 1'b1;
    end else begin
        b_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_1_ce1_local = 1'b1;
    end else begin
        b_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_2_ce0_local = 1'b1;
    end else begin
        b_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_2_ce1_local = 1'b1;
    end else begin
        b_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_3_ce0_local = 1'b1;
    end else begin
        b_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_3_ce1_local = 1'b1;
    end else begin
        b_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_address0_local = bucket_0_addr_3_reg_1636;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = zext_ln72_11_fu_1193_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_0_address0_local = bucket_0_addr_2_reg_1576;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_0_address0_local = zext_ln72_10_fu_1051_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_0_address0_local = bucket_0_addr_1_reg_1504;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_0_address0_local = zext_ln72_9_fu_877_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_0_address0_local = bucket_0_addr_reg_1438;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = zext_ln72_8_fu_757_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_d0_local = add_ln73_3_fu_1231_p2;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_0_d0_local = add_ln73_2_fu_1173_p2;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_0_d0_local = add_ln73_1_fu_997_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_0_d0_local = add_ln73_reg_1471;
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (icmp_ln73_2_reg_1591 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (icmp_ln73_1_reg_1519 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln73_reg_1453 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln73_3_reg_1605 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_1_address0_local = bucket_1_addr_3_reg_1658;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address0_local = zext_ln72_15_fu_1245_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address0_local = bucket_1_addr_2_reg_1626;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_1_address0_local = zext_ln72_14_fu_1187_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_1_address0_local = bucket_1_addr_1_reg_1561;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_1_address0_local = zext_ln72_13_fu_1011_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_1_address0_local = bucket_1_addr_reg_1494;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_address0_local = zext_ln72_12_fu_842_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        bucket_1_d0_local = grp_fu_657_p2;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_1_d0_local = add_ln73_5_fu_1136_p2;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_1_d0_local = add_ln73_4_reg_1538;
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln73_4_reg_1544 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln73_4_reg_1544 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln73_4_reg_1544 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln73_4_reg_1544 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_2_address0_local = bucket_2_addr_3_reg_1641;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address0_local = zext_ln72_11_fu_1193_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_2_address0_local = bucket_2_addr_2_reg_1581;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_2_address0_local = zext_ln72_10_fu_1051_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_2_address0_local = bucket_2_addr_1_reg_1509;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_2_address0_local = zext_ln72_9_fu_877_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_2_address0_local = bucket_2_addr_reg_1443;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address0_local = zext_ln72_8_fu_757_p1;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_2_d0_local = add_ln73_3_fu_1231_p2;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_2_d0_local = add_ln73_2_fu_1173_p2;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_2_d0_local = add_ln73_1_fu_997_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_2_d0_local = add_ln73_reg_1471;
    end else begin
        bucket_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (icmp_ln73_2_reg_1591 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (icmp_ln73_1_reg_1519 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln73_reg_1453 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln73_3_reg_1605 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_3_address0_local = bucket_3_addr_3_reg_1663;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_3_address0_local = zext_ln72_15_fu_1245_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_address0_local = bucket_3_addr_2_reg_1631;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_3_address0_local = zext_ln72_14_fu_1187_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_3_address0_local = bucket_3_addr_1_reg_1566;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_3_address0_local = zext_ln72_13_fu_1011_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_3_address0_local = bucket_3_addr_reg_1499;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_3_address0_local = zext_ln72_12_fu_842_p1;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        bucket_3_d0_local = grp_fu_657_p2;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_3_d0_local = add_ln73_5_fu_1136_p2;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_3_d0_local = add_ln73_4_reg_1538;
    end else begin
        bucket_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln73_4_reg_1544 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln73_4_reg_1544 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln73_4_reg_1544 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln73_4_reg_1544 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign a_2_address0 = a_2_address0_local;
assign a_2_ce0 = a_2_ce0_local;
assign a_2_d0 = a_2_d0_local;
assign a_2_we0 = a_2_we0_local;
assign a_3_address0 = a_3_address0_local;
assign a_3_ce0 = a_3_ce0_local;
assign a_3_d0 = a_3_d0_local;
assign a_3_we0 = a_3_we0_local;
assign add_ln68_fu_943_p2 = (blockID_1_reg_1302 + 10'd2);
assign add_ln70_1_fu_858_p2 = (zext_ln68_1_reg_1431 + shl_ln70_1_fu_851_p3);
assign add_ln70_2_fu_1032_p2 = (zext_ln68_1_reg_1431 + shl_ln70_2_fu_1025_p3);
assign add_ln70_3_fu_1076_p2 = (zext_ln68_1_reg_1431 + shl_ln70_3_fu_1069_p3);
assign add_ln70_fu_737_p2 = (zext_ln68_1_fu_727_p1 + shl_ln_fu_730_p3);
assign add_ln73_1_fu_997_p2 = (select_ln72_1_fu_968_p3 + 32'd1);
assign add_ln73_2_fu_1173_p2 = (select_ln72_2_fu_1144_p3 + 32'd1);
assign add_ln73_3_fu_1231_p2 = (select_ln72_3_fu_1202_p3 + 32'd1);
assign add_ln73_4_fu_923_p2 = (select_ln72_4_fu_901_p3 + 32'd1);
assign add_ln73_5_fu_1136_p2 = (select_ln72_5_fu_1115_p3 + 32'd1);
assign add_ln73_fu_804_p2 = (select_ln72_fu_783_p3 + 32'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign ashr_ln70_1_fu_775_p2 = $signed(b_1_load_reg_1363) >>> exp_cast12_reg_1290;
assign ashr_ln70_2_fu_818_p2 = $signed(b_2_load_reg_1372) >>> exp_cast12_reg_1290;
assign ashr_ln70_3_fu_960_p2 = $signed(b_3_load_reg_1381) >>> exp_cast12_reg_1290;
assign ashr_ln70_4_fu_810_p2 = $signed(b_0_load_1_reg_1390) >>> exp_cast12_reg_1290;
assign ashr_ln70_5_fu_935_p2 = $signed(b_1_load_1_reg_1399) >>> exp_cast12_reg_1290;
assign ashr_ln70_6_fu_1017_p2 = $signed(b_2_load_1_reg_1408) >>> exp_cast12_reg_1290;
assign ashr_ln70_7_fu_1107_p2 = $signed(b_3_load_1_reg_1417) >>> exp_cast12_reg_1290;
assign ashr_ln70_fu_719_p2 = $signed(b_0_load_reg_1354) >>> exp_cast12_reg_1290;
assign b_0_address0 = zext_ln70_fu_711_p1;
assign b_0_address1 = zext_ln68_fu_685_p1;
assign b_0_ce0 = b_0_ce0_local;
assign b_0_ce1 = b_0_ce1_local;
assign b_1_address0 = zext_ln70_fu_711_p1;
assign b_1_address1 = zext_ln68_fu_685_p1;
assign b_1_ce0 = b_1_ce0_local;
assign b_1_ce1 = b_1_ce1_local;
assign b_2_address0 = zext_ln70_fu_711_p1;
assign b_2_address1 = zext_ln68_fu_685_p1;
assign b_2_ce0 = b_2_ce0_local;
assign b_2_ce1 = b_2_ce1_local;
assign b_3_address0 = zext_ln70_fu_711_p1;
assign b_3_address1 = zext_ln68_fu_685_p1;
assign b_3_ce0 = b_3_ce0_local;
assign b_3_ce1 = b_3_ce1_local;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_d0 = bucket_0_d0_local;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_d0 = bucket_1_d0_local;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_2_address0 = bucket_2_address0_local;
assign bucket_2_ce0 = bucket_2_ce0_local;
assign bucket_2_d0 = bucket_2_d0_local;
assign bucket_2_we0 = bucket_2_we0_local;
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_d0 = bucket_3_d0_local;
assign bucket_3_we0 = bucket_3_we0_local;
assign exp_cast12_fu_665_p1 = exp;
assign grp_fu_640_p3 = ((icmp_ln72_12_reg_1523[0:0] == 1'b1) ? reg_636 : reg_632);
assign grp_fu_657_p2 = (grp_fu_640_p3 + 32'd1);
assign icmp_ln72_10_fu_1057_p2 = ((trunc_ln72_4_fu_1037_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln72_11_fu_1095_p2 = ((trunc_ln72_6_fu_1081_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln72_12_fu_895_p2 = ((trunc_ln68_fu_848_p1 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln72_8_fu_763_p2 = ((trunc_ln72_fu_743_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln72_9_fu_883_p2 = ((trunc_ln72_2_fu_863_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln73_1_fu_889_p2 = ((trunc_ln72_2_fu_863_p1 == 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln73_2_fu_1063_p2 = ((trunc_ln72_4_fu_1037_p1 == 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln73_3_fu_1101_p2 = ((trunc_ln72_6_fu_1081_p1 == 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln73_4_fu_929_p2 = ((trunc_ln68_fu_848_p1 == 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln73_fu_769_p2 = ((trunc_ln72_fu_743_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln72_11_fu_1181_p3 = {{trunc_ln70_6_reg_1571}, {tmp_5_reg_1487}};
assign lshr_ln72_13_fu_1239_p3 = {{trunc_ln70_7_reg_1609}, {tmp_5_reg_1487}};
assign lshr_ln72_2_fu_867_p4 = {{add_ln70_1_fu_858_p2[10:2]}};
assign lshr_ln72_3_fu_979_p4 = {{select_ln72_1_fu_968_p3[10:2]}};
assign lshr_ln72_4_fu_1041_p4 = {{add_ln70_2_fu_1032_p2[10:2]}};
assign lshr_ln72_5_fu_1155_p4 = {{select_ln72_2_fu_1144_p3[10:2]}};
assign lshr_ln72_7_fu_1213_p4 = {{select_ln72_3_fu_1202_p3[10:2]}};
assign lshr_ln72_8_fu_835_p3 = {{trunc_ln70_4_reg_1477}, {tmp_5_fu_826_p4}};
assign lshr_ln72_s_fu_1005_p3 = {{trunc_ln70_5_reg_1548}, {tmp_5_reg_1487}};
assign lshr_ln_fu_747_p4 = {{add_ln70_fu_737_p2[10:2]}};
assign or_ln_fu_703_p3 = {{tmp_4_fu_693_p4}, {1'd1}};
assign select_ln72_1_fu_968_p3 = ((icmp_ln72_9_reg_1514[0:0] == 1'b1) ? reg_628 : reg_624);
assign select_ln72_2_fu_1144_p3 = ((icmp_ln72_10_reg_1586[0:0] == 1'b1) ? reg_628 : reg_624);
assign select_ln72_3_fu_1202_p3 = ((icmp_ln72_11_reg_1600[0:0] == 1'b1) ? reg_628 : reg_624);
assign select_ln72_4_fu_901_p3 = ((icmp_ln72_12_fu_895_p2[0:0] == 1'b1) ? bucket_3_q0 : bucket_1_q0);
assign select_ln72_5_fu_1115_p3 = ((icmp_ln72_12_reg_1523[0:0] == 1'b1) ? reg_636 : reg_632);
assign select_ln72_fu_783_p3 = ((icmp_ln72_8_reg_1448[0:0] == 1'b1) ? bucket_2_q0 : bucket_0_q0);
assign shl_ln70_1_fu_851_p3 = {{trunc_ln70_1_reg_1457}, {9'd0}};
assign shl_ln70_2_fu_1025_p3 = {{trunc_ln70_2_reg_1482}, {9'd0}};
assign shl_ln70_3_fu_1069_p3 = {{trunc_ln70_3_reg_1553}, {9'd0}};
assign shl_ln_fu_730_p3 = {{trunc_ln70_reg_1426}, {9'd0}};
assign tmp_4_fu_693_p4 = {{ap_sig_allocacmp_blockID_1[8:1]}};
assign tmp_5_fu_826_p4 = {{blockID_1_reg_1302[8:2]}};
assign trunc_ln68_fu_848_p1 = blockID_1_reg_1302[1:0];
assign trunc_ln70_1_fu_779_p1 = ashr_ln70_1_fu_775_p2[1:0];
assign trunc_ln70_2_fu_822_p1 = ashr_ln70_2_fu_818_p2[1:0];
assign trunc_ln70_3_fu_964_p1 = ashr_ln70_3_fu_960_p2[1:0];
assign trunc_ln70_4_fu_814_p1 = ashr_ln70_4_fu_810_p2[1:0];
assign trunc_ln70_5_fu_939_p1 = ashr_ln70_5_fu_935_p2[1:0];
assign trunc_ln70_6_fu_1021_p1 = ashr_ln70_6_fu_1017_p2[1:0];
assign trunc_ln70_7_fu_1111_p1 = ashr_ln70_7_fu_1107_p2[1:0];
assign trunc_ln70_fu_723_p1 = ashr_ln70_fu_719_p2[1:0];
assign trunc_ln72_10_fu_1198_p1 = grp_fu_640_p3[1:0];
assign trunc_ln72_11_fu_1265_p1 = grp_fu_640_p3[1:0];
assign trunc_ln72_1_fu_790_p1 = select_ln72_fu_783_p3[1:0];
assign trunc_ln72_2_fu_863_p1 = add_ln70_1_fu_858_p2[1:0];
assign trunc_ln72_3_fu_975_p1 = select_ln72_1_fu_968_p3[1:0];
assign trunc_ln72_4_fu_1037_p1 = add_ln70_2_fu_1032_p2[1:0];
assign trunc_ln72_5_fu_1151_p1 = select_ln72_2_fu_1144_p3[1:0];
assign trunc_ln72_6_fu_1081_p1 = add_ln70_3_fu_1076_p2[1:0];
assign trunc_ln72_7_fu_1209_p1 = select_ln72_3_fu_1202_p3[1:0];
assign trunc_ln72_8_fu_909_p1 = select_ln72_4_fu_901_p3[1:0];
assign trunc_ln72_9_fu_1122_p1 = select_ln72_5_fu_1115_p3[1:0];
assign trunc_ln72_fu_743_p1 = add_ln70_fu_737_p2[1:0];
assign zext_ln68_1_fu_727_p1 = blockID_1_reg_1302;
assign zext_ln68_fu_685_p1 = ap_sig_allocacmp_blockID_1;
assign zext_ln70_fu_711_p1 = or_ln_fu_703_p3;
assign zext_ln72_10_fu_1051_p1 = lshr_ln72_4_fu_1041_p4;
assign zext_ln72_11_fu_1193_p1 = lshr_ln72_6_reg_1595;
assign zext_ln72_12_fu_842_p1 = lshr_ln72_8_fu_835_p3;
assign zext_ln72_13_fu_1011_p1 = lshr_ln72_s_fu_1005_p3;
assign zext_ln72_14_fu_1187_p1 = lshr_ln72_11_fu_1181_p3;
assign zext_ln72_15_fu_1245_p1 = lshr_ln72_13_fu_1239_p3;
assign zext_ln72_1_fu_989_p1 = lshr_ln72_3_fu_979_p4;
assign zext_ln72_2_fu_1165_p1 = lshr_ln72_5_fu_1155_p4;
assign zext_ln72_3_fu_1223_p1 = lshr_ln72_7_fu_1213_p4;
assign zext_ln72_4_fu_1251_p1 = lshr_ln72_9_reg_1533;
assign zext_ln72_5_fu_1258_p1 = lshr_ln72_10_reg_1618;
assign zext_ln72_6_fu_1269_p1 = lshr_ln72_12_reg_1650;
assign zext_ln72_7_fu_1276_p1 = lshr_ln72_14_reg_1672;
assign zext_ln72_8_fu_757_p1 = lshr_ln_fu_747_p4;
assign zext_ln72_9_fu_877_p1 = lshr_ln72_2_fu_867_p4;
assign zext_ln72_fu_953_p1 = lshr_ln72_1_reg_1466;
always @ (posedge ap_clk) begin
    exp_cast12_reg_1290[31:5] <= 27'b000000000000000000000000000;
    zext_ln68_1_reg_1431[10] <= 1'b0;
end
endmodule 