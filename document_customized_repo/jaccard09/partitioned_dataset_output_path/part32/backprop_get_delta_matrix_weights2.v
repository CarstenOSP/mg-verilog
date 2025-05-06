
module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,grp_fu_2848_p_din0,grp_fu_2848_p_din1,grp_fu_2848_p_dout0,grp_fu_2848_p_ce,grp_fu_2852_p_din0,grp_fu_2852_p_din1,grp_fu_2852_p_dout0,grp_fu_2852_p_ce,grp_fu_2856_p_din0,grp_fu_2856_p_din1,grp_fu_2856_p_dout0,grp_fu_2856_p_ce,grp_fu_2860_p_din0,grp_fu_2860_p_din1,grp_fu_2860_p_dout0,grp_fu_2860_p_ce);  
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
output  [10:0] delta_weights2_0_address0;
output   delta_weights2_0_ce0;
output   delta_weights2_0_we0;
output  [63:0] delta_weights2_0_d0;
output  [10:0] delta_weights2_0_address1;
output   delta_weights2_0_ce1;
output   delta_weights2_0_we1;
output  [63:0] delta_weights2_0_d1;
output  [10:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [10:0] delta_weights2_1_address1;
output   delta_weights2_1_ce1;
output   delta_weights2_1_we1;
output  [63:0] delta_weights2_1_d1;
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
output  [4:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [4:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
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
reg   [0:0] icmp_ln93_reg_1477;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_736;
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
reg   [63:0] reg_742;
reg   [63:0] reg_748;
reg   [63:0] reg_753;
reg   [63:0] reg_758;
reg   [63:0] reg_764;
wire   [0:0] icmp_ln93_fu_788_p2;
reg   [0:0] icmp_ln93_reg_1477_pp0_iter1_reg;
wire   [0:0] tmp_47_fu_803_p3;
reg   [0:0] tmp_47_reg_1481;
wire   [6:0] select_ln92_fu_811_p3;
reg   [6:0] select_ln92_reg_1486;
wire   [4:0] lshr_ln92_1_fu_819_p4;
reg   [4:0] lshr_ln92_1_reg_1491;
reg   [4:0] lshr_ln92_1_reg_1491_pp0_iter1_reg;
wire   [3:0] tmp_s_fu_835_p4;
reg   [3:0] tmp_s_reg_1506;
reg   [3:0] tmp_s_reg_1506_pp0_iter1_reg;
reg   [2:0] tmp_78_reg_1521;
reg   [2:0] tmp_78_reg_1521_pp0_iter1_reg;
reg   [0:0] tmp_48_reg_1529;
reg   [0:0] tmp_48_reg_1529_pp0_iter1_reg;
reg   [0:0] tmp_48_reg_1529_pp0_iter2_reg;
reg   [1:0] tmp_79_reg_1541;
reg   [1:0] tmp_79_reg_1541_pp0_iter1_reg;
reg   [1:0] tmp_80_reg_1553;
reg   [1:0] tmp_80_reg_1553_pp0_iter1_reg;
reg   [0:0] tmp_49_reg_1561;
reg   [0:0] tmp_49_reg_1561_pp0_iter1_reg;
reg   [0:0] tmp_49_reg_1561_pp0_iter2_reg;
reg   [0:0] tmp_50_reg_1569;
reg   [0:0] tmp_50_reg_1569_pp0_iter1_reg;
reg   [0:0] tmp_50_reg_1569_pp0_iter2_reg;
reg   [2:0] tmp_81_reg_1589;
reg   [2:0] tmp_81_reg_1589_pp0_iter1_reg;
reg   [1:0] tmp_82_reg_1595;
reg   [1:0] tmp_82_reg_1595_pp0_iter1_reg;
reg   [0:0] tmp_51_reg_1601;
reg   [0:0] tmp_51_reg_1601_pp0_iter1_reg;
wire   [0:0] trunc_ln93_fu_962_p1;
reg   [0:0] trunc_ln93_reg_1609;
reg   [63:0] output_difference_0_load_reg_1624;
wire   [5:0] trunc_ln95_fu_982_p1;
reg   [5:0] trunc_ln95_reg_1629;
reg   [5:0] trunc_ln95_reg_1629_pp0_iter1_reg;
reg   [5:0] trunc_ln95_reg_1629_pp0_iter2_reg;
reg   [63:0] output_difference_1_load_reg_1669;
reg   [63:0] output_difference_0_load_1_reg_1674;
reg   [63:0] output_difference_1_load_1_reg_1679;
wire   [63:0] tmp_fu_1018_p3;
reg   [63:0] tmp_reg_1684;
reg   [63:0] output_difference_0_load_2_reg_1712;
reg   [63:0] output_difference_1_load_2_reg_1717;
reg   [63:0] output_difference_0_load_3_reg_1722;
reg   [63:0] output_difference_1_load_3_reg_1727;
reg   [63:0] output_difference_0_load_4_reg_1752;
reg   [63:0] output_difference_1_load_4_reg_1757;
reg   [63:0] output_difference_0_load_5_reg_1762;
reg   [63:0] output_difference_1_load_5_reg_1767;
reg   [63:0] output_difference_0_load_6_reg_1792;
reg   [63:0] output_difference_1_load_6_reg_1797;
reg   [63:0] output_difference_0_load_7_reg_1802;
reg   [63:0] output_difference_1_load_7_reg_1807;
reg   [63:0] output_difference_0_load_8_reg_1832;
reg   [63:0] output_difference_1_load_8_reg_1837;
reg   [63:0] output_difference_0_load_9_reg_1842;
reg   [63:0] output_difference_1_load_9_reg_1847;
reg   [63:0] output_difference_0_load_10_reg_1872;
reg   [63:0] output_difference_1_load_10_reg_1877;
reg   [63:0] output_difference_0_load_11_reg_1882;
reg   [63:0] output_difference_1_load_11_reg_1887;
reg   [63:0] output_difference_0_load_12_reg_1912;
reg   [63:0] output_difference_1_load_12_reg_1917;
reg   [63:0] output_difference_0_load_13_reg_1922;
reg   [63:0] output_difference_1_load_13_reg_1927;
reg   [63:0] output_difference_0_load_14_reg_1932;
reg   [63:0] output_difference_1_load_14_reg_1937;
reg   [63:0] output_difference_0_load_15_reg_1942;
reg   [63:0] output_difference_1_load_15_reg_1947;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln92_1_fu_829_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln95_1_fu_853_p1;
wire   [63:0] zext_ln92_fu_976_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln95_3_fu_994_p1;
wire   [63:0] zext_ln95_5_fu_1007_p1;
wire   [63:0] zext_ln95_7_fu_1033_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln95_9_fu_1049_p1;
wire   [63:0] zext_ln95_11_fu_1063_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln95_13_fu_1076_p1;
wire   [63:0] zext_ln95_15_fu_1090_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln95_17_fu_1106_p1;
wire   [63:0] zext_ln95_19_fu_1123_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln95_21_fu_1139_p1;
wire   [63:0] zext_ln95_23_fu_1153_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln95_25_fu_1169_p1;
wire   [63:0] zext_ln95_27_fu_1183_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln95_29_fu_1196_p1;
wire   [63:0] zext_ln95_fu_1218_p1;
wire   [63:0] zext_ln95_2_fu_1232_p1;
wire   [63:0] zext_ln95_4_fu_1247_p1;
wire   [63:0] zext_ln95_6_fu_1261_p1;
wire   [63:0] zext_ln95_8_fu_1276_p1;
wire   [63:0] zext_ln95_10_fu_1293_p1;
wire   [63:0] zext_ln95_12_fu_1308_p1;
wire   [63:0] zext_ln95_14_fu_1322_p1;
wire   [63:0] zext_ln95_16_fu_1337_p1;
wire   [63:0] zext_ln95_18_fu_1354_p1;
wire   [63:0] zext_ln95_20_fu_1372_p1;
wire   [63:0] zext_ln95_22_fu_1389_p1;
wire   [63:0] zext_ln95_24_fu_1404_p1;
wire   [63:0] zext_ln95_26_fu_1421_p1;
wire   [63:0] zext_ln95_28_fu_1436_p1;
wire   [63:0] zext_ln95_30_fu_1450_p1;
reg   [6:0] j_fu_134;
wire   [6:0] add_ln94_fu_1202_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_138;
wire   [6:0] select_ln93_fu_955_p3;
reg   [7:0] indvar_flatten_fu_142;
wire   [7:0] add_ln93_fu_794_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg    output_difference_0_ce1_local;
reg   [4:0] output_difference_0_address1_local;
reg    output_difference_0_ce0_local;
reg   [4:0] output_difference_0_address0_local;
reg    output_difference_1_ce1_local;
reg   [4:0] output_difference_1_address1_local;
reg    output_difference_1_ce0_local;
reg   [4:0] output_difference_1_address0_local;
reg    last_activations_0_ce0_local;
reg    last_activations_1_ce0_local;
reg    delta_weights2_0_we1_local;
reg   [63:0] delta_weights2_0_d1_local;
reg    delta_weights2_0_ce1_local;
reg   [10:0] delta_weights2_0_address1_local;
reg    delta_weights2_0_we0_local;
reg   [63:0] delta_weights2_0_d0_local;
reg    delta_weights2_0_ce0_local;
reg   [10:0] delta_weights2_0_address0_local;
reg    delta_weights2_1_we1_local;
reg   [63:0] delta_weights2_1_d1_local;
reg    delta_weights2_1_ce1_local;
reg   [10:0] delta_weights2_1_address1_local;
reg    delta_weights2_1_we0_local;
reg   [63:0] delta_weights2_1_d0_local;
reg    delta_weights2_1_ce0_local;
reg   [10:0] delta_weights2_1_address0_local;
reg   [63:0] grp_fu_720_p1;
reg   [63:0] grp_fu_724_p1;
reg   [63:0] grp_fu_728_p1;
reg   [63:0] grp_fu_732_p1;
wire   [4:0] or_ln_fu_845_p3;
wire   [6:0] add_ln93_1_fu_949_p2;
wire   [4:0] lshr_ln_fu_966_p4;
wire   [4:0] or_ln95_1_fu_986_p4;
wire   [4:0] or_ln95_2_fu_1000_p3;
wire   [4:0] or_ln95_3_fu_1025_p4;
wire   [4:0] or_ln95_4_fu_1039_p5;
wire   [4:0] or_ln95_5_fu_1055_p4;
wire   [4:0] or_ln95_6_fu_1069_p3;
wire   [4:0] or_ln95_7_fu_1082_p4;
wire   [4:0] or_ln95_8_fu_1096_p5;
wire   [4:0] or_ln95_9_fu_1112_p6;
wire   [4:0] or_ln95_s_fu_1129_p5;
wire   [4:0] or_ln95_10_fu_1145_p4;
wire   [4:0] or_ln95_11_fu_1159_p5;
wire   [4:0] or_ln95_12_fu_1175_p4;
wire   [4:0] or_ln95_13_fu_1189_p3;
wire   [10:0] add_ln_fu_1212_p3;
wire   [10:0] add_ln95_1_fu_1224_p4;
wire   [10:0] add_ln95_2_fu_1238_p5;
wire   [10:0] add_ln95_3_fu_1253_p4;
wire   [10:0] add_ln95_4_fu_1267_p5;
wire   [10:0] add_ln95_5_fu_1282_p6;
wire   [10:0] add_ln95_6_fu_1299_p5;
wire   [10:0] add_ln95_7_fu_1314_p4;
wire   [10:0] add_ln95_8_fu_1328_p5;
wire   [10:0] add_ln95_9_fu_1343_p6;
wire   [10:0] add_ln95_s_fu_1360_p7;
wire   [10:0] add_ln95_10_fu_1378_p6;
wire   [10:0] add_ln95_11_fu_1395_p5;
wire   [10:0] add_ln95_12_fu_1410_p6;
wire   [10:0] add_ln95_13_fu_1427_p5;
wire   [10:0] add_ln95_14_fu_1442_p4;
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
#0 j_fu_134 = 7'd0;
#0 i_fu_138 = 7'd0;
#0 indvar_flatten_fu_142 = 8'd0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_138 <= 7'd0;
    end else if (((icmp_ln93_reg_1477 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_138 <= select_ln93_fu_955_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln93_fu_788_p2 == 1'd0))) begin
            indvar_flatten_fu_142 <= add_ln93_fu_794_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_142 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_134 <= 7'd0;
    end else if (((icmp_ln93_reg_1477 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        j_fu_134 <= add_ln94_fu_1202_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln93_reg_1477 <= icmp_ln93_fu_788_p2;
        icmp_ln93_reg_1477_pp0_iter1_reg <= icmp_ln93_reg_1477;
        lshr_ln92_1_reg_1491 <= {{select_ln92_fu_811_p3[5:1]}};
        lshr_ln92_1_reg_1491_pp0_iter1_reg <= lshr_ln92_1_reg_1491;
        select_ln92_reg_1486 <= select_ln92_fu_811_p3;
        tmp_47_reg_1481 <= ap_sig_allocacmp_j_load[32'd6];
        tmp_48_reg_1529 <= select_ln92_fu_811_p3[32'd1];
        tmp_48_reg_1529_pp0_iter1_reg <= tmp_48_reg_1529;
        tmp_48_reg_1529_pp0_iter2_reg <= tmp_48_reg_1529_pp0_iter1_reg;
        tmp_49_reg_1561 <= select_ln92_fu_811_p3[32'd2];
        tmp_49_reg_1561_pp0_iter1_reg <= tmp_49_reg_1561;
        tmp_49_reg_1561_pp0_iter2_reg <= tmp_49_reg_1561_pp0_iter1_reg;
        tmp_50_reg_1569 <= select_ln92_fu_811_p3[32'd5];
        tmp_50_reg_1569_pp0_iter1_reg <= tmp_50_reg_1569;
        tmp_50_reg_1569_pp0_iter2_reg <= tmp_50_reg_1569_pp0_iter1_reg;
        tmp_51_reg_1601 <= select_ln92_fu_811_p3[32'd3];
        tmp_51_reg_1601_pp0_iter1_reg <= tmp_51_reg_1601;
        tmp_78_reg_1521 <= {{select_ln92_fu_811_p3[5:3]}};
        tmp_78_reg_1521_pp0_iter1_reg <= tmp_78_reg_1521;
        tmp_79_reg_1541 <= {{select_ln92_fu_811_p3[5:4]}};
        tmp_79_reg_1541_pp0_iter1_reg <= tmp_79_reg_1541;
        tmp_80_reg_1553 <= {{select_ln92_fu_811_p3[2:1]}};
        tmp_80_reg_1553_pp0_iter1_reg <= tmp_80_reg_1553;
        tmp_81_reg_1589 <= {{select_ln92_fu_811_p3[3:1]}};
        tmp_81_reg_1589_pp0_iter1_reg <= tmp_81_reg_1589;
        tmp_82_reg_1595 <= {{select_ln92_fu_811_p3[3:2]}};
        tmp_82_reg_1595_pp0_iter1_reg <= tmp_82_reg_1595;
        tmp_s_reg_1506 <= {{select_ln92_fu_811_p3[5:2]}};
        tmp_s_reg_1506_pp0_iter1_reg <= tmp_s_reg_1506;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        output_difference_0_load_10_reg_1872 <= output_difference_0_q1;
        output_difference_0_load_11_reg_1882 <= output_difference_0_q0;
        output_difference_1_load_10_reg_1877 <= output_difference_1_q1;
        output_difference_1_load_11_reg_1887 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        output_difference_0_load_12_reg_1912 <= output_difference_0_q1;
        output_difference_0_load_13_reg_1922 <= output_difference_0_q0;
        output_difference_1_load_12_reg_1917 <= output_difference_1_q1;
        output_difference_1_load_13_reg_1927 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_0_load_14_reg_1932 <= output_difference_0_q1;
        output_difference_0_load_15_reg_1942 <= output_difference_0_q0;
        output_difference_1_load_14_reg_1937 <= output_difference_1_q1;
        output_difference_1_load_15_reg_1947 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        output_difference_0_load_1_reg_1674 <= output_difference_0_q0;
        output_difference_0_load_reg_1624 <= output_difference_0_q1;
        output_difference_1_load_1_reg_1679 <= output_difference_1_q0;
        output_difference_1_load_reg_1669 <= output_difference_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        output_difference_0_load_2_reg_1712 <= output_difference_0_q1;
        output_difference_0_load_3_reg_1722 <= output_difference_0_q0;
        output_difference_1_load_2_reg_1717 <= output_difference_1_q1;
        output_difference_1_load_3_reg_1727 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        output_difference_0_load_4_reg_1752 <= output_difference_0_q1;
        output_difference_0_load_5_reg_1762 <= output_difference_0_q0;
        output_difference_1_load_4_reg_1757 <= output_difference_1_q1;
        output_difference_1_load_5_reg_1767 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        output_difference_0_load_6_reg_1792 <= output_difference_0_q1;
        output_difference_0_load_7_reg_1802 <= output_difference_0_q0;
        output_difference_1_load_6_reg_1797 <= output_difference_1_q1;
        output_difference_1_load_7_reg_1807 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        output_difference_0_load_8_reg_1832 <= output_difference_0_q1;
        output_difference_0_load_9_reg_1842 <= output_difference_0_q0;
        output_difference_1_load_8_reg_1837 <= output_difference_1_q1;
        output_difference_1_load_9_reg_1847 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_736 <= grp_fu_2848_p_dout0;
        reg_742 <= grp_fu_2852_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_748 <= grp_fu_2856_p_dout0;
        reg_753 <= grp_fu_2860_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_758 <= grp_fu_2856_p_dout0;
        reg_764 <= grp_fu_2860_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_reg_1684 <= tmp_fu_1018_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln93_reg_1609 <= trunc_ln93_fu_962_p1;
        trunc_ln95_reg_1629 <= trunc_ln95_fu_982_p1;
        trunc_ln95_reg_1629_pp0_iter1_reg <= trunc_ln95_reg_1629;
        trunc_ln95_reg_1629_pp0_iter2_reg <= trunc_ln95_reg_1629_pp0_iter1_reg;
    end
end
always @ (*) begin
    if (((icmp_ln93_reg_1477 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln93_reg_1477_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_142;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_0_address0_local = zext_ln95_30_fu_1450_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_0_address0_local = zext_ln95_28_fu_1436_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_0_address0_local = zext_ln95_24_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights2_0_address0_local = zext_ln95_20_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights2_0_address0_local = zext_ln95_16_fu_1337_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights2_0_address0_local = zext_ln95_12_fu_1308_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights2_0_address0_local = zext_ln95_8_fu_1276_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights2_0_address0_local = zext_ln95_4_fu_1247_p1;
    end else begin
        delta_weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_0_address1_local = zext_ln95_26_fu_1421_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_0_address1_local = zext_ln95_22_fu_1389_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights2_0_address1_local = zext_ln95_18_fu_1354_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights2_0_address1_local = zext_ln95_14_fu_1322_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights2_0_address1_local = zext_ln95_10_fu_1293_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights2_0_address1_local = zext_ln95_6_fu_1261_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights2_0_address1_local = zext_ln95_2_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_0_address1_local = zext_ln95_fu_1218_p1;
    end else begin
        delta_weights2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_ce0_local = 1'b1;
    end else begin
        delta_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_ce1_local = 1'b1;
    end else begin
        delta_weights2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_0_d0_local = reg_758;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_0_d0_local = reg_736;
    end else begin
        delta_weights2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_0_d1_local = reg_758;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_d1_local = reg_748;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_0_d1_local = reg_736;
    end else begin
        delta_weights2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_we0_local = 1'b1;
    end else begin
        delta_weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_we1_local = 1'b1;
    end else begin
        delta_weights2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_1_address0_local = zext_ln95_30_fu_1450_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_1_address0_local = zext_ln95_28_fu_1436_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_1_address0_local = zext_ln95_24_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights2_1_address0_local = zext_ln95_20_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights2_1_address0_local = zext_ln95_16_fu_1337_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights2_1_address0_local = zext_ln95_12_fu_1308_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights2_1_address0_local = zext_ln95_8_fu_1276_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights2_1_address0_local = zext_ln95_4_fu_1247_p1;
    end else begin
        delta_weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_1_address1_local = zext_ln95_26_fu_1421_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_1_address1_local = zext_ln95_22_fu_1389_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights2_1_address1_local = zext_ln95_18_fu_1354_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights2_1_address1_local = zext_ln95_14_fu_1322_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights2_1_address1_local = zext_ln95_10_fu_1293_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights2_1_address1_local = zext_ln95_6_fu_1261_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights2_1_address1_local = zext_ln95_2_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_1_address1_local = zext_ln95_fu_1218_p1;
    end else begin
        delta_weights2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_ce0_local = 1'b1;
    end else begin
        delta_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_ce1_local = 1'b1;
    end else begin
        delta_weights2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_1_d0_local = reg_764;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_1_d0_local = reg_742;
    end else begin
        delta_weights2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_1_d1_local = reg_764;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_d1_local = reg_753;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_1_d1_local = reg_742;
    end else begin
        delta_weights2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_we0_local = 1'b1;
    end else begin
        delta_weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_we1_local = 1'b1;
    end else begin
        delta_weights2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_720_p1 = output_difference_0_load_14_reg_1932;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_720_p1 = output_difference_0_load_12_reg_1912;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_720_p1 = output_difference_0_load_10_reg_1872;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_720_p1 = output_difference_0_load_8_reg_1832;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_720_p1 = output_difference_0_load_6_reg_1792;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_720_p1 = output_difference_0_load_4_reg_1752;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_720_p1 = output_difference_0_load_2_reg_1712;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_720_p1 = output_difference_0_load_reg_1624;
    end else begin
        grp_fu_720_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_724_p1 = output_difference_1_load_14_reg_1937;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_724_p1 = output_difference_1_load_12_reg_1917;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_724_p1 = output_difference_1_load_10_reg_1877;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_724_p1 = output_difference_1_load_8_reg_1837;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_724_p1 = output_difference_1_load_6_reg_1797;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_724_p1 = output_difference_1_load_4_reg_1757;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_724_p1 = output_difference_1_load_2_reg_1717;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_724_p1 = output_difference_1_load_reg_1669;
    end else begin
        grp_fu_724_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_728_p1 = output_difference_0_load_15_reg_1942;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_728_p1 = output_difference_0_load_13_reg_1922;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_728_p1 = output_difference_0_load_11_reg_1882;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_728_p1 = output_difference_0_load_9_reg_1842;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_728_p1 = output_difference_0_load_7_reg_1802;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_728_p1 = output_difference_0_load_5_reg_1762;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_728_p1 = output_difference_0_load_3_reg_1722;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_728_p1 = output_difference_0_load_1_reg_1674;
    end else begin
        grp_fu_728_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_732_p1 = output_difference_1_load_15_reg_1947;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_732_p1 = output_difference_1_load_13_reg_1927;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_732_p1 = output_difference_1_load_11_reg_1887;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_732_p1 = output_difference_1_load_9_reg_1847;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_732_p1 = output_difference_1_load_7_reg_1807;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_732_p1 = output_difference_1_load_5_reg_1767;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_732_p1 = output_difference_1_load_3_reg_1727;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_732_p1 = output_difference_1_load_1_reg_1679;
    end else begin
        grp_fu_732_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            output_difference_0_address0_local = zext_ln95_29_fu_1196_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            output_difference_0_address0_local = zext_ln95_25_fu_1169_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            output_difference_0_address0_local = zext_ln95_21_fu_1139_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            output_difference_0_address0_local = zext_ln95_17_fu_1106_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_0_address0_local = zext_ln95_13_fu_1076_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_0_address0_local = zext_ln95_9_fu_1049_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_0_address0_local = zext_ln95_5_fu_1007_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_0_address0_local = zext_ln95_1_fu_853_p1;
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
            output_difference_0_address1_local = zext_ln95_27_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            output_difference_0_address1_local = zext_ln95_23_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            output_difference_0_address1_local = zext_ln95_19_fu_1123_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            output_difference_0_address1_local = zext_ln95_15_fu_1090_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_0_address1_local = zext_ln95_11_fu_1063_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_0_address1_local = zext_ln95_7_fu_1033_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_0_address1_local = zext_ln95_3_fu_994_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_0_address1_local = zext_ln92_1_fu_829_p1;
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
            output_difference_1_address0_local = zext_ln95_29_fu_1196_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            output_difference_1_address0_local = zext_ln95_25_fu_1169_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            output_difference_1_address0_local = zext_ln95_21_fu_1139_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            output_difference_1_address0_local = zext_ln95_17_fu_1106_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_1_address0_local = zext_ln95_13_fu_1076_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_1_address0_local = zext_ln95_9_fu_1049_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_1_address0_local = zext_ln95_5_fu_1007_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_address0_local = zext_ln95_1_fu_853_p1;
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
            output_difference_1_address1_local = zext_ln95_27_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            output_difference_1_address1_local = zext_ln95_23_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            output_difference_1_address1_local = zext_ln95_19_fu_1123_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            output_difference_1_address1_local = zext_ln95_15_fu_1090_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_1_address1_local = zext_ln95_11_fu_1063_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_1_address1_local = zext_ln95_7_fu_1033_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_1_address1_local = zext_ln95_3_fu_994_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_address1_local = zext_ln92_1_fu_829_p1;
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
assign add_ln93_1_fu_949_p2 = (i_fu_138 + 7'd1);
assign add_ln93_fu_794_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln94_fu_1202_p2 = (select_ln92_reg_1486 + 7'd32);
assign add_ln95_10_fu_1378_p6 = {{{{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_50_reg_1569_pp0_iter1_reg}}, {1'd1}}, {tmp_51_reg_1601_pp0_iter1_reg}}, {2'd3}};
assign add_ln95_11_fu_1395_p5 = {{{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_50_reg_1569_pp0_iter1_reg}}, {2'd3}}, {tmp_80_reg_1553_pp0_iter1_reg}};
assign add_ln95_12_fu_1410_p6 = {{{{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_50_reg_1569_pp0_iter2_reg}}, {2'd3}}, {tmp_49_reg_1561_pp0_iter2_reg}}, {1'd1}};
assign add_ln95_13_fu_1427_p5 = {{{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_50_reg_1569_pp0_iter2_reg}}, {3'd7}}, {tmp_48_reg_1529_pp0_iter2_reg}};
assign add_ln95_14_fu_1442_p4 = {{{trunc_ln95_reg_1629_pp0_iter2_reg}, {tmp_50_reg_1569_pp0_iter2_reg}}, {4'd15}};
assign add_ln95_1_fu_1224_p4 = {{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_s_reg_1506_pp0_iter1_reg}}, {1'd1}};
assign add_ln95_2_fu_1238_p5 = {{{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_78_reg_1521_pp0_iter1_reg}}, {1'd1}}, {tmp_48_reg_1529_pp0_iter1_reg}};
assign add_ln95_3_fu_1253_p4 = {{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_78_reg_1521_pp0_iter1_reg}}, {2'd3}};
assign add_ln95_4_fu_1267_p5 = {{{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_79_reg_1541_pp0_iter1_reg}}, {1'd1}}, {tmp_80_reg_1553_pp0_iter1_reg}};
assign add_ln95_5_fu_1282_p6 = {{{{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_79_reg_1541_pp0_iter1_reg}}, {1'd1}}, {tmp_49_reg_1561_pp0_iter1_reg}}, {1'd1}};
assign add_ln95_6_fu_1299_p5 = {{{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_79_reg_1541_pp0_iter1_reg}}, {2'd3}}, {tmp_48_reg_1529_pp0_iter1_reg}};
assign add_ln95_7_fu_1314_p4 = {{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_79_reg_1541_pp0_iter1_reg}}, {3'd7}};
assign add_ln95_8_fu_1328_p5 = {{{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_50_reg_1569_pp0_iter1_reg}}, {1'd1}}, {tmp_81_reg_1589_pp0_iter1_reg}};
assign add_ln95_9_fu_1343_p6 = {{{{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_50_reg_1569_pp0_iter1_reg}}, {1'd1}}, {tmp_82_reg_1595_pp0_iter1_reg}}, {1'd1}};
assign add_ln95_s_fu_1360_p7 = {{{{{{trunc_ln95_reg_1629_pp0_iter1_reg}, {tmp_50_reg_1569_pp0_iter1_reg}}, {1'd1}}, {tmp_51_reg_1601_pp0_iter1_reg}}, {1'd1}}, {tmp_48_reg_1529_pp0_iter1_reg}};
assign add_ln_fu_1212_p3 = {{trunc_ln95_reg_1629_pp0_iter1_reg}, {lshr_ln92_1_reg_1491_pp0_iter1_reg}};
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
assign delta_weights2_0_address0 = delta_weights2_0_address0_local;
assign delta_weights2_0_address1 = delta_weights2_0_address1_local;
assign delta_weights2_0_ce0 = delta_weights2_0_ce0_local;
assign delta_weights2_0_ce1 = delta_weights2_0_ce1_local;
assign delta_weights2_0_d0 = delta_weights2_0_d0_local;
assign delta_weights2_0_d1 = delta_weights2_0_d1_local;
assign delta_weights2_0_we0 = delta_weights2_0_we0_local;
assign delta_weights2_0_we1 = delta_weights2_0_we1_local;
assign delta_weights2_1_address0 = delta_weights2_1_address0_local;
assign delta_weights2_1_address1 = delta_weights2_1_address1_local;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_ce1 = delta_weights2_1_ce1_local;
assign delta_weights2_1_d0 = delta_weights2_1_d0_local;
assign delta_weights2_1_d1 = delta_weights2_1_d1_local;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_1_we1 = delta_weights2_1_we1_local;
assign grp_fu_2848_p_ce = 1'b1;
assign grp_fu_2848_p_din0 = tmp_reg_1684;
assign grp_fu_2848_p_din1 = grp_fu_720_p1;
assign grp_fu_2852_p_ce = 1'b1;
assign grp_fu_2852_p_din0 = tmp_reg_1684;
assign grp_fu_2852_p_din1 = grp_fu_724_p1;
assign grp_fu_2856_p_ce = 1'b1;
assign grp_fu_2856_p_din0 = tmp_reg_1684;
assign grp_fu_2856_p_din1 = grp_fu_728_p1;
assign grp_fu_2860_p_ce = 1'b1;
assign grp_fu_2860_p_din0 = tmp_reg_1684;
assign grp_fu_2860_p_din1 = grp_fu_732_p1;
assign icmp_ln93_fu_788_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd128) ? 1'b1 : 1'b0);
assign last_activations_0_address0 = zext_ln92_fu_976_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_1_address0 = zext_ln92_fu_976_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign lshr_ln92_1_fu_819_p4 = {{select_ln92_fu_811_p3[5:1]}};
assign lshr_ln_fu_966_p4 = {{select_ln93_fu_955_p3[5:1]}};
assign or_ln95_10_fu_1145_p4 = {{{tmp_50_reg_1569}, {2'd3}}, {tmp_80_reg_1553}};
assign or_ln95_11_fu_1159_p5 = {{{{tmp_50_reg_1569}, {2'd3}}, {tmp_49_reg_1561}}, {1'd1}};
assign or_ln95_12_fu_1175_p4 = {{{tmp_50_reg_1569}, {3'd7}}, {tmp_48_reg_1529}};
assign or_ln95_13_fu_1189_p3 = {{tmp_50_reg_1569}, {4'd15}};
assign or_ln95_1_fu_986_p4 = {{{tmp_78_reg_1521}, {1'd1}}, {tmp_48_reg_1529}};
assign or_ln95_2_fu_1000_p3 = {{tmp_78_reg_1521}, {2'd3}};
assign or_ln95_3_fu_1025_p4 = {{{tmp_79_reg_1541}, {1'd1}}, {tmp_80_reg_1553}};
assign or_ln95_4_fu_1039_p5 = {{{{tmp_79_reg_1541}, {1'd1}}, {tmp_49_reg_1561}}, {1'd1}};
assign or_ln95_5_fu_1055_p4 = {{{tmp_79_reg_1541}, {2'd3}}, {tmp_48_reg_1529}};
assign or_ln95_6_fu_1069_p3 = {{tmp_79_reg_1541}, {3'd7}};
assign or_ln95_7_fu_1082_p4 = {{{tmp_50_reg_1569}, {1'd1}}, {tmp_81_reg_1589}};
assign or_ln95_8_fu_1096_p5 = {{{{tmp_50_reg_1569}, {1'd1}}, {tmp_82_reg_1595}}, {1'd1}};
assign or_ln95_9_fu_1112_p6 = {{{{{tmp_50_reg_1569}, {1'd1}}, {tmp_51_reg_1601}}, {1'd1}}, {tmp_48_reg_1529}};
assign or_ln95_s_fu_1129_p5 = {{{{tmp_50_reg_1569}, {1'd1}}, {tmp_51_reg_1601}}, {2'd3}};
assign or_ln_fu_845_p3 = {{tmp_s_fu_835_p4}, {1'd1}};
assign output_difference_0_address0 = output_difference_0_address0_local;
assign output_difference_0_address1 = output_difference_0_address1_local;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_1_address0 = output_difference_1_address0_local;
assign output_difference_1_address1 = output_difference_1_address1_local;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign select_ln92_fu_811_p3 = ((tmp_47_fu_803_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln93_fu_955_p3 = ((tmp_47_reg_1481[0:0] == 1'b1) ? add_ln93_1_fu_949_p2 : i_fu_138);
assign tmp_47_fu_803_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_fu_1018_p3 = ((trunc_ln93_reg_1609[0:0] == 1'b1) ? last_activations_1_q0 : last_activations_0_q0);
assign tmp_s_fu_835_p4 = {{select_ln92_fu_811_p3[5:2]}};
assign trunc_ln93_fu_962_p1 = select_ln93_fu_955_p3[0:0];
assign trunc_ln95_fu_982_p1 = select_ln93_fu_955_p3[5:0];
assign zext_ln92_1_fu_829_p1 = lshr_ln92_1_fu_819_p4;
assign zext_ln92_fu_976_p1 = lshr_ln_fu_966_p4;
assign zext_ln95_10_fu_1293_p1 = add_ln95_5_fu_1282_p6;
assign zext_ln95_11_fu_1063_p1 = or_ln95_5_fu_1055_p4;
assign zext_ln95_12_fu_1308_p1 = add_ln95_6_fu_1299_p5;
assign zext_ln95_13_fu_1076_p1 = or_ln95_6_fu_1069_p3;
assign zext_ln95_14_fu_1322_p1 = add_ln95_7_fu_1314_p4;
assign zext_ln95_15_fu_1090_p1 = or_ln95_7_fu_1082_p4;
assign zext_ln95_16_fu_1337_p1 = add_ln95_8_fu_1328_p5;
assign zext_ln95_17_fu_1106_p1 = or_ln95_8_fu_1096_p5;
assign zext_ln95_18_fu_1354_p1 = add_ln95_9_fu_1343_p6;
assign zext_ln95_19_fu_1123_p1 = or_ln95_9_fu_1112_p6;
assign zext_ln95_1_fu_853_p1 = or_ln_fu_845_p3;
assign zext_ln95_20_fu_1372_p1 = add_ln95_s_fu_1360_p7;
assign zext_ln95_21_fu_1139_p1 = or_ln95_s_fu_1129_p5;
assign zext_ln95_22_fu_1389_p1 = add_ln95_10_fu_1378_p6;
assign zext_ln95_23_fu_1153_p1 = or_ln95_10_fu_1145_p4;
assign zext_ln95_24_fu_1404_p1 = add_ln95_11_fu_1395_p5;
assign zext_ln95_25_fu_1169_p1 = or_ln95_11_fu_1159_p5;
assign zext_ln95_26_fu_1421_p1 = add_ln95_12_fu_1410_p6;
assign zext_ln95_27_fu_1183_p1 = or_ln95_12_fu_1175_p4;
assign zext_ln95_28_fu_1436_p1 = add_ln95_13_fu_1427_p5;
assign zext_ln95_29_fu_1196_p1 = or_ln95_13_fu_1189_p3;
assign zext_ln95_2_fu_1232_p1 = add_ln95_1_fu_1224_p4;
assign zext_ln95_30_fu_1450_p1 = add_ln95_14_fu_1442_p4;
assign zext_ln95_3_fu_994_p1 = or_ln95_1_fu_986_p4;
assign zext_ln95_4_fu_1247_p1 = add_ln95_2_fu_1238_p5;
assign zext_ln95_5_fu_1007_p1 = or_ln95_2_fu_1000_p3;
assign zext_ln95_6_fu_1261_p1 = add_ln95_3_fu_1253_p4;
assign zext_ln95_7_fu_1033_p1 = or_ln95_3_fu_1025_p4;
assign zext_ln95_8_fu_1276_p1 = add_ln95_4_fu_1267_p5;
assign zext_ln95_9_fu_1049_p1 = or_ln95_4_fu_1039_p5;
assign zext_ln95_fu_1218_p1 = add_ln_fu_1212_p3;
endmodule 
