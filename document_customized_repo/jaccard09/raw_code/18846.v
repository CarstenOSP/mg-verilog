module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,e,cnt,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,edges_8_address0,edges_8_ce0,edges_8_q0,edges_9_address0,edges_9_ce0,edges_9_q0,edges_10_address0,edges_10_ce0,edges_10_q0,edges_11_address0,edges_11_ce0,edges_11_q0,edges_12_address0,edges_12_ce0,edges_12_q0,edges_13_address0,edges_13_ce0,edges_13_q0,edges_14_address0,edges_14_ce0,edges_14_q0,edges_15_address0,edges_15_ce0,edges_15_q0,edges_16_address0,edges_16_ce0,edges_16_q0,edges_17_address0,edges_17_ce0,edges_17_q0,edges_18_address0,edges_18_ce0,edges_18_q0,edges_19_address0,edges_19_ce0,edges_19_q0,edges_20_address0,edges_20_ce0,edges_20_q0,edges_21_address0,edges_21_ce0,edges_21_q0,edges_22_address0,edges_22_ce0,edges_22_q0,edges_23_address0,edges_23_ce0,edges_23_q0,edges_24_address0,edges_24_ce0,edges_24_q0,edges_25_address0,edges_25_ce0,edges_25_q0,edges_26_address0,edges_26_ce0,edges_26_q0,edges_27_address0,edges_27_ce0,edges_27_q0,edges_28_address0,edges_28_ce0,edges_28_q0,edges_29_address0,edges_29_ce0,edges_29_q0,edges_30_address0,edges_30_ce0,edges_30_q0,edges_31_address0,edges_31_ce0,edges_31_q0,level_address0,level_ce0,level_we0,level_d0,level_q0,indvars_iv_next12_cast4,cnt_1_out,cnt_1_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] e;
input  [63:0] cnt;
input  [63:0] tmp_end;
output  [6:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [6:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [6:0] edges_2_address0;
output   edges_2_ce0;
input  [63:0] edges_2_q0;
output  [6:0] edges_3_address0;
output   edges_3_ce0;
input  [63:0] edges_3_q0;
output  [6:0] edges_4_address0;
output   edges_4_ce0;
input  [63:0] edges_4_q0;
output  [6:0] edges_5_address0;
output   edges_5_ce0;
input  [63:0] edges_5_q0;
output  [6:0] edges_6_address0;
output   edges_6_ce0;
input  [63:0] edges_6_q0;
output  [6:0] edges_7_address0;
output   edges_7_ce0;
input  [63:0] edges_7_q0;
output  [6:0] edges_8_address0;
output   edges_8_ce0;
input  [63:0] edges_8_q0;
output  [6:0] edges_9_address0;
output   edges_9_ce0;
input  [63:0] edges_9_q0;
output  [6:0] edges_10_address0;
output   edges_10_ce0;
input  [63:0] edges_10_q0;
output  [6:0] edges_11_address0;
output   edges_11_ce0;
input  [63:0] edges_11_q0;
output  [6:0] edges_12_address0;
output   edges_12_ce0;
input  [63:0] edges_12_q0;
output  [6:0] edges_13_address0;
output   edges_13_ce0;
input  [63:0] edges_13_q0;
output  [6:0] edges_14_address0;
output   edges_14_ce0;
input  [63:0] edges_14_q0;
output  [6:0] edges_15_address0;
output   edges_15_ce0;
input  [63:0] edges_15_q0;
output  [6:0] edges_16_address0;
output   edges_16_ce0;
input  [63:0] edges_16_q0;
output  [6:0] edges_17_address0;
output   edges_17_ce0;
input  [63:0] edges_17_q0;
output  [6:0] edges_18_address0;
output   edges_18_ce0;
input  [63:0] edges_18_q0;
output  [6:0] edges_19_address0;
output   edges_19_ce0;
input  [63:0] edges_19_q0;
output  [6:0] edges_20_address0;
output   edges_20_ce0;
input  [63:0] edges_20_q0;
output  [6:0] edges_21_address0;
output   edges_21_ce0;
input  [63:0] edges_21_q0;
output  [6:0] edges_22_address0;
output   edges_22_ce0;
input  [63:0] edges_22_q0;
output  [6:0] edges_23_address0;
output   edges_23_ce0;
input  [63:0] edges_23_q0;
output  [6:0] edges_24_address0;
output   edges_24_ce0;
input  [63:0] edges_24_q0;
output  [6:0] edges_25_address0;
output   edges_25_ce0;
input  [63:0] edges_25_q0;
output  [6:0] edges_26_address0;
output   edges_26_ce0;
input  [63:0] edges_26_q0;
output  [6:0] edges_27_address0;
output   edges_27_ce0;
input  [63:0] edges_27_q0;
output  [6:0] edges_28_address0;
output   edges_28_ce0;
input  [63:0] edges_28_q0;
output  [6:0] edges_29_address0;
output   edges_29_ce0;
input  [63:0] edges_29_q0;
output  [6:0] edges_30_address0;
output   edges_30_ce0;
input  [63:0] edges_30_q0;
output  [6:0] edges_31_address0;
output   edges_31_ce0;
input  [63:0] edges_31_q0;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [3:0] indvars_iv_next12_cast4;
output  [63:0] cnt_1_out;
output   cnt_1_out_ap_vld;
reg ap_idle;
reg cnt_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln28_reg_1098;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] indvars_iv_next12_cast4_cast_fu_662_p1;
reg   [7:0] indvars_iv_next12_cast4_cast_reg_1087;
reg   [63:0] e_3_reg_1092;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln28_fu_687_p2;
wire   [0:0] icmp_ln29_fu_745_p2;
reg   [0:0] icmp_ln29_reg_1102;
reg   [0:0] icmp_ln29_reg_1102_pp0_iter1_reg;
wire   [7:0] tmp_dst_fu_886_p67;
reg   [7:0] tmp_dst_reg_1266;
wire    ap_block_pp0_stage2_11001;
reg   [7:0] level_addr_reg_1271;
wire   [0:0] icmp_ln34_fu_1036_p2;
reg   [0:0] icmp_ln34_reg_1276;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln14_fu_709_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln31_fu_1032_p1;
wire    ap_block_pp0_stage0;
reg   [7:0] i_fu_190;
wire   [7:0] i_2_fu_693_p2;
wire    ap_loop_init;
reg   [63:0] e_1_fu_194;
wire   [63:0] e_4_fu_1022_p2;
reg   [63:0] cnt_1_fu_198;
wire   [63:0] cnt_2_fu_1045_p2;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage2_01001;
reg    edges_0_ce0_local;
reg    edges_1_ce0_local;
reg    edges_2_ce0_local;
reg    edges_3_ce0_local;
reg    edges_4_ce0_local;
reg    edges_5_ce0_local;
reg    edges_6_ce0_local;
reg    edges_7_ce0_local;
reg    edges_8_ce0_local;
reg    edges_9_ce0_local;
reg    edges_10_ce0_local;
reg    edges_11_ce0_local;
reg    edges_12_ce0_local;
reg    edges_13_ce0_local;
reg    edges_14_ce0_local;
reg    edges_15_ce0_local;
reg    edges_16_ce0_local;
reg    edges_17_ce0_local;
reg    edges_18_ce0_local;
reg    edges_19_ce0_local;
reg    edges_20_ce0_local;
reg    edges_21_ce0_local;
reg    edges_22_ce0_local;
reg    edges_23_ce0_local;
reg    edges_24_ce0_local;
reg    edges_25_ce0_local;
reg    edges_26_ce0_local;
reg    edges_27_ce0_local;
reg    edges_28_ce0_local;
reg    edges_29_ce0_local;
reg    edges_30_ce0_local;
reg    edges_31_ce0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire   [6:0] lshr_ln1_fu_699_p4;
wire   [7:0] tmp_dst_fu_886_p2;
wire   [7:0] tmp_dst_fu_886_p4;
wire   [7:0] tmp_dst_fu_886_p6;
wire   [7:0] tmp_dst_fu_886_p8;
wire   [7:0] tmp_dst_fu_886_p10;
wire   [7:0] tmp_dst_fu_886_p12;
wire   [7:0] tmp_dst_fu_886_p14;
wire   [7:0] tmp_dst_fu_886_p16;
wire   [7:0] tmp_dst_fu_886_p18;
wire   [7:0] tmp_dst_fu_886_p20;
wire   [7:0] tmp_dst_fu_886_p22;
wire   [7:0] tmp_dst_fu_886_p24;
wire   [7:0] tmp_dst_fu_886_p26;
wire   [7:0] tmp_dst_fu_886_p28;
wire   [7:0] tmp_dst_fu_886_p30;
wire   [7:0] tmp_dst_fu_886_p32;
wire   [7:0] tmp_dst_fu_886_p34;
wire   [7:0] tmp_dst_fu_886_p36;
wire   [7:0] tmp_dst_fu_886_p38;
wire   [7:0] tmp_dst_fu_886_p40;
wire   [7:0] tmp_dst_fu_886_p42;
wire   [7:0] tmp_dst_fu_886_p44;
wire   [7:0] tmp_dst_fu_886_p46;
wire   [7:0] tmp_dst_fu_886_p48;
wire   [7:0] tmp_dst_fu_886_p50;
wire   [7:0] tmp_dst_fu_886_p52;
wire   [7:0] tmp_dst_fu_886_p54;
wire   [7:0] tmp_dst_fu_886_p56;
wire   [7:0] tmp_dst_fu_886_p58;
wire   [7:0] tmp_dst_fu_886_p60;
wire   [7:0] tmp_dst_fu_886_p62;
wire   [7:0] tmp_dst_fu_886_p64;
wire   [7:0] tmp_dst_fu_886_p65;
wire   [4:0] tmp_dst_fu_886_p66;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_dst_fu_886_p1;
wire   [4:0] tmp_dst_fu_886_p3;
wire   [4:0] tmp_dst_fu_886_p5;
wire   [4:0] tmp_dst_fu_886_p7;
wire   [4:0] tmp_dst_fu_886_p9;
wire   [4:0] tmp_dst_fu_886_p11;
wire   [4:0] tmp_dst_fu_886_p13;
wire   [4:0] tmp_dst_fu_886_p15;
wire   [4:0] tmp_dst_fu_886_p17;
wire   [4:0] tmp_dst_fu_886_p19;
wire   [4:0] tmp_dst_fu_886_p21;
wire   [4:0] tmp_dst_fu_886_p23;
wire   [4:0] tmp_dst_fu_886_p25;
wire   [4:0] tmp_dst_fu_886_p27;
wire   [4:0] tmp_dst_fu_886_p29;
wire   [4:0] tmp_dst_fu_886_p31;
wire  signed [4:0] tmp_dst_fu_886_p33;
wire  signed [4:0] tmp_dst_fu_886_p35;
wire  signed [4:0] tmp_dst_fu_886_p37;
wire  signed [4:0] tmp_dst_fu_886_p39;
wire  signed [4:0] tmp_dst_fu_886_p41;
wire  signed [4:0] tmp_dst_fu_886_p43;
wire  signed [4:0] tmp_dst_fu_886_p45;
wire  signed [4:0] tmp_dst_fu_886_p47;
wire  signed [4:0] tmp_dst_fu_886_p49;
wire  signed [4:0] tmp_dst_fu_886_p51;
wire  signed [4:0] tmp_dst_fu_886_p53;
wire  signed [4:0] tmp_dst_fu_886_p55;
wire  signed [4:0] tmp_dst_fu_886_p57;
wire  signed [4:0] tmp_dst_fu_886_p59;
wire  signed [4:0] tmp_dst_fu_886_p61;
wire  signed [4:0] tmp_dst_fu_886_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_190 = 8'd0;
#0 e_1_fu_194 = 64'd0;
#0 cnt_1_fu_198 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_65_5_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 8 ),.CASE1( 5'h1 ),.din1_WIDTH( 8 ),.CASE2( 5'h2 ),.din2_WIDTH( 8 ),.CASE3( 5'h3 ),.din3_WIDTH( 8 ),.CASE4( 5'h4 ),.din4_WIDTH( 8 ),.CASE5( 5'h5 ),.din5_WIDTH( 8 ),.CASE6( 5'h6 ),.din6_WIDTH( 8 ),.CASE7( 5'h7 ),.din7_WIDTH( 8 ),.CASE8( 5'h8 ),.din8_WIDTH( 8 ),.CASE9( 5'h9 ),.din9_WIDTH( 8 ),.CASE10( 5'hA ),.din10_WIDTH( 8 ),.CASE11( 5'hB ),.din11_WIDTH( 8 ),.CASE12( 5'hC ),.din12_WIDTH( 8 ),.CASE13( 5'hD ),.din13_WIDTH( 8 ),.CASE14( 5'hE ),.din14_WIDTH( 8 ),.CASE15( 5'hF ),.din15_WIDTH( 8 ),.CASE16( 5'h10 ),.din16_WIDTH( 8 ),.CASE17( 5'h11 ),.din17_WIDTH( 8 ),.CASE18( 5'h12 ),.din18_WIDTH( 8 ),.CASE19( 5'h13 ),.din19_WIDTH( 8 ),.CASE20( 5'h14 ),.din20_WIDTH( 8 ),.CASE21( 5'h15 ),.din21_WIDTH( 8 ),.CASE22( 5'h16 ),.din22_WIDTH( 8 ),.CASE23( 5'h17 ),.din23_WIDTH( 8 ),.CASE24( 5'h18 ),.din24_WIDTH( 8 ),.CASE25( 5'h19 ),.din25_WIDTH( 8 ),.CASE26( 5'h1A ),.din26_WIDTH( 8 ),.CASE27( 5'h1B ),.din27_WIDTH( 8 ),.CASE28( 5'h1C ),.din28_WIDTH( 8 ),.CASE29( 5'h1D ),.din29_WIDTH( 8 ),.CASE30( 5'h1E ),.din30_WIDTH( 8 ),.CASE31( 5'h1F ),.din31_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 5 ),.dout_WIDTH( 8 ))
sparsemux_65_5_8_1_1_U1(.din0(tmp_dst_fu_886_p2),.din1(tmp_dst_fu_886_p4),.din2(tmp_dst_fu_886_p6),.din3(tmp_dst_fu_886_p8),.din4(tmp_dst_fu_886_p10),.din5(tmp_dst_fu_886_p12),.din6(tmp_dst_fu_886_p14),.din7(tmp_dst_fu_886_p16),.din8(tmp_dst_fu_886_p18),.din9(tmp_dst_fu_886_p20),.din10(tmp_dst_fu_886_p22),.din11(tmp_dst_fu_886_p24),.din12(tmp_dst_fu_886_p26),.din13(tmp_dst_fu_886_p28),.din14(tmp_dst_fu_886_p30),.din15(tmp_dst_fu_886_p32),.din16(tmp_dst_fu_886_p34),.din17(tmp_dst_fu_886_p36),.din18(tmp_dst_fu_886_p38),.din19(tmp_dst_fu_886_p40),.din20(tmp_dst_fu_886_p42),.din21(tmp_dst_fu_886_p44),.din22(tmp_dst_fu_886_p46),.din23(tmp_dst_fu_886_p48),.din24(tmp_dst_fu_886_p50),.din25(tmp_dst_fu_886_p52),.din26(tmp_dst_fu_886_p54),.din27(tmp_dst_fu_886_p56),.din28(tmp_dst_fu_886_p58),.din29(tmp_dst_fu_886_p60),.din30(tmp_dst_fu_886_p62),.din31(tmp_dst_fu_886_p64),.def(tmp_dst_fu_886_p65),.sel(tmp_dst_fu_886_p66),.dout(tmp_dst_fu_886_p67));
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_1_fu_198 <= cnt;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln34_fu_1036_p2 == 1'd1) & (icmp_ln29_reg_1102 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cnt_1_fu_198 <= cnt_2_fu_1045_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_1_fu_194 <= e;
    end else if (((icmp_ln28_reg_1098 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        e_1_fu_194 <= e_4_fu_1022_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_190 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln28_fu_687_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_190 <= i_2_fu_693_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_3_reg_1092 <= e_1_fu_194;
        icmp_ln28_reg_1098 <= icmp_ln28_fu_687_p2;
        icmp_ln29_reg_1102 <= icmp_ln29_fu_745_p2;
        icmp_ln29_reg_1102_pp0_iter1_reg <= icmp_ln29_reg_1102;
        icmp_ln34_reg_1276 <= icmp_ln34_fu_1036_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next12_cast4_cast_reg_1087[3 : 0] <= indvars_iv_next12_cast4_cast_fu_662_p1[3 : 0];
        level_addr_reg_1271 <= zext_ln31_fu_1032_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_dst_reg_1266 <= tmp_dst_fu_886_p67;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1098 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln28_reg_1098 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        cnt_1_out_ap_vld = 1'b1;
    end else begin
        cnt_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_10_ce0_local = 1'b1;
    end else begin
        edges_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_11_ce0_local = 1'b1;
    end else begin
        edges_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_12_ce0_local = 1'b1;
    end else begin
        edges_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_13_ce0_local = 1'b1;
    end else begin
        edges_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_14_ce0_local = 1'b1;
    end else begin
        edges_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_15_ce0_local = 1'b1;
    end else begin
        edges_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_16_ce0_local = 1'b1;
    end else begin
        edges_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_17_ce0_local = 1'b1;
    end else begin
        edges_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_18_ce0_local = 1'b1;
    end else begin
        edges_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_19_ce0_local = 1'b1;
    end else begin
        edges_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_20_ce0_local = 1'b1;
    end else begin
        edges_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_21_ce0_local = 1'b1;
    end else begin
        edges_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_22_ce0_local = 1'b1;
    end else begin
        edges_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_23_ce0_local = 1'b1;
    end else begin
        edges_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_24_ce0_local = 1'b1;
    end else begin
        edges_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_25_ce0_local = 1'b1;
    end else begin
        edges_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_26_ce0_local = 1'b1;
    end else begin
        edges_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_27_ce0_local = 1'b1;
    end else begin
        edges_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_28_ce0_local = 1'b1;
    end else begin
        edges_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_29_ce0_local = 1'b1;
    end else begin
        edges_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_2_ce0_local = 1'b1;
    end else begin
        edges_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_30_ce0_local = 1'b1;
    end else begin
        edges_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_31_ce0_local = 1'b1;
    end else begin
        edges_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_3_ce0_local = 1'b1;
    end else begin
        edges_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_4_ce0_local = 1'b1;
    end else begin
        edges_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_5_ce0_local = 1'b1;
    end else begin
        edges_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_6_ce0_local = 1'b1;
    end else begin
        edges_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_7_ce0_local = 1'b1;
    end else begin
        edges_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_8_ce0_local = 1'b1;
    end else begin
        edges_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_9_ce0_local = 1'b1;
    end else begin
        edges_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            level_address0_local = level_addr_reg_1271;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            level_address0_local = zext_ln31_fu_1032_p1;
        end else begin
            level_address0_local = 'bx;
        end
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln34_reg_1276 == 1'd1) & (icmp_ln29_reg_1102_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign cnt_1_out = cnt_1_fu_198;
assign cnt_2_fu_1045_p2 = (cnt_1_fu_198 + 64'd1);
assign e_4_fu_1022_p2 = (e_3_reg_1092 + 64'd1);
assign edges_0_address0 = zext_ln14_fu_709_p1;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_10_address0 = zext_ln14_fu_709_p1;
assign edges_10_ce0 = edges_10_ce0_local;
assign edges_11_address0 = zext_ln14_fu_709_p1;
assign edges_11_ce0 = edges_11_ce0_local;
assign edges_12_address0 = zext_ln14_fu_709_p1;
assign edges_12_ce0 = edges_12_ce0_local;
assign edges_13_address0 = zext_ln14_fu_709_p1;
assign edges_13_ce0 = edges_13_ce0_local;
assign edges_14_address0 = zext_ln14_fu_709_p1;
assign edges_14_ce0 = edges_14_ce0_local;
assign edges_15_address0 = zext_ln14_fu_709_p1;
assign edges_15_ce0 = edges_15_ce0_local;
assign edges_16_address0 = zext_ln14_fu_709_p1;
assign edges_16_ce0 = edges_16_ce0_local;
assign edges_17_address0 = zext_ln14_fu_709_p1;
assign edges_17_ce0 = edges_17_ce0_local;
assign edges_18_address0 = zext_ln14_fu_709_p1;
assign edges_18_ce0 = edges_18_ce0_local;
assign edges_19_address0 = zext_ln14_fu_709_p1;
assign edges_19_ce0 = edges_19_ce0_local;
assign edges_1_address0 = zext_ln14_fu_709_p1;
assign edges_1_ce0 = edges_1_ce0_local;
assign edges_20_address0 = zext_ln14_fu_709_p1;
assign edges_20_ce0 = edges_20_ce0_local;
assign edges_21_address0 = zext_ln14_fu_709_p1;
assign edges_21_ce0 = edges_21_ce0_local;
assign edges_22_address0 = zext_ln14_fu_709_p1;
assign edges_22_ce0 = edges_22_ce0_local;
assign edges_23_address0 = zext_ln14_fu_709_p1;
assign edges_23_ce0 = edges_23_ce0_local;
assign edges_24_address0 = zext_ln14_fu_709_p1;
assign edges_24_ce0 = edges_24_ce0_local;
assign edges_25_address0 = zext_ln14_fu_709_p1;
assign edges_25_ce0 = edges_25_ce0_local;
assign edges_26_address0 = zext_ln14_fu_709_p1;
assign edges_26_ce0 = edges_26_ce0_local;
assign edges_27_address0 = zext_ln14_fu_709_p1;
assign edges_27_ce0 = edges_27_ce0_local;
assign edges_28_address0 = zext_ln14_fu_709_p1;
assign edges_28_ce0 = edges_28_ce0_local;
assign edges_29_address0 = zext_ln14_fu_709_p1;
assign edges_29_ce0 = edges_29_ce0_local;
assign edges_2_address0 = zext_ln14_fu_709_p1;
assign edges_2_ce0 = edges_2_ce0_local;
assign edges_30_address0 = zext_ln14_fu_709_p1;
assign edges_30_ce0 = edges_30_ce0_local;
assign edges_31_address0 = zext_ln14_fu_709_p1;
assign edges_31_ce0 = edges_31_ce0_local;
assign edges_3_address0 = zext_ln14_fu_709_p1;
assign edges_3_ce0 = edges_3_ce0_local;
assign edges_4_address0 = zext_ln14_fu_709_p1;
assign edges_4_ce0 = edges_4_ce0_local;
assign edges_5_address0 = zext_ln14_fu_709_p1;
assign edges_5_ce0 = edges_5_ce0_local;
assign edges_6_address0 = zext_ln14_fu_709_p1;
assign edges_6_ce0 = edges_6_ce0_local;
assign edges_7_address0 = zext_ln14_fu_709_p1;
assign edges_7_ce0 = edges_7_ce0_local;
assign edges_8_address0 = zext_ln14_fu_709_p1;
assign edges_8_ce0 = edges_8_ce0_local;
assign edges_9_address0 = zext_ln14_fu_709_p1;
assign edges_9_ce0 = edges_9_ce0_local;
assign i_2_fu_693_p2 = (i_fu_190 + 8'd1);
assign icmp_ln28_fu_687_p2 = ((i_fu_190 == 8'd158) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_745_p2 = ((e_1_fu_194 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln34_fu_1036_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign indvars_iv_next12_cast4_cast_fu_662_p1 = indvars_iv_next12_cast4;
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_d0 = indvars_iv_next12_cast4_cast_reg_1087;
assign level_we0 = level_we0_local;
assign lshr_ln1_fu_699_p4 = {{e_1_fu_194[11:5]}};
assign tmp_dst_fu_886_p10 = edges_4_q0[7:0];
assign tmp_dst_fu_886_p12 = edges_5_q0[7:0];
assign tmp_dst_fu_886_p14 = edges_6_q0[7:0];
assign tmp_dst_fu_886_p16 = edges_7_q0[7:0];
assign tmp_dst_fu_886_p18 = edges_8_q0[7:0];
assign tmp_dst_fu_886_p2 = edges_0_q0[7:0];
assign tmp_dst_fu_886_p20 = edges_9_q0[7:0];
assign tmp_dst_fu_886_p22 = edges_10_q0[7:0];
assign tmp_dst_fu_886_p24 = edges_11_q0[7:0];
assign tmp_dst_fu_886_p26 = edges_12_q0[7:0];
assign tmp_dst_fu_886_p28 = edges_13_q0[7:0];
assign tmp_dst_fu_886_p30 = edges_14_q0[7:0];
assign tmp_dst_fu_886_p32 = edges_15_q0[7:0];
assign tmp_dst_fu_886_p34 = edges_16_q0[7:0];
assign tmp_dst_fu_886_p36 = edges_17_q0[7:0];
assign tmp_dst_fu_886_p38 = edges_18_q0[7:0];
assign tmp_dst_fu_886_p4 = edges_1_q0[7:0];
assign tmp_dst_fu_886_p40 = edges_19_q0[7:0];
assign tmp_dst_fu_886_p42 = edges_20_q0[7:0];
assign tmp_dst_fu_886_p44 = edges_21_q0[7:0];
assign tmp_dst_fu_886_p46 = edges_22_q0[7:0];
assign tmp_dst_fu_886_p48 = edges_23_q0[7:0];
assign tmp_dst_fu_886_p50 = edges_24_q0[7:0];
assign tmp_dst_fu_886_p52 = edges_25_q0[7:0];
assign tmp_dst_fu_886_p54 = edges_26_q0[7:0];
assign tmp_dst_fu_886_p56 = edges_27_q0[7:0];
assign tmp_dst_fu_886_p58 = edges_28_q0[7:0];
assign tmp_dst_fu_886_p6 = edges_2_q0[7:0];
assign tmp_dst_fu_886_p60 = edges_29_q0[7:0];
assign tmp_dst_fu_886_p62 = edges_30_q0[7:0];
assign tmp_dst_fu_886_p64 = edges_31_q0[7:0];
assign tmp_dst_fu_886_p65 = 'bx;
assign tmp_dst_fu_886_p66 = e_3_reg_1092[4:0];
assign tmp_dst_fu_886_p8 = edges_3_q0[7:0];
assign zext_ln14_fu_709_p1 = lshr_ln1_fu_699_p4;
assign zext_ln31_fu_1032_p1 = tmp_dst_reg_1266;
always @ (posedge ap_clk) begin
    indvars_iv_next12_cast4_cast_reg_1087[7:4] <= 4'b0000;
end
endmodule 