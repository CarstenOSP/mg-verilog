
module main_graph_main_graph_Pipeline_VITIS_LOOP_1003_210_VITIS_LOOP_1004_211_VITIS_LOOP_1005_212_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v43_address1,v43_ce1,v43_we1,v43_d1,v15_Addr_A,v15_EN_A,v15_WEN_A,v15_Din_A,v15_Dout_A,v44_address0,v44_ce0,v44_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v43_address1;
output   v43_ce1;
output   v43_we1;
output  [7:0] v43_d1;
output  [31:0] v15_Addr_A;
output   v15_EN_A;
output  [0:0] v15_WEN_A;
output  [7:0] v15_Din_A;
input  [7:0] v15_Dout_A;
output  [14:0] v44_address0;
output   v44_ce0;
input  [6:0] v44_q0;
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
wire   [0:0] icmp_ln1003_fu_262_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln1003_reg_1047;
reg   [0:0] icmp_ln1003_reg_1047_pp0_iter1_reg;
wire   [0:0] icmp_ln1004_fu_288_p2;
reg   [0:0] icmp_ln1004_reg_1051;
reg   [0:0] icmp_ln1004_reg_1051_pp0_iter2_reg;
wire   [0:0] xor_ln1003_fu_294_p2;
reg   [0:0] xor_ln1003_reg_1058;
wire   [0:0] and_ln1003_3_fu_312_p2;
reg   [0:0] and_ln1003_3_reg_1064;
wire   [0:0] empty_fu_318_p2;
reg   [0:0] empty_reg_1069;
reg   [0:0] empty_reg_1069_pp0_iter2_reg;
wire   [0:0] not_exitcond_flatten2423_mid22502139_fu_330_p2;
reg   [0:0] not_exitcond_flatten2423_mid22502139_reg_1075;
wire   [0:0] exitcond_flatten2397_mid22456_fu_342_p2;
reg   [0:0] exitcond_flatten2397_mid22456_reg_1081;
reg   [0:0] exitcond_flatten2397_mid22456_reg_1081_pp0_iter2_reg;
wire   [0:0] empty_175_fu_348_p2;
reg   [0:0] empty_175_reg_1089;
wire   [0:0] empty_176_fu_354_p2;
reg   [0:0] empty_176_reg_1094;
reg   [0:0] empty_176_reg_1094_pp0_iter2_reg;
reg   [0:0] empty_176_reg_1094_pp0_iter3_reg;
reg   [0:0] empty_176_reg_1094_pp0_iter4_reg;
reg   [0:0] empty_176_reg_1094_pp0_iter5_reg;
reg   [0:0] empty_176_reg_1094_pp0_iter6_reg;
wire   [3:0] select_ln1004_fu_477_p3;
reg   [3:0] select_ln1004_reg_1100;
wire   [8:0] select_ln1007_fu_549_p3;
reg   [8:0] select_ln1007_reg_1106;
wire   [1:0] v507_mid2_fu_579_p3;
reg   [1:0] v507_mid2_reg_1113;
reg   [1:0] v507_mid2_reg_1113_pp0_iter3_reg;
wire   [1:0] select_ln1008_fu_587_p3;
reg   [1:0] select_ln1008_reg_1119;
wire   [0:0] icmp_ln1009_1_fu_601_p2;
reg   [0:0] icmp_ln1009_1_reg_1125;
reg   [0:0] icmp_ln1009_1_reg_1125_pp0_iter3_reg;
reg   [0:0] icmp_ln1009_1_reg_1125_pp0_iter4_reg;
reg   [0:0] icmp_ln1009_1_reg_1125_pp0_iter5_reg;
reg   [0:0] icmp_ln1009_1_reg_1125_pp0_iter6_reg;
reg   [0:0] icmp_ln1009_1_reg_1125_pp0_iter7_reg;
wire   [0:0] icmp_ln1008_1_fu_607_p2;
reg   [0:0] icmp_ln1008_1_reg_1129;
reg   [0:0] icmp_ln1008_1_reg_1129_pp0_iter3_reg;
reg   [0:0] icmp_ln1008_1_reg_1129_pp0_iter4_reg;
reg   [0:0] icmp_ln1008_1_reg_1129_pp0_iter5_reg;
reg   [0:0] icmp_ln1008_1_reg_1129_pp0_iter6_reg;
reg   [0:0] icmp_ln1008_1_reg_1129_pp0_iter7_reg;
wire   [0:0] icmp_ln1007_1_fu_613_p2;
reg   [0:0] icmp_ln1007_1_reg_1133;
reg   [0:0] icmp_ln1007_1_reg_1133_pp0_iter3_reg;
reg   [0:0] icmp_ln1007_1_reg_1133_pp0_iter4_reg;
reg   [0:0] icmp_ln1007_1_reg_1133_pp0_iter5_reg;
reg   [0:0] icmp_ln1007_1_reg_1133_pp0_iter6_reg;
reg   [0:0] icmp_ln1007_1_reg_1133_pp0_iter7_reg;
wire   [13:0] add_ln1006_1_fu_742_p2;
reg   [13:0] add_ln1006_1_reg_1137;
reg   [13:0] add_ln1006_1_reg_1137_pp0_iter4_reg;
reg   [13:0] add_ln1006_1_reg_1137_pp0_iter5_reg;
reg   [13:0] add_ln1006_1_reg_1137_pp0_iter6_reg;
reg   [13:0] add_ln1006_1_reg_1137_pp0_iter7_reg;
wire   [18:0] add_ln1011_1_fu_810_p2;
reg   [18:0] add_ln1011_1_reg_1142;
wire   [17:0] trunc_ln1011_1_fu_816_p1;
reg   [17:0] trunc_ln1011_1_reg_1147;
wire   [14:0] add_ln1010_2_fu_881_p2;
reg   [14:0] add_ln1010_2_reg_1152;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln1011_5_fu_922_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1010_5_fu_927_p1;
wire   [63:0] zext_ln1006_3_fu_945_p1;
reg   [7:0] v510_fu_108;
wire   [7:0] grp_fu_953_p3;
reg   [7:0] ap_sig_allocacmp_v510_load;
wire    ap_loop_init;
reg   [1:0] v507_fu_112;
wire   [1:0] add_ln1009_fu_595_p2;
reg   [1:0] v506_fu_116;
reg   [3:0] indvar_flatten2380_fu_120;
wire   [3:0] select_ln1008_1_fu_625_p3;
reg   [8:0] v505_fu_124;
reg   [12:0] indvar_flatten2395_fu_128;
wire   [12:0] select_ln1007_1_fu_366_p3;
reg   [3:0] v504_fu_132;
wire   [3:0] select_ln1005_fu_694_p3;
reg   [15:0] indvar_flatten2421_fu_136;
wire   [15:0] select_ln1005_1_fu_380_p3;
reg   [3:0] v503_fu_140;
reg   [18:0] indvar_flatten2457_fu_144;
wire   [18:0] select_ln1004_1_fu_394_p3;
reg   [8:0] v502_fu_148;
wire   [8:0] select_ln1003_1_fu_670_p3;
reg   [25:0] indvar_flatten2503_fu_152;
wire   [25:0] add_ln1003_1_fu_268_p2;
reg   [25:0] ap_sig_allocacmp_indvar_flatten2503_load;
reg    v44_ce0_local;
reg    v15_EN_A_local;
wire   [31:0] v15_Addr_A_orig;
reg    v43_we1_local;
reg    v43_ce1_local;
wire   [0:0] icmp_ln1005_fu_306_p2;
wire   [0:0] exitcond_flatten2423_not140_fu_324_p2;
wire   [0:0] icmp_ln1007_fu_300_p2;
wire   [0:0] and_ln1003_2_fu_336_p2;
wire   [12:0] add_ln1007_1_fu_360_p2;
wire   [15:0] add_ln1005_1_fu_374_p2;
wire   [18:0] add_ln1004_1_fu_388_p2;
wire   [0:0] icmp_ln1009_fu_439_p2;
wire   [0:0] icmp_ln1008_fu_450_p2;
wire   [3:0] select_ln1003_fu_432_p3;
wire   [0:0] and_ln1003_fu_445_p2;
wire   [0:0] and_ln1003_1_fu_456_p2;
wire   [3:0] add_ln1004_fu_461_p2;
wire   [0:0] exitcond_flatten2382_mid22452_fu_472_p2;
wire   [0:0] not_exitcond_flatten2397_mid22456_fu_491_p2;
wire   [8:0] v505_mid22402_fu_484_p3;
wire   [0:0] exitcond_flatten2382_mid22420_fu_496_p2;
wire   [0:0] empty_177_fu_508_p2;
wire   [0:0] empty_178_fu_513_p2;
wire   [0:0] exitcond_flatten2382_mid22452_not_fu_526_p2;
wire   [0:0] icmp_ln1009_mid22448_fu_467_p2;
wire   [0:0] icmp_ln1009_mid22416_fu_537_p2;
wire   [0:0] not_exitcond_flatten2382_mid22420_fu_532_p2;
wire   [8:0] add_ln1007_fu_502_p2;
wire   [1:0] v506_mid22387_fu_518_p3;
wire   [0:0] icmp_ln1009_mid22394_fu_543_p2;
wire   [0:0] empty_179_fu_563_p2;
wire   [0:0] empty_180_fu_568_p2;
wire   [0:0] empty_181_fu_574_p2;
wire   [1:0] add_ln1008_fu_557_p2;
wire   [3:0] add_ln1008_1_fu_619_p2;
wire   [8:0] add_ln1003_fu_664_p2;
wire   [3:0] v504_mid22428_fu_681_p3;
wire   [3:0] add_ln1005_fu_688_p2;
wire   [16:0] tmp_s_fu_701_p3;
wire   [7:0] trunc_ln1004_fu_677_p1;
wire   [10:0] tmp_80_fu_713_p3;
wire   [10:0] zext_ln1006_1_fu_721_p1;
wire   [10:0] add_ln1006_fu_724_p2;
wire   [13:0] tmp_fu_730_p3;
wire   [13:0] zext_ln1006_2_fu_738_p1;
wire   [17:0] zext_ln1006_fu_709_p1;
wire   [17:0] zext_ln1011_fu_748_p1;
wire   [17:0] add_ln1011_fu_751_p2;
wire   [16:0] trunc_ln1011_fu_757_p1;
wire   [18:0] tmp_176_fu_761_p3;
wire   [18:0] zext_ln1011_1_fu_769_p1;
wire   [11:0] tmp_177_fu_779_p3;
wire   [9:0] tmp_178_fu_790_p3;
wire   [12:0] zext_ln1010_fu_786_p1;
wire   [12:0] zext_ln1010_2_fu_797_p1;
wire   [18:0] sub_ln1010_fu_773_p2;
wire   [18:0] zext_ln1011_2_fu_807_p1;
wire   [3:0] zext_ln1008_fu_820_p1;
wire   [3:0] empty_182_fu_823_p2;
wire   [12:0] add_ln1010_3_fu_801_p2;
wire   [12:0] zext_ln1010_3_fu_828_p1;
wire   [12:0] add_ln1010_1_fu_832_p2;
wire   [11:0] trunc_ln1010_fu_838_p1;
wire   [13:0] tmp_180_fu_850_p3;
wire   [14:0] p_shl_fu_842_p3;
wire   [14:0] zext_ln1009_fu_858_p1;
wire   [3:0] zext_ln1009_1_fu_868_p1;
wire   [3:0] add_ln1010_fu_871_p2;
wire   [14:0] add_ln1009_1_fu_862_p2;
wire   [14:0] zext_ln1010_4_fu_877_p1;
wire   [19:0] tmp_179_fu_897_p3;
wire   [19:0] zext_ln1011_3_fu_904_p1;
wire   [19:0] sub_ln1008_fu_907_p2;
wire   [19:0] zext_ln1011_4_fu_913_p1;
wire   [19:0] add_ln1011_2_fu_916_p2;
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
#0 v510_fu_108 = 8'd0;
#0 v507_fu_112 = 2'd0;
#0 v506_fu_116 = 2'd0;
#0 indvar_flatten2380_fu_120 = 4'd0;
#0 v505_fu_124 = 9'd0;
#0 indvar_flatten2395_fu_128 = 13'd0;
#0 v504_fu_132 = 4'd0;
#0 indvar_flatten2421_fu_136 = 16'd0;
#0 v503_fu_140 = 4'd0;
#0 indvar_flatten2457_fu_144 = 19'd0;
#0 v502_fu_148 = 9'd0;
#0 indvar_flatten2503_fu_152 = 26'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U253(.clk(ap_clk),.reset(ap_rst),.din0(v15_Dout_A),.din1(grp_fu_953_p1),.din2(grp_fu_953_p2),.ce(1'b1),.dout(grp_fu_953_p3));
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
            indvar_flatten2380_fu_120 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1003_reg_1047_pp0_iter1_reg == 1'd0))) begin
            indvar_flatten2380_fu_120 <= select_ln1008_1_fu_625_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2395_fu_128 <= 13'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1003_reg_1047 == 1'd0))) begin
            indvar_flatten2395_fu_128 <= select_ln1007_1_fu_366_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2421_fu_136 <= 16'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1003_reg_1047 == 1'd0))) begin
            indvar_flatten2421_fu_136 <= select_ln1005_1_fu_380_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2457_fu_144 <= 19'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1003_reg_1047 == 1'd0))) begin
            indvar_flatten2457_fu_144 <= select_ln1004_1_fu_394_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1003_fu_262_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten2503_fu_152 <= add_ln1003_1_fu_268_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2503_fu_152 <= 26'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v502_fu_148 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v502_fu_148 <= select_ln1003_1_fu_670_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v503_fu_140 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1003_reg_1047_pp0_iter1_reg == 1'd0))) begin
            v503_fu_140 <= select_ln1004_fu_477_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v504_fu_132 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v504_fu_132 <= select_ln1005_fu_694_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v505_fu_124 <= 9'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1003_reg_1047_pp0_iter1_reg == 1'd0))) begin
            v505_fu_124 <= select_ln1007_fu_549_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v506_fu_116 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1003_reg_1047_pp0_iter1_reg == 1'd0))) begin
            v506_fu_116 <= select_ln1008_fu_587_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v507_fu_112 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1003_reg_1047_pp0_iter1_reg == 1'd0))) begin
            v507_fu_112 <= add_ln1009_fu_595_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v510_fu_108 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v510_fu_108 <= grp_fu_953_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln1006_1_reg_1137 <= add_ln1006_1_fu_742_p2;
        add_ln1006_1_reg_1137_pp0_iter4_reg <= add_ln1006_1_reg_1137;
        add_ln1006_1_reg_1137_pp0_iter5_reg <= add_ln1006_1_reg_1137_pp0_iter4_reg;
        add_ln1006_1_reg_1137_pp0_iter6_reg <= add_ln1006_1_reg_1137_pp0_iter5_reg;
        add_ln1006_1_reg_1137_pp0_iter7_reg <= add_ln1006_1_reg_1137_pp0_iter6_reg;
        add_ln1010_2_reg_1152 <= add_ln1010_2_fu_881_p2;
        add_ln1011_1_reg_1142 <= add_ln1011_1_fu_810_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_176_reg_1094_pp0_iter2_reg <= empty_176_reg_1094;
        empty_176_reg_1094_pp0_iter3_reg <= empty_176_reg_1094_pp0_iter2_reg;
        empty_176_reg_1094_pp0_iter4_reg <= empty_176_reg_1094_pp0_iter3_reg;
        empty_176_reg_1094_pp0_iter5_reg <= empty_176_reg_1094_pp0_iter4_reg;
        empty_176_reg_1094_pp0_iter6_reg <= empty_176_reg_1094_pp0_iter5_reg;
        empty_reg_1069_pp0_iter2_reg <= empty_reg_1069;
        exitcond_flatten2397_mid22456_reg_1081_pp0_iter2_reg <= exitcond_flatten2397_mid22456_reg_1081;
        icmp_ln1004_reg_1051_pp0_iter2_reg <= icmp_ln1004_reg_1051;
        icmp_ln1007_1_reg_1133 <= icmp_ln1007_1_fu_613_p2;
        icmp_ln1007_1_reg_1133_pp0_iter3_reg <= icmp_ln1007_1_reg_1133;
        icmp_ln1007_1_reg_1133_pp0_iter4_reg <= icmp_ln1007_1_reg_1133_pp0_iter3_reg;
        icmp_ln1007_1_reg_1133_pp0_iter5_reg <= icmp_ln1007_1_reg_1133_pp0_iter4_reg;
        icmp_ln1007_1_reg_1133_pp0_iter6_reg <= icmp_ln1007_1_reg_1133_pp0_iter5_reg;
        icmp_ln1007_1_reg_1133_pp0_iter7_reg <= icmp_ln1007_1_reg_1133_pp0_iter6_reg;
        icmp_ln1008_1_reg_1129 <= icmp_ln1008_1_fu_607_p2;
        icmp_ln1008_1_reg_1129_pp0_iter3_reg <= icmp_ln1008_1_reg_1129;
        icmp_ln1008_1_reg_1129_pp0_iter4_reg <= icmp_ln1008_1_reg_1129_pp0_iter3_reg;
        icmp_ln1008_1_reg_1129_pp0_iter5_reg <= icmp_ln1008_1_reg_1129_pp0_iter4_reg;
        icmp_ln1008_1_reg_1129_pp0_iter6_reg <= icmp_ln1008_1_reg_1129_pp0_iter5_reg;
        icmp_ln1008_1_reg_1129_pp0_iter7_reg <= icmp_ln1008_1_reg_1129_pp0_iter6_reg;
        icmp_ln1009_1_reg_1125 <= icmp_ln1009_1_fu_601_p2;
        icmp_ln1009_1_reg_1125_pp0_iter3_reg <= icmp_ln1009_1_reg_1125;
        icmp_ln1009_1_reg_1125_pp0_iter4_reg <= icmp_ln1009_1_reg_1125_pp0_iter3_reg;
        icmp_ln1009_1_reg_1125_pp0_iter5_reg <= icmp_ln1009_1_reg_1125_pp0_iter4_reg;
        icmp_ln1009_1_reg_1125_pp0_iter6_reg <= icmp_ln1009_1_reg_1125_pp0_iter5_reg;
        icmp_ln1009_1_reg_1125_pp0_iter7_reg <= icmp_ln1009_1_reg_1125_pp0_iter6_reg;
        select_ln1004_reg_1100 <= select_ln1004_fu_477_p3;
        select_ln1007_reg_1106 <= select_ln1007_fu_549_p3;
        select_ln1008_reg_1119 <= select_ln1008_fu_587_p3;
        trunc_ln1011_1_reg_1147 <= trunc_ln1011_1_fu_816_p1;
        v507_mid2_reg_1113 <= v507_mid2_fu_579_p3;
        v507_mid2_reg_1113_pp0_iter3_reg <= v507_mid2_reg_1113;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln1003_3_reg_1064 <= and_ln1003_3_fu_312_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_175_reg_1089 <= empty_175_fu_348_p2;
        empty_176_reg_1094 <= empty_176_fu_354_p2;
        empty_reg_1069 <= empty_fu_318_p2;
        exitcond_flatten2397_mid22456_reg_1081 <= exitcond_flatten2397_mid22456_fu_342_p2;
        icmp_ln1003_reg_1047 <= icmp_ln1003_fu_262_p2;
        icmp_ln1003_reg_1047_pp0_iter1_reg <= icmp_ln1003_reg_1047;
        icmp_ln1004_reg_1051 <= icmp_ln1004_fu_288_p2;
        not_exitcond_flatten2423_mid22502139_reg_1075 <= not_exitcond_flatten2423_mid22502139_fu_330_p2;
        xor_ln1003_reg_1058 <= xor_ln1003_fu_294_p2;
    end
end
always @ (*) begin
    if (((icmp_ln1003_fu_262_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1003_reg_1047_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten2503_load = 26'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten2503_load = indvar_flatten2503_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        ap_sig_allocacmp_v510_load = grp_fu_953_p3;
    end else begin
        ap_sig_allocacmp_v510_load = v510_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15_EN_A_local = 1'b1;
    end else begin
        v15_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v43_ce1_local = 1'b1;
    end else begin
        v43_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln1007_1_reg_1133_pp0_iter7_reg == 1'd1) & (icmp_ln1008_1_reg_1129_pp0_iter7_reg == 1'd1) & (icmp_ln1009_1_reg_1125_pp0_iter7_reg == 1'd1))) begin
        v43_we1_local = 1'b1;
    end else begin
        v43_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v44_ce0_local = 1'b1;
    end else begin
        v44_ce0_local = 1'b0;
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
assign add_ln1003_1_fu_268_p2 = (ap_sig_allocacmp_indvar_flatten2503_load + 26'd1);
assign add_ln1003_fu_664_p2 = (v502_fu_148 + 9'd1);
assign add_ln1004_1_fu_388_p2 = (indvar_flatten2457_fu_144 + 19'd1);
assign add_ln1004_fu_461_p2 = (select_ln1003_fu_432_p3 + 4'd1);
assign add_ln1005_1_fu_374_p2 = (indvar_flatten2421_fu_136 + 16'd1);
assign add_ln1005_fu_688_p2 = (v504_mid22428_fu_681_p3 + 4'd1);
assign add_ln1006_1_fu_742_p2 = (tmp_fu_730_p3 + zext_ln1006_2_fu_738_p1);
assign add_ln1006_fu_724_p2 = (tmp_80_fu_713_p3 + zext_ln1006_1_fu_721_p1);
assign add_ln1007_1_fu_360_p2 = (indvar_flatten2395_fu_128 + 13'd1);
assign add_ln1007_fu_502_p2 = (v505_mid22402_fu_484_p3 + 9'd1);
assign add_ln1008_1_fu_619_p2 = (indvar_flatten2380_fu_120 + 4'd1);
assign add_ln1008_fu_557_p2 = (v506_mid22387_fu_518_p3 + 2'd1);
assign add_ln1009_1_fu_862_p2 = (p_shl_fu_842_p3 + zext_ln1009_fu_858_p1);
assign add_ln1009_fu_595_p2 = (v507_mid2_fu_579_p3 + 2'd1);
assign add_ln1010_1_fu_832_p2 = (add_ln1010_3_fu_801_p2 + zext_ln1010_3_fu_828_p1);
assign add_ln1010_2_fu_881_p2 = (add_ln1009_1_fu_862_p2 + zext_ln1010_4_fu_877_p1);
assign add_ln1010_3_fu_801_p2 = (zext_ln1010_fu_786_p1 + zext_ln1010_2_fu_797_p1);
assign add_ln1010_fu_871_p2 = (zext_ln1009_1_fu_868_p1 + select_ln1005_fu_694_p3);
assign add_ln1011_1_fu_810_p2 = (sub_ln1010_fu_773_p2 + zext_ln1011_2_fu_807_p1);
assign add_ln1011_2_fu_916_p2 = (sub_ln1008_fu_907_p2 + zext_ln1011_4_fu_913_p1);
assign add_ln1011_fu_751_p2 = (zext_ln1006_fu_709_p1 + zext_ln1011_fu_748_p1);
assign and_ln1003_1_fu_456_p2 = (xor_ln1003_reg_1058 & icmp_ln1008_fu_450_p2);
assign and_ln1003_2_fu_336_p2 = (xor_ln1003_fu_294_p2 & icmp_ln1007_fu_300_p2);
assign and_ln1003_3_fu_312_p2 = (xor_ln1003_fu_294_p2 & icmp_ln1005_fu_306_p2);
assign and_ln1003_fu_445_p2 = (xor_ln1003_reg_1058 & icmp_ln1009_fu_439_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_175_fu_348_p2 = (exitcond_flatten2397_mid22456_fu_342_p2 | and_ln1003_3_fu_312_p2);
assign empty_176_fu_354_p2 = (icmp_ln1004_fu_288_p2 | empty_175_fu_348_p2);
assign empty_177_fu_508_p2 = (exitcond_flatten2397_mid22456_reg_1081 | exitcond_flatten2382_mid22420_fu_496_p2);
assign empty_178_fu_513_p2 = (empty_reg_1069 | empty_177_fu_508_p2);
assign empty_179_fu_563_p2 = (exitcond_flatten2382_mid22420_fu_496_p2 | empty_175_reg_1089);
assign empty_180_fu_568_p2 = (icmp_ln1009_mid22394_fu_543_p2 | empty_179_fu_563_p2);
assign empty_181_fu_574_p2 = (icmp_ln1004_reg_1051 | empty_180_fu_568_p2);
assign empty_182_fu_823_p2 = (zext_ln1008_fu_820_p1 + select_ln1004_reg_1100);
assign empty_fu_318_p2 = (icmp_ln1004_fu_288_p2 | and_ln1003_3_fu_312_p2);
assign exitcond_flatten2382_mid22420_fu_496_p2 = (not_exitcond_flatten2397_mid22456_fu_491_p2 & exitcond_flatten2382_mid22452_fu_472_p2);
assign exitcond_flatten2382_mid22452_fu_472_p2 = (not_exitcond_flatten2423_mid22502139_reg_1075 & and_ln1003_1_fu_456_p2);
assign exitcond_flatten2382_mid22452_not_fu_526_p2 = (exitcond_flatten2382_mid22452_fu_472_p2 ^ 1'd1);
assign exitcond_flatten2397_mid22456_fu_342_p2 = (not_exitcond_flatten2423_mid22502139_fu_330_p2 & and_ln1003_2_fu_336_p2);
assign exitcond_flatten2423_not140_fu_324_p2 = (icmp_ln1005_fu_306_p2 ^ 1'd1);
assign grp_fu_953_p1 = grp_fu_953_p10;
assign grp_fu_953_p10 = v44_q0;
assign grp_fu_953_p2 = ((empty_176_reg_1094_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v510_load);
assign icmp_ln1003_fu_262_p2 = ((ap_sig_allocacmp_indvar_flatten2503_load == 26'd37748736) ? 1'b1 : 1'b0);
assign icmp_ln1004_fu_288_p2 = ((indvar_flatten2457_fu_144 == 19'd147456) ? 1'b1 : 1'b0);
assign icmp_ln1005_fu_306_p2 = ((indvar_flatten2421_fu_136 == 16'd18432) ? 1'b1 : 1'b0);
assign icmp_ln1007_1_fu_613_p2 = ((select_ln1007_fu_549_p3 == 9'd255) ? 1'b1 : 1'b0);
assign icmp_ln1007_fu_300_p2 = ((indvar_flatten2395_fu_128 == 13'd2304) ? 1'b1 : 1'b0);
assign icmp_ln1008_1_fu_607_p2 = ((select_ln1008_fu_587_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln1008_fu_450_p2 = ((indvar_flatten2380_fu_120 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln1009_1_fu_601_p2 = ((add_ln1009_fu_595_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln1009_fu_439_p2 = ((v507_fu_112 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln1009_mid22394_fu_543_p2 = (not_exitcond_flatten2382_mid22420_fu_532_p2 & icmp_ln1009_mid22416_fu_537_p2);
assign icmp_ln1009_mid22416_fu_537_p2 = (not_exitcond_flatten2397_mid22456_fu_491_p2 & icmp_ln1009_mid22448_fu_467_p2);
assign icmp_ln1009_mid22448_fu_467_p2 = (not_exitcond_flatten2423_mid22502139_reg_1075 & and_ln1003_fu_445_p2);
assign not_exitcond_flatten2382_mid22420_fu_532_p2 = (exitcond_flatten2397_mid22456_reg_1081 | exitcond_flatten2382_mid22452_not_fu_526_p2);
assign not_exitcond_flatten2397_mid22456_fu_491_p2 = (exitcond_flatten2397_mid22456_reg_1081 ^ 1'd1);
assign not_exitcond_flatten2423_mid22502139_fu_330_p2 = (icmp_ln1004_fu_288_p2 | exitcond_flatten2423_not140_fu_324_p2);
assign p_shl_fu_842_p3 = {{trunc_ln1010_fu_838_p1}, {3'd0}};
assign select_ln1003_1_fu_670_p3 = ((icmp_ln1004_reg_1051_pp0_iter2_reg[0:0] == 1'b1) ? add_ln1003_fu_664_p2 : v502_fu_148);
assign select_ln1003_fu_432_p3 = ((icmp_ln1004_reg_1051[0:0] == 1'b1) ? 4'd0 : v503_fu_140);
assign select_ln1004_1_fu_394_p3 = ((icmp_ln1004_fu_288_p2[0:0] == 1'b1) ? 19'd1 : add_ln1004_1_fu_388_p2);
assign select_ln1004_fu_477_p3 = ((and_ln1003_3_reg_1064[0:0] == 1'b1) ? add_ln1004_fu_461_p2 : select_ln1003_fu_432_p3);
assign select_ln1005_1_fu_380_p3 = ((empty_fu_318_p2[0:0] == 1'b1) ? 16'd1 : add_ln1005_1_fu_374_p2);
assign select_ln1005_fu_694_p3 = ((exitcond_flatten2397_mid22456_reg_1081_pp0_iter2_reg[0:0] == 1'b1) ? add_ln1005_fu_688_p2 : v504_mid22428_fu_681_p3);
assign select_ln1007_1_fu_366_p3 = ((empty_176_fu_354_p2[0:0] == 1'b1) ? 13'd1 : add_ln1007_1_fu_360_p2);
assign select_ln1007_fu_549_p3 = ((exitcond_flatten2382_mid22420_fu_496_p2[0:0] == 1'b1) ? add_ln1007_fu_502_p2 : v505_mid22402_fu_484_p3);
assign select_ln1008_1_fu_625_p3 = ((empty_178_fu_513_p2[0:0] == 1'b1) ? 4'd1 : add_ln1008_1_fu_619_p2);
assign select_ln1008_fu_587_p3 = ((icmp_ln1009_mid22394_fu_543_p2[0:0] == 1'b1) ? add_ln1008_fu_557_p2 : v506_mid22387_fu_518_p3);
assign sub_ln1008_fu_907_p2 = (tmp_179_fu_897_p3 - zext_ln1011_3_fu_904_p1);
assign sub_ln1010_fu_773_p2 = (tmp_176_fu_761_p3 - zext_ln1011_1_fu_769_p1);
assign tmp_176_fu_761_p3 = {{trunc_ln1011_fu_757_p1}, {2'd0}};
assign tmp_177_fu_779_p3 = {{select_ln1007_reg_1106}, {3'd0}};
assign tmp_178_fu_790_p3 = {{select_ln1007_reg_1106}, {1'd0}};
assign tmp_179_fu_897_p3 = {{trunc_ln1011_1_reg_1147}, {2'd0}};
assign tmp_180_fu_850_p3 = {{add_ln1010_1_fu_832_p2}, {1'd0}};
assign tmp_80_fu_713_p3 = {{trunc_ln1004_fu_677_p1}, {3'd0}};
assign tmp_fu_730_p3 = {{add_ln1006_fu_724_p2}, {3'd0}};
assign tmp_s_fu_701_p3 = {{select_ln1003_1_fu_670_p3}, {8'd0}};
assign trunc_ln1004_fu_677_p1 = select_ln1003_1_fu_670_p3[7:0];
assign trunc_ln1010_fu_838_p1 = add_ln1010_1_fu_832_p2[11:0];
assign trunc_ln1011_1_fu_816_p1 = add_ln1011_1_fu_810_p2[17:0];
assign trunc_ln1011_fu_757_p1 = add_ln1011_fu_751_p2[16:0];
assign v15_Addr_A = v15_Addr_A_orig << 32'd0;
assign v15_Addr_A_orig = zext_ln1011_5_fu_922_p1;
assign v15_Din_A = 8'd0;
assign v15_EN_A = v15_EN_A_local;
assign v15_WEN_A = 1'd0;
assign v43_address1 = zext_ln1006_3_fu_945_p1;
assign v43_ce1 = v43_ce1_local;
assign v43_d1 = grp_fu_953_p3;
assign v43_we1 = v43_we1_local;
assign v44_address0 = zext_ln1010_5_fu_927_p1;
assign v44_ce0 = v44_ce0_local;
assign v504_mid22428_fu_681_p3 = ((empty_reg_1069_pp0_iter2_reg[0:0] == 1'b1) ? 4'd0 : v504_fu_132);
assign v505_mid22402_fu_484_p3 = ((empty_176_reg_1094[0:0] == 1'b1) ? 9'd0 : v505_fu_124);
assign v506_mid22387_fu_518_p3 = ((empty_178_fu_513_p2[0:0] == 1'b1) ? 2'd0 : v506_fu_116);
assign v507_mid2_fu_579_p3 = ((empty_181_fu_574_p2[0:0] == 1'b1) ? 2'd0 : v507_fu_112);
assign xor_ln1003_fu_294_p2 = (icmp_ln1004_fu_288_p2 ^ 1'd1);
assign zext_ln1006_1_fu_721_p1 = select_ln1004_reg_1100;
assign zext_ln1006_2_fu_738_p1 = select_ln1005_fu_694_p3;
assign zext_ln1006_3_fu_945_p1 = add_ln1006_1_reg_1137_pp0_iter7_reg;
assign zext_ln1006_fu_709_p1 = tmp_s_fu_701_p3;
assign zext_ln1008_fu_820_p1 = select_ln1008_reg_1119;
assign zext_ln1009_1_fu_868_p1 = v507_mid2_reg_1113;
assign zext_ln1009_fu_858_p1 = tmp_180_fu_850_p3;
assign zext_ln1010_2_fu_797_p1 = tmp_178_fu_790_p3;
assign zext_ln1010_3_fu_828_p1 = empty_182_fu_823_p2;
assign zext_ln1010_4_fu_877_p1 = add_ln1010_fu_871_p2;
assign zext_ln1010_5_fu_927_p1 = add_ln1010_2_reg_1152;
assign zext_ln1010_fu_786_p1 = tmp_177_fu_779_p3;
assign zext_ln1011_1_fu_769_p1 = add_ln1011_fu_751_p2;
assign zext_ln1011_2_fu_807_p1 = select_ln1008_reg_1119;
assign zext_ln1011_3_fu_904_p1 = add_ln1011_1_reg_1142;
assign zext_ln1011_4_fu_913_p1 = v507_mid2_reg_1113_pp0_iter3_reg;
assign zext_ln1011_5_fu_922_p1 = add_ln1011_2_fu_916_p2;
assign zext_ln1011_fu_748_p1 = select_ln1007_reg_1106;
endmodule 
