
module bbgemm_bbgemm_Pipeline_loopi_loopk (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,kk,zext_ln16,m1_address0,m1_ce0,m1_q0,m1_address1,m1_ce1,m1_q1,jj,m2_address0,m2_ce0,m2_q0,m2_address1,m2_ce1,m2_q1,zext_ln15,prod_address0,prod_ce0,prod_we0,prod_d0,prod_q0,prod_address1,prod_ce1,prod_we1,prod_d1,prod_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage9 = 16'd64;
parameter    ap_ST_fsm_pp0_stage10 = 16'd128;
parameter    ap_ST_fsm_pp0_stage11 = 16'd256;
parameter    ap_ST_fsm_pp0_stage12 = 16'd512;
parameter    ap_ST_fsm_pp0_stage13 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage14 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage15 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage6 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage7 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage8 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] kk;
input  [5:0] zext_ln16;
output  [11:0] m1_address0;
output   m1_ce0;
input  [63:0] m1_q0;
output  [11:0] m1_address1;
output   m1_ce1;
input  [63:0] m1_q1;
input  [6:0] jj;
output  [11:0] m2_address0;
output   m2_ce0;
input  [63:0] m2_q0;
output  [11:0] m2_address1;
output   m2_ce1;
input  [63:0] m2_q1;
input  [5:0] zext_ln15;
output  [11:0] prod_address0;
output   prod_ce0;
output   prod_we0;
output  [63:0] prod_d0;
input  [63:0] prod_q0;
output  [11:0] prod_address1;
output   prod_ce1;
output   prod_we1;
output  [63:0] prod_d1;
input  [63:0] prod_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln17_reg_1449;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_449;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_453;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_458;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] grp_fu_445_p2;
reg   [63:0] reg_462;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] grp_fu_441_p2;
reg   [63:0] reg_467;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_11001;
wire   [11:0] zext_ln15_cast_fu_472_p1;
reg   [11:0] zext_ln15_cast_reg_1431;
wire   [0:0] icmp_ln17_fu_494_p2;
reg   [0:0] icmp_ln17_reg_1449_pp0_iter1_reg;
wire   [3:0] select_ln11_fu_520_p3;
reg   [3:0] select_ln11_reg_1453;
wire   [0:0] first_iter_0_fu_542_p2;
reg   [0:0] first_iter_0_reg_1459;
wire   [5:0] empty_20_fu_548_p1;
reg   [5:0] empty_20_reg_1463;
wire   [2:0] tmp_fu_552_p4;
reg   [2:0] tmp_reg_1477;
wire   [1:0] tmp_1_fu_566_p4;
reg   [1:0] tmp_1_reg_1495;
reg   [4:0] tmp_12_reg_1524;
reg   [3:0] tmp_13_reg_1530;
reg   [0:0] tmp_14_reg_1538;
reg   [11:0] prod_addr_reg_1543;
reg   [11:0] prod_addr_reg_1543_pp0_iter1_reg;
reg   [11:0] prod_addr_1_reg_1549;
reg   [11:0] prod_addr_1_reg_1549_pp0_iter1_reg;
reg   [63:0] prod_load_reg_1575;
reg   [63:0] prod_load_1_reg_1580;
reg   [11:0] prod_addr_2_reg_1585;
reg   [11:0] prod_addr_2_reg_1585_pp0_iter1_reg;
reg   [11:0] prod_addr_3_reg_1590;
reg   [11:0] prod_addr_3_reg_1590_pp0_iter1_reg;
reg   [63:0] m1_load_reg_1595;
reg   [63:0] m2_load_3_reg_1600;
wire   [63:0] temp_x_1_fu_835_p1;
reg   [63:0] temp_x_1_reg_1615;
reg   [63:0] prod_load_2_reg_1620;
reg   [63:0] prod_load_3_reg_1625;
reg   [11:0] prod_addr_4_reg_1630;
reg   [11:0] prod_addr_4_reg_1630_pp0_iter1_reg;
reg   [11:0] prod_addr_5_reg_1635;
reg   [11:0] prod_addr_5_reg_1635_pp0_iter1_reg;
wire   [63:0] temp_x_fu_873_p1;
reg   [63:0] temp_x_reg_1640;
wire   [63:0] bitcast_ln23_fu_877_p1;
reg   [63:0] m2_load_5_reg_1650;
reg   [63:0] prod_load_4_reg_1665;
reg   [63:0] prod_load_5_reg_1670;
reg   [11:0] prod_addr_6_reg_1675;
reg   [11:0] prod_addr_6_reg_1675_pp0_iter1_reg;
reg   [11:0] prod_addr_7_reg_1680;
reg   [11:0] prod_addr_7_reg_1680_pp0_iter1_reg;
reg   [11:0] prod_addr_7_reg_1680_pp0_iter2_reg;
wire   [63:0] bitcast_ln23_1_fu_944_p1;
reg   [63:0] m2_load_7_reg_1690;
reg   [63:0] prod_load_6_reg_1705;
reg   [63:0] prod_load_7_reg_1710;
wire   [63:0] bitcast_ln23_2_fu_981_p1;
reg   [63:0] m2_load_9_reg_1720;
reg   [63:0] mul_reg_1735;
wire   [63:0] bitcast_ln23_6_fu_1030_p1;
reg   [63:0] mul_1_reg_1750;
wire   [63:0] bitcast_ln23_7_fu_1047_p1;
reg   [63:0] mul_2_reg_1765;
wire   [63:0] bitcast_ln23_8_fu_1063_p1;
reg   [63:0] mul_3_reg_1780;
wire   [63:0] bitcast_ln23_9_fu_1080_p1;
reg   [63:0] mul_4_reg_1795;
wire   [63:0] bitcast_ln23_10_fu_1096_p1;
reg   [63:0] mul_5_reg_1810;
wire   [63:0] bitcast_ln23_11_fu_1112_p1;
reg   [63:0] mul_6_reg_1825;
wire   [63:0] bitcast_ln23_12_fu_1128_p1;
reg   [0:0] tmp_16_reg_1835;
reg   [0:0] tmp_16_reg_1835_pp0_iter1_reg;
wire   [63:0] bitcast_ln23_13_fu_1162_p1;
wire   [63:0] bitcast_ln23_3_fu_1166_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] m2_load_10_reg_1854;
reg   [63:0] m2_load_11_reg_1859;
wire   [63:0] bitcast_ln23_4_fu_1206_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] m2_load_12_reg_1879;
reg   [63:0] m2_load_13_reg_1884;
wire   [63:0] bitcast_ln23_5_fu_1247_p1;
reg   [63:0] m2_load_14_reg_1904;
reg   [63:0] m2_load_15_reg_1909;
reg   [63:0] mul_8_reg_1919;
wire   [63:0] bitcast_ln23_14_fu_1255_p1;
reg   [63:0] add26_s_reg_1929;
reg   [63:0] mul_9_reg_1934;
wire   [63:0] bitcast_ln23_15_fu_1259_p1;
reg   [63:0] add26_2_reg_1944;
reg   [63:0] mul_10_reg_1949;
reg   [63:0] add26_3_reg_1954;
reg   [63:0] mul_11_reg_1959;
reg   [63:0] add26_4_reg_1964;
reg   [63:0] mul_12_reg_1969;
reg   [63:0] add26_5_reg_1974;
reg   [63:0] mul_13_reg_1979;
reg   [63:0] add26_6_reg_1984;
reg   [63:0] mul_14_reg_1989;
reg   [63:0] add26_7_reg_1994;
wire   [63:0] bitcast_ln24_15_fu_1333_p1;
reg   [63:0] bitcast_ln24_15_reg_1999;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage5_subdone;
wire   [63:0] zext_ln23_fu_586_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln23_1_fu_627_p1;
wire   [63:0] p_cast_fu_676_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] p_cast7_fu_693_p1;
wire   [63:0] zext_ln21_fu_713_p1;
wire   [63:0] zext_ln23_2_fu_727_p1;
wire   [63:0] zext_ln23_3_fu_741_p1;
wire   [63:0] zext_ln21_1_fu_765_p1;
wire   [63:0] p_cast8_fu_782_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] p_cast9_fu_799_p1;
wire   [63:0] zext_ln23_4_fu_813_p1;
wire   [63:0] zext_ln23_5_fu_830_p1;
wire   [63:0] p_cast10_fu_851_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast11_fu_868_p1;
wire   [63:0] zext_ln23_6_fu_891_p1;
wire   [63:0] zext_ln23_7_fu_905_p1;
wire   [63:0] p_cast12_fu_922_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln24_fu_939_p1;
wire   [63:0] zext_ln23_8_fu_958_p1;
wire   [63:0] zext_ln23_9_fu_976_p1;
wire   [63:0] zext_ln23_10_fu_999_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln23_11_fu_1017_p1;
wire   [63:0] zext_ln23_12_fu_1183_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln23_13_fu_1201_p1;
wire   [63:0] zext_ln23_14_fu_1224_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln23_15_fu_1242_p1;
reg   [3:0] k_fu_138;
wire   [3:0] add_ln18_fu_1132_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_load;
reg   [6:0] i_fu_142;
wire   [6:0] select_ln17_fu_534_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [8:0] indvar_flatten_fu_146;
wire   [8:0] add_ln17_fu_500_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [63:0] empty_fu_150;
wire   [63:0] bitcast_ln24_fu_1022_p1;
wire    ap_block_pp0_stage10;
reg   [63:0] empty_13_fu_154;
wire   [63:0] bitcast_ln24_1_fu_1035_p1;
wire    ap_block_pp0_stage11;
reg   [63:0] empty_14_fu_158;
wire   [63:0] bitcast_ln24_2_fu_1051_p1;
wire    ap_block_pp0_stage12;
reg   [63:0] empty_15_fu_162;
wire   [63:0] bitcast_ln24_3_fu_1068_p1;
wire    ap_block_pp0_stage13;
reg   [63:0] empty_16_fu_166;
wire   [63:0] bitcast_ln24_4_fu_1084_p1;
wire    ap_block_pp0_stage14;
reg   [63:0] empty_17_fu_170;
wire   [63:0] bitcast_ln24_5_fu_1100_p1;
wire    ap_block_pp0_stage15;
reg   [63:0] empty_18_fu_174;
wire   [63:0] bitcast_ln24_6_fu_1116_p1;
reg   [63:0] empty_19_fu_178;
wire   [63:0] bitcast_ln24_7_fu_1150_p1;
reg    m2_ce1_local;
reg   [11:0] m2_address1_local;
reg    m2_ce0_local;
reg   [11:0] m2_address0_local;
reg    prod_ce1_local;
reg   [11:0] prod_address1_local;
reg    prod_ce0_local;
reg   [11:0] prod_address0_local;
reg    prod_we0_local;
reg   [63:0] prod_d0_local;
wire   [63:0] bitcast_ln24_8_fu_1268_p1;
reg    prod_we1_local;
reg   [63:0] prod_d1_local;
wire   [63:0] bitcast_ln24_9_fu_1278_p1;
wire   [63:0] bitcast_ln24_10_fu_1288_p1;
wire   [63:0] bitcast_ln24_11_fu_1298_p1;
wire   [63:0] bitcast_ln24_12_fu_1308_p1;
wire   [63:0] bitcast_ln24_13_fu_1318_p1;
wire   [63:0] bitcast_ln24_14_fu_1328_p1;
reg    m1_ce1_local;
reg    m1_ce0_local;
reg   [63:0] grp_fu_441_p0;
reg   [63:0] grp_fu_441_p1;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_445_p0;
reg   [63:0] grp_fu_445_p1;
wire   [0:0] tmp_2_fu_512_p3;
wire   [6:0] add_ln17_1_fu_528_p2;
wire   [11:0] add_ln1_fu_576_p4;
wire   [0:0] trunc_ln20_fu_562_p1;
wire   [6:0] tmp_10_fu_591_p3;
wire   [6:0] or_ln23_fu_599_p2;
wire   [5:0] tmp_11_fu_605_p4;
wire   [11:0] or_ln23_s_fu_615_p5;
wire   [11:0] tmp_3_fu_670_p3;
wire   [11:0] tmp_5_fu_681_p3;
wire   [11:0] empty_21_fu_688_p2;
wire   [11:0] zext_ln18_fu_698_p1;
wire   [11:0] add_ln_fu_701_p3;
wire   [11:0] add_ln21_fu_707_p2;
wire   [11:0] or_ln23_1_fu_718_p5;
wire   [11:0] or_ln23_2_fu_732_p5;
wire   [2:0] tmp_15_fu_746_p4;
wire   [11:0] add_ln21_2_fu_755_p5;
wire   [11:0] tmp_6_fu_770_p3;
wire   [11:0] empty_22_fu_777_p2;
wire   [11:0] tmp_7_fu_787_p3;
wire   [11:0] empty_23_fu_794_p2;
wire   [11:0] or_ln23_3_fu_804_p5;
wire   [11:0] or_ln23_4_fu_818_p7;
wire   [11:0] tmp_8_fu_839_p3;
wire   [11:0] empty_24_fu_846_p2;
wire   [11:0] tmp_9_fu_856_p3;
wire   [11:0] empty_25_fu_863_p2;
wire   [11:0] or_ln23_5_fu_882_p5;
wire   [11:0] or_ln23_6_fu_896_p5;
wire   [11:0] tmp_s_fu_910_p3;
wire   [11:0] empty_26_fu_917_p2;
wire   [11:0] tmp_4_fu_927_p3;
wire   [11:0] empty_27_fu_934_p2;
wire   [11:0] add_ln2_fu_949_p5;
wire   [11:0] or_ln23_7_fu_963_p4;
wire   [11:0] add_ln23_fu_971_p2;
wire   [11:0] or_ln23_8_fu_986_p4;
wire   [11:0] add_ln23_1_fu_994_p2;
wire   [11:0] or_ln23_9_fu_1004_p4;
wire   [11:0] add_ln23_2_fu_1012_p2;
wire   [11:0] or_ln23_10_fu_1170_p4;
wire   [11:0] add_ln23_3_fu_1178_p2;
wire   [11:0] or_ln23_11_fu_1188_p4;
wire   [11:0] add_ln23_4_fu_1196_p2;
wire   [11:0] or_ln23_12_fu_1211_p4;
wire   [11:0] add_ln23_5_fu_1219_p2;
wire   [11:0] or_ln23_13_fu_1229_p4;
wire   [11:0] add_ln23_6_fu_1237_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage5;
reg    ap_idle_pp0_0to0;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1425;
reg    ap_condition_1429;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_138 = 4'd0;
#0 i_fu_142 = 7'd0;
#0 indvar_flatten_fu_146 = 9'd0;
#0 empty_fu_150 = 64'd0;
#0 empty_13_fu_154 = 64'd0;
#0 empty_14_fu_158 = 64'd0;
#0 empty_15_fu_162 = 64'd0;
#0 empty_16_fu_166 = 64'd0;
#0 empty_17_fu_170 = 64'd0;
#0 empty_18_fu_174 = 64'd0;
#0 empty_19_fu_178 = 64'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_441_p0),.din1(grp_fu_441_p1),.ce(1'b1),.dout(grp_fu_441_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_445_p0),.din1(grp_fu_445_p1),.ce(1'b1),.dout(grp_fu_445_p2));
bbgemm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage5) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        if ((1'b1 == ap_condition_1425)) begin
            empty_13_fu_154 <= bitcast_ln24_1_fu_1035_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_13_fu_154 <= grp_fu_441_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        if ((1'b1 == ap_condition_1425)) begin
            empty_14_fu_158 <= bitcast_ln24_2_fu_1051_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_14_fu_158 <= grp_fu_441_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        if ((1'b1 == ap_condition_1425)) begin
            empty_15_fu_162 <= bitcast_ln24_3_fu_1068_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_15_fu_162 <= grp_fu_441_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        if ((1'b1 == ap_condition_1425)) begin
            empty_16_fu_166 <= bitcast_ln24_4_fu_1084_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_16_fu_166 <= grp_fu_441_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        if ((1'b1 == ap_condition_1425)) begin
            empty_17_fu_170 <= bitcast_ln24_5_fu_1100_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_17_fu_170 <= grp_fu_441_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        if ((1'b1 == ap_condition_1425)) begin
            empty_18_fu_174 <= bitcast_ln24_6_fu_1116_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_18_fu_174 <= grp_fu_441_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((1'b1 == ap_condition_1429)) begin
            empty_19_fu_178 <= bitcast_ln24_7_fu_1150_p1;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            empty_19_fu_178 <= grp_fu_441_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        if ((1'b1 == ap_condition_1425)) begin
            empty_fu_150 <= bitcast_ln24_fu_1022_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_150 <= grp_fu_441_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln17_fu_494_p2 == 1'd0))) begin
            i_fu_142 <= select_ln17_fu_534_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_142 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln17_fu_494_p2 == 1'd0))) begin
            indvar_flatten_fu_146 <= add_ln17_fu_500_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_146 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_138 <= 4'd0;
    end else if (((icmp_ln17_reg_1449 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        k_fu_138 <= add_ln18_fu_1132_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_453 <= m2_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_453 <= m2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add26_2_reg_1944 <= grp_fu_441_p2;
        mul_10_reg_1949 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add26_3_reg_1954 <= grp_fu_441_p2;
        mul_11_reg_1959 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add26_4_reg_1964 <= grp_fu_441_p2;
        mul_12_reg_1969 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add26_5_reg_1974 <= grp_fu_441_p2;
        mul_13_reg_1979 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add26_6_reg_1984 <= grp_fu_441_p2;
        mul_14_reg_1989 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add26_7_reg_1994 <= grp_fu_441_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add26_s_reg_1929 <= grp_fu_441_p2;
        mul_9_reg_1934 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bitcast_ln24_15_reg_1999 <= bitcast_ln24_15_fu_1333_p1;
        empty_20_reg_1463 <= empty_20_fu_548_p1;
        first_iter_0_reg_1459 <= first_iter_0_fu_542_p2;
        icmp_ln17_reg_1449 <= icmp_ln17_fu_494_p2;
        icmp_ln17_reg_1449_pp0_iter1_reg <= icmp_ln17_reg_1449;
        select_ln11_reg_1453 <= select_ln11_fu_520_p3;
        tmp_12_reg_1524 <= {{or_ln23_fu_599_p2[6:2]}};
        tmp_13_reg_1530 <= {{or_ln23_fu_599_p2[6:3]}};
        tmp_14_reg_1538 <= or_ln23_fu_599_p2[32'd1];
        tmp_1_reg_1495 <= {{select_ln11_fu_520_p3[2:1]}};
        tmp_reg_1477 <= {{kk[5:3]}};
        zext_ln15_cast_reg_1431[5 : 0] <= zext_ln15_cast_fu_472_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m1_load_reg_1595 <= m1_q1;
        m2_load_3_reg_1600 <= m2_q0;
        prod_load_1_reg_1580 <= prod_q0;
        prod_load_reg_1575 <= prod_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        m2_load_10_reg_1854 <= m2_q1;
        m2_load_11_reg_1859 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        m2_load_12_reg_1879 <= m2_q1;
        m2_load_13_reg_1884 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        m2_load_14_reg_1904 <= m2_q1;
        m2_load_15_reg_1909 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m2_load_5_reg_1650 <= m2_q0;
        prod_load_2_reg_1620 <= prod_q0;
        prod_load_3_reg_1625 <= prod_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        m2_load_7_reg_1690 <= m2_q0;
        prod_load_4_reg_1665 <= prod_q0;
        prod_load_5_reg_1670 <= prod_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        m2_load_9_reg_1720 <= m2_q0;
        prod_load_6_reg_1705 <= prod_q0;
        prod_load_7_reg_1710 <= prod_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul_1_reg_1750 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul_2_reg_1765 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul_3_reg_1780 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul_4_reg_1795 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        mul_5_reg_1810 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        mul_6_reg_1825 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_8_reg_1919 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul_reg_1735 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_addr_1_reg_1549 <= p_cast7_fu_693_p1;
        prod_addr_1_reg_1549_pp0_iter1_reg <= prod_addr_1_reg_1549;
        prod_addr_reg_1543 <= p_cast_fu_676_p1;
        prod_addr_reg_1543_pp0_iter1_reg <= prod_addr_reg_1543;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_addr_2_reg_1585 <= p_cast8_fu_782_p1;
        prod_addr_2_reg_1585_pp0_iter1_reg <= prod_addr_2_reg_1585;
        prod_addr_3_reg_1590 <= p_cast9_fu_799_p1;
        prod_addr_3_reg_1590_pp0_iter1_reg <= prod_addr_3_reg_1590;
        temp_x_1_reg_1615 <= temp_x_1_fu_835_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_addr_4_reg_1630 <= p_cast10_fu_851_p1;
        prod_addr_4_reg_1630_pp0_iter1_reg <= prod_addr_4_reg_1630;
        prod_addr_5_reg_1635 <= p_cast11_fu_868_p1;
        prod_addr_5_reg_1635_pp0_iter1_reg <= prod_addr_5_reg_1635;
        temp_x_reg_1640 <= temp_x_fu_873_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_addr_6_reg_1675 <= p_cast12_fu_922_p1;
        prod_addr_6_reg_1675_pp0_iter1_reg <= prod_addr_6_reg_1675;
        prod_addr_7_reg_1680 <= zext_ln24_fu_939_p1;
        prod_addr_7_reg_1680_pp0_iter1_reg <= prod_addr_7_reg_1680;
        prod_addr_7_reg_1680_pp0_iter2_reg <= prod_addr_7_reg_1680_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_449 <= m2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_458 <= m2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_462 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_467 <= grp_fu_441_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tmp_16_reg_1835 <= add_ln18_fu_1132_p2[32'd3];
        tmp_16_reg_1835_pp0_iter1_reg <= tmp_16_reg_1835;
    end
end
always @ (*) begin
    if (((icmp_ln17_reg_1449 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln17_reg_1449_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter1_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_142;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_146;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_load = 4'd0;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_441_p0 = add26_7_reg_1994;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_441_p0 = add26_6_reg_1984;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_441_p0 = add26_5_reg_1974;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_441_p0 = add26_4_reg_1964;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_441_p0 = add26_3_reg_1954;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_441_p0 = add26_2_reg_1944;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_441_p0 = add26_s_reg_1929;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p0 = reg_467;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_441_p0 = empty_19_fu_178;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_441_p0 = empty_18_fu_174;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_441_p0 = empty_17_fu_170;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_441_p0 = empty_16_fu_166;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_441_p0 = empty_15_fu_162;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_441_p0 = empty_14_fu_158;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_441_p0 = empty_13_fu_154;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_441_p0 = empty_fu_150;
    end else begin
        grp_fu_441_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_441_p1 = mul_14_reg_1989;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_441_p1 = mul_13_reg_1979;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_441_p1 = mul_12_reg_1969;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_441_p1 = mul_11_reg_1959;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_441_p1 = mul_10_reg_1949;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_441_p1 = mul_9_reg_1934;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p1 = mul_8_reg_1919;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_441_p1 = reg_462;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_441_p1 = mul_6_reg_1825;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_441_p1 = mul_5_reg_1810;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_441_p1 = mul_4_reg_1795;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_441_p1 = mul_3_reg_1780;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_441_p1 = mul_2_reg_1765;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_441_p1 = mul_1_reg_1750;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_441_p1 = mul_reg_1735;
    end else begin
        grp_fu_441_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_445_p0 = temp_x_1_reg_1615;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_445_p0 = temp_x_reg_1640;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_445_p0 = temp_x_fu_873_p1;
    end else begin
        grp_fu_445_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_445_p1 = bitcast_ln23_15_fu_1259_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_445_p1 = bitcast_ln23_14_fu_1255_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_445_p1 = bitcast_ln23_5_fu_1247_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_445_p1 = bitcast_ln23_4_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_445_p1 = bitcast_ln23_3_fu_1166_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_445_p1 = bitcast_ln23_13_fu_1162_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_445_p1 = bitcast_ln23_12_fu_1128_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_445_p1 = bitcast_ln23_11_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_445_p1 = bitcast_ln23_10_fu_1096_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_445_p1 = bitcast_ln23_9_fu_1080_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_445_p1 = bitcast_ln23_8_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_445_p1 = bitcast_ln23_7_fu_1047_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_445_p1 = bitcast_ln23_6_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_445_p1 = bitcast_ln23_2_fu_981_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_445_p1 = bitcast_ln23_1_fu_944_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_445_p1 = bitcast_ln23_fu_877_p1;
    end else begin
        grp_fu_445_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_ce0_local = 1'b1;
    end else begin
        m1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_ce1_local = 1'b1;
    end else begin
        m1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            m2_address0_local = zext_ln23_15_fu_1242_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            m2_address0_local = zext_ln23_13_fu_1201_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            m2_address0_local = zext_ln23_11_fu_1017_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_address0_local = zext_ln23_9_fu_976_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_address0_local = zext_ln23_7_fu_905_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_address0_local = zext_ln23_5_fu_830_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_address0_local = zext_ln23_3_fu_741_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_address0_local = zext_ln23_1_fu_627_p1;
        end else begin
            m2_address0_local = 'bx;
        end
    end else begin
        m2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            m2_address1_local = zext_ln23_14_fu_1224_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            m2_address1_local = zext_ln23_12_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            m2_address1_local = zext_ln23_10_fu_999_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_address1_local = zext_ln23_8_fu_958_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_address1_local = zext_ln23_6_fu_891_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_address1_local = zext_ln23_4_fu_813_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_address1_local = zext_ln23_2_fu_727_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2_address1_local = zext_ln23_fu_586_p1;
        end else begin
            m2_address1_local = 'bx;
        end
    end else begin
        m2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m2_ce0_local = 1'b1;
    end else begin
        m2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m2_ce1_local = 1'b1;
    end else begin
        m2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_address0_local = prod_addr_6_reg_1675_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_address0_local = prod_addr_4_reg_1630_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_address0_local = prod_addr_2_reg_1585_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_address0_local = prod_addr_reg_1543_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_address0_local = p_cast12_fu_922_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_address0_local = p_cast10_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_address0_local = p_cast8_fu_782_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_address0_local = p_cast7_fu_693_p1;
    end else begin
        prod_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        prod_address1_local = prod_addr_7_reg_1680_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        prod_address1_local = prod_addr_5_reg_1635_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_address1_local = prod_addr_3_reg_1590_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_address1_local = prod_addr_1_reg_1549_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_address1_local = zext_ln24_fu_939_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_address1_local = p_cast11_fu_868_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_address1_local = p_cast9_fu_799_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_address1_local = p_cast_fu_676_p1;
    end else begin
        prod_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        prod_ce0_local = 1'b1;
    end else begin
        prod_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        prod_ce1_local = 1'b1;
    end else begin
        prod_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_d0_local = bitcast_ln24_14_fu_1328_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_d0_local = bitcast_ln24_12_fu_1308_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_d0_local = bitcast_ln24_10_fu_1288_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_d0_local = bitcast_ln24_8_fu_1268_p1;
    end else begin
        prod_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        prod_d1_local = bitcast_ln24_15_reg_1999;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        prod_d1_local = bitcast_ln24_13_fu_1318_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_d1_local = bitcast_ln24_11_fu_1298_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_d1_local = bitcast_ln24_9_fu_1278_p1;
    end else begin
        prod_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (tmp_16_reg_1835 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (tmp_16_reg_1835 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (tmp_16_reg_1835 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_16_reg_1835_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_we0_local = 1'b1;
    end else begin
        prod_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (tmp_16_reg_1835 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (tmp_16_reg_1835 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (tmp_16_reg_1835 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage5_11001) & (tmp_16_reg_1835_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        prod_we1_local = 1'b1;
    end else begin
        prod_we1_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage5) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
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
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln17_1_fu_528_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln17_fu_500_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);
assign add_ln18_fu_1132_p2 = (select_ln11_reg_1453 + 4'd2);
assign add_ln1_fu_576_p4 = {{{tmp_fu_552_p4}, {tmp_1_fu_566_p4}}, {jj}};
assign add_ln21_2_fu_755_p5 = {{{{empty_20_reg_1463}, {tmp_15_fu_746_p4}}, {tmp_1_reg_1495}}, {1'd1}};
assign add_ln21_fu_707_p2 = (zext_ln18_fu_698_p1 + add_ln_fu_701_p3);
assign add_ln23_1_fu_994_p2 = (or_ln23_8_fu_986_p4 + zext_ln15_cast_reg_1431);
assign add_ln23_2_fu_1012_p2 = (or_ln23_9_fu_1004_p4 + zext_ln15_cast_reg_1431);
assign add_ln23_3_fu_1178_p2 = (or_ln23_10_fu_1170_p4 + zext_ln15_cast_reg_1431);
assign add_ln23_4_fu_1196_p2 = (or_ln23_11_fu_1188_p4 + zext_ln15_cast_reg_1431);
assign add_ln23_5_fu_1219_p2 = (or_ln23_12_fu_1211_p4 + zext_ln15_cast_reg_1431);
assign add_ln23_6_fu_1237_p2 = (or_ln23_13_fu_1229_p4 + zext_ln15_cast_reg_1431);
assign add_ln23_fu_971_p2 = (or_ln23_7_fu_963_p4 + zext_ln15_cast_reg_1431);
assign add_ln2_fu_949_p5 = {{{{tmp_reg_1477}, {tmp_1_reg_1495}}, {1'd1}}, {zext_ln15}};
assign add_ln_fu_701_p3 = {{empty_20_reg_1463}, {zext_ln16}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd6];
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
    ap_condition_1425 = ((icmp_ln17_reg_1449 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_0_reg_1459 == 1'd1));
end
always @ (*) begin
    ap_condition_1429 = ((icmp_ln17_reg_1449 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_0_reg_1459 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_10_fu_1096_p1 = m2_load_10_reg_1854;
assign bitcast_ln23_11_fu_1112_p1 = m2_load_11_reg_1859;
assign bitcast_ln23_12_fu_1128_p1 = m2_load_12_reg_1879;
assign bitcast_ln23_13_fu_1162_p1 = m2_load_13_reg_1884;
assign bitcast_ln23_14_fu_1255_p1 = m2_load_14_reg_1904;
assign bitcast_ln23_15_fu_1259_p1 = m2_load_15_reg_1909;
assign bitcast_ln23_1_fu_944_p1 = reg_453;
assign bitcast_ln23_2_fu_981_p1 = reg_458;
assign bitcast_ln23_3_fu_1166_p1 = m2_load_3_reg_1600;
assign bitcast_ln23_4_fu_1206_p1 = reg_449;
assign bitcast_ln23_5_fu_1247_p1 = m2_load_5_reg_1650;
assign bitcast_ln23_6_fu_1030_p1 = reg_453;
assign bitcast_ln23_7_fu_1047_p1 = m2_load_7_reg_1690;
assign bitcast_ln23_8_fu_1063_p1 = reg_458;
assign bitcast_ln23_9_fu_1080_p1 = m2_load_9_reg_1720;
assign bitcast_ln23_fu_877_p1 = reg_449;
assign bitcast_ln24_10_fu_1288_p1 = reg_467;
assign bitcast_ln24_11_fu_1298_p1 = reg_467;
assign bitcast_ln24_12_fu_1308_p1 = reg_467;
assign bitcast_ln24_13_fu_1318_p1 = reg_467;
assign bitcast_ln24_14_fu_1328_p1 = reg_467;
assign bitcast_ln24_15_fu_1333_p1 = grp_fu_441_p2;
assign bitcast_ln24_1_fu_1035_p1 = prod_load_1_reg_1580;
assign bitcast_ln24_2_fu_1051_p1 = prod_load_2_reg_1620;
assign bitcast_ln24_3_fu_1068_p1 = prod_load_3_reg_1625;
assign bitcast_ln24_4_fu_1084_p1 = prod_load_4_reg_1665;
assign bitcast_ln24_5_fu_1100_p1 = prod_load_5_reg_1670;
assign bitcast_ln24_6_fu_1116_p1 = prod_load_6_reg_1705;
assign bitcast_ln24_7_fu_1150_p1 = prod_load_7_reg_1710;
assign bitcast_ln24_8_fu_1268_p1 = reg_467;
assign bitcast_ln24_9_fu_1278_p1 = reg_467;
assign bitcast_ln24_fu_1022_p1 = prod_load_reg_1575;
assign empty_20_fu_548_p1 = select_ln17_fu_534_p3[5:0];
assign empty_21_fu_688_p2 = (tmp_5_fu_681_p3 + zext_ln15_cast_reg_1431);
assign empty_22_fu_777_p2 = (tmp_6_fu_770_p3 + zext_ln15_cast_reg_1431);
assign empty_23_fu_794_p2 = (tmp_7_fu_787_p3 + zext_ln15_cast_reg_1431);
assign empty_24_fu_846_p2 = (tmp_8_fu_839_p3 + zext_ln15_cast_reg_1431);
assign empty_25_fu_863_p2 = (tmp_9_fu_856_p3 + zext_ln15_cast_reg_1431);
assign empty_26_fu_917_p2 = (tmp_s_fu_910_p3 + zext_ln15_cast_reg_1431);
assign empty_27_fu_934_p2 = (tmp_4_fu_927_p3 + zext_ln15_cast_reg_1431);
assign first_iter_0_fu_542_p2 = ((select_ln11_fu_520_p3 == 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_494_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd256) ? 1'b1 : 1'b0);
assign m1_address0 = zext_ln21_1_fu_765_p1;
assign m1_address1 = zext_ln21_fu_713_p1;
assign m1_ce0 = m1_ce0_local;
assign m1_ce1 = m1_ce1_local;
assign m2_address0 = m2_address0_local;
assign m2_address1 = m2_address1_local;
assign m2_ce0 = m2_ce0_local;
assign m2_ce1 = m2_ce1_local;
assign or_ln23_10_fu_1170_p4 = {{{tmp_reg_1477}, {tmp_1_reg_1495}}, {7'd68}};
assign or_ln23_11_fu_1188_p4 = {{{tmp_reg_1477}, {tmp_1_reg_1495}}, {7'd69}};
assign or_ln23_12_fu_1211_p4 = {{{tmp_reg_1477}, {tmp_1_reg_1495}}, {7'd70}};
assign or_ln23_13_fu_1229_p4 = {{{tmp_reg_1477}, {tmp_1_reg_1495}}, {7'd71}};
assign or_ln23_1_fu_718_p5 = {{{{tmp_reg_1477}, {tmp_1_reg_1495}}, {tmp_12_reg_1524}}, {2'd2}};
assign or_ln23_2_fu_732_p5 = {{{{tmp_reg_1477}, {tmp_1_reg_1495}}, {tmp_12_reg_1524}}, {2'd3}};
assign or_ln23_3_fu_804_p5 = {{{{tmp_reg_1477}, {tmp_1_reg_1495}}, {tmp_13_reg_1530}}, {3'd4}};
assign or_ln23_4_fu_818_p7 = {{{{{{tmp_reg_1477}, {tmp_1_reg_1495}}, {tmp_13_reg_1530}}, {1'd1}}, {tmp_14_reg_1538}}, {1'd1}};
assign or_ln23_5_fu_882_p5 = {{{{tmp_reg_1477}, {tmp_1_reg_1495}}, {tmp_13_reg_1530}}, {3'd6}};
assign or_ln23_6_fu_896_p5 = {{{{tmp_reg_1477}, {tmp_1_reg_1495}}, {tmp_13_reg_1530}}, {3'd7}};
assign or_ln23_7_fu_963_p4 = {{{tmp_reg_1477}, {tmp_1_reg_1495}}, {7'd65}};
assign or_ln23_8_fu_986_p4 = {{{tmp_reg_1477}, {tmp_1_reg_1495}}, {7'd66}};
assign or_ln23_9_fu_1004_p4 = {{{tmp_reg_1477}, {tmp_1_reg_1495}}, {7'd67}};
assign or_ln23_fu_599_p2 = (tmp_10_fu_591_p3 | jj);
assign or_ln23_s_fu_615_p5 = {{{{tmp_fu_552_p4}, {tmp_1_fu_566_p4}}, {tmp_11_fu_605_p4}}, {1'd1}};
assign p_cast10_fu_851_p1 = empty_24_fu_846_p2;
assign p_cast11_fu_868_p1 = empty_25_fu_863_p2;
assign p_cast12_fu_922_p1 = empty_26_fu_917_p2;
assign p_cast7_fu_693_p1 = empty_21_fu_688_p2;
assign p_cast8_fu_782_p1 = empty_22_fu_777_p2;
assign p_cast9_fu_799_p1 = empty_23_fu_794_p2;
assign p_cast_fu_676_p1 = tmp_3_fu_670_p3;
assign prod_address0 = prod_address0_local;
assign prod_address1 = prod_address1_local;
assign prod_ce0 = prod_ce0_local;
assign prod_ce1 = prod_ce1_local;
assign prod_d0 = prod_d0_local;
assign prod_d1 = prod_d1_local;
assign prod_we0 = prod_we0_local;
assign prod_we1 = prod_we1_local;
assign select_ln11_fu_520_p3 = ((tmp_2_fu_512_p3[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_k_load);
assign select_ln17_fu_534_p3 = ((tmp_2_fu_512_p3[0:0] == 1'b1) ? add_ln17_1_fu_528_p2 : ap_sig_allocacmp_i_load);
assign temp_x_1_fu_835_p1 = m1_q0;
assign temp_x_fu_873_p1 = m1_load_reg_1595;
assign tmp_10_fu_591_p3 = {{trunc_ln20_fu_562_p1}, {6'd0}};
assign tmp_11_fu_605_p4 = {{or_ln23_fu_599_p2[6:1]}};
assign tmp_15_fu_746_p4 = {{zext_ln16[5:3]}};
assign tmp_1_fu_566_p4 = {{select_ln11_fu_520_p3[2:1]}};
assign tmp_2_fu_512_p3 = ap_sig_allocacmp_k_load[32'd3];
assign tmp_3_fu_670_p3 = {{empty_20_reg_1463}, {zext_ln15}};
assign tmp_4_fu_927_p3 = {{empty_20_reg_1463}, {6'd7}};
assign tmp_5_fu_681_p3 = {{empty_20_reg_1463}, {6'd1}};
assign tmp_6_fu_770_p3 = {{empty_20_reg_1463}, {6'd2}};
assign tmp_7_fu_787_p3 = {{empty_20_reg_1463}, {6'd3}};
assign tmp_8_fu_839_p3 = {{empty_20_reg_1463}, {6'd4}};
assign tmp_9_fu_856_p3 = {{empty_20_reg_1463}, {6'd5}};
assign tmp_fu_552_p4 = {{kk[5:3]}};
assign tmp_s_fu_910_p3 = {{empty_20_reg_1463}, {6'd6}};
assign trunc_ln20_fu_562_p1 = select_ln11_fu_520_p3[0:0];
assign zext_ln15_cast_fu_472_p1 = zext_ln15;
assign zext_ln18_fu_698_p1 = select_ln11_reg_1453;
assign zext_ln21_1_fu_765_p1 = add_ln21_2_fu_755_p5;
assign zext_ln21_fu_713_p1 = add_ln21_fu_707_p2;
assign zext_ln23_10_fu_999_p1 = add_ln23_1_fu_994_p2;
assign zext_ln23_11_fu_1017_p1 = add_ln23_2_fu_1012_p2;
assign zext_ln23_12_fu_1183_p1 = add_ln23_3_fu_1178_p2;
assign zext_ln23_13_fu_1201_p1 = add_ln23_4_fu_1196_p2;
assign zext_ln23_14_fu_1224_p1 = add_ln23_5_fu_1219_p2;
assign zext_ln23_15_fu_1242_p1 = add_ln23_6_fu_1237_p2;
assign zext_ln23_1_fu_627_p1 = or_ln23_s_fu_615_p5;
assign zext_ln23_2_fu_727_p1 = or_ln23_1_fu_718_p5;
assign zext_ln23_3_fu_741_p1 = or_ln23_2_fu_732_p5;
assign zext_ln23_4_fu_813_p1 = or_ln23_3_fu_804_p5;
assign zext_ln23_5_fu_830_p1 = or_ln23_4_fu_818_p7;
assign zext_ln23_6_fu_891_p1 = or_ln23_5_fu_882_p5;
assign zext_ln23_7_fu_905_p1 = or_ln23_6_fu_896_p5;
assign zext_ln23_8_fu_958_p1 = add_ln2_fu_949_p5;
assign zext_ln23_9_fu_976_p1 = add_ln23_fu_971_p2;
assign zext_ln23_fu_586_p1 = add_ln1_fu_576_p4;
assign zext_ln24_fu_939_p1 = empty_27_fu_934_p2;
always @ (posedge ap_clk) begin
    zext_ln15_cast_reg_1431[11:6] <= 6'b000000;
end
endmodule 
