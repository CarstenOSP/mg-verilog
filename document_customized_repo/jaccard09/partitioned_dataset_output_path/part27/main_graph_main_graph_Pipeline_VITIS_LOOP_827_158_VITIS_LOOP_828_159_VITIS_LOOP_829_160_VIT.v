
module main_graph_main_graph_Pipeline_VITIS_LOOP_827_158_VITIS_LOOP_828_159_VITIS_LOOP_829_160_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v54_address1,v54_ce1,v54_we1,v54_d1,v11_Addr_A,v11_EN_A,v11_WEN_A,v11_Din_A,v11_Dout_A,v55_address0,v55_ce0,v55_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v54_address1;
output   v54_ce1;
output   v54_we1;
output  [7:0] v54_d1;
output  [31:0] v11_Addr_A;
output   v11_EN_A;
output  [0:0] v11_WEN_A;
output  [7:0] v11_Din_A;
input  [7:0] v11_Dout_A;
output  [15:0] v55_address0;
output   v55_ce0;
input  [6:0] v55_q0;
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
wire   [0:0] icmp_ln827_fu_272_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln827_reg_1072;
wire   [0:0] icmp_ln828_fu_284_p2;
reg   [0:0] icmp_ln828_reg_1076;
reg   [0:0] icmp_ln828_reg_1076_pp0_iter2_reg;
wire   [0:0] xor_ln827_fu_290_p2;
reg   [0:0] xor_ln827_reg_1085;
wire   [0:0] icmp_ln829_fu_296_p2;
reg   [0:0] icmp_ln829_reg_1092;
wire   [0:0] and_ln827_3_fu_302_p2;
reg   [0:0] and_ln827_3_reg_1097;
reg   [0:0] and_ln827_3_reg_1097_pp0_iter2_reg;
wire   [0:0] empty_fu_308_p2;
reg   [0:0] empty_reg_1103;
reg   [0:0] empty_reg_1103_pp0_iter2_reg;
wire   [0:0] exitcond_flatten1756_mid21815_fu_421_p2;
reg   [0:0] exitcond_flatten1756_mid21815_reg_1109;
wire   [0:0] empty_45_fu_432_p2;
reg   [0:0] empty_45_reg_1114;
reg   [0:0] empty_45_reg_1114_pp0_iter3_reg;
reg   [0:0] empty_45_reg_1114_pp0_iter4_reg;
reg   [0:0] empty_45_reg_1114_pp0_iter5_reg;
reg   [0:0] empty_45_reg_1114_pp0_iter6_reg;
wire   [0:0] exitcond_flatten1741_mid21779_fu_443_p2;
reg   [0:0] exitcond_flatten1741_mid21779_reg_1120;
wire   [0:0] empty_47_fu_455_p2;
reg   [0:0] empty_47_reg_1125;
wire   [0:0] icmp_ln833_mid21753_fu_478_p2;
reg   [0:0] icmp_ln833_mid21753_reg_1130;
wire   [1:0] v401_mid2_fu_501_p3;
reg   [1:0] v401_mid2_reg_1135;
reg   [1:0] v401_mid2_reg_1135_pp0_iter3_reg;
wire   [0:0] icmp_ln833_1_fu_515_p2;
reg   [0:0] icmp_ln833_1_reg_1141;
reg   [0:0] icmp_ln833_1_reg_1141_pp0_iter3_reg;
reg   [0:0] icmp_ln833_1_reg_1141_pp0_iter4_reg;
reg   [0:0] icmp_ln833_1_reg_1141_pp0_iter5_reg;
reg   [0:0] icmp_ln833_1_reg_1141_pp0_iter6_reg;
reg   [0:0] icmp_ln833_1_reg_1141_pp0_iter7_reg;
wire   [3:0] select_ln829_fu_636_p3;
reg   [3:0] select_ln829_reg_1145;
wire   [10:0] add_ln830_fu_700_p2;
reg   [10:0] add_ln830_reg_1151;
wire   [17:0] add_ln835_1_fu_782_p2;
reg   [17:0] add_ln835_1_reg_1156;
wire   [16:0] trunc_ln835_1_fu_788_p1;
reg   [16:0] trunc_ln835_1_reg_1161;
wire   [12:0] add_ln834_1_fu_806_p2;
reg   [12:0] add_ln834_1_reg_1166;
wire   [11:0] trunc_ln834_fu_812_p1;
reg   [11:0] trunc_ln834_reg_1171;
wire   [0:0] icmp_ln832_1_fu_816_p2;
reg   [0:0] icmp_ln832_1_reg_1176;
reg   [0:0] icmp_ln832_1_reg_1176_pp0_iter4_reg;
reg   [0:0] icmp_ln832_1_reg_1176_pp0_iter5_reg;
reg   [0:0] icmp_ln832_1_reg_1176_pp0_iter6_reg;
reg   [0:0] icmp_ln832_1_reg_1176_pp0_iter7_reg;
wire   [0:0] icmp_ln831_1_fu_822_p2;
reg   [0:0] icmp_ln831_1_reg_1180;
reg   [0:0] icmp_ln831_1_reg_1180_pp0_iter4_reg;
reg   [0:0] icmp_ln831_1_reg_1180_pp0_iter5_reg;
reg   [0:0] icmp_ln831_1_reg_1180_pp0_iter6_reg;
reg   [0:0] icmp_ln831_1_reg_1180_pp0_iter7_reg;
wire   [13:0] add_ln830_1_fu_863_p2;
reg   [13:0] add_ln830_1_reg_1184;
reg   [13:0] add_ln830_1_reg_1184_pp0_iter5_reg;
reg   [13:0] add_ln830_1_reg_1184_pp0_iter6_reg;
reg   [13:0] add_ln830_1_reg_1184_pp0_iter7_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln835_5_fu_927_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln834_5_fu_951_p1;
wire   [63:0] zext_ln830_3_fu_970_p1;
reg   [7:0] v404_fu_112;
wire   [7:0] grp_fu_978_p3;
reg   [7:0] ap_sig_allocacmp_v404_load;
wire    ap_loop_init;
reg   [1:0] v401_fu_116;
wire   [1:0] add_ln833_fu_509_p2;
reg   [1:0] v400_fu_120;
wire   [1:0] select_ln832_fu_669_p3;
reg   [3:0] indvar_flatten1739_fu_124;
wire   [3:0] select_ln832_1_fu_527_p3;
reg   [7:0] v399_fu_128;
wire   [7:0] select_ln831_fu_656_p3;
reg   [11:0] indvar_flatten1754_fu_132;
wire   [11:0] select_ln831_1_fu_541_p3;
reg   [3:0] v398_fu_136;
reg   [14:0] indvar_flatten1780_fu_140;
wire   [14:0] select_ln829_1_fu_320_p3;
reg   [3:0] v397_fu_144;
wire   [3:0] select_ln828_fu_616_p3;
reg   [17:0] indvar_flatten1816_fu_148;
wire   [17:0] select_ln828_1_fu_334_p3;
reg   [8:0] v396_fu_152;
wire   [8:0] select_ln827_1_fu_592_p3;
reg   [24:0] indvar_flatten1862_fu_156;
wire   [24:0] add_ln827_1_fu_278_p2;
reg    v55_ce0_local;
reg    v11_EN_A_local;
wire   [31:0] v11_Addr_A_orig;
reg    v54_we1_local;
reg    v54_ce1_local;
wire   [14:0] add_ln829_1_fu_314_p2;
wire   [17:0] add_ln828_1_fu_328_p2;
wire   [0:0] icmp_ln833_fu_366_p2;
wire   [0:0] icmp_ln832_fu_377_p2;
wire   [0:0] exitcond_flatten1782_not103_fu_394_p2;
wire   [0:0] and_ln827_fu_372_p2;
wire   [0:0] not_exitcond_flatten1782_mid21861102_fu_399_p2;
wire   [0:0] and_ln827_1_fu_383_p2;
wire   [0:0] icmp_ln831_fu_388_p2;
wire   [0:0] and_ln827_2_fu_416_p2;
wire   [0:0] empty_44_fu_427_p2;
wire   [0:0] exitcond_flatten1741_mid21811_fu_410_p2;
wire   [0:0] not_exitcond_flatten1756_mid21815_fu_437_p2;
wire   [0:0] empty_46_fu_449_p2;
wire   [0:0] exitcond_flatten1741_mid21811_not_fu_460_p2;
wire   [0:0] icmp_ln833_mid21807_fu_404_p2;
wire   [0:0] icmp_ln833_mid21775_fu_472_p2;
wire   [0:0] not_exitcond_flatten1741_mid21779_fu_466_p2;
wire   [0:0] empty_48_fu_484_p2;
wire   [0:0] empty_49_fu_490_p2;
wire   [0:0] empty_50_fu_496_p2;
wire   [3:0] add_ln832_1_fu_521_p2;
wire   [11:0] add_ln831_1_fu_535_p2;
wire   [8:0] add_ln827_fu_579_p2;
wire   [3:0] select_ln827_fu_585_p3;
wire   [3:0] add_ln828_fu_603_p2;
wire   [3:0] v398_mid21787_fu_609_p3;
wire   [3:0] add_ln829_fu_623_p2;
wire   [7:0] v399_mid21761_fu_629_p3;
wire   [7:0] add_ln831_fu_643_p2;
wire   [1:0] v400_mid21746_fu_649_p3;
wire   [1:0] add_ln832_fu_663_p2;
wire   [15:0] tmp_s_fu_676_p3;
wire   [7:0] trunc_ln828_fu_599_p1;
wire   [10:0] tmp_5_fu_688_p3;
wire   [10:0] zext_ln830_1_fu_696_p1;
wire   [3:0] empty_51_fu_706_p2;
wire   [16:0] zext_ln830_fu_684_p1;
wire   [16:0] zext_ln835_fu_716_p1;
wire   [16:0] add_ln835_fu_720_p2;
wire   [15:0] trunc_ln835_fu_726_p1;
wire   [17:0] tmp_29_fu_730_p3;
wire   [17:0] zext_ln835_1_fu_738_p1;
wire   [11:0] tmp_30_fu_748_p3;
wire   [8:0] tmp_31_fu_760_p3;
wire   [12:0] zext_ln834_fu_756_p1;
wire   [12:0] zext_ln834_2_fu_768_p1;
wire   [17:0] sub_ln834_fu_742_p2;
wire   [17:0] zext_ln835_2_fu_778_p1;
wire   [4:0] zext_ln832_fu_792_p1;
wire   [4:0] zext_ln829_fu_712_p1;
wire   [4:0] empty_53_fu_796_p2;
wire   [12:0] add_ln834_3_fu_772_p2;
wire   [12:0] zext_ln834_3_fu_802_p1;
wire   [13:0] tmp_fu_853_p3;
wire   [13:0] zext_ln830_2_fu_860_p1;
wire   [3:0] empty_52_fu_869_p2;
wire   [18:0] tmp_32_fu_878_p3;
wire   [18:0] zext_ln835_3_fu_885_p1;
wire   [13:0] tmp_33_fu_901_p3;
wire   [15:0] p_shl_fu_894_p3;
wire   [15:0] zext_ln833_fu_908_p1;
wire   [18:0] sub_ln832_fu_888_p2;
wire   [18:0] zext_ln835_4_fu_918_p1;
wire   [18:0] add_ln835_2_fu_921_p2;
wire   [4:0] zext_ln833_1_fu_932_p1;
wire   [4:0] zext_ln831_fu_874_p1;
wire   [4:0] add_ln834_fu_935_p2;
wire   [15:0] add_ln833_1_fu_912_p2;
wire   [15:0] zext_ln834_4_fu_941_p1;
wire   [15:0] add_ln834_2_fu_945_p2;
wire   [6:0] grp_fu_978_p1;
wire   [7:0] grp_fu_978_p2;
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
wire   [7:0] grp_fu_978_p10;
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
#0 v404_fu_112 = 8'd0;
#0 v401_fu_116 = 2'd0;
#0 v400_fu_120 = 2'd0;
#0 indvar_flatten1739_fu_124 = 4'd0;
#0 v399_fu_128 = 8'd0;
#0 indvar_flatten1754_fu_132 = 12'd0;
#0 v398_fu_136 = 4'd0;
#0 indvar_flatten1780_fu_140 = 15'd0;
#0 v397_fu_144 = 4'd0;
#0 indvar_flatten1816_fu_148 = 18'd0;
#0 v396_fu_152 = 9'd0;
#0 indvar_flatten1862_fu_156 = 25'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U223(.clk(ap_clk),.reset(ap_rst),.din0(v11_Dout_A),.din1(grp_fu_978_p1),.din2(grp_fu_978_p2),.ce(1'b1),.dout(grp_fu_978_p3));
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
            indvar_flatten1739_fu_124 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln827_reg_1072 == 1'd0))) begin
            indvar_flatten1739_fu_124 <= select_ln832_1_fu_527_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            indvar_flatten1754_fu_132 <= 12'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln827_reg_1072 == 1'd0))) begin
            indvar_flatten1754_fu_132 <= select_ln831_1_fu_541_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1780_fu_140 <= 15'd0;
        end else if (((icmp_ln827_fu_272_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1780_fu_140 <= select_ln829_1_fu_320_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1816_fu_148 <= 18'd0;
        end else if (((icmp_ln827_fu_272_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1816_fu_148 <= select_ln828_1_fu_334_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1862_fu_156 <= 25'd0;
        end else if (((icmp_ln827_fu_272_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1862_fu_156 <= add_ln827_1_fu_278_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v396_fu_152 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v396_fu_152 <= select_ln827_1_fu_592_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v397_fu_144 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v397_fu_144 <= select_ln828_fu_616_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v398_fu_136 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v398_fu_136 <= select_ln829_fu_636_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v399_fu_128 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v399_fu_128 <= select_ln831_fu_656_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v400_fu_120 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v400_fu_120 <= select_ln832_fu_669_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v401_fu_116 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln827_reg_1072 == 1'd0))) begin
            v401_fu_116 <= add_ln833_fu_509_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v404_fu_112 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v404_fu_112 <= grp_fu_978_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln830_1_reg_1184 <= add_ln830_1_fu_863_p2;
        add_ln830_1_reg_1184_pp0_iter5_reg <= add_ln830_1_reg_1184;
        add_ln830_1_reg_1184_pp0_iter6_reg <= add_ln830_1_reg_1184_pp0_iter5_reg;
        add_ln830_1_reg_1184_pp0_iter7_reg <= add_ln830_1_reg_1184_pp0_iter6_reg;
        add_ln830_reg_1151 <= add_ln830_fu_700_p2;
        add_ln834_1_reg_1166 <= add_ln834_1_fu_806_p2;
        add_ln835_1_reg_1156 <= add_ln835_1_fu_782_p2;
        and_ln827_3_reg_1097_pp0_iter2_reg <= and_ln827_3_reg_1097;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_45_reg_1114 <= empty_45_fu_432_p2;
        empty_45_reg_1114_pp0_iter3_reg <= empty_45_reg_1114;
        empty_45_reg_1114_pp0_iter4_reg <= empty_45_reg_1114_pp0_iter3_reg;
        empty_45_reg_1114_pp0_iter5_reg <= empty_45_reg_1114_pp0_iter4_reg;
        empty_45_reg_1114_pp0_iter6_reg <= empty_45_reg_1114_pp0_iter5_reg;
        empty_47_reg_1125 <= empty_47_fu_455_p2;
        empty_reg_1103_pp0_iter2_reg <= empty_reg_1103;
        exitcond_flatten1741_mid21779_reg_1120 <= exitcond_flatten1741_mid21779_fu_443_p2;
        exitcond_flatten1756_mid21815_reg_1109 <= exitcond_flatten1756_mid21815_fu_421_p2;
        icmp_ln828_reg_1076_pp0_iter2_reg <= icmp_ln828_reg_1076;
        icmp_ln831_1_reg_1180 <= icmp_ln831_1_fu_822_p2;
        icmp_ln831_1_reg_1180_pp0_iter4_reg <= icmp_ln831_1_reg_1180;
        icmp_ln831_1_reg_1180_pp0_iter5_reg <= icmp_ln831_1_reg_1180_pp0_iter4_reg;
        icmp_ln831_1_reg_1180_pp0_iter6_reg <= icmp_ln831_1_reg_1180_pp0_iter5_reg;
        icmp_ln831_1_reg_1180_pp0_iter7_reg <= icmp_ln831_1_reg_1180_pp0_iter6_reg;
        icmp_ln832_1_reg_1176 <= icmp_ln832_1_fu_816_p2;
        icmp_ln832_1_reg_1176_pp0_iter4_reg <= icmp_ln832_1_reg_1176;
        icmp_ln832_1_reg_1176_pp0_iter5_reg <= icmp_ln832_1_reg_1176_pp0_iter4_reg;
        icmp_ln832_1_reg_1176_pp0_iter6_reg <= icmp_ln832_1_reg_1176_pp0_iter5_reg;
        icmp_ln832_1_reg_1176_pp0_iter7_reg <= icmp_ln832_1_reg_1176_pp0_iter6_reg;
        icmp_ln833_1_reg_1141 <= icmp_ln833_1_fu_515_p2;
        icmp_ln833_1_reg_1141_pp0_iter3_reg <= icmp_ln833_1_reg_1141;
        icmp_ln833_1_reg_1141_pp0_iter4_reg <= icmp_ln833_1_reg_1141_pp0_iter3_reg;
        icmp_ln833_1_reg_1141_pp0_iter5_reg <= icmp_ln833_1_reg_1141_pp0_iter4_reg;
        icmp_ln833_1_reg_1141_pp0_iter6_reg <= icmp_ln833_1_reg_1141_pp0_iter5_reg;
        icmp_ln833_1_reg_1141_pp0_iter7_reg <= icmp_ln833_1_reg_1141_pp0_iter6_reg;
        icmp_ln833_mid21753_reg_1130 <= icmp_ln833_mid21753_fu_478_p2;
        select_ln829_reg_1145 <= select_ln829_fu_636_p3;
        trunc_ln834_reg_1171 <= trunc_ln834_fu_812_p1;
        trunc_ln835_1_reg_1161 <= trunc_ln835_1_fu_788_p1;
        v401_mid2_reg_1135 <= v401_mid2_fu_501_p3;
        v401_mid2_reg_1135_pp0_iter3_reg <= v401_mid2_reg_1135;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln827_3_reg_1097 <= and_ln827_3_fu_302_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        empty_reg_1103 <= empty_fu_308_p2;
        icmp_ln827_reg_1072 <= icmp_ln827_fu_272_p2;
        icmp_ln828_reg_1076 <= icmp_ln828_fu_284_p2;
        icmp_ln829_reg_1092 <= icmp_ln829_fu_296_p2;
        xor_ln827_reg_1085 <= xor_ln827_fu_290_p2;
    end
end
always @ (*) begin
    if (((icmp_ln827_fu_272_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln827_reg_1072 == 1'd1))) begin
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
        ap_sig_allocacmp_v404_load = grp_fu_978_p3;
    end else begin
        ap_sig_allocacmp_v404_load = v404_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v11_EN_A_local = 1'b1;
    end else begin
        v11_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v54_ce1_local = 1'b1;
    end else begin
        v54_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln831_1_reg_1180_pp0_iter7_reg == 1'd1) & (icmp_ln832_1_reg_1176_pp0_iter7_reg == 1'd1) & (icmp_ln833_1_reg_1141_pp0_iter7_reg == 1'd1))) begin
        v54_we1_local = 1'b1;
    end else begin
        v54_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v55_ce0_local = 1'b1;
    end else begin
        v55_ce0_local = 1'b0;
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
assign add_ln827_1_fu_278_p2 = (indvar_flatten1862_fu_156 + 25'd1);
assign add_ln827_fu_579_p2 = (v396_fu_152 + 9'd1);
assign add_ln828_1_fu_328_p2 = (indvar_flatten1816_fu_148 + 18'd1);
assign add_ln828_fu_603_p2 = (select_ln827_fu_585_p3 + 4'd1);
assign add_ln829_1_fu_314_p2 = (indvar_flatten1780_fu_140 + 15'd1);
assign add_ln829_fu_623_p2 = (v398_mid21787_fu_609_p3 + 4'd1);
assign add_ln830_1_fu_863_p2 = (tmp_fu_853_p3 + zext_ln830_2_fu_860_p1);
assign add_ln830_fu_700_p2 = (tmp_5_fu_688_p3 + zext_ln830_1_fu_696_p1);
assign add_ln831_1_fu_535_p2 = (indvar_flatten1754_fu_132 + 12'd1);
assign add_ln831_fu_643_p2 = (v399_mid21761_fu_629_p3 + 8'd1);
assign add_ln832_1_fu_521_p2 = (indvar_flatten1739_fu_124 + 4'd1);
assign add_ln832_fu_663_p2 = (v400_mid21746_fu_649_p3 + 2'd1);
assign add_ln833_1_fu_912_p2 = (p_shl_fu_894_p3 + zext_ln833_fu_908_p1);
assign add_ln833_fu_509_p2 = (v401_mid2_fu_501_p3 + 2'd1);
assign add_ln834_1_fu_806_p2 = (add_ln834_3_fu_772_p2 + zext_ln834_3_fu_802_p1);
assign add_ln834_2_fu_945_p2 = (add_ln833_1_fu_912_p2 + zext_ln834_4_fu_941_p1);
assign add_ln834_3_fu_772_p2 = (zext_ln834_fu_756_p1 + zext_ln834_2_fu_768_p1);
assign add_ln834_fu_935_p2 = (zext_ln833_1_fu_932_p1 + zext_ln831_fu_874_p1);
assign add_ln835_1_fu_782_p2 = (sub_ln834_fu_742_p2 + zext_ln835_2_fu_778_p1);
assign add_ln835_2_fu_921_p2 = (sub_ln832_fu_888_p2 + zext_ln835_4_fu_918_p1);
assign add_ln835_fu_720_p2 = (zext_ln830_fu_684_p1 + zext_ln835_fu_716_p1);
assign and_ln827_1_fu_383_p2 = (xor_ln827_reg_1085 & icmp_ln832_fu_377_p2);
assign and_ln827_2_fu_416_p2 = (xor_ln827_reg_1085 & icmp_ln831_fu_388_p2);
assign and_ln827_3_fu_302_p2 = (xor_ln827_fu_290_p2 & icmp_ln829_fu_296_p2);
assign and_ln827_fu_372_p2 = (xor_ln827_reg_1085 & icmp_ln833_fu_366_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_44_fu_427_p2 = (exitcond_flatten1756_mid21815_fu_421_p2 | and_ln827_3_reg_1097);
assign empty_45_fu_432_p2 = (icmp_ln828_reg_1076 | empty_44_fu_427_p2);
assign empty_46_fu_449_p2 = (exitcond_flatten1756_mid21815_fu_421_p2 | exitcond_flatten1741_mid21779_fu_443_p2);
assign empty_47_fu_455_p2 = (empty_reg_1103 | empty_46_fu_449_p2);
assign empty_48_fu_484_p2 = (exitcond_flatten1741_mid21779_fu_443_p2 | empty_44_fu_427_p2);
assign empty_49_fu_490_p2 = (icmp_ln833_mid21753_fu_478_p2 | empty_48_fu_484_p2);
assign empty_50_fu_496_p2 = (icmp_ln828_reg_1076 | empty_49_fu_490_p2);
assign empty_51_fu_706_p2 = select_ln828_fu_616_p3 << 4'd1;
assign empty_52_fu_869_p2 = select_ln829_reg_1145 << 4'd1;
assign empty_53_fu_796_p2 = (zext_ln832_fu_792_p1 + zext_ln829_fu_712_p1);
assign empty_fu_308_p2 = (icmp_ln828_fu_284_p2 | and_ln827_3_fu_302_p2);
assign exitcond_flatten1741_mid21779_fu_443_p2 = (not_exitcond_flatten1756_mid21815_fu_437_p2 & exitcond_flatten1741_mid21811_fu_410_p2);
assign exitcond_flatten1741_mid21811_fu_410_p2 = (not_exitcond_flatten1782_mid21861102_fu_399_p2 & and_ln827_1_fu_383_p2);
assign exitcond_flatten1741_mid21811_not_fu_460_p2 = (exitcond_flatten1741_mid21811_fu_410_p2 ^ 1'd1);
assign exitcond_flatten1756_mid21815_fu_421_p2 = (not_exitcond_flatten1782_mid21861102_fu_399_p2 & and_ln827_2_fu_416_p2);
assign exitcond_flatten1782_not103_fu_394_p2 = (icmp_ln829_reg_1092 ^ 1'd1);
assign grp_fu_978_p1 = grp_fu_978_p10;
assign grp_fu_978_p10 = v55_q0;
assign grp_fu_978_p2 = ((empty_45_reg_1114_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v404_load);
assign icmp_ln827_fu_272_p2 = ((indvar_flatten1862_fu_156 == 25'd18874368) ? 1'b1 : 1'b0);
assign icmp_ln828_fu_284_p2 = ((indvar_flatten1816_fu_148 == 18'd73728) ? 1'b1 : 1'b0);
assign icmp_ln829_fu_296_p2 = ((indvar_flatten1780_fu_140 == 15'd9216) ? 1'b1 : 1'b0);
assign icmp_ln831_1_fu_822_p2 = ((select_ln831_fu_656_p3 == 8'd127) ? 1'b1 : 1'b0);
assign icmp_ln831_fu_388_p2 = ((indvar_flatten1754_fu_132 == 12'd1152) ? 1'b1 : 1'b0);
assign icmp_ln832_1_fu_816_p2 = ((select_ln832_fu_669_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln832_fu_377_p2 = ((indvar_flatten1739_fu_124 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln833_1_fu_515_p2 = ((add_ln833_fu_509_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln833_fu_366_p2 = ((v401_fu_116 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln833_mid21753_fu_478_p2 = (not_exitcond_flatten1741_mid21779_fu_466_p2 & icmp_ln833_mid21775_fu_472_p2);
assign icmp_ln833_mid21775_fu_472_p2 = (not_exitcond_flatten1756_mid21815_fu_437_p2 & icmp_ln833_mid21807_fu_404_p2);
assign icmp_ln833_mid21807_fu_404_p2 = (not_exitcond_flatten1782_mid21861102_fu_399_p2 & and_ln827_fu_372_p2);
assign not_exitcond_flatten1741_mid21779_fu_466_p2 = (exitcond_flatten1756_mid21815_fu_421_p2 | exitcond_flatten1741_mid21811_not_fu_460_p2);
assign not_exitcond_flatten1756_mid21815_fu_437_p2 = (exitcond_flatten1756_mid21815_fu_421_p2 ^ 1'd1);
assign not_exitcond_flatten1782_mid21861102_fu_399_p2 = (icmp_ln828_reg_1076 | exitcond_flatten1782_not103_fu_394_p2);
assign p_shl_fu_894_p3 = {{trunc_ln834_reg_1171}, {4'd0}};
assign select_ln827_1_fu_592_p3 = ((icmp_ln828_reg_1076_pp0_iter2_reg[0:0] == 1'b1) ? add_ln827_fu_579_p2 : v396_fu_152);
assign select_ln827_fu_585_p3 = ((icmp_ln828_reg_1076_pp0_iter2_reg[0:0] == 1'b1) ? 4'd0 : v397_fu_144);
assign select_ln828_1_fu_334_p3 = ((icmp_ln828_fu_284_p2[0:0] == 1'b1) ? 18'd1 : add_ln828_1_fu_328_p2);
assign select_ln828_fu_616_p3 = ((and_ln827_3_reg_1097_pp0_iter2_reg[0:0] == 1'b1) ? add_ln828_fu_603_p2 : select_ln827_fu_585_p3);
assign select_ln829_1_fu_320_p3 = ((empty_fu_308_p2[0:0] == 1'b1) ? 15'd1 : add_ln829_1_fu_314_p2);
assign select_ln829_fu_636_p3 = ((exitcond_flatten1756_mid21815_reg_1109[0:0] == 1'b1) ? add_ln829_fu_623_p2 : v398_mid21787_fu_609_p3);
assign select_ln831_1_fu_541_p3 = ((empty_45_fu_432_p2[0:0] == 1'b1) ? 12'd1 : add_ln831_1_fu_535_p2);
assign select_ln831_fu_656_p3 = ((exitcond_flatten1741_mid21779_reg_1120[0:0] == 1'b1) ? add_ln831_fu_643_p2 : v399_mid21761_fu_629_p3);
assign select_ln832_1_fu_527_p3 = ((empty_47_fu_455_p2[0:0] == 1'b1) ? 4'd1 : add_ln832_1_fu_521_p2);
assign select_ln832_fu_669_p3 = ((icmp_ln833_mid21753_reg_1130[0:0] == 1'b1) ? add_ln832_fu_663_p2 : v400_mid21746_fu_649_p3);
assign sub_ln832_fu_888_p2 = (tmp_32_fu_878_p3 - zext_ln835_3_fu_885_p1);
assign sub_ln834_fu_742_p2 = (tmp_29_fu_730_p3 - zext_ln835_1_fu_738_p1);
assign tmp_29_fu_730_p3 = {{trunc_ln835_fu_726_p1}, {2'd0}};
assign tmp_30_fu_748_p3 = {{select_ln831_fu_656_p3}, {4'd0}};
assign tmp_31_fu_760_p3 = {{select_ln831_fu_656_p3}, {1'd0}};
assign tmp_32_fu_878_p3 = {{trunc_ln835_1_reg_1161}, {2'd0}};
assign tmp_33_fu_901_p3 = {{add_ln834_1_reg_1166}, {1'd0}};
assign tmp_5_fu_688_p3 = {{trunc_ln828_fu_599_p1}, {3'd0}};
assign tmp_fu_853_p3 = {{add_ln830_reg_1151}, {3'd0}};
assign tmp_s_fu_676_p3 = {{select_ln827_1_fu_592_p3}, {7'd0}};
assign trunc_ln828_fu_599_p1 = select_ln827_1_fu_592_p3[7:0];
assign trunc_ln834_fu_812_p1 = add_ln834_1_fu_806_p2[11:0];
assign trunc_ln835_1_fu_788_p1 = add_ln835_1_fu_782_p2[16:0];
assign trunc_ln835_fu_726_p1 = add_ln835_fu_720_p2[15:0];
assign v11_Addr_A = v11_Addr_A_orig << 32'd0;
assign v11_Addr_A_orig = zext_ln835_5_fu_927_p1;
assign v11_Din_A = 8'd0;
assign v11_EN_A = v11_EN_A_local;
assign v11_WEN_A = 1'd0;
assign v398_mid21787_fu_609_p3 = ((empty_reg_1103_pp0_iter2_reg[0:0] == 1'b1) ? 4'd0 : v398_fu_136);
assign v399_mid21761_fu_629_p3 = ((empty_45_reg_1114[0:0] == 1'b1) ? 8'd0 : v399_fu_128);
assign v400_mid21746_fu_649_p3 = ((empty_47_reg_1125[0:0] == 1'b1) ? 2'd0 : v400_fu_120);
assign v401_mid2_fu_501_p3 = ((empty_50_fu_496_p2[0:0] == 1'b1) ? 2'd0 : v401_fu_116);
assign v54_address1 = zext_ln830_3_fu_970_p1;
assign v54_ce1 = v54_ce1_local;
assign v54_d1 = grp_fu_978_p3;
assign v54_we1 = v54_we1_local;
assign v55_address0 = zext_ln834_5_fu_951_p1;
assign v55_ce0 = v55_ce0_local;
assign xor_ln827_fu_290_p2 = (icmp_ln828_fu_284_p2 ^ 1'd1);
assign zext_ln829_fu_712_p1 = empty_51_fu_706_p2;
assign zext_ln830_1_fu_696_p1 = select_ln828_fu_616_p3;
assign zext_ln830_2_fu_860_p1 = select_ln829_reg_1145;
assign zext_ln830_3_fu_970_p1 = add_ln830_1_reg_1184_pp0_iter7_reg;
assign zext_ln830_fu_684_p1 = tmp_s_fu_676_p3;
assign zext_ln831_fu_874_p1 = empty_52_fu_869_p2;
assign zext_ln832_fu_792_p1 = select_ln832_fu_669_p3;
assign zext_ln833_1_fu_932_p1 = v401_mid2_reg_1135_pp0_iter3_reg;
assign zext_ln833_fu_908_p1 = tmp_33_fu_901_p3;
assign zext_ln834_2_fu_768_p1 = tmp_31_fu_760_p3;
assign zext_ln834_3_fu_802_p1 = empty_53_fu_796_p2;
assign zext_ln834_4_fu_941_p1 = add_ln834_fu_935_p2;
assign zext_ln834_5_fu_951_p1 = add_ln834_2_fu_945_p2;
assign zext_ln834_fu_756_p1 = tmp_30_fu_748_p3;
assign zext_ln835_1_fu_738_p1 = add_ln835_fu_720_p2;
assign zext_ln835_2_fu_778_p1 = select_ln832_fu_669_p3;
assign zext_ln835_3_fu_885_p1 = add_ln835_1_reg_1156;
assign zext_ln835_4_fu_918_p1 = v401_mid2_reg_1135_pp0_iter3_reg;
assign zext_ln835_5_fu_927_p1 = add_ln835_2_fu_921_p2;
assign zext_ln835_fu_716_p1 = select_ln831_fu_656_p3;
endmodule 
