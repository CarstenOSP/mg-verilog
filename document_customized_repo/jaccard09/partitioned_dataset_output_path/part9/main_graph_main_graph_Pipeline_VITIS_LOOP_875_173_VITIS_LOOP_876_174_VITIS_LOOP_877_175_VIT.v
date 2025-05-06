
module main_graph_main_graph_Pipeline_VITIS_LOOP_875_173_VITIS_LOOP_876_174_VITIS_LOOP_877_175_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v51_address1,v51_ce1,v51_we1,v51_d1,v12_Addr_A,v12_EN_A,v12_WEN_A,v12_Din_A,v12_Dout_A,v52_address0,v52_ce0,v52_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v51_address1;
output   v51_ce1;
output   v51_we1;
output  [7:0] v51_d1;
output  [31:0] v12_Addr_A;
output   v12_EN_A;
output  [0:0] v12_WEN_A;
output  [7:0] v12_Din_A;
input  [7:0] v12_Dout_A;
output  [14:0] v52_address0;
output   v52_ce0;
input  [6:0] v52_q0;
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
wire   [0:0] icmp_ln875_fu_262_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln875_reg_1047;
reg   [0:0] icmp_ln875_reg_1047_pp0_iter1_reg;
wire   [0:0] icmp_ln876_fu_288_p2;
reg   [0:0] icmp_ln876_reg_1051;
reg   [0:0] icmp_ln876_reg_1051_pp0_iter2_reg;
wire   [0:0] xor_ln875_fu_294_p2;
reg   [0:0] xor_ln875_reg_1058;
wire   [0:0] and_ln875_3_fu_312_p2;
reg   [0:0] and_ln875_3_reg_1064;
wire   [0:0] empty_fu_318_p2;
reg   [0:0] empty_reg_1069;
reg   [0:0] empty_reg_1069_pp0_iter2_reg;
wire   [0:0] not_exitcond_flatten1974_mid22053114_fu_330_p2;
reg   [0:0] not_exitcond_flatten1974_mid22053114_reg_1075;
wire   [0:0] exitcond_flatten1948_mid22007_fu_342_p2;
reg   [0:0] exitcond_flatten1948_mid22007_reg_1081;
reg   [0:0] exitcond_flatten1948_mid22007_reg_1081_pp0_iter2_reg;
wire   [0:0] empty_35_fu_348_p2;
reg   [0:0] empty_35_reg_1089;
wire   [0:0] empty_36_fu_354_p2;
reg   [0:0] empty_36_reg_1094;
reg   [0:0] empty_36_reg_1094_pp0_iter2_reg;
reg   [0:0] empty_36_reg_1094_pp0_iter3_reg;
reg   [0:0] empty_36_reg_1094_pp0_iter4_reg;
reg   [0:0] empty_36_reg_1094_pp0_iter5_reg;
reg   [0:0] empty_36_reg_1094_pp0_iter6_reg;
wire   [3:0] select_ln876_fu_477_p3;
reg   [3:0] select_ln876_reg_1100;
wire   [8:0] select_ln879_fu_549_p3;
reg   [8:0] select_ln879_reg_1106;
wire   [1:0] v429_mid2_fu_579_p3;
reg   [1:0] v429_mid2_reg_1113;
reg   [1:0] v429_mid2_reg_1113_pp0_iter3_reg;
wire   [1:0] select_ln880_fu_587_p3;
reg   [1:0] select_ln880_reg_1119;
wire   [0:0] icmp_ln881_1_fu_601_p2;
reg   [0:0] icmp_ln881_1_reg_1125;
reg   [0:0] icmp_ln881_1_reg_1125_pp0_iter3_reg;
reg   [0:0] icmp_ln881_1_reg_1125_pp0_iter4_reg;
reg   [0:0] icmp_ln881_1_reg_1125_pp0_iter5_reg;
reg   [0:0] icmp_ln881_1_reg_1125_pp0_iter6_reg;
reg   [0:0] icmp_ln881_1_reg_1125_pp0_iter7_reg;
wire   [0:0] icmp_ln880_1_fu_607_p2;
reg   [0:0] icmp_ln880_1_reg_1129;
reg   [0:0] icmp_ln880_1_reg_1129_pp0_iter3_reg;
reg   [0:0] icmp_ln880_1_reg_1129_pp0_iter4_reg;
reg   [0:0] icmp_ln880_1_reg_1129_pp0_iter5_reg;
reg   [0:0] icmp_ln880_1_reg_1129_pp0_iter6_reg;
reg   [0:0] icmp_ln880_1_reg_1129_pp0_iter7_reg;
wire   [0:0] icmp_ln879_1_fu_613_p2;
reg   [0:0] icmp_ln879_1_reg_1133;
reg   [0:0] icmp_ln879_1_reg_1133_pp0_iter3_reg;
reg   [0:0] icmp_ln879_1_reg_1133_pp0_iter4_reg;
reg   [0:0] icmp_ln879_1_reg_1133_pp0_iter5_reg;
reg   [0:0] icmp_ln879_1_reg_1133_pp0_iter6_reg;
reg   [0:0] icmp_ln879_1_reg_1133_pp0_iter7_reg;
wire   [13:0] add_ln878_1_fu_742_p2;
reg   [13:0] add_ln878_1_reg_1137;
reg   [13:0] add_ln878_1_reg_1137_pp0_iter4_reg;
reg   [13:0] add_ln878_1_reg_1137_pp0_iter5_reg;
reg   [13:0] add_ln878_1_reg_1137_pp0_iter6_reg;
reg   [13:0] add_ln878_1_reg_1137_pp0_iter7_reg;
wire   [18:0] add_ln883_1_fu_810_p2;
reg   [18:0] add_ln883_1_reg_1142;
wire   [17:0] trunc_ln883_1_fu_816_p1;
reg   [17:0] trunc_ln883_1_reg_1147;
wire   [14:0] add_ln882_2_fu_881_p2;
reg   [14:0] add_ln882_2_reg_1152;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln883_5_fu_922_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln882_5_fu_927_p1;
wire   [63:0] zext_ln878_3_fu_945_p1;
reg   [7:0] v432_fu_108;
wire   [7:0] grp_fu_953_p3;
reg   [7:0] ap_sig_allocacmp_v432_load;
wire    ap_loop_init;
reg   [1:0] v429_fu_112;
wire   [1:0] add_ln881_fu_595_p2;
reg   [1:0] v428_fu_116;
reg   [3:0] indvar_flatten1931_fu_120;
wire   [3:0] select_ln880_1_fu_625_p3;
reg   [8:0] v427_fu_124;
reg   [12:0] indvar_flatten1946_fu_128;
wire   [12:0] select_ln879_1_fu_366_p3;
reg   [3:0] v426_fu_132;
wire   [3:0] select_ln877_fu_694_p3;
reg   [15:0] indvar_flatten1972_fu_136;
wire   [15:0] select_ln877_1_fu_380_p3;
reg   [3:0] v425_fu_140;
reg   [18:0] indvar_flatten2008_fu_144;
wire   [18:0] select_ln876_1_fu_394_p3;
reg   [8:0] v424_fu_148;
wire   [8:0] select_ln875_1_fu_670_p3;
reg   [25:0] indvar_flatten2054_fu_152;
wire   [25:0] add_ln875_1_fu_268_p2;
reg   [25:0] ap_sig_allocacmp_indvar_flatten2054_load;
reg    v52_ce0_local;
reg    v12_EN_A_local;
wire   [31:0] v12_Addr_A_orig;
reg    v51_we1_local;
reg    v51_ce1_local;
wire   [0:0] icmp_ln877_fu_306_p2;
wire   [0:0] exitcond_flatten1974_not115_fu_324_p2;
wire   [0:0] icmp_ln879_fu_300_p2;
wire   [0:0] and_ln875_2_fu_336_p2;
wire   [12:0] add_ln879_1_fu_360_p2;
wire   [15:0] add_ln877_1_fu_374_p2;
wire   [18:0] add_ln876_1_fu_388_p2;
wire   [0:0] icmp_ln881_fu_439_p2;
wire   [0:0] icmp_ln880_fu_450_p2;
wire   [3:0] select_ln875_fu_432_p3;
wire   [0:0] and_ln875_fu_445_p2;
wire   [0:0] and_ln875_1_fu_456_p2;
wire   [3:0] add_ln876_fu_461_p2;
wire   [0:0] exitcond_flatten1933_mid22003_fu_472_p2;
wire   [0:0] not_exitcond_flatten1948_mid22007_fu_491_p2;
wire   [8:0] v427_mid21953_fu_484_p3;
wire   [0:0] exitcond_flatten1933_mid21971_fu_496_p2;
wire   [0:0] empty_37_fu_508_p2;
wire   [0:0] empty_38_fu_513_p2;
wire   [0:0] exitcond_flatten1933_mid22003_not_fu_526_p2;
wire   [0:0] icmp_ln881_mid21999_fu_467_p2;
wire   [0:0] icmp_ln881_mid21967_fu_537_p2;
wire   [0:0] not_exitcond_flatten1933_mid21971_fu_532_p2;
wire   [8:0] add_ln879_fu_502_p2;
wire   [1:0] v428_mid21938_fu_518_p3;
wire   [0:0] icmp_ln881_mid21945_fu_543_p2;
wire   [0:0] empty_39_fu_563_p2;
wire   [0:0] empty_40_fu_568_p2;
wire   [0:0] empty_41_fu_574_p2;
wire   [1:0] add_ln880_fu_557_p2;
wire   [3:0] add_ln880_1_fu_619_p2;
wire   [8:0] add_ln875_fu_664_p2;
wire   [3:0] v426_mid21979_fu_681_p3;
wire   [3:0] add_ln877_fu_688_p2;
wire   [16:0] tmp_s_fu_701_p3;
wire   [7:0] trunc_ln876_fu_677_p1;
wire   [10:0] tmp_4_fu_713_p3;
wire   [10:0] zext_ln878_1_fu_721_p1;
wire   [10:0] add_ln878_fu_724_p2;
wire   [13:0] tmp_fu_730_p3;
wire   [13:0] zext_ln878_2_fu_738_p1;
wire   [17:0] zext_ln878_fu_709_p1;
wire   [17:0] zext_ln883_fu_748_p1;
wire   [17:0] add_ln883_fu_751_p2;
wire   [16:0] trunc_ln883_fu_757_p1;
wire   [18:0] tmp_18_fu_761_p3;
wire   [18:0] zext_ln883_1_fu_769_p1;
wire   [11:0] tmp_19_fu_779_p3;
wire   [9:0] tmp_20_fu_790_p3;
wire   [12:0] zext_ln882_fu_786_p1;
wire   [12:0] zext_ln882_2_fu_797_p1;
wire   [18:0] sub_ln882_fu_773_p2;
wire   [18:0] zext_ln883_2_fu_807_p1;
wire   [3:0] zext_ln880_fu_820_p1;
wire   [3:0] empty_42_fu_823_p2;
wire   [12:0] add_ln882_3_fu_801_p2;
wire   [12:0] zext_ln882_3_fu_828_p1;
wire   [12:0] add_ln882_1_fu_832_p2;
wire   [11:0] trunc_ln882_fu_838_p1;
wire   [13:0] tmp_22_fu_850_p3;
wire   [14:0] p_shl_fu_842_p3;
wire   [14:0] zext_ln881_fu_858_p1;
wire   [3:0] zext_ln881_1_fu_868_p1;
wire   [3:0] add_ln882_fu_871_p2;
wire   [14:0] add_ln881_1_fu_862_p2;
wire   [14:0] zext_ln882_4_fu_877_p1;
wire   [19:0] tmp_21_fu_897_p3;
wire   [19:0] zext_ln883_3_fu_904_p1;
wire   [19:0] sub_ln880_fu_907_p2;
wire   [19:0] zext_ln883_4_fu_913_p1;
wire   [19:0] add_ln883_2_fu_916_p2;
wire   [6:0] grp_fu_953_p1;
wire   [7:0] grp_fu_953_p2;
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
wire   [7:0] grp_fu_953_p10;
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
#0 v432_fu_108 = 8'd0;
#0 v429_fu_112 = 2'd0;
#0 v428_fu_116 = 2'd0;
#0 indvar_flatten1931_fu_120 = 4'd0;
#0 v427_fu_124 = 9'd0;
#0 indvar_flatten1946_fu_128 = 13'd0;
#0 v426_fu_132 = 4'd0;
#0 indvar_flatten1972_fu_136 = 16'd0;
#0 v425_fu_140 = 4'd0;
#0 indvar_flatten2008_fu_144 = 19'd0;
#0 v424_fu_148 = 9'd0;
#0 indvar_flatten2054_fu_152 = 26'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U231(.clk(ap_clk),.reset(ap_rst),.din0(v12_Dout_A),.din1(grp_fu_953_p1),.din2(grp_fu_953_p2),.ce(1'b1),.dout(grp_fu_953_p3));
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
            indvar_flatten1931_fu_120 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln875_reg_1047_pp0_iter1_reg == 1'd0))) begin
            indvar_flatten1931_fu_120 <= select_ln880_1_fu_625_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1946_fu_128 <= 13'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln875_reg_1047 == 1'd0))) begin
            indvar_flatten1946_fu_128 <= select_ln879_1_fu_366_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1972_fu_136 <= 16'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln875_reg_1047 == 1'd0))) begin
            indvar_flatten1972_fu_136 <= select_ln877_1_fu_380_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2008_fu_144 <= 19'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln875_reg_1047 == 1'd0))) begin
            indvar_flatten2008_fu_144 <= select_ln876_1_fu_394_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln875_fu_262_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten2054_fu_152 <= add_ln875_1_fu_268_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2054_fu_152 <= 26'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v424_fu_148 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v424_fu_148 <= select_ln875_1_fu_670_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v425_fu_140 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln875_reg_1047_pp0_iter1_reg == 1'd0))) begin
            v425_fu_140 <= select_ln876_fu_477_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v426_fu_132 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v426_fu_132 <= select_ln877_fu_694_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v427_fu_124 <= 9'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln875_reg_1047_pp0_iter1_reg == 1'd0))) begin
            v427_fu_124 <= select_ln879_fu_549_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v428_fu_116 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln875_reg_1047_pp0_iter1_reg == 1'd0))) begin
            v428_fu_116 <= select_ln880_fu_587_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v429_fu_112 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln875_reg_1047_pp0_iter1_reg == 1'd0))) begin
            v429_fu_112 <= add_ln881_fu_595_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v432_fu_108 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v432_fu_108 <= grp_fu_953_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln878_1_reg_1137 <= add_ln878_1_fu_742_p2;
        add_ln878_1_reg_1137_pp0_iter4_reg <= add_ln878_1_reg_1137;
        add_ln878_1_reg_1137_pp0_iter5_reg <= add_ln878_1_reg_1137_pp0_iter4_reg;
        add_ln878_1_reg_1137_pp0_iter6_reg <= add_ln878_1_reg_1137_pp0_iter5_reg;
        add_ln878_1_reg_1137_pp0_iter7_reg <= add_ln878_1_reg_1137_pp0_iter6_reg;
        add_ln882_2_reg_1152 <= add_ln882_2_fu_881_p2;
        add_ln883_1_reg_1142 <= add_ln883_1_fu_810_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_36_reg_1094_pp0_iter2_reg <= empty_36_reg_1094;
        empty_36_reg_1094_pp0_iter3_reg <= empty_36_reg_1094_pp0_iter2_reg;
        empty_36_reg_1094_pp0_iter4_reg <= empty_36_reg_1094_pp0_iter3_reg;
        empty_36_reg_1094_pp0_iter5_reg <= empty_36_reg_1094_pp0_iter4_reg;
        empty_36_reg_1094_pp0_iter6_reg <= empty_36_reg_1094_pp0_iter5_reg;
        empty_reg_1069_pp0_iter2_reg <= empty_reg_1069;
        exitcond_flatten1948_mid22007_reg_1081_pp0_iter2_reg <= exitcond_flatten1948_mid22007_reg_1081;
        icmp_ln876_reg_1051_pp0_iter2_reg <= icmp_ln876_reg_1051;
        icmp_ln879_1_reg_1133 <= icmp_ln879_1_fu_613_p2;
        icmp_ln879_1_reg_1133_pp0_iter3_reg <= icmp_ln879_1_reg_1133;
        icmp_ln879_1_reg_1133_pp0_iter4_reg <= icmp_ln879_1_reg_1133_pp0_iter3_reg;
        icmp_ln879_1_reg_1133_pp0_iter5_reg <= icmp_ln879_1_reg_1133_pp0_iter4_reg;
        icmp_ln879_1_reg_1133_pp0_iter6_reg <= icmp_ln879_1_reg_1133_pp0_iter5_reg;
        icmp_ln879_1_reg_1133_pp0_iter7_reg <= icmp_ln879_1_reg_1133_pp0_iter6_reg;
        icmp_ln880_1_reg_1129 <= icmp_ln880_1_fu_607_p2;
        icmp_ln880_1_reg_1129_pp0_iter3_reg <= icmp_ln880_1_reg_1129;
        icmp_ln880_1_reg_1129_pp0_iter4_reg <= icmp_ln880_1_reg_1129_pp0_iter3_reg;
        icmp_ln880_1_reg_1129_pp0_iter5_reg <= icmp_ln880_1_reg_1129_pp0_iter4_reg;
        icmp_ln880_1_reg_1129_pp0_iter6_reg <= icmp_ln880_1_reg_1129_pp0_iter5_reg;
        icmp_ln880_1_reg_1129_pp0_iter7_reg <= icmp_ln880_1_reg_1129_pp0_iter6_reg;
        icmp_ln881_1_reg_1125 <= icmp_ln881_1_fu_601_p2;
        icmp_ln881_1_reg_1125_pp0_iter3_reg <= icmp_ln881_1_reg_1125;
        icmp_ln881_1_reg_1125_pp0_iter4_reg <= icmp_ln881_1_reg_1125_pp0_iter3_reg;
        icmp_ln881_1_reg_1125_pp0_iter5_reg <= icmp_ln881_1_reg_1125_pp0_iter4_reg;
        icmp_ln881_1_reg_1125_pp0_iter6_reg <= icmp_ln881_1_reg_1125_pp0_iter5_reg;
        icmp_ln881_1_reg_1125_pp0_iter7_reg <= icmp_ln881_1_reg_1125_pp0_iter6_reg;
        select_ln876_reg_1100 <= select_ln876_fu_477_p3;
        select_ln879_reg_1106 <= select_ln879_fu_549_p3;
        select_ln880_reg_1119 <= select_ln880_fu_587_p3;
        trunc_ln883_1_reg_1147 <= trunc_ln883_1_fu_816_p1;
        v429_mid2_reg_1113 <= v429_mid2_fu_579_p3;
        v429_mid2_reg_1113_pp0_iter3_reg <= v429_mid2_reg_1113;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln875_3_reg_1064 <= and_ln875_3_fu_312_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_35_reg_1089 <= empty_35_fu_348_p2;
        empty_36_reg_1094 <= empty_36_fu_354_p2;
        empty_reg_1069 <= empty_fu_318_p2;
        exitcond_flatten1948_mid22007_reg_1081 <= exitcond_flatten1948_mid22007_fu_342_p2;
        icmp_ln875_reg_1047 <= icmp_ln875_fu_262_p2;
        icmp_ln875_reg_1047_pp0_iter1_reg <= icmp_ln875_reg_1047;
        icmp_ln876_reg_1051 <= icmp_ln876_fu_288_p2;
        not_exitcond_flatten1974_mid22053114_reg_1075 <= not_exitcond_flatten1974_mid22053114_fu_330_p2;
        xor_ln875_reg_1058 <= xor_ln875_fu_294_p2;
    end
end
always @ (*) begin
    if (((icmp_ln875_fu_262_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln875_reg_1047_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten2054_load = 26'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten2054_load = indvar_flatten2054_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        ap_sig_allocacmp_v432_load = grp_fu_953_p3;
    end else begin
        ap_sig_allocacmp_v432_load = v432_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v12_EN_A_local = 1'b1;
    end else begin
        v12_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v51_ce1_local = 1'b1;
    end else begin
        v51_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln879_1_reg_1133_pp0_iter7_reg == 1'd1) & (icmp_ln880_1_reg_1129_pp0_iter7_reg == 1'd1) & (icmp_ln881_1_reg_1125_pp0_iter7_reg == 1'd1))) begin
        v51_we1_local = 1'b1;
    end else begin
        v51_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v52_ce0_local = 1'b1;
    end else begin
        v52_ce0_local = 1'b0;
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
assign add_ln875_1_fu_268_p2 = (ap_sig_allocacmp_indvar_flatten2054_load + 26'd1);
assign add_ln875_fu_664_p2 = (v424_fu_148 + 9'd1);
assign add_ln876_1_fu_388_p2 = (indvar_flatten2008_fu_144 + 19'd1);
assign add_ln876_fu_461_p2 = (select_ln875_fu_432_p3 + 4'd1);
assign add_ln877_1_fu_374_p2 = (indvar_flatten1972_fu_136 + 16'd1);
assign add_ln877_fu_688_p2 = (v426_mid21979_fu_681_p3 + 4'd1);
assign add_ln878_1_fu_742_p2 = (tmp_fu_730_p3 + zext_ln878_2_fu_738_p1);
assign add_ln878_fu_724_p2 = (tmp_4_fu_713_p3 + zext_ln878_1_fu_721_p1);
assign add_ln879_1_fu_360_p2 = (indvar_flatten1946_fu_128 + 13'd1);
assign add_ln879_fu_502_p2 = (v427_mid21953_fu_484_p3 + 9'd1);
assign add_ln880_1_fu_619_p2 = (indvar_flatten1931_fu_120 + 4'd1);
assign add_ln880_fu_557_p2 = (v428_mid21938_fu_518_p3 + 2'd1);
assign add_ln881_1_fu_862_p2 = (p_shl_fu_842_p3 + zext_ln881_fu_858_p1);
assign add_ln881_fu_595_p2 = (v429_mid2_fu_579_p3 + 2'd1);
assign add_ln882_1_fu_832_p2 = (add_ln882_3_fu_801_p2 + zext_ln882_3_fu_828_p1);
assign add_ln882_2_fu_881_p2 = (add_ln881_1_fu_862_p2 + zext_ln882_4_fu_877_p1);
assign add_ln882_3_fu_801_p2 = (zext_ln882_fu_786_p1 + zext_ln882_2_fu_797_p1);
assign add_ln882_fu_871_p2 = (zext_ln881_1_fu_868_p1 + select_ln877_fu_694_p3);
assign add_ln883_1_fu_810_p2 = (sub_ln882_fu_773_p2 + zext_ln883_2_fu_807_p1);
assign add_ln883_2_fu_916_p2 = (sub_ln880_fu_907_p2 + zext_ln883_4_fu_913_p1);
assign add_ln883_fu_751_p2 = (zext_ln878_fu_709_p1 + zext_ln883_fu_748_p1);
assign and_ln875_1_fu_456_p2 = (xor_ln875_reg_1058 & icmp_ln880_fu_450_p2);
assign and_ln875_2_fu_336_p2 = (xor_ln875_fu_294_p2 & icmp_ln879_fu_300_p2);
assign and_ln875_3_fu_312_p2 = (xor_ln875_fu_294_p2 & icmp_ln877_fu_306_p2);
assign and_ln875_fu_445_p2 = (xor_ln875_reg_1058 & icmp_ln881_fu_439_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_35_fu_348_p2 = (exitcond_flatten1948_mid22007_fu_342_p2 | and_ln875_3_fu_312_p2);
assign empty_36_fu_354_p2 = (icmp_ln876_fu_288_p2 | empty_35_fu_348_p2);
assign empty_37_fu_508_p2 = (exitcond_flatten1948_mid22007_reg_1081 | exitcond_flatten1933_mid21971_fu_496_p2);
assign empty_38_fu_513_p2 = (empty_reg_1069 | empty_37_fu_508_p2);
assign empty_39_fu_563_p2 = (exitcond_flatten1933_mid21971_fu_496_p2 | empty_35_reg_1089);
assign empty_40_fu_568_p2 = (icmp_ln881_mid21945_fu_543_p2 | empty_39_fu_563_p2);
assign empty_41_fu_574_p2 = (icmp_ln876_reg_1051 | empty_40_fu_568_p2);
assign empty_42_fu_823_p2 = (zext_ln880_fu_820_p1 + select_ln876_reg_1100);
assign empty_fu_318_p2 = (icmp_ln876_fu_288_p2 | and_ln875_3_fu_312_p2);
assign exitcond_flatten1933_mid21971_fu_496_p2 = (not_exitcond_flatten1948_mid22007_fu_491_p2 & exitcond_flatten1933_mid22003_fu_472_p2);
assign exitcond_flatten1933_mid22003_fu_472_p2 = (not_exitcond_flatten1974_mid22053114_reg_1075 & and_ln875_1_fu_456_p2);
assign exitcond_flatten1933_mid22003_not_fu_526_p2 = (exitcond_flatten1933_mid22003_fu_472_p2 ^ 1'd1);
assign exitcond_flatten1948_mid22007_fu_342_p2 = (not_exitcond_flatten1974_mid22053114_fu_330_p2 & and_ln875_2_fu_336_p2);
assign exitcond_flatten1974_not115_fu_324_p2 = (icmp_ln877_fu_306_p2 ^ 1'd1);
assign grp_fu_953_p1 = grp_fu_953_p10;
assign grp_fu_953_p10 = v52_q0;
assign grp_fu_953_p2 = ((empty_36_reg_1094_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v432_load);
assign icmp_ln875_fu_262_p2 = ((ap_sig_allocacmp_indvar_flatten2054_load == 26'd37748736) ? 1'b1 : 1'b0);
assign icmp_ln876_fu_288_p2 = ((indvar_flatten2008_fu_144 == 19'd147456) ? 1'b1 : 1'b0);
assign icmp_ln877_fu_306_p2 = ((indvar_flatten1972_fu_136 == 16'd18432) ? 1'b1 : 1'b0);
assign icmp_ln879_1_fu_613_p2 = ((select_ln879_fu_549_p3 == 9'd255) ? 1'b1 : 1'b0);
assign icmp_ln879_fu_300_p2 = ((indvar_flatten1946_fu_128 == 13'd2304) ? 1'b1 : 1'b0);
assign icmp_ln880_1_fu_607_p2 = ((select_ln880_fu_587_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln880_fu_450_p2 = ((indvar_flatten1931_fu_120 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln881_1_fu_601_p2 = ((add_ln881_fu_595_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln881_fu_439_p2 = ((v429_fu_112 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln881_mid21945_fu_543_p2 = (not_exitcond_flatten1933_mid21971_fu_532_p2 & icmp_ln881_mid21967_fu_537_p2);
assign icmp_ln881_mid21967_fu_537_p2 = (not_exitcond_flatten1948_mid22007_fu_491_p2 & icmp_ln881_mid21999_fu_467_p2);
assign icmp_ln881_mid21999_fu_467_p2 = (not_exitcond_flatten1974_mid22053114_reg_1075 & and_ln875_fu_445_p2);
assign not_exitcond_flatten1933_mid21971_fu_532_p2 = (exitcond_flatten1948_mid22007_reg_1081 | exitcond_flatten1933_mid22003_not_fu_526_p2);
assign not_exitcond_flatten1948_mid22007_fu_491_p2 = (exitcond_flatten1948_mid22007_reg_1081 ^ 1'd1);
assign not_exitcond_flatten1974_mid22053114_fu_330_p2 = (icmp_ln876_fu_288_p2 | exitcond_flatten1974_not115_fu_324_p2);
assign p_shl_fu_842_p3 = {{trunc_ln882_fu_838_p1}, {3'd0}};
assign select_ln875_1_fu_670_p3 = ((icmp_ln876_reg_1051_pp0_iter2_reg[0:0] == 1'b1) ? add_ln875_fu_664_p2 : v424_fu_148);
assign select_ln875_fu_432_p3 = ((icmp_ln876_reg_1051[0:0] == 1'b1) ? 4'd0 : v425_fu_140);
assign select_ln876_1_fu_394_p3 = ((icmp_ln876_fu_288_p2[0:0] == 1'b1) ? 19'd1 : add_ln876_1_fu_388_p2);
assign select_ln876_fu_477_p3 = ((and_ln875_3_reg_1064[0:0] == 1'b1) ? add_ln876_fu_461_p2 : select_ln875_fu_432_p3);
assign select_ln877_1_fu_380_p3 = ((empty_fu_318_p2[0:0] == 1'b1) ? 16'd1 : add_ln877_1_fu_374_p2);
assign select_ln877_fu_694_p3 = ((exitcond_flatten1948_mid22007_reg_1081_pp0_iter2_reg[0:0] == 1'b1) ? add_ln877_fu_688_p2 : v426_mid21979_fu_681_p3);
assign select_ln879_1_fu_366_p3 = ((empty_36_fu_354_p2[0:0] == 1'b1) ? 13'd1 : add_ln879_1_fu_360_p2);
assign select_ln879_fu_549_p3 = ((exitcond_flatten1933_mid21971_fu_496_p2[0:0] == 1'b1) ? add_ln879_fu_502_p2 : v427_mid21953_fu_484_p3);
assign select_ln880_1_fu_625_p3 = ((empty_38_fu_513_p2[0:0] == 1'b1) ? 4'd1 : add_ln880_1_fu_619_p2);
assign select_ln880_fu_587_p3 = ((icmp_ln881_mid21945_fu_543_p2[0:0] == 1'b1) ? add_ln880_fu_557_p2 : v428_mid21938_fu_518_p3);
assign sub_ln880_fu_907_p2 = (tmp_21_fu_897_p3 - zext_ln883_3_fu_904_p1);
assign sub_ln882_fu_773_p2 = (tmp_18_fu_761_p3 - zext_ln883_1_fu_769_p1);
assign tmp_18_fu_761_p3 = {{trunc_ln883_fu_757_p1}, {2'd0}};
assign tmp_19_fu_779_p3 = {{select_ln879_reg_1106}, {3'd0}};
assign tmp_20_fu_790_p3 = {{select_ln879_reg_1106}, {1'd0}};
assign tmp_21_fu_897_p3 = {{trunc_ln883_1_reg_1147}, {2'd0}};
assign tmp_22_fu_850_p3 = {{add_ln882_1_fu_832_p2}, {1'd0}};
assign tmp_4_fu_713_p3 = {{trunc_ln876_fu_677_p1}, {3'd0}};
assign tmp_fu_730_p3 = {{add_ln878_fu_724_p2}, {3'd0}};
assign tmp_s_fu_701_p3 = {{select_ln875_1_fu_670_p3}, {8'd0}};
assign trunc_ln876_fu_677_p1 = select_ln875_1_fu_670_p3[7:0];
assign trunc_ln882_fu_838_p1 = add_ln882_1_fu_832_p2[11:0];
assign trunc_ln883_1_fu_816_p1 = add_ln883_1_fu_810_p2[17:0];
assign trunc_ln883_fu_757_p1 = add_ln883_fu_751_p2[16:0];
assign v12_Addr_A = v12_Addr_A_orig << 32'd0;
assign v12_Addr_A_orig = zext_ln883_5_fu_922_p1;
assign v12_Din_A = 8'd0;
assign v12_EN_A = v12_EN_A_local;
assign v12_WEN_A = 1'd0;
assign v426_mid21979_fu_681_p3 = ((empty_reg_1069_pp0_iter2_reg[0:0] == 1'b1) ? 4'd0 : v426_fu_132);
assign v427_mid21953_fu_484_p3 = ((empty_36_reg_1094[0:0] == 1'b1) ? 9'd0 : v427_fu_124);
assign v428_mid21938_fu_518_p3 = ((empty_38_fu_513_p2[0:0] == 1'b1) ? 2'd0 : v428_fu_116);
assign v429_mid2_fu_579_p3 = ((empty_41_fu_574_p2[0:0] == 1'b1) ? 2'd0 : v429_fu_112);
assign v51_address1 = zext_ln878_3_fu_945_p1;
assign v51_ce1 = v51_ce1_local;
assign v51_d1 = grp_fu_953_p3;
assign v51_we1 = v51_we1_local;
assign v52_address0 = zext_ln882_5_fu_927_p1;
assign v52_ce0 = v52_ce0_local;
assign xor_ln875_fu_294_p2 = (icmp_ln876_fu_288_p2 ^ 1'd1);
assign zext_ln878_1_fu_721_p1 = select_ln876_reg_1100;
assign zext_ln878_2_fu_738_p1 = select_ln877_fu_694_p3;
assign zext_ln878_3_fu_945_p1 = add_ln878_1_reg_1137_pp0_iter7_reg;
assign zext_ln878_fu_709_p1 = tmp_s_fu_701_p3;
assign zext_ln880_fu_820_p1 = select_ln880_reg_1119;
assign zext_ln881_1_fu_868_p1 = v429_mid2_reg_1113;
assign zext_ln881_fu_858_p1 = tmp_22_fu_850_p3;
assign zext_ln882_2_fu_797_p1 = tmp_20_fu_790_p3;
assign zext_ln882_3_fu_828_p1 = empty_42_fu_823_p2;
assign zext_ln882_4_fu_877_p1 = add_ln882_fu_871_p2;
assign zext_ln882_5_fu_927_p1 = add_ln882_2_reg_1152;
assign zext_ln882_fu_786_p1 = tmp_19_fu_779_p3;
assign zext_ln883_1_fu_769_p1 = add_ln883_fu_751_p2;
assign zext_ln883_2_fu_807_p1 = select_ln880_reg_1119;
assign zext_ln883_3_fu_904_p1 = add_ln883_1_reg_1142;
assign zext_ln883_4_fu_913_p1 = v429_mid2_reg_1113_pp0_iter3_reg;
assign zext_ln883_5_fu_922_p1 = add_ln883_2_fu_916_p2;
assign zext_ln883_fu_748_p1 = select_ln879_reg_1106;
endmodule 
