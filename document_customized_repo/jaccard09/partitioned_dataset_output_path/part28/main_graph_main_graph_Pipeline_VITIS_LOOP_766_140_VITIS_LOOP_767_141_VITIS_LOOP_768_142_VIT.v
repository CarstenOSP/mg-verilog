
module main_graph_main_graph_Pipeline_VITIS_LOOP_766_140_VITIS_LOOP_767_141_VITIS_LOOP_768_142_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v58_address1,v58_ce1,v58_we1,v58_d1,v10_Addr_A,v10_EN_A,v10_WEN_A,v10_Din_A,v10_Dout_A,v59_address0,v59_ce0,v59_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v58_address1;
output   v58_ce1;
output   v58_we1;
output  [7:0] v58_d1;
output  [31:0] v10_Addr_A;
output   v10_EN_A;
output  [0:0] v10_WEN_A;
output  [7:0] v10_Din_A;
input  [7:0] v10_Dout_A;
output  [15:0] v59_address0;
output   v59_ce0;
input  [6:0] v59_q0;
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
wire   [0:0] icmp_ln766_fu_270_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln766_reg_1050;
wire   [0:0] icmp_ln767_fu_282_p2;
reg   [0:0] icmp_ln767_reg_1054;
reg   [0:0] icmp_ln767_reg_1054_pp0_iter2_reg;
wire   [0:0] xor_ln766_fu_288_p2;
reg   [0:0] xor_ln766_reg_1063;
wire   [0:0] icmp_ln768_fu_294_p2;
reg   [0:0] icmp_ln768_reg_1070;
wire   [0:0] and_ln766_3_fu_300_p2;
reg   [0:0] and_ln766_3_reg_1075;
reg   [0:0] and_ln766_3_reg_1075_pp0_iter2_reg;
wire   [0:0] empty_fu_306_p2;
reg   [0:0] empty_reg_1081;
reg   [0:0] empty_reg_1081_pp0_iter2_reg;
wire   [0:0] exitcond_flatten1544_mid21603_fu_419_p2;
reg   [0:0] exitcond_flatten1544_mid21603_reg_1087;
wire   [0:0] empty_56_fu_430_p2;
reg   [0:0] empty_56_reg_1092;
reg   [0:0] empty_56_reg_1092_pp0_iter3_reg;
reg   [0:0] empty_56_reg_1092_pp0_iter4_reg;
reg   [0:0] empty_56_reg_1092_pp0_iter5_reg;
reg   [0:0] empty_56_reg_1092_pp0_iter6_reg;
wire   [0:0] exitcond_flatten1529_mid21567_fu_441_p2;
reg   [0:0] exitcond_flatten1529_mid21567_reg_1098;
wire   [0:0] empty_58_fu_453_p2;
reg   [0:0] empty_58_reg_1103;
wire   [0:0] icmp_ln772_mid21541_fu_476_p2;
reg   [0:0] icmp_ln772_mid21541_reg_1108;
wire   [1:0] v364_mid2_fu_499_p3;
reg   [1:0] v364_mid2_reg_1113;
reg   [1:0] v364_mid2_reg_1113_pp0_iter3_reg;
wire   [0:0] icmp_ln772_1_fu_513_p2;
reg   [0:0] icmp_ln772_1_reg_1119;
reg   [0:0] icmp_ln772_1_reg_1119_pp0_iter3_reg;
reg   [0:0] icmp_ln772_1_reg_1119_pp0_iter4_reg;
reg   [0:0] icmp_ln772_1_reg_1119_pp0_iter5_reg;
reg   [0:0] icmp_ln772_1_reg_1119_pp0_iter6_reg;
reg   [0:0] icmp_ln772_1_reg_1119_pp0_iter7_reg;
wire   [4:0] select_ln768_fu_634_p3;
reg   [4:0] select_ln768_reg_1123;
wire   [10:0] add_ln769_fu_698_p2;
reg   [10:0] add_ln769_reg_1129;
wire   [16:0] add_ln774_1_fu_770_p2;
reg   [16:0] add_ln774_1_reg_1134;
wire   [15:0] trunc_ln774_1_fu_776_p1;
reg   [15:0] trunc_ln774_1_reg_1139;
wire   [12:0] add_ln773_1_fu_794_p2;
reg   [12:0] add_ln773_1_reg_1144;
wire   [11:0] trunc_ln773_fu_800_p1;
reg   [11:0] trunc_ln773_reg_1149;
wire   [0:0] icmp_ln771_1_fu_804_p2;
reg   [0:0] icmp_ln771_1_reg_1154;
reg   [0:0] icmp_ln771_1_reg_1154_pp0_iter4_reg;
reg   [0:0] icmp_ln771_1_reg_1154_pp0_iter5_reg;
reg   [0:0] icmp_ln771_1_reg_1154_pp0_iter6_reg;
reg   [0:0] icmp_ln771_1_reg_1154_pp0_iter7_reg;
wire   [0:0] icmp_ln770_1_fu_810_p2;
reg   [0:0] icmp_ln770_1_reg_1158;
reg   [0:0] icmp_ln770_1_reg_1158_pp0_iter4_reg;
reg   [0:0] icmp_ln770_1_reg_1158_pp0_iter5_reg;
reg   [0:0] icmp_ln770_1_reg_1158_pp0_iter6_reg;
reg   [0:0] icmp_ln770_1_reg_1158_pp0_iter7_reg;
wire   [14:0] add_ln769_1_fu_851_p2;
reg   [14:0] add_ln769_1_reg_1162;
reg   [14:0] add_ln769_1_reg_1162_pp0_iter5_reg;
reg   [14:0] add_ln769_1_reg_1162_pp0_iter6_reg;
reg   [14:0] add_ln769_1_reg_1162_pp0_iter7_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln774_5_fu_906_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln773_5_fu_929_p1;
wire   [63:0] zext_ln769_3_fu_948_p1;
reg   [7:0] v367_fu_110;
wire   [7:0] grp_fu_956_p3;
reg   [7:0] ap_sig_allocacmp_v367_load;
wire    ap_loop_init;
reg   [1:0] v364_fu_114;
wire   [1:0] add_ln772_fu_507_p2;
reg   [1:0] v363_fu_118;
wire   [1:0] select_ln771_fu_667_p3;
reg   [3:0] indvar_flatten1527_fu_122;
wire   [3:0] select_ln771_1_fu_525_p3;
reg   [7:0] v362_fu_126;
wire   [7:0] select_ln770_fu_654_p3;
reg   [11:0] indvar_flatten1542_fu_130;
wire   [11:0] select_ln770_1_fu_539_p3;
reg   [4:0] v361_fu_134;
reg   [15:0] indvar_flatten1568_fu_138;
wire   [15:0] select_ln768_1_fu_318_p3;
reg   [4:0] v360_fu_142;
wire   [4:0] select_ln767_fu_614_p3;
reg   [19:0] indvar_flatten1604_fu_146;
wire   [19:0] select_ln767_1_fu_332_p3;
reg   [7:0] v359_fu_150;
wire   [7:0] select_ln766_1_fu_590_p3;
reg   [25:0] indvar_flatten1650_fu_154;
wire   [25:0] add_ln766_1_fu_276_p2;
reg    v59_ce0_local;
reg    v10_EN_A_local;
wire   [31:0] v10_Addr_A_orig;
reg    v58_we1_local;
reg    v58_ce1_local;
wire   [15:0] add_ln768_1_fu_312_p2;
wire   [19:0] add_ln767_1_fu_326_p2;
wire   [0:0] icmp_ln772_fu_364_p2;
wire   [0:0] icmp_ln771_fu_375_p2;
wire   [0:0] exitcond_flatten1570_not91_fu_392_p2;
wire   [0:0] and_ln766_fu_370_p2;
wire   [0:0] not_exitcond_flatten1570_mid2164990_fu_397_p2;
wire   [0:0] and_ln766_1_fu_381_p2;
wire   [0:0] icmp_ln770_fu_386_p2;
wire   [0:0] and_ln766_2_fu_414_p2;
wire   [0:0] empty_55_fu_425_p2;
wire   [0:0] exitcond_flatten1529_mid21599_fu_408_p2;
wire   [0:0] not_exitcond_flatten1544_mid21603_fu_435_p2;
wire   [0:0] empty_57_fu_447_p2;
wire   [0:0] exitcond_flatten1529_mid21599_not_fu_458_p2;
wire   [0:0] icmp_ln772_mid21595_fu_402_p2;
wire   [0:0] icmp_ln772_mid21563_fu_470_p2;
wire   [0:0] not_exitcond_flatten1529_mid21567_fu_464_p2;
wire   [0:0] empty_59_fu_482_p2;
wire   [0:0] empty_60_fu_488_p2;
wire   [0:0] empty_61_fu_494_p2;
wire   [3:0] add_ln771_1_fu_519_p2;
wire   [11:0] add_ln770_1_fu_533_p2;
wire   [7:0] add_ln766_fu_577_p2;
wire   [4:0] select_ln766_fu_583_p3;
wire   [4:0] add_ln767_fu_601_p2;
wire   [4:0] v361_mid21575_fu_607_p3;
wire   [4:0] add_ln768_fu_621_p2;
wire   [7:0] v362_mid21549_fu_627_p3;
wire   [7:0] add_ln770_fu_641_p2;
wire   [1:0] v363_mid21534_fu_647_p3;
wire   [1:0] add_ln771_fu_661_p2;
wire   [14:0] tmp_s_fu_674_p3;
wire   [6:0] trunc_ln767_fu_597_p1;
wire   [10:0] tmp_6_fu_686_p3;
wire   [10:0] zext_ln769_1_fu_694_p1;
wire   [15:0] zext_ln769_fu_682_p1;
wire   [15:0] zext_ln774_fu_704_p1;
wire   [15:0] add_ln774_fu_708_p2;
wire   [14:0] trunc_ln774_fu_714_p1;
wire   [16:0] tmp_40_fu_718_p3;
wire   [16:0] zext_ln774_1_fu_726_p1;
wire   [11:0] tmp_41_fu_736_p3;
wire   [8:0] tmp_42_fu_748_p3;
wire   [12:0] zext_ln773_fu_744_p1;
wire   [12:0] zext_ln773_2_fu_756_p1;
wire   [16:0] sub_ln773_fu_730_p2;
wire   [16:0] zext_ln774_2_fu_766_p1;
wire   [4:0] zext_ln771_fu_780_p1;
wire   [4:0] empty_62_fu_784_p2;
wire   [12:0] add_ln773_3_fu_760_p2;
wire   [12:0] zext_ln773_3_fu_790_p1;
wire   [14:0] tmp_fu_841_p3;
wire   [14:0] zext_ln769_2_fu_848_p1;
wire   [17:0] tmp_43_fu_857_p3;
wire   [17:0] zext_ln774_3_fu_864_p1;
wire   [13:0] tmp_44_fu_880_p3;
wire   [15:0] p_shl_fu_873_p3;
wire   [15:0] zext_ln772_fu_887_p1;
wire   [17:0] sub_ln771_fu_867_p2;
wire   [17:0] zext_ln774_4_fu_897_p1;
wire   [17:0] add_ln774_2_fu_900_p2;
wire   [4:0] zext_ln772_1_fu_911_p1;
wire   [4:0] add_ln773_fu_914_p2;
wire   [15:0] add_ln772_1_fu_891_p2;
wire   [15:0] zext_ln773_4_fu_919_p1;
wire   [15:0] add_ln773_2_fu_923_p2;
wire   [6:0] grp_fu_956_p1;
wire   [7:0] grp_fu_956_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 v367_fu_110 = 8'd0;
#0 v364_fu_114 = 2'd0;
#0 v363_fu_118 = 2'd0;
#0 indvar_flatten1527_fu_122 = 4'd0;
#0 v362_fu_126 = 8'd0;
#0 indvar_flatten1542_fu_130 = 12'd0;
#0 v361_fu_134 = 5'd0;
#0 indvar_flatten1568_fu_138 = 16'd0;
#0 v360_fu_142 = 5'd0;
#0 indvar_flatten1604_fu_146 = 20'd0;
#0 v359_fu_150 = 8'd0;
#0 indvar_flatten1650_fu_154 = 26'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U212(.clk(ap_clk),.reset(ap_rst),.din0(v10_Dout_A),.din1(grp_fu_956_p1),.din2(grp_fu_956_p2),.ce(1'b1),.dout(grp_fu_956_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            indvar_flatten1527_fu_122 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln766_reg_1050 == 1'd0))) begin
            indvar_flatten1527_fu_122 <= select_ln771_1_fu_525_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            indvar_flatten1542_fu_130 <= 12'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln766_reg_1050 == 1'd0))) begin
            indvar_flatten1542_fu_130 <= select_ln770_1_fu_539_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1568_fu_138 <= 16'd0;
        end else if (((icmp_ln766_fu_270_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1568_fu_138 <= select_ln768_1_fu_318_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1604_fu_146 <= 20'd0;
        end else if (((icmp_ln766_fu_270_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1604_fu_146 <= select_ln767_1_fu_332_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1650_fu_154 <= 26'd0;
        end else if (((icmp_ln766_fu_270_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1650_fu_154 <= add_ln766_1_fu_276_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v359_fu_150 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v359_fu_150 <= select_ln766_1_fu_590_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v360_fu_142 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v360_fu_142 <= select_ln767_fu_614_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v361_fu_134 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v361_fu_134 <= select_ln768_fu_634_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v362_fu_126 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v362_fu_126 <= select_ln770_fu_654_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v363_fu_118 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v363_fu_118 <= select_ln771_fu_667_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v364_fu_114 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln766_reg_1050 == 1'd0))) begin
            v364_fu_114 <= add_ln772_fu_507_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v367_fu_110 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v367_fu_110 <= grp_fu_956_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln769_1_reg_1162 <= add_ln769_1_fu_851_p2;
        add_ln769_1_reg_1162_pp0_iter5_reg <= add_ln769_1_reg_1162;
        add_ln769_1_reg_1162_pp0_iter6_reg <= add_ln769_1_reg_1162_pp0_iter5_reg;
        add_ln769_1_reg_1162_pp0_iter7_reg <= add_ln769_1_reg_1162_pp0_iter6_reg;
        add_ln769_reg_1129 <= add_ln769_fu_698_p2;
        add_ln773_1_reg_1144 <= add_ln773_1_fu_794_p2;
        add_ln774_1_reg_1134 <= add_ln774_1_fu_770_p2;
        and_ln766_3_reg_1075_pp0_iter2_reg <= and_ln766_3_reg_1075;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_56_reg_1092 <= empty_56_fu_430_p2;
        empty_56_reg_1092_pp0_iter3_reg <= empty_56_reg_1092;
        empty_56_reg_1092_pp0_iter4_reg <= empty_56_reg_1092_pp0_iter3_reg;
        empty_56_reg_1092_pp0_iter5_reg <= empty_56_reg_1092_pp0_iter4_reg;
        empty_56_reg_1092_pp0_iter6_reg <= empty_56_reg_1092_pp0_iter5_reg;
        empty_58_reg_1103 <= empty_58_fu_453_p2;
        empty_reg_1081_pp0_iter2_reg <= empty_reg_1081;
        exitcond_flatten1529_mid21567_reg_1098 <= exitcond_flatten1529_mid21567_fu_441_p2;
        exitcond_flatten1544_mid21603_reg_1087 <= exitcond_flatten1544_mid21603_fu_419_p2;
        icmp_ln767_reg_1054_pp0_iter2_reg <= icmp_ln767_reg_1054;
        icmp_ln770_1_reg_1158 <= icmp_ln770_1_fu_810_p2;
        icmp_ln770_1_reg_1158_pp0_iter4_reg <= icmp_ln770_1_reg_1158;
        icmp_ln770_1_reg_1158_pp0_iter5_reg <= icmp_ln770_1_reg_1158_pp0_iter4_reg;
        icmp_ln770_1_reg_1158_pp0_iter6_reg <= icmp_ln770_1_reg_1158_pp0_iter5_reg;
        icmp_ln770_1_reg_1158_pp0_iter7_reg <= icmp_ln770_1_reg_1158_pp0_iter6_reg;
        icmp_ln771_1_reg_1154 <= icmp_ln771_1_fu_804_p2;
        icmp_ln771_1_reg_1154_pp0_iter4_reg <= icmp_ln771_1_reg_1154;
        icmp_ln771_1_reg_1154_pp0_iter5_reg <= icmp_ln771_1_reg_1154_pp0_iter4_reg;
        icmp_ln771_1_reg_1154_pp0_iter6_reg <= icmp_ln771_1_reg_1154_pp0_iter5_reg;
        icmp_ln771_1_reg_1154_pp0_iter7_reg <= icmp_ln771_1_reg_1154_pp0_iter6_reg;
        icmp_ln772_1_reg_1119 <= icmp_ln772_1_fu_513_p2;
        icmp_ln772_1_reg_1119_pp0_iter3_reg <= icmp_ln772_1_reg_1119;
        icmp_ln772_1_reg_1119_pp0_iter4_reg <= icmp_ln772_1_reg_1119_pp0_iter3_reg;
        icmp_ln772_1_reg_1119_pp0_iter5_reg <= icmp_ln772_1_reg_1119_pp0_iter4_reg;
        icmp_ln772_1_reg_1119_pp0_iter6_reg <= icmp_ln772_1_reg_1119_pp0_iter5_reg;
        icmp_ln772_1_reg_1119_pp0_iter7_reg <= icmp_ln772_1_reg_1119_pp0_iter6_reg;
        icmp_ln772_mid21541_reg_1108 <= icmp_ln772_mid21541_fu_476_p2;
        select_ln768_reg_1123 <= select_ln768_fu_634_p3;
        trunc_ln773_reg_1149 <= trunc_ln773_fu_800_p1;
        trunc_ln774_1_reg_1139 <= trunc_ln774_1_fu_776_p1;
        v364_mid2_reg_1113 <= v364_mid2_fu_499_p3;
        v364_mid2_reg_1113_pp0_iter3_reg <= v364_mid2_reg_1113;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln766_3_reg_1075 <= and_ln766_3_fu_300_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        empty_reg_1081 <= empty_fu_306_p2;
        icmp_ln766_reg_1050 <= icmp_ln766_fu_270_p2;
        icmp_ln767_reg_1054 <= icmp_ln767_fu_282_p2;
        icmp_ln768_reg_1070 <= icmp_ln768_fu_294_p2;
        xor_ln766_reg_1063 <= xor_ln766_fu_288_p2;
    end
end
always @ (*) begin
    if (((icmp_ln766_fu_270_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln766_reg_1050 == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        ap_sig_allocacmp_v367_load = grp_fu_956_p3;
    end else begin
        ap_sig_allocacmp_v367_load = v367_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v10_EN_A_local = 1'b1;
    end else begin
        v10_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v58_ce1_local = 1'b1;
    end else begin
        v58_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln770_1_reg_1158_pp0_iter7_reg == 1'd1) & (icmp_ln771_1_reg_1154_pp0_iter7_reg == 1'd1) & (icmp_ln772_1_reg_1119_pp0_iter7_reg == 1'd1))) begin
        v58_we1_local = 1'b1;
    end else begin
        v58_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v59_ce0_local = 1'b1;
    end else begin
        v59_ce0_local = 1'b0;
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
assign add_ln766_1_fu_276_p2 = (indvar_flatten1650_fu_154 + 26'd1);
assign add_ln766_fu_577_p2 = (v359_fu_150 + 8'd1);
assign add_ln767_1_fu_326_p2 = (indvar_flatten1604_fu_146 + 20'd1);
assign add_ln767_fu_601_p2 = (select_ln766_fu_583_p3 + 5'd1);
assign add_ln768_1_fu_312_p2 = (indvar_flatten1568_fu_138 + 16'd1);
assign add_ln768_fu_621_p2 = (v361_mid21575_fu_607_p3 + 5'd1);
assign add_ln769_1_fu_851_p2 = (tmp_fu_841_p3 + zext_ln769_2_fu_848_p1);
assign add_ln769_fu_698_p2 = (tmp_6_fu_686_p3 + zext_ln769_1_fu_694_p1);
assign add_ln770_1_fu_533_p2 = (indvar_flatten1542_fu_130 + 12'd1);
assign add_ln770_fu_641_p2 = (v362_mid21549_fu_627_p3 + 8'd1);
assign add_ln771_1_fu_519_p2 = (indvar_flatten1527_fu_122 + 4'd1);
assign add_ln771_fu_661_p2 = (v363_mid21534_fu_647_p3 + 2'd1);
assign add_ln772_1_fu_891_p2 = (p_shl_fu_873_p3 + zext_ln772_fu_887_p1);
assign add_ln772_fu_507_p2 = (v364_mid2_fu_499_p3 + 2'd1);
assign add_ln773_1_fu_794_p2 = (add_ln773_3_fu_760_p2 + zext_ln773_3_fu_790_p1);
assign add_ln773_2_fu_923_p2 = (add_ln772_1_fu_891_p2 + zext_ln773_4_fu_919_p1);
assign add_ln773_3_fu_760_p2 = (zext_ln773_fu_744_p1 + zext_ln773_2_fu_756_p1);
assign add_ln773_fu_914_p2 = (zext_ln772_1_fu_911_p1 + select_ln768_reg_1123);
assign add_ln774_1_fu_770_p2 = (sub_ln773_fu_730_p2 + zext_ln774_2_fu_766_p1);
assign add_ln774_2_fu_900_p2 = (sub_ln771_fu_867_p2 + zext_ln774_4_fu_897_p1);
assign add_ln774_fu_708_p2 = (zext_ln769_fu_682_p1 + zext_ln774_fu_704_p1);
assign and_ln766_1_fu_381_p2 = (xor_ln766_reg_1063 & icmp_ln771_fu_375_p2);
assign and_ln766_2_fu_414_p2 = (xor_ln766_reg_1063 & icmp_ln770_fu_386_p2);
assign and_ln766_3_fu_300_p2 = (xor_ln766_fu_288_p2 & icmp_ln768_fu_294_p2);
assign and_ln766_fu_370_p2 = (xor_ln766_reg_1063 & icmp_ln772_fu_364_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_55_fu_425_p2 = (exitcond_flatten1544_mid21603_fu_419_p2 | and_ln766_3_reg_1075);
assign empty_56_fu_430_p2 = (icmp_ln767_reg_1054 | empty_55_fu_425_p2);
assign empty_57_fu_447_p2 = (exitcond_flatten1544_mid21603_fu_419_p2 | exitcond_flatten1529_mid21567_fu_441_p2);
assign empty_58_fu_453_p2 = (empty_reg_1081 | empty_57_fu_447_p2);
assign empty_59_fu_482_p2 = (exitcond_flatten1529_mid21567_fu_441_p2 | empty_55_fu_425_p2);
assign empty_60_fu_488_p2 = (icmp_ln772_mid21541_fu_476_p2 | empty_59_fu_482_p2);
assign empty_61_fu_494_p2 = (icmp_ln767_reg_1054 | empty_60_fu_488_p2);
assign empty_62_fu_784_p2 = (zext_ln771_fu_780_p1 + select_ln767_fu_614_p3);
assign empty_fu_306_p2 = (icmp_ln767_fu_282_p2 | and_ln766_3_fu_300_p2);
assign exitcond_flatten1529_mid21567_fu_441_p2 = (not_exitcond_flatten1544_mid21603_fu_435_p2 & exitcond_flatten1529_mid21599_fu_408_p2);
assign exitcond_flatten1529_mid21599_fu_408_p2 = (not_exitcond_flatten1570_mid2164990_fu_397_p2 & and_ln766_1_fu_381_p2);
assign exitcond_flatten1529_mid21599_not_fu_458_p2 = (exitcond_flatten1529_mid21599_fu_408_p2 ^ 1'd1);
assign exitcond_flatten1544_mid21603_fu_419_p2 = (not_exitcond_flatten1570_mid2164990_fu_397_p2 & and_ln766_2_fu_414_p2);
assign exitcond_flatten1570_not91_fu_392_p2 = (icmp_ln768_reg_1070 ^ 1'd1);
assign grp_fu_956_p1 = grp_fu_956_p10;
assign grp_fu_956_p10 = v59_q0;
assign grp_fu_956_p2 = ((empty_56_reg_1092_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v367_load);
assign icmp_ln766_fu_270_p2 = ((indvar_flatten1650_fu_154 == 26'd37748736) ? 1'b1 : 1'b0);
assign icmp_ln767_fu_282_p2 = ((indvar_flatten1604_fu_146 == 20'd294912) ? 1'b1 : 1'b0);
assign icmp_ln768_fu_294_p2 = ((indvar_flatten1568_fu_138 == 16'd18432) ? 1'b1 : 1'b0);
assign icmp_ln770_1_fu_810_p2 = ((select_ln770_fu_654_p3 == 8'd127) ? 1'b1 : 1'b0);
assign icmp_ln770_fu_386_p2 = ((indvar_flatten1542_fu_130 == 12'd1152) ? 1'b1 : 1'b0);
assign icmp_ln771_1_fu_804_p2 = ((select_ln771_fu_667_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln771_fu_375_p2 = ((indvar_flatten1527_fu_122 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln772_1_fu_513_p2 = ((add_ln772_fu_507_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln772_fu_364_p2 = ((v364_fu_114 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln772_mid21541_fu_476_p2 = (not_exitcond_flatten1529_mid21567_fu_464_p2 & icmp_ln772_mid21563_fu_470_p2);
assign icmp_ln772_mid21563_fu_470_p2 = (not_exitcond_flatten1544_mid21603_fu_435_p2 & icmp_ln772_mid21595_fu_402_p2);
assign icmp_ln772_mid21595_fu_402_p2 = (not_exitcond_flatten1570_mid2164990_fu_397_p2 & and_ln766_fu_370_p2);
assign not_exitcond_flatten1529_mid21567_fu_464_p2 = (exitcond_flatten1544_mid21603_fu_419_p2 | exitcond_flatten1529_mid21599_not_fu_458_p2);
assign not_exitcond_flatten1544_mid21603_fu_435_p2 = (exitcond_flatten1544_mid21603_fu_419_p2 ^ 1'd1);
assign not_exitcond_flatten1570_mid2164990_fu_397_p2 = (icmp_ln767_reg_1054 | exitcond_flatten1570_not91_fu_392_p2);
assign p_shl_fu_873_p3 = {{trunc_ln773_reg_1149}, {4'd0}};
assign select_ln766_1_fu_590_p3 = ((icmp_ln767_reg_1054_pp0_iter2_reg[0:0] == 1'b1) ? add_ln766_fu_577_p2 : v359_fu_150);
assign select_ln766_fu_583_p3 = ((icmp_ln767_reg_1054_pp0_iter2_reg[0:0] == 1'b1) ? 5'd0 : v360_fu_142);
assign select_ln767_1_fu_332_p3 = ((icmp_ln767_fu_282_p2[0:0] == 1'b1) ? 20'd1 : add_ln767_1_fu_326_p2);
assign select_ln767_fu_614_p3 = ((and_ln766_3_reg_1075_pp0_iter2_reg[0:0] == 1'b1) ? add_ln767_fu_601_p2 : select_ln766_fu_583_p3);
assign select_ln768_1_fu_318_p3 = ((empty_fu_306_p2[0:0] == 1'b1) ? 16'd1 : add_ln768_1_fu_312_p2);
assign select_ln768_fu_634_p3 = ((exitcond_flatten1544_mid21603_reg_1087[0:0] == 1'b1) ? add_ln768_fu_621_p2 : v361_mid21575_fu_607_p3);
assign select_ln770_1_fu_539_p3 = ((empty_56_fu_430_p2[0:0] == 1'b1) ? 12'd1 : add_ln770_1_fu_533_p2);
assign select_ln770_fu_654_p3 = ((exitcond_flatten1529_mid21567_reg_1098[0:0] == 1'b1) ? add_ln770_fu_641_p2 : v362_mid21549_fu_627_p3);
assign select_ln771_1_fu_525_p3 = ((empty_58_fu_453_p2[0:0] == 1'b1) ? 4'd1 : add_ln771_1_fu_519_p2);
assign select_ln771_fu_667_p3 = ((icmp_ln772_mid21541_reg_1108[0:0] == 1'b1) ? add_ln771_fu_661_p2 : v363_mid21534_fu_647_p3);
assign sub_ln771_fu_867_p2 = (tmp_43_fu_857_p3 - zext_ln774_3_fu_864_p1);
assign sub_ln773_fu_730_p2 = (tmp_40_fu_718_p3 - zext_ln774_1_fu_726_p1);
assign tmp_40_fu_718_p3 = {{trunc_ln774_fu_714_p1}, {2'd0}};
assign tmp_41_fu_736_p3 = {{select_ln770_fu_654_p3}, {4'd0}};
assign tmp_42_fu_748_p3 = {{select_ln770_fu_654_p3}, {1'd0}};
assign tmp_43_fu_857_p3 = {{trunc_ln774_1_reg_1139}, {2'd0}};
assign tmp_44_fu_880_p3 = {{add_ln773_1_reg_1144}, {1'd0}};
assign tmp_6_fu_686_p3 = {{trunc_ln767_fu_597_p1}, {4'd0}};
assign tmp_fu_841_p3 = {{add_ln769_reg_1129}, {4'd0}};
assign tmp_s_fu_674_p3 = {{select_ln766_1_fu_590_p3}, {7'd0}};
assign trunc_ln767_fu_597_p1 = select_ln766_1_fu_590_p3[6:0];
assign trunc_ln773_fu_800_p1 = add_ln773_1_fu_794_p2[11:0];
assign trunc_ln774_1_fu_776_p1 = add_ln774_1_fu_770_p2[15:0];
assign trunc_ln774_fu_714_p1 = add_ln774_fu_708_p2[14:0];
assign v10_Addr_A = v10_Addr_A_orig << 32'd0;
assign v10_Addr_A_orig = zext_ln774_5_fu_906_p1;
assign v10_Din_A = 8'd0;
assign v10_EN_A = v10_EN_A_local;
assign v10_WEN_A = 1'd0;
assign v361_mid21575_fu_607_p3 = ((empty_reg_1081_pp0_iter2_reg[0:0] == 1'b1) ? 5'd0 : v361_fu_134);
assign v362_mid21549_fu_627_p3 = ((empty_56_reg_1092[0:0] == 1'b1) ? 8'd0 : v362_fu_126);
assign v363_mid21534_fu_647_p3 = ((empty_58_reg_1103[0:0] == 1'b1) ? 2'd0 : v363_fu_118);
assign v364_mid2_fu_499_p3 = ((empty_61_fu_494_p2[0:0] == 1'b1) ? 2'd0 : v364_fu_114);
assign v58_address1 = zext_ln769_3_fu_948_p1;
assign v58_ce1 = v58_ce1_local;
assign v58_d1 = grp_fu_956_p3;
assign v58_we1 = v58_we1_local;
assign v59_address0 = zext_ln773_5_fu_929_p1;
assign v59_ce0 = v59_ce0_local;
assign xor_ln766_fu_288_p2 = (icmp_ln767_fu_282_p2 ^ 1'd1);
assign zext_ln769_1_fu_694_p1 = select_ln767_fu_614_p3;
assign zext_ln769_2_fu_848_p1 = select_ln768_reg_1123;
assign zext_ln769_3_fu_948_p1 = add_ln769_1_reg_1162_pp0_iter7_reg;
assign zext_ln769_fu_682_p1 = tmp_s_fu_674_p3;
assign zext_ln771_fu_780_p1 = select_ln771_fu_667_p3;
assign zext_ln772_1_fu_911_p1 = v364_mid2_reg_1113_pp0_iter3_reg;
assign zext_ln772_fu_887_p1 = tmp_44_fu_880_p3;
assign zext_ln773_2_fu_756_p1 = tmp_42_fu_748_p3;
assign zext_ln773_3_fu_790_p1 = empty_62_fu_784_p2;
assign zext_ln773_4_fu_919_p1 = add_ln773_fu_914_p2;
assign zext_ln773_5_fu_929_p1 = add_ln773_2_fu_923_p2;
assign zext_ln773_fu_744_p1 = tmp_41_fu_736_p3;
assign zext_ln774_1_fu_726_p1 = add_ln774_fu_708_p2;
assign zext_ln774_2_fu_766_p1 = select_ln771_fu_667_p3;
assign zext_ln774_3_fu_864_p1 = add_ln774_1_reg_1134;
assign zext_ln774_4_fu_897_p1 = v364_mid2_reg_1113_pp0_iter3_reg;
assign zext_ln774_5_fu_906_p1 = add_ln774_2_fu_900_p2;
assign zext_ln774_fu_704_p1 = select_ln770_fu_654_p3;
endmodule 
