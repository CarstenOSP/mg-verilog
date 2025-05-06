
module main_graph_main_graph_Pipeline_VITIS_LOOP_1112_243_VITIS_LOOP_1113_244_VITIS_LOOP_1114_245_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v36_address1,v36_ce1,v36_we1,v36_d1,v17_Addr_A,v17_EN_A,v17_WEN_A,v17_Din_A,v17_Dout_A,v37_address0,v37_ce0,v37_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v36_address1;
output   v36_ce1;
output   v36_we1;
output  [7:0] v36_d1;
output  [31:0] v17_Addr_A;
output   v17_EN_A;
output  [0:0] v17_WEN_A;
output  [7:0] v17_Din_A;
input  [7:0] v17_Dout_A;
output  [14:0] v37_address0;
output   v37_ce0;
input  [6:0] v37_q0;
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
wire   [0:0] icmp_ln1112_fu_266_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln1112_reg_1047;
reg   [0:0] icmp_ln1112_reg_1047_pp0_iter1_reg;
wire   [0:0] icmp_ln1113_fu_292_p2;
reg   [0:0] icmp_ln1113_reg_1051;
reg   [0:0] icmp_ln1113_reg_1051_pp0_iter2_reg;
wire   [0:0] xor_ln1112_fu_298_p2;
reg   [0:0] xor_ln1112_reg_1058;
wire   [0:0] and_ln1112_3_fu_316_p2;
reg   [0:0] and_ln1112_3_reg_1064;
wire   [0:0] empty_fu_322_p2;
reg   [0:0] empty_reg_1069;
reg   [0:0] empty_reg_1069_pp0_iter2_reg;
wire   [0:0] not_exitcond_flatten2827_mid22906163_fu_334_p2;
reg   [0:0] not_exitcond_flatten2827_mid22906163_reg_1075;
wire   [0:0] exitcond_flatten2801_mid22860_fu_346_p2;
reg   [0:0] exitcond_flatten2801_mid22860_reg_1081;
reg   [0:0] exitcond_flatten2801_mid22860_reg_1081_pp0_iter2_reg;
wire   [0:0] empty_155_fu_352_p2;
reg   [0:0] empty_155_reg_1089;
wire   [0:0] empty_156_fu_358_p2;
reg   [0:0] empty_156_reg_1094;
reg   [0:0] empty_156_reg_1094_pp0_iter2_reg;
reg   [0:0] empty_156_reg_1094_pp0_iter3_reg;
reg   [0:0] empty_156_reg_1094_pp0_iter4_reg;
reg   [0:0] empty_156_reg_1094_pp0_iter5_reg;
reg   [0:0] empty_156_reg_1094_pp0_iter6_reg;
wire   [2:0] select_ln1113_fu_481_p3;
reg   [2:0] select_ln1113_reg_1100;
wire   [9:0] select_ln1116_fu_553_p3;
reg   [9:0] select_ln1116_reg_1106;
wire   [1:0] v572_mid2_fu_583_p3;
reg   [1:0] v572_mid2_reg_1113;
reg   [1:0] v572_mid2_reg_1113_pp0_iter3_reg;
wire   [1:0] select_ln1117_fu_591_p3;
reg   [1:0] select_ln1117_reg_1119;
wire   [0:0] icmp_ln1118_1_fu_605_p2;
reg   [0:0] icmp_ln1118_1_reg_1125;
reg   [0:0] icmp_ln1118_1_reg_1125_pp0_iter3_reg;
reg   [0:0] icmp_ln1118_1_reg_1125_pp0_iter4_reg;
reg   [0:0] icmp_ln1118_1_reg_1125_pp0_iter5_reg;
reg   [0:0] icmp_ln1118_1_reg_1125_pp0_iter6_reg;
reg   [0:0] icmp_ln1118_1_reg_1125_pp0_iter7_reg;
wire   [0:0] icmp_ln1117_1_fu_611_p2;
reg   [0:0] icmp_ln1117_1_reg_1129;
reg   [0:0] icmp_ln1117_1_reg_1129_pp0_iter3_reg;
reg   [0:0] icmp_ln1117_1_reg_1129_pp0_iter4_reg;
reg   [0:0] icmp_ln1117_1_reg_1129_pp0_iter5_reg;
reg   [0:0] icmp_ln1117_1_reg_1129_pp0_iter6_reg;
reg   [0:0] icmp_ln1117_1_reg_1129_pp0_iter7_reg;
wire   [0:0] icmp_ln1116_1_fu_617_p2;
reg   [0:0] icmp_ln1116_1_reg_1133;
reg   [0:0] icmp_ln1116_1_reg_1133_pp0_iter3_reg;
reg   [0:0] icmp_ln1116_1_reg_1133_pp0_iter4_reg;
reg   [0:0] icmp_ln1116_1_reg_1133_pp0_iter5_reg;
reg   [0:0] icmp_ln1116_1_reg_1133_pp0_iter6_reg;
reg   [0:0] icmp_ln1116_1_reg_1133_pp0_iter7_reg;
wire   [12:0] add_ln1115_1_fu_746_p2;
reg   [12:0] add_ln1115_1_reg_1137;
reg   [12:0] add_ln1115_1_reg_1137_pp0_iter4_reg;
reg   [12:0] add_ln1115_1_reg_1137_pp0_iter5_reg;
reg   [12:0] add_ln1115_1_reg_1137_pp0_iter6_reg;
reg   [12:0] add_ln1115_1_reg_1137_pp0_iter7_reg;
wire   [20:0] add_ln1120_1_fu_810_p2;
reg   [20:0] add_ln1120_1_reg_1142;
wire   [19:0] trunc_ln1120_1_fu_816_p1;
reg   [19:0] trunc_ln1120_1_reg_1147;
wire   [14:0] add_ln1119_2_fu_881_p2;
reg   [14:0] add_ln1119_2_reg_1152;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln1120_5_fu_922_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1119_5_fu_927_p1;
wire   [63:0] zext_ln1115_3_fu_945_p1;
reg   [7:0] v575_fu_112;
wire   [7:0] grp_fu_953_p3;
reg   [7:0] ap_sig_allocacmp_v575_load;
wire    ap_loop_init;
reg   [1:0] v572_fu_116;
wire   [1:0] add_ln1118_fu_599_p2;
reg   [1:0] v571_fu_120;
reg   [3:0] indvar_flatten2784_fu_124;
wire   [3:0] select_ln1117_1_fu_629_p3;
reg   [9:0] v570_fu_128;
reg   [13:0] indvar_flatten2799_fu_132;
wire   [13:0] select_ln1116_1_fu_370_p3;
reg   [2:0] v569_fu_136;
wire   [2:0] select_ln1114_fu_698_p3;
reg   [15:0] indvar_flatten2825_fu_140;
wire   [15:0] select_ln1114_1_fu_384_p3;
reg   [2:0] v568_fu_144;
reg   [17:0] indvar_flatten2861_fu_148;
wire   [17:0] select_ln1113_1_fu_398_p3;
reg   [9:0] v567_fu_152;
wire   [9:0] select_ln1112_1_fu_674_p3;
reg   [25:0] indvar_flatten2907_fu_156;
wire   [25:0] add_ln1112_1_fu_272_p2;
reg   [25:0] ap_sig_allocacmp_indvar_flatten2907_load;
reg    v37_ce0_local;
reg    v17_EN_A_local;
wire   [31:0] v17_Addr_A_orig;
reg    v36_we1_local;
reg    v36_ce1_local;
wire   [0:0] icmp_ln1114_fu_310_p2;
wire   [0:0] exitcond_flatten2827_not164_fu_328_p2;
wire   [0:0] icmp_ln1116_fu_304_p2;
wire   [0:0] and_ln1112_2_fu_340_p2;
wire   [13:0] add_ln1116_1_fu_364_p2;
wire   [15:0] add_ln1114_1_fu_378_p2;
wire   [17:0] add_ln1113_1_fu_392_p2;
wire   [0:0] icmp_ln1118_fu_443_p2;
wire   [0:0] icmp_ln1117_fu_454_p2;
wire   [2:0] select_ln1112_fu_436_p3;
wire   [0:0] and_ln1112_fu_449_p2;
wire   [0:0] and_ln1112_1_fu_460_p2;
wire   [2:0] add_ln1113_fu_465_p2;
wire   [0:0] exitcond_flatten2786_mid22856_fu_476_p2;
wire   [0:0] not_exitcond_flatten2801_mid22860_fu_495_p2;
wire   [9:0] v570_mid22806_fu_488_p3;
wire   [0:0] exitcond_flatten2786_mid22824_fu_500_p2;
wire   [0:0] empty_157_fu_512_p2;
wire   [0:0] empty_158_fu_517_p2;
wire   [0:0] exitcond_flatten2786_mid22856_not_fu_530_p2;
wire   [0:0] icmp_ln1118_mid22852_fu_471_p2;
wire   [0:0] icmp_ln1118_mid22820_fu_541_p2;
wire   [0:0] not_exitcond_flatten2786_mid22824_fu_536_p2;
wire   [9:0] add_ln1116_fu_506_p2;
wire   [1:0] v571_mid22791_fu_522_p3;
wire   [0:0] icmp_ln1118_mid22798_fu_547_p2;
wire   [0:0] empty_159_fu_567_p2;
wire   [0:0] empty_160_fu_572_p2;
wire   [0:0] empty_161_fu_578_p2;
wire   [1:0] add_ln1117_fu_561_p2;
wire   [3:0] add_ln1117_1_fu_623_p2;
wire   [9:0] add_ln1112_fu_668_p2;
wire   [2:0] v569_mid22832_fu_685_p3;
wire   [2:0] add_ln1114_fu_692_p2;
wire   [18:0] tmp_s_fu_705_p3;
wire   [8:0] trunc_ln1113_fu_681_p1;
wire   [10:0] tmp_78_fu_717_p3;
wire   [10:0] zext_ln1115_1_fu_725_p1;
wire   [10:0] add_ln1115_fu_728_p2;
wire   [12:0] tmp_fu_734_p3;
wire   [12:0] zext_ln1115_2_fu_742_p1;
wire   [19:0] zext_ln1115_fu_713_p1;
wire   [19:0] zext_ln1120_fu_752_p1;
wire   [19:0] add_ln1120_fu_755_p2;
wire   [18:0] trunc_ln1120_fu_761_p1;
wire   [20:0] tmp_154_fu_765_p3;
wire   [20:0] zext_ln1120_1_fu_773_p1;
wire   [10:0] tmp_155_fu_790_p3;
wire   [12:0] p_shl_fu_783_p3;
wire   [12:0] zext_ln1119_fu_797_p1;
wire   [20:0] sub_ln1119_fu_777_p2;
wire   [20:0] zext_ln1120_2_fu_807_p1;
wire   [2:0] zext_ln1117_fu_820_p1;
wire   [2:0] empty_162_fu_823_p2;
wire   [12:0] sub_ln1119_1_fu_801_p2;
wire   [12:0] zext_ln1119_2_fu_828_p1;
wire   [12:0] add_ln1119_1_fu_832_p2;
wire   [11:0] trunc_ln1119_fu_838_p1;
wire   [13:0] tmp_157_fu_842_p3;
wire   [14:0] tmp_158_fu_850_p3;
wire   [14:0] zext_ln1119_3_fu_858_p1;
wire   [2:0] zext_ln1118_fu_868_p1;
wire   [2:0] add_ln1119_fu_871_p2;
wire   [14:0] sub_ln1118_fu_862_p2;
wire   [14:0] zext_ln1119_4_fu_877_p1;
wire   [21:0] tmp_156_fu_897_p3;
wire   [21:0] zext_ln1120_3_fu_904_p1;
wire   [21:0] sub_ln1117_fu_907_p2;
wire   [21:0] zext_ln1120_4_fu_913_p1;
wire   [21:0] add_ln1120_2_fu_916_p2;
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
#0 v575_fu_112 = 8'd0;
#0 v572_fu_116 = 2'd0;
#0 v571_fu_120 = 2'd0;
#0 indvar_flatten2784_fu_124 = 4'd0;
#0 v570_fu_128 = 10'd0;
#0 indvar_flatten2799_fu_132 = 14'd0;
#0 v569_fu_136 = 3'd0;
#0 indvar_flatten2825_fu_140 = 16'd0;
#0 v568_fu_144 = 3'd0;
#0 indvar_flatten2861_fu_148 = 18'd0;
#0 v567_fu_152 = 10'd0;
#0 indvar_flatten2907_fu_156 = 26'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U272(.clk(ap_clk),.reset(ap_rst),.din0(v17_Dout_A),.din1(grp_fu_953_p1),.din2(grp_fu_953_p2),.ce(1'b1),.dout(grp_fu_953_p3));
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
            indvar_flatten2784_fu_124 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1112_reg_1047_pp0_iter1_reg == 1'd0))) begin
            indvar_flatten2784_fu_124 <= select_ln1117_1_fu_629_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2799_fu_132 <= 14'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1112_reg_1047 == 1'd0))) begin
            indvar_flatten2799_fu_132 <= select_ln1116_1_fu_370_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2825_fu_140 <= 16'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1112_reg_1047 == 1'd0))) begin
            indvar_flatten2825_fu_140 <= select_ln1114_1_fu_384_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2861_fu_148 <= 18'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1112_reg_1047 == 1'd0))) begin
            indvar_flatten2861_fu_148 <= select_ln1113_1_fu_398_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1112_fu_266_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten2907_fu_156 <= add_ln1112_1_fu_272_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2907_fu_156 <= 26'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v567_fu_152 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v567_fu_152 <= select_ln1112_1_fu_674_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v568_fu_144 <= 3'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1112_reg_1047_pp0_iter1_reg == 1'd0))) begin
            v568_fu_144 <= select_ln1113_fu_481_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v569_fu_136 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v569_fu_136 <= select_ln1114_fu_698_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v570_fu_128 <= 10'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1112_reg_1047_pp0_iter1_reg == 1'd0))) begin
            v570_fu_128 <= select_ln1116_fu_553_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v571_fu_120 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1112_reg_1047_pp0_iter1_reg == 1'd0))) begin
            v571_fu_120 <= select_ln1117_fu_591_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v572_fu_116 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1112_reg_1047_pp0_iter1_reg == 1'd0))) begin
            v572_fu_116 <= add_ln1118_fu_599_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v575_fu_112 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v575_fu_112 <= grp_fu_953_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln1115_1_reg_1137 <= add_ln1115_1_fu_746_p2;
        add_ln1115_1_reg_1137_pp0_iter4_reg <= add_ln1115_1_reg_1137;
        add_ln1115_1_reg_1137_pp0_iter5_reg <= add_ln1115_1_reg_1137_pp0_iter4_reg;
        add_ln1115_1_reg_1137_pp0_iter6_reg <= add_ln1115_1_reg_1137_pp0_iter5_reg;
        add_ln1115_1_reg_1137_pp0_iter7_reg <= add_ln1115_1_reg_1137_pp0_iter6_reg;
        add_ln1119_2_reg_1152 <= add_ln1119_2_fu_881_p2;
        add_ln1120_1_reg_1142 <= add_ln1120_1_fu_810_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_156_reg_1094_pp0_iter2_reg <= empty_156_reg_1094;
        empty_156_reg_1094_pp0_iter3_reg <= empty_156_reg_1094_pp0_iter2_reg;
        empty_156_reg_1094_pp0_iter4_reg <= empty_156_reg_1094_pp0_iter3_reg;
        empty_156_reg_1094_pp0_iter5_reg <= empty_156_reg_1094_pp0_iter4_reg;
        empty_156_reg_1094_pp0_iter6_reg <= empty_156_reg_1094_pp0_iter5_reg;
        empty_reg_1069_pp0_iter2_reg <= empty_reg_1069;
        exitcond_flatten2801_mid22860_reg_1081_pp0_iter2_reg <= exitcond_flatten2801_mid22860_reg_1081;
        icmp_ln1113_reg_1051_pp0_iter2_reg <= icmp_ln1113_reg_1051;
        icmp_ln1116_1_reg_1133 <= icmp_ln1116_1_fu_617_p2;
        icmp_ln1116_1_reg_1133_pp0_iter3_reg <= icmp_ln1116_1_reg_1133;
        icmp_ln1116_1_reg_1133_pp0_iter4_reg <= icmp_ln1116_1_reg_1133_pp0_iter3_reg;
        icmp_ln1116_1_reg_1133_pp0_iter5_reg <= icmp_ln1116_1_reg_1133_pp0_iter4_reg;
        icmp_ln1116_1_reg_1133_pp0_iter6_reg <= icmp_ln1116_1_reg_1133_pp0_iter5_reg;
        icmp_ln1116_1_reg_1133_pp0_iter7_reg <= icmp_ln1116_1_reg_1133_pp0_iter6_reg;
        icmp_ln1117_1_reg_1129 <= icmp_ln1117_1_fu_611_p2;
        icmp_ln1117_1_reg_1129_pp0_iter3_reg <= icmp_ln1117_1_reg_1129;
        icmp_ln1117_1_reg_1129_pp0_iter4_reg <= icmp_ln1117_1_reg_1129_pp0_iter3_reg;
        icmp_ln1117_1_reg_1129_pp0_iter5_reg <= icmp_ln1117_1_reg_1129_pp0_iter4_reg;
        icmp_ln1117_1_reg_1129_pp0_iter6_reg <= icmp_ln1117_1_reg_1129_pp0_iter5_reg;
        icmp_ln1117_1_reg_1129_pp0_iter7_reg <= icmp_ln1117_1_reg_1129_pp0_iter6_reg;
        icmp_ln1118_1_reg_1125 <= icmp_ln1118_1_fu_605_p2;
        icmp_ln1118_1_reg_1125_pp0_iter3_reg <= icmp_ln1118_1_reg_1125;
        icmp_ln1118_1_reg_1125_pp0_iter4_reg <= icmp_ln1118_1_reg_1125_pp0_iter3_reg;
        icmp_ln1118_1_reg_1125_pp0_iter5_reg <= icmp_ln1118_1_reg_1125_pp0_iter4_reg;
        icmp_ln1118_1_reg_1125_pp0_iter6_reg <= icmp_ln1118_1_reg_1125_pp0_iter5_reg;
        icmp_ln1118_1_reg_1125_pp0_iter7_reg <= icmp_ln1118_1_reg_1125_pp0_iter6_reg;
        select_ln1113_reg_1100 <= select_ln1113_fu_481_p3;
        select_ln1116_reg_1106 <= select_ln1116_fu_553_p3;
        select_ln1117_reg_1119 <= select_ln1117_fu_591_p3;
        trunc_ln1120_1_reg_1147 <= trunc_ln1120_1_fu_816_p1;
        v572_mid2_reg_1113 <= v572_mid2_fu_583_p3;
        v572_mid2_reg_1113_pp0_iter3_reg <= v572_mid2_reg_1113;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln1112_3_reg_1064 <= and_ln1112_3_fu_316_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_155_reg_1089 <= empty_155_fu_352_p2;
        empty_156_reg_1094 <= empty_156_fu_358_p2;
        empty_reg_1069 <= empty_fu_322_p2;
        exitcond_flatten2801_mid22860_reg_1081 <= exitcond_flatten2801_mid22860_fu_346_p2;
        icmp_ln1112_reg_1047 <= icmp_ln1112_fu_266_p2;
        icmp_ln1112_reg_1047_pp0_iter1_reg <= icmp_ln1112_reg_1047;
        icmp_ln1113_reg_1051 <= icmp_ln1113_fu_292_p2;
        not_exitcond_flatten2827_mid22906163_reg_1075 <= not_exitcond_flatten2827_mid22906163_fu_334_p2;
        xor_ln1112_reg_1058 <= xor_ln1112_fu_298_p2;
    end
end
always @ (*) begin
    if (((icmp_ln1112_fu_266_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1112_reg_1047_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten2907_load = 26'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten2907_load = indvar_flatten2907_fu_156;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        ap_sig_allocacmp_v575_load = grp_fu_953_p3;
    end else begin
        ap_sig_allocacmp_v575_load = v575_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v17_EN_A_local = 1'b1;
    end else begin
        v17_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v36_ce1_local = 1'b1;
    end else begin
        v36_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln1116_1_reg_1133_pp0_iter7_reg == 1'd1) & (icmp_ln1117_1_reg_1129_pp0_iter7_reg == 1'd1) & (icmp_ln1118_1_reg_1125_pp0_iter7_reg == 1'd1))) begin
        v36_we1_local = 1'b1;
    end else begin
        v36_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v37_ce0_local = 1'b1;
    end else begin
        v37_ce0_local = 1'b0;
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
assign add_ln1112_1_fu_272_p2 = (ap_sig_allocacmp_indvar_flatten2907_load + 26'd1);
assign add_ln1112_fu_668_p2 = (v567_fu_152 + 10'd1);
assign add_ln1113_1_fu_392_p2 = (indvar_flatten2861_fu_148 + 18'd1);
assign add_ln1113_fu_465_p2 = (select_ln1112_fu_436_p3 + 3'd1);
assign add_ln1114_1_fu_378_p2 = (indvar_flatten2825_fu_140 + 16'd1);
assign add_ln1114_fu_692_p2 = (v569_mid22832_fu_685_p3 + 3'd1);
assign add_ln1115_1_fu_746_p2 = (tmp_fu_734_p3 + zext_ln1115_2_fu_742_p1);
assign add_ln1115_fu_728_p2 = (tmp_78_fu_717_p3 + zext_ln1115_1_fu_725_p1);
assign add_ln1116_1_fu_364_p2 = (indvar_flatten2799_fu_132 + 14'd1);
assign add_ln1116_fu_506_p2 = (v570_mid22806_fu_488_p3 + 10'd1);
assign add_ln1117_1_fu_623_p2 = (indvar_flatten2784_fu_124 + 4'd1);
assign add_ln1117_fu_561_p2 = (v571_mid22791_fu_522_p3 + 2'd1);
assign add_ln1118_fu_599_p2 = (v572_mid2_fu_583_p3 + 2'd1);
assign add_ln1119_1_fu_832_p2 = (sub_ln1119_1_fu_801_p2 + zext_ln1119_2_fu_828_p1);
assign add_ln1119_2_fu_881_p2 = (sub_ln1118_fu_862_p2 + zext_ln1119_4_fu_877_p1);
assign add_ln1119_fu_871_p2 = (zext_ln1118_fu_868_p1 + select_ln1114_fu_698_p3);
assign add_ln1120_1_fu_810_p2 = (sub_ln1119_fu_777_p2 + zext_ln1120_2_fu_807_p1);
assign add_ln1120_2_fu_916_p2 = (sub_ln1117_fu_907_p2 + zext_ln1120_4_fu_913_p1);
assign add_ln1120_fu_755_p2 = (zext_ln1115_fu_713_p1 + zext_ln1120_fu_752_p1);
assign and_ln1112_1_fu_460_p2 = (xor_ln1112_reg_1058 & icmp_ln1117_fu_454_p2);
assign and_ln1112_2_fu_340_p2 = (xor_ln1112_fu_298_p2 & icmp_ln1116_fu_304_p2);
assign and_ln1112_3_fu_316_p2 = (xor_ln1112_fu_298_p2 & icmp_ln1114_fu_310_p2);
assign and_ln1112_fu_449_p2 = (xor_ln1112_reg_1058 & icmp_ln1118_fu_443_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_155_fu_352_p2 = (exitcond_flatten2801_mid22860_fu_346_p2 | and_ln1112_3_fu_316_p2);
assign empty_156_fu_358_p2 = (icmp_ln1113_fu_292_p2 | empty_155_fu_352_p2);
assign empty_157_fu_512_p2 = (exitcond_flatten2801_mid22860_reg_1081 | exitcond_flatten2786_mid22824_fu_500_p2);
assign empty_158_fu_517_p2 = (empty_reg_1069 | empty_157_fu_512_p2);
assign empty_159_fu_567_p2 = (exitcond_flatten2786_mid22824_fu_500_p2 | empty_155_reg_1089);
assign empty_160_fu_572_p2 = (icmp_ln1118_mid22798_fu_547_p2 | empty_159_fu_567_p2);
assign empty_161_fu_578_p2 = (icmp_ln1113_reg_1051 | empty_160_fu_572_p2);
assign empty_162_fu_823_p2 = (zext_ln1117_fu_820_p1 + select_ln1113_reg_1100);
assign empty_fu_322_p2 = (icmp_ln1113_fu_292_p2 | and_ln1112_3_fu_316_p2);
assign exitcond_flatten2786_mid22824_fu_500_p2 = (not_exitcond_flatten2801_mid22860_fu_495_p2 & exitcond_flatten2786_mid22856_fu_476_p2);
assign exitcond_flatten2786_mid22856_fu_476_p2 = (not_exitcond_flatten2827_mid22906163_reg_1075 & and_ln1112_1_fu_460_p2);
assign exitcond_flatten2786_mid22856_not_fu_530_p2 = (exitcond_flatten2786_mid22856_fu_476_p2 ^ 1'd1);
assign exitcond_flatten2801_mid22860_fu_346_p2 = (not_exitcond_flatten2827_mid22906163_fu_334_p2 & and_ln1112_2_fu_340_p2);
assign exitcond_flatten2827_not164_fu_328_p2 = (icmp_ln1114_fu_310_p2 ^ 1'd1);
assign grp_fu_953_p1 = grp_fu_953_p10;
assign grp_fu_953_p10 = v37_q0;
assign grp_fu_953_p2 = ((empty_156_reg_1094_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v575_load);
assign icmp_ln1112_fu_266_p2 = ((ap_sig_allocacmp_indvar_flatten2907_load == 26'd37748736) ? 1'b1 : 1'b0);
assign icmp_ln1113_fu_292_p2 = ((indvar_flatten2861_fu_148 == 18'd73728) ? 1'b1 : 1'b0);
assign icmp_ln1114_fu_310_p2 = ((indvar_flatten2825_fu_140 == 16'd18432) ? 1'b1 : 1'b0);
assign icmp_ln1116_1_fu_617_p2 = ((select_ln1116_fu_553_p3 == 10'd511) ? 1'b1 : 1'b0);
assign icmp_ln1116_fu_304_p2 = ((indvar_flatten2799_fu_132 == 14'd4608) ? 1'b1 : 1'b0);
assign icmp_ln1117_1_fu_611_p2 = ((select_ln1117_fu_591_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln1117_fu_454_p2 = ((indvar_flatten2784_fu_124 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln1118_1_fu_605_p2 = ((add_ln1118_fu_599_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln1118_fu_443_p2 = ((v572_fu_116 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln1118_mid22798_fu_547_p2 = (not_exitcond_flatten2786_mid22824_fu_536_p2 & icmp_ln1118_mid22820_fu_541_p2);
assign icmp_ln1118_mid22820_fu_541_p2 = (not_exitcond_flatten2801_mid22860_fu_495_p2 & icmp_ln1118_mid22852_fu_471_p2);
assign icmp_ln1118_mid22852_fu_471_p2 = (not_exitcond_flatten2827_mid22906163_reg_1075 & and_ln1112_fu_449_p2);
assign not_exitcond_flatten2786_mid22824_fu_536_p2 = (exitcond_flatten2801_mid22860_reg_1081 | exitcond_flatten2786_mid22856_not_fu_530_p2);
assign not_exitcond_flatten2801_mid22860_fu_495_p2 = (exitcond_flatten2801_mid22860_reg_1081 ^ 1'd1);
assign not_exitcond_flatten2827_mid22906163_fu_334_p2 = (icmp_ln1113_fu_292_p2 | exitcond_flatten2827_not164_fu_328_p2);
assign p_shl_fu_783_p3 = {{select_ln1116_reg_1106}, {3'd0}};
assign select_ln1112_1_fu_674_p3 = ((icmp_ln1113_reg_1051_pp0_iter2_reg[0:0] == 1'b1) ? add_ln1112_fu_668_p2 : v567_fu_152);
assign select_ln1112_fu_436_p3 = ((icmp_ln1113_reg_1051[0:0] == 1'b1) ? 3'd0 : v568_fu_144);
assign select_ln1113_1_fu_398_p3 = ((icmp_ln1113_fu_292_p2[0:0] == 1'b1) ? 18'd1 : add_ln1113_1_fu_392_p2);
assign select_ln1113_fu_481_p3 = ((and_ln1112_3_reg_1064[0:0] == 1'b1) ? add_ln1113_fu_465_p2 : select_ln1112_fu_436_p3);
assign select_ln1114_1_fu_384_p3 = ((empty_fu_322_p2[0:0] == 1'b1) ? 16'd1 : add_ln1114_1_fu_378_p2);
assign select_ln1114_fu_698_p3 = ((exitcond_flatten2801_mid22860_reg_1081_pp0_iter2_reg[0:0] == 1'b1) ? add_ln1114_fu_692_p2 : v569_mid22832_fu_685_p3);
assign select_ln1116_1_fu_370_p3 = ((empty_156_fu_358_p2[0:0] == 1'b1) ? 14'd1 : add_ln1116_1_fu_364_p2);
assign select_ln1116_fu_553_p3 = ((exitcond_flatten2786_mid22824_fu_500_p2[0:0] == 1'b1) ? add_ln1116_fu_506_p2 : v570_mid22806_fu_488_p3);
assign select_ln1117_1_fu_629_p3 = ((empty_158_fu_517_p2[0:0] == 1'b1) ? 4'd1 : add_ln1117_1_fu_623_p2);
assign select_ln1117_fu_591_p3 = ((icmp_ln1118_mid22798_fu_547_p2[0:0] == 1'b1) ? add_ln1117_fu_561_p2 : v571_mid22791_fu_522_p3);
assign sub_ln1117_fu_907_p2 = (tmp_156_fu_897_p3 - zext_ln1120_3_fu_904_p1);
assign sub_ln1118_fu_862_p2 = (tmp_158_fu_850_p3 - zext_ln1119_3_fu_858_p1);
assign sub_ln1119_1_fu_801_p2 = (p_shl_fu_783_p3 - zext_ln1119_fu_797_p1);
assign sub_ln1119_fu_777_p2 = (tmp_154_fu_765_p3 - zext_ln1120_1_fu_773_p1);
assign tmp_154_fu_765_p3 = {{trunc_ln1120_fu_761_p1}, {2'd0}};
assign tmp_155_fu_790_p3 = {{select_ln1116_reg_1106}, {1'd0}};
assign tmp_156_fu_897_p3 = {{trunc_ln1120_1_reg_1147}, {2'd0}};
assign tmp_157_fu_842_p3 = {{add_ln1119_1_fu_832_p2}, {1'd0}};
assign tmp_158_fu_850_p3 = {{trunc_ln1119_fu_838_p1}, {3'd0}};
assign tmp_78_fu_717_p3 = {{trunc_ln1113_fu_681_p1}, {2'd0}};
assign tmp_fu_734_p3 = {{add_ln1115_fu_728_p2}, {2'd0}};
assign tmp_s_fu_705_p3 = {{select_ln1112_1_fu_674_p3}, {9'd0}};
assign trunc_ln1113_fu_681_p1 = select_ln1112_1_fu_674_p3[8:0];
assign trunc_ln1119_fu_838_p1 = add_ln1119_1_fu_832_p2[11:0];
assign trunc_ln1120_1_fu_816_p1 = add_ln1120_1_fu_810_p2[19:0];
assign trunc_ln1120_fu_761_p1 = add_ln1120_fu_755_p2[18:0];
assign v17_Addr_A = v17_Addr_A_orig << 32'd0;
assign v17_Addr_A_orig = zext_ln1120_5_fu_922_p1;
assign v17_Din_A = 8'd0;
assign v17_EN_A = v17_EN_A_local;
assign v17_WEN_A = 1'd0;
assign v36_address1 = zext_ln1115_3_fu_945_p1;
assign v36_ce1 = v36_ce1_local;
assign v36_d1 = grp_fu_953_p3;
assign v36_we1 = v36_we1_local;
assign v37_address0 = zext_ln1119_5_fu_927_p1;
assign v37_ce0 = v37_ce0_local;
assign v569_mid22832_fu_685_p3 = ((empty_reg_1069_pp0_iter2_reg[0:0] == 1'b1) ? 3'd0 : v569_fu_136);
assign v570_mid22806_fu_488_p3 = ((empty_156_reg_1094[0:0] == 1'b1) ? 10'd0 : v570_fu_128);
assign v571_mid22791_fu_522_p3 = ((empty_158_fu_517_p2[0:0] == 1'b1) ? 2'd0 : v571_fu_120);
assign v572_mid2_fu_583_p3 = ((empty_161_fu_578_p2[0:0] == 1'b1) ? 2'd0 : v572_fu_116);
assign xor_ln1112_fu_298_p2 = (icmp_ln1113_fu_292_p2 ^ 1'd1);
assign zext_ln1115_1_fu_725_p1 = select_ln1113_reg_1100;
assign zext_ln1115_2_fu_742_p1 = select_ln1114_fu_698_p3;
assign zext_ln1115_3_fu_945_p1 = add_ln1115_1_reg_1137_pp0_iter7_reg;
assign zext_ln1115_fu_713_p1 = tmp_s_fu_705_p3;
assign zext_ln1117_fu_820_p1 = select_ln1117_reg_1119;
assign zext_ln1118_fu_868_p1 = v572_mid2_reg_1113;
assign zext_ln1119_2_fu_828_p1 = empty_162_fu_823_p2;
assign zext_ln1119_3_fu_858_p1 = tmp_157_fu_842_p3;
assign zext_ln1119_4_fu_877_p1 = add_ln1119_fu_871_p2;
assign zext_ln1119_5_fu_927_p1 = add_ln1119_2_reg_1152;
assign zext_ln1119_fu_797_p1 = tmp_155_fu_790_p3;
assign zext_ln1120_1_fu_773_p1 = add_ln1120_fu_755_p2;
assign zext_ln1120_2_fu_807_p1 = select_ln1117_reg_1119;
assign zext_ln1120_3_fu_904_p1 = add_ln1120_1_reg_1142;
assign zext_ln1120_4_fu_913_p1 = v572_mid2_reg_1113_pp0_iter3_reg;
assign zext_ln1120_5_fu_922_p1 = add_ln1120_2_fu_916_p2;
assign zext_ln1120_fu_752_p1 = select_ln1116_reg_1106;
endmodule 
