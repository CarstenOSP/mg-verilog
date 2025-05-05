module main_graph_main_graph_Pipeline_VITIS_LOOP_371_52_VITIS_LOOP_372_53_VITIS_LOOP_373_54_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v47_address1,v47_ce1,v47_we1,v47_d1,v4_Addr_A,v4_EN_A,v4_WEN_A,v4_Din_A,v4_Dout_A,v48_address0,v48_ce0,v48_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v47_address1;
output   v47_ce1;
output   v47_we1;
output  [7:0] v47_d1;
output  [31:0] v4_Addr_A;
output   v4_EN_A;
output  [0:0] v4_WEN_A;
output  [7:0] v4_Din_A;
input  [7:0] v4_Dout_A;
output  [15:0] v48_address0;
output   v48_ce0;
input  [6:0] v48_q0;
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
wire   [0:0] icmp_ln371_fu_268_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln371_reg_1068;
wire   [0:0] icmp_ln372_fu_280_p2;
reg   [0:0] icmp_ln372_reg_1072;
reg   [0:0] icmp_ln372_reg_1072_pp0_iter2_reg;
wire   [0:0] xor_ln371_fu_286_p2;
reg   [0:0] xor_ln371_reg_1081;
wire   [0:0] icmp_ln373_fu_292_p2;
reg   [0:0] icmp_ln373_reg_1088;
wire   [0:0] and_ln371_3_fu_298_p2;
reg   [0:0] and_ln371_3_reg_1093;
reg   [0:0] and_ln371_3_reg_1093_pp0_iter2_reg;
wire   [0:0] empty_fu_304_p2;
reg   [0:0] empty_reg_1099;
reg   [0:0] empty_reg_1099_pp0_iter2_reg;
wire   [0:0] exitcond_flatten504_mid2563_fu_417_p2;
reg   [0:0] exitcond_flatten504_mid2563_reg_1105;
wire   [0:0] empty_97_fu_428_p2;
reg   [0:0] empty_97_reg_1110;
reg   [0:0] empty_97_reg_1110_pp0_iter3_reg;
reg   [0:0] empty_97_reg_1110_pp0_iter4_reg;
reg   [0:0] empty_97_reg_1110_pp0_iter5_reg;
reg   [0:0] empty_97_reg_1110_pp0_iter6_reg;
wire   [0:0] exitcond_flatten489_mid2527_fu_439_p2;
reg   [0:0] exitcond_flatten489_mid2527_reg_1116;
wire   [0:0] empty_99_fu_451_p2;
reg   [0:0] empty_99_reg_1121;
wire   [0:0] icmp_ln377_mid2501_fu_474_p2;
reg   [0:0] icmp_ln377_mid2501_reg_1126;
wire   [1:0] v154_mid2_fu_497_p3;
reg   [1:0] v154_mid2_reg_1131;
reg   [1:0] v154_mid2_reg_1131_pp0_iter3_reg;
wire   [0:0] icmp_ln377_1_fu_511_p2;
reg   [0:0] icmp_ln377_1_reg_1137;
reg   [0:0] icmp_ln377_1_reg_1137_pp0_iter3_reg;
reg   [0:0] icmp_ln377_1_reg_1137_pp0_iter4_reg;
reg   [0:0] icmp_ln377_1_reg_1137_pp0_iter5_reg;
reg   [0:0] icmp_ln377_1_reg_1137_pp0_iter6_reg;
reg   [0:0] icmp_ln377_1_reg_1137_pp0_iter7_reg;
wire   [3:0] select_ln373_fu_632_p3;
reg   [3:0] select_ln373_reg_1141;
wire   [9:0] add_ln374_fu_696_p2;
reg   [9:0] add_ln374_reg_1147;
wire   [16:0] add_ln379_1_fu_778_p2;
reg   [16:0] add_ln379_1_reg_1152;
wire   [15:0] trunc_ln379_1_fu_784_p1;
reg   [15:0] trunc_ln379_1_reg_1157;
wire   [12:0] add_ln378_1_fu_802_p2;
reg   [12:0] add_ln378_1_reg_1162;
wire   [11:0] trunc_ln378_fu_808_p1;
reg   [11:0] trunc_ln378_reg_1167;
wire   [0:0] icmp_ln376_1_fu_812_p2;
reg   [0:0] icmp_ln376_1_reg_1172;
reg   [0:0] icmp_ln376_1_reg_1172_pp0_iter4_reg;
reg   [0:0] icmp_ln376_1_reg_1172_pp0_iter5_reg;
reg   [0:0] icmp_ln376_1_reg_1172_pp0_iter6_reg;
reg   [0:0] icmp_ln376_1_reg_1172_pp0_iter7_reg;
wire   [0:0] icmp_ln375_1_fu_818_p2;
reg   [0:0] icmp_ln375_1_reg_1176;
reg   [0:0] icmp_ln375_1_reg_1176_pp0_iter4_reg;
reg   [0:0] icmp_ln375_1_reg_1176_pp0_iter5_reg;
reg   [0:0] icmp_ln375_1_reg_1176_pp0_iter6_reg;
reg   [0:0] icmp_ln375_1_reg_1176_pp0_iter7_reg;
wire   [12:0] add_ln374_1_fu_859_p2;
reg   [12:0] add_ln374_1_reg_1180;
reg   [12:0] add_ln374_1_reg_1180_pp0_iter5_reg;
reg   [12:0] add_ln374_1_reg_1180_pp0_iter6_reg;
reg   [12:0] add_ln374_1_reg_1180_pp0_iter7_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln379_5_fu_923_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln378_5_fu_947_p1;
wire   [63:0] zext_ln374_3_fu_966_p1;
reg   [7:0] v157_fu_108;
wire   [7:0] grp_fu_974_p3;
reg   [7:0] ap_sig_allocacmp_v157_load;
wire    ap_loop_init;
reg   [1:0] v154_fu_112;
wire   [1:0] add_ln377_fu_505_p2;
reg   [1:0] v153_fu_116;
wire   [1:0] select_ln376_fu_665_p3;
reg   [3:0] indvar_flatten487_fu_120;
wire   [3:0] select_ln376_1_fu_523_p3;
reg   [7:0] v152_fu_124;
wire   [7:0] select_ln375_fu_652_p3;
reg   [11:0] indvar_flatten502_fu_128;
wire   [11:0] select_ln375_1_fu_537_p3;
reg   [3:0] v151_fu_132;
reg   [14:0] indvar_flatten528_fu_136;
wire   [14:0] select_ln373_1_fu_316_p3;
reg   [3:0] v150_fu_140;
wire   [3:0] select_ln372_fu_612_p3;
reg   [17:0] indvar_flatten564_fu_144;
wire   [17:0] select_ln372_1_fu_330_p3;
reg   [7:0] v149_fu_148;
wire   [7:0] select_ln371_1_fu_588_p3;
reg   [23:0] indvar_flatten610_fu_152;
wire   [23:0] add_ln371_1_fu_274_p2;
reg    v48_ce0_local;
reg    v4_EN_A_local;
wire   [31:0] v4_Addr_A_orig;
reg    v47_we1_local;
reg    v47_ce1_local;
wire   [14:0] add_ln373_1_fu_310_p2;
wire   [17:0] add_ln372_1_fu_324_p2;
wire   [0:0] icmp_ln377_fu_362_p2;
wire   [0:0] icmp_ln376_fu_373_p2;
wire   [0:0] exitcond_flatten530_not31_fu_390_p2;
wire   [0:0] and_ln371_fu_368_p2;
wire   [0:0] not_exitcond_flatten530_mid260930_fu_395_p2;
wire   [0:0] and_ln371_1_fu_379_p2;
wire   [0:0] icmp_ln375_fu_384_p2;
wire   [0:0] and_ln371_2_fu_412_p2;
wire   [0:0] empty_96_fu_423_p2;
wire   [0:0] exitcond_flatten489_mid2559_fu_406_p2;
wire   [0:0] not_exitcond_flatten504_mid2563_fu_433_p2;
wire   [0:0] empty_98_fu_445_p2;
wire   [0:0] exitcond_flatten489_mid2559_not_fu_456_p2;
wire   [0:0] icmp_ln377_mid2555_fu_400_p2;
wire   [0:0] icmp_ln377_mid2523_fu_468_p2;
wire   [0:0] not_exitcond_flatten489_mid2527_fu_462_p2;
wire   [0:0] empty_100_fu_480_p2;
wire   [0:0] empty_101_fu_486_p2;
wire   [0:0] empty_102_fu_492_p2;
wire   [3:0] add_ln376_1_fu_517_p2;
wire   [11:0] add_ln375_1_fu_531_p2;
wire   [7:0] add_ln371_fu_575_p2;
wire   [3:0] select_ln371_fu_581_p3;
wire   [3:0] add_ln372_fu_599_p2;
wire   [3:0] v151_mid2535_fu_605_p3;
wire   [3:0] add_ln373_fu_619_p2;
wire   [7:0] v152_mid2509_fu_625_p3;
wire   [7:0] add_ln375_fu_639_p2;
wire   [1:0] v153_mid2494_fu_645_p3;
wire   [1:0] add_ln376_fu_659_p2;
wire   [14:0] tmp_s_fu_672_p3;
wire   [6:0] trunc_ln372_fu_595_p1;
wire   [9:0] tmp_14_fu_684_p3;
wire   [9:0] zext_ln374_1_fu_692_p1;
wire   [3:0] empty_103_fu_702_p2;
wire   [15:0] zext_ln374_fu_680_p1;
wire   [15:0] zext_ln379_fu_712_p1;
wire   [15:0] add_ln379_fu_716_p2;
wire   [14:0] trunc_ln379_fu_722_p1;
wire   [16:0] tmp_75_fu_726_p3;
wire   [16:0] zext_ln379_1_fu_734_p1;
wire   [11:0] tmp_76_fu_744_p3;
wire   [8:0] tmp_77_fu_756_p3;
wire   [12:0] zext_ln378_fu_752_p1;
wire   [12:0] zext_ln378_2_fu_764_p1;
wire   [16:0] sub_ln378_fu_738_p2;
wire   [16:0] zext_ln379_2_fu_774_p1;
wire   [4:0] zext_ln376_fu_788_p1;
wire   [4:0] zext_ln373_fu_708_p1;
wire   [4:0] empty_105_fu_792_p2;
wire   [12:0] add_ln378_3_fu_768_p2;
wire   [12:0] zext_ln378_3_fu_798_p1;
wire   [12:0] tmp_fu_849_p3;
wire   [12:0] zext_ln374_2_fu_856_p1;
wire   [3:0] empty_104_fu_865_p2;
wire   [17:0] tmp_78_fu_874_p3;
wire   [17:0] zext_ln379_3_fu_881_p1;
wire   [13:0] tmp_79_fu_897_p3;
wire   [15:0] p_shl_fu_890_p3;
wire   [15:0] zext_ln377_fu_904_p1;
wire   [17:0] sub_ln376_fu_884_p2;
wire   [17:0] zext_ln379_4_fu_914_p1;
wire   [17:0] add_ln379_2_fu_917_p2;
wire   [4:0] zext_ln377_1_fu_928_p1;
wire   [4:0] zext_ln375_fu_870_p1;
wire   [4:0] add_ln378_fu_931_p2;
wire   [15:0] add_ln377_1_fu_908_p2;
wire   [15:0] zext_ln378_4_fu_937_p1;
wire   [15:0] add_ln378_2_fu_941_p2;
wire   [6:0] grp_fu_974_p1;
wire   [7:0] grp_fu_974_p2;
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
wire   [7:0] grp_fu_974_p10;
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
#0 v157_fu_108 = 8'd0;
#0 v154_fu_112 = 2'd0;
#0 v153_fu_116 = 2'd0;
#0 indvar_flatten487_fu_120 = 4'd0;
#0 v152_fu_124 = 8'd0;
#0 indvar_flatten502_fu_128 = 12'd0;
#0 v151_fu_132 = 4'd0;
#0 indvar_flatten528_fu_136 = 15'd0;
#0 v150_fu_140 = 4'd0;
#0 indvar_flatten564_fu_144 = 18'd0;
#0 v149_fu_148 = 8'd0;
#0 indvar_flatten610_fu_152 = 24'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(v4_Dout_A),.din1(grp_fu_974_p1),.din2(grp_fu_974_p2),.ce(1'b1),.dout(grp_fu_974_p3));
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
            indvar_flatten487_fu_120 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln371_reg_1068 == 1'd0))) begin
            indvar_flatten487_fu_120 <= select_ln376_1_fu_523_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            indvar_flatten502_fu_128 <= 12'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln371_reg_1068 == 1'd0))) begin
            indvar_flatten502_fu_128 <= select_ln375_1_fu_537_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten528_fu_136 <= 15'd0;
        end else if (((icmp_ln371_fu_268_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten528_fu_136 <= select_ln373_1_fu_316_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten564_fu_144 <= 18'd0;
        end else if (((icmp_ln371_fu_268_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten564_fu_144 <= select_ln372_1_fu_330_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten610_fu_152 <= 24'd0;
        end else if (((icmp_ln371_fu_268_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten610_fu_152 <= add_ln371_1_fu_274_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v149_fu_148 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v149_fu_148 <= select_ln371_1_fu_588_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v150_fu_140 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v150_fu_140 <= select_ln372_fu_612_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v151_fu_132 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v151_fu_132 <= select_ln373_fu_632_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v152_fu_124 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v152_fu_124 <= select_ln375_fu_652_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v153_fu_116 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v153_fu_116 <= select_ln376_fu_665_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v154_fu_112 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln371_reg_1068 == 1'd0))) begin
            v154_fu_112 <= add_ln377_fu_505_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v157_fu_108 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v157_fu_108 <= grp_fu_974_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln374_1_reg_1180 <= add_ln374_1_fu_859_p2;
        add_ln374_1_reg_1180_pp0_iter5_reg <= add_ln374_1_reg_1180;
        add_ln374_1_reg_1180_pp0_iter6_reg <= add_ln374_1_reg_1180_pp0_iter5_reg;
        add_ln374_1_reg_1180_pp0_iter7_reg <= add_ln374_1_reg_1180_pp0_iter6_reg;
        add_ln374_reg_1147 <= add_ln374_fu_696_p2;
        add_ln378_1_reg_1162 <= add_ln378_1_fu_802_p2;
        add_ln379_1_reg_1152 <= add_ln379_1_fu_778_p2;
        and_ln371_3_reg_1093_pp0_iter2_reg <= and_ln371_3_reg_1093;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_97_reg_1110 <= empty_97_fu_428_p2;
        empty_97_reg_1110_pp0_iter3_reg <= empty_97_reg_1110;
        empty_97_reg_1110_pp0_iter4_reg <= empty_97_reg_1110_pp0_iter3_reg;
        empty_97_reg_1110_pp0_iter5_reg <= empty_97_reg_1110_pp0_iter4_reg;
        empty_97_reg_1110_pp0_iter6_reg <= empty_97_reg_1110_pp0_iter5_reg;
        empty_99_reg_1121 <= empty_99_fu_451_p2;
        empty_reg_1099_pp0_iter2_reg <= empty_reg_1099;
        exitcond_flatten489_mid2527_reg_1116 <= exitcond_flatten489_mid2527_fu_439_p2;
        exitcond_flatten504_mid2563_reg_1105 <= exitcond_flatten504_mid2563_fu_417_p2;
        icmp_ln372_reg_1072_pp0_iter2_reg <= icmp_ln372_reg_1072;
        icmp_ln375_1_reg_1176 <= icmp_ln375_1_fu_818_p2;
        icmp_ln375_1_reg_1176_pp0_iter4_reg <= icmp_ln375_1_reg_1176;
        icmp_ln375_1_reg_1176_pp0_iter5_reg <= icmp_ln375_1_reg_1176_pp0_iter4_reg;
        icmp_ln375_1_reg_1176_pp0_iter6_reg <= icmp_ln375_1_reg_1176_pp0_iter5_reg;
        icmp_ln375_1_reg_1176_pp0_iter7_reg <= icmp_ln375_1_reg_1176_pp0_iter6_reg;
        icmp_ln376_1_reg_1172 <= icmp_ln376_1_fu_812_p2;
        icmp_ln376_1_reg_1172_pp0_iter4_reg <= icmp_ln376_1_reg_1172;
        icmp_ln376_1_reg_1172_pp0_iter5_reg <= icmp_ln376_1_reg_1172_pp0_iter4_reg;
        icmp_ln376_1_reg_1172_pp0_iter6_reg <= icmp_ln376_1_reg_1172_pp0_iter5_reg;
        icmp_ln376_1_reg_1172_pp0_iter7_reg <= icmp_ln376_1_reg_1172_pp0_iter6_reg;
        icmp_ln377_1_reg_1137 <= icmp_ln377_1_fu_511_p2;
        icmp_ln377_1_reg_1137_pp0_iter3_reg <= icmp_ln377_1_reg_1137;
        icmp_ln377_1_reg_1137_pp0_iter4_reg <= icmp_ln377_1_reg_1137_pp0_iter3_reg;
        icmp_ln377_1_reg_1137_pp0_iter5_reg <= icmp_ln377_1_reg_1137_pp0_iter4_reg;
        icmp_ln377_1_reg_1137_pp0_iter6_reg <= icmp_ln377_1_reg_1137_pp0_iter5_reg;
        icmp_ln377_1_reg_1137_pp0_iter7_reg <= icmp_ln377_1_reg_1137_pp0_iter6_reg;
        icmp_ln377_mid2501_reg_1126 <= icmp_ln377_mid2501_fu_474_p2;
        select_ln373_reg_1141 <= select_ln373_fu_632_p3;
        trunc_ln378_reg_1167 <= trunc_ln378_fu_808_p1;
        trunc_ln379_1_reg_1157 <= trunc_ln379_1_fu_784_p1;
        v154_mid2_reg_1131 <= v154_mid2_fu_497_p3;
        v154_mid2_reg_1131_pp0_iter3_reg <= v154_mid2_reg_1131;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln371_3_reg_1093 <= and_ln371_3_fu_298_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        empty_reg_1099 <= empty_fu_304_p2;
        icmp_ln371_reg_1068 <= icmp_ln371_fu_268_p2;
        icmp_ln372_reg_1072 <= icmp_ln372_fu_280_p2;
        icmp_ln373_reg_1088 <= icmp_ln373_fu_292_p2;
        xor_ln371_reg_1081 <= xor_ln371_fu_286_p2;
    end
end
always @ (*) begin
    if (((icmp_ln371_fu_268_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln371_reg_1068 == 1'd1))) begin
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
        ap_sig_allocacmp_v157_load = grp_fu_974_p3;
    end else begin
        ap_sig_allocacmp_v157_load = v157_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v47_ce1_local = 1'b1;
    end else begin
        v47_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln375_1_reg_1176_pp0_iter7_reg == 1'd1) & (icmp_ln376_1_reg_1172_pp0_iter7_reg == 1'd1) & (icmp_ln377_1_reg_1137_pp0_iter7_reg == 1'd1))) begin
        v47_we1_local = 1'b1;
    end else begin
        v47_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v48_ce0_local = 1'b1;
    end else begin
        v48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4_EN_A_local = 1'b1;
    end else begin
        v4_EN_A_local = 1'b0;
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
assign add_ln371_1_fu_274_p2 = (indvar_flatten610_fu_152 + 24'd1);
assign add_ln371_fu_575_p2 = (v149_fu_148 + 8'd1);
assign add_ln372_1_fu_324_p2 = (indvar_flatten564_fu_144 + 18'd1);
assign add_ln372_fu_599_p2 = (select_ln371_fu_581_p3 + 4'd1);
assign add_ln373_1_fu_310_p2 = (indvar_flatten528_fu_136 + 15'd1);
assign add_ln373_fu_619_p2 = (v151_mid2535_fu_605_p3 + 4'd1);
assign add_ln374_1_fu_859_p2 = (tmp_fu_849_p3 + zext_ln374_2_fu_856_p1);
assign add_ln374_fu_696_p2 = (tmp_14_fu_684_p3 + zext_ln374_1_fu_692_p1);
assign add_ln375_1_fu_531_p2 = (indvar_flatten502_fu_128 + 12'd1);
assign add_ln375_fu_639_p2 = (v152_mid2509_fu_625_p3 + 8'd1);
assign add_ln376_1_fu_517_p2 = (indvar_flatten487_fu_120 + 4'd1);
assign add_ln376_fu_659_p2 = (v153_mid2494_fu_645_p3 + 2'd1);
assign add_ln377_1_fu_908_p2 = (p_shl_fu_890_p3 + zext_ln377_fu_904_p1);
assign add_ln377_fu_505_p2 = (v154_mid2_fu_497_p3 + 2'd1);
assign add_ln378_1_fu_802_p2 = (add_ln378_3_fu_768_p2 + zext_ln378_3_fu_798_p1);
assign add_ln378_2_fu_941_p2 = (add_ln377_1_fu_908_p2 + zext_ln378_4_fu_937_p1);
assign add_ln378_3_fu_768_p2 = (zext_ln378_fu_752_p1 + zext_ln378_2_fu_764_p1);
assign add_ln378_fu_931_p2 = (zext_ln377_1_fu_928_p1 + zext_ln375_fu_870_p1);
assign add_ln379_1_fu_778_p2 = (sub_ln378_fu_738_p2 + zext_ln379_2_fu_774_p1);
assign add_ln379_2_fu_917_p2 = (sub_ln376_fu_884_p2 + zext_ln379_4_fu_914_p1);
assign add_ln379_fu_716_p2 = (zext_ln374_fu_680_p1 + zext_ln379_fu_712_p1);
assign and_ln371_1_fu_379_p2 = (xor_ln371_reg_1081 & icmp_ln376_fu_373_p2);
assign and_ln371_2_fu_412_p2 = (xor_ln371_reg_1081 & icmp_ln375_fu_384_p2);
assign and_ln371_3_fu_298_p2 = (xor_ln371_fu_286_p2 & icmp_ln373_fu_292_p2);
assign and_ln371_fu_368_p2 = (xor_ln371_reg_1081 & icmp_ln377_fu_362_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_100_fu_480_p2 = (exitcond_flatten489_mid2527_fu_439_p2 | empty_96_fu_423_p2);
assign empty_101_fu_486_p2 = (icmp_ln377_mid2501_fu_474_p2 | empty_100_fu_480_p2);
assign empty_102_fu_492_p2 = (icmp_ln372_reg_1072 | empty_101_fu_486_p2);
assign empty_103_fu_702_p2 = select_ln372_fu_612_p3 << 4'd1;
assign empty_104_fu_865_p2 = select_ln373_reg_1141 << 4'd1;
assign empty_105_fu_792_p2 = (zext_ln376_fu_788_p1 + zext_ln373_fu_708_p1);
assign empty_96_fu_423_p2 = (exitcond_flatten504_mid2563_fu_417_p2 | and_ln371_3_reg_1093);
assign empty_97_fu_428_p2 = (icmp_ln372_reg_1072 | empty_96_fu_423_p2);
assign empty_98_fu_445_p2 = (exitcond_flatten504_mid2563_fu_417_p2 | exitcond_flatten489_mid2527_fu_439_p2);
assign empty_99_fu_451_p2 = (empty_reg_1099 | empty_98_fu_445_p2);
assign empty_fu_304_p2 = (icmp_ln372_fu_280_p2 | and_ln371_3_fu_298_p2);
assign exitcond_flatten489_mid2527_fu_439_p2 = (not_exitcond_flatten504_mid2563_fu_433_p2 & exitcond_flatten489_mid2559_fu_406_p2);
assign exitcond_flatten489_mid2559_fu_406_p2 = (not_exitcond_flatten530_mid260930_fu_395_p2 & and_ln371_1_fu_379_p2);
assign exitcond_flatten489_mid2559_not_fu_456_p2 = (exitcond_flatten489_mid2559_fu_406_p2 ^ 1'd1);
assign exitcond_flatten504_mid2563_fu_417_p2 = (not_exitcond_flatten530_mid260930_fu_395_p2 & and_ln371_2_fu_412_p2);
assign exitcond_flatten530_not31_fu_390_p2 = (icmp_ln373_reg_1088 ^ 1'd1);
assign grp_fu_974_p1 = grp_fu_974_p10;
assign grp_fu_974_p10 = v48_q0;
assign grp_fu_974_p2 = ((empty_97_reg_1110_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v157_load);
assign icmp_ln371_fu_268_p2 = ((indvar_flatten610_fu_152 == 24'd9437184) ? 1'b1 : 1'b0);
assign icmp_ln372_fu_280_p2 = ((indvar_flatten564_fu_144 == 18'd73728) ? 1'b1 : 1'b0);
assign icmp_ln373_fu_292_p2 = ((indvar_flatten528_fu_136 == 15'd9216) ? 1'b1 : 1'b0);
assign icmp_ln375_1_fu_818_p2 = ((select_ln375_fu_652_p3 == 8'd127) ? 1'b1 : 1'b0);
assign icmp_ln375_fu_384_p2 = ((indvar_flatten502_fu_128 == 12'd1152) ? 1'b1 : 1'b0);
assign icmp_ln376_1_fu_812_p2 = ((select_ln376_fu_665_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln376_fu_373_p2 = ((indvar_flatten487_fu_120 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln377_1_fu_511_p2 = ((add_ln377_fu_505_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln377_fu_362_p2 = ((v154_fu_112 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln377_mid2501_fu_474_p2 = (not_exitcond_flatten489_mid2527_fu_462_p2 & icmp_ln377_mid2523_fu_468_p2);
assign icmp_ln377_mid2523_fu_468_p2 = (not_exitcond_flatten504_mid2563_fu_433_p2 & icmp_ln377_mid2555_fu_400_p2);
assign icmp_ln377_mid2555_fu_400_p2 = (not_exitcond_flatten530_mid260930_fu_395_p2 & and_ln371_fu_368_p2);
assign not_exitcond_flatten489_mid2527_fu_462_p2 = (exitcond_flatten504_mid2563_fu_417_p2 | exitcond_flatten489_mid2559_not_fu_456_p2);
assign not_exitcond_flatten504_mid2563_fu_433_p2 = (exitcond_flatten504_mid2563_fu_417_p2 ^ 1'd1);
assign not_exitcond_flatten530_mid260930_fu_395_p2 = (icmp_ln372_reg_1072 | exitcond_flatten530_not31_fu_390_p2);
assign p_shl_fu_890_p3 = {{trunc_ln378_reg_1167}, {4'd0}};
assign select_ln371_1_fu_588_p3 = ((icmp_ln372_reg_1072_pp0_iter2_reg[0:0] == 1'b1) ? add_ln371_fu_575_p2 : v149_fu_148);
assign select_ln371_fu_581_p3 = ((icmp_ln372_reg_1072_pp0_iter2_reg[0:0] == 1'b1) ? 4'd0 : v150_fu_140);
assign select_ln372_1_fu_330_p3 = ((icmp_ln372_fu_280_p2[0:0] == 1'b1) ? 18'd1 : add_ln372_1_fu_324_p2);
assign select_ln372_fu_612_p3 = ((and_ln371_3_reg_1093_pp0_iter2_reg[0:0] == 1'b1) ? add_ln372_fu_599_p2 : select_ln371_fu_581_p3);
assign select_ln373_1_fu_316_p3 = ((empty_fu_304_p2[0:0] == 1'b1) ? 15'd1 : add_ln373_1_fu_310_p2);
assign select_ln373_fu_632_p3 = ((exitcond_flatten504_mid2563_reg_1105[0:0] == 1'b1) ? add_ln373_fu_619_p2 : v151_mid2535_fu_605_p3);
assign select_ln375_1_fu_537_p3 = ((empty_97_fu_428_p2[0:0] == 1'b1) ? 12'd1 : add_ln375_1_fu_531_p2);
assign select_ln375_fu_652_p3 = ((exitcond_flatten489_mid2527_reg_1116[0:0] == 1'b1) ? add_ln375_fu_639_p2 : v152_mid2509_fu_625_p3);
assign select_ln376_1_fu_523_p3 = ((empty_99_fu_451_p2[0:0] == 1'b1) ? 4'd1 : add_ln376_1_fu_517_p2);
assign select_ln376_fu_665_p3 = ((icmp_ln377_mid2501_reg_1126[0:0] == 1'b1) ? add_ln376_fu_659_p2 : v153_mid2494_fu_645_p3);
assign sub_ln376_fu_884_p2 = (tmp_78_fu_874_p3 - zext_ln379_3_fu_881_p1);
assign sub_ln378_fu_738_p2 = (tmp_75_fu_726_p3 - zext_ln379_1_fu_734_p1);
assign tmp_14_fu_684_p3 = {{trunc_ln372_fu_595_p1}, {3'd0}};
assign tmp_75_fu_726_p3 = {{trunc_ln379_fu_722_p1}, {2'd0}};
assign tmp_76_fu_744_p3 = {{select_ln375_fu_652_p3}, {4'd0}};
assign tmp_77_fu_756_p3 = {{select_ln375_fu_652_p3}, {1'd0}};
assign tmp_78_fu_874_p3 = {{trunc_ln379_1_reg_1157}, {2'd0}};
assign tmp_79_fu_897_p3 = {{add_ln378_1_reg_1162}, {1'd0}};
assign tmp_fu_849_p3 = {{add_ln374_reg_1147}, {3'd0}};
assign tmp_s_fu_672_p3 = {{select_ln371_1_fu_588_p3}, {7'd0}};
assign trunc_ln372_fu_595_p1 = select_ln371_1_fu_588_p3[6:0];
assign trunc_ln378_fu_808_p1 = add_ln378_1_fu_802_p2[11:0];
assign trunc_ln379_1_fu_784_p1 = add_ln379_1_fu_778_p2[15:0];
assign trunc_ln379_fu_722_p1 = add_ln379_fu_716_p2[14:0];
assign v151_mid2535_fu_605_p3 = ((empty_reg_1099_pp0_iter2_reg[0:0] == 1'b1) ? 4'd0 : v151_fu_132);
assign v152_mid2509_fu_625_p3 = ((empty_97_reg_1110[0:0] == 1'b1) ? 8'd0 : v152_fu_124);
assign v153_mid2494_fu_645_p3 = ((empty_99_reg_1121[0:0] == 1'b1) ? 2'd0 : v153_fu_116);
assign v154_mid2_fu_497_p3 = ((empty_102_fu_492_p2[0:0] == 1'b1) ? 2'd0 : v154_fu_112);
assign v47_address1 = zext_ln374_3_fu_966_p1;
assign v47_ce1 = v47_ce1_local;
assign v47_d1 = grp_fu_974_p3;
assign v47_we1 = v47_we1_local;
assign v48_address0 = zext_ln378_5_fu_947_p1;
assign v48_ce0 = v48_ce0_local;
assign v4_Addr_A = v4_Addr_A_orig << 32'd0;
assign v4_Addr_A_orig = zext_ln379_5_fu_923_p1;
assign v4_Din_A = 8'd0;
assign v4_EN_A = v4_EN_A_local;
assign v4_WEN_A = 1'd0;
assign xor_ln371_fu_286_p2 = (icmp_ln372_fu_280_p2 ^ 1'd1);
assign zext_ln373_fu_708_p1 = empty_103_fu_702_p2;
assign zext_ln374_1_fu_692_p1 = select_ln372_fu_612_p3;
assign zext_ln374_2_fu_856_p1 = select_ln373_reg_1141;
assign zext_ln374_3_fu_966_p1 = add_ln374_1_reg_1180_pp0_iter7_reg;
assign zext_ln374_fu_680_p1 = tmp_s_fu_672_p3;
assign zext_ln375_fu_870_p1 = empty_104_fu_865_p2;
assign zext_ln376_fu_788_p1 = select_ln376_fu_665_p3;
assign zext_ln377_1_fu_928_p1 = v154_mid2_reg_1131_pp0_iter3_reg;
assign zext_ln377_fu_904_p1 = tmp_79_fu_897_p3;
assign zext_ln378_2_fu_764_p1 = tmp_77_fu_756_p3;
assign zext_ln378_3_fu_798_p1 = empty_105_fu_792_p2;
assign zext_ln378_4_fu_937_p1 = add_ln378_fu_931_p2;
assign zext_ln378_5_fu_947_p1 = add_ln378_2_fu_941_p2;
assign zext_ln378_fu_752_p1 = tmp_76_fu_744_p3;
assign zext_ln379_1_fu_734_p1 = add_ln379_fu_716_p2;
assign zext_ln379_2_fu_774_p1 = select_ln376_fu_665_p3;
assign zext_ln379_3_fu_881_p1 = add_ln379_1_reg_1152;
assign zext_ln379_4_fu_914_p1 = v154_mid2_reg_1131_pp0_iter3_reg;
assign zext_ln379_5_fu_923_p1 = add_ln379_2_fu_917_p2;
assign zext_ln379_fu_712_p1 = select_ln375_fu_652_p3;
endmodule 