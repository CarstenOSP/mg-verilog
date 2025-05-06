
module ss_sort_update (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,b_0_address0,b_0_ce0,b_0_q0,b_0_address1,b_0_ce1,b_0_q1,b_1_address0,b_1_ce0,b_1_q0,b_1_address1,b_1_ce1,b_1_q1,exp);  
parameter    ap_ST_fsm_pp0_stage0 = 24'd1;
parameter    ap_ST_fsm_pp0_stage1 = 24'd2;
parameter    ap_ST_fsm_pp0_stage2 = 24'd4;
parameter    ap_ST_fsm_pp0_stage3 = 24'd8;
parameter    ap_ST_fsm_pp0_stage4 = 24'd16;
parameter    ap_ST_fsm_pp0_stage5 = 24'd32;
parameter    ap_ST_fsm_pp0_stage6 = 24'd64;
parameter    ap_ST_fsm_pp0_stage7 = 24'd128;
parameter    ap_ST_fsm_pp0_stage8 = 24'd256;
parameter    ap_ST_fsm_pp0_stage9 = 24'd512;
parameter    ap_ST_fsm_pp0_stage10 = 24'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 24'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 24'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 24'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 24'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 24'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 24'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 24'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 24'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 24'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 24'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 24'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 24'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 24'd8388608;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
output  [9:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
output  [9:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [9:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [9:0] b_0_address0;
output   b_0_ce0;
input  [31:0] b_0_q0;
output  [9:0] b_0_address1;
output   b_0_ce1;
input  [31:0] b_0_q1;
output  [9:0] b_1_address0;
output   b_1_ce0;
input  [31:0] b_1_q0;
output  [9:0] b_1_address1;
output   b_1_ce1;
input  [31:0] b_1_q1;
input  [4:0] exp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_reg_1451;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [31:0] reg_672;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [9:0] grp_fu_652_p4;
reg   [9:0] reg_676;
reg   [31:0] reg_680;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [9:0] reg_684;
reg   [9:0] reg_688;
reg   [9:0] reg_692;
wire   [31:0] exp_cast21_fu_710_p1;
reg   [31:0] exp_cast21_reg_1423;
reg   [9:0] blockID_1_reg_1443;
wire   [7:0] tmp_5_fu_742_p4;
reg   [7:0] tmp_5_reg_1465;
reg   [31:0] b_0_load_reg_1484;
reg   [31:0] b_1_load_reg_1491;
reg   [31:0] b_0_load_2_reg_1508;
reg   [31:0] b_1_load_2_reg_1515;
wire   [1:0] trunc_ln70_1_fu_800_p1;
reg   [1:0] trunc_ln70_1_reg_1532;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] b_0_load_1_reg_1537;
reg   [31:0] b_1_load_1_reg_1544;
reg   [31:0] b_0_load_3_reg_1551;
reg   [31:0] b_1_load_3_reg_1558;
wire   [6:0] tmp_6_fu_804_p4;
reg   [6:0] tmp_6_reg_1565;
wire   [10:0] zext_ln68_fu_841_p1;
reg   [10:0] zext_ln68_reg_1599;
reg   [9:0] bucket_0_addr_reg_1606;
wire   [1:0] trunc_ln70_2_fu_876_p1;
reg   [1:0] trunc_ln70_2_reg_1611;
reg   [31:0] b_0_load_4_reg_1616;
reg   [31:0] b_1_load_4_reg_1623;
reg   [31:0] b_0_load_6_reg_1640;
reg   [31:0] b_1_load_6_reg_1647;
wire   [0:0] trunc_ln72_fu_906_p1;
reg   [0:0] trunc_ln72_reg_1664;
wire   [1:0] trunc_ln70_5_fu_914_p1;
reg   [1:0] trunc_ln70_5_reg_1668;
reg   [31:0] b_0_load_5_reg_1673;
reg   [31:0] b_1_load_5_reg_1680;
reg   [31:0] b_0_load_7_reg_1687;
reg   [31:0] b_1_load_7_reg_1694;
reg   [31:0] b_1_load_7_reg_1694_pp0_iter1_reg;
wire   [1:0] trunc_ln70_3_fu_922_p1;
reg   [1:0] trunc_ln70_3_reg_1701;
wire    ap_block_pp0_stage5_11001;
reg   [9:0] bucket_1_addr_reg_1706;
reg   [9:0] bucket_0_addr_1_reg_1711;
wire   [0:0] trunc_ln72_4_fu_970_p1;
reg   [0:0] trunc_ln72_4_reg_1716;
wire   [1:0] trunc_ln70_6_fu_978_p1;
reg   [1:0] trunc_ln70_6_reg_1720;
wire   [1:0] trunc_ln70_4_fu_996_p1;
reg   [1:0] trunc_ln70_4_reg_1728;
reg   [9:0] bucket_1_addr_1_reg_1733;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [1:0] trunc_ln70_7_fu_1015_p1;
reg   [1:0] trunc_ln70_7_reg_1738;
reg   [9:0] bucket_0_addr_2_reg_1743;
reg   [9:0] lshr_ln72_6_reg_1748;
wire   [0:0] trunc_ln72_5_fu_1068_p1;
reg   [0:0] trunc_ln72_5_reg_1753;
wire   [1:0] trunc_ln70_8_fu_1076_p1;
reg   [1:0] trunc_ln70_8_reg_1757;
wire   [1:0] trunc_ln70_9_fu_1094_p1;
reg   [1:0] trunc_ln70_9_reg_1765;
reg   [9:0] bucket_1_addr_2_reg_1770;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [1:0] trunc_ln70_10_fu_1113_p1;
reg   [1:0] trunc_ln70_10_reg_1775;
reg   [9:0] bucket_0_addr_3_reg_1780;
wire   [0:0] trunc_ln72_6_fu_1121_p1;
reg   [0:0] trunc_ln72_6_reg_1785;
wire   [1:0] trunc_ln70_13_fu_1129_p1;
reg   [1:0] trunc_ln70_13_reg_1789;
wire   [1:0] trunc_ln70_11_fu_1147_p1;
reg   [1:0] trunc_ln70_11_reg_1797;
reg   [9:0] bucket_1_addr_3_reg_1802;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [1:0] trunc_ln70_14_fu_1172_p1;
reg   [1:0] trunc_ln70_14_reg_1807;
wire   [0:0] trunc_ln72_7_fu_1182_p1;
reg   [0:0] trunc_ln72_7_reg_1812;
reg   [9:0] bucket_0_addr_4_reg_1816;
wire   [1:0] trunc_ln70_12_fu_1203_p1;
reg   [1:0] trunc_ln70_12_reg_1821;
wire   [0:0] trunc_ln72_8_fu_1213_p1;
reg   [0:0] trunc_ln72_8_reg_1826;
wire   [1:0] trunc_ln70_15_fu_1221_p1;
reg   [1:0] trunc_ln70_15_reg_1830;
reg   [9:0] bucket_1_addr_4_reg_1835;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [1:0] trunc_ln70_16_fu_1248_p1;
reg   [1:0] trunc_ln70_16_reg_1840;
reg   [9:0] bucket_0_addr_5_reg_1845;
wire   [0:0] trunc_ln72_12_fu_1271_p1;
reg   [0:0] trunc_ln72_12_reg_1850;
reg   [9:0] bucket_1_addr_5_reg_1857;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [9:0] bucket_0_addr_6_reg_1862;
wire   [0:0] trunc_ln72_13_fu_1311_p1;
reg   [0:0] trunc_ln72_13_reg_1867;
reg   [9:0] bucket_1_addr_6_reg_1874;
wire    ap_block_pp0_stage23_11001;
reg   [9:0] bucket_0_addr_7_reg_1879;
wire   [0:0] trunc_ln72_14_fu_1361_p1;
reg   [0:0] trunc_ln72_14_reg_1884;
reg   [9:0] bucket_1_addr_7_reg_1891;
wire   [0:0] trunc_ln72_15_fu_1400_p1;
reg   [0:0] trunc_ln72_15_reg_1896;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln70_fu_736_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_2_fu_760_p1;
wire   [63:0] zext_ln70_1_fu_777_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln70_3_fu_790_p1;
wire   [63:0] zext_ln70_4_fu_821_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln70_6_fu_835_p1;
wire   [63:0] zext_ln72_16_fu_867_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln70_5_fu_887_p1;
wire   [63:0] zext_ln70_7_fu_900_p1;
wire   [63:0] zext_ln72_20_fu_932_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln72_fu_937_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln72_17_fu_965_p1;
wire   [63:0] zext_ln72_1_fu_986_p1;
wire    ap_block_pp0_stage7;
wire   [0:0] trunc_ln72_1_fu_982_p1;
wire   [63:0] zext_ln72_21_fu_1006_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln72_18_fu_1041_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln72_2_fu_1084_p1;
wire    ap_block_pp0_stage10;
wire   [0:0] trunc_ln72_2_fu_1080_p1;
wire   [63:0] zext_ln72_22_fu_1104_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln72_19_fu_1117_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln72_3_fu_1137_p1;
wire    ap_block_pp0_stage13;
wire   [0:0] trunc_ln72_3_fu_1133_p1;
wire   [63:0] zext_ln72_4_fu_1151_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln72_23_fu_1163_p1;
wire   [63:0] zext_ln72_5_fu_1176_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln72_24_fu_1194_p1;
wire   [63:0] zext_ln72_6_fu_1207_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln72_7_fu_1225_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln72_28_fu_1239_p1;
wire   [63:0] zext_ln72_8_fu_1252_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln72_25_fu_1266_p1;
wire   [63:0] zext_ln72_9_fu_1279_p1;
wire    ap_block_pp0_stage19;
wire   [0:0] trunc_ln72_9_fu_1275_p1;
wire   [63:0] zext_ln72_29_fu_1293_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln72_26_fu_1306_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln72_10_fu_1319_p1;
wire    ap_block_pp0_stage22;
wire   [0:0] trunc_ln72_10_fu_1315_p1;
wire   [63:0] zext_ln72_30_fu_1333_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] zext_ln72_27_fu_1356_p1;
wire   [63:0] zext_ln72_11_fu_1369_p1;
wire   [0:0] trunc_ln72_11_fu_1365_p1;
wire   [63:0] zext_ln72_12_fu_1375_p1;
wire   [63:0] zext_ln72_31_fu_1389_p1;
wire   [63:0] zext_ln72_13_fu_1394_p1;
wire   [63:0] zext_ln72_14_fu_1404_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln72_15_fu_1410_p1;
reg   [9:0] blockID_fu_92;
wire   [9:0] add_ln68_fu_1338_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID_1;
reg    b_0_ce1_local;
reg   [9:0] b_0_address1_local;
reg    b_0_ce0_local;
reg   [9:0] b_0_address0_local;
reg    b_1_ce1_local;
reg   [9:0] b_1_address1_local;
reg    b_1_ce0_local;
reg   [9:0] b_1_address0_local;
reg    bucket_0_ce0_local;
reg   [9:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
wire   [31:0] grp_fu_696_p2;
reg    bucket_1_ce0_local;
reg   [9:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
wire   [31:0] grp_fu_703_p2;
reg    a_0_we0_local;
reg   [31:0] a_0_d0_local;
reg    a_0_ce0_local;
reg   [9:0] a_0_address0_local;
reg    a_1_we0_local;
reg   [31:0] a_1_d0_local;
reg    a_1_ce0_local;
reg   [9:0] a_1_address0_local;
wire   [9:0] shl_ln70_fu_730_p2;
wire   [9:0] shl_ln70_5_fu_752_p3;
wire   [8:0] trunc_ln70_fu_766_p1;
wire   [9:0] or_ln_fu_769_p3;
wire   [9:0] or_ln70_1_fu_783_p3;
wire   [31:0] ashr_ln70_fu_796_p2;
wire   [9:0] or_ln70_2_fu_813_p3;
wire   [9:0] shl_ln70_6_fu_827_p3;
wire   [10:0] shl_ln70_1_fu_844_p3;
wire   [10:0] add_ln70_fu_851_p2;
wire   [9:0] lshr_ln_fu_857_p4;
wire   [31:0] ashr_ln70_1_fu_872_p2;
wire   [9:0] or_ln70_3_fu_880_p3;
wire   [9:0] or_ln70_4_fu_893_p3;
wire   [31:0] ashr_ln70_4_fu_910_p2;
wire   [31:0] ashr_ln70_2_fu_918_p2;
wire   [9:0] lshr_ln72_8_fu_926_p3;
wire   [10:0] shl_ln70_2_fu_943_p3;
wire   [10:0] add_ln70_1_fu_950_p2;
wire   [9:0] lshr_ln72_2_fu_955_p4;
wire   [31:0] ashr_ln70_5_fu_974_p2;
wire   [31:0] ashr_ln70_3_fu_992_p2;
wire   [9:0] lshr_ln72_s_fu_1000_p3;
wire   [31:0] ashr_ln70_6_fu_1011_p2;
wire   [10:0] shl_ln70_3_fu_1019_p3;
wire   [10:0] add_ln70_2_fu_1026_p2;
wire   [9:0] lshr_ln72_4_fu_1031_p4;
wire   [10:0] shl_ln70_4_fu_1046_p3;
wire   [10:0] add_ln70_3_fu_1053_p2;
wire   [31:0] ashr_ln70_7_fu_1072_p2;
wire   [31:0] ashr_ln70_8_fu_1090_p2;
wire   [9:0] lshr_ln72_11_fu_1098_p3;
wire   [31:0] ashr_ln70_9_fu_1109_p2;
wire   [31:0] ashr_ln70_12_fu_1125_p2;
wire   [31:0] ashr_ln70_10_fu_1143_p2;
wire   [9:0] lshr_ln72_13_fu_1157_p3;
wire   [31:0] ashr_ln70_13_fu_1168_p2;
wire   [9:0] lshr_ln72_15_fu_1186_p4;
wire   [31:0] ashr_ln70_11_fu_1199_p2;
wire   [31:0] ashr_ln70_14_fu_1217_p2;
wire   [9:0] lshr_ln72_23_fu_1231_p4;
wire   [31:0] ashr_ln70_15_fu_1244_p2;
wire   [9:0] lshr_ln72_17_fu_1258_p4;
wire   [9:0] lshr_ln72_25_fu_1285_p4;
wire   [9:0] lshr_ln72_19_fu_1298_p4;
wire   [9:0] lshr_ln72_27_fu_1325_p4;
wire   [9:0] lshr_ln72_21_fu_1348_p4;
wire   [9:0] lshr_ln72_29_fu_1381_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [23:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 blockID_fu_92 = 10'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
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
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_fu_92 <= 10'd0;
    end else if (((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        blockID_fu_92 <= add_ln68_fu_1338_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_0_load_1_reg_1537 <= b_0_q1;
        b_0_load_3_reg_1551 <= b_0_q0;
        b_1_load_1_reg_1544 <= b_1_q1;
        b_1_load_3_reg_1558 <= b_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_load_2_reg_1508 <= b_0_q0;
        b_0_load_reg_1484 <= b_0_q1;
        b_1_load_2_reg_1515 <= b_1_q0;
        b_1_load_reg_1491 <= b_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        b_0_load_4_reg_1616 <= b_0_q1;
        b_0_load_6_reg_1640 <= b_0_q0;
        b_1_load_4_reg_1623 <= b_1_q1;
        b_1_load_6_reg_1647 <= b_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        b_0_load_5_reg_1673 <= b_0_q1;
        b_0_load_7_reg_1687 <= b_0_q0;
        b_1_load_5_reg_1680 <= b_1_q1;
        b_1_load_7_reg_1694 <= b_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        b_1_load_7_reg_1694_pp0_iter1_reg <= b_1_load_7_reg_1694;
        trunc_ln70_5_reg_1668 <= trunc_ln70_5_fu_914_p1;
        trunc_ln72_reg_1664 <= trunc_ln72_fu_906_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_1_reg_1443 <= ap_sig_allocacmp_blockID_1;
        bucket_0_addr_7_reg_1879[9 : 1] <= zext_ln72_27_fu_1356_p1[9 : 1];
        exp_cast21_reg_1423[4 : 0] <= exp_cast21_fu_710_p1[4 : 0];
        tmp_5_reg_1465 <= {{ap_sig_allocacmp_blockID_1[8:1]}};
        tmp_reg_1451 <= ap_sig_allocacmp_blockID_1[32'd9];
        trunc_ln72_14_reg_1884 <= trunc_ln72_14_fu_1361_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_0_addr_1_reg_1711 <= zext_ln72_17_fu_965_p1;
        trunc_ln70_6_reg_1720 <= trunc_ln70_6_fu_978_p1;
        trunc_ln72_4_reg_1716 <= trunc_ln72_4_fu_970_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_0_addr_2_reg_1743 <= zext_ln72_18_fu_1041_p1;
        lshr_ln72_6_reg_1748 <= {{add_ln70_3_fu_1053_p2[10:1]}};
        trunc_ln70_8_reg_1757 <= trunc_ln70_8_fu_1076_p1;
        trunc_ln72_5_reg_1753 <= trunc_ln72_5_fu_1068_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        bucket_0_addr_3_reg_1780 <= zext_ln72_19_fu_1117_p1;
        trunc_ln70_13_reg_1789 <= trunc_ln70_13_fu_1129_p1;
        trunc_ln72_6_reg_1785 <= trunc_ln72_6_fu_1121_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        bucket_0_addr_4_reg_1816[9 : 1] <= zext_ln72_24_fu_1194_p1[9 : 1];
        trunc_ln70_12_reg_1821 <= trunc_ln70_12_fu_1203_p1;
        trunc_ln72_7_reg_1812 <= trunc_ln72_7_fu_1182_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        bucket_0_addr_5_reg_1845[9 : 1] <= zext_ln72_25_fu_1266_p1[9 : 1];
        trunc_ln72_12_reg_1850 <= trunc_ln72_12_fu_1271_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        bucket_0_addr_6_reg_1862[9 : 1] <= zext_ln72_26_fu_1306_p1[9 : 1];
        trunc_ln72_13_reg_1867 <= trunc_ln72_13_fu_1311_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_addr_reg_1606 <= zext_ln72_16_fu_867_p1;
        trunc_ln70_2_reg_1611 <= trunc_ln70_2_fu_876_p1;
        trunc_ln72_15_reg_1896 <= trunc_ln72_15_fu_1400_p1;
        zext_ln68_reg_1599[9 : 0] <= zext_ln68_fu_841_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_1_addr_1_reg_1733 <= zext_ln72_21_fu_1006_p1;
        trunc_ln70_7_reg_1738 <= trunc_ln70_7_fu_1015_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_1_addr_2_reg_1770 <= zext_ln72_22_fu_1104_p1;
        trunc_ln70_10_reg_1775 <= trunc_ln70_10_fu_1113_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        bucket_1_addr_3_reg_1802 <= zext_ln72_23_fu_1163_p1;
        trunc_ln70_14_reg_1807 <= trunc_ln70_14_fu_1172_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        bucket_1_addr_4_reg_1835[9 : 1] <= zext_ln72_28_fu_1239_p1[9 : 1];
        trunc_ln70_16_reg_1840 <= trunc_ln70_16_fu_1248_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        bucket_1_addr_5_reg_1857[9 : 1] <= zext_ln72_29_fu_1293_p1[9 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        bucket_1_addr_6_reg_1874[9 : 1] <= zext_ln72_30_fu_1333_p1[9 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_addr_7_reg_1891[9 : 1] <= zext_ln72_31_fu_1389_p1[9 : 1];
        tmp_6_reg_1565 <= {{blockID_1_reg_1443[8:2]}};
        trunc_ln70_1_reg_1532 <= trunc_ln70_1_fu_800_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_addr_reg_1706 <= zext_ln72_20_fu_932_p1;
        trunc_ln70_3_reg_1701 <= trunc_ln70_3_fu_922_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_672 <= bucket_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_676 <= {{bucket_0_q0[10:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_680 <= bucket_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_684 <= {{bucket_1_q0[10:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_688 <= {{bucket_1_q0[10:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_692 <= {{bucket_1_q0[10:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        trunc_ln70_11_reg_1797 <= trunc_ln70_11_fu_1147_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        trunc_ln70_15_reg_1830 <= trunc_ln70_15_fu_1221_p1;
        trunc_ln72_8_reg_1826 <= trunc_ln72_8_fu_1213_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        trunc_ln70_4_reg_1728 <= trunc_ln70_4_fu_996_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        trunc_ln70_9_reg_1765 <= trunc_ln70_9_fu_1094_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_0_address0_local = zext_ln72_15_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_0_address0_local = zext_ln72_14_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_0_address0_local = zext_ln72_13_fu_1394_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_0_address0_local = zext_ln72_12_fu_1375_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_0_address0_local = zext_ln72_11_fu_1369_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        a_0_address0_local = zext_ln72_10_fu_1319_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        a_0_address0_local = zext_ln72_9_fu_1279_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        a_0_address0_local = zext_ln72_8_fu_1252_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        a_0_address0_local = zext_ln72_7_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        a_0_address0_local = zext_ln72_6_fu_1207_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        a_0_address0_local = zext_ln72_5_fu_1176_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        a_0_address0_local = zext_ln72_4_fu_1151_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        a_0_address0_local = zext_ln72_3_fu_1137_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        a_0_address0_local = zext_ln72_2_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_0_address0_local = zext_ln72_1_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_0_address0_local = zext_ln72_fu_937_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage22_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_0_d0_local = b_1_load_7_reg_1694_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_0_d0_local = b_0_load_7_reg_1687;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_0_d0_local = b_1_load_6_reg_1647;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_0_d0_local = b_0_load_6_reg_1640;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_0_d0_local = b_1_load_5_reg_1680;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        a_0_d0_local = b_0_load_5_reg_1673;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        a_0_d0_local = b_1_load_4_reg_1623;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        a_0_d0_local = b_0_load_4_reg_1616;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        a_0_d0_local = b_1_load_3_reg_1558;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        a_0_d0_local = b_0_load_3_reg_1551;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        a_0_d0_local = b_1_load_2_reg_1515;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        a_0_d0_local = b_0_load_2_reg_1508;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        a_0_d0_local = b_1_load_1_reg_1544;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        a_0_d0_local = b_0_load_1_reg_1537;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_0_d0_local = b_1_load_reg_1491;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_0_d0_local = b_0_load_reg_1484;
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln72_11_fu_1365_p1 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln72_10_fu_1315_p1 == 1'd0) & (tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((trunc_ln72_9_fu_1275_p1 == 1'd0) & (tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((trunc_ln72_3_fu_1133_p1 == 1'd0) & (tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_1451 == 1'd0) & (trunc_ln72_2_fu_1080_p1 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_1451 == 1'd0) & (trunc_ln72_1_fu_982_p1 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1451 == 1'd0)& (1'b0 == ap_block_pp0_stage17_11001) & (trunc_ln72_7_reg_1812 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_4_reg_1716 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (trunc_ln72_8_reg_1826 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln72_5_reg_1753 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_reg_1664 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (trunc_ln72_6_reg_1785 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage5_11001)& (trunc_ln72_15_reg_1896 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln72_12_reg_1850 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln72_13_reg_1867 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln72_14_reg_1884 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_1_address0_local = zext_ln72_15_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_1_address0_local = zext_ln72_14_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_1_address0_local = zext_ln72_13_fu_1394_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_1_address0_local = zext_ln72_12_fu_1375_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_1_address0_local = zext_ln72_11_fu_1369_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        a_1_address0_local = zext_ln72_10_fu_1319_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        a_1_address0_local = zext_ln72_9_fu_1279_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        a_1_address0_local = zext_ln72_8_fu_1252_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        a_1_address0_local = zext_ln72_7_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        a_1_address0_local = zext_ln72_6_fu_1207_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        a_1_address0_local = zext_ln72_5_fu_1176_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        a_1_address0_local = zext_ln72_4_fu_1151_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        a_1_address0_local = zext_ln72_3_fu_1137_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        a_1_address0_local = zext_ln72_2_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_1_address0_local = zext_ln72_1_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_1_address0_local = zext_ln72_fu_937_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage22_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_1_d0_local = b_1_load_7_reg_1694_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_1_d0_local = b_0_load_7_reg_1687;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_1_d0_local = b_1_load_6_reg_1647;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_1_d0_local = b_0_load_6_reg_1640;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_1_d0_local = b_1_load_5_reg_1680;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        a_1_d0_local = b_0_load_5_reg_1673;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        a_1_d0_local = b_1_load_4_reg_1623;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        a_1_d0_local = b_0_load_4_reg_1616;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        a_1_d0_local = b_1_load_3_reg_1558;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        a_1_d0_local = b_0_load_3_reg_1551;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        a_1_d0_local = b_1_load_2_reg_1515;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        a_1_d0_local = b_0_load_2_reg_1508;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        a_1_d0_local = b_1_load_1_reg_1544;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        a_1_d0_local = b_0_load_1_reg_1537;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_1_d0_local = b_1_load_reg_1491;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_1_d0_local = b_0_load_reg_1484;
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln72_11_fu_1365_p1 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln72_10_fu_1315_p1 == 1'd1) & (tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((trunc_ln72_9_fu_1275_p1 == 1'd1) & (tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((trunc_ln72_3_fu_1133_p1 == 1'd1) & (tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_1451 == 1'd0) & (trunc_ln72_2_fu_1080_p1 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_1451 == 1'd0) & (trunc_ln72_1_fu_982_p1 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1451 == 1'd0)& (1'b0 == ap_block_pp0_stage17_11001) & (trunc_ln72_7_reg_1812 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_4_reg_1716 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (trunc_ln72_8_reg_1826 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (trunc_ln72_5_reg_1753 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_reg_1664 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (trunc_ln72_6_reg_1785 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage5_11001)& (trunc_ln72_15_reg_1896 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln72_12_reg_1850 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln72_13_reg_1867 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln72_14_reg_1884 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1451 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_blockID_1 = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_1 = blockID_fu_92;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            b_0_address0_local = zext_ln70_7_fu_900_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            b_0_address0_local = zext_ln70_6_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_0_address0_local = zext_ln70_3_fu_790_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_0_address0_local = zext_ln70_2_fu_760_p1;
        end else begin
            b_0_address0_local = 'bx;
        end
    end else begin
        b_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            b_0_address1_local = zext_ln70_5_fu_887_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            b_0_address1_local = zext_ln70_4_fu_821_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_0_address1_local = zext_ln70_1_fu_777_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_0_address1_local = zext_ln70_fu_736_p1;
        end else begin
            b_0_address1_local = 'bx;
        end
    end else begin
        b_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_0_ce0_local = 1'b1;
    end else begin
        b_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_0_ce1_local = 1'b1;
    end else begin
        b_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            b_1_address0_local = zext_ln70_7_fu_900_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            b_1_address0_local = zext_ln70_6_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_1_address0_local = zext_ln70_3_fu_790_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_1_address0_local = zext_ln70_2_fu_760_p1;
        end else begin
            b_1_address0_local = 'bx;
        end
    end else begin
        b_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            b_1_address1_local = zext_ln70_5_fu_887_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            b_1_address1_local = zext_ln70_4_fu_821_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_1_address1_local = zext_ln70_1_fu_777_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_1_address1_local = zext_ln70_fu_736_p1;
        end else begin
            b_1_address1_local = 'bx;
        end
    end else begin
        b_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_1_ce0_local = 1'b1;
    end else begin
        b_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_1_ce1_local = 1'b1;
    end else begin
        b_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_address0_local = bucket_0_addr_7_reg_1879;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = zext_ln72_27_fu_1356_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        bucket_0_address0_local = bucket_0_addr_6_reg_1862;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        bucket_0_address0_local = zext_ln72_26_fu_1306_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        bucket_0_address0_local = bucket_0_addr_5_reg_1845;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        bucket_0_address0_local = zext_ln72_25_fu_1266_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        bucket_0_address0_local = bucket_0_addr_4_reg_1816;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        bucket_0_address0_local = zext_ln72_24_fu_1194_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        bucket_0_address0_local = bucket_0_addr_3_reg_1780;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        bucket_0_address0_local = zext_ln72_19_fu_1117_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_0_address0_local = bucket_0_addr_2_reg_1743;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_0_address0_local = zext_ln72_18_fu_1041_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_0_address0_local = bucket_0_addr_1_reg_1711;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_0_address0_local = zext_ln72_17_fu_965_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_0_address0_local = bucket_0_addr_reg_1606;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = zext_ln72_16_fu_867_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage2)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_1_address0_local = bucket_1_addr_7_reg_1891;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address0_local = zext_ln72_31_fu_1389_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address0_local = bucket_1_addr_6_reg_1874;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        bucket_1_address0_local = zext_ln72_30_fu_1333_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        bucket_1_address0_local = bucket_1_addr_5_reg_1857;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        bucket_1_address0_local = zext_ln72_29_fu_1293_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        bucket_1_address0_local = bucket_1_addr_4_reg_1835;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        bucket_1_address0_local = zext_ln72_28_fu_1239_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        bucket_1_address0_local = bucket_1_addr_3_reg_1802;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        bucket_1_address0_local = zext_ln72_23_fu_1163_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        bucket_1_address0_local = bucket_1_addr_2_reg_1770;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_1_address0_local = zext_ln72_22_fu_1104_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_1_address0_local = bucket_1_addr_1_reg_1733;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_1_address0_local = zext_ln72_21_fu_1006_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_1_address0_local = bucket_1_addr_reg_1706;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_address0_local = zext_ln72_20_fu_932_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage22_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_1451 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
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
assign add_ln68_fu_1338_p2 = (blockID_1_reg_1443 + 10'd4);
assign add_ln70_1_fu_950_p2 = (zext_ln68_reg_1599 + shl_ln70_2_fu_943_p3);
assign add_ln70_2_fu_1026_p2 = (zext_ln68_reg_1599 + shl_ln70_3_fu_1019_p3);
assign add_ln70_3_fu_1053_p2 = (zext_ln68_reg_1599 + shl_ln70_4_fu_1046_p3);
assign add_ln70_fu_851_p2 = (zext_ln68_fu_841_p1 + shl_ln70_1_fu_844_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
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
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign ashr_ln70_10_fu_1143_p2 = $signed(b_0_load_5_reg_1673) >>> exp_cast21_reg_1423;
assign ashr_ln70_11_fu_1199_p2 = $signed(b_1_load_5_reg_1680) >>> exp_cast21_reg_1423;
assign ashr_ln70_12_fu_1125_p2 = $signed(b_0_load_6_reg_1640) >>> exp_cast21_reg_1423;
assign ashr_ln70_13_fu_1168_p2 = $signed(b_1_load_6_reg_1647) >>> exp_cast21_reg_1423;
assign ashr_ln70_14_fu_1217_p2 = $signed(b_0_load_7_reg_1687) >>> exp_cast21_reg_1423;
assign ashr_ln70_15_fu_1244_p2 = $signed(b_1_load_7_reg_1694) >>> exp_cast21_reg_1423;
assign ashr_ln70_1_fu_872_p2 = $signed(b_1_load_reg_1491) >>> exp_cast21_reg_1423;
assign ashr_ln70_2_fu_918_p2 = $signed(b_0_load_1_reg_1537) >>> exp_cast21_reg_1423;
assign ashr_ln70_3_fu_992_p2 = $signed(b_1_load_1_reg_1544) >>> exp_cast21_reg_1423;
assign ashr_ln70_4_fu_910_p2 = $signed(b_0_load_2_reg_1508) >>> exp_cast21_reg_1423;
assign ashr_ln70_5_fu_974_p2 = $signed(b_1_load_2_reg_1515) >>> exp_cast21_reg_1423;
assign ashr_ln70_6_fu_1011_p2 = $signed(b_0_load_3_reg_1551) >>> exp_cast21_reg_1423;
assign ashr_ln70_7_fu_1072_p2 = $signed(b_1_load_3_reg_1558) >>> exp_cast21_reg_1423;
assign ashr_ln70_8_fu_1090_p2 = $signed(b_0_load_4_reg_1616) >>> exp_cast21_reg_1423;
assign ashr_ln70_9_fu_1109_p2 = $signed(b_1_load_4_reg_1623) >>> exp_cast21_reg_1423;
assign ashr_ln70_fu_796_p2 = $signed(b_0_load_reg_1484) >>> exp_cast21_reg_1423;
assign b_0_address0 = b_0_address0_local;
assign b_0_address1 = b_0_address1_local;
assign b_0_ce0 = b_0_ce0_local;
assign b_0_ce1 = b_0_ce1_local;
assign b_1_address0 = b_1_address0_local;
assign b_1_address1 = b_1_address1_local;
assign b_1_ce0 = b_1_ce0_local;
assign b_1_ce1 = b_1_ce1_local;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_d0 = grp_fu_696_p2;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_d0 = grp_fu_703_p2;
assign bucket_1_we0 = bucket_1_we0_local;
assign exp_cast21_fu_710_p1 = exp;
assign grp_fu_652_p4 = {{bucket_0_q0[10:1]}};
assign grp_fu_696_p2 = (reg_672 + 32'd1);
assign grp_fu_703_p2 = (reg_680 + 32'd1);
assign lshr_ln72_11_fu_1098_p3 = {{trunc_ln70_7_reg_1738}, {tmp_5_reg_1465}};
assign lshr_ln72_13_fu_1157_p3 = {{trunc_ln70_8_reg_1757}, {tmp_5_reg_1465}};
assign lshr_ln72_15_fu_1186_p4 = {{{trunc_ln70_9_reg_1765}, {tmp_6_reg_1565}}, {1'd1}};
assign lshr_ln72_17_fu_1258_p4 = {{{trunc_ln70_10_reg_1775}, {tmp_6_reg_1565}}, {1'd1}};
assign lshr_ln72_19_fu_1298_p4 = {{{trunc_ln70_11_reg_1797}, {tmp_6_reg_1565}}, {1'd1}};
assign lshr_ln72_21_fu_1348_p4 = {{{trunc_ln70_12_reg_1821}, {tmp_6_reg_1565}}, {1'd1}};
assign lshr_ln72_23_fu_1231_p4 = {{{trunc_ln70_13_reg_1789}, {tmp_6_reg_1565}}, {1'd1}};
assign lshr_ln72_25_fu_1285_p4 = {{{trunc_ln70_14_reg_1807}, {tmp_6_reg_1565}}, {1'd1}};
assign lshr_ln72_27_fu_1325_p4 = {{{trunc_ln70_15_reg_1830}, {tmp_6_reg_1565}}, {1'd1}};
assign lshr_ln72_29_fu_1381_p4 = {{{trunc_ln70_16_reg_1840}, {tmp_6_reg_1565}}, {1'd1}};
assign lshr_ln72_2_fu_955_p4 = {{add_ln70_1_fu_950_p2[10:1]}};
assign lshr_ln72_4_fu_1031_p4 = {{add_ln70_2_fu_1026_p2[10:1]}};
assign lshr_ln72_8_fu_926_p3 = {{trunc_ln70_5_reg_1668}, {tmp_5_reg_1465}};
assign lshr_ln72_s_fu_1000_p3 = {{trunc_ln70_6_reg_1720}, {tmp_5_reg_1465}};
assign lshr_ln_fu_857_p4 = {{add_ln70_fu_851_p2[10:1]}};
assign or_ln70_1_fu_783_p3 = {{tmp_5_reg_1465}, {2'd3}};
assign or_ln70_2_fu_813_p3 = {{tmp_6_fu_804_p4}, {3'd4}};
assign or_ln70_3_fu_880_p3 = {{tmp_6_reg_1565}, {3'd5}};
assign or_ln70_4_fu_893_p3 = {{tmp_6_reg_1565}, {3'd7}};
assign or_ln_fu_769_p3 = {{trunc_ln70_fu_766_p1}, {1'd1}};
assign shl_ln70_1_fu_844_p3 = {{trunc_ln70_1_reg_1532}, {9'd0}};
assign shl_ln70_2_fu_943_p3 = {{trunc_ln70_2_reg_1611}, {9'd0}};
assign shl_ln70_3_fu_1019_p3 = {{trunc_ln70_3_reg_1701}, {9'd0}};
assign shl_ln70_4_fu_1046_p3 = {{trunc_ln70_4_reg_1728}, {9'd0}};
assign shl_ln70_5_fu_752_p3 = {{tmp_5_fu_742_p4}, {2'd2}};
assign shl_ln70_6_fu_827_p3 = {{tmp_6_fu_804_p4}, {3'd6}};
assign shl_ln70_fu_730_p2 = ap_sig_allocacmp_blockID_1 << 10'd1;
assign tmp_5_fu_742_p4 = {{ap_sig_allocacmp_blockID_1[8:1]}};
assign tmp_6_fu_804_p4 = {{blockID_1_reg_1443[8:2]}};
assign trunc_ln70_10_fu_1113_p1 = ashr_ln70_9_fu_1109_p2[1:0];
assign trunc_ln70_11_fu_1147_p1 = ashr_ln70_10_fu_1143_p2[1:0];
assign trunc_ln70_12_fu_1203_p1 = ashr_ln70_11_fu_1199_p2[1:0];
assign trunc_ln70_13_fu_1129_p1 = ashr_ln70_12_fu_1125_p2[1:0];
assign trunc_ln70_14_fu_1172_p1 = ashr_ln70_13_fu_1168_p2[1:0];
assign trunc_ln70_15_fu_1221_p1 = ashr_ln70_14_fu_1217_p2[1:0];
assign trunc_ln70_16_fu_1248_p1 = ashr_ln70_15_fu_1244_p2[1:0];
assign trunc_ln70_1_fu_800_p1 = ashr_ln70_fu_796_p2[1:0];
assign trunc_ln70_2_fu_876_p1 = ashr_ln70_1_fu_872_p2[1:0];
assign trunc_ln70_3_fu_922_p1 = ashr_ln70_2_fu_918_p2[1:0];
assign trunc_ln70_4_fu_996_p1 = ashr_ln70_3_fu_992_p2[1:0];
assign trunc_ln70_5_fu_914_p1 = ashr_ln70_4_fu_910_p2[1:0];
assign trunc_ln70_6_fu_978_p1 = ashr_ln70_5_fu_974_p2[1:0];
assign trunc_ln70_7_fu_1015_p1 = ashr_ln70_6_fu_1011_p2[1:0];
assign trunc_ln70_8_fu_1076_p1 = ashr_ln70_7_fu_1072_p2[1:0];
assign trunc_ln70_9_fu_1094_p1 = ashr_ln70_8_fu_1090_p2[1:0];
assign trunc_ln70_fu_766_p1 = blockID_1_reg_1443[8:0];
assign trunc_ln72_10_fu_1315_p1 = bucket_0_q0[0:0];
assign trunc_ln72_11_fu_1365_p1 = bucket_0_q0[0:0];
assign trunc_ln72_12_fu_1271_p1 = bucket_1_q0[0:0];
assign trunc_ln72_13_fu_1311_p1 = bucket_1_q0[0:0];
assign trunc_ln72_14_fu_1361_p1 = bucket_1_q0[0:0];
assign trunc_ln72_15_fu_1400_p1 = bucket_1_q0[0:0];
assign trunc_ln72_1_fu_982_p1 = bucket_0_q0[0:0];
assign trunc_ln72_2_fu_1080_p1 = bucket_0_q0[0:0];
assign trunc_ln72_3_fu_1133_p1 = bucket_0_q0[0:0];
assign trunc_ln72_4_fu_970_p1 = bucket_1_q0[0:0];
assign trunc_ln72_5_fu_1068_p1 = bucket_1_q0[0:0];
assign trunc_ln72_6_fu_1121_p1 = bucket_1_q0[0:0];
assign trunc_ln72_7_fu_1182_p1 = bucket_1_q0[0:0];
assign trunc_ln72_8_fu_1213_p1 = bucket_0_q0[0:0];
assign trunc_ln72_9_fu_1275_p1 = bucket_0_q0[0:0];
assign trunc_ln72_fu_906_p1 = bucket_0_q0[0:0];
assign zext_ln68_fu_841_p1 = blockID_1_reg_1443;
assign zext_ln70_1_fu_777_p1 = or_ln_fu_769_p3;
assign zext_ln70_2_fu_760_p1 = shl_ln70_5_fu_752_p3;
assign zext_ln70_3_fu_790_p1 = or_ln70_1_fu_783_p3;
assign zext_ln70_4_fu_821_p1 = or_ln70_2_fu_813_p3;
assign zext_ln70_5_fu_887_p1 = or_ln70_3_fu_880_p3;
assign zext_ln70_6_fu_835_p1 = shl_ln70_6_fu_827_p3;
assign zext_ln70_7_fu_900_p1 = or_ln70_4_fu_893_p3;
assign zext_ln70_fu_736_p1 = shl_ln70_fu_730_p2;
assign zext_ln72_10_fu_1319_p1 = grp_fu_652_p4;
assign zext_ln72_11_fu_1369_p1 = grp_fu_652_p4;
assign zext_ln72_12_fu_1375_p1 = reg_684;
assign zext_ln72_13_fu_1394_p1 = reg_688;
assign zext_ln72_14_fu_1404_p1 = reg_692;
assign zext_ln72_15_fu_1410_p1 = reg_684;
assign zext_ln72_16_fu_867_p1 = lshr_ln_fu_857_p4;
assign zext_ln72_17_fu_965_p1 = lshr_ln72_2_fu_955_p4;
assign zext_ln72_18_fu_1041_p1 = lshr_ln72_4_fu_1031_p4;
assign zext_ln72_19_fu_1117_p1 = lshr_ln72_6_reg_1748;
assign zext_ln72_1_fu_986_p1 = grp_fu_652_p4;
assign zext_ln72_20_fu_932_p1 = lshr_ln72_8_fu_926_p3;
assign zext_ln72_21_fu_1006_p1 = lshr_ln72_s_fu_1000_p3;
assign zext_ln72_22_fu_1104_p1 = lshr_ln72_11_fu_1098_p3;
assign zext_ln72_23_fu_1163_p1 = lshr_ln72_13_fu_1157_p3;
assign zext_ln72_24_fu_1194_p1 = lshr_ln72_15_fu_1186_p4;
assign zext_ln72_25_fu_1266_p1 = lshr_ln72_17_fu_1258_p4;
assign zext_ln72_26_fu_1306_p1 = lshr_ln72_19_fu_1298_p4;
assign zext_ln72_27_fu_1356_p1 = lshr_ln72_21_fu_1348_p4;
assign zext_ln72_28_fu_1239_p1 = lshr_ln72_23_fu_1231_p4;
assign zext_ln72_29_fu_1293_p1 = lshr_ln72_25_fu_1285_p4;
assign zext_ln72_2_fu_1084_p1 = grp_fu_652_p4;
assign zext_ln72_30_fu_1333_p1 = lshr_ln72_27_fu_1325_p4;
assign zext_ln72_31_fu_1389_p1 = lshr_ln72_29_fu_1381_p4;
assign zext_ln72_3_fu_1137_p1 = grp_fu_652_p4;
assign zext_ln72_4_fu_1151_p1 = reg_684;
assign zext_ln72_5_fu_1176_p1 = reg_688;
assign zext_ln72_6_fu_1207_p1 = reg_692;
assign zext_ln72_7_fu_1225_p1 = reg_684;
assign zext_ln72_8_fu_1252_p1 = reg_676;
assign zext_ln72_9_fu_1279_p1 = grp_fu_652_p4;
assign zext_ln72_fu_937_p1 = reg_676;
always @ (posedge ap_clk) begin
    exp_cast21_reg_1423[31:5] <= 27'b000000000000000000000000000;
    zext_ln68_reg_1599[10] <= 1'b0;
    bucket_0_addr_4_reg_1816[0] <= 1'b1;
    bucket_1_addr_4_reg_1835[0] <= 1'b1;
    bucket_0_addr_5_reg_1845[0] <= 1'b1;
    bucket_1_addr_5_reg_1857[0] <= 1'b1;
    bucket_0_addr_6_reg_1862[0] <= 1'b1;
    bucket_1_addr_6_reg_1874[0] <= 1'b1;
    bucket_0_addr_7_reg_1879[0] <= 1'b1;
    bucket_1_addr_7_reg_1891[0] <= 1'b1;
end
endmodule 
