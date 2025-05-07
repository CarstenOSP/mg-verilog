module main_graph_main_graph_Pipeline_VITIS_LOOP_1064_228_VITIS_LOOP_1065_229_VITIS_LOOP_1066_230_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v39_address1,v39_ce1,v39_we1,v39_d1,v16_Addr_A,v16_EN_A,v16_WEN_A,v16_Din_A,v16_Dout_A,v40_address0,v40_ce0,v40_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v39_address1;
output   v39_ce1;
output   v39_we1;
output  [7:0] v39_d1;
output  [31:0] v16_Addr_A;
output   v16_EN_A;
output  [0:0] v16_WEN_A;
output  [7:0] v16_Din_A;
input  [7:0] v16_Dout_A;
output  [14:0] v40_address0;
output   v40_ce0;
input  [6:0] v40_q0;
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
wire   [0:0] icmp_ln1064_fu_268_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln1064_reg_1073;
reg   [0:0] icmp_ln1064_reg_1073_pp0_iter1_reg;
wire   [0:0] icmp_ln1065_fu_294_p2;
reg   [0:0] icmp_ln1065_reg_1077;
reg   [0:0] icmp_ln1065_reg_1077_pp0_iter2_reg;
wire   [0:0] xor_ln1064_fu_300_p2;
reg   [0:0] xor_ln1064_reg_1084;
wire   [0:0] and_ln1064_3_fu_318_p2;
reg   [0:0] and_ln1064_3_reg_1090;
wire   [0:0] empty_fu_324_p2;
reg   [0:0] empty_reg_1095;
reg   [0:0] empty_reg_1095_pp0_iter2_reg;
wire   [0:0] not_exitcond_flatten2635_mid22714151_fu_336_p2;
reg   [0:0] not_exitcond_flatten2635_mid22714151_reg_1101;
wire   [0:0] exitcond_flatten2609_mid22668_fu_348_p2;
reg   [0:0] exitcond_flatten2609_mid22668_reg_1107;
reg   [0:0] exitcond_flatten2609_mid22668_reg_1107_pp0_iter2_reg;
wire   [0:0] empty_164_fu_354_p2;
reg   [0:0] empty_164_reg_1115;
wire   [0:0] empty_165_fu_360_p2;
reg   [0:0] empty_165_reg_1120;
reg   [0:0] empty_165_reg_1120_pp0_iter2_reg;
reg   [0:0] empty_165_reg_1120_pp0_iter3_reg;
reg   [0:0] empty_165_reg_1120_pp0_iter4_reg;
reg   [0:0] empty_165_reg_1120_pp0_iter5_reg;
reg   [0:0] empty_165_reg_1120_pp0_iter6_reg;
wire   [2:0] select_ln1065_fu_483_p3;
reg   [2:0] select_ln1065_reg_1126;
wire   [8:0] select_ln1068_fu_555_p3;
reg   [8:0] select_ln1068_reg_1132;
wire   [1:0] v544_mid2_fu_585_p3;
reg   [1:0] v544_mid2_reg_1139;
reg   [1:0] v544_mid2_reg_1139_pp0_iter3_reg;
wire   [1:0] select_ln1069_fu_593_p3;
reg   [1:0] select_ln1069_reg_1145;
wire   [0:0] icmp_ln1070_1_fu_607_p2;
reg   [0:0] icmp_ln1070_1_reg_1151;
reg   [0:0] icmp_ln1070_1_reg_1151_pp0_iter3_reg;
reg   [0:0] icmp_ln1070_1_reg_1151_pp0_iter4_reg;
reg   [0:0] icmp_ln1070_1_reg_1151_pp0_iter5_reg;
reg   [0:0] icmp_ln1070_1_reg_1151_pp0_iter6_reg;
reg   [0:0] icmp_ln1070_1_reg_1151_pp0_iter7_reg;
wire   [0:0] icmp_ln1069_1_fu_613_p2;
reg   [0:0] icmp_ln1069_1_reg_1155;
reg   [0:0] icmp_ln1069_1_reg_1155_pp0_iter3_reg;
reg   [0:0] icmp_ln1069_1_reg_1155_pp0_iter4_reg;
reg   [0:0] icmp_ln1069_1_reg_1155_pp0_iter5_reg;
reg   [0:0] icmp_ln1069_1_reg_1155_pp0_iter6_reg;
reg   [0:0] icmp_ln1069_1_reg_1155_pp0_iter7_reg;
wire   [0:0] icmp_ln1068_1_fu_619_p2;
reg   [0:0] icmp_ln1068_1_reg_1159;
reg   [0:0] icmp_ln1068_1_reg_1159_pp0_iter3_reg;
reg   [0:0] icmp_ln1068_1_reg_1159_pp0_iter4_reg;
reg   [0:0] icmp_ln1068_1_reg_1159_pp0_iter5_reg;
reg   [0:0] icmp_ln1068_1_reg_1159_pp0_iter6_reg;
reg   [0:0] icmp_ln1068_1_reg_1159_pp0_iter7_reg;
wire   [12:0] add_ln1067_1_fu_757_p2;
reg   [12:0] add_ln1067_1_reg_1163;
reg   [12:0] add_ln1067_1_reg_1163_pp0_iter4_reg;
reg   [12:0] add_ln1067_1_reg_1163_pp0_iter5_reg;
reg   [12:0] add_ln1067_1_reg_1163_pp0_iter6_reg;
reg   [12:0] add_ln1067_1_reg_1163_pp0_iter7_reg;
wire   [19:0] add_ln1072_1_fu_835_p2;
reg   [19:0] add_ln1072_1_reg_1168;
wire   [18:0] trunc_ln1072_1_fu_841_p1;
reg   [18:0] trunc_ln1072_1_reg_1173;
wire   [14:0] add_ln1071_2_fu_907_p2;
reg   [14:0] add_ln1071_2_reg_1178;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln1072_5_fu_948_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1071_5_fu_953_p1;
wire   [63:0] zext_ln1067_3_fu_971_p1;
reg   [7:0] v547_fu_114;
wire   [7:0] grp_fu_979_p3;
reg   [7:0] ap_sig_allocacmp_v547_load;
wire    ap_loop_init;
reg   [1:0] v544_fu_118;
wire   [1:0] add_ln1070_fu_601_p2;
reg   [1:0] v543_fu_122;
reg   [3:0] indvar_flatten2592_fu_126;
wire   [3:0] select_ln1069_1_fu_631_p3;
reg   [8:0] v542_fu_130;
reg   [12:0] indvar_flatten2607_fu_134;
wire   [12:0] select_ln1068_1_fu_372_p3;
reg   [2:0] v541_fu_138;
wire   [2:0] select_ln1066_fu_700_p3;
reg   [14:0] indvar_flatten2633_fu_142;
wire   [14:0] select_ln1066_1_fu_386_p3;
reg   [2:0] v540_fu_146;
reg   [16:0] indvar_flatten2669_fu_150;
wire   [16:0] select_ln1065_1_fu_400_p3;
reg   [9:0] v539_fu_154;
wire   [9:0] select_ln1064_1_fu_676_p3;
reg   [24:0] indvar_flatten2715_fu_158;
wire   [24:0] add_ln1064_1_fu_274_p2;
reg   [24:0] ap_sig_allocacmp_indvar_flatten2715_load;
reg    v40_ce0_local;
reg    v16_EN_A_local;
wire   [31:0] v16_Addr_A_orig;
reg    v39_we1_local;
reg    v39_ce1_local;
wire   [0:0] icmp_ln1066_fu_312_p2;
wire   [0:0] exitcond_flatten2635_not152_fu_330_p2;
wire   [0:0] icmp_ln1068_fu_306_p2;
wire   [0:0] and_ln1064_2_fu_342_p2;
wire   [12:0] add_ln1068_1_fu_366_p2;
wire   [14:0] add_ln1066_1_fu_380_p2;
wire   [16:0] add_ln1065_1_fu_394_p2;
wire   [0:0] icmp_ln1070_fu_445_p2;
wire   [0:0] icmp_ln1069_fu_456_p2;
wire   [2:0] select_ln1064_fu_438_p3;
wire   [0:0] and_ln1064_fu_451_p2;
wire   [0:0] and_ln1064_1_fu_462_p2;
wire   [2:0] add_ln1065_fu_467_p2;
wire   [0:0] exitcond_flatten2594_mid22664_fu_478_p2;
wire   [0:0] not_exitcond_flatten2609_mid22668_fu_497_p2;
wire   [8:0] v542_mid22614_fu_490_p3;
wire   [0:0] exitcond_flatten2594_mid22632_fu_502_p2;
wire   [0:0] empty_166_fu_514_p2;
wire   [0:0] empty_167_fu_519_p2;
wire   [0:0] exitcond_flatten2594_mid22664_not_fu_532_p2;
wire   [0:0] icmp_ln1070_mid22660_fu_473_p2;
wire   [0:0] icmp_ln1070_mid22628_fu_543_p2;
wire   [0:0] not_exitcond_flatten2594_mid22632_fu_538_p2;
wire   [8:0] add_ln1068_fu_508_p2;
wire   [1:0] v543_mid22599_fu_524_p3;
wire   [0:0] icmp_ln1070_mid22606_fu_549_p2;
wire   [0:0] empty_168_fu_569_p2;
wire   [0:0] empty_169_fu_574_p2;
wire   [0:0] empty_170_fu_580_p2;
wire   [1:0] add_ln1069_fu_563_p2;
wire   [3:0] add_ln1069_1_fu_625_p2;
wire   [9:0] add_ln1064_fu_670_p2;
wire   [2:0] v541_mid22640_fu_687_p3;
wire   [2:0] add_ln1066_fu_694_p2;
wire   [17:0] tmp_s_fu_707_p3;
wire   [8:0] trunc_ln1065_fu_683_p1;
wire   [10:0] tmp_79_fu_719_p3;
wire   [10:0] zext_ln1067_1_fu_727_p1;
wire   [10:0] add_ln1067_fu_730_p2;
wire   [2:0] empty_171_fu_744_p2;
wire   [12:0] tmp_fu_736_p3;
wire   [12:0] zext_ln1067_2_fu_753_p1;
wire   [2:0] empty_172_fu_763_p2;
wire   [18:0] zext_ln1067_fu_715_p1;
wire   [18:0] zext_ln1072_fu_773_p1;
wire   [18:0] add_ln1072_fu_776_p2;
wire   [17:0] trunc_ln1072_fu_782_p1;
wire   [19:0] tmp_165_fu_786_p3;
wire   [19:0] zext_ln1072_1_fu_794_p1;
wire   [11:0] tmp_166_fu_804_p3;
wire   [9:0] tmp_167_fu_815_p3;
wire   [12:0] zext_ln1071_fu_811_p1;
wire   [12:0] zext_ln1071_2_fu_822_p1;
wire   [19:0] sub_ln1071_fu_798_p2;
wire   [19:0] zext_ln1072_2_fu_832_p1;
wire   [3:0] zext_ln1069_fu_845_p1;
wire   [3:0] zext_ln1066_fu_749_p1;
wire   [3:0] empty_173_fu_848_p2;
wire   [12:0] add_ln1071_3_fu_826_p2;
wire   [12:0] zext_ln1071_3_fu_854_p1;
wire   [12:0] add_ln1071_1_fu_858_p2;
wire   [11:0] trunc_ln1071_fu_864_p1;
wire   [13:0] tmp_169_fu_876_p3;
wire   [14:0] p_shl_fu_868_p3;
wire   [14:0] zext_ln1070_fu_884_p1;
wire   [3:0] zext_ln1070_1_fu_894_p1;
wire   [3:0] zext_ln1068_fu_769_p1;
wire   [3:0] add_ln1071_fu_897_p2;
wire   [14:0] add_ln1070_1_fu_888_p2;
wire   [14:0] zext_ln1071_4_fu_903_p1;
wire   [20:0] tmp_168_fu_923_p3;
wire   [20:0] zext_ln1072_3_fu_930_p1;
wire   [20:0] sub_ln1069_fu_933_p2;
wire   [20:0] zext_ln1072_4_fu_939_p1;
wire   [20:0] add_ln1072_2_fu_942_p2;
wire   [6:0] grp_fu_979_p1;
wire   [7:0] grp_fu_979_p2;
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
wire   [7:0] grp_fu_979_p10;
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
#0 v547_fu_114 = 8'd0;
#0 v544_fu_118 = 2'd0;
#0 v543_fu_122 = 2'd0;
#0 indvar_flatten2592_fu_126 = 4'd0;
#0 v542_fu_130 = 9'd0;
#0 indvar_flatten2607_fu_134 = 13'd0;
#0 v541_fu_138 = 3'd0;
#0 indvar_flatten2633_fu_142 = 15'd0;
#0 v540_fu_146 = 3'd0;
#0 indvar_flatten2669_fu_150 = 17'd0;
#0 v539_fu_154 = 10'd0;
#0 indvar_flatten2715_fu_158 = 25'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U264(.clk(ap_clk),.reset(ap_rst),.din0(v16_Dout_A),.din1(grp_fu_979_p1),.din2(grp_fu_979_p2),.ce(1'b1),.dout(grp_fu_979_p3));
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
            indvar_flatten2592_fu_126 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1064_reg_1073_pp0_iter1_reg == 1'd0))) begin
            indvar_flatten2592_fu_126 <= select_ln1069_1_fu_631_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2607_fu_134 <= 13'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1064_reg_1073 == 1'd0))) begin
            indvar_flatten2607_fu_134 <= select_ln1068_1_fu_372_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2633_fu_142 <= 15'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1064_reg_1073 == 1'd0))) begin
            indvar_flatten2633_fu_142 <= select_ln1066_1_fu_386_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2669_fu_150 <= 17'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1064_reg_1073 == 1'd0))) begin
            indvar_flatten2669_fu_150 <= select_ln1065_1_fu_400_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1064_fu_268_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten2715_fu_158 <= add_ln1064_1_fu_274_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2715_fu_158 <= 25'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v539_fu_154 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v539_fu_154 <= select_ln1064_1_fu_676_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v540_fu_146 <= 3'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1064_reg_1073_pp0_iter1_reg == 1'd0))) begin
            v540_fu_146 <= select_ln1065_fu_483_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v541_fu_138 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v541_fu_138 <= select_ln1066_fu_700_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v542_fu_130 <= 9'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1064_reg_1073_pp0_iter1_reg == 1'd0))) begin
            v542_fu_130 <= select_ln1068_fu_555_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v543_fu_122 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1064_reg_1073_pp0_iter1_reg == 1'd0))) begin
            v543_fu_122 <= select_ln1069_fu_593_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v544_fu_118 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1064_reg_1073_pp0_iter1_reg == 1'd0))) begin
            v544_fu_118 <= add_ln1070_fu_601_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v547_fu_114 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v547_fu_114 <= grp_fu_979_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln1067_1_reg_1163 <= add_ln1067_1_fu_757_p2;
        add_ln1067_1_reg_1163_pp0_iter4_reg <= add_ln1067_1_reg_1163;
        add_ln1067_1_reg_1163_pp0_iter5_reg <= add_ln1067_1_reg_1163_pp0_iter4_reg;
        add_ln1067_1_reg_1163_pp0_iter6_reg <= add_ln1067_1_reg_1163_pp0_iter5_reg;
        add_ln1067_1_reg_1163_pp0_iter7_reg <= add_ln1067_1_reg_1163_pp0_iter6_reg;
        add_ln1071_2_reg_1178 <= add_ln1071_2_fu_907_p2;
        add_ln1072_1_reg_1168 <= add_ln1072_1_fu_835_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_165_reg_1120_pp0_iter2_reg <= empty_165_reg_1120;
        empty_165_reg_1120_pp0_iter3_reg <= empty_165_reg_1120_pp0_iter2_reg;
        empty_165_reg_1120_pp0_iter4_reg <= empty_165_reg_1120_pp0_iter3_reg;
        empty_165_reg_1120_pp0_iter5_reg <= empty_165_reg_1120_pp0_iter4_reg;
        empty_165_reg_1120_pp0_iter6_reg <= empty_165_reg_1120_pp0_iter5_reg;
        empty_reg_1095_pp0_iter2_reg <= empty_reg_1095;
        exitcond_flatten2609_mid22668_reg_1107_pp0_iter2_reg <= exitcond_flatten2609_mid22668_reg_1107;
        icmp_ln1065_reg_1077_pp0_iter2_reg <= icmp_ln1065_reg_1077;
        icmp_ln1068_1_reg_1159 <= icmp_ln1068_1_fu_619_p2;
        icmp_ln1068_1_reg_1159_pp0_iter3_reg <= icmp_ln1068_1_reg_1159;
        icmp_ln1068_1_reg_1159_pp0_iter4_reg <= icmp_ln1068_1_reg_1159_pp0_iter3_reg;
        icmp_ln1068_1_reg_1159_pp0_iter5_reg <= icmp_ln1068_1_reg_1159_pp0_iter4_reg;
        icmp_ln1068_1_reg_1159_pp0_iter6_reg <= icmp_ln1068_1_reg_1159_pp0_iter5_reg;
        icmp_ln1068_1_reg_1159_pp0_iter7_reg <= icmp_ln1068_1_reg_1159_pp0_iter6_reg;
        icmp_ln1069_1_reg_1155 <= icmp_ln1069_1_fu_613_p2;
        icmp_ln1069_1_reg_1155_pp0_iter3_reg <= icmp_ln1069_1_reg_1155;
        icmp_ln1069_1_reg_1155_pp0_iter4_reg <= icmp_ln1069_1_reg_1155_pp0_iter3_reg;
        icmp_ln1069_1_reg_1155_pp0_iter5_reg <= icmp_ln1069_1_reg_1155_pp0_iter4_reg;
        icmp_ln1069_1_reg_1155_pp0_iter6_reg <= icmp_ln1069_1_reg_1155_pp0_iter5_reg;
        icmp_ln1069_1_reg_1155_pp0_iter7_reg <= icmp_ln1069_1_reg_1155_pp0_iter6_reg;
        icmp_ln1070_1_reg_1151 <= icmp_ln1070_1_fu_607_p2;
        icmp_ln1070_1_reg_1151_pp0_iter3_reg <= icmp_ln1070_1_reg_1151;
        icmp_ln1070_1_reg_1151_pp0_iter4_reg <= icmp_ln1070_1_reg_1151_pp0_iter3_reg;
        icmp_ln1070_1_reg_1151_pp0_iter5_reg <= icmp_ln1070_1_reg_1151_pp0_iter4_reg;
        icmp_ln1070_1_reg_1151_pp0_iter6_reg <= icmp_ln1070_1_reg_1151_pp0_iter5_reg;
        icmp_ln1070_1_reg_1151_pp0_iter7_reg <= icmp_ln1070_1_reg_1151_pp0_iter6_reg;
        select_ln1065_reg_1126 <= select_ln1065_fu_483_p3;
        select_ln1068_reg_1132 <= select_ln1068_fu_555_p3;
        select_ln1069_reg_1145 <= select_ln1069_fu_593_p3;
        trunc_ln1072_1_reg_1173 <= trunc_ln1072_1_fu_841_p1;
        v544_mid2_reg_1139 <= v544_mid2_fu_585_p3;
        v544_mid2_reg_1139_pp0_iter3_reg <= v544_mid2_reg_1139;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln1064_3_reg_1090 <= and_ln1064_3_fu_318_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_164_reg_1115 <= empty_164_fu_354_p2;
        empty_165_reg_1120 <= empty_165_fu_360_p2;
        empty_reg_1095 <= empty_fu_324_p2;
        exitcond_flatten2609_mid22668_reg_1107 <= exitcond_flatten2609_mid22668_fu_348_p2;
        icmp_ln1064_reg_1073 <= icmp_ln1064_fu_268_p2;
        icmp_ln1064_reg_1073_pp0_iter1_reg <= icmp_ln1064_reg_1073;
        icmp_ln1065_reg_1077 <= icmp_ln1065_fu_294_p2;
        not_exitcond_flatten2635_mid22714151_reg_1101 <= not_exitcond_flatten2635_mid22714151_fu_336_p2;
        xor_ln1064_reg_1084 <= xor_ln1064_fu_300_p2;
    end
end
always @ (*) begin
    if (((icmp_ln1064_fu_268_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1064_reg_1073_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten2715_load = 25'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten2715_load = indvar_flatten2715_fu_158;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        ap_sig_allocacmp_v547_load = grp_fu_979_p3;
    end else begin
        ap_sig_allocacmp_v547_load = v547_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16_EN_A_local = 1'b1;
    end else begin
        v16_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v39_ce1_local = 1'b1;
    end else begin
        v39_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln1068_1_reg_1159_pp0_iter7_reg == 1'd1) & (icmp_ln1069_1_reg_1155_pp0_iter7_reg == 1'd1) & (icmp_ln1070_1_reg_1151_pp0_iter7_reg == 1'd1))) begin
        v39_we1_local = 1'b1;
    end else begin
        v39_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v40_ce0_local = 1'b1;
    end else begin
        v40_ce0_local = 1'b0;
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
assign add_ln1064_1_fu_274_p2 = (ap_sig_allocacmp_indvar_flatten2715_load + 25'd1);
assign add_ln1064_fu_670_p2 = (v539_fu_154 + 10'd1);
assign add_ln1065_1_fu_394_p2 = (indvar_flatten2669_fu_150 + 17'd1);
assign add_ln1065_fu_467_p2 = (select_ln1064_fu_438_p3 + 3'd1);
assign add_ln1066_1_fu_380_p2 = (indvar_flatten2633_fu_142 + 15'd1);
assign add_ln1066_fu_694_p2 = (v541_mid22640_fu_687_p3 + 3'd1);
assign add_ln1067_1_fu_757_p2 = (tmp_fu_736_p3 + zext_ln1067_2_fu_753_p1);
assign add_ln1067_fu_730_p2 = (tmp_79_fu_719_p3 + zext_ln1067_1_fu_727_p1);
assign add_ln1068_1_fu_366_p2 = (indvar_flatten2607_fu_134 + 13'd1);
assign add_ln1068_fu_508_p2 = (v542_mid22614_fu_490_p3 + 9'd1);
assign add_ln1069_1_fu_625_p2 = (indvar_flatten2592_fu_126 + 4'd1);
assign add_ln1069_fu_563_p2 = (v543_mid22599_fu_524_p3 + 2'd1);
assign add_ln1070_1_fu_888_p2 = (p_shl_fu_868_p3 + zext_ln1070_fu_884_p1);
assign add_ln1070_fu_601_p2 = (v544_mid2_fu_585_p3 + 2'd1);
assign add_ln1071_1_fu_858_p2 = (add_ln1071_3_fu_826_p2 + zext_ln1071_3_fu_854_p1);
assign add_ln1071_2_fu_907_p2 = (add_ln1070_1_fu_888_p2 + zext_ln1071_4_fu_903_p1);
assign add_ln1071_3_fu_826_p2 = (zext_ln1071_fu_811_p1 + zext_ln1071_2_fu_822_p1);
assign add_ln1071_fu_897_p2 = (zext_ln1070_1_fu_894_p1 + zext_ln1068_fu_769_p1);
assign add_ln1072_1_fu_835_p2 = (sub_ln1071_fu_798_p2 + zext_ln1072_2_fu_832_p1);
assign add_ln1072_2_fu_942_p2 = (sub_ln1069_fu_933_p2 + zext_ln1072_4_fu_939_p1);
assign add_ln1072_fu_776_p2 = (zext_ln1067_fu_715_p1 + zext_ln1072_fu_773_p1);
assign and_ln1064_1_fu_462_p2 = (xor_ln1064_reg_1084 & icmp_ln1069_fu_456_p2);
assign and_ln1064_2_fu_342_p2 = (xor_ln1064_fu_300_p2 & icmp_ln1068_fu_306_p2);
assign and_ln1064_3_fu_318_p2 = (xor_ln1064_fu_300_p2 & icmp_ln1066_fu_312_p2);
assign and_ln1064_fu_451_p2 = (xor_ln1064_reg_1084 & icmp_ln1070_fu_445_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_164_fu_354_p2 = (exitcond_flatten2609_mid22668_fu_348_p2 | and_ln1064_3_fu_318_p2);
assign empty_165_fu_360_p2 = (icmp_ln1065_fu_294_p2 | empty_164_fu_354_p2);
assign empty_166_fu_514_p2 = (exitcond_flatten2609_mid22668_reg_1107 | exitcond_flatten2594_mid22632_fu_502_p2);
assign empty_167_fu_519_p2 = (empty_reg_1095 | empty_166_fu_514_p2);
assign empty_168_fu_569_p2 = (exitcond_flatten2594_mid22632_fu_502_p2 | empty_164_reg_1115);
assign empty_169_fu_574_p2 = (icmp_ln1070_mid22606_fu_549_p2 | empty_168_fu_569_p2);
assign empty_170_fu_580_p2 = (icmp_ln1065_reg_1077 | empty_169_fu_574_p2);
assign empty_171_fu_744_p2 = select_ln1065_reg_1126 << 3'd1;
assign empty_172_fu_763_p2 = select_ln1066_fu_700_p3 << 3'd1;
assign empty_173_fu_848_p2 = (zext_ln1069_fu_845_p1 + zext_ln1066_fu_749_p1);
assign empty_fu_324_p2 = (icmp_ln1065_fu_294_p2 | and_ln1064_3_fu_318_p2);
assign exitcond_flatten2594_mid22632_fu_502_p2 = (not_exitcond_flatten2609_mid22668_fu_497_p2 & exitcond_flatten2594_mid22664_fu_478_p2);
assign exitcond_flatten2594_mid22664_fu_478_p2 = (not_exitcond_flatten2635_mid22714151_reg_1101 & and_ln1064_1_fu_462_p2);
assign exitcond_flatten2594_mid22664_not_fu_532_p2 = (exitcond_flatten2594_mid22664_fu_478_p2 ^ 1'd1);
assign exitcond_flatten2609_mid22668_fu_348_p2 = (not_exitcond_flatten2635_mid22714151_fu_336_p2 & and_ln1064_2_fu_342_p2);
assign exitcond_flatten2635_not152_fu_330_p2 = (icmp_ln1066_fu_312_p2 ^ 1'd1);
assign grp_fu_979_p1 = grp_fu_979_p10;
assign grp_fu_979_p10 = v40_q0;
assign grp_fu_979_p2 = ((empty_165_reg_1120_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v547_load);
assign icmp_ln1064_fu_268_p2 = ((ap_sig_allocacmp_indvar_flatten2715_load == 25'd18874368) ? 1'b1 : 1'b0);
assign icmp_ln1065_fu_294_p2 = ((indvar_flatten2669_fu_150 == 17'd36864) ? 1'b1 : 1'b0);
assign icmp_ln1066_fu_312_p2 = ((indvar_flatten2633_fu_142 == 15'd9216) ? 1'b1 : 1'b0);
assign icmp_ln1068_1_fu_619_p2 = ((select_ln1068_fu_555_p3 == 9'd255) ? 1'b1 : 1'b0);
assign icmp_ln1068_fu_306_p2 = ((indvar_flatten2607_fu_134 == 13'd2304) ? 1'b1 : 1'b0);
assign icmp_ln1069_1_fu_613_p2 = ((select_ln1069_fu_593_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln1069_fu_456_p2 = ((indvar_flatten2592_fu_126 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln1070_1_fu_607_p2 = ((add_ln1070_fu_601_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln1070_fu_445_p2 = ((v544_fu_118 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln1070_mid22606_fu_549_p2 = (not_exitcond_flatten2594_mid22632_fu_538_p2 & icmp_ln1070_mid22628_fu_543_p2);
assign icmp_ln1070_mid22628_fu_543_p2 = (not_exitcond_flatten2609_mid22668_fu_497_p2 & icmp_ln1070_mid22660_fu_473_p2);
assign icmp_ln1070_mid22660_fu_473_p2 = (not_exitcond_flatten2635_mid22714151_reg_1101 & and_ln1064_fu_451_p2);
assign not_exitcond_flatten2594_mid22632_fu_538_p2 = (exitcond_flatten2609_mid22668_reg_1107 | exitcond_flatten2594_mid22664_not_fu_532_p2);
assign not_exitcond_flatten2609_mid22668_fu_497_p2 = (exitcond_flatten2609_mid22668_reg_1107 ^ 1'd1);
assign not_exitcond_flatten2635_mid22714151_fu_336_p2 = (icmp_ln1065_fu_294_p2 | exitcond_flatten2635_not152_fu_330_p2);
assign p_shl_fu_868_p3 = {{trunc_ln1071_fu_864_p1}, {3'd0}};
assign select_ln1064_1_fu_676_p3 = ((icmp_ln1065_reg_1077_pp0_iter2_reg[0:0] == 1'b1) ? add_ln1064_fu_670_p2 : v539_fu_154);
assign select_ln1064_fu_438_p3 = ((icmp_ln1065_reg_1077[0:0] == 1'b1) ? 3'd0 : v540_fu_146);
assign select_ln1065_1_fu_400_p3 = ((icmp_ln1065_fu_294_p2[0:0] == 1'b1) ? 17'd1 : add_ln1065_1_fu_394_p2);
assign select_ln1065_fu_483_p3 = ((and_ln1064_3_reg_1090[0:0] == 1'b1) ? add_ln1065_fu_467_p2 : select_ln1064_fu_438_p3);
assign select_ln1066_1_fu_386_p3 = ((empty_fu_324_p2[0:0] == 1'b1) ? 15'd1 : add_ln1066_1_fu_380_p2);
assign select_ln1066_fu_700_p3 = ((exitcond_flatten2609_mid22668_reg_1107_pp0_iter2_reg[0:0] == 1'b1) ? add_ln1066_fu_694_p2 : v541_mid22640_fu_687_p3);
assign select_ln1068_1_fu_372_p3 = ((empty_165_fu_360_p2[0:0] == 1'b1) ? 13'd1 : add_ln1068_1_fu_366_p2);
assign select_ln1068_fu_555_p3 = ((exitcond_flatten2594_mid22632_fu_502_p2[0:0] == 1'b1) ? add_ln1068_fu_508_p2 : v542_mid22614_fu_490_p3);
assign select_ln1069_1_fu_631_p3 = ((empty_167_fu_519_p2[0:0] == 1'b1) ? 4'd1 : add_ln1069_1_fu_625_p2);
assign select_ln1069_fu_593_p3 = ((icmp_ln1070_mid22606_fu_549_p2[0:0] == 1'b1) ? add_ln1069_fu_563_p2 : v543_mid22599_fu_524_p3);
assign sub_ln1069_fu_933_p2 = (tmp_168_fu_923_p3 - zext_ln1072_3_fu_930_p1);
assign sub_ln1071_fu_798_p2 = (tmp_165_fu_786_p3 - zext_ln1072_1_fu_794_p1);
assign tmp_165_fu_786_p3 = {{trunc_ln1072_fu_782_p1}, {2'd0}};
assign tmp_166_fu_804_p3 = {{select_ln1068_reg_1132}, {3'd0}};
assign tmp_167_fu_815_p3 = {{select_ln1068_reg_1132}, {1'd0}};
assign tmp_168_fu_923_p3 = {{trunc_ln1072_1_reg_1173}, {2'd0}};
assign tmp_169_fu_876_p3 = {{add_ln1071_1_fu_858_p2}, {1'd0}};
assign tmp_79_fu_719_p3 = {{trunc_ln1065_fu_683_p1}, {2'd0}};
assign tmp_fu_736_p3 = {{add_ln1067_fu_730_p2}, {2'd0}};
assign tmp_s_fu_707_p3 = {{select_ln1064_1_fu_676_p3}, {8'd0}};
assign trunc_ln1065_fu_683_p1 = select_ln1064_1_fu_676_p3[8:0];
assign trunc_ln1071_fu_864_p1 = add_ln1071_1_fu_858_p2[11:0];
assign trunc_ln1072_1_fu_841_p1 = add_ln1072_1_fu_835_p2[18:0];
assign trunc_ln1072_fu_782_p1 = add_ln1072_fu_776_p2[17:0];
assign v16_Addr_A = v16_Addr_A_orig << 32'd0;
assign v16_Addr_A_orig = zext_ln1072_5_fu_948_p1;
assign v16_Din_A = 8'd0;
assign v16_EN_A = v16_EN_A_local;
assign v16_WEN_A = 1'd0;
assign v39_address1 = zext_ln1067_3_fu_971_p1;
assign v39_ce1 = v39_ce1_local;
assign v39_d1 = grp_fu_979_p3;
assign v39_we1 = v39_we1_local;
assign v40_address0 = zext_ln1071_5_fu_953_p1;
assign v40_ce0 = v40_ce0_local;
assign v541_mid22640_fu_687_p3 = ((empty_reg_1095_pp0_iter2_reg[0:0] == 1'b1) ? 3'd0 : v541_fu_138);
assign v542_mid22614_fu_490_p3 = ((empty_165_reg_1120[0:0] == 1'b1) ? 9'd0 : v542_fu_130);
assign v543_mid22599_fu_524_p3 = ((empty_167_fu_519_p2[0:0] == 1'b1) ? 2'd0 : v543_fu_122);
assign v544_mid2_fu_585_p3 = ((empty_170_fu_580_p2[0:0] == 1'b1) ? 2'd0 : v544_fu_118);
assign xor_ln1064_fu_300_p2 = (icmp_ln1065_fu_294_p2 ^ 1'd1);
assign zext_ln1066_fu_749_p1 = empty_171_fu_744_p2;
assign zext_ln1067_1_fu_727_p1 = select_ln1065_reg_1126;
assign zext_ln1067_2_fu_753_p1 = select_ln1066_fu_700_p3;
assign zext_ln1067_3_fu_971_p1 = add_ln1067_1_reg_1163_pp0_iter7_reg;
assign zext_ln1067_fu_715_p1 = tmp_s_fu_707_p3;
assign zext_ln1068_fu_769_p1 = empty_172_fu_763_p2;
assign zext_ln1069_fu_845_p1 = select_ln1069_reg_1145;
assign zext_ln1070_1_fu_894_p1 = v544_mid2_reg_1139;
assign zext_ln1070_fu_884_p1 = tmp_169_fu_876_p3;
assign zext_ln1071_2_fu_822_p1 = tmp_167_fu_815_p3;
assign zext_ln1071_3_fu_854_p1 = empty_173_fu_848_p2;
assign zext_ln1071_4_fu_903_p1 = add_ln1071_fu_897_p2;
assign zext_ln1071_5_fu_953_p1 = add_ln1071_2_reg_1178;
assign zext_ln1071_fu_811_p1 = tmp_166_fu_804_p3;
assign zext_ln1072_1_fu_794_p1 = add_ln1072_fu_776_p2;
assign zext_ln1072_2_fu_832_p1 = select_ln1069_reg_1145;
assign zext_ln1072_3_fu_930_p1 = add_ln1072_1_reg_1168;
assign zext_ln1072_4_fu_939_p1 = v544_mid2_reg_1139_pp0_iter3_reg;
assign zext_ln1072_5_fu_948_p1 = add_ln1072_2_fu_942_p2;
assign zext_ln1072_fu_773_p1 = select_ln1068_reg_1132;
endmodule 