module main_graph_main_graph_Pipeline_VITIS_LOOP_419_67_VITIS_LOOP_420_68_VITIS_LOOP_421_69_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v44_address1,v44_ce1,v44_we1,v44_d1,v5_Addr_A,v5_EN_A,v5_WEN_A,v5_Din_A,v5_Dout_A,v45_address0,v45_ce0,v45_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v44_address1;
output   v44_ce1;
output   v44_we1;
output  [7:0] v44_d1;
output  [31:0] v5_Addr_A;
output   v5_EN_A;
output  [0:0] v5_WEN_A;
output  [7:0] v5_Din_A;
input  [7:0] v5_Dout_A;
output  [13:0] v45_address0;
output   v45_ce0;
input  [6:0] v45_q0;
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
wire   [0:0] icmp_ln419_fu_268_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln419_reg_1048;
wire   [0:0] icmp_ln420_fu_280_p2;
reg   [0:0] icmp_ln420_reg_1052;
reg   [0:0] icmp_ln420_reg_1052_pp0_iter2_reg;
wire   [0:0] xor_ln419_fu_286_p2;
reg   [0:0] xor_ln419_reg_1061;
wire   [0:0] icmp_ln421_fu_292_p2;
reg   [0:0] icmp_ln421_reg_1068;
wire   [0:0] and_ln419_3_fu_298_p2;
reg   [0:0] and_ln419_3_reg_1073;
reg   [0:0] and_ln419_3_reg_1073_pp0_iter2_reg;
wire   [0:0] empty_fu_304_p2;
reg   [0:0] empty_reg_1079;
reg   [0:0] empty_reg_1079_pp0_iter2_reg;
wire   [0:0] exitcond_flatten696_mid2755_fu_417_p2;
reg   [0:0] exitcond_flatten696_mid2755_reg_1085;
wire   [0:0] empty_88_fu_428_p2;
reg   [0:0] empty_88_reg_1090;
reg   [0:0] empty_88_reg_1090_pp0_iter3_reg;
reg   [0:0] empty_88_reg_1090_pp0_iter4_reg;
reg   [0:0] empty_88_reg_1090_pp0_iter5_reg;
reg   [0:0] empty_88_reg_1090_pp0_iter6_reg;
wire   [0:0] exitcond_flatten681_mid2719_fu_439_p2;
reg   [0:0] exitcond_flatten681_mid2719_reg_1096;
wire   [0:0] empty_90_fu_451_p2;
reg   [0:0] empty_90_reg_1101;
wire   [0:0] icmp_ln425_mid2693_fu_474_p2;
reg   [0:0] icmp_ln425_mid2693_reg_1106;
wire   [1:0] v182_mid2_fu_497_p3;
reg   [1:0] v182_mid2_reg_1111;
reg   [1:0] v182_mid2_reg_1111_pp0_iter3_reg;
wire   [0:0] icmp_ln425_1_fu_511_p2;
reg   [0:0] icmp_ln425_1_reg_1117;
reg   [0:0] icmp_ln425_1_reg_1117_pp0_iter3_reg;
reg   [0:0] icmp_ln425_1_reg_1117_pp0_iter4_reg;
reg   [0:0] icmp_ln425_1_reg_1117_pp0_iter5_reg;
reg   [0:0] icmp_ln425_1_reg_1117_pp0_iter6_reg;
reg   [0:0] icmp_ln425_1_reg_1117_pp0_iter7_reg;
wire   [3:0] select_ln421_fu_632_p3;
reg   [3:0] select_ln421_reg_1121;
wire   [10:0] add_ln422_fu_696_p2;
reg   [10:0] add_ln422_reg_1127;
wire   [17:0] add_ln427_1_fu_768_p2;
reg   [17:0] add_ln427_1_reg_1132;
wire   [16:0] trunc_ln427_1_fu_774_p1;
reg   [16:0] trunc_ln427_1_reg_1137;
wire   [11:0] add_ln426_1_fu_792_p2;
reg   [11:0] add_ln426_1_reg_1142;
wire   [10:0] trunc_ln426_fu_798_p1;
reg   [10:0] trunc_ln426_reg_1147;
wire   [0:0] icmp_ln424_1_fu_802_p2;
reg   [0:0] icmp_ln424_1_reg_1152;
reg   [0:0] icmp_ln424_1_reg_1152_pp0_iter4_reg;
reg   [0:0] icmp_ln424_1_reg_1152_pp0_iter5_reg;
reg   [0:0] icmp_ln424_1_reg_1152_pp0_iter6_reg;
reg   [0:0] icmp_ln424_1_reg_1152_pp0_iter7_reg;
wire   [0:0] icmp_ln423_1_fu_808_p2;
reg   [0:0] icmp_ln423_1_reg_1156;
reg   [0:0] icmp_ln423_1_reg_1156_pp0_iter4_reg;
reg   [0:0] icmp_ln423_1_reg_1156_pp0_iter5_reg;
reg   [0:0] icmp_ln423_1_reg_1156_pp0_iter6_reg;
reg   [0:0] icmp_ln423_1_reg_1156_pp0_iter7_reg;
wire   [13:0] add_ln422_1_fu_849_p2;
reg   [13:0] add_ln422_1_reg_1160;
reg   [13:0] add_ln422_1_reg_1160_pp0_iter5_reg;
reg   [13:0] add_ln422_1_reg_1160_pp0_iter6_reg;
reg   [13:0] add_ln422_1_reg_1160_pp0_iter7_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln427_5_fu_904_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln426_5_fu_927_p1;
wire   [63:0] zext_ln422_3_fu_946_p1;
reg   [7:0] v185_fu_108;
wire   [7:0] grp_fu_954_p3;
reg   [7:0] ap_sig_allocacmp_v185_load;
wire    ap_loop_init;
reg   [1:0] v182_fu_112;
wire   [1:0] add_ln425_fu_505_p2;
reg   [1:0] v181_fu_116;
wire   [1:0] select_ln424_fu_665_p3;
reg   [3:0] indvar_flatten679_fu_120;
wire   [3:0] select_ln424_1_fu_523_p3;
reg   [7:0] v180_fu_124;
wire   [7:0] select_ln423_fu_652_p3;
reg   [11:0] indvar_flatten694_fu_128;
wire   [11:0] select_ln423_1_fu_537_p3;
reg   [3:0] v179_fu_132;
reg   [14:0] indvar_flatten720_fu_136;
wire   [14:0] select_ln421_1_fu_316_p3;
reg   [3:0] v178_fu_140;
wire   [3:0] select_ln420_fu_612_p3;
reg   [17:0] indvar_flatten756_fu_144;
wire   [17:0] select_ln420_1_fu_330_p3;
reg   [8:0] v177_fu_148;
wire   [8:0] select_ln419_1_fu_588_p3;
reg   [24:0] indvar_flatten802_fu_152;
wire   [24:0] add_ln419_1_fu_274_p2;
reg    v45_ce0_local;
reg    v5_EN_A_local;
wire   [31:0] v5_Addr_A_orig;
reg    v44_we1_local;
reg    v44_ce1_local;
wire   [14:0] add_ln421_1_fu_310_p2;
wire   [17:0] add_ln420_1_fu_324_p2;
wire   [0:0] icmp_ln425_fu_362_p2;
wire   [0:0] icmp_ln424_fu_373_p2;
wire   [0:0] exitcond_flatten722_not43_fu_390_p2;
wire   [0:0] and_ln419_fu_368_p2;
wire   [0:0] not_exitcond_flatten722_mid280142_fu_395_p2;
wire   [0:0] and_ln419_1_fu_379_p2;
wire   [0:0] icmp_ln423_fu_384_p2;
wire   [0:0] and_ln419_2_fu_412_p2;
wire   [0:0] empty_87_fu_423_p2;
wire   [0:0] exitcond_flatten681_mid2751_fu_406_p2;
wire   [0:0] not_exitcond_flatten696_mid2755_fu_433_p2;
wire   [0:0] empty_89_fu_445_p2;
wire   [0:0] exitcond_flatten681_mid2751_not_fu_456_p2;
wire   [0:0] icmp_ln425_mid2747_fu_400_p2;
wire   [0:0] icmp_ln425_mid2715_fu_468_p2;
wire   [0:0] not_exitcond_flatten681_mid2719_fu_462_p2;
wire   [0:0] empty_91_fu_480_p2;
wire   [0:0] empty_92_fu_486_p2;
wire   [0:0] empty_93_fu_492_p2;
wire   [3:0] add_ln424_1_fu_517_p2;
wire   [11:0] add_ln423_1_fu_531_p2;
wire   [8:0] add_ln419_fu_575_p2;
wire   [3:0] select_ln419_fu_581_p3;
wire   [3:0] add_ln420_fu_599_p2;
wire   [3:0] v179_mid2727_fu_605_p3;
wire   [3:0] add_ln421_fu_619_p2;
wire   [7:0] v180_mid2701_fu_625_p3;
wire   [7:0] add_ln423_fu_639_p2;
wire   [1:0] v181_mid2686_fu_645_p3;
wire   [1:0] add_ln424_fu_659_p2;
wire   [15:0] tmp_s_fu_672_p3;
wire   [7:0] trunc_ln420_fu_595_p1;
wire   [10:0] tmp_13_fu_684_p3;
wire   [10:0] zext_ln422_1_fu_692_p1;
wire   [16:0] zext_ln422_fu_680_p1;
wire   [16:0] zext_ln427_fu_702_p1;
wire   [16:0] add_ln427_fu_706_p2;
wire   [15:0] trunc_ln427_fu_712_p1;
wire   [17:0] tmp_64_fu_716_p3;
wire   [17:0] zext_ln427_1_fu_724_p1;
wire   [10:0] tmp_65_fu_734_p3;
wire   [8:0] tmp_66_fu_746_p3;
wire   [11:0] zext_ln426_fu_742_p1;
wire   [11:0] zext_ln426_2_fu_754_p1;
wire   [17:0] sub_ln426_fu_728_p2;
wire   [17:0] zext_ln427_2_fu_764_p1;
wire   [3:0] zext_ln424_fu_778_p1;
wire   [3:0] empty_94_fu_782_p2;
wire   [11:0] add_ln426_3_fu_758_p2;
wire   [11:0] zext_ln426_3_fu_788_p1;
wire   [13:0] tmp_fu_839_p3;
wire   [13:0] zext_ln422_2_fu_846_p1;
wire   [18:0] tmp_67_fu_855_p3;
wire   [18:0] zext_ln427_3_fu_862_p1;
wire   [12:0] tmp_68_fu_878_p3;
wire   [13:0] p_shl_fu_871_p3;
wire   [13:0] zext_ln425_fu_885_p1;
wire   [18:0] sub_ln424_fu_865_p2;
wire   [18:0] zext_ln427_4_fu_895_p1;
wire   [18:0] add_ln427_2_fu_898_p2;
wire   [3:0] zext_ln425_1_fu_909_p1;
wire   [3:0] add_ln426_fu_912_p2;
wire   [13:0] add_ln425_1_fu_889_p2;
wire   [13:0] zext_ln426_4_fu_917_p1;
wire   [13:0] add_ln426_2_fu_921_p2;
wire   [6:0] grp_fu_954_p1;
wire   [7:0] grp_fu_954_p2;
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
wire   [7:0] grp_fu_954_p10;
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
#0 v185_fu_108 = 8'd0;
#0 v182_fu_112 = 2'd0;
#0 v181_fu_116 = 2'd0;
#0 indvar_flatten679_fu_120 = 4'd0;
#0 v180_fu_124 = 8'd0;
#0 indvar_flatten694_fu_128 = 12'd0;
#0 v179_fu_132 = 4'd0;
#0 indvar_flatten720_fu_136 = 15'd0;
#0 v178_fu_140 = 4'd0;
#0 indvar_flatten756_fu_144 = 18'd0;
#0 v177_fu_148 = 9'd0;
#0 indvar_flatten802_fu_152 = 25'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(v5_Dout_A),.din1(grp_fu_954_p1),.din2(grp_fu_954_p2),.ce(1'b1),.dout(grp_fu_954_p3));
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
            indvar_flatten679_fu_120 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln419_reg_1048 == 1'd0))) begin
            indvar_flatten679_fu_120 <= select_ln424_1_fu_523_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            indvar_flatten694_fu_128 <= 12'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln419_reg_1048 == 1'd0))) begin
            indvar_flatten694_fu_128 <= select_ln423_1_fu_537_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten720_fu_136 <= 15'd0;
        end else if (((icmp_ln419_fu_268_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten720_fu_136 <= select_ln421_1_fu_316_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten756_fu_144 <= 18'd0;
        end else if (((icmp_ln419_fu_268_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten756_fu_144 <= select_ln420_1_fu_330_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten802_fu_152 <= 25'd0;
        end else if (((icmp_ln419_fu_268_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten802_fu_152 <= add_ln419_1_fu_274_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v177_fu_148 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v177_fu_148 <= select_ln419_1_fu_588_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v178_fu_140 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v178_fu_140 <= select_ln420_fu_612_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v179_fu_132 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v179_fu_132 <= select_ln421_fu_632_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v180_fu_124 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v180_fu_124 <= select_ln423_fu_652_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v181_fu_116 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v181_fu_116 <= select_ln424_fu_665_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v182_fu_112 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln419_reg_1048 == 1'd0))) begin
            v182_fu_112 <= add_ln425_fu_505_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v185_fu_108 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v185_fu_108 <= grp_fu_954_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln422_1_reg_1160 <= add_ln422_1_fu_849_p2;
        add_ln422_1_reg_1160_pp0_iter5_reg <= add_ln422_1_reg_1160;
        add_ln422_1_reg_1160_pp0_iter6_reg <= add_ln422_1_reg_1160_pp0_iter5_reg;
        add_ln422_1_reg_1160_pp0_iter7_reg <= add_ln422_1_reg_1160_pp0_iter6_reg;
        add_ln422_reg_1127 <= add_ln422_fu_696_p2;
        add_ln426_1_reg_1142 <= add_ln426_1_fu_792_p2;
        add_ln427_1_reg_1132 <= add_ln427_1_fu_768_p2;
        and_ln419_3_reg_1073_pp0_iter2_reg <= and_ln419_3_reg_1073;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_88_reg_1090 <= empty_88_fu_428_p2;
        empty_88_reg_1090_pp0_iter3_reg <= empty_88_reg_1090;
        empty_88_reg_1090_pp0_iter4_reg <= empty_88_reg_1090_pp0_iter3_reg;
        empty_88_reg_1090_pp0_iter5_reg <= empty_88_reg_1090_pp0_iter4_reg;
        empty_88_reg_1090_pp0_iter6_reg <= empty_88_reg_1090_pp0_iter5_reg;
        empty_90_reg_1101 <= empty_90_fu_451_p2;
        empty_reg_1079_pp0_iter2_reg <= empty_reg_1079;
        exitcond_flatten681_mid2719_reg_1096 <= exitcond_flatten681_mid2719_fu_439_p2;
        exitcond_flatten696_mid2755_reg_1085 <= exitcond_flatten696_mid2755_fu_417_p2;
        icmp_ln420_reg_1052_pp0_iter2_reg <= icmp_ln420_reg_1052;
        icmp_ln423_1_reg_1156 <= icmp_ln423_1_fu_808_p2;
        icmp_ln423_1_reg_1156_pp0_iter4_reg <= icmp_ln423_1_reg_1156;
        icmp_ln423_1_reg_1156_pp0_iter5_reg <= icmp_ln423_1_reg_1156_pp0_iter4_reg;
        icmp_ln423_1_reg_1156_pp0_iter6_reg <= icmp_ln423_1_reg_1156_pp0_iter5_reg;
        icmp_ln423_1_reg_1156_pp0_iter7_reg <= icmp_ln423_1_reg_1156_pp0_iter6_reg;
        icmp_ln424_1_reg_1152 <= icmp_ln424_1_fu_802_p2;
        icmp_ln424_1_reg_1152_pp0_iter4_reg <= icmp_ln424_1_reg_1152;
        icmp_ln424_1_reg_1152_pp0_iter5_reg <= icmp_ln424_1_reg_1152_pp0_iter4_reg;
        icmp_ln424_1_reg_1152_pp0_iter6_reg <= icmp_ln424_1_reg_1152_pp0_iter5_reg;
        icmp_ln424_1_reg_1152_pp0_iter7_reg <= icmp_ln424_1_reg_1152_pp0_iter6_reg;
        icmp_ln425_1_reg_1117 <= icmp_ln425_1_fu_511_p2;
        icmp_ln425_1_reg_1117_pp0_iter3_reg <= icmp_ln425_1_reg_1117;
        icmp_ln425_1_reg_1117_pp0_iter4_reg <= icmp_ln425_1_reg_1117_pp0_iter3_reg;
        icmp_ln425_1_reg_1117_pp0_iter5_reg <= icmp_ln425_1_reg_1117_pp0_iter4_reg;
        icmp_ln425_1_reg_1117_pp0_iter6_reg <= icmp_ln425_1_reg_1117_pp0_iter5_reg;
        icmp_ln425_1_reg_1117_pp0_iter7_reg <= icmp_ln425_1_reg_1117_pp0_iter6_reg;
        icmp_ln425_mid2693_reg_1106 <= icmp_ln425_mid2693_fu_474_p2;
        select_ln421_reg_1121 <= select_ln421_fu_632_p3;
        trunc_ln426_reg_1147 <= trunc_ln426_fu_798_p1;
        trunc_ln427_1_reg_1137 <= trunc_ln427_1_fu_774_p1;
        v182_mid2_reg_1111 <= v182_mid2_fu_497_p3;
        v182_mid2_reg_1111_pp0_iter3_reg <= v182_mid2_reg_1111;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln419_3_reg_1073 <= and_ln419_3_fu_298_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        empty_reg_1079 <= empty_fu_304_p2;
        icmp_ln419_reg_1048 <= icmp_ln419_fu_268_p2;
        icmp_ln420_reg_1052 <= icmp_ln420_fu_280_p2;
        icmp_ln421_reg_1068 <= icmp_ln421_fu_292_p2;
        xor_ln419_reg_1061 <= xor_ln419_fu_286_p2;
    end
end
always @ (*) begin
    if (((icmp_ln419_fu_268_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln419_reg_1048 == 1'd1))) begin
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
        ap_sig_allocacmp_v185_load = grp_fu_954_p3;
    end else begin
        ap_sig_allocacmp_v185_load = v185_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v44_ce1_local = 1'b1;
    end else begin
        v44_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln423_1_reg_1156_pp0_iter7_reg == 1'd1) & (icmp_ln424_1_reg_1152_pp0_iter7_reg == 1'd1) & (icmp_ln425_1_reg_1117_pp0_iter7_reg == 1'd1))) begin
        v44_we1_local = 1'b1;
    end else begin
        v44_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v45_ce0_local = 1'b1;
    end else begin
        v45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v5_EN_A_local = 1'b1;
    end else begin
        v5_EN_A_local = 1'b0;
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
assign add_ln419_1_fu_274_p2 = (indvar_flatten802_fu_152 + 25'd1);
assign add_ln419_fu_575_p2 = (v177_fu_148 + 9'd1);
assign add_ln420_1_fu_324_p2 = (indvar_flatten756_fu_144 + 18'd1);
assign add_ln420_fu_599_p2 = (select_ln419_fu_581_p3 + 4'd1);
assign add_ln421_1_fu_310_p2 = (indvar_flatten720_fu_136 + 15'd1);
assign add_ln421_fu_619_p2 = (v179_mid2727_fu_605_p3 + 4'd1);
assign add_ln422_1_fu_849_p2 = (tmp_fu_839_p3 + zext_ln422_2_fu_846_p1);
assign add_ln422_fu_696_p2 = (tmp_13_fu_684_p3 + zext_ln422_1_fu_692_p1);
assign add_ln423_1_fu_531_p2 = (indvar_flatten694_fu_128 + 12'd1);
assign add_ln423_fu_639_p2 = (v180_mid2701_fu_625_p3 + 8'd1);
assign add_ln424_1_fu_517_p2 = (indvar_flatten679_fu_120 + 4'd1);
assign add_ln424_fu_659_p2 = (v181_mid2686_fu_645_p3 + 2'd1);
assign add_ln425_1_fu_889_p2 = (p_shl_fu_871_p3 + zext_ln425_fu_885_p1);
assign add_ln425_fu_505_p2 = (v182_mid2_fu_497_p3 + 2'd1);
assign add_ln426_1_fu_792_p2 = (add_ln426_3_fu_758_p2 + zext_ln426_3_fu_788_p1);
assign add_ln426_2_fu_921_p2 = (add_ln425_1_fu_889_p2 + zext_ln426_4_fu_917_p1);
assign add_ln426_3_fu_758_p2 = (zext_ln426_fu_742_p1 + zext_ln426_2_fu_754_p1);
assign add_ln426_fu_912_p2 = (zext_ln425_1_fu_909_p1 + select_ln421_reg_1121);
assign add_ln427_1_fu_768_p2 = (sub_ln426_fu_728_p2 + zext_ln427_2_fu_764_p1);
assign add_ln427_2_fu_898_p2 = (sub_ln424_fu_865_p2 + zext_ln427_4_fu_895_p1);
assign add_ln427_fu_706_p2 = (zext_ln422_fu_680_p1 + zext_ln427_fu_702_p1);
assign and_ln419_1_fu_379_p2 = (xor_ln419_reg_1061 & icmp_ln424_fu_373_p2);
assign and_ln419_2_fu_412_p2 = (xor_ln419_reg_1061 & icmp_ln423_fu_384_p2);
assign and_ln419_3_fu_298_p2 = (xor_ln419_fu_286_p2 & icmp_ln421_fu_292_p2);
assign and_ln419_fu_368_p2 = (xor_ln419_reg_1061 & icmp_ln425_fu_362_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_87_fu_423_p2 = (exitcond_flatten696_mid2755_fu_417_p2 | and_ln419_3_reg_1073);
assign empty_88_fu_428_p2 = (icmp_ln420_reg_1052 | empty_87_fu_423_p2);
assign empty_89_fu_445_p2 = (exitcond_flatten696_mid2755_fu_417_p2 | exitcond_flatten681_mid2719_fu_439_p2);
assign empty_90_fu_451_p2 = (empty_reg_1079 | empty_89_fu_445_p2);
assign empty_91_fu_480_p2 = (exitcond_flatten681_mid2719_fu_439_p2 | empty_87_fu_423_p2);
assign empty_92_fu_486_p2 = (icmp_ln425_mid2693_fu_474_p2 | empty_91_fu_480_p2);
assign empty_93_fu_492_p2 = (icmp_ln420_reg_1052 | empty_92_fu_486_p2);
assign empty_94_fu_782_p2 = (zext_ln424_fu_778_p1 + select_ln420_fu_612_p3);
assign empty_fu_304_p2 = (icmp_ln420_fu_280_p2 | and_ln419_3_fu_298_p2);
assign exitcond_flatten681_mid2719_fu_439_p2 = (not_exitcond_flatten696_mid2755_fu_433_p2 & exitcond_flatten681_mid2751_fu_406_p2);
assign exitcond_flatten681_mid2751_fu_406_p2 = (not_exitcond_flatten722_mid280142_fu_395_p2 & and_ln419_1_fu_379_p2);
assign exitcond_flatten681_mid2751_not_fu_456_p2 = (exitcond_flatten681_mid2751_fu_406_p2 ^ 1'd1);
assign exitcond_flatten696_mid2755_fu_417_p2 = (not_exitcond_flatten722_mid280142_fu_395_p2 & and_ln419_2_fu_412_p2);
assign exitcond_flatten722_not43_fu_390_p2 = (icmp_ln421_reg_1068 ^ 1'd1);
assign grp_fu_954_p1 = grp_fu_954_p10;
assign grp_fu_954_p10 = v45_q0;
assign grp_fu_954_p2 = ((empty_88_reg_1090_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v185_load);
assign icmp_ln419_fu_268_p2 = ((indvar_flatten802_fu_152 == 25'd18874368) ? 1'b1 : 1'b0);
assign icmp_ln420_fu_280_p2 = ((indvar_flatten756_fu_144 == 18'd73728) ? 1'b1 : 1'b0);
assign icmp_ln421_fu_292_p2 = ((indvar_flatten720_fu_136 == 15'd9216) ? 1'b1 : 1'b0);
assign icmp_ln423_1_fu_808_p2 = ((select_ln423_fu_652_p3 == 8'd127) ? 1'b1 : 1'b0);
assign icmp_ln423_fu_384_p2 = ((indvar_flatten694_fu_128 == 12'd1152) ? 1'b1 : 1'b0);
assign icmp_ln424_1_fu_802_p2 = ((select_ln424_fu_665_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln424_fu_373_p2 = ((indvar_flatten679_fu_120 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln425_1_fu_511_p2 = ((add_ln425_fu_505_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln425_fu_362_p2 = ((v182_fu_112 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln425_mid2693_fu_474_p2 = (not_exitcond_flatten681_mid2719_fu_462_p2 & icmp_ln425_mid2715_fu_468_p2);
assign icmp_ln425_mid2715_fu_468_p2 = (not_exitcond_flatten696_mid2755_fu_433_p2 & icmp_ln425_mid2747_fu_400_p2);
assign icmp_ln425_mid2747_fu_400_p2 = (not_exitcond_flatten722_mid280142_fu_395_p2 & and_ln419_fu_368_p2);
assign not_exitcond_flatten681_mid2719_fu_462_p2 = (exitcond_flatten696_mid2755_fu_417_p2 | exitcond_flatten681_mid2751_not_fu_456_p2);
assign not_exitcond_flatten696_mid2755_fu_433_p2 = (exitcond_flatten696_mid2755_fu_417_p2 ^ 1'd1);
assign not_exitcond_flatten722_mid280142_fu_395_p2 = (icmp_ln420_reg_1052 | exitcond_flatten722_not43_fu_390_p2);
assign p_shl_fu_871_p3 = {{trunc_ln426_reg_1147}, {3'd0}};
assign select_ln419_1_fu_588_p3 = ((icmp_ln420_reg_1052_pp0_iter2_reg[0:0] == 1'b1) ? add_ln419_fu_575_p2 : v177_fu_148);
assign select_ln419_fu_581_p3 = ((icmp_ln420_reg_1052_pp0_iter2_reg[0:0] == 1'b1) ? 4'd0 : v178_fu_140);
assign select_ln420_1_fu_330_p3 = ((icmp_ln420_fu_280_p2[0:0] == 1'b1) ? 18'd1 : add_ln420_1_fu_324_p2);
assign select_ln420_fu_612_p3 = ((and_ln419_3_reg_1073_pp0_iter2_reg[0:0] == 1'b1) ? add_ln420_fu_599_p2 : select_ln419_fu_581_p3);
assign select_ln421_1_fu_316_p3 = ((empty_fu_304_p2[0:0] == 1'b1) ? 15'd1 : add_ln421_1_fu_310_p2);
assign select_ln421_fu_632_p3 = ((exitcond_flatten696_mid2755_reg_1085[0:0] == 1'b1) ? add_ln421_fu_619_p2 : v179_mid2727_fu_605_p3);
assign select_ln423_1_fu_537_p3 = ((empty_88_fu_428_p2[0:0] == 1'b1) ? 12'd1 : add_ln423_1_fu_531_p2);
assign select_ln423_fu_652_p3 = ((exitcond_flatten681_mid2719_reg_1096[0:0] == 1'b1) ? add_ln423_fu_639_p2 : v180_mid2701_fu_625_p3);
assign select_ln424_1_fu_523_p3 = ((empty_90_fu_451_p2[0:0] == 1'b1) ? 4'd1 : add_ln424_1_fu_517_p2);
assign select_ln424_fu_665_p3 = ((icmp_ln425_mid2693_reg_1106[0:0] == 1'b1) ? add_ln424_fu_659_p2 : v181_mid2686_fu_645_p3);
assign sub_ln424_fu_865_p2 = (tmp_67_fu_855_p3 - zext_ln427_3_fu_862_p1);
assign sub_ln426_fu_728_p2 = (tmp_64_fu_716_p3 - zext_ln427_1_fu_724_p1);
assign tmp_13_fu_684_p3 = {{trunc_ln420_fu_595_p1}, {3'd0}};
assign tmp_64_fu_716_p3 = {{trunc_ln427_fu_712_p1}, {2'd0}};
assign tmp_65_fu_734_p3 = {{select_ln423_fu_652_p3}, {3'd0}};
assign tmp_66_fu_746_p3 = {{select_ln423_fu_652_p3}, {1'd0}};
assign tmp_67_fu_855_p3 = {{trunc_ln427_1_reg_1137}, {2'd0}};
assign tmp_68_fu_878_p3 = {{add_ln426_1_reg_1142}, {1'd0}};
assign tmp_fu_839_p3 = {{add_ln422_reg_1127}, {3'd0}};
assign tmp_s_fu_672_p3 = {{select_ln419_1_fu_588_p3}, {7'd0}};
assign trunc_ln420_fu_595_p1 = select_ln419_1_fu_588_p3[7:0];
assign trunc_ln426_fu_798_p1 = add_ln426_1_fu_792_p2[10:0];
assign trunc_ln427_1_fu_774_p1 = add_ln427_1_fu_768_p2[16:0];
assign trunc_ln427_fu_712_p1 = add_ln427_fu_706_p2[15:0];
assign v179_mid2727_fu_605_p3 = ((empty_reg_1079_pp0_iter2_reg[0:0] == 1'b1) ? 4'd0 : v179_fu_132);
assign v180_mid2701_fu_625_p3 = ((empty_88_reg_1090[0:0] == 1'b1) ? 8'd0 : v180_fu_124);
assign v181_mid2686_fu_645_p3 = ((empty_90_reg_1101[0:0] == 1'b1) ? 2'd0 : v181_fu_116);
assign v182_mid2_fu_497_p3 = ((empty_93_fu_492_p2[0:0] == 1'b1) ? 2'd0 : v182_fu_112);
assign v44_address1 = zext_ln422_3_fu_946_p1;
assign v44_ce1 = v44_ce1_local;
assign v44_d1 = grp_fu_954_p3;
assign v44_we1 = v44_we1_local;
assign v45_address0 = zext_ln426_5_fu_927_p1;
assign v45_ce0 = v45_ce0_local;
assign v5_Addr_A = v5_Addr_A_orig << 32'd0;
assign v5_Addr_A_orig = zext_ln427_5_fu_904_p1;
assign v5_Din_A = 8'd0;
assign v5_EN_A = v5_EN_A_local;
assign v5_WEN_A = 1'd0;
assign xor_ln419_fu_286_p2 = (icmp_ln420_fu_280_p2 ^ 1'd1);
assign zext_ln422_1_fu_692_p1 = select_ln420_fu_612_p3;
assign zext_ln422_2_fu_846_p1 = select_ln421_reg_1121;
assign zext_ln422_3_fu_946_p1 = add_ln422_1_reg_1160_pp0_iter7_reg;
assign zext_ln422_fu_680_p1 = tmp_s_fu_672_p3;
assign zext_ln424_fu_778_p1 = select_ln424_fu_665_p3;
assign zext_ln425_1_fu_909_p1 = v182_mid2_reg_1111_pp0_iter3_reg;
assign zext_ln425_fu_885_p1 = tmp_68_fu_878_p3;
assign zext_ln426_2_fu_754_p1 = tmp_66_fu_746_p3;
assign zext_ln426_3_fu_788_p1 = empty_94_fu_782_p2;
assign zext_ln426_4_fu_917_p1 = add_ln426_fu_912_p2;
assign zext_ln426_5_fu_927_p1 = add_ln426_2_fu_921_p2;
assign zext_ln426_fu_742_p1 = tmp_65_fu_734_p3;
assign zext_ln427_1_fu_724_p1 = add_ln427_fu_706_p2;
assign zext_ln427_2_fu_764_p1 = select_ln424_fu_665_p3;
assign zext_ln427_3_fu_862_p1 = add_ln427_1_reg_1132;
assign zext_ln427_4_fu_895_p1 = v182_mid2_reg_1111_pp0_iter3_reg;
assign zext_ln427_5_fu_904_p1 = add_ln427_2_fu_898_p2;
assign zext_ln427_fu_702_p1 = select_ln423_fu_652_p3;
endmodule 