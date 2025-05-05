module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m1_2_address0,m1_2_ce0,m1_2_q0,m1_3_address0,m1_3_ce0,m1_3_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_1_address0,m2_1_ce0,m2_1_q0,m2_2_address0,m2_2_ce0,m2_2_q0,m2_3_address0,m2_3_ce0,m2_3_q0,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_2_q0,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_3_q0); 
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
output  [9:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [9:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [9:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
output  [9:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [9:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [9:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [9:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [9:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
output  [9:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [9:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [9:0] prod_2_address0;
output   prod_2_ce0;
output   prod_2_we0;
output  [63:0] prod_2_d0;
input  [63:0] prod_2_q0;
output  [9:0] prod_3_address0;
output   prod_3_ce0;
output   prod_3_we0;
output  [63:0] prod_3_d0;
input  [63:0] prod_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire   [0:0] icmp_ln15_fu_1024_p2;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage7_pp0_iter1_reg;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln15_reg_1503;
reg   [0:0] icmp_ln15_reg_1503_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage5;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln1685_reg_349;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] empty_fu_526_p2;
reg   [0:0] empty_reg_1273;
wire   [0:0] exitcond_flatten_mid234_fu_556_p2;
reg   [0:0] exitcond_flatten_mid234_reg_1279;
wire   [0:0] empty_7_fu_576_p2;
reg   [0:0] empty_7_reg_1284;
wire   [3:0] k_mid26_fu_582_p3;
reg   [3:0] k_mid26_reg_1290;
wire   [0:0] icmp_ln22_mid211_fu_590_p2;
reg   [0:0] icmp_ln22_mid211_reg_1296;
reg   [0:0] tmp_2_reg_1302;
reg   [2:0] tmp_1_reg_1307;
wire   [3:0] j_mid2_fu_671_p3;
reg   [3:0] j_mid2_reg_1313;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] trunc_ln18_1_fu_688_p1;
reg   [1:0] trunc_ln18_1_reg_1318;
wire   [5:0] trunc_ln21_fu_705_p1;
reg   [5:0] trunc_ln21_reg_1323;
wire   [0:0] or_ln23_fu_742_p2;
reg   [0:0] or_ln23_reg_1348;
wire   [2:0] tmp_5_fu_748_p4;
reg   [2:0] tmp_5_reg_1353;
wire   [63:0] temp_x_fu_819_p11;
reg   [63:0] temp_x_reg_1378;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] m2_0_load_reg_1383;
reg   [63:0] m2_1_load_reg_1388;
reg   [63:0] m2_2_load_reg_1393;
reg   [63:0] m2_3_load_reg_1398;
wire   [63:0] bitcast_ln23_fu_842_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [9:0] prod_0_addr_reg_1408;
reg   [9:0] prod_0_addr_reg_1408_pp0_iter1_reg;
wire   [0:0] addr_cmp108_fu_864_p2;
reg   [0:0] addr_cmp108_reg_1413;
reg   [9:0] prod_1_addr_reg_1418;
reg   [9:0] prod_1_addr_reg_1418_pp0_iter1_reg;
wire   [0:0] addr_cmp102_fu_878_p2;
reg   [0:0] addr_cmp102_reg_1423;
reg   [9:0] prod_2_addr_reg_1428;
reg   [9:0] prod_2_addr_reg_1428_pp0_iter1_reg;
reg   [9:0] prod_2_addr_reg_1428_pp0_iter2_reg;
wire   [0:0] addr_cmp96_fu_892_p2;
reg   [0:0] addr_cmp96_reg_1433;
reg   [0:0] addr_cmp96_reg_1433_pp0_iter1_reg;
reg   [9:0] prod_3_addr_reg_1438;
reg   [9:0] prod_3_addr_reg_1438_pp0_iter1_reg;
reg   [9:0] prod_3_addr_reg_1438_pp0_iter2_reg;
wire   [0:0] addr_cmp_fu_906_p2;
reg   [0:0] addr_cmp_reg_1443;
reg   [0:0] addr_cmp_reg_1443_pp0_iter1_reg;
reg   [63:0] prod_0_load_reg_1448;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln23_1_fu_917_p1;
reg   [63:0] prod_1_load_reg_1458;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] bitcast_ln23_2_fu_921_p1;
reg   [63:0] prod_2_load_reg_1468;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln23_3_fu_925_p1;
reg   [63:0] prod_3_load_reg_1478;
wire   [0:0] xor_ln22_fu_1000_p2;
reg   [0:0] xor_ln22_reg_1483;
wire   [0:0] icmp_ln18_fu_1006_p2;
reg   [0:0] icmp_ln18_reg_1488;
wire   [0:0] icmp_ln17_fu_1012_p2;
reg   [0:0] icmp_ln17_reg_1493;
wire   [0:0] icmp_ln16_fu_1018_p2;
reg   [0:0] icmp_ln16_reg_1498;
wire   [63:0] grp_fu_394_p2;
reg   [63:0] mul_reg_1507;
wire   [63:0] bitcast_ln24_fu_1064_p1;
reg   [63:0] mul_1_reg_1517;
wire   [63:0] bitcast_ln24_2_fu_1078_p1;
reg   [63:0] mul_2_reg_1527;
wire   [63:0] bitcast_ln24_4_fu_1092_p1;
reg   [63:0] mul_3_reg_1537;
wire   [63:0] bitcast_ln24_6_fu_1106_p1;
wire   [63:0] bitcast_ln24_1_fu_1111_p1;
reg   [63:0] bitcast_ln24_1_reg_1547;
wire   [63:0] bitcast_ln24_3_fu_1120_p1;
reg   [63:0] bitcast_ln24_3_reg_1552;
wire   [63:0] bitcast_ln24_5_fu_1129_p1;
reg   [63:0] bitcast_ln24_5_reg_1557;
wire   [63:0] bitcast_ln24_7_fu_1138_p1;
reg   [63:0] bitcast_ln24_7_reg_1562;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln1685_phi_fu_352_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1784_phi_fu_363_p4;
reg   [0:0] ap_phi_mux_icmp_ln1883_phi_fu_373_p4;
reg   [0:0] ap_phi_mux_icmp_ln2282_phi_fu_383_p4;
wire   [63:0] zext_ln21_fu_718_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_fu_769_p1;
wire   [63:0] zext_ln24_fu_853_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] reuse_addr_reg105_fu_124;
reg   [63:0] reuse_reg104_fu_128;
wire    ap_block_pp0_stage2;
reg   [63:0] reuse_addr_reg99_fu_132;
reg   [63:0] reuse_reg98_fu_136;
reg   [63:0] reuse_addr_reg93_fu_140;
reg   [63:0] reuse_reg92_fu_144;
wire    ap_block_pp0_stage4;
reg   [63:0] reuse_addr_reg_fu_148;
reg   [63:0] reuse_reg_fu_152;
wire    ap_block_pp0_stage5;
reg   [15:0] indvar_flatten6873_fu_156;
wire   [15:0] add_ln15_1_fu_986_p2;
wire    ap_block_pp0_stage7;
reg   [6:0] jj74_fu_160;
wire   [6:0] jj_fu_631_p3;
reg   [14:0] indvar_flatten3575_fu_164;
wire   [14:0] select_ln16_1_fu_978_p3;
reg   [6:0] kk76_fu_168;
wire   [6:0] kk_fu_562_p3;
reg   [6:0] ap_sig_allocacmp_kk76_load;
reg   [11:0] indvar_flatten1277_fu_172;
wire   [11:0] select_ln17_1_fu_965_p3;
reg   [6:0] i78_fu_176;
wire   [6:0] i_fu_659_p3;
reg   [5:0] indvar_flatten79_fu_180;
wire   [5:0] select_ln18_1_fu_952_p3;
reg   [3:0] k80_fu_184;
wire   [3:0] k_fu_678_p3;
reg   [3:0] ap_sig_allocacmp_k80_load;
reg   [3:0] j81_fu_188;
wire   [3:0] j_fu_941_p2;
reg   [6:0] add_ln1586_fu_192;
wire   [6:0] add_ln15_fu_777_p2;
reg    m1_0_ce0_local;
reg    m1_1_ce0_local;
reg    m1_2_ce0_local;
reg    m1_3_ce0_local;
reg    m2_0_ce0_local;
reg    m2_1_ce0_local;
reg    m2_2_ce0_local;
reg    m2_3_ce0_local;
reg    prod_0_ce0_local;
reg   [9:0] prod_0_address0_local;
reg    prod_0_we0_local;
reg    prod_1_ce0_local;
reg   [9:0] prod_1_address0_local;
reg    prod_1_we0_local;
reg    prod_2_ce0_local;
reg   [9:0] prod_2_address0_local;
reg    prod_2_we0_local;
reg    prod_3_ce0_local;
reg   [9:0] prod_3_address0_local;
wire    ap_block_pp0_stage6;
reg    prod_3_we0_local;
reg   [63:0] grp_fu_390_p0;
reg   [63:0] grp_fu_390_p1;
reg   [63:0] grp_fu_394_p1;
wire   [0:0] xor_ln11_fu_508_p2;
wire   [6:0] select_ln11_fu_494_p3;
wire   [0:0] and_ln11_1_fu_514_p2;
wire   [0:0] or_ln11_fu_502_p2;
wire   [0:0] exitcond_flatten14_not_fu_538_p2;
wire   [0:0] and_ln11_fu_550_p2;
wire   [0:0] not_exitcond_flatten14_mid267_fu_544_p2;
wire   [6:0] add_ln16_fu_520_p2;
wire   [0:0] empty_6_fu_570_p2;
wire   [0:0] icmp_ln22_mid230_fu_532_p2;
wire   [6:0] i_mid219_fu_639_p3;
wire   [6:0] add_ln17_fu_646_p2;
wire   [3:0] j_mid27_fu_652_p3;
wire   [3:0] add_ln18_fu_666_p2;
wire   [0:0] tmp_fu_692_p3;
wire   [0:0] or_ln21_fu_700_p2;
wire   [9:0] add_ln21_1_fu_709_p4;
wire   [0:0] tmp_4_fu_734_p3;
wire   [0:0] tmp_3_fu_726_p3;
wire   [2:0] trunc_ln18_fu_684_p1;
wire   [9:0] add_ln23_1_fu_758_p5;
wire   [63:0] temp_x_fu_819_p2;
wire   [63:0] temp_x_fu_819_p4;
wire   [63:0] temp_x_fu_819_p6;
wire   [63:0] temp_x_fu_819_p8;
wire   [63:0] temp_x_fu_819_p9;
wire   [9:0] add_ln24_1_fu_846_p4;
wire   [5:0] add_ln18_1_fu_946_p2;
wire   [11:0] add_ln17_1_fu_959_p2;
wire   [14:0] add_ln16_1_fu_972_p2;
wire   [0:0] tmp_6_fu_992_p3;
wire   [63:0] reuse_select109_fu_1058_p3;
wire   [63:0] reuse_select103_fu_1072_p3;
wire   [63:0] reuse_select97_fu_1086_p3;
wire   [63:0] reuse_select_fu_1100_p3;
wire   [63:0] grp_fu_390_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1004;
reg    ap_condition_1008;
reg    ap_condition_1018;
reg    ap_condition_430;
wire   [1:0] temp_x_fu_819_p1;
wire   [1:0] temp_x_fu_819_p3;
wire  signed [1:0] temp_x_fu_819_p5;
wire  signed [1:0] temp_x_fu_819_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 reuse_addr_reg105_fu_124 = 64'd0;
#0 reuse_reg104_fu_128 = 64'd0;
#0 reuse_addr_reg99_fu_132 = 64'd0;
#0 reuse_reg98_fu_136 = 64'd0;
#0 reuse_addr_reg93_fu_140 = 64'd0;
#0 reuse_reg92_fu_144 = 64'd0;
#0 reuse_addr_reg_fu_148 = 64'd0;
#0 reuse_reg_fu_152 = 64'd0;
#0 indvar_flatten6873_fu_156 = 16'd0;
#0 jj74_fu_160 = 7'd0;
#0 indvar_flatten3575_fu_164 = 15'd0;
#0 kk76_fu_168 = 7'd0;
#0 indvar_flatten1277_fu_172 = 12'd0;
#0 i78_fu_176 = 7'd0;
#0 indvar_flatten79_fu_180 = 6'd0;
#0 k80_fu_184 = 4'd0;
#0 j81_fu_188 = 4'd0;
#0 add_ln1586_fu_192 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_390_p0),.din1(grp_fu_390_p1),.ce(1'b1),.dout(grp_fu_390_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(temp_x_reg_1378),.din1(grp_fu_394_p1),.ce(1'b1),.dout(grp_fu_394_p2));
(* dissolve_hierarchy = "yes" *) bbgemm_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(temp_x_fu_819_p2),.din1(temp_x_fu_819_p4),.din2(temp_x_fu_819_p6),.din3(temp_x_fu_819_p8),.def(temp_x_fu_819_p9),.sel(trunc_ln18_1_reg_1318),.dout(temp_x_fu_819_p11));
bbgemm_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1004)) begin
            add_ln1586_fu_192 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1586_fu_192 <= add_ln15_fu_777_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage5))) begin
        ap_condition_exit_pp0_iter0_stage7_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage7;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage5)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1004)) begin
            i78_fu_176 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i78_fu_176 <= i_fu_659_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1018)) begin
            icmp_ln1685_reg_349 <= icmp_ln16_reg_1498;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1685_reg_349 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1004)) begin
            indvar_flatten1277_fu_172 <= 12'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            indvar_flatten1277_fu_172 <= select_ln17_1_fu_965_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1004)) begin
            indvar_flatten3575_fu_164 <= 15'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            indvar_flatten3575_fu_164 <= select_ln16_1_fu_978_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1004)) begin
            indvar_flatten6873_fu_156 <= 16'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            indvar_flatten6873_fu_156 <= add_ln15_1_fu_986_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1004)) begin
            indvar_flatten79_fu_180 <= 6'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            indvar_flatten79_fu_180 <= select_ln18_1_fu_952_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1004)) begin
            j81_fu_188 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            j81_fu_188 <= j_fu_941_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1004)) begin
            jj74_fu_160 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj74_fu_160 <= jj_fu_631_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1004)) begin
            k80_fu_184 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k80_fu_184 <= k_fu_678_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_430)) begin
        kk76_fu_168 <= kk_fu_562_p3;
    end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_1004)) begin
        reuse_addr_reg105_fu_124 <= 64'd18446744073709551615;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reuse_addr_reg105_fu_124 <= zext_ln24_fu_853_p1;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_1004)) begin
        reuse_addr_reg93_fu_140 <= 64'd18446744073709551615;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reuse_addr_reg93_fu_140 <= zext_ln24_fu_853_p1;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_1004)) begin
        reuse_addr_reg99_fu_132 <= 64'd18446744073709551615;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reuse_addr_reg99_fu_132 <= zext_ln24_fu_853_p1;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_1004)) begin
        reuse_addr_reg_fu_148 <= 64'd18446744073709551615;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reuse_addr_reg_fu_148 <= zext_ln24_fu_853_p1;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    reuse_reg104_fu_128 <= 64'd0;
end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
    reuse_reg104_fu_128 <= bitcast_ln24_1_fu_1111_p1;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    reuse_reg92_fu_144 <= 64'd0;
end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
    reuse_reg92_fu_144 <= bitcast_ln24_5_fu_1129_p1;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    reuse_reg98_fu_136 <= 64'd0;
end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
    reuse_reg98_fu_136 <= bitcast_ln24_3_fu_1120_p1;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    reuse_reg_fu_152 <= 64'd0;
end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
    reuse_reg_fu_152 <= bitcast_ln24_7_fu_1138_p1;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        addr_cmp102_reg_1423 <= addr_cmp102_fu_878_p2;
        addr_cmp108_reg_1413 <= addr_cmp108_fu_864_p2;
        addr_cmp96_reg_1433 <= addr_cmp96_fu_892_p2;
        addr_cmp96_reg_1433_pp0_iter1_reg <= addr_cmp96_reg_1433;
        addr_cmp_reg_1443 <= addr_cmp_fu_906_p2;
        addr_cmp_reg_1443_pp0_iter1_reg <= addr_cmp_reg_1443;
        bitcast_ln24_5_reg_1557 <= bitcast_ln24_5_fu_1129_p1;
        prod_0_addr_reg_1408 <= zext_ln24_fu_853_p1;
        prod_0_addr_reg_1408_pp0_iter1_reg <= prod_0_addr_reg_1408;
        prod_1_addr_reg_1418 <= zext_ln24_fu_853_p1;
        prod_1_addr_reg_1418_pp0_iter1_reg <= prod_1_addr_reg_1418;
        prod_2_addr_reg_1428 <= zext_ln24_fu_853_p1;
        prod_2_addr_reg_1428_pp0_iter1_reg <= prod_2_addr_reg_1428;
        prod_2_addr_reg_1428_pp0_iter2_reg <= prod_2_addr_reg_1428_pp0_iter1_reg;
        prod_3_addr_reg_1438 <= zext_ln24_fu_853_p1;
        prod_3_addr_reg_1438_pp0_iter1_reg <= prod_3_addr_reg_1438;
        prod_3_addr_reg_1438_pp0_iter2_reg <= prod_3_addr_reg_1438_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bitcast_ln24_1_reg_1547 <= bitcast_ln24_1_fu_1111_p1;
        j_mid2_reg_1313 <= j_mid2_fu_671_p3;
        or_ln23_reg_1348 <= or_ln23_fu_742_p2;
        tmp_5_reg_1353 <= {{jj_fu_631_p3[5:3]}};
        trunc_ln18_1_reg_1318 <= trunc_ln18_1_fu_688_p1;
        trunc_ln21_reg_1323 <= trunc_ln21_fu_705_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bitcast_ln24_3_reg_1552 <= bitcast_ln24_3_fu_1120_p1;
        m2_0_load_reg_1383 <= m2_0_q0;
        m2_1_load_reg_1388 <= m2_1_q0;
        m2_2_load_reg_1393 <= m2_2_q0;
        m2_3_load_reg_1398 <= m2_3_q0;
        temp_x_reg_1378 <= temp_x_fu_819_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bitcast_ln24_7_reg_1562 <= bitcast_ln24_7_fu_1138_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_7_reg_1284 <= empty_7_fu_576_p2;
        empty_reg_1273 <= empty_fu_526_p2;
        exitcond_flatten_mid234_reg_1279 <= exitcond_flatten_mid234_fu_556_p2;
        icmp_ln22_mid211_reg_1296 <= icmp_ln22_mid211_fu_590_p2;
        k_mid26_reg_1290 <= k_mid26_fu_582_p3;
        tmp_1_reg_1307 <= {{kk_fu_562_p3[5:3]}};
        tmp_2_reg_1302 <= kk_fu_562_p3[32'd2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln15_reg_1503 <= icmp_ln15_fu_1024_p2;
        icmp_ln15_reg_1503_pp0_iter1_reg <= icmp_ln15_reg_1503;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln16_reg_1498 <= icmp_ln16_fu_1018_p2;
        icmp_ln17_reg_1493 <= icmp_ln17_fu_1012_p2;
        icmp_ln18_reg_1488 <= icmp_ln18_fu_1006_p2;
        prod_3_load_reg_1478 <= prod_3_q0;
        xor_ln22_reg_1483 <= xor_ln22_fu_1000_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_1_reg_1517 <= grp_fu_394_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_2_reg_1527 <= grp_fu_394_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_3_reg_1537 <= grp_fu_394_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_reg_1507 <= grp_fu_394_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_0_load_reg_1448 <= prod_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        prod_1_load_reg_1458 <= prod_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        prod_2_load_reg_1468 <= prod_2_q0;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_1024_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln15_reg_1503_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter2_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage7_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1008)) begin
            ap_phi_mux_icmp_ln1685_phi_fu_352_p4 = icmp_ln16_reg_1498;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1685_phi_fu_352_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1685_phi_fu_352_p4 = icmp_ln16_reg_1498;
        end
    end else begin
        ap_phi_mux_icmp_ln1685_phi_fu_352_p4 = icmp_ln16_reg_1498;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1008)) begin
            ap_phi_mux_icmp_ln1784_phi_fu_363_p4 = icmp_ln17_reg_1493;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1784_phi_fu_363_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1784_phi_fu_363_p4 = icmp_ln17_reg_1493;
        end
    end else begin
        ap_phi_mux_icmp_ln1784_phi_fu_363_p4 = icmp_ln17_reg_1493;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1008)) begin
            ap_phi_mux_icmp_ln1883_phi_fu_373_p4 = icmp_ln18_reg_1488;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1883_phi_fu_373_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1883_phi_fu_373_p4 = icmp_ln18_reg_1488;
        end
    end else begin
        ap_phi_mux_icmp_ln1883_phi_fu_373_p4 = icmp_ln18_reg_1488;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1008)) begin
            ap_phi_mux_icmp_ln2282_phi_fu_383_p4 = xor_ln22_reg_1483;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln2282_phi_fu_383_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln2282_phi_fu_383_p4 = xor_ln22_reg_1483;
        end
    end else begin
        ap_phi_mux_icmp_ln2282_phi_fu_383_p4 = xor_ln22_reg_1483;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k80_load = 4'd0;
    end else begin
        ap_sig_allocacmp_k80_load = k80_fu_184;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_kk76_load = 7'd0;
    end else begin
        ap_sig_allocacmp_kk76_load = kk76_fu_168;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_390_p0 = bitcast_ln24_6_fu_1106_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_390_p0 = bitcast_ln24_4_fu_1092_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_390_p0 = bitcast_ln24_2_fu_1078_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_390_p0 = bitcast_ln24_fu_1064_p1;
        end else begin
            grp_fu_390_p0 = 'bx;
        end
    end else begin
        grp_fu_390_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_390_p1 = mul_3_reg_1537;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_390_p1 = mul_2_reg_1527;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_390_p1 = mul_1_reg_1517;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_390_p1 = mul_reg_1507;
        end else begin
            grp_fu_390_p1 = 'bx;
        end
    end else begin
        grp_fu_390_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_394_p1 = bitcast_ln23_3_fu_925_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_394_p1 = bitcast_ln23_2_fu_921_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_394_p1 = bitcast_ln23_1_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_394_p1 = bitcast_ln23_fu_842_p1;
        end else begin
            grp_fu_394_p1 = 'bx;
        end
    end else begin
        grp_fu_394_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_2_ce0_local = 1'b1;
    end else begin
        m1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_3_ce0_local = 1'b1;
    end else begin
        m1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_2_ce0_local = 1'b1;
    end else begin
        m2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_3_ce0_local = 1'b1;
    end else begin
        m2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_0_address0_local = prod_0_addr_reg_1408_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_0_address0_local = zext_ln24_fu_853_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_1_address0_local = prod_1_addr_reg_1418_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_1_address0_local = prod_1_addr_reg_1418;
    end else begin
        prod_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_2_address0_local = prod_2_addr_reg_1428_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        prod_2_address0_local = prod_2_addr_reg_1428;
    end else begin
        prod_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        prod_2_ce0_local = 1'b1;
    end else begin
        prod_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_2_we0_local = 1'b1;
    end else begin
        prod_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        prod_3_address0_local = prod_3_addr_reg_1438_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        prod_3_address0_local = prod_3_addr_reg_1438;
    end else begin
        prod_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        prod_3_ce0_local = 1'b1;
    end else begin
        prod_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        prod_3_we0_local = 1'b1;
    end else begin
        prod_3_we0_local = 1'b0;
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage5))) begin
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
assign add_ln15_1_fu_986_p2 = (indvar_flatten6873_fu_156 + 16'd1);
assign add_ln15_fu_777_p2 = (jj_fu_631_p3 + 7'd8);
assign add_ln16_1_fu_972_p2 = (indvar_flatten3575_fu_164 + 15'd1);
assign add_ln16_fu_520_p2 = (select_ln11_fu_494_p3 + 7'd8);
assign add_ln17_1_fu_959_p2 = (indvar_flatten1277_fu_172 + 12'd1);
assign add_ln17_fu_646_p2 = (i_mid219_fu_639_p3 + 7'd1);
assign add_ln18_1_fu_946_p2 = (indvar_flatten79_fu_180 + 6'd1);
assign add_ln18_fu_666_p2 = (k_mid26_reg_1290 + 4'd1);
assign add_ln21_1_fu_709_p4 = {{{trunc_ln21_fu_705_p1}, {tmp_1_reg_1307}}, {or_ln21_fu_700_p2}};
assign add_ln23_1_fu_758_p5 = {{{{tmp_1_reg_1307}, {trunc_ln18_fu_684_p1}}, {tmp_5_fu_748_p4}}, {or_ln23_fu_742_p2}};
assign add_ln24_1_fu_846_p4 = {{{trunc_ln21_reg_1323}, {tmp_5_reg_1353}}, {or_ln23_reg_1348}};
assign addr_cmp102_fu_878_p2 = ((reuse_addr_reg99_fu_132 == zext_ln24_fu_853_p1) ? 1'b1 : 1'b0);
assign addr_cmp108_fu_864_p2 = ((reuse_addr_reg105_fu_124 == zext_ln24_fu_853_p1) ? 1'b1 : 1'b0);
assign addr_cmp96_fu_892_p2 = ((reuse_addr_reg93_fu_140 == zext_ln24_fu_853_p1) ? 1'b1 : 1'b0);
assign addr_cmp_fu_906_p2 = ((reuse_addr_reg_fu_148 == zext_ln24_fu_853_p1) ? 1'b1 : 1'b0);
assign and_ln11_1_fu_514_p2 = (xor_ln11_fu_508_p2 & ap_phi_mux_icmp_ln1784_phi_fu_363_p4);
assign and_ln11_fu_550_p2 = (xor_ln11_fu_508_p2 & ap_phi_mux_icmp_ln1883_phi_fu_373_p4);
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
    ap_condition_1004 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1008 = ((icmp_ln15_reg_1503 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1018 = ((icmp_ln15_reg_1503 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_430 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_1_fu_917_p1 = m2_1_load_reg_1388;
assign bitcast_ln23_2_fu_921_p1 = m2_2_load_reg_1393;
assign bitcast_ln23_3_fu_925_p1 = m2_3_load_reg_1398;
assign bitcast_ln23_fu_842_p1 = m2_0_load_reg_1383;
assign bitcast_ln24_1_fu_1111_p1 = grp_fu_390_p2;
assign bitcast_ln24_2_fu_1078_p1 = reuse_select103_fu_1072_p3;
assign bitcast_ln24_3_fu_1120_p1 = grp_fu_390_p2;
assign bitcast_ln24_4_fu_1092_p1 = reuse_select97_fu_1086_p3;
assign bitcast_ln24_5_fu_1129_p1 = grp_fu_390_p2;
assign bitcast_ln24_6_fu_1106_p1 = reuse_select_fu_1100_p3;
assign bitcast_ln24_7_fu_1138_p1 = grp_fu_390_p2;
assign bitcast_ln24_fu_1064_p1 = reuse_select109_fu_1058_p3;
assign empty_6_fu_570_p2 = (exitcond_flatten_mid234_fu_556_p2 | and_ln11_1_fu_514_p2);
assign empty_7_fu_576_p2 = (empty_6_fu_570_p2 | ap_phi_mux_icmp_ln1685_phi_fu_352_p4);
assign empty_fu_526_p2 = (ap_phi_mux_icmp_ln1685_phi_fu_352_p4 | and_ln11_1_fu_514_p2);
assign exitcond_flatten14_not_fu_538_p2 = (ap_phi_mux_icmp_ln1784_phi_fu_363_p4 ^ 1'd1);
assign exitcond_flatten_mid234_fu_556_p2 = (not_exitcond_flatten14_mid267_fu_544_p2 & and_ln11_fu_550_p2);
assign i_fu_659_p3 = ((exitcond_flatten_mid234_reg_1279[0:0] == 1'b1) ? add_ln17_fu_646_p2 : i_mid219_fu_639_p3);
assign i_mid219_fu_639_p3 = ((empty_reg_1273[0:0] == 1'b1) ? 7'd0 : i78_fu_176);
assign icmp_ln15_fu_1024_p2 = ((indvar_flatten6873_fu_156 == 16'd65535) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_1018_p2 = ((select_ln16_1_fu_978_p3 == 15'd8192) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_1012_p2 = ((select_ln17_1_fu_965_p3 == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_1006_p2 = ((select_ln18_1_fu_952_p3 == 6'd16) ? 1'b1 : 1'b0);
assign icmp_ln22_mid211_fu_590_p2 = (icmp_ln22_mid230_fu_532_p2 | exitcond_flatten_mid234_fu_556_p2);
assign icmp_ln22_mid230_fu_532_p2 = (or_ln11_fu_502_p2 | and_ln11_1_fu_514_p2);
assign j_fu_941_p2 = (j_mid2_reg_1313 + 4'd4);
assign j_mid27_fu_652_p3 = ((empty_7_reg_1284[0:0] == 1'b1) ? 4'd0 : j81_fu_188);
assign j_mid2_fu_671_p3 = ((icmp_ln22_mid211_reg_1296[0:0] == 1'b1) ? j_mid27_fu_652_p3 : 4'd0);
assign jj_fu_631_p3 = ((icmp_ln1685_reg_349[0:0] == 1'b1) ? add_ln1586_fu_192 : jj74_fu_160);
assign k_fu_678_p3 = ((icmp_ln22_mid211_reg_1296[0:0] == 1'b1) ? k_mid26_reg_1290 : add_ln18_fu_666_p2);
assign k_mid26_fu_582_p3 = ((empty_7_fu_576_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_k80_load);
assign kk_fu_562_p3 = ((and_ln11_1_fu_514_p2[0:0] == 1'b1) ? add_ln16_fu_520_p2 : select_ln11_fu_494_p3);
assign m1_0_address0 = zext_ln21_fu_718_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = zext_ln21_fu_718_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m1_2_address0 = zext_ln21_fu_718_p1;
assign m1_2_ce0 = m1_2_ce0_local;
assign m1_3_address0 = zext_ln21_fu_718_p1;
assign m1_3_ce0 = m1_3_ce0_local;
assign m2_0_address0 = zext_ln23_fu_769_p1;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_1_address0 = zext_ln23_fu_769_p1;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_2_address0 = zext_ln23_fu_769_p1;
assign m2_2_ce0 = m2_2_ce0_local;
assign m2_3_address0 = zext_ln23_fu_769_p1;
assign m2_3_ce0 = m2_3_ce0_local;
assign not_exitcond_flatten14_mid267_fu_544_p2 = (exitcond_flatten14_not_fu_538_p2 | ap_phi_mux_icmp_ln1685_phi_fu_352_p4);
assign or_ln11_fu_502_p2 = (ap_phi_mux_icmp_ln2282_phi_fu_383_p4 | ap_phi_mux_icmp_ln1685_phi_fu_352_p4);
assign or_ln21_fu_700_p2 = (tmp_fu_692_p3 | tmp_2_reg_1302);
assign or_ln23_fu_742_p2 = (tmp_4_fu_734_p3 | tmp_3_fu_726_p3);
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_d0 = bitcast_ln24_1_reg_1547;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = prod_1_address0_local;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_d0 = bitcast_ln24_3_reg_1552;
assign prod_1_we0 = prod_1_we0_local;
assign prod_2_address0 = prod_2_address0_local;
assign prod_2_ce0 = prod_2_ce0_local;
assign prod_2_d0 = bitcast_ln24_5_reg_1557;
assign prod_2_we0 = prod_2_we0_local;
assign prod_3_address0 = prod_3_address0_local;
assign prod_3_ce0 = prod_3_ce0_local;
assign prod_3_d0 = bitcast_ln24_7_reg_1562;
assign prod_3_we0 = prod_3_we0_local;
assign reuse_select103_fu_1072_p3 = ((addr_cmp102_reg_1423[0:0] == 1'b1) ? reuse_reg98_fu_136 : prod_1_load_reg_1458);
assign reuse_select109_fu_1058_p3 = ((addr_cmp108_reg_1413[0:0] == 1'b1) ? reuse_reg104_fu_128 : prod_0_load_reg_1448);
assign reuse_select97_fu_1086_p3 = ((addr_cmp96_reg_1433_pp0_iter1_reg[0:0] == 1'b1) ? reuse_reg92_fu_144 : prod_2_load_reg_1468);
assign reuse_select_fu_1100_p3 = ((addr_cmp_reg_1443_pp0_iter1_reg[0:0] == 1'b1) ? reuse_reg_fu_152 : prod_3_load_reg_1478);
assign select_ln11_fu_494_p3 = ((ap_phi_mux_icmp_ln1685_phi_fu_352_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_kk76_load);
assign select_ln16_1_fu_978_p3 = ((icmp_ln1685_reg_349[0:0] == 1'b1) ? 15'd1 : add_ln16_1_fu_972_p2);
assign select_ln17_1_fu_965_p3 = ((empty_reg_1273[0:0] == 1'b1) ? 12'd1 : add_ln17_1_fu_959_p2);
assign select_ln18_1_fu_952_p3 = ((empty_7_reg_1284[0:0] == 1'b1) ? 6'd1 : add_ln18_1_fu_946_p2);
assign temp_x_fu_819_p2 = m1_0_q0;
assign temp_x_fu_819_p4 = m1_1_q0;
assign temp_x_fu_819_p6 = m1_2_q0;
assign temp_x_fu_819_p8 = m1_3_q0;
assign temp_x_fu_819_p9 = 'bx;
assign tmp_3_fu_726_p3 = j_mid2_fu_671_p3[32'd2];
assign tmp_4_fu_734_p3 = jj_fu_631_p3[32'd2];
assign tmp_5_fu_748_p4 = {{jj_fu_631_p3[5:3]}};
assign tmp_6_fu_992_p3 = j_fu_941_p2[32'd3];
assign tmp_fu_692_p3 = k_fu_678_p3[32'd2];
assign trunc_ln18_1_fu_688_p1 = k_fu_678_p3[1:0];
assign trunc_ln18_fu_684_p1 = k_fu_678_p3[2:0];
assign trunc_ln21_fu_705_p1 = i_fu_659_p3[5:0];
assign xor_ln11_fu_508_p2 = (ap_phi_mux_icmp_ln1685_phi_fu_352_p4 ^ 1'd1);
assign xor_ln22_fu_1000_p2 = (tmp_6_fu_992_p3 ^ 1'd1);
assign zext_ln21_fu_718_p1 = add_ln21_1_fu_709_p4;
assign zext_ln23_fu_769_p1 = add_ln23_1_fu_758_p5;
assign zext_ln24_fu_853_p1 = add_ln24_1_fu_846_p4;
endmodule 