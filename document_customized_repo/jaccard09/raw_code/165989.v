module main_graph_main_graph_Pipeline_VITIS_LOOP_275_22_VITIS_LOOP_276_23_VITIS_LOOP_277_24_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v53_address1,v53_ce1,v53_we1,v53_d1,v2_Addr_A,v2_EN_A,v2_WEN_A,v2_Din_A,v2_Dout_A,v54_address0,v54_ce0,v54_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v53_address1;
output   v53_ce1;
output   v53_we1;
output  [7:0] v53_d1;
output  [31:0] v2_Addr_A;
output   v2_EN_A;
output  [0:0] v2_WEN_A;
output  [7:0] v2_Din_A;
input  [7:0] v2_Dout_A;
output  [16:0] v54_address0;
output   v54_ce0;
input  [6:0] v54_q0;
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
wire   [0:0] icmp_ln275_fu_266_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln275_reg_1069;
reg   [0:0] icmp_ln275_reg_1069_pp0_iter1_reg;
wire   [0:0] icmp_ln276_fu_292_p2;
reg   [0:0] icmp_ln276_reg_1073;
reg   [0:0] icmp_ln276_reg_1073_pp0_iter2_reg;
wire   [0:0] xor_ln275_fu_298_p2;
reg   [0:0] xor_ln275_reg_1080;
wire   [0:0] and_ln275_3_fu_316_p2;
reg   [0:0] and_ln275_3_reg_1086;
reg   [0:0] and_ln275_3_reg_1086_pp0_iter2_reg;
wire   [0:0] empty_fu_322_p2;
reg   [0:0] empty_reg_1091;
reg   [0:0] empty_reg_1091_pp0_iter2_reg;
wire   [0:0] not_exitcond_flatten146_mid22256_fu_334_p2;
reg   [0:0] not_exitcond_flatten146_mid22256_reg_1097;
wire   [0:0] exitcond_flatten120_mid2179_fu_346_p2;
reg   [0:0] exitcond_flatten120_mid2179_reg_1103;
reg   [0:0] exitcond_flatten120_mid2179_reg_1103_pp0_iter2_reg;
wire   [0:0] empty_116_fu_352_p2;
reg   [0:0] empty_116_reg_1111;
wire   [0:0] empty_117_fu_358_p2;
reg   [0:0] empty_117_reg_1116;
reg   [0:0] empty_117_reg_1116_pp0_iter2_reg;
reg   [0:0] empty_117_reg_1116_pp0_iter3_reg;
reg   [0:0] empty_117_reg_1116_pp0_iter4_reg;
reg   [0:0] empty_117_reg_1116_pp0_iter5_reg;
reg   [0:0] empty_117_reg_1116_pp0_iter6_reg;
wire   [6:0] select_ln279_fu_530_p3;
reg   [6:0] select_ln279_reg_1122;
wire   [1:0] v98_mid2_fu_560_p3;
reg   [1:0] v98_mid2_reg_1129;
reg   [1:0] v98_mid2_reg_1129_pp0_iter3_reg;
wire   [1:0] select_ln280_fu_568_p3;
reg   [1:0] select_ln280_reg_1135;
wire   [0:0] icmp_ln281_1_fu_582_p2;
reg   [0:0] icmp_ln281_1_reg_1141;
reg   [0:0] icmp_ln281_1_reg_1141_pp0_iter3_reg;
reg   [0:0] icmp_ln281_1_reg_1141_pp0_iter4_reg;
reg   [0:0] icmp_ln281_1_reg_1141_pp0_iter5_reg;
reg   [0:0] icmp_ln281_1_reg_1141_pp0_iter6_reg;
reg   [0:0] icmp_ln281_1_reg_1141_pp0_iter7_reg;
wire   [0:0] icmp_ln280_1_fu_588_p2;
reg   [0:0] icmp_ln280_1_reg_1145;
reg   [0:0] icmp_ln280_1_reg_1145_pp0_iter3_reg;
reg   [0:0] icmp_ln280_1_reg_1145_pp0_iter4_reg;
reg   [0:0] icmp_ln280_1_reg_1145_pp0_iter5_reg;
reg   [0:0] icmp_ln280_1_reg_1145_pp0_iter6_reg;
reg   [0:0] icmp_ln280_1_reg_1145_pp0_iter7_reg;
wire   [0:0] icmp_ln279_1_fu_594_p2;
reg   [0:0] icmp_ln279_1_reg_1149;
reg   [0:0] icmp_ln279_1_reg_1149_pp0_iter3_reg;
reg   [0:0] icmp_ln279_1_reg_1149_pp0_iter4_reg;
reg   [0:0] icmp_ln279_1_reg_1149_pp0_iter5_reg;
reg   [0:0] icmp_ln279_1_reg_1149_pp0_iter6_reg;
reg   [0:0] icmp_ln279_1_reg_1149_pp0_iter7_reg;
wire   [4:0] select_ln277_fu_693_p3;
reg   [4:0] select_ln277_reg_1153;
wire   [9:0] add_ln278_fu_724_p2;
reg   [9:0] add_ln278_reg_1159;
wire   [14:0] add_ln283_1_fu_802_p2;
reg   [14:0] add_ln283_1_reg_1164;
wire   [13:0] trunc_ln283_1_fu_808_p1;
reg   [13:0] trunc_ln283_1_reg_1169;
wire   [12:0] add_ln282_1_fu_825_p2;
reg   [12:0] add_ln282_1_reg_1174;
wire   [11:0] trunc_ln282_fu_831_p1;
reg   [11:0] trunc_ln282_reg_1179;
wire   [13:0] add_ln278_1_fu_860_p2;
reg   [13:0] add_ln278_1_reg_1184;
reg   [13:0] add_ln278_1_reg_1184_pp0_iter5_reg;
reg   [13:0] add_ln278_1_reg_1184_pp0_iter6_reg;
reg   [13:0] add_ln278_1_reg_1184_pp0_iter7_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln283_5_fu_924_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln282_5_fu_948_p1;
wire   [63:0] zext_ln278_3_fu_967_p1;
reg   [7:0] v101_fu_112;
wire   [7:0] grp_fu_975_p3;
reg   [7:0] ap_sig_allocacmp_v101_load;
wire    ap_loop_init;
reg   [1:0] v98_fu_116;
wire   [1:0] add_ln281_fu_576_p2;
reg   [1:0] v97_fu_120;
reg   [3:0] indvar_flatten103_fu_124;
wire   [3:0] select_ln280_1_fu_606_p3;
reg   [6:0] v96_fu_128;
reg   [10:0] indvar_flatten118_fu_132;
wire   [10:0] select_ln279_1_fu_370_p3;
reg   [4:0] v95_fu_136;
reg   [14:0] indvar_flatten144_fu_140;
wire   [14:0] select_ln277_1_fu_384_p3;
reg   [4:0] v94_fu_144;
wire   [4:0] select_ln276_fu_680_p3;
reg   [18:0] indvar_flatten180_fu_148;
wire   [18:0] select_ln276_1_fu_398_p3;
reg   [6:0] v93_fu_152;
wire   [6:0] select_ln275_1_fu_656_p3;
reg   [23:0] indvar_flatten226_fu_156;
wire   [23:0] add_ln275_1_fu_272_p2;
reg   [23:0] ap_sig_allocacmp_indvar_flatten226_load;
reg    v54_ce0_local;
reg    v2_EN_A_local;
wire   [31:0] v2_Addr_A_orig;
reg    v53_we1_local;
reg    v53_ce1_local;
wire   [0:0] icmp_ln277_fu_310_p2;
wire   [0:0] exitcond_flatten146_not7_fu_328_p2;
wire   [0:0] icmp_ln279_fu_304_p2;
wire   [0:0] and_ln275_2_fu_340_p2;
wire   [10:0] add_ln279_1_fu_364_p2;
wire   [14:0] add_ln277_1_fu_378_p2;
wire   [18:0] add_ln276_1_fu_392_p2;
wire   [0:0] icmp_ln281_fu_433_p2;
wire   [0:0] icmp_ln280_fu_444_p2;
wire   [0:0] and_ln275_fu_439_p2;
wire   [0:0] and_ln275_1_fu_450_p2;
wire   [0:0] exitcond_flatten105_mid2175_fu_460_p2;
wire   [0:0] not_exitcond_flatten120_mid2179_fu_472_p2;
wire   [6:0] v96_mid2125_fu_465_p3;
wire   [0:0] exitcond_flatten105_mid2143_fu_477_p2;
wire   [0:0] empty_118_fu_489_p2;
wire   [0:0] empty_119_fu_494_p2;
wire   [0:0] exitcond_flatten105_mid2175_not_fu_507_p2;
wire   [0:0] icmp_ln281_mid2171_fu_455_p2;
wire   [0:0] icmp_ln281_mid2139_fu_518_p2;
wire   [0:0] not_exitcond_flatten105_mid2143_fu_513_p2;
wire   [6:0] add_ln279_fu_483_p2;
wire   [1:0] v97_mid2110_fu_499_p3;
wire   [0:0] icmp_ln281_mid2117_fu_524_p2;
wire   [0:0] empty_120_fu_544_p2;
wire   [0:0] empty_121_fu_549_p2;
wire   [0:0] empty_122_fu_555_p2;
wire   [1:0] add_ln280_fu_538_p2;
wire   [3:0] add_ln280_1_fu_600_p2;
wire   [6:0] add_ln275_fu_643_p2;
wire   [4:0] select_ln275_fu_649_p3;
wire   [4:0] add_ln276_fu_667_p2;
wire   [4:0] v95_mid2151_fu_673_p3;
wire   [4:0] add_ln277_fu_687_p2;
wire   [12:0] tmp_10_fu_700_p3;
wire   [5:0] trunc_ln276_fu_663_p1;
wire   [9:0] tmp_11_fu_712_p3;
wire   [9:0] zext_ln278_1_fu_720_p1;
wire   [4:0] empty_123_fu_730_p2;
wire   [13:0] zext_ln278_fu_708_p1;
wire   [13:0] zext_ln283_fu_740_p1;
wire   [13:0] add_ln283_fu_743_p2;
wire   [12:0] trunc_ln283_fu_749_p1;
wire   [14:0] tmp_97_fu_753_p3;
wire   [14:0] zext_ln283_1_fu_761_p1;
wire   [11:0] tmp_98_fu_771_p3;
wire   [7:0] tmp_99_fu_782_p3;
wire   [12:0] zext_ln282_fu_778_p1;
wire   [12:0] zext_ln282_2_fu_789_p1;
wire   [14:0] sub_ln282_fu_765_p2;
wire   [14:0] zext_ln283_2_fu_799_p1;
wire   [5:0] zext_ln280_fu_812_p1;
wire   [5:0] zext_ln277_fu_736_p1;
wire   [5:0] empty_125_fu_815_p2;
wire   [12:0] add_ln282_3_fu_793_p2;
wire   [12:0] zext_ln282_3_fu_821_p1;
wire   [13:0] tmp_fu_850_p3;
wire   [13:0] zext_ln278_2_fu_857_p1;
wire   [4:0] empty_124_fu_866_p2;
wire   [15:0] tmp_100_fu_875_p3;
wire   [15:0] zext_ln283_3_fu_882_p1;
wire   [13:0] tmp_101_fu_898_p3;
wire   [16:0] p_shl_fu_891_p3;
wire   [16:0] zext_ln281_fu_905_p1;
wire   [15:0] sub_ln280_fu_885_p2;
wire   [15:0] zext_ln283_4_fu_915_p1;
wire   [15:0] add_ln283_2_fu_918_p2;
wire   [5:0] zext_ln281_1_fu_929_p1;
wire   [5:0] zext_ln279_fu_871_p1;
wire   [5:0] add_ln282_fu_932_p2;
wire   [16:0] add_ln281_1_fu_909_p2;
wire   [16:0] zext_ln282_4_fu_938_p1;
wire   [16:0] add_ln282_2_fu_942_p2;
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
#0 v101_fu_112 = 8'd0;
#0 v98_fu_116 = 2'd0;
#0 v97_fu_120 = 2'd0;
#0 indvar_flatten103_fu_124 = 4'd0;
#0 v96_fu_128 = 7'd0;
#0 indvar_flatten118_fu_132 = 11'd0;
#0 v95_fu_136 = 5'd0;
#0 indvar_flatten144_fu_140 = 15'd0;
#0 v94_fu_144 = 5'd0;
#0 indvar_flatten180_fu_148 = 19'd0;
#0 v93_fu_152 = 7'd0;
#0 indvar_flatten226_fu_156 = 24'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(v2_Dout_A),.din1(grp_fu_975_p1),.din2(grp_fu_975_p2),.ce(1'b1),.dout(grp_fu_975_p3));
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
            indvar_flatten103_fu_124 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln275_reg_1069_pp0_iter1_reg == 1'd0))) begin
            indvar_flatten103_fu_124 <= select_ln280_1_fu_606_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten118_fu_132 <= 11'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln275_reg_1069 == 1'd0))) begin
            indvar_flatten118_fu_132 <= select_ln279_1_fu_370_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten144_fu_140 <= 15'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln275_reg_1069 == 1'd0))) begin
            indvar_flatten144_fu_140 <= select_ln277_1_fu_384_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten180_fu_148 <= 19'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln275_reg_1069 == 1'd0))) begin
            indvar_flatten180_fu_148 <= select_ln276_1_fu_398_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln275_fu_266_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten226_fu_156 <= add_ln275_1_fu_272_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten226_fu_156 <= 24'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v101_fu_112 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v101_fu_112 <= grp_fu_975_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v93_fu_152 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v93_fu_152 <= select_ln275_1_fu_656_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v94_fu_144 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v94_fu_144 <= select_ln276_fu_680_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v95_fu_136 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v95_fu_136 <= select_ln277_fu_693_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v96_fu_128 <= 7'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln275_reg_1069_pp0_iter1_reg == 1'd0))) begin
            v96_fu_128 <= select_ln279_fu_530_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v97_fu_120 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln275_reg_1069_pp0_iter1_reg == 1'd0))) begin
            v97_fu_120 <= select_ln280_fu_568_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v98_fu_116 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln275_reg_1069_pp0_iter1_reg == 1'd0))) begin
            v98_fu_116 <= add_ln281_fu_576_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln278_1_reg_1184 <= add_ln278_1_fu_860_p2;
        add_ln278_1_reg_1184_pp0_iter5_reg <= add_ln278_1_reg_1184;
        add_ln278_1_reg_1184_pp0_iter6_reg <= add_ln278_1_reg_1184_pp0_iter5_reg;
        add_ln278_1_reg_1184_pp0_iter7_reg <= add_ln278_1_reg_1184_pp0_iter6_reg;
        add_ln278_reg_1159 <= add_ln278_fu_724_p2;
        add_ln282_1_reg_1174 <= add_ln282_1_fu_825_p2;
        add_ln283_1_reg_1164 <= add_ln283_1_fu_802_p2;
        and_ln275_3_reg_1086_pp0_iter2_reg <= and_ln275_3_reg_1086;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_117_reg_1116_pp0_iter2_reg <= empty_117_reg_1116;
        empty_117_reg_1116_pp0_iter3_reg <= empty_117_reg_1116_pp0_iter2_reg;
        empty_117_reg_1116_pp0_iter4_reg <= empty_117_reg_1116_pp0_iter3_reg;
        empty_117_reg_1116_pp0_iter5_reg <= empty_117_reg_1116_pp0_iter4_reg;
        empty_117_reg_1116_pp0_iter6_reg <= empty_117_reg_1116_pp0_iter5_reg;
        empty_reg_1091_pp0_iter2_reg <= empty_reg_1091;
        exitcond_flatten120_mid2179_reg_1103_pp0_iter2_reg <= exitcond_flatten120_mid2179_reg_1103;
        icmp_ln276_reg_1073_pp0_iter2_reg <= icmp_ln276_reg_1073;
        icmp_ln279_1_reg_1149 <= icmp_ln279_1_fu_594_p2;
        icmp_ln279_1_reg_1149_pp0_iter3_reg <= icmp_ln279_1_reg_1149;
        icmp_ln279_1_reg_1149_pp0_iter4_reg <= icmp_ln279_1_reg_1149_pp0_iter3_reg;
        icmp_ln279_1_reg_1149_pp0_iter5_reg <= icmp_ln279_1_reg_1149_pp0_iter4_reg;
        icmp_ln279_1_reg_1149_pp0_iter6_reg <= icmp_ln279_1_reg_1149_pp0_iter5_reg;
        icmp_ln279_1_reg_1149_pp0_iter7_reg <= icmp_ln279_1_reg_1149_pp0_iter6_reg;
        icmp_ln280_1_reg_1145 <= icmp_ln280_1_fu_588_p2;
        icmp_ln280_1_reg_1145_pp0_iter3_reg <= icmp_ln280_1_reg_1145;
        icmp_ln280_1_reg_1145_pp0_iter4_reg <= icmp_ln280_1_reg_1145_pp0_iter3_reg;
        icmp_ln280_1_reg_1145_pp0_iter5_reg <= icmp_ln280_1_reg_1145_pp0_iter4_reg;
        icmp_ln280_1_reg_1145_pp0_iter6_reg <= icmp_ln280_1_reg_1145_pp0_iter5_reg;
        icmp_ln280_1_reg_1145_pp0_iter7_reg <= icmp_ln280_1_reg_1145_pp0_iter6_reg;
        icmp_ln281_1_reg_1141 <= icmp_ln281_1_fu_582_p2;
        icmp_ln281_1_reg_1141_pp0_iter3_reg <= icmp_ln281_1_reg_1141;
        icmp_ln281_1_reg_1141_pp0_iter4_reg <= icmp_ln281_1_reg_1141_pp0_iter3_reg;
        icmp_ln281_1_reg_1141_pp0_iter5_reg <= icmp_ln281_1_reg_1141_pp0_iter4_reg;
        icmp_ln281_1_reg_1141_pp0_iter6_reg <= icmp_ln281_1_reg_1141_pp0_iter5_reg;
        icmp_ln281_1_reg_1141_pp0_iter7_reg <= icmp_ln281_1_reg_1141_pp0_iter6_reg;
        select_ln277_reg_1153 <= select_ln277_fu_693_p3;
        select_ln279_reg_1122 <= select_ln279_fu_530_p3;
        select_ln280_reg_1135 <= select_ln280_fu_568_p3;
        trunc_ln282_reg_1179 <= trunc_ln282_fu_831_p1;
        trunc_ln283_1_reg_1169 <= trunc_ln283_1_fu_808_p1;
        v98_mid2_reg_1129 <= v98_mid2_fu_560_p3;
        v98_mid2_reg_1129_pp0_iter3_reg <= v98_mid2_reg_1129;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln275_3_reg_1086 <= and_ln275_3_fu_316_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_116_reg_1111 <= empty_116_fu_352_p2;
        empty_117_reg_1116 <= empty_117_fu_358_p2;
        empty_reg_1091 <= empty_fu_322_p2;
        exitcond_flatten120_mid2179_reg_1103 <= exitcond_flatten120_mid2179_fu_346_p2;
        icmp_ln275_reg_1069 <= icmp_ln275_fu_266_p2;
        icmp_ln275_reg_1069_pp0_iter1_reg <= icmp_ln275_reg_1069;
        icmp_ln276_reg_1073 <= icmp_ln276_fu_292_p2;
        not_exitcond_flatten146_mid22256_reg_1097 <= not_exitcond_flatten146_mid22256_fu_334_p2;
        xor_ln275_reg_1080 <= xor_ln275_fu_298_p2;
    end
end
always @ (*) begin
    if (((icmp_ln275_fu_266_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln275_reg_1069_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten226_load = 24'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten226_load = indvar_flatten226_fu_156;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        ap_sig_allocacmp_v101_load = grp_fu_975_p3;
    end else begin
        ap_sig_allocacmp_v101_load = v101_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_EN_A_local = 1'b1;
    end else begin
        v2_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v53_ce1_local = 1'b1;
    end else begin
        v53_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln279_1_reg_1149_pp0_iter7_reg == 1'd1) & (icmp_ln280_1_reg_1145_pp0_iter7_reg == 1'd1) & (icmp_ln281_1_reg_1141_pp0_iter7_reg == 1'd1))) begin
        v53_we1_local = 1'b1;
    end else begin
        v53_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v54_ce0_local = 1'b1;
    end else begin
        v54_ce0_local = 1'b0;
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
assign add_ln275_1_fu_272_p2 = (ap_sig_allocacmp_indvar_flatten226_load + 24'd1);
assign add_ln275_fu_643_p2 = (v93_fu_152 + 7'd1);
assign add_ln276_1_fu_392_p2 = (indvar_flatten180_fu_148 + 19'd1);
assign add_ln276_fu_667_p2 = (select_ln275_fu_649_p3 + 5'd1);
assign add_ln277_1_fu_378_p2 = (indvar_flatten144_fu_140 + 15'd1);
assign add_ln277_fu_687_p2 = (v95_mid2151_fu_673_p3 + 5'd1);
assign add_ln278_1_fu_860_p2 = (tmp_fu_850_p3 + zext_ln278_2_fu_857_p1);
assign add_ln278_fu_724_p2 = (tmp_11_fu_712_p3 + zext_ln278_1_fu_720_p1);
assign add_ln279_1_fu_364_p2 = (indvar_flatten118_fu_132 + 11'd1);
assign add_ln279_fu_483_p2 = (v96_mid2125_fu_465_p3 + 7'd1);
assign add_ln280_1_fu_600_p2 = (indvar_flatten103_fu_124 + 4'd1);
assign add_ln280_fu_538_p2 = (v97_mid2110_fu_499_p3 + 2'd1);
assign add_ln281_1_fu_909_p2 = (p_shl_fu_891_p3 + zext_ln281_fu_905_p1);
assign add_ln281_fu_576_p2 = (v98_mid2_fu_560_p3 + 2'd1);
assign add_ln282_1_fu_825_p2 = (add_ln282_3_fu_793_p2 + zext_ln282_3_fu_821_p1);
assign add_ln282_2_fu_942_p2 = (add_ln281_1_fu_909_p2 + zext_ln282_4_fu_938_p1);
assign add_ln282_3_fu_793_p2 = (zext_ln282_fu_778_p1 + zext_ln282_2_fu_789_p1);
assign add_ln282_fu_932_p2 = (zext_ln281_1_fu_929_p1 + zext_ln279_fu_871_p1);
assign add_ln283_1_fu_802_p2 = (sub_ln282_fu_765_p2 + zext_ln283_2_fu_799_p1);
assign add_ln283_2_fu_918_p2 = (sub_ln280_fu_885_p2 + zext_ln283_4_fu_915_p1);
assign add_ln283_fu_743_p2 = (zext_ln278_fu_708_p1 + zext_ln283_fu_740_p1);
assign and_ln275_1_fu_450_p2 = (xor_ln275_reg_1080 & icmp_ln280_fu_444_p2);
assign and_ln275_2_fu_340_p2 = (xor_ln275_fu_298_p2 & icmp_ln279_fu_304_p2);
assign and_ln275_3_fu_316_p2 = (xor_ln275_fu_298_p2 & icmp_ln277_fu_310_p2);
assign and_ln275_fu_439_p2 = (xor_ln275_reg_1080 & icmp_ln281_fu_433_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_116_fu_352_p2 = (exitcond_flatten120_mid2179_fu_346_p2 | and_ln275_3_fu_316_p2);
assign empty_117_fu_358_p2 = (icmp_ln276_fu_292_p2 | empty_116_fu_352_p2);
assign empty_118_fu_489_p2 = (exitcond_flatten120_mid2179_reg_1103 | exitcond_flatten105_mid2143_fu_477_p2);
assign empty_119_fu_494_p2 = (empty_reg_1091 | empty_118_fu_489_p2);
assign empty_120_fu_544_p2 = (exitcond_flatten105_mid2143_fu_477_p2 | empty_116_reg_1111);
assign empty_121_fu_549_p2 = (icmp_ln281_mid2117_fu_524_p2 | empty_120_fu_544_p2);
assign empty_122_fu_555_p2 = (icmp_ln276_reg_1073 | empty_121_fu_549_p2);
assign empty_123_fu_730_p2 = select_ln276_fu_680_p3 << 5'd1;
assign empty_124_fu_866_p2 = select_ln277_reg_1153 << 5'd1;
assign empty_125_fu_815_p2 = (zext_ln280_fu_812_p1 + zext_ln277_fu_736_p1);
assign empty_fu_322_p2 = (icmp_ln276_fu_292_p2 | and_ln275_3_fu_316_p2);
assign exitcond_flatten105_mid2143_fu_477_p2 = (not_exitcond_flatten120_mid2179_fu_472_p2 & exitcond_flatten105_mid2175_fu_460_p2);
assign exitcond_flatten105_mid2175_fu_460_p2 = (not_exitcond_flatten146_mid22256_reg_1097 & and_ln275_1_fu_450_p2);
assign exitcond_flatten105_mid2175_not_fu_507_p2 = (exitcond_flatten105_mid2175_fu_460_p2 ^ 1'd1);
assign exitcond_flatten120_mid2179_fu_346_p2 = (not_exitcond_flatten146_mid22256_fu_334_p2 & and_ln275_2_fu_340_p2);
assign exitcond_flatten146_not7_fu_328_p2 = (icmp_ln277_fu_310_p2 ^ 1'd1);
assign grp_fu_975_p1 = grp_fu_975_p10;
assign grp_fu_975_p10 = v54_q0;
assign grp_fu_975_p2 = ((empty_117_reg_1116_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v101_load);
assign icmp_ln275_fu_266_p2 = ((ap_sig_allocacmp_indvar_flatten226_load == 24'd9437184) ? 1'b1 : 1'b0);
assign icmp_ln276_fu_292_p2 = ((indvar_flatten180_fu_148 == 19'd147456) ? 1'b1 : 1'b0);
assign icmp_ln277_fu_310_p2 = ((indvar_flatten144_fu_140 == 15'd9216) ? 1'b1 : 1'b0);
assign icmp_ln279_1_fu_594_p2 = ((select_ln279_fu_530_p3 == 7'd63) ? 1'b1 : 1'b0);
assign icmp_ln279_fu_304_p2 = ((indvar_flatten118_fu_132 == 11'd576) ? 1'b1 : 1'b0);
assign icmp_ln280_1_fu_588_p2 = ((select_ln280_fu_568_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln280_fu_444_p2 = ((indvar_flatten103_fu_124 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln281_1_fu_582_p2 = ((add_ln281_fu_576_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln281_fu_433_p2 = ((v98_fu_116 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln281_mid2117_fu_524_p2 = (not_exitcond_flatten105_mid2143_fu_513_p2 & icmp_ln281_mid2139_fu_518_p2);
assign icmp_ln281_mid2139_fu_518_p2 = (not_exitcond_flatten120_mid2179_fu_472_p2 & icmp_ln281_mid2171_fu_455_p2);
assign icmp_ln281_mid2171_fu_455_p2 = (not_exitcond_flatten146_mid22256_reg_1097 & and_ln275_fu_439_p2);
assign not_exitcond_flatten105_mid2143_fu_513_p2 = (exitcond_flatten120_mid2179_reg_1103 | exitcond_flatten105_mid2175_not_fu_507_p2);
assign not_exitcond_flatten120_mid2179_fu_472_p2 = (exitcond_flatten120_mid2179_reg_1103 ^ 1'd1);
assign not_exitcond_flatten146_mid22256_fu_334_p2 = (icmp_ln276_fu_292_p2 | exitcond_flatten146_not7_fu_328_p2);
assign p_shl_fu_891_p3 = {{trunc_ln282_reg_1179}, {5'd0}};
assign select_ln275_1_fu_656_p3 = ((icmp_ln276_reg_1073_pp0_iter2_reg[0:0] == 1'b1) ? add_ln275_fu_643_p2 : v93_fu_152);
assign select_ln275_fu_649_p3 = ((icmp_ln276_reg_1073_pp0_iter2_reg[0:0] == 1'b1) ? 5'd0 : v94_fu_144);
assign select_ln276_1_fu_398_p3 = ((icmp_ln276_fu_292_p2[0:0] == 1'b1) ? 19'd1 : add_ln276_1_fu_392_p2);
assign select_ln276_fu_680_p3 = ((and_ln275_3_reg_1086_pp0_iter2_reg[0:0] == 1'b1) ? add_ln276_fu_667_p2 : select_ln275_fu_649_p3);
assign select_ln277_1_fu_384_p3 = ((empty_fu_322_p2[0:0] == 1'b1) ? 15'd1 : add_ln277_1_fu_378_p2);
assign select_ln277_fu_693_p3 = ((exitcond_flatten120_mid2179_reg_1103_pp0_iter2_reg[0:0] == 1'b1) ? add_ln277_fu_687_p2 : v95_mid2151_fu_673_p3);
assign select_ln279_1_fu_370_p3 = ((empty_117_fu_358_p2[0:0] == 1'b1) ? 11'd1 : add_ln279_1_fu_364_p2);
assign select_ln279_fu_530_p3 = ((exitcond_flatten105_mid2143_fu_477_p2[0:0] == 1'b1) ? add_ln279_fu_483_p2 : v96_mid2125_fu_465_p3);
assign select_ln280_1_fu_606_p3 = ((empty_119_fu_494_p2[0:0] == 1'b1) ? 4'd1 : add_ln280_1_fu_600_p2);
assign select_ln280_fu_568_p3 = ((icmp_ln281_mid2117_fu_524_p2[0:0] == 1'b1) ? add_ln280_fu_538_p2 : v97_mid2110_fu_499_p3);
assign sub_ln280_fu_885_p2 = (tmp_100_fu_875_p3 - zext_ln283_3_fu_882_p1);
assign sub_ln282_fu_765_p2 = (tmp_97_fu_753_p3 - zext_ln283_1_fu_761_p1);
assign tmp_100_fu_875_p3 = {{trunc_ln283_1_reg_1169}, {2'd0}};
assign tmp_101_fu_898_p3 = {{add_ln282_1_reg_1174}, {1'd0}};
assign tmp_10_fu_700_p3 = {{select_ln275_1_fu_656_p3}, {6'd0}};
assign tmp_11_fu_712_p3 = {{trunc_ln276_fu_663_p1}, {4'd0}};
assign tmp_97_fu_753_p3 = {{trunc_ln283_fu_749_p1}, {2'd0}};
assign tmp_98_fu_771_p3 = {{select_ln279_reg_1122}, {5'd0}};
assign tmp_99_fu_782_p3 = {{select_ln279_reg_1122}, {1'd0}};
assign tmp_fu_850_p3 = {{add_ln278_reg_1159}, {4'd0}};
assign trunc_ln276_fu_663_p1 = select_ln275_1_fu_656_p3[5:0];
assign trunc_ln282_fu_831_p1 = add_ln282_1_fu_825_p2[11:0];
assign trunc_ln283_1_fu_808_p1 = add_ln283_1_fu_802_p2[13:0];
assign trunc_ln283_fu_749_p1 = add_ln283_fu_743_p2[12:0];
assign v2_Addr_A = v2_Addr_A_orig << 32'd0;
assign v2_Addr_A_orig = zext_ln283_5_fu_924_p1;
assign v2_Din_A = 8'd0;
assign v2_EN_A = v2_EN_A_local;
assign v2_WEN_A = 1'd0;
assign v53_address1 = zext_ln278_3_fu_967_p1;
assign v53_ce1 = v53_ce1_local;
assign v53_d1 = grp_fu_975_p3;
assign v53_we1 = v53_we1_local;
assign v54_address0 = zext_ln282_5_fu_948_p1;
assign v54_ce0 = v54_ce0_local;
assign v95_mid2151_fu_673_p3 = ((empty_reg_1091_pp0_iter2_reg[0:0] == 1'b1) ? 5'd0 : v95_fu_136);
assign v96_mid2125_fu_465_p3 = ((empty_117_reg_1116[0:0] == 1'b1) ? 7'd0 : v96_fu_128);
assign v97_mid2110_fu_499_p3 = ((empty_119_fu_494_p2[0:0] == 1'b1) ? 2'd0 : v97_fu_120);
assign v98_mid2_fu_560_p3 = ((empty_122_fu_555_p2[0:0] == 1'b1) ? 2'd0 : v98_fu_116);
assign xor_ln275_fu_298_p2 = (icmp_ln276_fu_292_p2 ^ 1'd1);
assign zext_ln277_fu_736_p1 = empty_123_fu_730_p2;
assign zext_ln278_1_fu_720_p1 = select_ln276_fu_680_p3;
assign zext_ln278_2_fu_857_p1 = select_ln277_reg_1153;
assign zext_ln278_3_fu_967_p1 = add_ln278_1_reg_1184_pp0_iter7_reg;
assign zext_ln278_fu_708_p1 = tmp_10_fu_700_p3;
assign zext_ln279_fu_871_p1 = empty_124_fu_866_p2;
assign zext_ln280_fu_812_p1 = select_ln280_reg_1135;
assign zext_ln281_1_fu_929_p1 = v98_mid2_reg_1129_pp0_iter3_reg;
assign zext_ln281_fu_905_p1 = tmp_101_fu_898_p3;
assign zext_ln282_2_fu_789_p1 = tmp_99_fu_782_p3;
assign zext_ln282_3_fu_821_p1 = empty_125_fu_815_p2;
assign zext_ln282_4_fu_938_p1 = add_ln282_fu_932_p2;
assign zext_ln282_5_fu_948_p1 = add_ln282_2_fu_942_p2;
assign zext_ln282_fu_778_p1 = tmp_98_fu_771_p3;
assign zext_ln283_1_fu_761_p1 = add_ln283_fu_743_p2;
assign zext_ln283_2_fu_799_p1 = select_ln280_reg_1135;
assign zext_ln283_3_fu_882_p1 = add_ln283_1_reg_1164;
assign zext_ln283_4_fu_915_p1 = v98_mid2_reg_1129_pp0_iter3_reg;
assign zext_ln283_5_fu_924_p1 = add_ln283_2_fu_918_p2;
assign zext_ln283_fu_740_p1 = select_ln279_reg_1122;
endmodule 