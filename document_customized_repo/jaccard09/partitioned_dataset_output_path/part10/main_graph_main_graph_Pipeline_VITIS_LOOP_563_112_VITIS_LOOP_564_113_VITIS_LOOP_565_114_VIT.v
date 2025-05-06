
module main_graph_main_graph_Pipeline_VITIS_LOOP_563_112_VITIS_LOOP_564_113_VITIS_LOOP_565_114_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v35_address1,v35_ce1,v35_we1,v35_d1,v8_Addr_A,v8_EN_A,v8_WEN_A,v8_Din_A,v8_Dout_A,v36_address0,v36_ce0,v36_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v35_address1;
output   v35_ce1;
output   v35_we1;
output  [7:0] v35_d1;
output  [31:0] v8_Addr_A;
output   v8_EN_A;
output  [0:0] v8_WEN_A;
output  [7:0] v8_Din_A;
input  [7:0] v8_Dout_A;
output  [13:0] v36_address0;
output   v36_ce0;
input  [6:0] v36_q0;
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
wire   [0:0] icmp_ln563_fu_268_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln563_reg_1049;
reg   [0:0] icmp_ln563_reg_1049_pp0_iter1_reg;
wire   [0:0] icmp_ln564_fu_294_p2;
reg   [0:0] icmp_ln564_reg_1053;
reg   [0:0] icmp_ln564_reg_1053_pp0_iter2_reg;
wire   [0:0] xor_ln563_fu_300_p2;
reg   [0:0] xor_ln563_reg_1060;
wire   [0:0] and_ln563_3_fu_318_p2;
reg   [0:0] and_ln563_3_reg_1066;
wire   [0:0] empty_fu_324_p2;
reg   [0:0] empty_reg_1071;
reg   [0:0] empty_reg_1071_pp0_iter2_reg;
wire   [0:0] not_exitcond_flatten1298_mid2137778_fu_336_p2;
reg   [0:0] not_exitcond_flatten1298_mid2137778_reg_1077;
wire   [0:0] exitcond_flatten1272_mid21331_fu_348_p2;
reg   [0:0] exitcond_flatten1272_mid21331_reg_1083;
reg   [0:0] exitcond_flatten1272_mid21331_reg_1083_pp0_iter2_reg;
wire   [0:0] empty_58_fu_354_p2;
reg   [0:0] empty_58_reg_1091;
wire   [0:0] empty_59_fu_360_p2;
reg   [0:0] empty_59_reg_1096;
reg   [0:0] empty_59_reg_1096_pp0_iter2_reg;
reg   [0:0] empty_59_reg_1096_pp0_iter3_reg;
reg   [0:0] empty_59_reg_1096_pp0_iter4_reg;
reg   [0:0] empty_59_reg_1096_pp0_iter5_reg;
reg   [0:0] empty_59_reg_1096_pp0_iter6_reg;
wire   [2:0] select_ln564_fu_483_p3;
reg   [2:0] select_ln564_reg_1102;
wire   [8:0] select_ln567_fu_555_p3;
reg   [8:0] select_ln567_reg_1108;
wire   [1:0] v266_mid2_fu_585_p3;
reg   [1:0] v266_mid2_reg_1115;
reg   [1:0] v266_mid2_reg_1115_pp0_iter3_reg;
wire   [1:0] select_ln568_fu_593_p3;
reg   [1:0] select_ln568_reg_1121;
wire   [0:0] icmp_ln569_1_fu_607_p2;
reg   [0:0] icmp_ln569_1_reg_1127;
reg   [0:0] icmp_ln569_1_reg_1127_pp0_iter3_reg;
reg   [0:0] icmp_ln569_1_reg_1127_pp0_iter4_reg;
reg   [0:0] icmp_ln569_1_reg_1127_pp0_iter5_reg;
reg   [0:0] icmp_ln569_1_reg_1127_pp0_iter6_reg;
reg   [0:0] icmp_ln569_1_reg_1127_pp0_iter7_reg;
wire   [0:0] icmp_ln568_1_fu_613_p2;
reg   [0:0] icmp_ln568_1_reg_1131;
reg   [0:0] icmp_ln568_1_reg_1131_pp0_iter3_reg;
reg   [0:0] icmp_ln568_1_reg_1131_pp0_iter4_reg;
reg   [0:0] icmp_ln568_1_reg_1131_pp0_iter5_reg;
reg   [0:0] icmp_ln568_1_reg_1131_pp0_iter6_reg;
reg   [0:0] icmp_ln568_1_reg_1131_pp0_iter7_reg;
wire   [0:0] icmp_ln567_1_fu_619_p2;
reg   [0:0] icmp_ln567_1_reg_1135;
reg   [0:0] icmp_ln567_1_reg_1135_pp0_iter3_reg;
reg   [0:0] icmp_ln567_1_reg_1135_pp0_iter4_reg;
reg   [0:0] icmp_ln567_1_reg_1135_pp0_iter5_reg;
reg   [0:0] icmp_ln567_1_reg_1135_pp0_iter6_reg;
reg   [0:0] icmp_ln567_1_reg_1135_pp0_iter7_reg;
wire   [12:0] add_ln566_1_fu_748_p2;
reg   [12:0] add_ln566_1_reg_1139;
reg   [12:0] add_ln566_1_reg_1139_pp0_iter4_reg;
reg   [12:0] add_ln566_1_reg_1139_pp0_iter5_reg;
reg   [12:0] add_ln566_1_reg_1139_pp0_iter6_reg;
reg   [12:0] add_ln566_1_reg_1139_pp0_iter7_reg;
wire   [19:0] add_ln571_1_fu_812_p2;
reg   [19:0] add_ln571_1_reg_1144;
wire   [18:0] trunc_ln571_1_fu_818_p1;
reg   [18:0] trunc_ln571_1_reg_1149;
wire   [13:0] add_ln570_2_fu_883_p2;
reg   [13:0] add_ln570_2_reg_1154;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln571_5_fu_924_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln570_5_fu_929_p1;
wire   [63:0] zext_ln566_3_fu_947_p1;
reg   [7:0] v269_fu_114;
wire   [7:0] grp_fu_955_p3;
reg   [7:0] ap_sig_allocacmp_v269_load;
wire    ap_loop_init;
reg   [1:0] v266_fu_118;
wire   [1:0] add_ln569_fu_601_p2;
reg   [1:0] v265_fu_122;
reg   [3:0] indvar_flatten1255_fu_126;
wire   [3:0] select_ln568_1_fu_631_p3;
reg   [8:0] v264_fu_130;
reg   [12:0] indvar_flatten1270_fu_134;
wire   [12:0] select_ln567_1_fu_372_p3;
reg   [2:0] v263_fu_138;
wire   [2:0] select_ln565_fu_700_p3;
reg   [14:0] indvar_flatten1296_fu_142;
wire   [14:0] select_ln565_1_fu_386_p3;
reg   [2:0] v262_fu_146;
reg   [16:0] indvar_flatten1332_fu_150;
wire   [16:0] select_ln564_1_fu_400_p3;
reg   [9:0] v261_fu_154;
wire   [9:0] select_ln563_1_fu_676_p3;
reg   [24:0] indvar_flatten1378_fu_158;
wire   [24:0] add_ln563_1_fu_274_p2;
reg   [24:0] ap_sig_allocacmp_indvar_flatten1378_load;
reg    v36_ce0_local;
reg    v8_EN_A_local;
wire   [31:0] v8_Addr_A_orig;
reg    v35_we1_local;
reg    v35_ce1_local;
wire   [0:0] icmp_ln565_fu_312_p2;
wire   [0:0] exitcond_flatten1298_not79_fu_330_p2;
wire   [0:0] icmp_ln567_fu_306_p2;
wire   [0:0] and_ln563_2_fu_342_p2;
wire   [12:0] add_ln567_1_fu_366_p2;
wire   [14:0] add_ln565_1_fu_380_p2;
wire   [16:0] add_ln564_1_fu_394_p2;
wire   [0:0] icmp_ln569_fu_445_p2;
wire   [0:0] icmp_ln568_fu_456_p2;
wire   [2:0] select_ln563_fu_438_p3;
wire   [0:0] and_ln563_fu_451_p2;
wire   [0:0] and_ln563_1_fu_462_p2;
wire   [2:0] add_ln564_fu_467_p2;
wire   [0:0] exitcond_flatten1257_mid21327_fu_478_p2;
wire   [0:0] not_exitcond_flatten1272_mid21331_fu_497_p2;
wire   [8:0] v264_mid21277_fu_490_p3;
wire   [0:0] exitcond_flatten1257_mid21295_fu_502_p2;
wire   [0:0] empty_60_fu_514_p2;
wire   [0:0] empty_61_fu_519_p2;
wire   [0:0] exitcond_flatten1257_mid21327_not_fu_532_p2;
wire   [0:0] icmp_ln569_mid21323_fu_473_p2;
wire   [0:0] icmp_ln569_mid21291_fu_543_p2;
wire   [0:0] not_exitcond_flatten1257_mid21295_fu_538_p2;
wire   [8:0] add_ln567_fu_508_p2;
wire   [1:0] v265_mid21262_fu_524_p3;
wire   [0:0] icmp_ln569_mid21269_fu_549_p2;
wire   [0:0] empty_62_fu_569_p2;
wire   [0:0] empty_63_fu_574_p2;
wire   [0:0] empty_64_fu_580_p2;
wire   [1:0] add_ln568_fu_563_p2;
wire   [3:0] add_ln568_1_fu_625_p2;
wire   [9:0] add_ln563_fu_670_p2;
wire   [2:0] v263_mid21303_fu_687_p3;
wire   [2:0] add_ln565_fu_694_p2;
wire   [17:0] tmp_s_fu_707_p3;
wire   [8:0] trunc_ln564_fu_683_p1;
wire   [10:0] tmp_10_fu_719_p3;
wire   [10:0] zext_ln566_1_fu_727_p1;
wire   [10:0] add_ln566_fu_730_p2;
wire   [12:0] tmp_fu_736_p3;
wire   [12:0] zext_ln566_2_fu_744_p1;
wire   [18:0] zext_ln566_fu_715_p1;
wire   [18:0] zext_ln571_fu_754_p1;
wire   [18:0] add_ln571_fu_757_p2;
wire   [17:0] trunc_ln571_fu_763_p1;
wire   [19:0] tmp_31_fu_767_p3;
wire   [19:0] zext_ln571_1_fu_775_p1;
wire   [9:0] tmp_32_fu_792_p3;
wire   [11:0] p_shl_fu_785_p3;
wire   [11:0] zext_ln570_fu_799_p1;
wire   [19:0] sub_ln570_fu_779_p2;
wire   [19:0] zext_ln571_2_fu_809_p1;
wire   [2:0] zext_ln568_fu_822_p1;
wire   [2:0] empty_65_fu_825_p2;
wire   [11:0] sub_ln570_1_fu_803_p2;
wire   [11:0] zext_ln570_2_fu_830_p1;
wire   [11:0] add_ln570_1_fu_834_p2;
wire   [10:0] trunc_ln570_fu_840_p1;
wire   [12:0] tmp_34_fu_844_p3;
wire   [13:0] tmp_35_fu_852_p3;
wire   [13:0] zext_ln570_3_fu_860_p1;
wire   [2:0] zext_ln569_fu_870_p1;
wire   [2:0] add_ln570_fu_873_p2;
wire   [13:0] sub_ln569_fu_864_p2;
wire   [13:0] zext_ln570_4_fu_879_p1;
wire   [20:0] tmp_33_fu_899_p3;
wire   [20:0] zext_ln571_3_fu_906_p1;
wire   [20:0] sub_ln568_fu_909_p2;
wire   [20:0] zext_ln571_4_fu_915_p1;
wire   [20:0] add_ln571_2_fu_918_p2;
wire   [6:0] grp_fu_955_p1;
wire   [7:0] grp_fu_955_p2;
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
wire   [7:0] grp_fu_955_p10;
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
#0 v269_fu_114 = 8'd0;
#0 v266_fu_118 = 2'd0;
#0 v265_fu_122 = 2'd0;
#0 indvar_flatten1255_fu_126 = 4'd0;
#0 v264_fu_130 = 9'd0;
#0 indvar_flatten1270_fu_134 = 13'd0;
#0 v263_fu_138 = 3'd0;
#0 indvar_flatten1296_fu_142 = 15'd0;
#0 v262_fu_146 = 3'd0;
#0 indvar_flatten1332_fu_150 = 17'd0;
#0 v261_fu_154 = 10'd0;
#0 indvar_flatten1378_fu_158 = 25'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U125(.clk(ap_clk),.reset(ap_rst),.din0(v8_Dout_A),.din1(grp_fu_955_p1),.din2(grp_fu_955_p2),.ce(1'b1),.dout(grp_fu_955_p3));
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
            indvar_flatten1255_fu_126 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln563_reg_1049_pp0_iter1_reg == 1'd0))) begin
            indvar_flatten1255_fu_126 <= select_ln568_1_fu_631_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1270_fu_134 <= 13'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln563_reg_1049 == 1'd0))) begin
            indvar_flatten1270_fu_134 <= select_ln567_1_fu_372_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1296_fu_142 <= 15'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln563_reg_1049 == 1'd0))) begin
            indvar_flatten1296_fu_142 <= select_ln565_1_fu_386_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1332_fu_150 <= 17'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln563_reg_1049 == 1'd0))) begin
            indvar_flatten1332_fu_150 <= select_ln564_1_fu_400_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln563_fu_268_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1378_fu_158 <= add_ln563_1_fu_274_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1378_fu_158 <= 25'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v261_fu_154 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v261_fu_154 <= select_ln563_1_fu_676_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v262_fu_146 <= 3'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln563_reg_1049_pp0_iter1_reg == 1'd0))) begin
            v262_fu_146 <= select_ln564_fu_483_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v263_fu_138 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v263_fu_138 <= select_ln565_fu_700_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v264_fu_130 <= 9'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln563_reg_1049_pp0_iter1_reg == 1'd0))) begin
            v264_fu_130 <= select_ln567_fu_555_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v265_fu_122 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln563_reg_1049_pp0_iter1_reg == 1'd0))) begin
            v265_fu_122 <= select_ln568_fu_593_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v266_fu_118 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln563_reg_1049_pp0_iter1_reg == 1'd0))) begin
            v266_fu_118 <= add_ln569_fu_601_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v269_fu_114 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v269_fu_114 <= grp_fu_955_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln566_1_reg_1139 <= add_ln566_1_fu_748_p2;
        add_ln566_1_reg_1139_pp0_iter4_reg <= add_ln566_1_reg_1139;
        add_ln566_1_reg_1139_pp0_iter5_reg <= add_ln566_1_reg_1139_pp0_iter4_reg;
        add_ln566_1_reg_1139_pp0_iter6_reg <= add_ln566_1_reg_1139_pp0_iter5_reg;
        add_ln566_1_reg_1139_pp0_iter7_reg <= add_ln566_1_reg_1139_pp0_iter6_reg;
        add_ln570_2_reg_1154 <= add_ln570_2_fu_883_p2;
        add_ln571_1_reg_1144 <= add_ln571_1_fu_812_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_59_reg_1096_pp0_iter2_reg <= empty_59_reg_1096;
        empty_59_reg_1096_pp0_iter3_reg <= empty_59_reg_1096_pp0_iter2_reg;
        empty_59_reg_1096_pp0_iter4_reg <= empty_59_reg_1096_pp0_iter3_reg;
        empty_59_reg_1096_pp0_iter5_reg <= empty_59_reg_1096_pp0_iter4_reg;
        empty_59_reg_1096_pp0_iter6_reg <= empty_59_reg_1096_pp0_iter5_reg;
        empty_reg_1071_pp0_iter2_reg <= empty_reg_1071;
        exitcond_flatten1272_mid21331_reg_1083_pp0_iter2_reg <= exitcond_flatten1272_mid21331_reg_1083;
        icmp_ln564_reg_1053_pp0_iter2_reg <= icmp_ln564_reg_1053;
        icmp_ln567_1_reg_1135 <= icmp_ln567_1_fu_619_p2;
        icmp_ln567_1_reg_1135_pp0_iter3_reg <= icmp_ln567_1_reg_1135;
        icmp_ln567_1_reg_1135_pp0_iter4_reg <= icmp_ln567_1_reg_1135_pp0_iter3_reg;
        icmp_ln567_1_reg_1135_pp0_iter5_reg <= icmp_ln567_1_reg_1135_pp0_iter4_reg;
        icmp_ln567_1_reg_1135_pp0_iter6_reg <= icmp_ln567_1_reg_1135_pp0_iter5_reg;
        icmp_ln567_1_reg_1135_pp0_iter7_reg <= icmp_ln567_1_reg_1135_pp0_iter6_reg;
        icmp_ln568_1_reg_1131 <= icmp_ln568_1_fu_613_p2;
        icmp_ln568_1_reg_1131_pp0_iter3_reg <= icmp_ln568_1_reg_1131;
        icmp_ln568_1_reg_1131_pp0_iter4_reg <= icmp_ln568_1_reg_1131_pp0_iter3_reg;
        icmp_ln568_1_reg_1131_pp0_iter5_reg <= icmp_ln568_1_reg_1131_pp0_iter4_reg;
        icmp_ln568_1_reg_1131_pp0_iter6_reg <= icmp_ln568_1_reg_1131_pp0_iter5_reg;
        icmp_ln568_1_reg_1131_pp0_iter7_reg <= icmp_ln568_1_reg_1131_pp0_iter6_reg;
        icmp_ln569_1_reg_1127 <= icmp_ln569_1_fu_607_p2;
        icmp_ln569_1_reg_1127_pp0_iter3_reg <= icmp_ln569_1_reg_1127;
        icmp_ln569_1_reg_1127_pp0_iter4_reg <= icmp_ln569_1_reg_1127_pp0_iter3_reg;
        icmp_ln569_1_reg_1127_pp0_iter5_reg <= icmp_ln569_1_reg_1127_pp0_iter4_reg;
        icmp_ln569_1_reg_1127_pp0_iter6_reg <= icmp_ln569_1_reg_1127_pp0_iter5_reg;
        icmp_ln569_1_reg_1127_pp0_iter7_reg <= icmp_ln569_1_reg_1127_pp0_iter6_reg;
        select_ln564_reg_1102 <= select_ln564_fu_483_p3;
        select_ln567_reg_1108 <= select_ln567_fu_555_p3;
        select_ln568_reg_1121 <= select_ln568_fu_593_p3;
        trunc_ln571_1_reg_1149 <= trunc_ln571_1_fu_818_p1;
        v266_mid2_reg_1115 <= v266_mid2_fu_585_p3;
        v266_mid2_reg_1115_pp0_iter3_reg <= v266_mid2_reg_1115;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln563_3_reg_1066 <= and_ln563_3_fu_318_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_58_reg_1091 <= empty_58_fu_354_p2;
        empty_59_reg_1096 <= empty_59_fu_360_p2;
        empty_reg_1071 <= empty_fu_324_p2;
        exitcond_flatten1272_mid21331_reg_1083 <= exitcond_flatten1272_mid21331_fu_348_p2;
        icmp_ln563_reg_1049 <= icmp_ln563_fu_268_p2;
        icmp_ln563_reg_1049_pp0_iter1_reg <= icmp_ln563_reg_1049;
        icmp_ln564_reg_1053 <= icmp_ln564_fu_294_p2;
        not_exitcond_flatten1298_mid2137778_reg_1077 <= not_exitcond_flatten1298_mid2137778_fu_336_p2;
        xor_ln563_reg_1060 <= xor_ln563_fu_300_p2;
    end
end
always @ (*) begin
    if (((icmp_ln563_fu_268_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln563_reg_1049_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten1378_load = 25'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1378_load = indvar_flatten1378_fu_158;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        ap_sig_allocacmp_v269_load = grp_fu_955_p3;
    end else begin
        ap_sig_allocacmp_v269_load = v269_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v35_ce1_local = 1'b1;
    end else begin
        v35_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln567_1_reg_1135_pp0_iter7_reg == 1'd1) & (icmp_ln568_1_reg_1131_pp0_iter7_reg == 1'd1) & (icmp_ln569_1_reg_1127_pp0_iter7_reg == 1'd1))) begin
        v35_we1_local = 1'b1;
    end else begin
        v35_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v36_ce0_local = 1'b1;
    end else begin
        v36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8_EN_A_local = 1'b1;
    end else begin
        v8_EN_A_local = 1'b0;
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
assign add_ln563_1_fu_274_p2 = (ap_sig_allocacmp_indvar_flatten1378_load + 25'd1);
assign add_ln563_fu_670_p2 = (v261_fu_154 + 10'd1);
assign add_ln564_1_fu_394_p2 = (indvar_flatten1332_fu_150 + 17'd1);
assign add_ln564_fu_467_p2 = (select_ln563_fu_438_p3 + 3'd1);
assign add_ln565_1_fu_380_p2 = (indvar_flatten1296_fu_142 + 15'd1);
assign add_ln565_fu_694_p2 = (v263_mid21303_fu_687_p3 + 3'd1);
assign add_ln566_1_fu_748_p2 = (tmp_fu_736_p3 + zext_ln566_2_fu_744_p1);
assign add_ln566_fu_730_p2 = (tmp_10_fu_719_p3 + zext_ln566_1_fu_727_p1);
assign add_ln567_1_fu_366_p2 = (indvar_flatten1270_fu_134 + 13'd1);
assign add_ln567_fu_508_p2 = (v264_mid21277_fu_490_p3 + 9'd1);
assign add_ln568_1_fu_625_p2 = (indvar_flatten1255_fu_126 + 4'd1);
assign add_ln568_fu_563_p2 = (v265_mid21262_fu_524_p3 + 2'd1);
assign add_ln569_fu_601_p2 = (v266_mid2_fu_585_p3 + 2'd1);
assign add_ln570_1_fu_834_p2 = (sub_ln570_1_fu_803_p2 + zext_ln570_2_fu_830_p1);
assign add_ln570_2_fu_883_p2 = (sub_ln569_fu_864_p2 + zext_ln570_4_fu_879_p1);
assign add_ln570_fu_873_p2 = (zext_ln569_fu_870_p1 + select_ln565_fu_700_p3);
assign add_ln571_1_fu_812_p2 = (sub_ln570_fu_779_p2 + zext_ln571_2_fu_809_p1);
assign add_ln571_2_fu_918_p2 = (sub_ln568_fu_909_p2 + zext_ln571_4_fu_915_p1);
assign add_ln571_fu_757_p2 = (zext_ln566_fu_715_p1 + zext_ln571_fu_754_p1);
assign and_ln563_1_fu_462_p2 = (xor_ln563_reg_1060 & icmp_ln568_fu_456_p2);
assign and_ln563_2_fu_342_p2 = (xor_ln563_fu_300_p2 & icmp_ln567_fu_306_p2);
assign and_ln563_3_fu_318_p2 = (xor_ln563_fu_300_p2 & icmp_ln565_fu_312_p2);
assign and_ln563_fu_451_p2 = (xor_ln563_reg_1060 & icmp_ln569_fu_445_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_58_fu_354_p2 = (exitcond_flatten1272_mid21331_fu_348_p2 | and_ln563_3_fu_318_p2);
assign empty_59_fu_360_p2 = (icmp_ln564_fu_294_p2 | empty_58_fu_354_p2);
assign empty_60_fu_514_p2 = (exitcond_flatten1272_mid21331_reg_1083 | exitcond_flatten1257_mid21295_fu_502_p2);
assign empty_61_fu_519_p2 = (empty_reg_1071 | empty_60_fu_514_p2);
assign empty_62_fu_569_p2 = (exitcond_flatten1257_mid21295_fu_502_p2 | empty_58_reg_1091);
assign empty_63_fu_574_p2 = (icmp_ln569_mid21269_fu_549_p2 | empty_62_fu_569_p2);
assign empty_64_fu_580_p2 = (icmp_ln564_reg_1053 | empty_63_fu_574_p2);
assign empty_65_fu_825_p2 = (zext_ln568_fu_822_p1 + select_ln564_reg_1102);
assign empty_fu_324_p2 = (icmp_ln564_fu_294_p2 | and_ln563_3_fu_318_p2);
assign exitcond_flatten1257_mid21295_fu_502_p2 = (not_exitcond_flatten1272_mid21331_fu_497_p2 & exitcond_flatten1257_mid21327_fu_478_p2);
assign exitcond_flatten1257_mid21327_fu_478_p2 = (not_exitcond_flatten1298_mid2137778_reg_1077 & and_ln563_1_fu_462_p2);
assign exitcond_flatten1257_mid21327_not_fu_532_p2 = (exitcond_flatten1257_mid21327_fu_478_p2 ^ 1'd1);
assign exitcond_flatten1272_mid21331_fu_348_p2 = (not_exitcond_flatten1298_mid2137778_fu_336_p2 & and_ln563_2_fu_342_p2);
assign exitcond_flatten1298_not79_fu_330_p2 = (icmp_ln565_fu_312_p2 ^ 1'd1);
assign grp_fu_955_p1 = grp_fu_955_p10;
assign grp_fu_955_p10 = v36_q0;
assign grp_fu_955_p2 = ((empty_59_reg_1096_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v269_load);
assign icmp_ln563_fu_268_p2 = ((ap_sig_allocacmp_indvar_flatten1378_load == 25'd18874368) ? 1'b1 : 1'b0);
assign icmp_ln564_fu_294_p2 = ((indvar_flatten1332_fu_150 == 17'd36864) ? 1'b1 : 1'b0);
assign icmp_ln565_fu_312_p2 = ((indvar_flatten1296_fu_142 == 15'd9216) ? 1'b1 : 1'b0);
assign icmp_ln567_1_fu_619_p2 = ((select_ln567_fu_555_p3 == 9'd255) ? 1'b1 : 1'b0);
assign icmp_ln567_fu_306_p2 = ((indvar_flatten1270_fu_134 == 13'd2304) ? 1'b1 : 1'b0);
assign icmp_ln568_1_fu_613_p2 = ((select_ln568_fu_593_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln568_fu_456_p2 = ((indvar_flatten1255_fu_126 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln569_1_fu_607_p2 = ((add_ln569_fu_601_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln569_fu_445_p2 = ((v266_fu_118 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln569_mid21269_fu_549_p2 = (not_exitcond_flatten1257_mid21295_fu_538_p2 & icmp_ln569_mid21291_fu_543_p2);
assign icmp_ln569_mid21291_fu_543_p2 = (not_exitcond_flatten1272_mid21331_fu_497_p2 & icmp_ln569_mid21323_fu_473_p2);
assign icmp_ln569_mid21323_fu_473_p2 = (not_exitcond_flatten1298_mid2137778_reg_1077 & and_ln563_fu_451_p2);
assign not_exitcond_flatten1257_mid21295_fu_538_p2 = (exitcond_flatten1272_mid21331_reg_1083 | exitcond_flatten1257_mid21327_not_fu_532_p2);
assign not_exitcond_flatten1272_mid21331_fu_497_p2 = (exitcond_flatten1272_mid21331_reg_1083 ^ 1'd1);
assign not_exitcond_flatten1298_mid2137778_fu_336_p2 = (icmp_ln564_fu_294_p2 | exitcond_flatten1298_not79_fu_330_p2);
assign p_shl_fu_785_p3 = {{select_ln567_reg_1108}, {3'd0}};
assign select_ln563_1_fu_676_p3 = ((icmp_ln564_reg_1053_pp0_iter2_reg[0:0] == 1'b1) ? add_ln563_fu_670_p2 : v261_fu_154);
assign select_ln563_fu_438_p3 = ((icmp_ln564_reg_1053[0:0] == 1'b1) ? 3'd0 : v262_fu_146);
assign select_ln564_1_fu_400_p3 = ((icmp_ln564_fu_294_p2[0:0] == 1'b1) ? 17'd1 : add_ln564_1_fu_394_p2);
assign select_ln564_fu_483_p3 = ((and_ln563_3_reg_1066[0:0] == 1'b1) ? add_ln564_fu_467_p2 : select_ln563_fu_438_p3);
assign select_ln565_1_fu_386_p3 = ((empty_fu_324_p2[0:0] == 1'b1) ? 15'd1 : add_ln565_1_fu_380_p2);
assign select_ln565_fu_700_p3 = ((exitcond_flatten1272_mid21331_reg_1083_pp0_iter2_reg[0:0] == 1'b1) ? add_ln565_fu_694_p2 : v263_mid21303_fu_687_p3);
assign select_ln567_1_fu_372_p3 = ((empty_59_fu_360_p2[0:0] == 1'b1) ? 13'd1 : add_ln567_1_fu_366_p2);
assign select_ln567_fu_555_p3 = ((exitcond_flatten1257_mid21295_fu_502_p2[0:0] == 1'b1) ? add_ln567_fu_508_p2 : v264_mid21277_fu_490_p3);
assign select_ln568_1_fu_631_p3 = ((empty_61_fu_519_p2[0:0] == 1'b1) ? 4'd1 : add_ln568_1_fu_625_p2);
assign select_ln568_fu_593_p3 = ((icmp_ln569_mid21269_fu_549_p2[0:0] == 1'b1) ? add_ln568_fu_563_p2 : v265_mid21262_fu_524_p3);
assign sub_ln568_fu_909_p2 = (tmp_33_fu_899_p3 - zext_ln571_3_fu_906_p1);
assign sub_ln569_fu_864_p2 = (tmp_35_fu_852_p3 - zext_ln570_3_fu_860_p1);
assign sub_ln570_1_fu_803_p2 = (p_shl_fu_785_p3 - zext_ln570_fu_799_p1);
assign sub_ln570_fu_779_p2 = (tmp_31_fu_767_p3 - zext_ln571_1_fu_775_p1);
assign tmp_10_fu_719_p3 = {{trunc_ln564_fu_683_p1}, {2'd0}};
assign tmp_31_fu_767_p3 = {{trunc_ln571_fu_763_p1}, {2'd0}};
assign tmp_32_fu_792_p3 = {{select_ln567_reg_1108}, {1'd0}};
assign tmp_33_fu_899_p3 = {{trunc_ln571_1_reg_1149}, {2'd0}};
assign tmp_34_fu_844_p3 = {{add_ln570_1_fu_834_p2}, {1'd0}};
assign tmp_35_fu_852_p3 = {{trunc_ln570_fu_840_p1}, {3'd0}};
assign tmp_fu_736_p3 = {{add_ln566_fu_730_p2}, {2'd0}};
assign tmp_s_fu_707_p3 = {{select_ln563_1_fu_676_p3}, {8'd0}};
assign trunc_ln564_fu_683_p1 = select_ln563_1_fu_676_p3[8:0];
assign trunc_ln570_fu_840_p1 = add_ln570_1_fu_834_p2[10:0];
assign trunc_ln571_1_fu_818_p1 = add_ln571_1_fu_812_p2[18:0];
assign trunc_ln571_fu_763_p1 = add_ln571_fu_757_p2[17:0];
assign v263_mid21303_fu_687_p3 = ((empty_reg_1071_pp0_iter2_reg[0:0] == 1'b1) ? 3'd0 : v263_fu_138);
assign v264_mid21277_fu_490_p3 = ((empty_59_reg_1096[0:0] == 1'b1) ? 9'd0 : v264_fu_130);
assign v265_mid21262_fu_524_p3 = ((empty_61_fu_519_p2[0:0] == 1'b1) ? 2'd0 : v265_fu_122);
assign v266_mid2_fu_585_p3 = ((empty_64_fu_580_p2[0:0] == 1'b1) ? 2'd0 : v266_fu_118);
assign v35_address1 = zext_ln566_3_fu_947_p1;
assign v35_ce1 = v35_ce1_local;
assign v35_d1 = grp_fu_955_p3;
assign v35_we1 = v35_we1_local;
assign v36_address0 = zext_ln570_5_fu_929_p1;
assign v36_ce0 = v36_ce0_local;
assign v8_Addr_A = v8_Addr_A_orig << 32'd0;
assign v8_Addr_A_orig = zext_ln571_5_fu_924_p1;
assign v8_Din_A = 8'd0;
assign v8_EN_A = v8_EN_A_local;
assign v8_WEN_A = 1'd0;
assign xor_ln563_fu_300_p2 = (icmp_ln564_fu_294_p2 ^ 1'd1);
assign zext_ln566_1_fu_727_p1 = select_ln564_reg_1102;
assign zext_ln566_2_fu_744_p1 = select_ln565_fu_700_p3;
assign zext_ln566_3_fu_947_p1 = add_ln566_1_reg_1139_pp0_iter7_reg;
assign zext_ln566_fu_715_p1 = tmp_s_fu_707_p3;
assign zext_ln568_fu_822_p1 = select_ln568_reg_1121;
assign zext_ln569_fu_870_p1 = v266_mid2_reg_1115;
assign zext_ln570_2_fu_830_p1 = empty_65_fu_825_p2;
assign zext_ln570_3_fu_860_p1 = tmp_34_fu_844_p3;
assign zext_ln570_4_fu_879_p1 = add_ln570_fu_873_p2;
assign zext_ln570_5_fu_929_p1 = add_ln570_2_reg_1154;
assign zext_ln570_fu_799_p1 = tmp_32_fu_792_p3;
assign zext_ln571_1_fu_775_p1 = add_ln571_fu_757_p2;
assign zext_ln571_2_fu_809_p1 = select_ln568_reg_1121;
assign zext_ln571_3_fu_906_p1 = add_ln571_1_reg_1144;
assign zext_ln571_4_fu_915_p1 = v266_mid2_reg_1115_pp0_iter3_reg;
assign zext_ln571_5_fu_924_p1 = add_ln571_2_fu_918_p2;
assign zext_ln571_fu_754_p1 = select_ln567_reg_1108;
endmodule 
