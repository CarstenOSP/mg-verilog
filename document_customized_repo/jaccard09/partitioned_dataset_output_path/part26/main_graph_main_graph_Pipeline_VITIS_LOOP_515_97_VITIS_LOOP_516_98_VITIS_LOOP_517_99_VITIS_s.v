
module main_graph_main_graph_Pipeline_VITIS_LOOP_515_97_VITIS_LOOP_516_98_VITIS_LOOP_517_99_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v38_address1,v38_ce1,v38_we1,v38_d1,v7_Addr_A,v7_EN_A,v7_WEN_A,v7_Din_A,v7_Dout_A,v39_address0,v39_ce0,v39_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v38_address1;
output   v38_ce1;
output   v38_we1;
output  [7:0] v38_d1;
output  [31:0] v7_Addr_A;
output   v7_EN_A;
output  [0:0] v7_WEN_A;
output  [7:0] v7_Din_A;
input  [7:0] v7_Dout_A;
output  [14:0] v39_address0;
output   v39_ce0;
input  [6:0] v39_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln515_fu_264_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln515_reg_1069;
reg   [0:0] icmp_ln515_reg_1069_pp0_iter1_reg;
wire   [0:0] icmp_ln516_fu_290_p2;
reg   [0:0] icmp_ln516_reg_1073;
reg   [0:0] icmp_ln516_reg_1073_pp0_iter2_reg;
wire   [0:0] xor_ln515_fu_296_p2;
reg   [0:0] xor_ln515_reg_1080;
wire   [0:0] and_ln515_3_fu_314_p2;
reg   [0:0] and_ln515_3_reg_1086;
wire   [0:0] empty_fu_320_p2;
reg   [0:0] empty_reg_1091;
reg   [0:0] empty_reg_1091_pp0_iter2_reg;
wire   [0:0] not_exitcond_flatten1106_mid2118566_fu_332_p2;
reg   [0:0] not_exitcond_flatten1106_mid2118566_reg_1097;
wire   [0:0] exitcond_flatten1080_mid21139_fu_344_p2;
reg   [0:0] exitcond_flatten1080_mid21139_reg_1103;
reg   [0:0] exitcond_flatten1080_mid21139_reg_1103_pp0_iter2_reg;
wire   [0:0] empty_67_fu_350_p2;
reg   [0:0] empty_67_reg_1111;
wire   [0:0] empty_68_fu_356_p2;
reg   [0:0] empty_68_reg_1116;
reg   [0:0] empty_68_reg_1116_pp0_iter2_reg;
reg   [0:0] empty_68_reg_1116_pp0_iter3_reg;
reg   [0:0] empty_68_reg_1116_pp0_iter4_reg;
reg   [0:0] empty_68_reg_1116_pp0_iter5_reg;
reg   [0:0] empty_68_reg_1116_pp0_iter6_reg;
wire   [2:0] select_ln516_fu_479_p3;
reg   [2:0] select_ln516_reg_1122;
wire   [8:0] select_ln519_fu_551_p3;
reg   [8:0] select_ln519_reg_1128;
wire   [1:0] v238_mid2_fu_581_p3;
reg   [1:0] v238_mid2_reg_1135;
reg   [1:0] v238_mid2_reg_1135_pp0_iter3_reg;
wire   [1:0] select_ln520_fu_589_p3;
reg   [1:0] select_ln520_reg_1141;
wire   [0:0] icmp_ln521_1_fu_603_p2;
reg   [0:0] icmp_ln521_1_reg_1147;
reg   [0:0] icmp_ln521_1_reg_1147_pp0_iter3_reg;
reg   [0:0] icmp_ln521_1_reg_1147_pp0_iter4_reg;
reg   [0:0] icmp_ln521_1_reg_1147_pp0_iter5_reg;
reg   [0:0] icmp_ln521_1_reg_1147_pp0_iter6_reg;
reg   [0:0] icmp_ln521_1_reg_1147_pp0_iter7_reg;
wire   [0:0] icmp_ln520_1_fu_609_p2;
reg   [0:0] icmp_ln520_1_reg_1151;
reg   [0:0] icmp_ln520_1_reg_1151_pp0_iter3_reg;
reg   [0:0] icmp_ln520_1_reg_1151_pp0_iter4_reg;
reg   [0:0] icmp_ln520_1_reg_1151_pp0_iter5_reg;
reg   [0:0] icmp_ln520_1_reg_1151_pp0_iter6_reg;
reg   [0:0] icmp_ln520_1_reg_1151_pp0_iter7_reg;
wire   [0:0] icmp_ln519_1_fu_615_p2;
reg   [0:0] icmp_ln519_1_reg_1155;
reg   [0:0] icmp_ln519_1_reg_1155_pp0_iter3_reg;
reg   [0:0] icmp_ln519_1_reg_1155_pp0_iter4_reg;
reg   [0:0] icmp_ln519_1_reg_1155_pp0_iter5_reg;
reg   [0:0] icmp_ln519_1_reg_1155_pp0_iter6_reg;
reg   [0:0] icmp_ln519_1_reg_1155_pp0_iter7_reg;
wire   [11:0] add_ln518_1_fu_753_p2;
reg   [11:0] add_ln518_1_reg_1159;
reg   [11:0] add_ln518_1_reg_1159_pp0_iter4_reg;
reg   [11:0] add_ln518_1_reg_1159_pp0_iter5_reg;
reg   [11:0] add_ln518_1_reg_1159_pp0_iter6_reg;
reg   [11:0] add_ln518_1_reg_1159_pp0_iter7_reg;
wire   [18:0] add_ln523_1_fu_831_p2;
reg   [18:0] add_ln523_1_reg_1164;
wire   [17:0] trunc_ln523_1_fu_837_p1;
reg   [17:0] trunc_ln523_1_reg_1169;
wire   [14:0] add_ln522_2_fu_903_p2;
reg   [14:0] add_ln522_2_reg_1174;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln523_5_fu_944_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln522_5_fu_949_p1;
wire   [63:0] zext_ln518_3_fu_967_p1;
reg   [7:0] v241_fu_110;
wire   [7:0] grp_fu_975_p3;
reg   [7:0] ap_sig_allocacmp_v241_load;
wire    ap_loop_init;
reg   [1:0] v238_fu_114;
wire   [1:0] add_ln521_fu_597_p2;
reg   [1:0] v237_fu_118;
reg   [3:0] indvar_flatten1063_fu_122;
wire   [3:0] select_ln520_1_fu_627_p3;
reg   [8:0] v236_fu_126;
reg   [12:0] indvar_flatten1078_fu_130;
wire   [12:0] select_ln519_1_fu_368_p3;
reg   [2:0] v235_fu_134;
wire   [2:0] select_ln517_fu_696_p3;
reg   [14:0] indvar_flatten1104_fu_138;
wire   [14:0] select_ln517_1_fu_382_p3;
reg   [2:0] v234_fu_142;
reg   [16:0] indvar_flatten1140_fu_146;
wire   [16:0] select_ln516_1_fu_396_p3;
reg   [8:0] v233_fu_150;
wire   [8:0] select_ln515_1_fu_672_p3;
reg   [23:0] indvar_flatten1186_fu_154;
wire   [23:0] add_ln515_1_fu_270_p2;
reg   [23:0] ap_sig_allocacmp_indvar_flatten1186_load;
reg    v39_ce0_local;
reg    v7_EN_A_local;
wire   [31:0] v7_Addr_A_orig;
reg    v38_we1_local;
reg    v38_ce1_local;
wire   [0:0] icmp_ln517_fu_308_p2;
wire   [0:0] exitcond_flatten1106_not67_fu_326_p2;
wire   [0:0] icmp_ln519_fu_302_p2;
wire   [0:0] and_ln515_2_fu_338_p2;
wire   [12:0] add_ln519_1_fu_362_p2;
wire   [14:0] add_ln517_1_fu_376_p2;
wire   [16:0] add_ln516_1_fu_390_p2;
wire   [0:0] icmp_ln521_fu_441_p2;
wire   [0:0] icmp_ln520_fu_452_p2;
wire   [2:0] select_ln515_fu_434_p3;
wire   [0:0] and_ln515_fu_447_p2;
wire   [0:0] and_ln515_1_fu_458_p2;
wire   [2:0] add_ln516_fu_463_p2;
wire   [0:0] exitcond_flatten1065_mid21135_fu_474_p2;
wire   [0:0] not_exitcond_flatten1080_mid21139_fu_493_p2;
wire   [8:0] v236_mid21085_fu_486_p3;
wire   [0:0] exitcond_flatten1065_mid21103_fu_498_p2;
wire   [0:0] empty_69_fu_510_p2;
wire   [0:0] empty_70_fu_515_p2;
wire   [0:0] exitcond_flatten1065_mid21135_not_fu_528_p2;
wire   [0:0] icmp_ln521_mid21131_fu_469_p2;
wire   [0:0] icmp_ln521_mid21099_fu_539_p2;
wire   [0:0] not_exitcond_flatten1065_mid21103_fu_534_p2;
wire   [8:0] add_ln519_fu_504_p2;
wire   [1:0] v237_mid21070_fu_520_p3;
wire   [0:0] icmp_ln521_mid21077_fu_545_p2;
wire   [0:0] empty_71_fu_565_p2;
wire   [0:0] empty_72_fu_570_p2;
wire   [0:0] empty_73_fu_576_p2;
wire   [1:0] add_ln520_fu_559_p2;
wire   [3:0] add_ln520_1_fu_621_p2;
wire   [8:0] add_ln515_fu_666_p2;
wire   [2:0] v235_mid21111_fu_683_p3;
wire   [2:0] add_ln517_fu_690_p2;
wire   [16:0] tmp_s_fu_703_p3;
wire   [7:0] trunc_ln516_fu_679_p1;
wire   [9:0] tmp_11_fu_715_p3;
wire   [9:0] zext_ln518_1_fu_723_p1;
wire   [9:0] add_ln518_fu_726_p2;
wire   [2:0] empty_74_fu_740_p2;
wire   [11:0] tmp_fu_732_p3;
wire   [11:0] zext_ln518_2_fu_749_p1;
wire   [2:0] empty_75_fu_759_p2;
wire   [17:0] zext_ln518_fu_711_p1;
wire   [17:0] zext_ln523_fu_769_p1;
wire   [17:0] add_ln523_fu_772_p2;
wire   [16:0] trunc_ln523_fu_778_p1;
wire   [18:0] tmp_42_fu_782_p3;
wire   [18:0] zext_ln523_1_fu_790_p1;
wire   [11:0] tmp_43_fu_800_p3;
wire   [9:0] tmp_44_fu_811_p3;
wire   [12:0] zext_ln522_fu_807_p1;
wire   [12:0] zext_ln522_2_fu_818_p1;
wire   [18:0] sub_ln522_fu_794_p2;
wire   [18:0] zext_ln523_2_fu_828_p1;
wire   [3:0] zext_ln520_fu_841_p1;
wire   [3:0] zext_ln517_fu_745_p1;
wire   [3:0] empty_76_fu_844_p2;
wire   [12:0] add_ln522_3_fu_822_p2;
wire   [12:0] zext_ln522_3_fu_850_p1;
wire   [12:0] add_ln522_1_fu_854_p2;
wire   [11:0] trunc_ln522_fu_860_p1;
wire   [13:0] tmp_46_fu_872_p3;
wire   [14:0] p_shl_fu_864_p3;
wire   [14:0] zext_ln521_fu_880_p1;
wire   [3:0] zext_ln521_1_fu_890_p1;
wire   [3:0] zext_ln519_fu_765_p1;
wire   [3:0] add_ln522_fu_893_p2;
wire   [14:0] add_ln521_1_fu_884_p2;
wire   [14:0] zext_ln522_4_fu_899_p1;
wire   [19:0] tmp_45_fu_919_p3;
wire   [19:0] zext_ln523_3_fu_926_p1;
wire   [19:0] sub_ln520_fu_929_p2;
wire   [19:0] zext_ln523_4_fu_935_p1;
wire   [19:0] add_ln523_2_fu_938_p2;
wire   [6:0] grp_fu_975_p1;
wire   [7:0] grp_fu_975_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_975_p10;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 v241_fu_110 = 8'd0;
#0 v238_fu_114 = 2'd0;
#0 v237_fu_118 = 2'd0;
#0 indvar_flatten1063_fu_122 = 4'd0;
#0 v236_fu_126 = 9'd0;
#0 indvar_flatten1078_fu_130 = 13'd0;
#0 v235_fu_134 = 3'd0;
#0 indvar_flatten1104_fu_138 = 15'd0;
#0 v234_fu_142 = 3'd0;
#0 indvar_flatten1140_fu_146 = 17'd0;
#0 v233_fu_150 = 9'd0;
#0 indvar_flatten1186_fu_154 = 24'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U117(.clk(ap_clk),.reset(ap_rst),.din0(v7_Dout_A),.din1(grp_fu_975_p1),.din2(grp_fu_975_p2),.ce(1'b1),.dout(grp_fu_975_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage0)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            indvar_flatten1063_fu_122 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln515_reg_1069_pp0_iter1_reg == 1'd0))) begin
            indvar_flatten1063_fu_122 <= select_ln520_1_fu_627_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1078_fu_130 <= 13'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln515_reg_1069 == 1'd0))) begin
            indvar_flatten1078_fu_130 <= select_ln519_1_fu_368_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1104_fu_138 <= 15'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln515_reg_1069 == 1'd0))) begin
            indvar_flatten1104_fu_138 <= select_ln517_1_fu_382_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1140_fu_146 <= 17'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln515_reg_1069 == 1'd0))) begin
            indvar_flatten1140_fu_146 <= select_ln516_1_fu_396_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln515_fu_264_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1186_fu_154 <= add_ln515_1_fu_270_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1186_fu_154 <= 24'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v233_fu_150 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v233_fu_150 <= select_ln515_1_fu_672_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v234_fu_142 <= 3'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln515_reg_1069_pp0_iter1_reg == 1'd0))) begin
            v234_fu_142 <= select_ln516_fu_479_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v235_fu_134 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v235_fu_134 <= select_ln517_fu_696_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v236_fu_126 <= 9'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln515_reg_1069_pp0_iter1_reg == 1'd0))) begin
            v236_fu_126 <= select_ln519_fu_551_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v237_fu_118 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln515_reg_1069_pp0_iter1_reg == 1'd0))) begin
            v237_fu_118 <= select_ln520_fu_589_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v238_fu_114 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln515_reg_1069_pp0_iter1_reg == 1'd0))) begin
            v238_fu_114 <= add_ln521_fu_597_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v241_fu_110 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v241_fu_110 <= grp_fu_975_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln518_1_reg_1159 <= add_ln518_1_fu_753_p2;
        add_ln518_1_reg_1159_pp0_iter4_reg <= add_ln518_1_reg_1159;
        add_ln518_1_reg_1159_pp0_iter5_reg <= add_ln518_1_reg_1159_pp0_iter4_reg;
        add_ln518_1_reg_1159_pp0_iter6_reg <= add_ln518_1_reg_1159_pp0_iter5_reg;
        add_ln518_1_reg_1159_pp0_iter7_reg <= add_ln518_1_reg_1159_pp0_iter6_reg;
        add_ln522_2_reg_1174 <= add_ln522_2_fu_903_p2;
        add_ln523_1_reg_1164 <= add_ln523_1_fu_831_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_68_reg_1116_pp0_iter2_reg <= empty_68_reg_1116;
        empty_68_reg_1116_pp0_iter3_reg <= empty_68_reg_1116_pp0_iter2_reg;
        empty_68_reg_1116_pp0_iter4_reg <= empty_68_reg_1116_pp0_iter3_reg;
        empty_68_reg_1116_pp0_iter5_reg <= empty_68_reg_1116_pp0_iter4_reg;
        empty_68_reg_1116_pp0_iter6_reg <= empty_68_reg_1116_pp0_iter5_reg;
        empty_reg_1091_pp0_iter2_reg <= empty_reg_1091;
        exitcond_flatten1080_mid21139_reg_1103_pp0_iter2_reg <= exitcond_flatten1080_mid21139_reg_1103;
        icmp_ln516_reg_1073_pp0_iter2_reg <= icmp_ln516_reg_1073;
        icmp_ln519_1_reg_1155 <= icmp_ln519_1_fu_615_p2;
        icmp_ln519_1_reg_1155_pp0_iter3_reg <= icmp_ln519_1_reg_1155;
        icmp_ln519_1_reg_1155_pp0_iter4_reg <= icmp_ln519_1_reg_1155_pp0_iter3_reg;
        icmp_ln519_1_reg_1155_pp0_iter5_reg <= icmp_ln519_1_reg_1155_pp0_iter4_reg;
        icmp_ln519_1_reg_1155_pp0_iter6_reg <= icmp_ln519_1_reg_1155_pp0_iter5_reg;
        icmp_ln519_1_reg_1155_pp0_iter7_reg <= icmp_ln519_1_reg_1155_pp0_iter6_reg;
        icmp_ln520_1_reg_1151 <= icmp_ln520_1_fu_609_p2;
        icmp_ln520_1_reg_1151_pp0_iter3_reg <= icmp_ln520_1_reg_1151;
        icmp_ln520_1_reg_1151_pp0_iter4_reg <= icmp_ln520_1_reg_1151_pp0_iter3_reg;
        icmp_ln520_1_reg_1151_pp0_iter5_reg <= icmp_ln520_1_reg_1151_pp0_iter4_reg;
        icmp_ln520_1_reg_1151_pp0_iter6_reg <= icmp_ln520_1_reg_1151_pp0_iter5_reg;
        icmp_ln520_1_reg_1151_pp0_iter7_reg <= icmp_ln520_1_reg_1151_pp0_iter6_reg;
        icmp_ln521_1_reg_1147 <= icmp_ln521_1_fu_603_p2;
        icmp_ln521_1_reg_1147_pp0_iter3_reg <= icmp_ln521_1_reg_1147;
        icmp_ln521_1_reg_1147_pp0_iter4_reg <= icmp_ln521_1_reg_1147_pp0_iter3_reg;
        icmp_ln521_1_reg_1147_pp0_iter5_reg <= icmp_ln521_1_reg_1147_pp0_iter4_reg;
        icmp_ln521_1_reg_1147_pp0_iter6_reg <= icmp_ln521_1_reg_1147_pp0_iter5_reg;
        icmp_ln521_1_reg_1147_pp0_iter7_reg <= icmp_ln521_1_reg_1147_pp0_iter6_reg;
        select_ln516_reg_1122 <= select_ln516_fu_479_p3;
        select_ln519_reg_1128 <= select_ln519_fu_551_p3;
        select_ln520_reg_1141 <= select_ln520_fu_589_p3;
        trunc_ln523_1_reg_1169 <= trunc_ln523_1_fu_837_p1;
        v238_mid2_reg_1135 <= v238_mid2_fu_581_p3;
        v238_mid2_reg_1135_pp0_iter3_reg <= v238_mid2_reg_1135;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln515_3_reg_1086 <= and_ln515_3_fu_314_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_67_reg_1111 <= empty_67_fu_350_p2;
        empty_68_reg_1116 <= empty_68_fu_356_p2;
        empty_reg_1091 <= empty_fu_320_p2;
        exitcond_flatten1080_mid21139_reg_1103 <= exitcond_flatten1080_mid21139_fu_344_p2;
        icmp_ln515_reg_1069 <= icmp_ln515_fu_264_p2;
        icmp_ln515_reg_1069_pp0_iter1_reg <= icmp_ln515_reg_1069;
        icmp_ln516_reg_1073 <= icmp_ln516_fu_290_p2;
        not_exitcond_flatten1106_mid2118566_reg_1097 <= not_exitcond_flatten1106_mid2118566_fu_332_p2;
        xor_ln515_reg_1080 <= xor_ln515_fu_296_p2;
    end
end
always @ (*) begin
    if (((icmp_ln515_fu_264_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln515_reg_1069_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1186_load = 24'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1186_load = indvar_flatten1186_fu_154;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        ap_sig_allocacmp_v241_load = grp_fu_975_p3;
    end else begin
        ap_sig_allocacmp_v241_load = v241_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v38_ce1_local = 1'b1;
    end else begin
        v38_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln519_1_reg_1155_pp0_iter7_reg == 1'd1) & (icmp_ln520_1_reg_1151_pp0_iter7_reg == 1'd1) & (icmp_ln521_1_reg_1147_pp0_iter7_reg == 1'd1))) begin
        v38_we1_local = 1'b1;
    end else begin
        v38_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v39_ce0_local = 1'b1;
    end else begin
        v39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7_EN_A_local = 1'b1;
    end else begin
        v7_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln515_1_fu_270_p2 = (ap_sig_allocacmp_indvar_flatten1186_load + 24'd1);
assign add_ln515_fu_666_p2 = (v233_fu_150 + 9'd1);
assign add_ln516_1_fu_390_p2 = (indvar_flatten1140_fu_146 + 17'd1);
assign add_ln516_fu_463_p2 = (select_ln515_fu_434_p3 + 3'd1);
assign add_ln517_1_fu_376_p2 = (indvar_flatten1104_fu_138 + 15'd1);
assign add_ln517_fu_690_p2 = (v235_mid21111_fu_683_p3 + 3'd1);
assign add_ln518_1_fu_753_p2 = (tmp_fu_732_p3 + zext_ln518_2_fu_749_p1);
assign add_ln518_fu_726_p2 = (tmp_11_fu_715_p3 + zext_ln518_1_fu_723_p1);
assign add_ln519_1_fu_362_p2 = (indvar_flatten1078_fu_130 + 13'd1);
assign add_ln519_fu_504_p2 = (v236_mid21085_fu_486_p3 + 9'd1);
assign add_ln520_1_fu_621_p2 = (indvar_flatten1063_fu_122 + 4'd1);
assign add_ln520_fu_559_p2 = (v237_mid21070_fu_520_p3 + 2'd1);
assign add_ln521_1_fu_884_p2 = (p_shl_fu_864_p3 + zext_ln521_fu_880_p1);
assign add_ln521_fu_597_p2 = (v238_mid2_fu_581_p3 + 2'd1);
assign add_ln522_1_fu_854_p2 = (add_ln522_3_fu_822_p2 + zext_ln522_3_fu_850_p1);
assign add_ln522_2_fu_903_p2 = (add_ln521_1_fu_884_p2 + zext_ln522_4_fu_899_p1);
assign add_ln522_3_fu_822_p2 = (zext_ln522_fu_807_p1 + zext_ln522_2_fu_818_p1);
assign add_ln522_fu_893_p2 = (zext_ln521_1_fu_890_p1 + zext_ln519_fu_765_p1);
assign add_ln523_1_fu_831_p2 = (sub_ln522_fu_794_p2 + zext_ln523_2_fu_828_p1);
assign add_ln523_2_fu_938_p2 = (sub_ln520_fu_929_p2 + zext_ln523_4_fu_935_p1);
assign add_ln523_fu_772_p2 = (zext_ln518_fu_711_p1 + zext_ln523_fu_769_p1);
assign and_ln515_1_fu_458_p2 = (xor_ln515_reg_1080 & icmp_ln520_fu_452_p2);
assign and_ln515_2_fu_338_p2 = (xor_ln515_fu_296_p2 & icmp_ln519_fu_302_p2);
assign and_ln515_3_fu_314_p2 = (xor_ln515_fu_296_p2 & icmp_ln517_fu_308_p2);
assign and_ln515_fu_447_p2 = (xor_ln515_reg_1080 & icmp_ln521_fu_441_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_67_fu_350_p2 = (exitcond_flatten1080_mid21139_fu_344_p2 | and_ln515_3_fu_314_p2);
assign empty_68_fu_356_p2 = (icmp_ln516_fu_290_p2 | empty_67_fu_350_p2);
assign empty_69_fu_510_p2 = (exitcond_flatten1080_mid21139_reg_1103 | exitcond_flatten1065_mid21103_fu_498_p2);
assign empty_70_fu_515_p2 = (empty_reg_1091 | empty_69_fu_510_p2);
assign empty_71_fu_565_p2 = (exitcond_flatten1065_mid21103_fu_498_p2 | empty_67_reg_1111);
assign empty_72_fu_570_p2 = (icmp_ln521_mid21077_fu_545_p2 | empty_71_fu_565_p2);
assign empty_73_fu_576_p2 = (icmp_ln516_reg_1073 | empty_72_fu_570_p2);
assign empty_74_fu_740_p2 = select_ln516_reg_1122 << 3'd1;
assign empty_75_fu_759_p2 = select_ln517_fu_696_p3 << 3'd1;
assign empty_76_fu_844_p2 = (zext_ln520_fu_841_p1 + zext_ln517_fu_745_p1);
assign empty_fu_320_p2 = (icmp_ln516_fu_290_p2 | and_ln515_3_fu_314_p2);
assign exitcond_flatten1065_mid21103_fu_498_p2 = (not_exitcond_flatten1080_mid21139_fu_493_p2 & exitcond_flatten1065_mid21135_fu_474_p2);
assign exitcond_flatten1065_mid21135_fu_474_p2 = (not_exitcond_flatten1106_mid2118566_reg_1097 & and_ln515_1_fu_458_p2);
assign exitcond_flatten1065_mid21135_not_fu_528_p2 = (exitcond_flatten1065_mid21135_fu_474_p2 ^ 1'd1);
assign exitcond_flatten1080_mid21139_fu_344_p2 = (not_exitcond_flatten1106_mid2118566_fu_332_p2 & and_ln515_2_fu_338_p2);
assign exitcond_flatten1106_not67_fu_326_p2 = (icmp_ln517_fu_308_p2 ^ 1'd1);
assign grp_fu_975_p1 = grp_fu_975_p10;
assign grp_fu_975_p10 = v39_q0;
assign grp_fu_975_p2 = ((empty_68_reg_1116_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v241_load);
assign icmp_ln515_fu_264_p2 = ((ap_sig_allocacmp_indvar_flatten1186_load == 24'd9437184) ? 1'b1 : 1'b0);
assign icmp_ln516_fu_290_p2 = ((indvar_flatten1140_fu_146 == 17'd36864) ? 1'b1 : 1'b0);
assign icmp_ln517_fu_308_p2 = ((indvar_flatten1104_fu_138 == 15'd9216) ? 1'b1 : 1'b0);
assign icmp_ln519_1_fu_615_p2 = ((select_ln519_fu_551_p3 == 9'd255) ? 1'b1 : 1'b0);
assign icmp_ln519_fu_302_p2 = ((indvar_flatten1078_fu_130 == 13'd2304) ? 1'b1 : 1'b0);
assign icmp_ln520_1_fu_609_p2 = ((select_ln520_fu_589_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln520_fu_452_p2 = ((indvar_flatten1063_fu_122 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln521_1_fu_603_p2 = ((add_ln521_fu_597_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln521_fu_441_p2 = ((v238_fu_114 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln521_mid21077_fu_545_p2 = (not_exitcond_flatten1065_mid21103_fu_534_p2 & icmp_ln521_mid21099_fu_539_p2);
assign icmp_ln521_mid21099_fu_539_p2 = (not_exitcond_flatten1080_mid21139_fu_493_p2 & icmp_ln521_mid21131_fu_469_p2);
assign icmp_ln521_mid21131_fu_469_p2 = (not_exitcond_flatten1106_mid2118566_reg_1097 & and_ln515_fu_447_p2);
assign not_exitcond_flatten1065_mid21103_fu_534_p2 = (exitcond_flatten1080_mid21139_reg_1103 | exitcond_flatten1065_mid21135_not_fu_528_p2);
assign not_exitcond_flatten1080_mid21139_fu_493_p2 = (exitcond_flatten1080_mid21139_reg_1103 ^ 1'd1);
assign not_exitcond_flatten1106_mid2118566_fu_332_p2 = (icmp_ln516_fu_290_p2 | exitcond_flatten1106_not67_fu_326_p2);
assign p_shl_fu_864_p3 = {{trunc_ln522_fu_860_p1}, {3'd0}};
assign select_ln515_1_fu_672_p3 = ((icmp_ln516_reg_1073_pp0_iter2_reg[0:0] == 1'b1) ? add_ln515_fu_666_p2 : v233_fu_150);
assign select_ln515_fu_434_p3 = ((icmp_ln516_reg_1073[0:0] == 1'b1) ? 3'd0 : v234_fu_142);
assign select_ln516_1_fu_396_p3 = ((icmp_ln516_fu_290_p2[0:0] == 1'b1) ? 17'd1 : add_ln516_1_fu_390_p2);
assign select_ln516_fu_479_p3 = ((and_ln515_3_reg_1086[0:0] == 1'b1) ? add_ln516_fu_463_p2 : select_ln515_fu_434_p3);
assign select_ln517_1_fu_382_p3 = ((empty_fu_320_p2[0:0] == 1'b1) ? 15'd1 : add_ln517_1_fu_376_p2);
assign select_ln517_fu_696_p3 = ((exitcond_flatten1080_mid21139_reg_1103_pp0_iter2_reg[0:0] == 1'b1) ? add_ln517_fu_690_p2 : v235_mid21111_fu_683_p3);
assign select_ln519_1_fu_368_p3 = ((empty_68_fu_356_p2[0:0] == 1'b1) ? 13'd1 : add_ln519_1_fu_362_p2);
assign select_ln519_fu_551_p3 = ((exitcond_flatten1065_mid21103_fu_498_p2[0:0] == 1'b1) ? add_ln519_fu_504_p2 : v236_mid21085_fu_486_p3);
assign select_ln520_1_fu_627_p3 = ((empty_70_fu_515_p2[0:0] == 1'b1) ? 4'd1 : add_ln520_1_fu_621_p2);
assign select_ln520_fu_589_p3 = ((icmp_ln521_mid21077_fu_545_p2[0:0] == 1'b1) ? add_ln520_fu_559_p2 : v237_mid21070_fu_520_p3);
assign sub_ln520_fu_929_p2 = (tmp_45_fu_919_p3 - zext_ln523_3_fu_926_p1);
assign sub_ln522_fu_794_p2 = (tmp_42_fu_782_p3 - zext_ln523_1_fu_790_p1);
assign tmp_11_fu_715_p3 = {{trunc_ln516_fu_679_p1}, {2'd0}};
assign tmp_42_fu_782_p3 = {{trunc_ln523_fu_778_p1}, {2'd0}};
assign tmp_43_fu_800_p3 = {{select_ln519_reg_1128}, {3'd0}};
assign tmp_44_fu_811_p3 = {{select_ln519_reg_1128}, {1'd0}};
assign tmp_45_fu_919_p3 = {{trunc_ln523_1_reg_1169}, {2'd0}};
assign tmp_46_fu_872_p3 = {{add_ln522_1_fu_854_p2}, {1'd0}};
assign tmp_fu_732_p3 = {{add_ln518_fu_726_p2}, {2'd0}};
assign tmp_s_fu_703_p3 = {{select_ln515_1_fu_672_p3}, {8'd0}};
assign trunc_ln516_fu_679_p1 = select_ln515_1_fu_672_p3[7:0];
assign trunc_ln522_fu_860_p1 = add_ln522_1_fu_854_p2[11:0];
assign trunc_ln523_1_fu_837_p1 = add_ln523_1_fu_831_p2[17:0];
assign trunc_ln523_fu_778_p1 = add_ln523_fu_772_p2[16:0];
assign v235_mid21111_fu_683_p3 = ((empty_reg_1091_pp0_iter2_reg[0:0] == 1'b1) ? 3'd0 : v235_fu_134);
assign v236_mid21085_fu_486_p3 = ((empty_68_reg_1116[0:0] == 1'b1) ? 9'd0 : v236_fu_126);
assign v237_mid21070_fu_520_p3 = ((empty_70_fu_515_p2[0:0] == 1'b1) ? 2'd0 : v237_fu_118);
assign v238_mid2_fu_581_p3 = ((empty_73_fu_576_p2[0:0] == 1'b1) ? 2'd0 : v238_fu_114);
assign v38_address1 = zext_ln518_3_fu_967_p1;
assign v38_ce1 = v38_ce1_local;
assign v38_d1 = grp_fu_975_p3;
assign v38_we1 = v38_we1_local;
assign v39_address0 = zext_ln522_5_fu_949_p1;
assign v39_ce0 = v39_ce0_local;
assign v7_Addr_A = v7_Addr_A_orig << 32'd0;
assign v7_Addr_A_orig = zext_ln523_5_fu_944_p1;
assign v7_Din_A = 8'd0;
assign v7_EN_A = v7_EN_A_local;
assign v7_WEN_A = 1'd0;
assign xor_ln515_fu_296_p2 = (icmp_ln516_fu_290_p2 ^ 1'd1);
assign zext_ln517_fu_745_p1 = empty_74_fu_740_p2;
assign zext_ln518_1_fu_723_p1 = select_ln516_reg_1122;
assign zext_ln518_2_fu_749_p1 = select_ln517_fu_696_p3;
assign zext_ln518_3_fu_967_p1 = add_ln518_1_reg_1159_pp0_iter7_reg;
assign zext_ln518_fu_711_p1 = tmp_s_fu_703_p3;
assign zext_ln519_fu_765_p1 = empty_75_fu_759_p2;
assign zext_ln520_fu_841_p1 = select_ln520_reg_1141;
assign zext_ln521_1_fu_890_p1 = v238_mid2_reg_1135;
assign zext_ln521_fu_880_p1 = tmp_46_fu_872_p3;
assign zext_ln522_2_fu_818_p1 = tmp_44_fu_811_p3;
assign zext_ln522_3_fu_850_p1 = empty_76_fu_844_p2;
assign zext_ln522_4_fu_899_p1 = add_ln522_fu_893_p2;
assign zext_ln522_5_fu_949_p1 = add_ln522_2_reg_1174;
assign zext_ln522_fu_807_p1 = tmp_43_fu_800_p3;
assign zext_ln523_1_fu_790_p1 = add_ln523_fu_772_p2;
assign zext_ln523_2_fu_828_p1 = select_ln520_reg_1141;
assign zext_ln523_3_fu_926_p1 = add_ln523_1_reg_1164;
assign zext_ln523_4_fu_935_p1 = v238_mid2_reg_1135_pp0_iter3_reg;
assign zext_ln523_5_fu_944_p1 = add_ln523_2_fu_938_p2;
assign zext_ln523_fu_769_p1 = select_ln519_reg_1128;
endmodule 
