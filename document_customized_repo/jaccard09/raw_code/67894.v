module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_0_address1,last_activations_0_ce1,last_activations_0_q1,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_1_address1,last_activations_1_ce1,last_activations_1_q1,grp_fu_2848_p_din0,grp_fu_2848_p_din1,grp_fu_2848_p_dout0,grp_fu_2848_p_ce,grp_fu_2852_p_din0,grp_fu_2852_p_din1,grp_fu_2852_p_dout0,grp_fu_2852_p_ce,grp_fu_2856_p_din0,grp_fu_2856_p_din1,grp_fu_2856_p_dout0,grp_fu_2856_p_ce,grp_fu_2860_p_din0,grp_fu_2860_p_din1,grp_fu_2860_p_dout0,grp_fu_2860_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [6:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [6:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [6:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [4:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [4:0] last_activations_0_address1;
output   last_activations_0_ce1;
input  [63:0] last_activations_0_q1;
output  [4:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [4:0] last_activations_1_address1;
output   last_activations_1_ce1;
input  [63:0] last_activations_1_q1;
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
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_36_reg_1639;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [63:0] reg_738;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage0_11001;
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
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_743;
reg   [63:0] reg_748;
reg   [63:0] reg_753;
reg   [6:0] i_13_reg_1628;
wire   [5:0] lshr_ln_fu_774_p4;
reg   [5:0] lshr_ln_reg_1643;
reg   [63:0] last_activations_0_load_reg_1668;
wire   [0:0] tmp_38_fu_823_p3;
reg   [0:0] tmp_38_reg_1675;
reg   [63:0] last_activations_1_load_reg_1700;
reg   [63:0] last_activations_0_load_1_reg_1707;
reg   [63:0] last_activations_1_load_1_reg_1714;
wire   [1:0] tmp_55_fu_860_p4;
reg   [1:0] tmp_55_reg_1721;
reg   [63:0] last_activations_0_load_2_reg_1747;
reg   [63:0] last_activations_1_load_2_reg_1754;
reg   [63:0] last_activations_0_load_3_reg_1761;
reg   [63:0] last_activations_1_load_3_reg_1768;
reg   [63:0] last_activations_0_load_4_reg_1795;
reg   [63:0] last_activations_1_load_4_reg_1802;
reg   [63:0] last_activations_0_load_5_reg_1809;
reg   [63:0] last_activations_1_load_5_reg_1816;
reg   [63:0] last_activations_0_load_6_reg_1823;
reg   [63:0] last_activations_1_load_6_reg_1830;
reg   [63:0] last_activations_0_load_7_reg_1837;
reg   [63:0] last_activations_1_load_7_reg_1844;
wire   [7:0] empty_fu_1021_p2;
reg   [7:0] empty_reg_1851;
wire   [6:0] lshr_ln2_fu_1027_p4;
reg   [6:0] lshr_ln2_reg_1870;
reg   [4:0] tmp_50_reg_1875;
reg   [3:0] tmp_53_reg_1880;
wire   [6:0] or_ln75_1_fu_1092_p3;
reg   [6:0] or_ln75_1_reg_1885;
reg   [6:0] lshr_ln75_2_reg_1901;
wire   [6:0] lshr_ln75_4_fu_1202_p4;
reg   [6:0] lshr_ln75_4_reg_1907;
reg   [6:0] lshr_ln75_6_reg_1912;
wire   [6:0] lshr_ln75_8_fu_1343_p4;
reg   [6:0] lshr_ln75_8_reg_1918;
reg   [6:0] lshr_ln75_s_reg_1923;
wire   [6:0] lshr_ln75_11_fu_1484_p4;
reg   [6:0] lshr_ln75_11_reg_1929;
wire   [6:0] add_ln75_25_fu_1540_p2;
reg   [6:0] add_ln75_25_reg_1934;
wire   [6:0] lshr_ln75_13_fu_1550_p4;
reg   [6:0] lshr_ln75_13_reg_1939;
reg   [6:0] lshr_ln75_14_reg_1944;
wire   [6:0] add_ln75_27_fu_1575_p2;
reg   [6:0] add_ln75_27_reg_1949;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln72_fu_784_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast_fu_808_p1;
wire   [63:0] p_cast5_fu_840_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] p_cast7_fu_854_p1;
wire   [63:0] p_cast9_fu_888_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] p_cast11_fu_913_p1;
wire   [63:0] p_cast13_fu_927_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast15_fu_940_p1;
wire   [63:0] zext_ln75_fu_972_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln75_1_fu_996_p1;
wire   [63:0] zext_ln75_2_fu_1037_p1;
wire   [63:0] zext_ln75_3_fu_1077_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln75_4_fu_1087_p1;
wire   [63:0] zext_ln75_5_fu_1099_p1;
wire   [63:0] zext_ln75_6_fu_1125_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln75_7_fu_1130_p1;
wire   [63:0] zext_ln75_8_fu_1149_p1;
wire   [63:0] zext_ln75_9_fu_1159_p1;
wire   [63:0] zext_ln75_10_fu_1179_p1;
wire   [63:0] zext_ln75_11_fu_1192_p1;
wire   [63:0] zext_ln75_12_fu_1212_p1;
wire   [63:0] zext_ln75_13_fu_1232_p1;
wire   [63:0] zext_ln75_14_fu_1242_p1;
wire   [63:0] zext_ln75_15_fu_1252_p1;
wire   [63:0] zext_ln75_16_fu_1278_p1;
wire   [63:0] zext_ln75_17_fu_1283_p1;
wire   [63:0] zext_ln75_18_fu_1302_p1;
wire   [63:0] zext_ln75_19_fu_1312_p1;
wire   [63:0] zext_ln75_20_fu_1322_p1;
wire   [63:0] zext_ln75_21_fu_1333_p1;
wire   [63:0] zext_ln75_22_fu_1353_p1;
wire   [63:0] zext_ln75_23_fu_1373_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln75_24_fu_1383_p1;
wire   [63:0] zext_ln75_25_fu_1393_p1;
wire   [63:0] zext_ln75_26_fu_1419_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln75_27_fu_1424_p1;
wire   [63:0] zext_ln75_28_fu_1443_p1;
wire   [63:0] zext_ln75_29_fu_1453_p1;
wire   [63:0] zext_ln75_30_fu_1463_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln75_31_fu_1474_p1;
wire   [63:0] zext_ln75_32_fu_1494_p1;
wire   [63:0] zext_ln75_33_fu_1514_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln75_34_fu_1524_p1;
wire   [63:0] zext_ln75_35_fu_1534_p1;
wire   [63:0] zext_ln75_36_fu_1581_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln75_37_fu_1585_p1;
wire   [63:0] zext_ln75_38_fu_1589_p1;
wire   [63:0] zext_ln75_39_fu_1593_p1;
reg   [6:0] i_fu_152;
wire   [6:0] add_ln73_fu_1164_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_13;
reg    last_activations_0_ce1_local;
reg   [4:0] last_activations_0_address1_local;
reg    last_activations_0_ce0_local;
reg   [4:0] last_activations_0_address0_local;
reg    last_activations_1_ce1_local;
reg   [4:0] last_activations_1_address1_local;
reg    last_activations_1_ce0_local;
reg   [4:0] last_activations_1_address0_local;
reg    delta_weights3_0_we1_local;
reg    delta_weights3_0_ce1_local;
reg   [6:0] delta_weights3_0_address1_local;
reg    delta_weights3_0_we0_local;
reg    delta_weights3_0_ce0_local;
reg   [6:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we1_local;
reg    delta_weights3_1_ce1_local;
reg   [6:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg   [6:0] delta_weights3_1_address0_local;
reg   [63:0] grp_fu_722_p0;
reg   [63:0] grp_fu_722_p1;
reg   [63:0] grp_fu_726_p0;
reg   [63:0] grp_fu_726_p1;
reg   [63:0] grp_fu_730_p0;
reg   [63:0] grp_fu_730_p1;
reg   [63:0] grp_fu_734_p0;
reg   [63:0] grp_fu_734_p1;
wire   [3:0] tmp_s_fu_790_p4;
wire   [4:0] tmp_49_fu_800_p3;
wire   [2:0] tmp_51_fu_814_p4;
wire   [4:0] tmp_52_fu_830_p4;
wire   [4:0] tmp_54_fu_846_p3;
wire   [1:0] tmp_56_fu_869_p4;
wire   [4:0] tmp_57_fu_878_p4;
wire   [0:0] tmp_39_fu_894_p3;
wire   [4:0] tmp_58_fu_901_p5;
wire   [4:0] tmp_59_fu_919_p4;
wire   [4:0] tmp_60_fu_933_p3;
wire   [4:0] tmp_37_fu_949_p4;
wire   [6:0] p_shl5_fu_958_p3;
wire   [6:0] zext_ln72_1_fu_946_p1;
wire   [6:0] sub_ln75_fu_966_p2;
wire   [5:0] tmp_fu_978_p4;
wire   [6:0] or_ln_fu_988_p3;
wire   [5:0] or_ln2_fu_1001_p3;
wire   [7:0] p_shl_fu_1013_p3;
wire   [7:0] or_ln73_cast_fu_1009_p1;
wire   [7:0] add_ln75_fu_1062_p2;
wire   [6:0] lshr_ln75_1_fu_1067_p4;
wire   [6:0] add_ln75_1_fu_1082_p2;
wire   [7:0] empty_58_fu_1105_p2;
wire   [6:0] add_ln75_2_fu_1120_p2;
wire   [7:0] add_ln75_3_fu_1134_p2;
wire   [6:0] lshr_ln75_3_fu_1139_p4;
wire   [6:0] add_ln75_4_fu_1154_p2;
wire   [6:0] add_ln75_5_fu_1174_p2;
wire   [6:0] or_ln75_2_fu_1185_p3;
wire   [7:0] empty_59_fu_1197_p2;
wire   [7:0] add_ln75_6_fu_1217_p2;
wire   [6:0] lshr_ln75_5_fu_1222_p4;
wire   [6:0] add_ln75_7_fu_1237_p2;
wire   [6:0] add_ln75_8_fu_1247_p2;
wire   [7:0] empty_60_fu_1258_p2;
wire   [6:0] add_ln75_9_fu_1273_p2;
wire   [7:0] add_ln75_10_fu_1287_p2;
wire   [6:0] lshr_ln75_7_fu_1292_p4;
wire   [6:0] add_ln75_11_fu_1307_p2;
wire   [6:0] add_ln75_12_fu_1317_p2;
wire   [6:0] add_ln75_13_fu_1328_p2;
wire   [7:0] empty_61_fu_1338_p2;
wire   [7:0] add_ln75_14_fu_1358_p2;
wire   [6:0] lshr_ln75_9_fu_1363_p4;
wire   [6:0] add_ln75_15_fu_1378_p2;
wire   [6:0] add_ln75_16_fu_1388_p2;
wire   [7:0] empty_62_fu_1399_p2;
wire   [6:0] add_ln75_17_fu_1414_p2;
wire   [7:0] add_ln75_18_fu_1428_p2;
wire   [6:0] lshr_ln75_10_fu_1433_p4;
wire   [6:0] add_ln75_19_fu_1448_p2;
wire   [6:0] add_ln75_20_fu_1458_p2;
wire   [6:0] add_ln75_21_fu_1469_p2;
wire   [7:0] empty_63_fu_1479_p2;
wire   [7:0] add_ln75_22_fu_1499_p2;
wire   [6:0] lshr_ln75_12_fu_1504_p4;
wire   [6:0] add_ln75_23_fu_1519_p2;
wire   [6:0] add_ln75_24_fu_1529_p2;
wire   [7:0] empty_64_fu_1545_p2;
wire   [7:0] add_ln75_26_fu_1560_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_152 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_152 <= 7'd0;
    end else if (((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        i_fu_152 <= add_ln73_fu_1164_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln75_25_reg_1934[6 : 2] <= add_ln75_25_fu_1540_p2[6 : 2];
        add_ln75_27_reg_1949 <= add_ln75_27_fu_1575_p2;
        lshr_ln75_13_reg_1939 <= {{empty_64_fu_1545_p2[7:1]}};
        lshr_ln75_14_reg_1944 <= {{add_ln75_26_fu_1560_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        empty_reg_1851[7 : 1] <= empty_fu_1021_p2[7 : 1];
        lshr_ln2_reg_1870 <= {{empty_fu_1021_p2[7:1]}};
        tmp_50_reg_1875 <= {{sub_ln75_fu_966_p2[6:2]}};
        tmp_53_reg_1880 <= {{sub_ln75_fu_966_p2[6:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_13_reg_1628 <= ap_sig_allocacmp_i_13;
        lshr_ln75_4_reg_1907 <= {{empty_59_fu_1197_p2[7:1]}};
        lshr_ln_reg_1643 <= {{ap_sig_allocacmp_i_13[6:1]}};
        tmp_36_reg_1639 <= ap_sig_allocacmp_i_13[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        last_activations_0_load_1_reg_1707 <= last_activations_0_q0;
        last_activations_0_load_reg_1668 <= last_activations_0_q1;
        last_activations_1_load_1_reg_1714 <= last_activations_1_q0;
        last_activations_1_load_reg_1700 <= last_activations_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        last_activations_0_load_2_reg_1747 <= last_activations_0_q1;
        last_activations_0_load_3_reg_1761 <= last_activations_0_q0;
        last_activations_1_load_2_reg_1754 <= last_activations_1_q1;
        last_activations_1_load_3_reg_1768 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        last_activations_0_load_4_reg_1795 <= last_activations_0_q1;
        last_activations_0_load_5_reg_1809 <= last_activations_0_q0;
        last_activations_1_load_4_reg_1802 <= last_activations_1_q1;
        last_activations_1_load_5_reg_1816 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        last_activations_0_load_6_reg_1823 <= last_activations_0_q1;
        last_activations_0_load_7_reg_1837 <= last_activations_0_q0;
        last_activations_1_load_6_reg_1830 <= last_activations_1_q1;
        last_activations_1_load_7_reg_1844 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln75_11_reg_1929 <= {{empty_63_fu_1479_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        lshr_ln75_2_reg_1901 <= {{empty_58_fu_1105_p2[7:1]}};
        or_ln75_1_reg_1885[6 : 2] <= or_ln75_1_fu_1092_p3[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln75_6_reg_1912 <= {{empty_60_fu_1258_p2[7:1]}};
        tmp_38_reg_1675 <= i_13_reg_1628[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln75_8_reg_1918 <= {{empty_61_fu_1338_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln75_s_reg_1923 <= {{empty_62_fu_1399_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_738 <= grp_fu_2848_p_dout0;
        reg_743 <= grp_fu_2852_p_dout0;
        reg_748 <= grp_fu_2856_p_dout0;
        reg_753 <= grp_fu_2860_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_55_reg_1721 <= {{i_13_reg_1628[5:4]}};
    end
end
always @ (*) begin
    if (((tmp_36_reg_1639 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_13 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_13 = i_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_0_address0_local = zext_ln75_38_fu_1589_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_0_address0_local = zext_ln75_35_fu_1534_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_0_address0_local = zext_ln75_31_fu_1474_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_0_address0_local = zext_ln75_28_fu_1443_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_0_address0_local = zext_ln75_25_fu_1393_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_0_address0_local = zext_ln75_21_fu_1333_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_0_address0_local = zext_ln75_18_fu_1302_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_address0_local = zext_ln75_15_fu_1252_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_0_address0_local = zext_ln75_11_fu_1192_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_0_address0_local = zext_ln75_8_fu_1149_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_0_address0_local = zext_ln75_5_fu_1099_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_0_address0_local = zext_ln75_1_fu_996_p1;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_0_address1_local = zext_ln75_36_fu_1581_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_0_address1_local = zext_ln75_33_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_0_address1_local = zext_ln75_30_fu_1463_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_0_address1_local = zext_ln75_26_fu_1419_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_0_address1_local = zext_ln75_23_fu_1373_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_0_address1_local = zext_ln75_20_fu_1322_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_0_address1_local = zext_ln75_16_fu_1278_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_address1_local = zext_ln75_13_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_0_address1_local = zext_ln75_10_fu_1179_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_0_address1_local = zext_ln75_6_fu_1125_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_0_address1_local = zext_ln75_3_fu_1077_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_0_address1_local = zext_ln75_fu_972_p1;
    end else begin
        delta_weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_1_address0_local = zext_ln75_39_fu_1593_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_1_address0_local = zext_ln75_35_fu_1534_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_1_address0_local = zext_ln75_32_fu_1494_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_1_address0_local = zext_ln75_29_fu_1453_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_1_address0_local = zext_ln75_25_fu_1393_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_1_address0_local = zext_ln75_22_fu_1353_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_1_address0_local = zext_ln75_19_fu_1312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_address0_local = zext_ln75_15_fu_1252_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_1_address0_local = zext_ln75_12_fu_1212_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_1_address0_local = zext_ln75_9_fu_1159_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_1_address0_local = zext_ln75_5_fu_1099_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_1_address0_local = zext_ln75_2_fu_1037_p1;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_1_address1_local = zext_ln75_37_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_1_address1_local = zext_ln75_34_fu_1524_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_1_address1_local = zext_ln75_30_fu_1463_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_1_address1_local = zext_ln75_27_fu_1424_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_1_address1_local = zext_ln75_24_fu_1383_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_1_address1_local = zext_ln75_20_fu_1322_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_1_address1_local = zext_ln75_17_fu_1283_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_address1_local = zext_ln75_14_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_1_address1_local = zext_ln75_10_fu_1179_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_1_address1_local = zext_ln75_7_fu_1130_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_1_address1_local = zext_ln75_4_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_1_address1_local = zext_ln75_fu_972_p1;
    end else begin
        delta_weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_36_reg_1639 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_722_p0 = last_activations_0_load_7_reg_1837;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_722_p0 = last_activations_1_load_6_reg_1830;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_722_p0 = last_activations_0_load_6_reg_1823;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_722_p0 = last_activations_0_load_5_reg_1809;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_722_p0 = last_activations_1_load_4_reg_1802;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_722_p0 = last_activations_0_load_4_reg_1795;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_722_p0 = last_activations_0_load_3_reg_1761;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_722_p0 = last_activations_1_load_2_reg_1754;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_722_p0 = last_activations_0_load_2_reg_1747;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_722_p0 = last_activations_0_load_1_reg_1707;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_722_p0 = last_activations_1_load_reg_1700;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_722_p0 = last_activations_0_load_reg_1668;
    end else begin
        grp_fu_722_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_722_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_722_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_722_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_722_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_726_p0 = last_activations_1_load_7_reg_1844;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_726_p0 = last_activations_1_load_6_reg_1830;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_726_p0 = last_activations_0_load_6_reg_1823;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_726_p0 = last_activations_1_load_5_reg_1816;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_726_p0 = last_activations_1_load_4_reg_1802;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_726_p0 = last_activations_0_load_4_reg_1795;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_726_p0 = last_activations_1_load_3_reg_1768;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_726_p0 = last_activations_1_load_2_reg_1754;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_726_p0 = last_activations_0_load_2_reg_1747;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_726_p0 = last_activations_1_load_1_reg_1714;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_726_p0 = last_activations_1_load_reg_1700;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_726_p0 = last_activations_0_load_reg_1668;
    end else begin
        grp_fu_726_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_726_p1 = output_difference_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_726_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_726_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_726_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_730_p0 = last_activations_1_load_7_reg_1844;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_730_p0 = last_activations_0_load_7_reg_1837;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_730_p0 = last_activations_0_load_6_reg_1823;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_730_p0 = last_activations_1_load_5_reg_1816;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_730_p0 = last_activations_0_load_5_reg_1809;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_730_p0 = last_activations_0_load_4_reg_1795;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_730_p0 = last_activations_1_load_3_reg_1768;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_730_p0 = last_activations_0_load_3_reg_1761;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_730_p0 = last_activations_0_load_2_reg_1747;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_730_p0 = last_activations_1_load_1_reg_1714;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_730_p0 = last_activations_0_load_1_reg_1707;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_730_p0 = last_activations_0_load_reg_1668;
    end else begin
        grp_fu_730_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_730_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_730_p1 = output_difference_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_730_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_730_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_734_p0 = last_activations_1_load_7_reg_1844;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_734_p0 = last_activations_0_load_7_reg_1837;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_734_p0 = last_activations_1_load_6_reg_1830;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_734_p0 = last_activations_1_load_5_reg_1816;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_734_p0 = last_activations_0_load_5_reg_1809;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_734_p0 = last_activations_1_load_4_reg_1802;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_734_p0 = last_activations_1_load_3_reg_1768;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_734_p0 = last_activations_0_load_3_reg_1761;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_734_p0 = last_activations_1_load_2_reg_1754;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_734_p0 = last_activations_1_load_1_reg_1714;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_734_p0 = last_activations_0_load_1_reg_1707;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_734_p0 = last_activations_1_load_reg_1700;
    end else begin
        grp_fu_734_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_734_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_734_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_734_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_734_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_0_address0_local = p_cast15_fu_940_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_0_address0_local = p_cast11_fu_913_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_0_address0_local = p_cast7_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_0_address0_local = p_cast_fu_808_p1;
        end else begin
            last_activations_0_address0_local = 'bx;
        end
    end else begin
        last_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_0_address1_local = p_cast13_fu_927_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_0_address1_local = p_cast9_fu_888_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_0_address1_local = p_cast5_fu_840_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_0_address1_local = zext_ln72_fu_784_p1;
        end else begin
            last_activations_0_address1_local = 'bx;
        end
    end else begin
        last_activations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_0_ce1_local = 1'b1;
    end else begin
        last_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_1_address0_local = p_cast15_fu_940_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_1_address0_local = p_cast11_fu_913_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_1_address0_local = p_cast7_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_1_address0_local = p_cast_fu_808_p1;
        end else begin
            last_activations_1_address0_local = 'bx;
        end
    end else begin
        last_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_1_address1_local = p_cast13_fu_927_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_1_address1_local = p_cast9_fu_888_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_1_address1_local = p_cast5_fu_840_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_1_address1_local = zext_ln72_fu_784_p1;
        end else begin
            last_activations_1_address1_local = 'bx;
        end
    end else begin
        last_activations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_1_ce1_local = 1'b1;
    end else begin
        last_activations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln73_fu_1164_p2 = (i_13_reg_1628 + 7'd16);
assign add_ln75_10_fu_1287_p2 = (empty_reg_1851 + 8'd19);
assign add_ln75_11_fu_1307_p2 = (lshr_ln75_6_reg_1912 + 7'd1);
assign add_ln75_12_fu_1317_p2 = (or_ln75_1_reg_1885 + 7'd9);
assign add_ln75_13_fu_1328_p2 = (or_ln75_1_reg_1885 + 7'd10);
assign add_ln75_14_fu_1358_p2 = (empty_reg_1851 + 8'd25);
assign add_ln75_15_fu_1378_p2 = (lshr_ln75_8_reg_1918 + 7'd1);
assign add_ln75_16_fu_1388_p2 = (or_ln75_1_reg_1885 + 7'd12);
assign add_ln75_17_fu_1414_p2 = (or_ln75_1_reg_1885 + 7'd13);
assign add_ln75_18_fu_1428_p2 = (empty_reg_1851 + 8'd31);
assign add_ln75_19_fu_1448_p2 = (lshr_ln75_s_reg_1923 + 7'd1);
assign add_ln75_1_fu_1082_p2 = (lshr_ln2_reg_1870 + 7'd1);
assign add_ln75_20_fu_1458_p2 = (or_ln75_1_reg_1885 + 7'd15);
assign add_ln75_21_fu_1469_p2 = (or_ln75_1_reg_1885 + 7'd16);
assign add_ln75_22_fu_1499_p2 = (empty_reg_1851 + 8'd37);
assign add_ln75_23_fu_1519_p2 = (lshr_ln75_11_reg_1929 + 7'd1);
assign add_ln75_24_fu_1529_p2 = (or_ln75_1_reg_1885 + 7'd18);
assign add_ln75_25_fu_1540_p2 = (or_ln75_1_reg_1885 + 7'd19);
assign add_ln75_26_fu_1560_p2 = (empty_reg_1851 + 8'd43);
assign add_ln75_27_fu_1575_p2 = (lshr_ln75_13_fu_1550_p4 + 7'd1);
assign add_ln75_2_fu_1120_p2 = (or_ln75_1_reg_1885 + 7'd1);
assign add_ln75_3_fu_1134_p2 = (empty_reg_1851 + 8'd7);
assign add_ln75_4_fu_1154_p2 = (lshr_ln75_2_reg_1901 + 7'd1);
assign add_ln75_5_fu_1174_p2 = (or_ln75_1_reg_1885 + 7'd3);
assign add_ln75_6_fu_1217_p2 = (empty_reg_1851 + 8'd13);
assign add_ln75_7_fu_1237_p2 = (lshr_ln75_4_reg_1907 + 7'd1);
assign add_ln75_8_fu_1247_p2 = (or_ln75_1_reg_1885 + 7'd6);
assign add_ln75_9_fu_1273_p2 = (or_ln75_1_reg_1885 + 7'd7);
assign add_ln75_fu_1062_p2 = (empty_reg_1851 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = delta_weights3_0_address1_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = reg_748;
assign delta_weights3_0_d1 = reg_738;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = reg_753;
assign delta_weights3_1_d1 = reg_743;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign empty_58_fu_1105_p2 = (empty_reg_1851 + 8'd6);
assign empty_59_fu_1197_p2 = (empty_reg_1851 + 8'd12);
assign empty_60_fu_1258_p2 = (empty_reg_1851 + 8'd18);
assign empty_61_fu_1338_p2 = (empty_reg_1851 + 8'd24);
assign empty_62_fu_1399_p2 = (empty_reg_1851 + 8'd30);
assign empty_63_fu_1479_p2 = (empty_reg_1851 + 8'd36);
assign empty_64_fu_1545_p2 = (empty_reg_1851 + 8'd42);
assign empty_fu_1021_p2 = (p_shl_fu_1013_p3 - or_ln73_cast_fu_1009_p1);
assign grp_fu_2848_p_ce = 1'b1;
assign grp_fu_2848_p_din0 = grp_fu_722_p0;
assign grp_fu_2848_p_din1 = grp_fu_722_p1;
assign grp_fu_2852_p_ce = 1'b1;
assign grp_fu_2852_p_din0 = grp_fu_726_p0;
assign grp_fu_2852_p_din1 = grp_fu_726_p1;
assign grp_fu_2856_p_ce = 1'b1;
assign grp_fu_2856_p_din0 = grp_fu_730_p0;
assign grp_fu_2856_p_din1 = grp_fu_730_p1;
assign grp_fu_2860_p_ce = 1'b1;
assign grp_fu_2860_p_din0 = grp_fu_734_p0;
assign grp_fu_2860_p_din1 = grp_fu_734_p1;
assign last_activations_0_address0 = last_activations_0_address0_local;
assign last_activations_0_address1 = last_activations_0_address1_local;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_0_ce1 = last_activations_0_ce1_local;
assign last_activations_1_address0 = last_activations_1_address0_local;
assign last_activations_1_address1 = last_activations_1_address1_local;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_1_ce1 = last_activations_1_ce1_local;
assign lshr_ln2_fu_1027_p4 = {{empty_fu_1021_p2[7:1]}};
assign lshr_ln75_10_fu_1433_p4 = {{add_ln75_18_fu_1428_p2[7:1]}};
assign lshr_ln75_11_fu_1484_p4 = {{empty_63_fu_1479_p2[7:1]}};
assign lshr_ln75_12_fu_1504_p4 = {{add_ln75_22_fu_1499_p2[7:1]}};
assign lshr_ln75_13_fu_1550_p4 = {{empty_64_fu_1545_p2[7:1]}};
assign lshr_ln75_1_fu_1067_p4 = {{add_ln75_fu_1062_p2[7:1]}};
assign lshr_ln75_3_fu_1139_p4 = {{add_ln75_3_fu_1134_p2[7:1]}};
assign lshr_ln75_4_fu_1202_p4 = {{empty_59_fu_1197_p2[7:1]}};
assign lshr_ln75_5_fu_1222_p4 = {{add_ln75_6_fu_1217_p2[7:1]}};
assign lshr_ln75_7_fu_1292_p4 = {{add_ln75_10_fu_1287_p2[7:1]}};
assign lshr_ln75_8_fu_1343_p4 = {{empty_61_fu_1338_p2[7:1]}};
assign lshr_ln75_9_fu_1363_p4 = {{add_ln75_14_fu_1358_p2[7:1]}};
assign lshr_ln_fu_774_p4 = {{ap_sig_allocacmp_i_13[6:1]}};
assign or_ln2_fu_1001_p3 = {{tmp_37_fu_949_p4}, {1'd1}};
assign or_ln73_cast_fu_1009_p1 = or_ln2_fu_1001_p3;
assign or_ln75_1_fu_1092_p3 = {{tmp_50_reg_1875}, {2'd3}};
assign or_ln75_2_fu_1185_p3 = {{tmp_53_reg_1880}, {3'd7}};
assign or_ln_fu_988_p3 = {{tmp_fu_978_p4}, {1'd1}};
assign p_cast11_fu_913_p1 = tmp_58_fu_901_p5;
assign p_cast13_fu_927_p1 = tmp_59_fu_919_p4;
assign p_cast15_fu_940_p1 = tmp_60_fu_933_p3;
assign p_cast5_fu_840_p1 = tmp_52_fu_830_p4;
assign p_cast7_fu_854_p1 = tmp_54_fu_846_p3;
assign p_cast9_fu_888_p1 = tmp_57_fu_878_p4;
assign p_cast_fu_808_p1 = tmp_49_fu_800_p3;
assign p_shl5_fu_958_p3 = {{tmp_37_fu_949_p4}, {2'd0}};
assign p_shl_fu_1013_p3 = {{tmp_37_fu_949_p4}, {3'd4}};
assign sub_ln75_fu_966_p2 = (p_shl5_fu_958_p3 - zext_ln72_1_fu_946_p1);
assign tmp_37_fu_949_p4 = {{i_13_reg_1628[5:1]}};
assign tmp_38_fu_823_p3 = i_13_reg_1628[32'd1];
assign tmp_39_fu_894_p3 = i_13_reg_1628[32'd2];
assign tmp_49_fu_800_p3 = {{tmp_s_fu_790_p4}, {1'd1}};
assign tmp_51_fu_814_p4 = {{i_13_reg_1628[5:3]}};
assign tmp_52_fu_830_p4 = {{{tmp_51_fu_814_p4}, {1'd1}}, {tmp_38_fu_823_p3}};
assign tmp_54_fu_846_p3 = {{tmp_51_fu_814_p4}, {2'd3}};
assign tmp_55_fu_860_p4 = {{i_13_reg_1628[5:4]}};
assign tmp_56_fu_869_p4 = {{i_13_reg_1628[2:1]}};
assign tmp_57_fu_878_p4 = {{{tmp_55_fu_860_p4}, {1'd1}}, {tmp_56_fu_869_p4}};
assign tmp_58_fu_901_p5 = {{{{tmp_55_fu_860_p4}, {1'd1}}, {tmp_39_fu_894_p3}}, {1'd1}};
assign tmp_59_fu_919_p4 = {{{tmp_55_reg_1721}, {2'd3}}, {tmp_38_reg_1675}};
assign tmp_60_fu_933_p3 = {{tmp_55_reg_1721}, {3'd7}};
assign tmp_fu_978_p4 = {{sub_ln75_fu_966_p2[6:1]}};
assign tmp_s_fu_790_p4 = {{ap_sig_allocacmp_i_13[5:2]}};
assign zext_ln72_1_fu_946_p1 = lshr_ln_reg_1643;
assign zext_ln72_fu_784_p1 = lshr_ln_fu_774_p4;
assign zext_ln75_10_fu_1179_p1 = add_ln75_5_fu_1174_p2;
assign zext_ln75_11_fu_1192_p1 = or_ln75_2_fu_1185_p3;
assign zext_ln75_12_fu_1212_p1 = lshr_ln75_4_fu_1202_p4;
assign zext_ln75_13_fu_1232_p1 = lshr_ln75_5_fu_1222_p4;
assign zext_ln75_14_fu_1242_p1 = add_ln75_7_fu_1237_p2;
assign zext_ln75_15_fu_1252_p1 = add_ln75_8_fu_1247_p2;
assign zext_ln75_16_fu_1278_p1 = add_ln75_9_fu_1273_p2;
assign zext_ln75_17_fu_1283_p1 = lshr_ln75_6_reg_1912;
assign zext_ln75_18_fu_1302_p1 = lshr_ln75_7_fu_1292_p4;
assign zext_ln75_19_fu_1312_p1 = add_ln75_11_fu_1307_p2;
assign zext_ln75_1_fu_996_p1 = or_ln_fu_988_p3;
assign zext_ln75_20_fu_1322_p1 = add_ln75_12_fu_1317_p2;
assign zext_ln75_21_fu_1333_p1 = add_ln75_13_fu_1328_p2;
assign zext_ln75_22_fu_1353_p1 = lshr_ln75_8_fu_1343_p4;
assign zext_ln75_23_fu_1373_p1 = lshr_ln75_9_fu_1363_p4;
assign zext_ln75_24_fu_1383_p1 = add_ln75_15_fu_1378_p2;
assign zext_ln75_25_fu_1393_p1 = add_ln75_16_fu_1388_p2;
assign zext_ln75_26_fu_1419_p1 = add_ln75_17_fu_1414_p2;
assign zext_ln75_27_fu_1424_p1 = lshr_ln75_s_reg_1923;
assign zext_ln75_28_fu_1443_p1 = lshr_ln75_10_fu_1433_p4;
assign zext_ln75_29_fu_1453_p1 = add_ln75_19_fu_1448_p2;
assign zext_ln75_2_fu_1037_p1 = lshr_ln2_fu_1027_p4;
assign zext_ln75_30_fu_1463_p1 = add_ln75_20_fu_1458_p2;
assign zext_ln75_31_fu_1474_p1 = add_ln75_21_fu_1469_p2;
assign zext_ln75_32_fu_1494_p1 = lshr_ln75_11_fu_1484_p4;
assign zext_ln75_33_fu_1514_p1 = lshr_ln75_12_fu_1504_p4;
assign zext_ln75_34_fu_1524_p1 = add_ln75_23_fu_1519_p2;
assign zext_ln75_35_fu_1534_p1 = add_ln75_24_fu_1529_p2;
assign zext_ln75_36_fu_1581_p1 = add_ln75_25_reg_1934;
assign zext_ln75_37_fu_1585_p1 = lshr_ln75_13_reg_1939;
assign zext_ln75_38_fu_1589_p1 = lshr_ln75_14_reg_1944;
assign zext_ln75_39_fu_1593_p1 = add_ln75_27_reg_1949;
assign zext_ln75_3_fu_1077_p1 = lshr_ln75_1_fu_1067_p4;
assign zext_ln75_4_fu_1087_p1 = add_ln75_1_fu_1082_p2;
assign zext_ln75_5_fu_1099_p1 = or_ln75_1_fu_1092_p3;
assign zext_ln75_6_fu_1125_p1 = add_ln75_2_fu_1120_p2;
assign zext_ln75_7_fu_1130_p1 = lshr_ln75_2_reg_1901;
assign zext_ln75_8_fu_1149_p1 = lshr_ln75_3_fu_1139_p4;
assign zext_ln75_9_fu_1159_p1 = add_ln75_4_fu_1154_p2;
assign zext_ln75_fu_972_p1 = sub_ln75_fu_966_p2;
always @ (posedge ap_clk) begin
    empty_reg_1851[0] <= 1'b1;
    or_ln75_1_reg_1885[1:0] <= 2'b11;
    add_ln75_25_reg_1934[1:0] <= 2'b10;
end
endmodule 