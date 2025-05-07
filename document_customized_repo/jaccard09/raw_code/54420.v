module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_0_address1,prod_0_ce1,prod_0_we1,prod_0_d1,prod_0_q1,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_1_address1,prod_1_ce1,prod_1_we1,prod_1_d1,prod_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 21'd1;
parameter    ap_ST_fsm_pp0_stage1 = 21'd2;
parameter    ap_ST_fsm_pp0_stage2 = 21'd4;
parameter    ap_ST_fsm_pp0_stage3 = 21'd8;
parameter    ap_ST_fsm_pp0_stage4 = 21'd16;
parameter    ap_ST_fsm_pp0_stage5 = 21'd32;
parameter    ap_ST_fsm_pp0_stage6 = 21'd64;
parameter    ap_ST_fsm_pp0_stage7 = 21'd128;
parameter    ap_ST_fsm_pp0_stage8 = 21'd256;
parameter    ap_ST_fsm_pp0_stage9 = 21'd512;
parameter    ap_ST_fsm_pp0_stage10 = 21'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 21'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 21'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 21'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 21'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 21'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 21'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 21'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 21'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 21'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 21'd1048576;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [10:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [10:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [10:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [10:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [10:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [10:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [10:0] prod_0_address1;
output   prod_0_ce1;
output   prod_0_we1;
output  [63:0] prod_0_d1;
input  [63:0] prod_0_q1;
output  [10:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [10:0] prod_1_address1;
output   prod_1_ce1;
output   prod_1_we1;
output  [63:0] prod_1_d1;
input  [63:0] prod_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_subdone;
wire   [0:0] icmp_ln15_fu_1181_p2;
reg    ap_condition_exit_pp0_iter0_stage20;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1647_reg_402;
reg   [63:0] reg_449;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_453;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_457;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] grp_fu_445_p2;
reg   [63:0] reg_462;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_468;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_473;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_478;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_484;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_488;
reg   [63:0] reg_492;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] reg_496;
wire   [63:0] grp_fu_433_p2;
reg   [63:0] reg_500;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] grp_fu_437_p2;
reg   [63:0] reg_505;
reg   [63:0] reg_510;
wire   [63:0] grp_fu_441_p2;
reg   [63:0] reg_515;
wire   [0:0] empty_fu_595_p2;
reg   [0:0] empty_reg_1298;
wire   [0:0] icmp_ln18_mid211_fu_601_p2;
reg   [0:0] icmp_ln18_mid211_reg_1305;
reg   [1:0] tmp_6_reg_1311;
reg   [2:0] tmp_7_reg_1316;
wire   [4:0] indvars_iv79_udiv_fu_694_p4;
reg   [4:0] indvars_iv79_udiv_reg_1329;
wire   [5:0] empty_8_fu_708_p1;
reg   [5:0] empty_8_reg_1335;
wire   [3:0] tmp_1_fu_712_p4;
reg   [3:0] tmp_1_reg_1343;
reg   [2:0] tmp_5_reg_1349;
reg   [0:0] tmp_reg_1358;
wire   [1:0] lshr_ln_fu_740_p4;
reg   [1:0] lshr_ln_reg_1365;
reg   [0:0] tmp_8_reg_1405;
reg   [63:0] m1_0_load_reg_1410;
reg   [63:0] m2_1_load_1_reg_1415;
wire   [63:0] temp_x_1_fu_882_p1;
reg   [63:0] temp_x_1_reg_1440;
wire   [63:0] temp_x_fu_886_p1;
reg   [63:0] temp_x_reg_1445;
wire   [63:0] bitcast_ln23_fu_890_p1;
reg   [63:0] m2_1_load_2_reg_1455;
reg   [63:0] m2_0_load_3_reg_1460;
reg   [63:0] m2_1_load_3_reg_1465;
wire   [63:0] bitcast_ln23_1_fu_927_p1;
reg   [63:0] m2_0_load_4_reg_1495;
reg   [63:0] m2_0_load_5_reg_1500;
reg   [63:0] m2_1_load_5_reg_1505;
wire   [63:0] bitcast_ln23_2_fu_967_p1;
reg   [63:0] m2_1_load_6_reg_1535;
reg   [63:0] m2_0_load_7_reg_1540;
reg   [63:0] m2_1_load_7_reg_1545;
wire   [63:0] bitcast_ln23_3_fu_972_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln23_4_fu_976_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln23_5_fu_981_p1;
wire   [63:0] bitcast_ln23_6_fu_985_p1;
wire   [63:0] bitcast_ln23_7_fu_989_p1;
wire   [63:0] bitcast_ln23_8_fu_993_p1;
reg   [10:0] prod_0_addr_reg_1580;
reg   [10:0] prod_1_addr_reg_1586;
reg   [10:0] prod_0_addr_1_reg_1592;
reg   [10:0] prod_1_addr_1_reg_1598;
wire   [63:0] bitcast_ln23_9_fu_1023_p1;
reg   [10:0] prod_0_addr_2_reg_1609;
reg   [10:0] prod_1_addr_2_reg_1615;
reg   [10:0] prod_0_addr_3_reg_1621;
reg   [10:0] prod_1_addr_3_reg_1627;
reg   [63:0] mul_4_reg_1633;
wire   [63:0] bitcast_ln23_10_fu_1057_p1;
wire   [63:0] bitcast_ln24_fu_1061_p1;
wire   [63:0] bitcast_ln24_2_fu_1066_p1;
reg   [63:0] mul_5_reg_1653;
wire   [63:0] bitcast_ln23_11_fu_1071_p1;
wire   [63:0] bitcast_ln24_1_fu_1075_p1;
wire   [63:0] bitcast_ln24_3_fu_1080_p1;
wire   [63:0] bitcast_ln24_4_fu_1085_p1;
reg   [63:0] mul_6_reg_1678;
wire   [63:0] bitcast_ln23_12_fu_1090_p1;
wire   [63:0] bitcast_ln24_5_fu_1095_p1;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [63:0] bitcast_ln24_6_fu_1100_p1;
reg   [63:0] mul_7_reg_1698;
wire   [63:0] bitcast_ln23_13_fu_1105_p1;
wire   [63:0] bitcast_ln24_7_fu_1109_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] mul_8_reg_1713;
wire   [63:0] bitcast_ln23_14_fu_1114_p1;
reg   [63:0] mul_9_reg_1723;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [63:0] bitcast_ln23_15_fu_1118_p1;
reg   [63:0] mul_10_reg_1733;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] mul_11_reg_1738;
wire    ap_block_pp0_stage20_11001;
wire   [0:0] xor_ln18_fu_1164_p2;
reg   [0:0] xor_ln18_reg_1743;
wire   [0:0] icmp_ln17_fu_1169_p2;
reg   [0:0] icmp_ln17_reg_1748;
wire   [0:0] icmp_ln16_fu_1175_p2;
reg   [0:0] icmp_ln16_reg_1753;
reg   [0:0] icmp_ln15_reg_1758;
reg   [63:0] add26_s_reg_1762;
reg   [63:0] add26_5_reg_1767;
reg   [63:0] add26_6_reg_1772;
reg   [63:0] add26_7_reg_1777;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage12_subdone;
reg   [0:0] ap_phi_mux_icmp_ln1647_phi_fu_405_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1746_phi_fu_416_p4;
reg   [0:0] ap_phi_mux_icmp_ln1845_phi_fu_426_p4;
wire   [63:0] zext_ln21_fu_764_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_fu_779_p1;
wire   [63:0] zext_ln23_1_fu_800_p1;
wire   [63:0] zext_ln23_2_fu_860_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln23_3_fu_876_p1;
wire   [63:0] zext_ln23_4_fu_904_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln23_5_fu_921_p1;
wire   [63:0] zext_ln23_6_fu_944_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln23_7_fu_961_p1;
wire   [63:0] p_cast_fu_1003_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] p_cast3_fu_1017_p1;
wire   [63:0] p_cast4_fu_1037_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] p_cast5_fu_1051_p1;
reg   [13:0] indvar_flatten3538_fu_120;
wire   [13:0] add_ln15_1_fu_1158_p2;
wire    ap_block_pp0_stage20;
reg   [6:0] jj39_fu_124;
wire   [6:0] jj_fu_652_p3;
reg   [12:0] indvar_flatten1240_fu_128;
wire   [12:0] select_ln16_1_fu_1150_p3;
reg   [6:0] kk41_fu_132;
wire   [6:0] kk_fu_607_p3;
reg   [6:0] ap_sig_allocacmp_kk41_load;
reg   [9:0] indvar_flatten42_fu_136;
wire   [9:0] select_ln17_1_fu_1137_p3;
reg   [6:0] i43_fu_140;
wire   [6:0] i_fu_687_p3;
reg   [3:0] k44_fu_144;
wire   [3:0] k_fu_806_p2;
reg   [6:0] add_ln1548_fu_148;
wire   [6:0] add_ln15_fu_820_p2;
reg    m1_0_ce0_local;
reg    m2_0_ce1_local;
reg   [10:0] m2_0_address1_local;
reg    m2_0_ce0_local;
reg   [10:0] m2_0_address0_local;
reg    m2_1_ce1_local;
reg   [10:0] m2_1_address1_local;
reg    m2_1_ce0_local;
reg   [10:0] m2_1_address0_local;
reg    m1_1_ce0_local;
reg    prod_0_ce1_local;
reg   [10:0] prod_0_address1_local;
reg    prod_0_ce0_local;
reg   [10:0] prod_0_address0_local;
reg    prod_0_we0_local;
reg   [63:0] prod_0_d0_local;
wire   [63:0] bitcast_ln24_8_fu_1202_p1;
wire    ap_block_pp0_stage9;
reg    prod_0_we1_local;
reg   [63:0] prod_0_d1_local;
wire   [63:0] bitcast_ln24_10_fu_1212_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] bitcast_ln24_12_fu_1217_p1;
wire   [63:0] bitcast_ln24_14_fu_1232_p1;
wire    ap_block_pp0_stage11;
reg    prod_1_ce1_local;
reg   [10:0] prod_1_address1_local;
reg    prod_1_ce0_local;
reg   [10:0] prod_1_address0_local;
wire    ap_block_pp0_stage14;
reg    prod_1_we0_local;
reg   [63:0] prod_1_d0_local;
wire   [63:0] bitcast_ln24_9_fu_1207_p1;
reg    prod_1_we1_local;
reg   [63:0] prod_1_d1_local;
wire   [63:0] bitcast_ln24_11_fu_1222_p1;
wire   [63:0] bitcast_ln24_13_fu_1227_p1;
wire   [63:0] bitcast_ln24_15_fu_1237_p1;
reg   [63:0] grp_fu_433_p0;
reg   [63:0] grp_fu_433_p1;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_437_p0;
reg   [63:0] grp_fu_437_p1;
reg   [63:0] grp_fu_441_p0;
reg   [63:0] grp_fu_441_p1;
reg   [63:0] grp_fu_445_p0;
reg   [63:0] grp_fu_445_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage18;
wire   [0:0] xor_ln11_fu_577_p2;
wire   [6:0] select_ln11_fu_563_p3;
wire   [0:0] and_ln11_fu_583_p2;
wire   [0:0] or_ln11_fu_571_p2;
wire   [6:0] add_ln16_fu_589_p2;
wire   [6:0] i_mid26_fu_660_p3;
wire   [3:0] k_mid27_fu_667_p3;
wire   [6:0] add_ln17_fu_674_p2;
wire   [3:0] k_mid2_fu_680_p3;
wire   [1:0] or_ln21_fu_750_p2;
wire   [10:0] add_ln21_1_fu_755_p4;
wire   [5:0] indvars_iv79_udiv_cast_fu_704_p1;
wire   [10:0] add_ln_fu_770_p4;
wire   [4:0] zext_ln23_8_fu_785_p1;
wire   [10:0] or_ln_fu_789_p5;
wire   [3:0] zext_ln23_9_fu_846_p1;
wire   [10:0] or_ln23_6_fu_849_p6;
wire   [10:0] or_ln23_7_fu_866_p5;
wire   [10:0] add_ln23_4_fu_895_p5;
wire   [10:0] or_ln23_s_fu_910_p6;
wire   [10:0] or_ln23_1_fu_932_p7;
wire   [10:0] or_ln23_2_fu_950_p6;
wire   [10:0] tmp_2_fu_997_p3;
wire   [10:0] tmp_4_fu_1009_p4;
wire   [10:0] tmp_s_fu_1028_p5;
wire   [10:0] tmp_3_fu_1043_p4;
wire   [9:0] add_ln17_1_fu_1131_p2;
wire   [12:0] add_ln16_1_fu_1144_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage12;
reg    ap_idle_pp0_0to0;
reg   [20:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
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
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1296;
reg    ap_condition_1300;
reg    ap_condition_1321;
reg    ap_condition_624;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten3538_fu_120 = 14'd0;
#0 jj39_fu_124 = 7'd0;
#0 indvar_flatten1240_fu_128 = 13'd0;
#0 kk41_fu_132 = 7'd0;
#0 indvar_flatten42_fu_136 = 10'd0;
#0 i43_fu_140 = 7'd0;
#0 k44_fu_144 = 4'd0;
#0 add_ln1548_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_433_p0),.din1(grp_fu_433_p1),.ce(1'b1),.dout(grp_fu_433_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_437_p0),.din1(grp_fu_437_p1),.ce(1'b1),.dout(grp_fu_437_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_441_p0),.din1(grp_fu_441_p1),.ce(1'b1),.dout(grp_fu_441_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_445_p0),.din1(grp_fu_445_p1),.ce(1'b1),.dout(grp_fu_445_p2));
bbgemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage20),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage20_subdone) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1296)) begin
            add_ln1548_fu_148 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1548_fu_148 <= add_ln15_fu_820_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b1 == ap_condition_exit_pp0_iter1_stage12) & (ap_idle_pp0_0to0 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1296)) begin
            i43_fu_140 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i43_fu_140 <= i_fu_687_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1321)) begin
            icmp_ln1647_reg_402 <= icmp_ln16_reg_1753;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1647_reg_402 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1296)) begin
            indvar_flatten1240_fu_128 <= 13'd0;
        end else if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            indvar_flatten1240_fu_128 <= select_ln16_1_fu_1150_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1296)) begin
            indvar_flatten3538_fu_120 <= 14'd0;
        end else if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            indvar_flatten3538_fu_120 <= add_ln15_1_fu_1158_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1296)) begin
            indvar_flatten42_fu_136 <= 10'd0;
        end else if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            indvar_flatten42_fu_136 <= select_ln17_1_fu_1137_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1296)) begin
            jj39_fu_124 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj39_fu_124 <= jj_fu_652_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1296)) begin
            k44_fu_144 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k44_fu_144 <= k_fu_806_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_624)) begin
        kk41_fu_132 <= kk_fu_607_p3;
    end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        reg_457 <= m2_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_457 <= m2_0_q0;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add26_5_reg_1767 <= grp_fu_433_p2;
        add26_6_reg_1772 <= grp_fu_437_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add26_7_reg_1777 <= grp_fu_433_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add26_s_reg_1762 <= grp_fu_433_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_8_reg_1335 <= empty_8_fu_708_p1;
        indvars_iv79_udiv_reg_1329 <= {{jj_fu_652_p3[5:1]}};
        lshr_ln_reg_1365 <= {{k_mid2_fu_680_p3[2:1]}};
        tmp_1_reg_1343 <= {{jj_fu_652_p3[5:2]}};
        tmp_5_reg_1349 <= {{jj_fu_652_p3[5:3]}};
        tmp_8_reg_1405 <= k_fu_806_p2[32'd3];
        tmp_reg_1358 <= jj_fu_652_p3[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1298 <= empty_fu_595_p2;
        icmp_ln18_mid211_reg_1305 <= icmp_ln18_mid211_fu_601_p2;
        tmp_6_reg_1311 <= {{kk_fu_607_p3[2:1]}};
        tmp_7_reg_1316 <= {{kk_fu_607_p3[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        icmp_ln15_reg_1758 <= icmp_ln15_fu_1181_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        icmp_ln16_reg_1753 <= icmp_ln16_fu_1175_p2;
        icmp_ln17_reg_1748 <= icmp_ln17_fu_1169_p2;
        mul_11_reg_1738 <= grp_fu_445_p2;
        xor_ln18_reg_1743 <= xor_ln18_fu_1164_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m1_0_load_reg_1410 <= m1_0_q0;
        temp_x_1_reg_1440 <= temp_x_1_fu_882_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m2_0_load_3_reg_1460 <= m2_0_q0;
        m2_1_load_2_reg_1455 <= m2_1_q1;
        m2_1_load_3_reg_1465 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        m2_0_load_4_reg_1495 <= m2_0_q1;
        m2_0_load_5_reg_1500 <= m2_0_q0;
        m2_1_load_5_reg_1505 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        m2_0_load_7_reg_1540 <= m2_0_q0;
        m2_1_load_6_reg_1535 <= m2_1_q1;
        m2_1_load_7_reg_1545 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m2_1_load_1_reg_1415 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        mul_10_reg_1733 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul_4_reg_1633 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        mul_5_reg_1653 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        mul_6_reg_1678 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        mul_7_reg_1698 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        mul_8_reg_1713 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        mul_9_reg_1723 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_0_addr_1_reg_1592[10 : 1] <= p_cast3_fu_1017_p1[10 : 1];
        prod_0_addr_reg_1580 <= p_cast_fu_1003_p1;
        prod_1_addr_1_reg_1598[10 : 1] <= p_cast3_fu_1017_p1[10 : 1];
        prod_1_addr_reg_1586 <= p_cast_fu_1003_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_0_addr_2_reg_1609[0] <= p_cast4_fu_1037_p1[0];
prod_0_addr_2_reg_1609[10 : 2] <= p_cast4_fu_1037_p1[10 : 2];
        prod_0_addr_3_reg_1621[10 : 2] <= p_cast5_fu_1051_p1[10 : 2];
        prod_1_addr_2_reg_1615[0] <= p_cast4_fu_1037_p1[0];
prod_1_addr_2_reg_1615[10 : 2] <= p_cast4_fu_1037_p1[10 : 2];
        prod_1_addr_3_reg_1627[10 : 2] <= p_cast5_fu_1051_p1[10 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_449 <= m2_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_453 <= m2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_462 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_468 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_473 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_478 <= grp_fu_445_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_484 <= prod_0_q1;
        reg_488 <= prod_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_492 <= prod_1_q1;
        reg_496 <= prod_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_500 <= grp_fu_433_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_505 <= grp_fu_437_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_510 <= grp_fu_437_p2;
        reg_515 <= grp_fu_441_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_x_reg_1445 <= temp_x_fu_886_p1;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_1181_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage20_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_condition_exit_pp0_iter0_stage20 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage20 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_subdone) & (icmp_ln15_reg_1758 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_condition_exit_pp0_iter1_stage12 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage12 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1300)) begin
            ap_phi_mux_icmp_ln1647_phi_fu_405_p4 = icmp_ln16_reg_1753;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1647_phi_fu_405_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1647_phi_fu_405_p4 = icmp_ln16_reg_1753;
        end
    end else begin
        ap_phi_mux_icmp_ln1647_phi_fu_405_p4 = icmp_ln16_reg_1753;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1300)) begin
            ap_phi_mux_icmp_ln1746_phi_fu_416_p4 = icmp_ln17_reg_1748;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1746_phi_fu_416_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1746_phi_fu_416_p4 = icmp_ln17_reg_1748;
        end
    end else begin
        ap_phi_mux_icmp_ln1746_phi_fu_416_p4 = icmp_ln17_reg_1748;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1300)) begin
            ap_phi_mux_icmp_ln1845_phi_fu_426_p4 = xor_ln18_reg_1743;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1845_phi_fu_426_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1845_phi_fu_426_p4 = xor_ln18_reg_1743;
        end
    end else begin
        ap_phi_mux_icmp_ln1845_phi_fu_426_p4 = xor_ln18_reg_1743;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_kk41_load = 7'd0;
    end else begin
        ap_sig_allocacmp_kk41_load = kk41_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_433_p0 = add26_7_reg_1777;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_433_p0 = add26_5_reg_1767;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p0 = add26_s_reg_1762;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_433_p0 = reg_500;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_433_p0 = bitcast_ln24_7_fu_1109_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_433_p0 = bitcast_ln24_5_fu_1095_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_433_p0 = bitcast_ln24_1_fu_1075_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_433_p0 = bitcast_ln24_fu_1061_p1;
    end else begin
        grp_fu_433_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_433_p1 = reg_478;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p1 = mul_9_reg_1723;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_433_p1 = mul_8_reg_1713;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_433_p1 = mul_7_reg_1698;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_433_p1 = mul_5_reg_1653;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_433_p1 = reg_468;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_433_p1 = reg_462;
    end else begin
        grp_fu_433_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p0 = add26_6_reg_1772;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p0 = reg_510;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_437_p0 = reg_505;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_437_p0 = bitcast_ln24_6_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_437_p0 = bitcast_ln24_3_fu_1080_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_437_p0 = bitcast_ln24_2_fu_1066_p1;
    end else begin
        grp_fu_437_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p1 = mul_11_reg_1738;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_437_p1 = mul_10_reg_1733;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_437_p1 = mul_6_reg_1678;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_437_p1 = reg_478;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_437_p1 = reg_473;
    end else begin
        grp_fu_437_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p0 = reg_515;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_441_p0 = bitcast_ln24_4_fu_1085_p1;
    end else begin
        grp_fu_441_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p1 = reg_462;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_441_p1 = mul_4_reg_1633;
    end else begin
        grp_fu_441_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_445_p0 = temp_x_1_reg_1440;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_445_p0 = temp_x_reg_1445;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_445_p0 = temp_x_fu_886_p1;
    end else begin
        grp_fu_445_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_445_p1 = bitcast_ln23_15_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_445_p1 = bitcast_ln23_14_fu_1114_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_445_p1 = bitcast_ln23_13_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_445_p1 = bitcast_ln23_12_fu_1090_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_445_p1 = bitcast_ln23_11_fu_1071_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_445_p1 = bitcast_ln23_10_fu_1057_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_445_p1 = bitcast_ln23_9_fu_1023_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_445_p1 = bitcast_ln23_8_fu_993_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_445_p1 = bitcast_ln23_7_fu_989_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_445_p1 = bitcast_ln23_6_fu_985_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_445_p1 = bitcast_ln23_5_fu_981_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_445_p1 = bitcast_ln23_4_fu_976_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_445_p1 = bitcast_ln23_3_fu_972_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_445_p1 = bitcast_ln23_2_fu_967_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_445_p1 = bitcast_ln23_1_fu_927_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_445_p1 = bitcast_ln23_fu_890_p1;
        end else begin
            grp_fu_445_p1 = 'bx;
        end
    end else begin
        grp_fu_445_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_0_ce0_local = 1'b1;
    end else begin
        m1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_1_ce0_local = 1'b1;
    end else begin
        m1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_0_address0_local = zext_ln23_7_fu_961_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_0_address0_local = zext_ln23_5_fu_921_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_0_address0_local = zext_ln23_3_fu_876_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_0_address0_local = zext_ln23_1_fu_800_p1;
        end else begin
            m2_0_address0_local = 'bx;
        end
    end else begin
        m2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_0_address1_local = zext_ln23_6_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_0_address1_local = zext_ln23_4_fu_904_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_0_address1_local = zext_ln23_2_fu_860_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_0_address1_local = zext_ln23_fu_779_p1;
        end else begin
            m2_0_address1_local = 'bx;
        end
    end else begin
        m2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_0_ce1_local = 1'b1;
    end else begin
        m2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_1_address0_local = zext_ln23_7_fu_961_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_1_address0_local = zext_ln23_5_fu_921_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_1_address0_local = zext_ln23_3_fu_876_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_1_address0_local = zext_ln23_1_fu_800_p1;
        end else begin
            m2_1_address0_local = 'bx;
        end
    end else begin
        m2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_1_address1_local = zext_ln23_6_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_1_address1_local = zext_ln23_4_fu_904_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_1_address1_local = zext_ln23_2_fu_860_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_1_address1_local = zext_ln23_fu_779_p1;
        end else begin
            m2_1_address1_local = 'bx;
        end
    end else begin
        m2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_1_ce1_local = 1'b1;
    end else begin
        m2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_0_address0_local = prod_0_addr_2_reg_1609;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_0_address0_local = prod_0_addr_reg_1580;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_0_address0_local = p_cast5_fu_1051_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_0_address0_local = p_cast3_fu_1017_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_0_address1_local = prod_0_addr_3_reg_1621;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_0_address1_local = prod_0_addr_1_reg_1592;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_0_address1_local = p_cast4_fu_1037_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_0_address1_local = p_cast_fu_1003_p1;
    end else begin
        prod_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_0_ce1_local = 1'b1;
    end else begin
        prod_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            prod_0_d0_local = bitcast_ln24_12_fu_1217_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            prod_0_d0_local = bitcast_ln24_8_fu_1202_p1;
        end else begin
            prod_0_d0_local = 'bx;
        end
    end else begin
        prod_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            prod_0_d1_local = bitcast_ln24_14_fu_1232_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            prod_0_d1_local = bitcast_ln24_10_fu_1212_p1;
        end else begin
            prod_0_d1_local = 'bx;
        end
    end else begin
        prod_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_0_we1_local = 1'b1;
    end else begin
        prod_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_1_address0_local = prod_1_addr_2_reg_1615;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_1_address0_local = prod_1_addr_reg_1586;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_1_address0_local = prod_1_addr_3_reg_1627;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_1_address0_local = prod_1_addr_1_reg_1598;
    end else begin
        prod_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_1_address1_local = prod_1_addr_3_reg_1627;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_1_address1_local = prod_1_addr_1_reg_1598;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_1_address1_local = prod_1_addr_2_reg_1615;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_1_address1_local = prod_1_addr_reg_1586;
    end else begin
        prod_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        prod_1_ce1_local = 1'b1;
    end else begin
        prod_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            prod_1_d0_local = bitcast_ln24_13_fu_1227_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            prod_1_d0_local = bitcast_ln24_9_fu_1207_p1;
        end else begin
            prod_1_d0_local = 'bx;
        end
    end else begin
        prod_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            prod_1_d1_local = bitcast_ln24_15_fu_1237_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            prod_1_d1_local = bitcast_ln24_11_fu_1222_p1;
        end else begin
            prod_1_d1_local = 'bx;
        end
    end else begin
        prod_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        prod_1_we1_local = 1'b1;
    end else begin
        prod_1_we1_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage12) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_1_fu_1158_p2 = (indvar_flatten3538_fu_120 + 14'd1);
assign add_ln15_fu_820_p2 = (jj_fu_652_p3 + 7'd8);
assign add_ln16_1_fu_1144_p2 = (indvar_flatten1240_fu_128 + 13'd1);
assign add_ln16_fu_589_p2 = (select_ln11_fu_563_p3 + 7'd8);
assign add_ln17_1_fu_1131_p2 = (indvar_flatten42_fu_136 + 10'd1);
assign add_ln17_fu_674_p2 = (i_mid26_fu_660_p3 + 7'd1);
assign add_ln21_1_fu_755_p4 = {{{empty_8_fu_708_p1}, {tmp_7_reg_1316}}, {or_ln21_fu_750_p2}};
assign add_ln23_4_fu_895_p5 = {{{{tmp_7_reg_1316}, {lshr_ln_reg_1365}}, {1'd1}}, {indvars_iv79_udiv_reg_1329}};
assign add_ln_fu_770_p4 = {{{tmp_7_reg_1316}, {lshr_ln_fu_740_p4}}, {indvars_iv79_udiv_cast_fu_704_p1}};
assign and_ln11_fu_583_p2 = (xor_ln11_fu_577_p2 & ap_phi_mux_icmp_ln1746_phi_fu_416_p4);
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
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
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
    ap_condition_1296 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1300 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln15_reg_1758 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1321 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_1758 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_624 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage20;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_10_fu_1057_p1 = m2_0_load_5_reg_1500;
assign bitcast_ln23_11_fu_1071_p1 = m2_1_load_5_reg_1505;
assign bitcast_ln23_12_fu_1090_p1 = reg_457;
assign bitcast_ln23_13_fu_1105_p1 = m2_1_load_6_reg_1535;
assign bitcast_ln23_14_fu_1114_p1 = m2_0_load_7_reg_1540;
assign bitcast_ln23_15_fu_1118_p1 = m2_1_load_7_reg_1545;
assign bitcast_ln23_1_fu_927_p1 = reg_453;
assign bitcast_ln23_2_fu_967_p1 = reg_457;
assign bitcast_ln23_3_fu_972_p1 = m2_1_load_1_reg_1415;
assign bitcast_ln23_4_fu_976_p1 = reg_449;
assign bitcast_ln23_5_fu_981_p1 = m2_1_load_2_reg_1455;
assign bitcast_ln23_6_fu_985_p1 = m2_0_load_3_reg_1460;
assign bitcast_ln23_7_fu_989_p1 = m2_1_load_3_reg_1465;
assign bitcast_ln23_8_fu_993_p1 = m2_0_load_4_reg_1495;
assign bitcast_ln23_9_fu_1023_p1 = reg_453;
assign bitcast_ln23_fu_890_p1 = reg_449;
assign bitcast_ln24_10_fu_1212_p1 = reg_505;
assign bitcast_ln24_11_fu_1222_p1 = reg_510;
assign bitcast_ln24_12_fu_1217_p1 = reg_515;
assign bitcast_ln24_13_fu_1227_p1 = reg_500;
assign bitcast_ln24_14_fu_1232_p1 = reg_505;
assign bitcast_ln24_15_fu_1237_p1 = reg_500;
assign bitcast_ln24_1_fu_1075_p1 = reg_492;
assign bitcast_ln24_2_fu_1066_p1 = reg_488;
assign bitcast_ln24_3_fu_1080_p1 = reg_496;
assign bitcast_ln24_4_fu_1085_p1 = reg_484;
assign bitcast_ln24_5_fu_1095_p1 = reg_492;
assign bitcast_ln24_6_fu_1100_p1 = reg_488;
assign bitcast_ln24_7_fu_1109_p1 = reg_496;
assign bitcast_ln24_8_fu_1202_p1 = reg_500;
assign bitcast_ln24_9_fu_1207_p1 = reg_500;
assign bitcast_ln24_fu_1061_p1 = reg_484;
assign empty_8_fu_708_p1 = i_fu_687_p3[5:0];
assign empty_fu_595_p2 = (ap_phi_mux_icmp_ln1647_phi_fu_405_p4 | and_ln11_fu_583_p2);
assign i_fu_687_p3 = ((icmp_ln18_mid211_reg_1305[0:0] == 1'b1) ? i_mid26_fu_660_p3 : add_ln17_fu_674_p2);
assign i_mid26_fu_660_p3 = ((empty_reg_1298[0:0] == 1'b1) ? 7'd0 : i43_fu_140);
assign icmp_ln15_fu_1181_p2 = ((indvar_flatten3538_fu_120 == 14'd16383) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_1175_p2 = ((select_ln16_1_fu_1150_p3 == 13'd2048) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_1169_p2 = ((select_ln17_1_fu_1137_p3 == 10'd256) ? 1'b1 : 1'b0);
assign icmp_ln18_mid211_fu_601_p2 = (or_ln11_fu_571_p2 | and_ln11_fu_583_p2);
assign indvars_iv79_udiv_cast_fu_704_p1 = indvars_iv79_udiv_fu_694_p4;
assign indvars_iv79_udiv_fu_694_p4 = {{jj_fu_652_p3[5:1]}};
assign jj_fu_652_p3 = ((icmp_ln1647_reg_402[0:0] == 1'b1) ? add_ln1548_fu_148 : jj39_fu_124);
assign k_fu_806_p2 = (k_mid2_fu_680_p3 + 4'd2);
assign k_mid27_fu_667_p3 = ((empty_reg_1298[0:0] == 1'b1) ? 4'd0 : k44_fu_144);
assign k_mid2_fu_680_p3 = ((icmp_ln18_mid211_reg_1305[0:0] == 1'b1) ? k_mid27_fu_667_p3 : 4'd0);
assign kk_fu_607_p3 = ((and_ln11_fu_583_p2[0:0] == 1'b1) ? add_ln16_fu_589_p2 : select_ln11_fu_563_p3);
assign lshr_ln_fu_740_p4 = {{k_mid2_fu_680_p3[2:1]}};
assign m1_0_address0 = zext_ln21_fu_764_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = zext_ln21_fu_764_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m2_0_address0 = m2_0_address0_local;
assign m2_0_address1 = m2_0_address1_local;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_0_ce1 = m2_0_ce1_local;
assign m2_1_address0 = m2_1_address0_local;
assign m2_1_address1 = m2_1_address1_local;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_1_ce1 = m2_1_ce1_local;
assign or_ln11_fu_571_p2 = (ap_phi_mux_icmp_ln1845_phi_fu_426_p4 | ap_phi_mux_icmp_ln1647_phi_fu_405_p4);
assign or_ln21_fu_750_p2 = (tmp_6_reg_1311 | lshr_ln_fu_740_p4);
assign or_ln23_1_fu_932_p7 = {{{{{{tmp_7_reg_1316}, {lshr_ln_reg_1365}}, {1'd1}}, {tmp_5_reg_1349}}, {1'd1}}, {tmp_reg_1358}};
assign or_ln23_2_fu_950_p6 = {{{{{tmp_7_reg_1316}, {lshr_ln_reg_1365}}, {1'd1}}, {tmp_5_reg_1349}}, {2'd3}};
assign or_ln23_6_fu_849_p6 = {{{{{tmp_7_reg_1316}, {lshr_ln_reg_1365}}, {zext_ln23_9_fu_846_p1}}, {1'd1}}, {tmp_reg_1358}};
assign or_ln23_7_fu_866_p5 = {{{{tmp_7_reg_1316}, {lshr_ln_reg_1365}}, {zext_ln23_9_fu_846_p1}}, {2'd3}};
assign or_ln23_s_fu_910_p6 = {{{{{tmp_7_reg_1316}, {lshr_ln_reg_1365}}, {1'd1}}, {tmp_1_reg_1343}}, {1'd1}};
assign or_ln_fu_789_p5 = {{{{tmp_7_reg_1316}, {lshr_ln_fu_740_p4}}, {zext_ln23_8_fu_785_p1}}, {1'd1}};
assign p_cast3_fu_1017_p1 = tmp_4_fu_1009_p4;
assign p_cast4_fu_1037_p1 = tmp_s_fu_1028_p5;
assign p_cast5_fu_1051_p1 = tmp_3_fu_1043_p4;
assign p_cast_fu_1003_p1 = tmp_2_fu_997_p3;
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_address1 = prod_0_address1_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_ce1 = prod_0_ce1_local;
assign prod_0_d0 = prod_0_d0_local;
assign prod_0_d1 = prod_0_d1_local;
assign prod_0_we0 = prod_0_we0_local;
assign prod_0_we1 = prod_0_we1_local;
assign prod_1_address0 = prod_1_address0_local;
assign prod_1_address1 = prod_1_address1_local;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_ce1 = prod_1_ce1_local;
assign prod_1_d0 = prod_1_d0_local;
assign prod_1_d1 = prod_1_d1_local;
assign prod_1_we0 = prod_1_we0_local;
assign prod_1_we1 = prod_1_we1_local;
assign select_ln11_fu_563_p3 = ((ap_phi_mux_icmp_ln1647_phi_fu_405_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_kk41_load);
assign select_ln16_1_fu_1150_p3 = ((icmp_ln1647_reg_402[0:0] == 1'b1) ? 13'd1 : add_ln16_1_fu_1144_p2);
assign select_ln17_1_fu_1137_p3 = ((empty_reg_1298[0:0] == 1'b1) ? 10'd1 : add_ln17_1_fu_1131_p2);
assign temp_x_1_fu_882_p1 = m1_1_q0;
assign temp_x_fu_886_p1 = m1_0_load_reg_1410;
assign tmp_1_fu_712_p4 = {{jj_fu_652_p3[5:2]}};
assign tmp_2_fu_997_p3 = {{empty_8_reg_1335}, {indvars_iv79_udiv_reg_1329}};
assign tmp_3_fu_1043_p4 = {{{empty_8_reg_1335}, {tmp_5_reg_1349}}, {2'd3}};
assign tmp_4_fu_1009_p4 = {{{empty_8_reg_1335}, {tmp_1_reg_1343}}, {1'd1}};
assign tmp_s_fu_1028_p5 = {{{{empty_8_reg_1335}, {tmp_5_reg_1349}}, {1'd1}}, {tmp_reg_1358}};
assign xor_ln11_fu_577_p2 = (ap_phi_mux_icmp_ln1647_phi_fu_405_p4 ^ 1'd1);
assign xor_ln18_fu_1164_p2 = (tmp_8_reg_1405 ^ 1'd1);
assign zext_ln21_fu_764_p1 = add_ln21_1_fu_755_p4;
assign zext_ln23_1_fu_800_p1 = or_ln_fu_789_p5;
assign zext_ln23_2_fu_860_p1 = or_ln23_6_fu_849_p6;
assign zext_ln23_3_fu_876_p1 = or_ln23_7_fu_866_p5;
assign zext_ln23_4_fu_904_p1 = add_ln23_4_fu_895_p5;
assign zext_ln23_5_fu_921_p1 = or_ln23_s_fu_910_p6;
assign zext_ln23_6_fu_944_p1 = or_ln23_1_fu_932_p7;
assign zext_ln23_7_fu_961_p1 = or_ln23_2_fu_950_p6;
assign zext_ln23_8_fu_785_p1 = tmp_1_fu_712_p4;
assign zext_ln23_9_fu_846_p1 = tmp_5_reg_1349;
assign zext_ln23_fu_779_p1 = add_ln_fu_770_p4;
always @ (posedge ap_clk) begin
    prod_0_addr_1_reg_1592[0] <= 1'b1;
    prod_1_addr_1_reg_1598[0] <= 1'b1;
    prod_0_addr_2_reg_1609[1] <= 1'b1;
    prod_1_addr_2_reg_1615[1] <= 1'b1;
    prod_0_addr_3_reg_1621[1:0] <= 2'b11;
    prod_1_addr_3_reg_1627[1:0] <= 2'b11;
end
endmodule 