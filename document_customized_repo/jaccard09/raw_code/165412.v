module main_graph_main_graph_Pipeline_VITIS_LOOP_420_37_VITIS_LOOP_421_38_VITIS_LOOP_422_39_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v80_address1,v80_ce1,v80_we1,v80_d1,v3_Addr_A,v3_EN_A,v3_WEN_A,v3_Din_A,v3_Dout_A,v81_address0,v81_ce0,v81_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v80_address1;
output   v80_ce1;
output   v80_we1;
output  [7:0] v80_d1;
output  [31:0] v3_Addr_A;
output   v3_EN_A;
output  [0:0] v3_WEN_A;
output  [7:0] v3_Din_A;
input  [7:0] v3_Dout_A;
output  [16:0] v81_address0;
output   v81_ce0;
input  [6:0] v81_q0;
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
wire   [0:0] icmp_ln420_fu_266_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln420_reg_1050;
reg   [0:0] icmp_ln420_reg_1050_pp0_iter1_reg;
wire   [0:0] icmp_ln421_fu_292_p2;
reg   [0:0] icmp_ln421_reg_1054;
reg   [0:0] icmp_ln421_reg_1054_pp0_iter2_reg;
wire   [0:0] xor_ln420_fu_298_p2;
reg   [0:0] xor_ln420_reg_1061;
wire   [0:0] and_ln420_3_fu_316_p2;
reg   [0:0] and_ln420_3_reg_1067;
wire   [0:0] empty_fu_322_p2;
reg   [0:0] empty_reg_1072;
wire   [0:0] not_exitcond_flatten338_mid241718_fu_334_p2;
reg   [0:0] not_exitcond_flatten338_mid241718_reg_1078;
wire   [0:0] exitcond_flatten312_mid2371_fu_346_p2;
reg   [0:0] exitcond_flatten312_mid2371_reg_1084;
wire   [0:0] empty_113_fu_352_p2;
reg   [0:0] empty_113_reg_1092;
wire   [0:0] empty_114_fu_358_p2;
reg   [0:0] empty_114_reg_1097;
reg   [0:0] empty_114_reg_1097_pp0_iter2_reg;
reg   [0:0] empty_114_reg_1097_pp0_iter3_reg;
reg   [0:0] empty_114_reg_1097_pp0_iter4_reg;
reg   [0:0] empty_114_reg_1097_pp0_iter5_reg;
reg   [0:0] empty_114_reg_1097_pp0_iter6_reg;
wire   [5:0] select_ln421_fu_491_p3;
reg   [5:0] select_ln421_reg_1103;
wire   [5:0] select_ln422_fu_522_p3;
reg   [5:0] select_ln422_reg_1108;
wire   [6:0] select_ln424_fu_576_p3;
reg   [6:0] select_ln424_reg_1114;
wire   [1:0] v156_mid2_fu_606_p3;
reg   [1:0] v156_mid2_reg_1121;
reg   [1:0] v156_mid2_reg_1121_pp0_iter3_reg;
wire   [1:0] select_ln425_fu_614_p3;
reg   [1:0] select_ln425_reg_1127;
wire   [5:0] empty_120_fu_626_p2;
reg   [5:0] empty_120_reg_1132;
wire   [0:0] icmp_ln426_1_fu_638_p2;
reg   [0:0] icmp_ln426_1_reg_1137;
reg   [0:0] icmp_ln426_1_reg_1137_pp0_iter3_reg;
reg   [0:0] icmp_ln426_1_reg_1137_pp0_iter4_reg;
reg   [0:0] icmp_ln426_1_reg_1137_pp0_iter5_reg;
reg   [0:0] icmp_ln426_1_reg_1137_pp0_iter6_reg;
reg   [0:0] icmp_ln426_1_reg_1137_pp0_iter7_reg;
wire   [0:0] icmp_ln425_1_fu_644_p2;
reg   [0:0] icmp_ln425_1_reg_1141;
reg   [0:0] icmp_ln425_1_reg_1141_pp0_iter3_reg;
reg   [0:0] icmp_ln425_1_reg_1141_pp0_iter4_reg;
reg   [0:0] icmp_ln425_1_reg_1141_pp0_iter5_reg;
reg   [0:0] icmp_ln425_1_reg_1141_pp0_iter6_reg;
reg   [0:0] icmp_ln425_1_reg_1141_pp0_iter7_reg;
wire   [0:0] icmp_ln424_1_fu_650_p2;
reg   [0:0] icmp_ln424_1_reg_1145;
reg   [0:0] icmp_ln424_1_reg_1145_pp0_iter3_reg;
reg   [0:0] icmp_ln424_1_reg_1145_pp0_iter4_reg;
reg   [0:0] icmp_ln424_1_reg_1145_pp0_iter5_reg;
reg   [0:0] icmp_ln424_1_reg_1145_pp0_iter6_reg;
reg   [0:0] icmp_ln424_1_reg_1145_pp0_iter7_reg;
wire   [15:0] add_ln423_1_fu_760_p2;
reg   [15:0] add_ln423_1_reg_1149;
reg   [15:0] add_ln423_1_reg_1149_pp0_iter4_reg;
reg   [15:0] add_ln423_1_reg_1149_pp0_iter5_reg;
reg   [15:0] add_ln423_1_reg_1149_pp0_iter6_reg;
reg   [15:0] add_ln423_1_reg_1149_pp0_iter7_reg;
wire   [14:0] add_ln428_1_fu_828_p2;
reg   [14:0] add_ln428_1_reg_1154;
wire   [13:0] trunc_ln428_1_fu_834_p1;
reg   [13:0] trunc_ln428_1_reg_1159;
wire   [16:0] add_ln427_2_fu_889_p2;
reg   [16:0] add_ln427_2_reg_1164;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln428_5_fu_925_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln427_5_fu_930_p1;
wire   [63:0] zext_ln423_3_fu_948_p1;
reg   [7:0] v159_fu_112;
wire   [7:0] grp_fu_956_p3;
reg   [7:0] ap_sig_allocacmp_v159_load;
wire    ap_loop_init;
reg   [1:0] v156_fu_116;
wire   [1:0] add_ln426_fu_632_p2;
reg   [1:0] v155_fu_120;
reg   [3:0] indvar_flatten295_fu_124;
wire   [3:0] select_ln425_1_fu_662_p3;
reg   [6:0] v154_fu_128;
reg   [10:0] indvar_flatten310_fu_132;
wire   [10:0] select_ln424_1_fu_370_p3;
reg   [5:0] v153_fu_136;
reg   [15:0] indvar_flatten336_fu_140;
wire   [15:0] select_ln422_1_fu_384_p3;
reg   [5:0] v152_fu_144;
reg   [20:0] indvar_flatten372_fu_148;
wire   [20:0] select_ln421_1_fu_398_p3;
reg   [6:0] v151_fu_152;
wire   [6:0] select_ln420_1_fu_709_p3;
reg   [25:0] indvar_flatten418_fu_156;
wire   [25:0] add_ln420_1_fu_272_p2;
reg   [25:0] ap_sig_allocacmp_indvar_flatten418_load;
reg    v81_ce0_local;
reg    v3_EN_A_local;
wire   [31:0] v3_Addr_A_orig;
reg    v80_we1_local;
reg    v80_ce1_local;
wire   [0:0] icmp_ln422_fu_310_p2;
wire   [0:0] exitcond_flatten338_not19_fu_328_p2;
wire   [0:0] icmp_ln424_fu_304_p2;
wire   [0:0] and_ln420_2_fu_340_p2;
wire   [10:0] add_ln424_1_fu_364_p2;
wire   [15:0] add_ln422_1_fu_378_p2;
wire   [20:0] add_ln421_1_fu_392_p2;
wire   [0:0] icmp_ln426_fu_446_p2;
wire   [0:0] icmp_ln425_fu_457_p2;
wire   [5:0] select_ln420_fu_439_p3;
wire   [0:0] and_ln420_fu_452_p2;
wire   [0:0] and_ln420_1_fu_463_p2;
wire   [5:0] add_ln421_fu_468_p2;
wire   [5:0] v153_mid2343_fu_474_p3;
wire   [0:0] exitcond_flatten297_mid2367_fu_486_p2;
wire   [0:0] not_exitcond_flatten312_mid2371_fu_511_p2;
wire   [5:0] add_ln422_fu_498_p2;
wire   [6:0] v154_mid2317_fu_504_p3;
wire   [0:0] exitcond_flatten297_mid2335_fu_516_p2;
wire   [0:0] empty_115_fu_535_p2;
wire   [0:0] empty_116_fu_540_p2;
wire   [0:0] exitcond_flatten297_mid2367_not_fu_553_p2;
wire   [0:0] icmp_ln426_mid2363_fu_481_p2;
wire   [0:0] icmp_ln426_mid2331_fu_564_p2;
wire   [0:0] not_exitcond_flatten297_mid2335_fu_559_p2;
wire   [6:0] add_ln424_fu_529_p2;
wire   [1:0] v155_mid2302_fu_545_p3;
wire   [0:0] icmp_ln426_mid2309_fu_570_p2;
wire   [0:0] empty_117_fu_590_p2;
wire   [0:0] empty_118_fu_595_p2;
wire   [0:0] empty_119_fu_601_p2;
wire   [1:0] add_ln425_fu_584_p2;
wire   [5:0] zext_ln425_fu_622_p1;
wire   [3:0] add_ln425_1_fu_656_p2;
wire   [6:0] add_ln420_fu_703_p2;
wire   [12:0] tmp_20_fu_720_p3;
wire   [5:0] trunc_ln421_fu_716_p1;
wire   [10:0] tmp_21_fu_732_p3;
wire   [10:0] zext_ln423_1_fu_740_p1;
wire   [10:0] add_ln423_fu_743_p2;
wire   [15:0] tmp_fu_749_p3;
wire   [15:0] zext_ln423_2_fu_757_p1;
wire   [13:0] zext_ln423_fu_728_p1;
wire   [13:0] zext_ln428_fu_766_p1;
wire   [13:0] add_ln428_fu_769_p2;
wire   [12:0] trunc_ln428_fu_775_p1;
wire   [14:0] tmp_107_fu_779_p3;
wire   [14:0] zext_ln428_1_fu_787_p1;
wire   [11:0] tmp_108_fu_797_p3;
wire   [7:0] tmp_109_fu_808_p3;
wire   [12:0] zext_ln427_fu_804_p1;
wire   [12:0] zext_ln427_2_fu_815_p1;
wire   [14:0] sub_ln427_fu_791_p2;
wire   [14:0] zext_ln428_2_fu_825_p1;
wire   [12:0] add_ln427_3_fu_819_p2;
wire   [12:0] zext_ln427_3_fu_838_p1;
wire   [12:0] add_ln427_1_fu_841_p2;
wire   [11:0] trunc_ln427_fu_847_p1;
wire   [13:0] tmp_111_fu_859_p3;
wire   [16:0] p_shl_fu_851_p3;
wire   [16:0] zext_ln426_fu_867_p1;
wire   [5:0] zext_ln426_1_fu_877_p1;
wire   [5:0] add_ln427_fu_880_p2;
wire   [16:0] add_ln426_1_fu_871_p2;
wire   [16:0] zext_ln427_4_fu_885_p1;
wire   [15:0] tmp_110_fu_900_p3;
wire   [15:0] zext_ln428_3_fu_907_p1;
wire   [15:0] sub_ln425_fu_910_p2;
wire   [15:0] zext_ln428_4_fu_916_p1;
wire   [15:0] add_ln428_2_fu_919_p2;
wire   [6:0] grp_fu_956_p1;
wire   [7:0] grp_fu_956_p2;
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
wire   [7:0] grp_fu_956_p10;
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
#0 v159_fu_112 = 8'd0;
#0 v156_fu_116 = 2'd0;
#0 v155_fu_120 = 2'd0;
#0 indvar_flatten295_fu_124 = 4'd0;
#0 v154_fu_128 = 7'd0;
#0 indvar_flatten310_fu_132 = 11'd0;
#0 v153_fu_136 = 6'd0;
#0 indvar_flatten336_fu_140 = 16'd0;
#0 v152_fu_144 = 6'd0;
#0 indvar_flatten372_fu_148 = 21'd0;
#0 v151_fu_152 = 7'd0;
#0 indvar_flatten418_fu_156 = 26'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(v3_Dout_A),.din1(grp_fu_956_p1),.din2(grp_fu_956_p2),.ce(1'b1),.dout(grp_fu_956_p3));
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
            indvar_flatten295_fu_124 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln420_reg_1050_pp0_iter1_reg == 1'd0))) begin
            indvar_flatten295_fu_124 <= select_ln425_1_fu_662_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten310_fu_132 <= 11'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln420_reg_1050 == 1'd0))) begin
            indvar_flatten310_fu_132 <= select_ln424_1_fu_370_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten336_fu_140 <= 16'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln420_reg_1050 == 1'd0))) begin
            indvar_flatten336_fu_140 <= select_ln422_1_fu_384_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten372_fu_148 <= 21'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln420_reg_1050 == 1'd0))) begin
            indvar_flatten372_fu_148 <= select_ln421_1_fu_398_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln420_fu_266_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten418_fu_156 <= add_ln420_1_fu_272_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten418_fu_156 <= 26'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v151_fu_152 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v151_fu_152 <= select_ln420_1_fu_709_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v152_fu_144 <= 6'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln420_reg_1050_pp0_iter1_reg == 1'd0))) begin
            v152_fu_144 <= select_ln421_fu_491_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v153_fu_136 <= 6'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln420_reg_1050_pp0_iter1_reg == 1'd0))) begin
            v153_fu_136 <= select_ln422_fu_522_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v154_fu_128 <= 7'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln420_reg_1050_pp0_iter1_reg == 1'd0))) begin
            v154_fu_128 <= select_ln424_fu_576_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v155_fu_120 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln420_reg_1050_pp0_iter1_reg == 1'd0))) begin
            v155_fu_120 <= select_ln425_fu_614_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v156_fu_116 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln420_reg_1050_pp0_iter1_reg == 1'd0))) begin
            v156_fu_116 <= add_ln426_fu_632_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v159_fu_112 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v159_fu_112 <= grp_fu_956_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln423_1_reg_1149 <= add_ln423_1_fu_760_p2;
        add_ln423_1_reg_1149_pp0_iter4_reg <= add_ln423_1_reg_1149;
        add_ln423_1_reg_1149_pp0_iter5_reg <= add_ln423_1_reg_1149_pp0_iter4_reg;
        add_ln423_1_reg_1149_pp0_iter6_reg <= add_ln423_1_reg_1149_pp0_iter5_reg;
        add_ln423_1_reg_1149_pp0_iter7_reg <= add_ln423_1_reg_1149_pp0_iter6_reg;
        add_ln427_2_reg_1164 <= add_ln427_2_fu_889_p2;
        add_ln428_1_reg_1154 <= add_ln428_1_fu_828_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_114_reg_1097_pp0_iter2_reg <= empty_114_reg_1097;
        empty_114_reg_1097_pp0_iter3_reg <= empty_114_reg_1097_pp0_iter2_reg;
        empty_114_reg_1097_pp0_iter4_reg <= empty_114_reg_1097_pp0_iter3_reg;
        empty_114_reg_1097_pp0_iter5_reg <= empty_114_reg_1097_pp0_iter4_reg;
        empty_114_reg_1097_pp0_iter6_reg <= empty_114_reg_1097_pp0_iter5_reg;
        empty_120_reg_1132 <= empty_120_fu_626_p2;
        icmp_ln421_reg_1054_pp0_iter2_reg <= icmp_ln421_reg_1054;
        icmp_ln424_1_reg_1145 <= icmp_ln424_1_fu_650_p2;
        icmp_ln424_1_reg_1145_pp0_iter3_reg <= icmp_ln424_1_reg_1145;
        icmp_ln424_1_reg_1145_pp0_iter4_reg <= icmp_ln424_1_reg_1145_pp0_iter3_reg;
        icmp_ln424_1_reg_1145_pp0_iter5_reg <= icmp_ln424_1_reg_1145_pp0_iter4_reg;
        icmp_ln424_1_reg_1145_pp0_iter6_reg <= icmp_ln424_1_reg_1145_pp0_iter5_reg;
        icmp_ln424_1_reg_1145_pp0_iter7_reg <= icmp_ln424_1_reg_1145_pp0_iter6_reg;
        icmp_ln425_1_reg_1141 <= icmp_ln425_1_fu_644_p2;
        icmp_ln425_1_reg_1141_pp0_iter3_reg <= icmp_ln425_1_reg_1141;
        icmp_ln425_1_reg_1141_pp0_iter4_reg <= icmp_ln425_1_reg_1141_pp0_iter3_reg;
        icmp_ln425_1_reg_1141_pp0_iter5_reg <= icmp_ln425_1_reg_1141_pp0_iter4_reg;
        icmp_ln425_1_reg_1141_pp0_iter6_reg <= icmp_ln425_1_reg_1141_pp0_iter5_reg;
        icmp_ln425_1_reg_1141_pp0_iter7_reg <= icmp_ln425_1_reg_1141_pp0_iter6_reg;
        icmp_ln426_1_reg_1137 <= icmp_ln426_1_fu_638_p2;
        icmp_ln426_1_reg_1137_pp0_iter3_reg <= icmp_ln426_1_reg_1137;
        icmp_ln426_1_reg_1137_pp0_iter4_reg <= icmp_ln426_1_reg_1137_pp0_iter3_reg;
        icmp_ln426_1_reg_1137_pp0_iter5_reg <= icmp_ln426_1_reg_1137_pp0_iter4_reg;
        icmp_ln426_1_reg_1137_pp0_iter6_reg <= icmp_ln426_1_reg_1137_pp0_iter5_reg;
        icmp_ln426_1_reg_1137_pp0_iter7_reg <= icmp_ln426_1_reg_1137_pp0_iter6_reg;
        select_ln421_reg_1103 <= select_ln421_fu_491_p3;
        select_ln422_reg_1108 <= select_ln422_fu_522_p3;
        select_ln424_reg_1114 <= select_ln424_fu_576_p3;
        select_ln425_reg_1127 <= select_ln425_fu_614_p3;
        trunc_ln428_1_reg_1159 <= trunc_ln428_1_fu_834_p1;
        v156_mid2_reg_1121 <= v156_mid2_fu_606_p3;
        v156_mid2_reg_1121_pp0_iter3_reg <= v156_mid2_reg_1121;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln420_3_reg_1067 <= and_ln420_3_fu_316_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_113_reg_1092 <= empty_113_fu_352_p2;
        empty_114_reg_1097 <= empty_114_fu_358_p2;
        empty_reg_1072 <= empty_fu_322_p2;
        exitcond_flatten312_mid2371_reg_1084 <= exitcond_flatten312_mid2371_fu_346_p2;
        icmp_ln420_reg_1050 <= icmp_ln420_fu_266_p2;
        icmp_ln420_reg_1050_pp0_iter1_reg <= icmp_ln420_reg_1050;
        icmp_ln421_reg_1054 <= icmp_ln421_fu_292_p2;
        not_exitcond_flatten338_mid241718_reg_1078 <= not_exitcond_flatten338_mid241718_fu_334_p2;
        xor_ln420_reg_1061 <= xor_ln420_fu_298_p2;
    end
end
always @ (*) begin
    if (((icmp_ln420_fu_266_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln420_reg_1050_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten418_load = 26'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten418_load = indvar_flatten418_fu_156;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        ap_sig_allocacmp_v159_load = grp_fu_956_p3;
    end else begin
        ap_sig_allocacmp_v159_load = v159_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v3_EN_A_local = 1'b1;
    end else begin
        v3_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v80_ce1_local = 1'b1;
    end else begin
        v80_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln424_1_reg_1145_pp0_iter7_reg == 1'd1) & (icmp_ln425_1_reg_1141_pp0_iter7_reg == 1'd1) & (icmp_ln426_1_reg_1137_pp0_iter7_reg == 1'd1))) begin
        v80_we1_local = 1'b1;
    end else begin
        v80_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v81_ce0_local = 1'b1;
    end else begin
        v81_ce0_local = 1'b0;
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
assign add_ln420_1_fu_272_p2 = (ap_sig_allocacmp_indvar_flatten418_load + 26'd1);
assign add_ln420_fu_703_p2 = (v151_fu_152 + 7'd1);
assign add_ln421_1_fu_392_p2 = (indvar_flatten372_fu_148 + 21'd1);
assign add_ln421_fu_468_p2 = (select_ln420_fu_439_p3 + 6'd1);
assign add_ln422_1_fu_378_p2 = (indvar_flatten336_fu_140 + 16'd1);
assign add_ln422_fu_498_p2 = (v153_mid2343_fu_474_p3 + 6'd1);
assign add_ln423_1_fu_760_p2 = (tmp_fu_749_p3 + zext_ln423_2_fu_757_p1);
assign add_ln423_fu_743_p2 = (tmp_21_fu_732_p3 + zext_ln423_1_fu_740_p1);
assign add_ln424_1_fu_364_p2 = (indvar_flatten310_fu_132 + 11'd1);
assign add_ln424_fu_529_p2 = (v154_mid2317_fu_504_p3 + 7'd1);
assign add_ln425_1_fu_656_p2 = (indvar_flatten295_fu_124 + 4'd1);
assign add_ln425_fu_584_p2 = (v155_mid2302_fu_545_p3 + 2'd1);
assign add_ln426_1_fu_871_p2 = (p_shl_fu_851_p3 + zext_ln426_fu_867_p1);
assign add_ln426_fu_632_p2 = (v156_mid2_fu_606_p3 + 2'd1);
assign add_ln427_1_fu_841_p2 = (add_ln427_3_fu_819_p2 + zext_ln427_3_fu_838_p1);
assign add_ln427_2_fu_889_p2 = (add_ln426_1_fu_871_p2 + zext_ln427_4_fu_885_p1);
assign add_ln427_3_fu_819_p2 = (zext_ln427_fu_804_p1 + zext_ln427_2_fu_815_p1);
assign add_ln427_fu_880_p2 = (zext_ln426_1_fu_877_p1 + select_ln422_reg_1108);
assign add_ln428_1_fu_828_p2 = (sub_ln427_fu_791_p2 + zext_ln428_2_fu_825_p1);
assign add_ln428_2_fu_919_p2 = (sub_ln425_fu_910_p2 + zext_ln428_4_fu_916_p1);
assign add_ln428_fu_769_p2 = (zext_ln423_fu_728_p1 + zext_ln428_fu_766_p1);
assign and_ln420_1_fu_463_p2 = (xor_ln420_reg_1061 & icmp_ln425_fu_457_p2);
assign and_ln420_2_fu_340_p2 = (xor_ln420_fu_298_p2 & icmp_ln424_fu_304_p2);
assign and_ln420_3_fu_316_p2 = (xor_ln420_fu_298_p2 & icmp_ln422_fu_310_p2);
assign and_ln420_fu_452_p2 = (xor_ln420_reg_1061 & icmp_ln426_fu_446_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_113_fu_352_p2 = (exitcond_flatten312_mid2371_fu_346_p2 | and_ln420_3_fu_316_p2);
assign empty_114_fu_358_p2 = (icmp_ln421_fu_292_p2 | empty_113_fu_352_p2);
assign empty_115_fu_535_p2 = (exitcond_flatten312_mid2371_reg_1084 | exitcond_flatten297_mid2335_fu_516_p2);
assign empty_116_fu_540_p2 = (empty_reg_1072 | empty_115_fu_535_p2);
assign empty_117_fu_590_p2 = (exitcond_flatten297_mid2335_fu_516_p2 | empty_113_reg_1092);
assign empty_118_fu_595_p2 = (icmp_ln426_mid2309_fu_570_p2 | empty_117_fu_590_p2);
assign empty_119_fu_601_p2 = (icmp_ln421_reg_1054 | empty_118_fu_595_p2);
assign empty_120_fu_626_p2 = (zext_ln425_fu_622_p1 + select_ln421_fu_491_p3);
assign empty_fu_322_p2 = (icmp_ln421_fu_292_p2 | and_ln420_3_fu_316_p2);
assign exitcond_flatten297_mid2335_fu_516_p2 = (not_exitcond_flatten312_mid2371_fu_511_p2 & exitcond_flatten297_mid2367_fu_486_p2);
assign exitcond_flatten297_mid2367_fu_486_p2 = (not_exitcond_flatten338_mid241718_reg_1078 & and_ln420_1_fu_463_p2);
assign exitcond_flatten297_mid2367_not_fu_553_p2 = (exitcond_flatten297_mid2367_fu_486_p2 ^ 1'd1);
assign exitcond_flatten312_mid2371_fu_346_p2 = (not_exitcond_flatten338_mid241718_fu_334_p2 & and_ln420_2_fu_340_p2);
assign exitcond_flatten338_not19_fu_328_p2 = (icmp_ln422_fu_310_p2 ^ 1'd1);
assign grp_fu_956_p1 = grp_fu_956_p10;
assign grp_fu_956_p10 = v81_q0;
assign grp_fu_956_p2 = ((empty_114_reg_1097_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v159_load);
assign icmp_ln420_fu_266_p2 = ((ap_sig_allocacmp_indvar_flatten418_load == 26'd37748736) ? 1'b1 : 1'b0);
assign icmp_ln421_fu_292_p2 = ((indvar_flatten372_fu_148 == 21'd589824) ? 1'b1 : 1'b0);
assign icmp_ln422_fu_310_p2 = ((indvar_flatten336_fu_140 == 16'd18432) ? 1'b1 : 1'b0);
assign icmp_ln424_1_fu_650_p2 = ((select_ln424_fu_576_p3 == 7'd63) ? 1'b1 : 1'b0);
assign icmp_ln424_fu_304_p2 = ((indvar_flatten310_fu_132 == 11'd576) ? 1'b1 : 1'b0);
assign icmp_ln425_1_fu_644_p2 = ((select_ln425_fu_614_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln425_fu_457_p2 = ((indvar_flatten295_fu_124 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln426_1_fu_638_p2 = ((add_ln426_fu_632_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln426_fu_446_p2 = ((v156_fu_116 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln426_mid2309_fu_570_p2 = (not_exitcond_flatten297_mid2335_fu_559_p2 & icmp_ln426_mid2331_fu_564_p2);
assign icmp_ln426_mid2331_fu_564_p2 = (not_exitcond_flatten312_mid2371_fu_511_p2 & icmp_ln426_mid2363_fu_481_p2);
assign icmp_ln426_mid2363_fu_481_p2 = (not_exitcond_flatten338_mid241718_reg_1078 & and_ln420_fu_452_p2);
assign not_exitcond_flatten297_mid2335_fu_559_p2 = (exitcond_flatten312_mid2371_reg_1084 | exitcond_flatten297_mid2367_not_fu_553_p2);
assign not_exitcond_flatten312_mid2371_fu_511_p2 = (exitcond_flatten312_mid2371_reg_1084 ^ 1'd1);
assign not_exitcond_flatten338_mid241718_fu_334_p2 = (icmp_ln421_fu_292_p2 | exitcond_flatten338_not19_fu_328_p2);
assign p_shl_fu_851_p3 = {{trunc_ln427_fu_847_p1}, {5'd0}};
assign select_ln420_1_fu_709_p3 = ((icmp_ln421_reg_1054_pp0_iter2_reg[0:0] == 1'b1) ? add_ln420_fu_703_p2 : v151_fu_152);
assign select_ln420_fu_439_p3 = ((icmp_ln421_reg_1054[0:0] == 1'b1) ? 6'd0 : v152_fu_144);
assign select_ln421_1_fu_398_p3 = ((icmp_ln421_fu_292_p2[0:0] == 1'b1) ? 21'd1 : add_ln421_1_fu_392_p2);
assign select_ln421_fu_491_p3 = ((and_ln420_3_reg_1067[0:0] == 1'b1) ? add_ln421_fu_468_p2 : select_ln420_fu_439_p3);
assign select_ln422_1_fu_384_p3 = ((empty_fu_322_p2[0:0] == 1'b1) ? 16'd1 : add_ln422_1_fu_378_p2);
assign select_ln422_fu_522_p3 = ((exitcond_flatten312_mid2371_reg_1084[0:0] == 1'b1) ? add_ln422_fu_498_p2 : v153_mid2343_fu_474_p3);
assign select_ln424_1_fu_370_p3 = ((empty_114_fu_358_p2[0:0] == 1'b1) ? 11'd1 : add_ln424_1_fu_364_p2);
assign select_ln424_fu_576_p3 = ((exitcond_flatten297_mid2335_fu_516_p2[0:0] == 1'b1) ? add_ln424_fu_529_p2 : v154_mid2317_fu_504_p3);
assign select_ln425_1_fu_662_p3 = ((empty_116_fu_540_p2[0:0] == 1'b1) ? 4'd1 : add_ln425_1_fu_656_p2);
assign select_ln425_fu_614_p3 = ((icmp_ln426_mid2309_fu_570_p2[0:0] == 1'b1) ? add_ln425_fu_584_p2 : v155_mid2302_fu_545_p3);
assign sub_ln425_fu_910_p2 = (tmp_110_fu_900_p3 - zext_ln428_3_fu_907_p1);
assign sub_ln427_fu_791_p2 = (tmp_107_fu_779_p3 - zext_ln428_1_fu_787_p1);
assign tmp_107_fu_779_p3 = {{trunc_ln428_fu_775_p1}, {2'd0}};
assign tmp_108_fu_797_p3 = {{select_ln424_reg_1114}, {5'd0}};
assign tmp_109_fu_808_p3 = {{select_ln424_reg_1114}, {1'd0}};
assign tmp_110_fu_900_p3 = {{trunc_ln428_1_reg_1159}, {2'd0}};
assign tmp_111_fu_859_p3 = {{add_ln427_1_fu_841_p2}, {1'd0}};
assign tmp_20_fu_720_p3 = {{select_ln420_1_fu_709_p3}, {6'd0}};
assign tmp_21_fu_732_p3 = {{trunc_ln421_fu_716_p1}, {5'd0}};
assign tmp_fu_749_p3 = {{add_ln423_fu_743_p2}, {5'd0}};
assign trunc_ln421_fu_716_p1 = select_ln420_1_fu_709_p3[5:0];
assign trunc_ln427_fu_847_p1 = add_ln427_1_fu_841_p2[11:0];
assign trunc_ln428_1_fu_834_p1 = add_ln428_1_fu_828_p2[13:0];
assign trunc_ln428_fu_775_p1 = add_ln428_fu_769_p2[12:0];
assign v153_mid2343_fu_474_p3 = ((empty_reg_1072[0:0] == 1'b1) ? 6'd0 : v153_fu_136);
assign v154_mid2317_fu_504_p3 = ((empty_114_reg_1097[0:0] == 1'b1) ? 7'd0 : v154_fu_128);
assign v155_mid2302_fu_545_p3 = ((empty_116_fu_540_p2[0:0] == 1'b1) ? 2'd0 : v155_fu_120);
assign v156_mid2_fu_606_p3 = ((empty_119_fu_601_p2[0:0] == 1'b1) ? 2'd0 : v156_fu_116);
assign v3_Addr_A = v3_Addr_A_orig << 32'd0;
assign v3_Addr_A_orig = zext_ln428_5_fu_925_p1;
assign v3_Din_A = 8'd0;
assign v3_EN_A = v3_EN_A_local;
assign v3_WEN_A = 1'd0;
assign v80_address1 = zext_ln423_3_fu_948_p1;
assign v80_ce1 = v80_ce1_local;
assign v80_d1 = grp_fu_956_p3;
assign v80_we1 = v80_we1_local;
assign v81_address0 = zext_ln427_5_fu_930_p1;
assign v81_ce0 = v81_ce0_local;
assign xor_ln420_fu_298_p2 = (icmp_ln421_fu_292_p2 ^ 1'd1);
assign zext_ln423_1_fu_740_p1 = select_ln421_reg_1103;
assign zext_ln423_2_fu_757_p1 = select_ln422_reg_1108;
assign zext_ln423_3_fu_948_p1 = add_ln423_1_reg_1149_pp0_iter7_reg;
assign zext_ln423_fu_728_p1 = tmp_20_fu_720_p3;
assign zext_ln425_fu_622_p1 = select_ln425_fu_614_p3;
assign zext_ln426_1_fu_877_p1 = v156_mid2_reg_1121;
assign zext_ln426_fu_867_p1 = tmp_111_fu_859_p3;
assign zext_ln427_2_fu_815_p1 = tmp_109_fu_808_p3;
assign zext_ln427_3_fu_838_p1 = empty_120_reg_1132;
assign zext_ln427_4_fu_885_p1 = add_ln427_fu_880_p2;
assign zext_ln427_5_fu_930_p1 = add_ln427_2_reg_1164;
assign zext_ln427_fu_804_p1 = tmp_108_fu_797_p3;
assign zext_ln428_1_fu_787_p1 = add_ln428_fu_769_p2;
assign zext_ln428_2_fu_825_p1 = select_ln425_reg_1127;
assign zext_ln428_3_fu_907_p1 = add_ln428_1_reg_1154;
assign zext_ln428_4_fu_916_p1 = v156_mid2_reg_1121_pp0_iter3_reg;
assign zext_ln428_5_fu_925_p1 = add_ln428_2_fu_919_p2;
assign zext_ln428_fu_766_p1 = select_ln424_reg_1114;
endmodule 