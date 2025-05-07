module main_graph_main_graph_Pipeline_VITIS_LOOP_659_142_VITIS_LOOP_660_143_VITIS_LOOP_661_144_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v29_address1,v29_ce1,v29_we1,v29_d1,v10_Addr_A,v10_EN_A,v10_WEN_A,v10_Din_A,v10_Dout_A,v30_address0,v30_ce0,v30_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] v29_address1;
output   v29_ce1;
output   v29_we1;
output  [7:0] v29_d1;
output  [31:0] v10_Addr_A;
output   v10_EN_A;
output  [0:0] v10_WEN_A;
output  [7:0] v10_Din_A;
input  [7:0] v10_Dout_A;
output  [14:0] v30_address0;
output   v30_ce0;
input  [6:0] v30_q0;
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
wire   [0:0] icmp_ln659_fu_260_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln659_reg_1053;
reg   [0:0] icmp_ln659_reg_1053_pp0_iter1_reg;
wire   [0:0] icmp_ln660_fu_286_p2;
reg   [0:0] icmp_ln660_reg_1057;
reg   [0:0] icmp_ln660_reg_1057_pp0_iter2_reg;
wire   [0:0] xor_ln659_fu_292_p2;
reg   [0:0] xor_ln659_reg_1064;
wire   [0:0] and_ln659_3_fu_310_p2;
reg   [0:0] and_ln659_3_reg_1070;
wire   [0:0] empty_fu_316_p2;
reg   [0:0] empty_reg_1075;
wire   [0:0] not_exitcond_flatten1682_mid21761102_fu_328_p2;
reg   [0:0] not_exitcond_flatten1682_mid21761102_reg_1081;
wire   [0:0] exitcond_flatten1656_mid21715_fu_340_p2;
reg   [0:0] exitcond_flatten1656_mid21715_reg_1087;
wire   [0:0] empty_38_fu_346_p2;
reg   [0:0] empty_38_reg_1095;
wire   [0:0] empty_39_fu_352_p2;
reg   [0:0] empty_39_reg_1100;
reg   [0:0] empty_39_reg_1100_pp0_iter2_reg;
reg   [0:0] empty_39_reg_1100_pp0_iter3_reg;
reg   [0:0] empty_39_reg_1100_pp0_iter4_reg;
reg   [0:0] empty_39_reg_1100_pp0_iter5_reg;
reg   [0:0] empty_39_reg_1100_pp0_iter6_reg;
wire   [1:0] select_ln660_fu_485_p3;
reg   [1:0] select_ln660_reg_1106;
wire   [1:0] select_ln661_fu_516_p3;
reg   [1:0] select_ln661_reg_1112;
wire   [9:0] select_ln663_fu_570_p3;
reg   [9:0] select_ln663_reg_1118;
wire   [1:0] v322_mid2_fu_600_p3;
reg   [1:0] v322_mid2_reg_1125;
reg   [1:0] v322_mid2_reg_1125_pp0_iter3_reg;
wire   [1:0] select_ln664_fu_608_p3;
reg   [1:0] select_ln664_reg_1131;
wire   [0:0] icmp_ln665_1_fu_622_p2;
reg   [0:0] icmp_ln665_1_reg_1137;
reg   [0:0] icmp_ln665_1_reg_1137_pp0_iter3_reg;
reg   [0:0] icmp_ln665_1_reg_1137_pp0_iter4_reg;
reg   [0:0] icmp_ln665_1_reg_1137_pp0_iter5_reg;
reg   [0:0] icmp_ln665_1_reg_1137_pp0_iter6_reg;
reg   [0:0] icmp_ln665_1_reg_1137_pp0_iter7_reg;
wire   [0:0] icmp_ln664_1_fu_628_p2;
reg   [0:0] icmp_ln664_1_reg_1141;
reg   [0:0] icmp_ln664_1_reg_1141_pp0_iter3_reg;
reg   [0:0] icmp_ln664_1_reg_1141_pp0_iter4_reg;
reg   [0:0] icmp_ln664_1_reg_1141_pp0_iter5_reg;
reg   [0:0] icmp_ln664_1_reg_1141_pp0_iter6_reg;
reg   [0:0] icmp_ln664_1_reg_1141_pp0_iter7_reg;
wire   [0:0] icmp_ln663_1_fu_634_p2;
reg   [0:0] icmp_ln663_1_reg_1145;
reg   [0:0] icmp_ln663_1_reg_1145_pp0_iter3_reg;
reg   [0:0] icmp_ln663_1_reg_1145_pp0_iter4_reg;
reg   [0:0] icmp_ln663_1_reg_1145_pp0_iter5_reg;
reg   [0:0] icmp_ln663_1_reg_1145_pp0_iter6_reg;
reg   [0:0] icmp_ln663_1_reg_1145_pp0_iter7_reg;
wire   [10:0] add_ln662_1_fu_747_p2;
reg   [10:0] add_ln662_1_reg_1149;
reg   [10:0] add_ln662_1_reg_1149_pp0_iter4_reg;
reg   [10:0] add_ln662_1_reg_1149_pp0_iter5_reg;
reg   [10:0] add_ln662_1_reg_1149_pp0_iter6_reg;
reg   [10:0] add_ln662_1_reg_1149_pp0_iter7_reg;
wire   [20:0] add_ln667_1_fu_820_p2;
reg   [20:0] add_ln667_1_reg_1154;
wire   [19:0] trunc_ln667_1_fu_826_p1;
reg   [19:0] trunc_ln667_1_reg_1159;
wire   [14:0] add_ln666_2_fu_892_p2;
reg   [14:0] add_ln666_2_reg_1164;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln667_5_fu_928_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln666_5_fu_933_p1;
wire   [63:0] zext_ln662_3_fu_951_p1;
reg   [7:0] v325_fu_106;
wire   [7:0] grp_fu_959_p3;
reg   [7:0] ap_sig_allocacmp_v325_load;
wire    ap_loop_init;
reg   [1:0] v322_fu_110;
wire   [1:0] add_ln665_fu_616_p2;
reg   [1:0] v321_fu_114;
reg   [3:0] indvar_flatten1639_fu_118;
wire   [3:0] select_ln664_1_fu_646_p3;
reg   [9:0] v320_fu_122;
reg   [13:0] indvar_flatten1654_fu_126;
wire   [13:0] select_ln663_1_fu_364_p3;
reg   [1:0] v319_fu_130;
reg   [14:0] indvar_flatten1680_fu_134;
wire   [14:0] select_ln661_1_fu_378_p3;
reg   [1:0] v318_fu_138;
reg   [15:0] indvar_flatten1716_fu_142;
wire   [15:0] select_ln660_1_fu_392_p3;
reg   [9:0] v317_fu_146;
wire   [9:0] select_ln659_1_fu_693_p3;
reg   [23:0] indvar_flatten1762_fu_150;
wire   [23:0] add_ln659_1_fu_266_p2;
reg   [23:0] ap_sig_allocacmp_indvar_flatten1762_load;
reg    v30_ce0_local;
reg    v10_EN_A_local;
wire   [31:0] v10_Addr_A_orig;
reg    v29_we1_local;
reg    v29_ce1_local;
wire   [0:0] icmp_ln661_fu_304_p2;
wire   [0:0] exitcond_flatten1682_not103_fu_322_p2;
wire   [0:0] icmp_ln663_fu_298_p2;
wire   [0:0] and_ln659_2_fu_334_p2;
wire   [13:0] add_ln663_1_fu_358_p2;
wire   [14:0] add_ln661_1_fu_372_p2;
wire   [15:0] add_ln660_1_fu_386_p2;
wire   [0:0] icmp_ln665_fu_440_p2;
wire   [0:0] icmp_ln664_fu_451_p2;
wire   [1:0] select_ln659_fu_433_p3;
wire   [0:0] and_ln659_fu_446_p2;
wire   [0:0] and_ln659_1_fu_457_p2;
wire   [1:0] add_ln660_fu_462_p2;
wire   [1:0] v319_mid21687_fu_468_p3;
wire   [0:0] exitcond_flatten1641_mid21711_fu_480_p2;
wire   [0:0] not_exitcond_flatten1656_mid21715_fu_505_p2;
wire   [1:0] add_ln661_fu_492_p2;
wire   [9:0] v320_mid21661_fu_498_p3;
wire   [0:0] exitcond_flatten1641_mid21679_fu_510_p2;
wire   [0:0] empty_40_fu_529_p2;
wire   [0:0] empty_41_fu_534_p2;
wire   [0:0] exitcond_flatten1641_mid21711_not_fu_547_p2;
wire   [0:0] icmp_ln665_mid21707_fu_475_p2;
wire   [0:0] icmp_ln665_mid21675_fu_558_p2;
wire   [0:0] not_exitcond_flatten1641_mid21679_fu_553_p2;
wire   [9:0] add_ln663_fu_523_p2;
wire   [1:0] v321_mid21646_fu_539_p3;
wire   [0:0] icmp_ln665_mid21653_fu_564_p2;
wire   [0:0] empty_42_fu_584_p2;
wire   [0:0] empty_43_fu_589_p2;
wire   [0:0] empty_44_fu_595_p2;
wire   [1:0] add_ln664_fu_578_p2;
wire   [3:0] add_ln664_1_fu_640_p2;
wire   [9:0] add_ln659_fu_687_p2;
wire   [18:0] tmp_s_fu_700_p3;
wire   [9:0] shl_ln662_fu_712_p2;
wire   [9:0] zext_ln662_1_fu_718_p1;
wire   [9:0] add_ln662_fu_721_p2;
wire   [1:0] empty_45_fu_735_p2;
wire   [10:0] tmp_fu_727_p3;
wire   [10:0] zext_ln662_2_fu_744_p1;
wire   [1:0] empty_46_fu_753_p2;
wire   [19:0] zext_ln662_fu_708_p1;
wire   [19:0] zext_ln667_fu_762_p1;
wire   [19:0] add_ln667_fu_765_p2;
wire   [18:0] trunc_ln667_fu_771_p1;
wire   [20:0] tmp_9_fu_775_p3;
wire   [20:0] zext_ln667_1_fu_783_p1;
wire   [10:0] tmp_10_fu_800_p3;
wire   [12:0] p_shl_fu_793_p3;
wire   [12:0] zext_ln666_fu_807_p1;
wire   [20:0] sub_ln666_fu_787_p2;
wire   [20:0] zext_ln667_2_fu_817_p1;
wire   [2:0] zext_ln664_fu_830_p1;
wire   [2:0] zext_ln661_fu_740_p1;
wire   [2:0] empty_47_fu_833_p2;
wire   [12:0] sub_ln666_1_fu_811_p2;
wire   [12:0] zext_ln666_2_fu_839_p1;
wire   [12:0] add_ln666_1_fu_843_p2;
wire   [11:0] trunc_ln666_fu_849_p1;
wire   [13:0] tmp_12_fu_853_p3;
wire   [14:0] tmp_13_fu_861_p3;
wire   [14:0] zext_ln666_3_fu_869_p1;
wire   [2:0] zext_ln665_fu_879_p1;
wire   [2:0] zext_ln663_fu_758_p1;
wire   [2:0] add_ln666_fu_882_p2;
wire   [14:0] sub_ln665_fu_873_p2;
wire   [14:0] zext_ln666_4_fu_888_p1;
wire   [21:0] tmp_11_fu_903_p3;
wire   [21:0] zext_ln667_3_fu_910_p1;
wire   [21:0] sub_ln664_fu_913_p2;
wire   [21:0] zext_ln667_4_fu_919_p1;
wire   [21:0] add_ln667_2_fu_922_p2;
wire   [6:0] grp_fu_959_p1;
wire   [7:0] grp_fu_959_p2;
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
wire   [7:0] grp_fu_959_p10;
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
#0 v325_fu_106 = 8'd0;
#0 v322_fu_110 = 2'd0;
#0 v321_fu_114 = 2'd0;
#0 indvar_flatten1639_fu_118 = 4'd0;
#0 v320_fu_122 = 10'd0;
#0 indvar_flatten1654_fu_126 = 14'd0;
#0 v319_fu_130 = 2'd0;
#0 indvar_flatten1680_fu_134 = 15'd0;
#0 v318_fu_138 = 2'd0;
#0 indvar_flatten1716_fu_142 = 16'd0;
#0 v317_fu_146 = 10'd0;
#0 indvar_flatten1762_fu_150 = 24'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U141(.clk(ap_clk),.reset(ap_rst),.din0(v10_Dout_A),.din1(grp_fu_959_p1),.din2(grp_fu_959_p2),.ce(1'b1),.dout(grp_fu_959_p3));
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
            indvar_flatten1639_fu_118 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln659_reg_1053_pp0_iter1_reg == 1'd0))) begin
            indvar_flatten1639_fu_118 <= select_ln664_1_fu_646_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1654_fu_126 <= 14'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln659_reg_1053 == 1'd0))) begin
            indvar_flatten1654_fu_126 <= select_ln663_1_fu_364_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1680_fu_134 <= 15'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln659_reg_1053 == 1'd0))) begin
            indvar_flatten1680_fu_134 <= select_ln661_1_fu_378_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1716_fu_142 <= 16'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln659_reg_1053 == 1'd0))) begin
            indvar_flatten1716_fu_142 <= select_ln660_1_fu_392_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln659_fu_260_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1762_fu_150 <= add_ln659_1_fu_266_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1762_fu_150 <= 24'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v317_fu_146 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v317_fu_146 <= select_ln659_1_fu_693_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v318_fu_138 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln659_reg_1053_pp0_iter1_reg == 1'd0))) begin
            v318_fu_138 <= select_ln660_fu_485_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v319_fu_130 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln659_reg_1053_pp0_iter1_reg == 1'd0))) begin
            v319_fu_130 <= select_ln661_fu_516_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v320_fu_122 <= 10'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln659_reg_1053_pp0_iter1_reg == 1'd0))) begin
            v320_fu_122 <= select_ln663_fu_570_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v321_fu_114 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln659_reg_1053_pp0_iter1_reg == 1'd0))) begin
            v321_fu_114 <= select_ln664_fu_608_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v322_fu_110 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln659_reg_1053_pp0_iter1_reg == 1'd0))) begin
            v322_fu_110 <= add_ln665_fu_616_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v325_fu_106 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v325_fu_106 <= grp_fu_959_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln662_1_reg_1149 <= add_ln662_1_fu_747_p2;
        add_ln662_1_reg_1149_pp0_iter4_reg <= add_ln662_1_reg_1149;
        add_ln662_1_reg_1149_pp0_iter5_reg <= add_ln662_1_reg_1149_pp0_iter4_reg;
        add_ln662_1_reg_1149_pp0_iter6_reg <= add_ln662_1_reg_1149_pp0_iter5_reg;
        add_ln662_1_reg_1149_pp0_iter7_reg <= add_ln662_1_reg_1149_pp0_iter6_reg;
        add_ln666_2_reg_1164 <= add_ln666_2_fu_892_p2;
        add_ln667_1_reg_1154 <= add_ln667_1_fu_820_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_39_reg_1100_pp0_iter2_reg <= empty_39_reg_1100;
        empty_39_reg_1100_pp0_iter3_reg <= empty_39_reg_1100_pp0_iter2_reg;
        empty_39_reg_1100_pp0_iter4_reg <= empty_39_reg_1100_pp0_iter3_reg;
        empty_39_reg_1100_pp0_iter5_reg <= empty_39_reg_1100_pp0_iter4_reg;
        empty_39_reg_1100_pp0_iter6_reg <= empty_39_reg_1100_pp0_iter5_reg;
        icmp_ln660_reg_1057_pp0_iter2_reg <= icmp_ln660_reg_1057;
        icmp_ln663_1_reg_1145 <= icmp_ln663_1_fu_634_p2;
        icmp_ln663_1_reg_1145_pp0_iter3_reg <= icmp_ln663_1_reg_1145;
        icmp_ln663_1_reg_1145_pp0_iter4_reg <= icmp_ln663_1_reg_1145_pp0_iter3_reg;
        icmp_ln663_1_reg_1145_pp0_iter5_reg <= icmp_ln663_1_reg_1145_pp0_iter4_reg;
        icmp_ln663_1_reg_1145_pp0_iter6_reg <= icmp_ln663_1_reg_1145_pp0_iter5_reg;
        icmp_ln663_1_reg_1145_pp0_iter7_reg <= icmp_ln663_1_reg_1145_pp0_iter6_reg;
        icmp_ln664_1_reg_1141 <= icmp_ln664_1_fu_628_p2;
        icmp_ln664_1_reg_1141_pp0_iter3_reg <= icmp_ln664_1_reg_1141;
        icmp_ln664_1_reg_1141_pp0_iter4_reg <= icmp_ln664_1_reg_1141_pp0_iter3_reg;
        icmp_ln664_1_reg_1141_pp0_iter5_reg <= icmp_ln664_1_reg_1141_pp0_iter4_reg;
        icmp_ln664_1_reg_1141_pp0_iter6_reg <= icmp_ln664_1_reg_1141_pp0_iter5_reg;
        icmp_ln664_1_reg_1141_pp0_iter7_reg <= icmp_ln664_1_reg_1141_pp0_iter6_reg;
        icmp_ln665_1_reg_1137 <= icmp_ln665_1_fu_622_p2;
        icmp_ln665_1_reg_1137_pp0_iter3_reg <= icmp_ln665_1_reg_1137;
        icmp_ln665_1_reg_1137_pp0_iter4_reg <= icmp_ln665_1_reg_1137_pp0_iter3_reg;
        icmp_ln665_1_reg_1137_pp0_iter5_reg <= icmp_ln665_1_reg_1137_pp0_iter4_reg;
        icmp_ln665_1_reg_1137_pp0_iter6_reg <= icmp_ln665_1_reg_1137_pp0_iter5_reg;
        icmp_ln665_1_reg_1137_pp0_iter7_reg <= icmp_ln665_1_reg_1137_pp0_iter6_reg;
        select_ln660_reg_1106 <= select_ln660_fu_485_p3;
        select_ln661_reg_1112 <= select_ln661_fu_516_p3;
        select_ln663_reg_1118 <= select_ln663_fu_570_p3;
        select_ln664_reg_1131 <= select_ln664_fu_608_p3;
        trunc_ln667_1_reg_1159 <= trunc_ln667_1_fu_826_p1;
        v322_mid2_reg_1125 <= v322_mid2_fu_600_p3;
        v322_mid2_reg_1125_pp0_iter3_reg <= v322_mid2_reg_1125;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln659_3_reg_1070 <= and_ln659_3_fu_310_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_38_reg_1095 <= empty_38_fu_346_p2;
        empty_39_reg_1100 <= empty_39_fu_352_p2;
        empty_reg_1075 <= empty_fu_316_p2;
        exitcond_flatten1656_mid21715_reg_1087 <= exitcond_flatten1656_mid21715_fu_340_p2;
        icmp_ln659_reg_1053 <= icmp_ln659_fu_260_p2;
        icmp_ln659_reg_1053_pp0_iter1_reg <= icmp_ln659_reg_1053;
        icmp_ln660_reg_1057 <= icmp_ln660_fu_286_p2;
        not_exitcond_flatten1682_mid21761102_reg_1081 <= not_exitcond_flatten1682_mid21761102_fu_328_p2;
        xor_ln659_reg_1064 <= xor_ln659_fu_292_p2;
    end
end
always @ (*) begin
    if (((icmp_ln659_fu_260_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln659_reg_1053_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten1762_load = 24'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1762_load = indvar_flatten1762_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        ap_sig_allocacmp_v325_load = grp_fu_959_p3;
    end else begin
        ap_sig_allocacmp_v325_load = v325_fu_106;
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
        v29_ce1_local = 1'b1;
    end else begin
        v29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln663_1_reg_1145_pp0_iter7_reg == 1'd1) & (icmp_ln664_1_reg_1141_pp0_iter7_reg == 1'd1) & (icmp_ln665_1_reg_1137_pp0_iter7_reg == 1'd1))) begin
        v29_we1_local = 1'b1;
    end else begin
        v29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v30_ce0_local = 1'b1;
    end else begin
        v30_ce0_local = 1'b0;
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
assign add_ln659_1_fu_266_p2 = (ap_sig_allocacmp_indvar_flatten1762_load + 24'd1);
assign add_ln659_fu_687_p2 = (v317_fu_146 + 10'd1);
assign add_ln660_1_fu_386_p2 = (indvar_flatten1716_fu_142 + 16'd1);
assign add_ln660_fu_462_p2 = (select_ln659_fu_433_p3 + 2'd1);
assign add_ln661_1_fu_372_p2 = (indvar_flatten1680_fu_134 + 15'd1);
assign add_ln661_fu_492_p2 = (v319_mid21687_fu_468_p3 + 2'd1);
assign add_ln662_1_fu_747_p2 = (tmp_fu_727_p3 + zext_ln662_2_fu_744_p1);
assign add_ln662_fu_721_p2 = (shl_ln662_fu_712_p2 + zext_ln662_1_fu_718_p1);
assign add_ln663_1_fu_358_p2 = (indvar_flatten1654_fu_126 + 14'd1);
assign add_ln663_fu_523_p2 = (v320_mid21661_fu_498_p3 + 10'd1);
assign add_ln664_1_fu_640_p2 = (indvar_flatten1639_fu_118 + 4'd1);
assign add_ln664_fu_578_p2 = (v321_mid21646_fu_539_p3 + 2'd1);
assign add_ln665_fu_616_p2 = (v322_mid2_fu_600_p3 + 2'd1);
assign add_ln666_1_fu_843_p2 = (sub_ln666_1_fu_811_p2 + zext_ln666_2_fu_839_p1);
assign add_ln666_2_fu_892_p2 = (sub_ln665_fu_873_p2 + zext_ln666_4_fu_888_p1);
assign add_ln666_fu_882_p2 = (zext_ln665_fu_879_p1 + zext_ln663_fu_758_p1);
assign add_ln667_1_fu_820_p2 = (sub_ln666_fu_787_p2 + zext_ln667_2_fu_817_p1);
assign add_ln667_2_fu_922_p2 = (sub_ln664_fu_913_p2 + zext_ln667_4_fu_919_p1);
assign add_ln667_fu_765_p2 = (zext_ln662_fu_708_p1 + zext_ln667_fu_762_p1);
assign and_ln659_1_fu_457_p2 = (xor_ln659_reg_1064 & icmp_ln664_fu_451_p2);
assign and_ln659_2_fu_334_p2 = (xor_ln659_fu_292_p2 & icmp_ln663_fu_298_p2);
assign and_ln659_3_fu_310_p2 = (xor_ln659_fu_292_p2 & icmp_ln661_fu_304_p2);
assign and_ln659_fu_446_p2 = (xor_ln659_reg_1064 & icmp_ln665_fu_440_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_38_fu_346_p2 = (exitcond_flatten1656_mid21715_fu_340_p2 | and_ln659_3_fu_310_p2);
assign empty_39_fu_352_p2 = (icmp_ln660_fu_286_p2 | empty_38_fu_346_p2);
assign empty_40_fu_529_p2 = (exitcond_flatten1656_mid21715_reg_1087 | exitcond_flatten1641_mid21679_fu_510_p2);
assign empty_41_fu_534_p2 = (empty_reg_1075 | empty_40_fu_529_p2);
assign empty_42_fu_584_p2 = (exitcond_flatten1641_mid21679_fu_510_p2 | empty_38_reg_1095);
assign empty_43_fu_589_p2 = (icmp_ln665_mid21653_fu_564_p2 | empty_42_fu_584_p2);
assign empty_44_fu_595_p2 = (icmp_ln660_reg_1057 | empty_43_fu_589_p2);
assign empty_45_fu_735_p2 = select_ln660_reg_1106 << 2'd1;
assign empty_46_fu_753_p2 = select_ln661_reg_1112 << 2'd1;
assign empty_47_fu_833_p2 = (zext_ln664_fu_830_p1 + zext_ln661_fu_740_p1);
assign empty_fu_316_p2 = (icmp_ln660_fu_286_p2 | and_ln659_3_fu_310_p2);
assign exitcond_flatten1641_mid21679_fu_510_p2 = (not_exitcond_flatten1656_mid21715_fu_505_p2 & exitcond_flatten1641_mid21711_fu_480_p2);
assign exitcond_flatten1641_mid21711_fu_480_p2 = (not_exitcond_flatten1682_mid21761102_reg_1081 & and_ln659_1_fu_457_p2);
assign exitcond_flatten1641_mid21711_not_fu_547_p2 = (exitcond_flatten1641_mid21711_fu_480_p2 ^ 1'd1);
assign exitcond_flatten1656_mid21715_fu_340_p2 = (not_exitcond_flatten1682_mid21761102_fu_328_p2 & and_ln659_2_fu_334_p2);
assign exitcond_flatten1682_not103_fu_322_p2 = (icmp_ln661_fu_304_p2 ^ 1'd1);
assign grp_fu_959_p1 = grp_fu_959_p10;
assign grp_fu_959_p10 = v30_q0;
assign grp_fu_959_p2 = ((empty_39_reg_1100_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v325_load);
assign icmp_ln659_fu_260_p2 = ((ap_sig_allocacmp_indvar_flatten1762_load == 24'd9437184) ? 1'b1 : 1'b0);
assign icmp_ln660_fu_286_p2 = ((indvar_flatten1716_fu_142 == 16'd18432) ? 1'b1 : 1'b0);
assign icmp_ln661_fu_304_p2 = ((indvar_flatten1680_fu_134 == 15'd9216) ? 1'b1 : 1'b0);
assign icmp_ln663_1_fu_634_p2 = ((select_ln663_fu_570_p3 == 10'd511) ? 1'b1 : 1'b0);
assign icmp_ln663_fu_298_p2 = ((indvar_flatten1654_fu_126 == 14'd4608) ? 1'b1 : 1'b0);
assign icmp_ln664_1_fu_628_p2 = ((select_ln664_fu_608_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln664_fu_451_p2 = ((indvar_flatten1639_fu_118 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln665_1_fu_622_p2 = ((add_ln665_fu_616_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln665_fu_440_p2 = ((v322_fu_110 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln665_mid21653_fu_564_p2 = (not_exitcond_flatten1641_mid21679_fu_553_p2 & icmp_ln665_mid21675_fu_558_p2);
assign icmp_ln665_mid21675_fu_558_p2 = (not_exitcond_flatten1656_mid21715_fu_505_p2 & icmp_ln665_mid21707_fu_475_p2);
assign icmp_ln665_mid21707_fu_475_p2 = (not_exitcond_flatten1682_mid21761102_reg_1081 & and_ln659_fu_446_p2);
assign not_exitcond_flatten1641_mid21679_fu_553_p2 = (exitcond_flatten1656_mid21715_reg_1087 | exitcond_flatten1641_mid21711_not_fu_547_p2);
assign not_exitcond_flatten1656_mid21715_fu_505_p2 = (exitcond_flatten1656_mid21715_reg_1087 ^ 1'd1);
assign not_exitcond_flatten1682_mid21761102_fu_328_p2 = (icmp_ln660_fu_286_p2 | exitcond_flatten1682_not103_fu_322_p2);
assign p_shl_fu_793_p3 = {{select_ln663_reg_1118}, {3'd0}};
assign select_ln659_1_fu_693_p3 = ((icmp_ln660_reg_1057_pp0_iter2_reg[0:0] == 1'b1) ? add_ln659_fu_687_p2 : v317_fu_146);
assign select_ln659_fu_433_p3 = ((icmp_ln660_reg_1057[0:0] == 1'b1) ? 2'd0 : v318_fu_138);
assign select_ln660_1_fu_392_p3 = ((icmp_ln660_fu_286_p2[0:0] == 1'b1) ? 16'd1 : add_ln660_1_fu_386_p2);
assign select_ln660_fu_485_p3 = ((and_ln659_3_reg_1070[0:0] == 1'b1) ? add_ln660_fu_462_p2 : select_ln659_fu_433_p3);
assign select_ln661_1_fu_378_p3 = ((empty_fu_316_p2[0:0] == 1'b1) ? 15'd1 : add_ln661_1_fu_372_p2);
assign select_ln661_fu_516_p3 = ((exitcond_flatten1656_mid21715_reg_1087[0:0] == 1'b1) ? add_ln661_fu_492_p2 : v319_mid21687_fu_468_p3);
assign select_ln663_1_fu_364_p3 = ((empty_39_fu_352_p2[0:0] == 1'b1) ? 14'd1 : add_ln663_1_fu_358_p2);
assign select_ln663_fu_570_p3 = ((exitcond_flatten1641_mid21679_fu_510_p2[0:0] == 1'b1) ? add_ln663_fu_523_p2 : v320_mid21661_fu_498_p3);
assign select_ln664_1_fu_646_p3 = ((empty_41_fu_534_p2[0:0] == 1'b1) ? 4'd1 : add_ln664_1_fu_640_p2);
assign select_ln664_fu_608_p3 = ((icmp_ln665_mid21653_fu_564_p2[0:0] == 1'b1) ? add_ln664_fu_578_p2 : v321_mid21646_fu_539_p3);
assign shl_ln662_fu_712_p2 = select_ln659_1_fu_693_p3 << 10'd1;
assign sub_ln664_fu_913_p2 = (tmp_11_fu_903_p3 - zext_ln667_3_fu_910_p1);
assign sub_ln665_fu_873_p2 = (tmp_13_fu_861_p3 - zext_ln666_3_fu_869_p1);
assign sub_ln666_1_fu_811_p2 = (p_shl_fu_793_p3 - zext_ln666_fu_807_p1);
assign sub_ln666_fu_787_p2 = (tmp_9_fu_775_p3 - zext_ln667_1_fu_783_p1);
assign tmp_10_fu_800_p3 = {{select_ln663_reg_1118}, {1'd0}};
assign tmp_11_fu_903_p3 = {{trunc_ln667_1_reg_1159}, {2'd0}};
assign tmp_12_fu_853_p3 = {{add_ln666_1_fu_843_p2}, {1'd0}};
assign tmp_13_fu_861_p3 = {{trunc_ln666_fu_849_p1}, {3'd0}};
assign tmp_9_fu_775_p3 = {{trunc_ln667_fu_771_p1}, {2'd0}};
assign tmp_fu_727_p3 = {{add_ln662_fu_721_p2}, {1'd0}};
assign tmp_s_fu_700_p3 = {{select_ln659_1_fu_693_p3}, {9'd0}};
assign trunc_ln666_fu_849_p1 = add_ln666_1_fu_843_p2[11:0];
assign trunc_ln667_1_fu_826_p1 = add_ln667_1_fu_820_p2[19:0];
assign trunc_ln667_fu_771_p1 = add_ln667_fu_765_p2[18:0];
assign v10_Addr_A = v10_Addr_A_orig << 32'd0;
assign v10_Addr_A_orig = zext_ln667_5_fu_928_p1;
assign v10_Din_A = 8'd0;
assign v10_EN_A = v10_EN_A_local;
assign v10_WEN_A = 1'd0;
assign v29_address1 = zext_ln662_3_fu_951_p1;
assign v29_ce1 = v29_ce1_local;
assign v29_d1 = grp_fu_959_p3;
assign v29_we1 = v29_we1_local;
assign v30_address0 = zext_ln666_5_fu_933_p1;
assign v30_ce0 = v30_ce0_local;
assign v319_mid21687_fu_468_p3 = ((empty_reg_1075[0:0] == 1'b1) ? 2'd0 : v319_fu_130);
assign v320_mid21661_fu_498_p3 = ((empty_39_reg_1100[0:0] == 1'b1) ? 10'd0 : v320_fu_122);
assign v321_mid21646_fu_539_p3 = ((empty_41_fu_534_p2[0:0] == 1'b1) ? 2'd0 : v321_fu_114);
assign v322_mid2_fu_600_p3 = ((empty_44_fu_595_p2[0:0] == 1'b1) ? 2'd0 : v322_fu_110);
assign xor_ln659_fu_292_p2 = (icmp_ln660_fu_286_p2 ^ 1'd1);
assign zext_ln661_fu_740_p1 = empty_45_fu_735_p2;
assign zext_ln662_1_fu_718_p1 = select_ln660_reg_1106;
assign zext_ln662_2_fu_744_p1 = select_ln661_reg_1112;
assign zext_ln662_3_fu_951_p1 = add_ln662_1_reg_1149_pp0_iter7_reg;
assign zext_ln662_fu_708_p1 = tmp_s_fu_700_p3;
assign zext_ln663_fu_758_p1 = empty_46_fu_753_p2;
assign zext_ln664_fu_830_p1 = select_ln664_reg_1131;
assign zext_ln665_fu_879_p1 = v322_mid2_reg_1125;
assign zext_ln666_2_fu_839_p1 = empty_47_fu_833_p2;
assign zext_ln666_3_fu_869_p1 = tmp_12_fu_853_p3;
assign zext_ln666_4_fu_888_p1 = add_ln666_fu_882_p2;
assign zext_ln666_5_fu_933_p1 = add_ln666_2_reg_1164;
assign zext_ln666_fu_807_p1 = tmp_10_fu_800_p3;
assign zext_ln667_1_fu_783_p1 = add_ln667_fu_765_p2;
assign zext_ln667_2_fu_817_p1 = select_ln664_reg_1131;
assign zext_ln667_3_fu_910_p1 = add_ln667_1_reg_1154;
assign zext_ln667_4_fu_919_p1 = v322_mid2_reg_1125_pp0_iter3_reg;
assign zext_ln667_5_fu_928_p1 = add_ln667_2_fu_922_p2;
assign zext_ln667_fu_762_p1 = select_ln663_reg_1118;
endmodule 