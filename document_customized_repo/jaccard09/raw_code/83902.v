module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,idx,grp_fu_2848_p_din0,grp_fu_2848_p_din1,grp_fu_2848_p_dout0,grp_fu_2848_p_ce,grp_fu_2852_p_din0,grp_fu_2852_p_din1,grp_fu_2852_p_dout0,grp_fu_2852_p_ce,grp_fu_2856_p_din0,grp_fu_2856_p_din1,grp_fu_2856_p_dout0,grp_fu_2856_p_ce,grp_fu_2860_p_din0,grp_fu_2860_p_din1,grp_fu_2860_p_dout0,grp_fu_2860_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [8:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
output  [8:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [8:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [4:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [4:0] output_difference_0_address1;
output   output_difference_0_ce1;
input  [63:0] output_difference_0_q1;
output  [4:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [4:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [10:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [10:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
input  [11:0] idx;
output  [63:0] grp_fu_2848_p_din0;
output  [63:0] grp_fu_2848_p_din1;
input  [63:0] grp_fu_2848_p_dout0;
output   grp_fu_2848_p_ce;
output  [63:0] grp_fu_2852_p_din0;
output  [63:0] grp_fu_2852_p_din1;
input  [63:0] grp_fu_2852_p_dout0;
output   grp_fu_2852_p_ce;
output  [63:0] grp_fu_2856_p_din0;
output  [63:0] grp_fu_2856_p_din1;
input  [63:0] grp_fu_2856_p_dout0;
output   grp_fu_2856_p_ce;
output  [63:0] grp_fu_2860_p_din0;
output  [63:0] grp_fu_2860_p_din1;
input  [63:0] grp_fu_2860_p_dout0;
output   grp_fu_2860_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln113_reg_1514;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_756;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_762;
reg   [63:0] reg_768;
reg   [63:0] reg_773;
reg   [63:0] reg_778;
reg   [63:0] reg_784;
wire   [0:0] icmp_ln113_fu_808_p2;
reg   [0:0] icmp_ln113_reg_1514_pp0_iter1_reg;
wire   [6:0] select_ln112_fu_834_p3;
reg   [6:0] select_ln112_reg_1518;
wire   [3:0] select_ln113_fu_848_p3;
reg   [3:0] select_ln113_reg_1523;
reg   [3:0] select_ln113_reg_1523_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_1523_pp0_iter2_reg;
wire   [4:0] lshr_ln_fu_856_p4;
reg   [4:0] lshr_ln_reg_1544;
reg   [4:0] lshr_ln_reg_1544_pp0_iter1_reg;
wire   [3:0] tmp_100_fu_872_p4;
reg   [3:0] tmp_100_reg_1559;
reg   [3:0] tmp_100_reg_1559_pp0_iter1_reg;
reg   [2:0] tmp_101_reg_1574;
reg   [2:0] tmp_101_reg_1574_pp0_iter1_reg;
reg   [0:0] tmp_56_reg_1582;
reg   [0:0] tmp_56_reg_1582_pp0_iter1_reg;
reg   [0:0] tmp_56_reg_1582_pp0_iter2_reg;
reg   [1:0] tmp_102_reg_1594;
reg   [1:0] tmp_102_reg_1594_pp0_iter1_reg;
reg   [1:0] tmp_103_reg_1606;
reg   [1:0] tmp_103_reg_1606_pp0_iter1_reg;
reg   [0:0] tmp_57_reg_1614;
reg   [0:0] tmp_57_reg_1614_pp0_iter1_reg;
reg   [0:0] tmp_57_reg_1614_pp0_iter2_reg;
reg   [0:0] tmp_58_reg_1622;
reg   [0:0] tmp_58_reg_1622_pp0_iter1_reg;
reg   [0:0] tmp_58_reg_1622_pp0_iter2_reg;
reg   [2:0] tmp_104_reg_1642;
reg   [2:0] tmp_104_reg_1642_pp0_iter1_reg;
reg   [1:0] tmp_105_reg_1648;
reg   [1:0] tmp_105_reg_1648_pp0_iter1_reg;
reg   [0:0] tmp_59_reg_1654;
reg   [0:0] tmp_59_reg_1654_pp0_iter1_reg;
wire   [0:0] empty_fu_996_p1;
reg   [0:0] empty_reg_1662;
reg   [63:0] output_difference_0_load_reg_1677;
reg   [63:0] output_difference_1_load_reg_1702;
reg   [63:0] output_difference_0_load_16_reg_1707;
reg   [63:0] output_difference_1_load_16_reg_1712;
wire   [63:0] tmp_v_fu_1043_p3;
reg   [63:0] tmp_v_reg_1717;
reg   [63:0] output_difference_0_load_17_reg_1742;
reg   [63:0] output_difference_1_load_17_reg_1747;
reg   [63:0] output_difference_0_load_18_reg_1752;
reg   [63:0] output_difference_1_load_18_reg_1757;
wire   [63:0] tmp_fu_1080_p1;
reg   [63:0] tmp_reg_1762;
reg   [63:0] output_difference_0_load_19_reg_1790;
reg   [63:0] output_difference_1_load_19_reg_1795;
reg   [63:0] output_difference_0_load_20_reg_1800;
reg   [63:0] output_difference_1_load_20_reg_1805;
reg   [63:0] output_difference_0_load_21_reg_1830;
reg   [63:0] output_difference_1_load_21_reg_1835;
reg   [63:0] output_difference_0_load_22_reg_1840;
reg   [63:0] output_difference_1_load_22_reg_1845;
reg   [63:0] output_difference_0_load_23_reg_1870;
reg   [63:0] output_difference_1_load_23_reg_1875;
reg   [63:0] output_difference_0_load_24_reg_1880;
reg   [63:0] output_difference_1_load_24_reg_1885;
reg   [63:0] output_difference_0_load_25_reg_1910;
reg   [63:0] output_difference_1_load_25_reg_1915;
reg   [63:0] output_difference_0_load_26_reg_1920;
reg   [63:0] output_difference_1_load_26_reg_1925;
reg   [63:0] output_difference_0_load_27_reg_1950;
reg   [63:0] output_difference_1_load_27_reg_1955;
reg   [63:0] output_difference_0_load_28_reg_1960;
reg   [63:0] output_difference_1_load_28_reg_1965;
reg   [63:0] output_difference_0_load_29_reg_1970;
reg   [63:0] output_difference_1_load_29_reg_1975;
reg   [63:0] output_difference_0_load_30_reg_1980;
reg   [63:0] output_difference_1_load_30_reg_1985;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln112_fu_866_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln115_1_fu_890_p1;
wire   [63:0] p_cast_fu_1010_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln115_3_fu_1024_p1;
wire   [63:0] zext_ln115_5_fu_1037_p1;
wire   [63:0] zext_ln115_7_fu_1058_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln115_9_fu_1074_p1;
wire   [63:0] zext_ln115_11_fu_1095_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln115_13_fu_1108_p1;
wire   [63:0] zext_ln115_15_fu_1122_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln115_17_fu_1138_p1;
wire   [63:0] zext_ln115_19_fu_1155_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln115_21_fu_1171_p1;
wire   [63:0] zext_ln115_23_fu_1185_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln115_25_fu_1201_p1;
wire   [63:0] zext_ln115_27_fu_1215_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln115_29_fu_1228_p1;
wire   [63:0] zext_ln115_fu_1250_p1;
wire   [63:0] zext_ln115_2_fu_1264_p1;
wire   [63:0] zext_ln115_4_fu_1279_p1;
wire   [63:0] zext_ln115_6_fu_1293_p1;
wire   [63:0] zext_ln115_8_fu_1308_p1;
wire   [63:0] zext_ln115_10_fu_1325_p1;
wire   [63:0] zext_ln115_12_fu_1340_p1;
wire   [63:0] zext_ln115_14_fu_1354_p1;
wire   [63:0] zext_ln115_16_fu_1369_p1;
wire   [63:0] zext_ln115_18_fu_1386_p1;
wire   [63:0] zext_ln115_20_fu_1404_p1;
wire   [63:0] zext_ln115_22_fu_1421_p1;
wire   [63:0] zext_ln115_24_fu_1436_p1;
wire   [63:0] zext_ln115_26_fu_1453_p1;
wire   [63:0] zext_ln115_28_fu_1468_p1;
wire   [63:0] zext_ln115_30_fu_1482_p1;
reg   [6:0] j_fu_148;
wire   [6:0] add_ln114_fu_1234_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_152;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [4:0] indvar_flatten_fu_156;
wire   [4:0] add_ln113_fu_814_p2;
reg   [4:0] ap_sig_allocacmp_indvar_flatten_load;
reg    output_difference_0_ce1_local;
reg   [4:0] output_difference_0_address1_local;
reg    output_difference_0_ce0_local;
reg   [4:0] output_difference_0_address0_local;
reg    output_difference_1_ce1_local;
reg   [4:0] output_difference_1_address1_local;
reg    output_difference_1_ce0_local;
reg   [4:0] output_difference_1_address0_local;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    delta_weights1_0_we1_local;
reg   [63:0] delta_weights1_0_d1_local;
reg    delta_weights1_0_ce1_local;
reg   [8:0] delta_weights1_0_address1_local;
reg    delta_weights1_0_we0_local;
reg   [63:0] delta_weights1_0_d0_local;
reg    delta_weights1_0_ce0_local;
reg   [8:0] delta_weights1_0_address0_local;
reg    delta_weights1_1_we1_local;
reg   [63:0] delta_weights1_1_d1_local;
reg    delta_weights1_1_ce1_local;
reg   [8:0] delta_weights1_1_address1_local;
reg    delta_weights1_1_we0_local;
reg   [63:0] delta_weights1_1_d0_local;
reg    delta_weights1_1_ce0_local;
reg   [8:0] delta_weights1_1_address0_local;
reg   [63:0] grp_fu_740_p0;
reg   [63:0] grp_fu_740_p1;
reg   [63:0] grp_fu_744_p0;
reg   [63:0] grp_fu_744_p1;
reg   [63:0] grp_fu_748_p0;
reg   [63:0] grp_fu_748_p1;
reg   [63:0] grp_fu_752_p0;
reg   [63:0] grp_fu_752_p1;
wire   [0:0] tmp_55_fu_826_p3;
wire   [3:0] add_ln113_1_fu_842_p2;
wire   [4:0] or_ln_fu_882_p3;
wire   [11:0] zext_ln113_fu_988_p1;
wire   [11:0] p_sum_fu_991_p2;
wire   [10:0] tmp_s_fu_1000_p4;
wire   [4:0] or_ln115_1_fu_1016_p4;
wire   [4:0] or_ln115_2_fu_1030_p3;
wire   [4:0] or_ln115_3_fu_1050_p4;
wire   [4:0] or_ln115_4_fu_1064_p5;
wire   [4:0] or_ln115_5_fu_1087_p4;
wire   [4:0] or_ln115_6_fu_1101_p3;
wire   [4:0] or_ln115_7_fu_1114_p4;
wire   [4:0] or_ln115_8_fu_1128_p5;
wire   [4:0] or_ln115_9_fu_1144_p6;
wire   [4:0] or_ln115_s_fu_1161_p5;
wire   [4:0] or_ln115_10_fu_1177_p4;
wire   [4:0] or_ln115_11_fu_1191_p5;
wire   [4:0] or_ln115_12_fu_1207_p4;
wire   [4:0] or_ln115_13_fu_1221_p3;
wire   [8:0] add_ln_fu_1244_p3;
wire   [8:0] add_ln115_1_fu_1256_p4;
wire   [8:0] add_ln115_2_fu_1270_p5;
wire   [8:0] add_ln115_3_fu_1285_p4;
wire   [8:0] add_ln115_4_fu_1299_p5;
wire   [8:0] add_ln115_5_fu_1314_p6;
wire   [8:0] add_ln115_6_fu_1331_p5;
wire   [8:0] add_ln115_7_fu_1346_p4;
wire   [8:0] add_ln115_8_fu_1360_p5;
wire   [8:0] add_ln115_9_fu_1375_p6;
wire   [8:0] add_ln115_s_fu_1392_p7;
wire   [8:0] add_ln115_10_fu_1410_p6;
wire   [8:0] add_ln115_11_fu_1427_p5;
wire   [8:0] add_ln115_12_fu_1442_p6;
wire   [8:0] add_ln115_13_fu_1459_p5;
wire   [8:0] add_ln115_14_fu_1474_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage2;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_148 = 7'd0;
#0 i_fu_152 = 4'd0;
#0 indvar_flatten_fu_156 = 5'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage2) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln113_fu_808_p2 == 1'd0))) begin
            i_fu_152 <= select_ln113_fu_848_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_152 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln113_fu_808_p2 == 1'd0))) begin
            indvar_flatten_fu_156 <= add_ln113_fu_814_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_156 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_148 <= 7'd0;
    end else if (((icmp_ln113_reg_1514 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        j_fu_148 <= add_ln114_fu_1234_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_1662 <= empty_fu_996_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln113_reg_1514 <= icmp_ln113_fu_808_p2;
        icmp_ln113_reg_1514_pp0_iter1_reg <= icmp_ln113_reg_1514;
        lshr_ln_reg_1544 <= {{select_ln112_fu_834_p3[5:1]}};
        lshr_ln_reg_1544_pp0_iter1_reg <= lshr_ln_reg_1544;
        select_ln112_reg_1518 <= select_ln112_fu_834_p3;
        select_ln113_reg_1523 <= select_ln113_fu_848_p3;
        select_ln113_reg_1523_pp0_iter1_reg <= select_ln113_reg_1523;
        select_ln113_reg_1523_pp0_iter2_reg <= select_ln113_reg_1523_pp0_iter1_reg;
        tmp_100_reg_1559 <= {{select_ln112_fu_834_p3[5:2]}};
        tmp_100_reg_1559_pp0_iter1_reg <= tmp_100_reg_1559;
        tmp_101_reg_1574 <= {{select_ln112_fu_834_p3[5:3]}};
        tmp_101_reg_1574_pp0_iter1_reg <= tmp_101_reg_1574;
        tmp_102_reg_1594 <= {{select_ln112_fu_834_p3[5:4]}};
        tmp_102_reg_1594_pp0_iter1_reg <= tmp_102_reg_1594;
        tmp_103_reg_1606 <= {{select_ln112_fu_834_p3[2:1]}};
        tmp_103_reg_1606_pp0_iter1_reg <= tmp_103_reg_1606;
        tmp_104_reg_1642 <= {{select_ln112_fu_834_p3[3:1]}};
        tmp_104_reg_1642_pp0_iter1_reg <= tmp_104_reg_1642;
        tmp_105_reg_1648 <= {{select_ln112_fu_834_p3[3:2]}};
        tmp_105_reg_1648_pp0_iter1_reg <= tmp_105_reg_1648;
        tmp_56_reg_1582 <= select_ln112_fu_834_p3[32'd1];
        tmp_56_reg_1582_pp0_iter1_reg <= tmp_56_reg_1582;
        tmp_56_reg_1582_pp0_iter2_reg <= tmp_56_reg_1582_pp0_iter1_reg;
        tmp_57_reg_1614 <= select_ln112_fu_834_p3[32'd2];
        tmp_57_reg_1614_pp0_iter1_reg <= tmp_57_reg_1614;
        tmp_57_reg_1614_pp0_iter2_reg <= tmp_57_reg_1614_pp0_iter1_reg;
        tmp_58_reg_1622 <= select_ln112_fu_834_p3[32'd5];
        tmp_58_reg_1622_pp0_iter1_reg <= tmp_58_reg_1622;
        tmp_58_reg_1622_pp0_iter2_reg <= tmp_58_reg_1622_pp0_iter1_reg;
        tmp_59_reg_1654 <= select_ln112_fu_834_p3[32'd3];
        tmp_59_reg_1654_pp0_iter1_reg <= tmp_59_reg_1654;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        output_difference_0_load_16_reg_1707 <= output_difference_0_q0;
        output_difference_0_load_reg_1677 <= output_difference_0_q1;
        output_difference_1_load_16_reg_1712 <= output_difference_1_q0;
        output_difference_1_load_reg_1702 <= output_difference_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        output_difference_0_load_17_reg_1742 <= output_difference_0_q1;
        output_difference_0_load_18_reg_1752 <= output_difference_0_q0;
        output_difference_1_load_17_reg_1747 <= output_difference_1_q1;
        output_difference_1_load_18_reg_1757 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        output_difference_0_load_19_reg_1790 <= output_difference_0_q1;
        output_difference_0_load_20_reg_1800 <= output_difference_0_q0;
        output_difference_1_load_19_reg_1795 <= output_difference_1_q1;
        output_difference_1_load_20_reg_1805 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        output_difference_0_load_21_reg_1830 <= output_difference_0_q1;
        output_difference_0_load_22_reg_1840 <= output_difference_0_q0;
        output_difference_1_load_21_reg_1835 <= output_difference_1_q1;
        output_difference_1_load_22_reg_1845 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        output_difference_0_load_23_reg_1870 <= output_difference_0_q1;
        output_difference_0_load_24_reg_1880 <= output_difference_0_q0;
        output_difference_1_load_23_reg_1875 <= output_difference_1_q1;
        output_difference_1_load_24_reg_1885 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        output_difference_0_load_25_reg_1910 <= output_difference_0_q1;
        output_difference_0_load_26_reg_1920 <= output_difference_0_q0;
        output_difference_1_load_25_reg_1915 <= output_difference_1_q1;
        output_difference_1_load_26_reg_1925 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        output_difference_0_load_27_reg_1950 <= output_difference_0_q1;
        output_difference_0_load_28_reg_1960 <= output_difference_0_q0;
        output_difference_1_load_27_reg_1955 <= output_difference_1_q1;
        output_difference_1_load_28_reg_1965 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_0_load_29_reg_1970 <= output_difference_0_q1;
        output_difference_0_load_30_reg_1980 <= output_difference_0_q0;
        output_difference_1_load_29_reg_1975 <= output_difference_1_q1;
        output_difference_1_load_30_reg_1985 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_756 <= grp_fu_2848_p_dout0;
        reg_762 <= grp_fu_2852_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_768 <= grp_fu_2856_p_dout0;
        reg_773 <= grp_fu_2860_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_778 <= grp_fu_2856_p_dout0;
        reg_784 <= grp_fu_2860_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_reg_1762 <= tmp_fu_1080_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_v_reg_1717 <= tmp_v_fu_1043_p3;
    end
end
always @ (*) begin
    if (((icmp_ln113_reg_1514 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln113_reg_1514_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_152;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_156;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights1_0_address0_local = zext_ln115_30_fu_1482_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_0_address0_local = zext_ln115_28_fu_1468_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_0_address0_local = zext_ln115_24_fu_1436_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights1_0_address0_local = zext_ln115_20_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights1_0_address0_local = zext_ln115_16_fu_1369_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights1_0_address0_local = zext_ln115_12_fu_1340_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights1_0_address0_local = zext_ln115_8_fu_1308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights1_0_address0_local = zext_ln115_4_fu_1279_p1;
    end else begin
        delta_weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_0_address1_local = zext_ln115_26_fu_1453_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_0_address1_local = zext_ln115_22_fu_1421_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights1_0_address1_local = zext_ln115_18_fu_1386_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights1_0_address1_local = zext_ln115_14_fu_1354_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights1_0_address1_local = zext_ln115_10_fu_1325_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights1_0_address1_local = zext_ln115_6_fu_1293_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights1_0_address1_local = zext_ln115_2_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights1_0_address1_local = zext_ln115_fu_1250_p1;
    end else begin
        delta_weights1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_ce0_local = 1'b1;
    end else begin
        delta_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_ce1_local = 1'b1;
    end else begin
        delta_weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights1_0_d0_local = reg_778;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_0_d0_local = reg_756;
    end else begin
        delta_weights1_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_0_d1_local = reg_778;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_d1_local = reg_768;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights1_0_d1_local = reg_756;
    end else begin
        delta_weights1_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_we0_local = 1'b1;
    end else begin
        delta_weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_we1_local = 1'b1;
    end else begin
        delta_weights1_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights1_1_address0_local = zext_ln115_30_fu_1482_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_1_address0_local = zext_ln115_28_fu_1468_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_1_address0_local = zext_ln115_24_fu_1436_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights1_1_address0_local = zext_ln115_20_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights1_1_address0_local = zext_ln115_16_fu_1369_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights1_1_address0_local = zext_ln115_12_fu_1340_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights1_1_address0_local = zext_ln115_8_fu_1308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights1_1_address0_local = zext_ln115_4_fu_1279_p1;
    end else begin
        delta_weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_1_address1_local = zext_ln115_26_fu_1453_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_1_address1_local = zext_ln115_22_fu_1421_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights1_1_address1_local = zext_ln115_18_fu_1386_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights1_1_address1_local = zext_ln115_14_fu_1354_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights1_1_address1_local = zext_ln115_10_fu_1325_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights1_1_address1_local = zext_ln115_6_fu_1293_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights1_1_address1_local = zext_ln115_2_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights1_1_address1_local = zext_ln115_fu_1250_p1;
    end else begin
        delta_weights1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_ce1_local = 1'b1;
    end else begin
        delta_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights1_1_d0_local = reg_784;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_1_d0_local = reg_762;
    end else begin
        delta_weights1_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_1_d1_local = reg_784;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_d1_local = reg_773;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights1_1_d1_local = reg_762;
    end else begin
        delta_weights1_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_we1_local = 1'b1;
    end else begin
        delta_weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_740_p0 = tmp_reg_1762;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_740_p0 = tmp_fu_1080_p1;
    end else begin
        grp_fu_740_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_740_p1 = output_difference_0_load_29_reg_1970;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_740_p1 = output_difference_0_load_27_reg_1950;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_740_p1 = output_difference_0_load_25_reg_1910;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_740_p1 = output_difference_0_load_23_reg_1870;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_740_p1 = output_difference_0_load_21_reg_1830;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_740_p1 = output_difference_0_load_19_reg_1790;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_740_p1 = output_difference_0_load_17_reg_1742;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_740_p1 = output_difference_0_load_reg_1677;
    end else begin
        grp_fu_740_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_744_p0 = tmp_reg_1762;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_744_p0 = tmp_fu_1080_p1;
    end else begin
        grp_fu_744_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_744_p1 = output_difference_1_load_29_reg_1975;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_744_p1 = output_difference_1_load_27_reg_1955;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_744_p1 = output_difference_1_load_25_reg_1915;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_744_p1 = output_difference_1_load_23_reg_1875;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_744_p1 = output_difference_1_load_21_reg_1835;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_744_p1 = output_difference_1_load_19_reg_1795;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_744_p1 = output_difference_1_load_17_reg_1747;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_744_p1 = output_difference_1_load_reg_1702;
    end else begin
        grp_fu_744_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_748_p0 = tmp_reg_1762;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_748_p0 = tmp_fu_1080_p1;
    end else begin
        grp_fu_748_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_748_p1 = output_difference_0_load_30_reg_1980;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_748_p1 = output_difference_0_load_28_reg_1960;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_748_p1 = output_difference_0_load_26_reg_1920;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_748_p1 = output_difference_0_load_24_reg_1880;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_748_p1 = output_difference_0_load_22_reg_1840;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_748_p1 = output_difference_0_load_20_reg_1800;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_748_p1 = output_difference_0_load_18_reg_1752;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_748_p1 = output_difference_0_load_16_reg_1707;
    end else begin
        grp_fu_748_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_752_p0 = tmp_reg_1762;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_752_p0 = tmp_fu_1080_p1;
    end else begin
        grp_fu_752_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_752_p1 = output_difference_1_load_30_reg_1985;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_752_p1 = output_difference_1_load_28_reg_1965;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_752_p1 = output_difference_1_load_26_reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_752_p1 = output_difference_1_load_24_reg_1885;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_752_p1 = output_difference_1_load_22_reg_1845;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_752_p1 = output_difference_1_load_20_reg_1805;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_752_p1 = output_difference_1_load_18_reg_1757;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_752_p1 = output_difference_1_load_16_reg_1712;
    end else begin
        grp_fu_752_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            output_difference_0_address0_local = zext_ln115_29_fu_1228_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            output_difference_0_address0_local = zext_ln115_25_fu_1201_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            output_difference_0_address0_local = zext_ln115_21_fu_1171_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            output_difference_0_address0_local = zext_ln115_17_fu_1138_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_0_address0_local = zext_ln115_13_fu_1108_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_0_address0_local = zext_ln115_9_fu_1074_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_0_address0_local = zext_ln115_5_fu_1037_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_0_address0_local = zext_ln115_1_fu_890_p1;
        end else begin
            output_difference_0_address0_local = 'bx;
        end
    end else begin
        output_difference_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            output_difference_0_address1_local = zext_ln115_27_fu_1215_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            output_difference_0_address1_local = zext_ln115_23_fu_1185_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            output_difference_0_address1_local = zext_ln115_19_fu_1155_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            output_difference_0_address1_local = zext_ln115_15_fu_1122_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_0_address1_local = zext_ln115_11_fu_1095_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_0_address1_local = zext_ln115_7_fu_1058_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_0_address1_local = zext_ln115_3_fu_1024_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_0_address1_local = zext_ln112_fu_866_p1;
        end else begin
            output_difference_0_address1_local = 'bx;
        end
    end else begin
        output_difference_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            output_difference_1_address0_local = zext_ln115_29_fu_1228_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            output_difference_1_address0_local = zext_ln115_25_fu_1201_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            output_difference_1_address0_local = zext_ln115_21_fu_1171_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            output_difference_1_address0_local = zext_ln115_17_fu_1138_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_1_address0_local = zext_ln115_13_fu_1108_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_1_address0_local = zext_ln115_9_fu_1074_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_1_address0_local = zext_ln115_5_fu_1037_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_address0_local = zext_ln115_1_fu_890_p1;
        end else begin
            output_difference_1_address0_local = 'bx;
        end
    end else begin
        output_difference_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            output_difference_1_address1_local = zext_ln115_27_fu_1215_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            output_difference_1_address1_local = zext_ln115_23_fu_1185_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            output_difference_1_address1_local = zext_ln115_19_fu_1155_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            output_difference_1_address1_local = zext_ln115_15_fu_1122_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_1_address1_local = zext_ln115_11_fu_1095_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_1_address1_local = zext_ln115_7_fu_1058_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_1_address1_local = zext_ln115_3_fu_1024_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_address1_local = zext_ln112_fu_866_p1;
        end else begin
            output_difference_1_address1_local = 'bx;
        end
    end else begin
        output_difference_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage2) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln113_1_fu_842_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_814_p2 = (ap_sig_allocacmp_indvar_flatten_load + 5'd1);
assign add_ln114_fu_1234_p2 = (select_ln112_reg_1518 + 7'd32);
assign add_ln115_10_fu_1410_p6 = {{{{{select_ln113_reg_1523_pp0_iter1_reg}, {tmp_58_reg_1622_pp0_iter1_reg}}, {1'd1}}, {tmp_59_reg_1654_pp0_iter1_reg}}, {2'd3}};
assign add_ln115_11_fu_1427_p5 = {{{{select_ln113_reg_1523_pp0_iter1_reg}, {tmp_58_reg_1622_pp0_iter1_reg}}, {2'd3}}, {tmp_103_reg_1606_pp0_iter1_reg}};
assign add_ln115_12_fu_1442_p6 = {{{{{select_ln113_reg_1523_pp0_iter2_reg}, {tmp_58_reg_1622_pp0_iter2_reg}}, {2'd3}}, {tmp_57_reg_1614_pp0_iter2_reg}}, {1'd1}};
assign add_ln115_13_fu_1459_p5 = {{{{select_ln113_reg_1523_pp0_iter2_reg}, {tmp_58_reg_1622_pp0_iter2_reg}}, {3'd7}}, {tmp_56_reg_1582_pp0_iter2_reg}};
assign add_ln115_14_fu_1474_p4 = {{{select_ln113_reg_1523_pp0_iter2_reg}, {tmp_58_reg_1622_pp0_iter2_reg}}, {4'd15}};
assign add_ln115_1_fu_1256_p4 = {{{select_ln113_reg_1523_pp0_iter1_reg}, {tmp_100_reg_1559_pp0_iter1_reg}}, {1'd1}};
assign add_ln115_2_fu_1270_p5 = {{{{select_ln113_reg_1523_pp0_iter1_reg}, {tmp_101_reg_1574_pp0_iter1_reg}}, {1'd1}}, {tmp_56_reg_1582_pp0_iter1_reg}};
assign add_ln115_3_fu_1285_p4 = {{{select_ln113_reg_1523_pp0_iter1_reg}, {tmp_101_reg_1574_pp0_iter1_reg}}, {2'd3}};
assign add_ln115_4_fu_1299_p5 = {{{{select_ln113_reg_1523_pp0_iter1_reg}, {tmp_102_reg_1594_pp0_iter1_reg}}, {1'd1}}, {tmp_103_reg_1606_pp0_iter1_reg}};
assign add_ln115_5_fu_1314_p6 = {{{{{select_ln113_reg_1523_pp0_iter1_reg}, {tmp_102_reg_1594_pp0_iter1_reg}}, {1'd1}}, {tmp_57_reg_1614_pp0_iter1_reg}}, {1'd1}};
assign add_ln115_6_fu_1331_p5 = {{{{select_ln113_reg_1523_pp0_iter1_reg}, {tmp_102_reg_1594_pp0_iter1_reg}}, {2'd3}}, {tmp_56_reg_1582_pp0_iter1_reg}};
assign add_ln115_7_fu_1346_p4 = {{{select_ln113_reg_1523_pp0_iter1_reg}, {tmp_102_reg_1594_pp0_iter1_reg}}, {3'd7}};
assign add_ln115_8_fu_1360_p5 = {{{{select_ln113_reg_1523_pp0_iter1_reg}, {tmp_58_reg_1622_pp0_iter1_reg}}, {1'd1}}, {tmp_104_reg_1642_pp0_iter1_reg}};
assign add_ln115_9_fu_1375_p6 = {{{{{select_ln113_reg_1523_pp0_iter1_reg}, {tmp_58_reg_1622_pp0_iter1_reg}}, {1'd1}}, {tmp_105_reg_1648_pp0_iter1_reg}}, {1'd1}};
assign add_ln115_s_fu_1392_p7 = {{{{{{select_ln113_reg_1523_pp0_iter1_reg}, {tmp_58_reg_1622_pp0_iter1_reg}}, {1'd1}}, {tmp_59_reg_1654_pp0_iter1_reg}}, {1'd1}}, {tmp_56_reg_1582_pp0_iter1_reg}};
assign add_ln_fu_1244_p3 = {{select_ln113_reg_1523_pp0_iter1_reg}, {lshr_ln_reg_1544_pp0_iter1_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign delta_weights1_0_address0 = delta_weights1_0_address0_local;
assign delta_weights1_0_address1 = delta_weights1_0_address1_local;
assign delta_weights1_0_ce0 = delta_weights1_0_ce0_local;
assign delta_weights1_0_ce1 = delta_weights1_0_ce1_local;
assign delta_weights1_0_d0 = delta_weights1_0_d0_local;
assign delta_weights1_0_d1 = delta_weights1_0_d1_local;
assign delta_weights1_0_we0 = delta_weights1_0_we0_local;
assign delta_weights1_0_we1 = delta_weights1_0_we1_local;
assign delta_weights1_1_address0 = delta_weights1_1_address0_local;
assign delta_weights1_1_address1 = delta_weights1_1_address1_local;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = delta_weights1_1_d0_local;
assign delta_weights1_1_d1 = delta_weights1_1_d1_local;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign empty_fu_996_p1 = p_sum_fu_991_p2[0:0];
assign grp_fu_2848_p_ce = 1'b1;
assign grp_fu_2848_p_din0 = grp_fu_740_p0;
assign grp_fu_2848_p_din1 = grp_fu_740_p1;
assign grp_fu_2852_p_ce = 1'b1;
assign grp_fu_2852_p_din0 = grp_fu_744_p0;
assign grp_fu_2852_p_din1 = grp_fu_744_p1;
assign grp_fu_2856_p_ce = 1'b1;
assign grp_fu_2856_p_din0 = grp_fu_748_p0;
assign grp_fu_2856_p_din1 = grp_fu_748_p1;
assign grp_fu_2860_p_ce = 1'b1;
assign grp_fu_2860_p_din0 = grp_fu_752_p0;
assign grp_fu_2860_p_din1 = grp_fu_752_p1;
assign icmp_ln113_fu_808_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 5'd26) ? 1'b1 : 1'b0);
assign lshr_ln_fu_856_p4 = {{select_ln112_fu_834_p3[5:1]}};
assign or_ln115_10_fu_1177_p4 = {{{tmp_58_reg_1622}, {2'd3}}, {tmp_103_reg_1606}};
assign or_ln115_11_fu_1191_p5 = {{{{tmp_58_reg_1622}, {2'd3}}, {tmp_57_reg_1614}}, {1'd1}};
assign or_ln115_12_fu_1207_p4 = {{{tmp_58_reg_1622}, {3'd7}}, {tmp_56_reg_1582}};
assign or_ln115_13_fu_1221_p3 = {{tmp_58_reg_1622}, {4'd15}};
assign or_ln115_1_fu_1016_p4 = {{{tmp_101_reg_1574}, {1'd1}}, {tmp_56_reg_1582}};
assign or_ln115_2_fu_1030_p3 = {{tmp_101_reg_1574}, {2'd3}};
assign or_ln115_3_fu_1050_p4 = {{{tmp_102_reg_1594}, {1'd1}}, {tmp_103_reg_1606}};
assign or_ln115_4_fu_1064_p5 = {{{{tmp_102_reg_1594}, {1'd1}}, {tmp_57_reg_1614}}, {1'd1}};
assign or_ln115_5_fu_1087_p4 = {{{tmp_102_reg_1594}, {2'd3}}, {tmp_56_reg_1582}};
assign or_ln115_6_fu_1101_p3 = {{tmp_102_reg_1594}, {3'd7}};
assign or_ln115_7_fu_1114_p4 = {{{tmp_58_reg_1622}, {1'd1}}, {tmp_104_reg_1642}};
assign or_ln115_8_fu_1128_p5 = {{{{tmp_58_reg_1622}, {1'd1}}, {tmp_105_reg_1648}}, {1'd1}};
assign or_ln115_9_fu_1144_p6 = {{{{{tmp_58_reg_1622}, {1'd1}}, {tmp_59_reg_1654}}, {1'd1}}, {tmp_56_reg_1582}};
assign or_ln115_s_fu_1161_p5 = {{{{tmp_58_reg_1622}, {1'd1}}, {tmp_59_reg_1654}}, {2'd3}};
assign or_ln_fu_882_p3 = {{tmp_100_fu_872_p4}, {1'd1}};
assign output_difference_0_address0 = output_difference_0_address0_local;
assign output_difference_0_address1 = output_difference_0_address1_local;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_1_address0 = output_difference_1_address0_local;
assign output_difference_1_address1 = output_difference_1_address1_local;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign p_cast_fu_1010_p1 = tmp_s_fu_1000_p4;
assign p_sum_fu_991_p2 = (zext_ln113_fu_988_p1 + idx);
assign select_ln112_fu_834_p3 = ((tmp_55_fu_826_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_848_p3 = ((tmp_55_fu_826_p3[0:0] == 1'b1) ? add_ln113_1_fu_842_p2 : ap_sig_allocacmp_i_load);
assign tmp_100_fu_872_p4 = {{select_ln112_fu_834_p3[5:2]}};
assign tmp_55_fu_826_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_fu_1080_p1 = tmp_v_reg_1717;
assign tmp_s_fu_1000_p4 = {{p_sum_fu_991_p2[11:1]}};
assign tmp_v_fu_1043_p3 = ((empty_reg_1662[0:0] == 1'b1) ? training_data_1_q0 : training_data_0_q0);
assign training_data_0_address0 = p_cast_fu_1010_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_1_address0 = p_cast_fu_1010_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign zext_ln112_fu_866_p1 = lshr_ln_fu_856_p4;
assign zext_ln113_fu_988_p1 = select_ln113_reg_1523;
assign zext_ln115_10_fu_1325_p1 = add_ln115_5_fu_1314_p6;
assign zext_ln115_11_fu_1095_p1 = or_ln115_5_fu_1087_p4;
assign zext_ln115_12_fu_1340_p1 = add_ln115_6_fu_1331_p5;
assign zext_ln115_13_fu_1108_p1 = or_ln115_6_fu_1101_p3;
assign zext_ln115_14_fu_1354_p1 = add_ln115_7_fu_1346_p4;
assign zext_ln115_15_fu_1122_p1 = or_ln115_7_fu_1114_p4;
assign zext_ln115_16_fu_1369_p1 = add_ln115_8_fu_1360_p5;
assign zext_ln115_17_fu_1138_p1 = or_ln115_8_fu_1128_p5;
assign zext_ln115_18_fu_1386_p1 = add_ln115_9_fu_1375_p6;
assign zext_ln115_19_fu_1155_p1 = or_ln115_9_fu_1144_p6;
assign zext_ln115_1_fu_890_p1 = or_ln_fu_882_p3;
assign zext_ln115_20_fu_1404_p1 = add_ln115_s_fu_1392_p7;
assign zext_ln115_21_fu_1171_p1 = or_ln115_s_fu_1161_p5;
assign zext_ln115_22_fu_1421_p1 = add_ln115_10_fu_1410_p6;
assign zext_ln115_23_fu_1185_p1 = or_ln115_10_fu_1177_p4;
assign zext_ln115_24_fu_1436_p1 = add_ln115_11_fu_1427_p5;
assign zext_ln115_25_fu_1201_p1 = or_ln115_11_fu_1191_p5;
assign zext_ln115_26_fu_1453_p1 = add_ln115_12_fu_1442_p6;
assign zext_ln115_27_fu_1215_p1 = or_ln115_12_fu_1207_p4;
assign zext_ln115_28_fu_1468_p1 = add_ln115_13_fu_1459_p5;
assign zext_ln115_29_fu_1228_p1 = or_ln115_13_fu_1221_p3;
assign zext_ln115_2_fu_1264_p1 = add_ln115_1_fu_1256_p4;
assign zext_ln115_30_fu_1482_p1 = add_ln115_14_fu_1474_p4;
assign zext_ln115_3_fu_1024_p1 = or_ln115_1_fu_1016_p4;
assign zext_ln115_4_fu_1279_p1 = add_ln115_2_fu_1270_p5;
assign zext_ln115_5_fu_1037_p1 = or_ln115_2_fu_1030_p3;
assign zext_ln115_6_fu_1293_p1 = add_ln115_3_fu_1285_p4;
assign zext_ln115_7_fu_1058_p1 = or_ln115_3_fu_1050_p4;
assign zext_ln115_8_fu_1308_p1 = add_ln115_4_fu_1299_p5;
assign zext_ln115_9_fu_1074_p1 = or_ln115_4_fu_1064_p5;
assign zext_ln115_fu_1250_p1 = add_ln_fu_1244_p3;
endmodule 