module stencil3d_stencil3d_Pipeline_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,i_2,j_1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,empty_8,empty,indvars_iv_next109,tmp2,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,C_load,C_load_1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [11:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [11:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [11:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
input  [4:0] i_2;
input  [4:0] j_1;
output  [11:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [11:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
input  [9:0] empty_8;
input  [9:0] empty;
input  [4:0] indvars_iv_next109;
input  [4:0] tmp2;
output  [11:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [11:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [11:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [11:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
output  [11:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [11:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln38_reg_1843;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_614;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage5_11001;
reg  signed [31:0] reg_619;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_625;
reg   [31:0] reg_630;
reg  signed [31:0] reg_635;
reg   [31:0] reg_641;
reg  signed [31:0] reg_646;
reg   [31:0] reg_651;
reg   [31:0] reg_656;
reg   [31:0] reg_661;
reg   [31:0] reg_666;
wire   [31:0] grp_fu_602_p2;
reg   [31:0] reg_670;
wire   [31:0] grp_fu_606_p2;
reg   [31:0] reg_674;
reg   [31:0] reg_678;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_610_p2;
reg   [31:0] reg_682;
wire   [31:0] grp_fu_686_p2;
reg   [31:0] reg_692;
reg   [3:0] k_1_reg_1554;
wire   [1:0] lshr_ln_fu_704_p4;
reg   [1:0] lshr_ln_reg_1563;
wire   [63:0] zext_ln39_1_fu_724_p1;
reg   [63:0] zext_ln39_1_reg_1570;
reg   [63:0] zext_ln39_1_reg_1570_pp0_iter1_reg;
wire   [63:0] zext_ln42_fu_741_p1;
reg   [63:0] zext_ln42_reg_1578;
wire   [63:0] zext_ln43_fu_757_p1;
reg   [63:0] zext_ln43_reg_1583;
wire   [1:0] lshr_ln1_fu_768_p4;
reg   [1:0] lshr_ln1_reg_1619;
wire   [63:0] zext_ln44_fu_788_p1;
reg   [63:0] zext_ln44_reg_1627;
reg   [63:0] zext_ln44_reg_1627_pp0_iter1_reg;
wire   [1:0] add_ln44_2_fu_793_p2;
reg   [1:0] add_ln44_2_reg_1637;
wire   [63:0] zext_ln44_1_fu_809_p1;
reg   [63:0] zext_ln44_1_reg_1645;
reg   [63:0] zext_ln44_1_reg_1645_pp0_iter1_reg;
reg  signed [31:0] sum0_3_reg_1685;
wire   [31:0] add_ln48_3_fu_870_p2;
reg   [31:0] add_ln48_3_reg_1712;
reg   [31:0] orig_2_load_4_reg_1722;
reg   [31:0] orig_3_load_123_reg_1732;
wire   [1:0] lshr_ln44_1_fu_903_p4;
reg   [1:0] lshr_ln44_1_reg_1747;
wire   [63:0] zext_ln44_2_fu_921_p1;
reg   [63:0] zext_ln44_2_reg_1755;
reg   [63:0] zext_ln44_2_reg_1755_pp0_iter1_reg;
wire   [3:0] add_ln44_6_fu_926_p2;
reg   [3:0] add_ln44_6_reg_1765;
wire   [1:0] lshr_ln44_2_fu_931_p4;
reg   [1:0] lshr_ln44_2_reg_1770;
wire   [63:0] zext_ln44_3_fu_949_p1;
reg   [63:0] zext_ln44_3_reg_1778;
reg   [63:0] zext_ln44_3_reg_1778_pp0_iter1_reg;
wire   [31:0] add_ln48_fu_954_p2;
reg   [31:0] add_ln48_reg_1788;
wire   [31:0] add_ln48_6_fu_960_p2;
reg   [31:0] add_ln48_6_reg_1793;
wire   [31:0] add_ln48_9_fu_971_p2;
reg   [31:0] add_ln48_9_reg_1798;
wire   [31:0] add_ln48_12_fu_977_p2;
reg   [31:0] add_ln48_12_reg_1803;
wire   [31:0] add_ln48_15_fu_987_p2;
reg   [31:0] add_ln48_15_reg_1808;
wire   [31:0] add_ln48_21_fu_999_p2;
reg   [31:0] add_ln48_21_reg_1813;
reg   [31:0] mul_ln48_6_reg_1818;
wire   [0:0] icmp_ln38_fu_1053_p2;
reg   [0:0] icmp_ln38_reg_1843_pp0_iter1_reg;
wire   [1:0] lshr_ln44_3_fu_1087_p4;
reg   [1:0] lshr_ln44_3_reg_1857;
wire   [63:0] zext_ln44_4_fu_1105_p1;
reg   [63:0] zext_ln44_4_reg_1864;
reg   [63:0] zext_ln44_4_reg_1864_pp0_iter1_reg;
wire  signed [31:0] add_ln48_4_fu_1157_p2;
reg  signed [31:0] add_ln48_4_reg_1879;
reg   [31:0] mul_ln48_reg_1884;
wire  signed [31:0] add_ln48_10_fu_1167_p2;
reg  signed [31:0] add_ln48_10_reg_1889;
wire  signed [31:0] add_ln48_16_fu_1177_p2;
reg  signed [31:0] add_ln48_16_reg_1894;
wire  signed [31:0] add_ln48_22_fu_1188_p2;
reg  signed [31:0] add_ln48_22_reg_1899;
reg   [31:0] mul_ln48_8_reg_1909;
reg   [31:0] mul_ln48_8_reg_1909_pp0_iter1_reg;
wire   [31:0] add_ln48_27_fu_1310_p2;
reg   [31:0] add_ln48_27_reg_1954;
wire   [31:0] add_ln48_30_fu_1316_p2;
reg   [31:0] add_ln48_30_reg_1959;
wire   [31:0] add_ln48_33_fu_1328_p2;
reg   [31:0] add_ln48_33_reg_1964;
reg   [31:0] mul_ln48_10_reg_1969;
wire   [31:0] add_ln48_36_fu_1334_p2;
reg   [31:0] add_ln48_36_reg_1974;
wire   [31:0] add_ln48_39_fu_1346_p2;
reg   [31:0] add_ln48_39_reg_1979;
reg   [31:0] mul_ln48_12_reg_1984;
reg   [31:0] orig_0_load_126_reg_1989;
reg   [31:0] orig_0_load_129_reg_1999;
reg   [31:0] mul_ln48_1_reg_2004;
wire   [31:0] add_ln48_24_fu_1363_p2;
reg   [31:0] add_ln48_24_reg_2009;
wire  signed [31:0] add_ln48_34_fu_1373_p2;
reg  signed [31:0] add_ln48_34_reg_2014;
wire  signed [31:0] add_ln48_40_fu_1383_p2;
reg  signed [31:0] add_ln48_40_reg_2019;
wire   [31:0] add_ln48_45_fu_1393_p2;
reg   [31:0] add_ln48_45_reg_2024;
wire  signed [31:0] add_ln48_28_fu_1423_p2;
reg  signed [31:0] add_ln48_28_reg_2029;
wire  signed [31:0] add_ln48_46_fu_1433_p2;
reg  signed [31:0] add_ln48_46_reg_2034;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter1_stage5;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln40_fu_820_p1;
wire   [63:0] zext_ln42_1_fu_834_p1;
wire   [63:0] zext_ln43_1_fu_846_p1;
wire   [63:0] zext_ln41_fu_857_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln40_1_fu_882_p1;
wire   [63:0] zext_ln41_1_fu_893_p1;
wire   [63:0] zext_ln42_2_fu_1012_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln43_2_fu_1024_p1;
wire   [63:0] zext_ln42_3_fu_1036_p1;
wire   [63:0] zext_ln43_3_fu_1048_p1;
wire   [63:0] zext_ln42_4_fu_1065_p1;
wire   [63:0] zext_ln43_4_fu_1077_p1;
wire   [63:0] zext_ln42_5_fu_1118_p1;
wire   [63:0] zext_ln40_2_fu_1199_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln40_3_fu_1210_p1;
wire   [63:0] zext_ln41_3_fu_1221_p1;
wire   [63:0] zext_ln40_4_fu_1235_p1;
wire   [63:0] zext_ln41_4_fu_1246_p1;
wire   [63:0] zext_ln40_5_fu_1257_p1;
wire   [63:0] zext_ln43_5_fu_1269_p1;
wire   [63:0] zext_ln44_5_fu_1288_p1;
wire   [63:0] zext_ln41_2_fu_1299_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln41_5_fu_1358_p1;
reg   [3:0] k_fu_94;
wire   [3:0] xor_ln_fu_1139_p3;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_1;
reg    orig_1_ce1_local;
reg   [11:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [11:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [11:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [11:0] orig_2_address0_local;
reg    orig_0_ce1_local;
reg   [11:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [11:0] orig_0_address0_local;
reg    orig_3_ce1_local;
reg   [11:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [11:0] orig_3_address0_local;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
wire   [31:0] add_ln48_5_fu_1399_p2;
reg    sol_1_ce0_local;
reg   [11:0] sol_1_address0_local;
wire   [31:0] add_ln48_29_fu_1456_p2;
reg    sol_2_we0_local;
reg   [31:0] sol_2_d0_local;
wire   [31:0] add_ln48_11_fu_1404_p2;
reg    sol_2_ce0_local;
reg   [11:0] sol_2_address0_local;
wire   [31:0] add_ln48_35_fu_1444_p2;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
wire   [31:0] add_ln48_17_fu_1411_p2;
reg    sol_3_ce0_local;
reg   [11:0] sol_3_address0_local;
wire   [31:0] add_ln48_41_fu_1450_p2;
reg    sol_0_we0_local;
reg   [31:0] sol_0_d0_local;
wire   [31:0] add_ln48_23_fu_1438_p2;
reg    sol_0_ce0_local;
reg   [11:0] sol_0_address0_local;
wire   [31:0] add_ln48_47_fu_1462_p2;
reg  signed [31:0] grp_fu_602_p0;
reg  signed [31:0] grp_fu_602_p1;
reg  signed [31:0] grp_fu_606_p0;
reg  signed [31:0] grp_fu_606_p1;
reg  signed [31:0] grp_fu_610_p0;
reg  signed [31:0] grp_fu_610_p1;
wire   [11:0] add_ln_fu_714_p4;
wire   [11:0] add_ln3_fu_731_p4;
wire   [11:0] add_ln4_fu_747_p4;
wire   [3:0] add_ln44_fu_762_p2;
wire   [11:0] add_ln44_1_fu_778_p4;
wire   [11:0] add_ln44_3_fu_799_p4;
wire   [11:0] add_ln1_fu_814_p3;
wire   [11:0] add_ln42_1_fu_827_p4;
wire   [11:0] add_ln43_1_fu_839_p4;
wire   [11:0] add_ln2_fu_851_p3;
wire   [31:0] add_ln48_2_fu_864_p2;
wire   [11:0] add_ln40_1_fu_876_p3;
wire   [11:0] add_ln41_1_fu_887_p3;
wire   [3:0] add_ln44_4_fu_898_p2;
wire   [11:0] add_ln44_5_fu_913_p4;
wire   [11:0] add_ln44_7_fu_941_p4;
wire  signed [31:0] add_ln48_6_fu_960_p0;
wire   [31:0] add_ln48_8_fu_966_p2;
wire   [31:0] add_ln48_14_fu_983_p2;
wire   [31:0] add_ln48_20_fu_993_p2;
wire   [11:0] add_ln42_2_fu_1005_p4;
wire   [11:0] add_ln43_2_fu_1017_p4;
wire   [11:0] add_ln42_3_fu_1029_p4;
wire   [11:0] add_ln43_3_fu_1041_p4;
wire   [11:0] add_ln42_4_fu_1058_p4;
wire   [11:0] add_ln43_4_fu_1070_p4;
wire   [3:0] add_ln44_8_fu_1082_p2;
wire   [11:0] add_ln44_9_fu_1097_p4;
wire   [11:0] add_ln42_5_fu_1110_p4;
wire   [0:0] bit_sel_fu_1123_p3;
wire   [0:0] xor_ln44_fu_1130_p2;
wire   [2:0] trunc_ln44_fu_1136_p1;
wire   [31:0] add_ln48_1_fu_1152_p2;
wire   [31:0] add_ln48_7_fu_1162_p2;
wire   [31:0] add_ln48_13_fu_1172_p2;
wire   [31:0] add_ln48_19_fu_1182_p2;
wire   [11:0] add_ln40_2_fu_1193_p3;
wire   [11:0] add_ln40_3_fu_1204_p3;
wire   [11:0] add_ln41_3_fu_1215_p3;
wire   [11:0] add_ln40_4_fu_1229_p3;
wire   [11:0] add_ln41_4_fu_1240_p3;
wire   [11:0] add_ln40_5_fu_1251_p3;
wire   [11:0] add_ln43_5_fu_1262_p4;
wire   [11:0] zext_ln39_fu_1226_p1;
wire   [11:0] or_ln6_fu_1274_p4;
wire   [11:0] add_ln44_10_fu_1282_p2;
wire   [11:0] add_ln41_2_fu_1293_p3;
wire   [31:0] add_ln48_26_fu_1304_p2;
wire   [31:0] add_ln48_32_fu_1322_p2;
wire  signed [31:0] add_ln48_38_fu_1340_p1;
wire   [31:0] add_ln48_38_fu_1340_p2;
wire   [11:0] add_ln41_5_fu_1352_p3;
wire   [31:0] add_ln48_31_fu_1368_p1;
wire   [31:0] add_ln48_31_fu_1368_p2;
wire   [31:0] add_ln48_37_fu_1378_p2;
wire   [31:0] add_ln48_44_fu_1388_p1;
wire   [31:0] add_ln48_44_fu_1388_p2;
wire   [31:0] add_ln48_25_fu_1418_p2;
wire   [31:0] add_ln48_43_fu_1428_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_94 = 4'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_602_p0),.din1(grp_fu_602_p1),.ce(1'b1),.dout(grp_fu_602_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_606_p0),.din1(grp_fu_606_p1),.ce(1'b1),.dout(grp_fu_606_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_610_p0),.din1(grp_fu_610_p1),.ce(1'b1),.dout(grp_fu_610_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage5) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_94 <= 4'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln38_fu_1053_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        k_fu_94 <= xor_ln_fu_1139_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_619 <= orig_2_q0;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_619 <= orig_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_630 <= orig_2_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_630 <= orig_2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_635 <= orig_3_q0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_635 <= orig_3_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_641 <= orig_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_641 <= orig_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_651 <= orig_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_651 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_656 <= orig_2_q0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_656 <= orig_2_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_661 <= orig_3_q0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_661 <= orig_3_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln44_2_reg_1637 <= add_ln44_2_fu_793_p2;
        add_ln48_24_reg_2009 <= add_ln48_24_fu_1363_p2;
        add_ln48_34_reg_2014 <= add_ln48_34_fu_1373_p2;
        add_ln48_40_reg_2019 <= add_ln48_40_fu_1383_p2;
        add_ln48_45_reg_2024 <= add_ln48_45_fu_1393_p2;
        k_1_reg_1554 <= ap_sig_allocacmp_k_1;
        lshr_ln1_reg_1619 <= {{add_ln44_fu_762_p2[3:2]}};
        lshr_ln_reg_1563 <= {{ap_sig_allocacmp_k_1[3:2]}};
        zext_ln39_1_reg_1570[11 : 0] <= zext_ln39_1_fu_724_p1[11 : 0];
        zext_ln39_1_reg_1570_pp0_iter1_reg[11 : 0] <= zext_ln39_1_reg_1570[11 : 0];
        zext_ln42_reg_1578[11 : 0] <= zext_ln42_fu_741_p1[11 : 0];
        zext_ln43_reg_1583[11 : 0] <= zext_ln43_fu_757_p1[11 : 0];
        zext_ln44_1_reg_1645[11 : 0] <= zext_ln44_1_fu_809_p1[11 : 0];
        zext_ln44_1_reg_1645_pp0_iter1_reg[11 : 0] <= zext_ln44_1_reg_1645[11 : 0];
        zext_ln44_reg_1627[11 : 0] <= zext_ln44_fu_788_p1[11 : 0];
        zext_ln44_reg_1627_pp0_iter1_reg[11 : 0] <= zext_ln44_reg_1627[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln44_6_reg_1765 <= add_ln44_6_fu_926_p2;
        add_ln48_3_reg_1712 <= add_ln48_3_fu_870_p2;
        lshr_ln44_1_reg_1747 <= {{add_ln44_4_fu_898_p2[3:2]}};
        lshr_ln44_2_reg_1770 <= {{add_ln44_6_fu_926_p2[3:2]}};
        zext_ln44_2_reg_1755[11 : 0] <= zext_ln44_2_fu_921_p1[11 : 0];
        zext_ln44_2_reg_1755_pp0_iter1_reg[11 : 0] <= zext_ln44_2_reg_1755[11 : 0];
        zext_ln44_3_reg_1778[11 : 0] <= zext_ln44_3_fu_949_p1[11 : 0];
        zext_ln44_3_reg_1778_pp0_iter1_reg[11 : 0] <= zext_ln44_3_reg_1778[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln48_10_reg_1889 <= add_ln48_10_fu_1167_p2;
        add_ln48_16_reg_1894 <= add_ln48_16_fu_1177_p2;
        add_ln48_22_reg_1899 <= add_ln48_22_fu_1188_p2;
        add_ln48_4_reg_1879 <= add_ln48_4_fu_1157_p2;
        mul_ln48_8_reg_1909_pp0_iter1_reg <= mul_ln48_8_reg_1909;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln48_12_reg_1803 <= add_ln48_12_fu_977_p2;
        add_ln48_15_reg_1808 <= add_ln48_15_fu_987_p2;
        add_ln48_21_reg_1813 <= add_ln48_21_fu_999_p2;
        add_ln48_6_reg_1793 <= add_ln48_6_fu_960_p2;
        add_ln48_9_reg_1798 <= add_ln48_9_fu_971_p2;
        add_ln48_reg_1788 <= add_ln48_fu_954_p2;
        icmp_ln38_reg_1843 <= icmp_ln38_fu_1053_p2;
        icmp_ln38_reg_1843_pp0_iter1_reg <= icmp_ln38_reg_1843;
        lshr_ln44_3_reg_1857 <= {{add_ln44_8_fu_1082_p2[3:2]}};
        zext_ln44_4_reg_1864[11 : 0] <= zext_ln44_4_fu_1105_p1[11 : 0];
        zext_ln44_4_reg_1864_pp0_iter1_reg[11 : 0] <= zext_ln44_4_reg_1864[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln48_27_reg_1954 <= add_ln48_27_fu_1310_p2;
        add_ln48_30_reg_1959 <= add_ln48_30_fu_1316_p2;
        add_ln48_33_reg_1964 <= add_ln48_33_fu_1328_p2;
        add_ln48_36_reg_1974 <= add_ln48_36_fu_1334_p2;
        add_ln48_39_reg_1979 <= add_ln48_39_fu_1346_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_28_reg_2029 <= add_ln48_28_fu_1423_p2;
        add_ln48_46_reg_2034 <= add_ln48_46_fu_1433_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln48_10_reg_1969 <= grp_fu_602_p2;
        mul_ln48_12_reg_1984 <= grp_fu_606_p2;
        orig_0_load_126_reg_1989 <= orig_0_q1;
        orig_0_load_129_reg_1999 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_1_reg_2004 <= grp_fu_602_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln48_6_reg_1818 <= grp_fu_610_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln48_8_reg_1909 <= grp_fu_606_p2;
        mul_ln48_reg_1884 <= grp_fu_602_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_load_4_reg_1722 <= orig_2_q0;
        orig_3_load_123_reg_1732 <= orig_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_614 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_625 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_646 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_666 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_670 <= grp_fu_602_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_674 <= grp_fu_606_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_678 <= grp_fu_606_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_682 <= grp_fu_610_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_692 <= grp_fu_686_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum0_3_reg_1685 <= orig_0_q0;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_1843 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (icmp_ln38_reg_1843_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter1_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_1 = 4'd1;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_94;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_602_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_602_p0 = reg_614;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_602_p0 = reg_619;
    end else begin
        grp_fu_602_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_602_p1 = add_ln48_34_reg_2014;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_602_p1 = add_ln48_22_reg_1899;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_602_p1 = add_ln48_4_reg_1879;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_602_p1 = C_load;
    end else begin
        grp_fu_602_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_606_p0 = reg_625;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_606_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_606_p0 = reg_646;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_606_p0 = reg_635;
    end else begin
        grp_fu_606_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_606_p1 = add_ln48_40_reg_2019;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_606_p1 = add_ln48_10_reg_1889;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_606_p1 = C_load;
    end else begin
        grp_fu_606_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_610_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_610_p0 = sum0_3_reg_1685;
    end else begin
        grp_fu_610_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_610_p1 = add_ln48_46_reg_2034;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_610_p1 = add_ln48_28_reg_2029;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_610_p1 = add_ln48_16_reg_1894;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_610_p1 = C_load;
    end else begin
        grp_fu_610_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_0_address0_local = zext_ln41_5_fu_1358_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address0_local = zext_ln43_5_fu_1269_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address0_local = zext_ln42_5_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln41_1_fu_893_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = zext_ln43_1_fu_846_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln44_fu_788_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address1_local = zext_ln40_5_fu_1257_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address1_local = zext_ln44_4_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln40_1_fu_882_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln42_1_fu_834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln39_1_fu_724_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_1_address0_local = zext_ln41_2_fu_1299_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address0_local = zext_ln44_5_fu_1288_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address0_local = zext_ln43_2_fu_1024_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address0_local = zext_ln42_reg_1578;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address0_local = zext_ln40_fu_820_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address0_local = zext_ln44_1_fu_809_p1;
        end else begin
            orig_1_address0_local = 'bx;
        end
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address1_local = zext_ln40_2_fu_1199_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address1_local = zext_ln42_2_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln41_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln39_1_reg_1570;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln43_fu_757_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_2_address0_local = zext_ln41_3_fu_1221_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_2_address0_local = zext_ln43_3_fu_1048_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address0_local = zext_ln44_2_fu_921_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address0_local = zext_ln43_reg_1583;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address0_local = zext_ln42_fu_741_p1;
        end else begin
            orig_2_address0_local = 'bx;
        end
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_2_address1_local = zext_ln40_3_fu_1210_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_2_address1_local = zext_ln42_3_fu_1036_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address1_local = zext_ln41_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address1_local = zext_ln40_fu_820_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address1_local = zext_ln39_1_fu_724_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_3_address0_local = zext_ln41_4_fu_1246_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_3_address0_local = zext_ln43_4_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address0_local = zext_ln44_3_fu_949_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address0_local = zext_ln43_reg_1583;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address0_local = zext_ln42_fu_741_p1;
        end else begin
            orig_3_address0_local = 'bx;
        end
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_3_address1_local = zext_ln40_4_fu_1235_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_3_address1_local = zext_ln42_4_fu_1065_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address1_local = zext_ln41_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address1_local = zext_ln40_fu_820_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address1_local = zext_ln39_1_fu_724_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_address0_local = zext_ln44_4_reg_1864_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_0_address0_local = zext_ln44_reg_1627_pp0_iter1_reg;
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_d0_local = add_ln48_47_fu_1462_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_0_d0_local = add_ln48_23_fu_1438_p2;
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_1_address0_local = zext_ln44_1_reg_1645_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_1_address0_local = zext_ln39_1_reg_1570_pp0_iter1_reg;
        end else begin
            sol_1_address0_local = 'bx;
        end
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_1_d0_local = add_ln48_29_fu_1456_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_1_d0_local = add_ln48_5_fu_1399_p2;
        end else begin
            sol_1_d0_local = 'bx;
        end
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_2_address0_local = zext_ln44_2_reg_1755_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_2_address0_local = zext_ln39_1_reg_1570_pp0_iter1_reg;
        end else begin
            sol_2_address0_local = 'bx;
        end
    end else begin
        sol_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_2_d0_local = add_ln48_35_fu_1444_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_2_d0_local = add_ln48_11_fu_1404_p2;
        end else begin
            sol_2_d0_local = 'bx;
        end
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_3_address0_local = zext_ln44_3_reg_1778_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_3_address0_local = zext_ln39_1_reg_1570_pp0_iter1_reg;
        end else begin
            sol_3_address0_local = 'bx;
        end
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_3_d0_local = add_ln48_41_fu_1450_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_3_d0_local = add_ln48_17_fu_1411_p2;
        end else begin
            sol_3_d0_local = 'bx;
        end
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln38_reg_1843 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1_fu_814_p3 = {{empty_8}, {lshr_ln_reg_1563}};
assign add_ln2_fu_851_p3 = {{empty}, {lshr_ln_reg_1563}};
assign add_ln3_fu_731_p4 = {{{i_2}, {indvars_iv_next109}}, {lshr_ln_fu_704_p4}};
assign add_ln40_1_fu_876_p3 = {{empty_8}, {lshr_ln1_reg_1619}};
assign add_ln40_2_fu_1193_p3 = {{empty_8}, {add_ln44_2_reg_1637}};
assign add_ln40_3_fu_1204_p3 = {{empty_8}, {lshr_ln44_1_reg_1747}};
assign add_ln40_4_fu_1229_p3 = {{empty_8}, {lshr_ln44_2_reg_1770}};
assign add_ln40_5_fu_1251_p3 = {{empty_8}, {lshr_ln44_3_reg_1857}};
assign add_ln41_1_fu_887_p3 = {{empty}, {lshr_ln1_reg_1619}};
assign add_ln41_2_fu_1293_p3 = {{empty}, {add_ln44_2_reg_1637}};
assign add_ln41_3_fu_1215_p3 = {{empty}, {lshr_ln44_1_reg_1747}};
assign add_ln41_4_fu_1240_p3 = {{empty}, {lshr_ln44_2_reg_1770}};
assign add_ln41_5_fu_1352_p3 = {{empty}, {lshr_ln44_3_reg_1857}};
assign add_ln42_1_fu_827_p4 = {{{i_2}, {indvars_iv_next109}}, {lshr_ln1_reg_1619}};
assign add_ln42_2_fu_1005_p4 = {{{i_2}, {indvars_iv_next109}}, {add_ln44_2_reg_1637}};
assign add_ln42_3_fu_1029_p4 = {{{i_2}, {indvars_iv_next109}}, {lshr_ln44_1_reg_1747}};
assign add_ln42_4_fu_1058_p4 = {{{i_2}, {indvars_iv_next109}}, {lshr_ln44_2_reg_1770}};
assign add_ln42_5_fu_1110_p4 = {{{i_2}, {indvars_iv_next109}}, {lshr_ln44_3_fu_1087_p4}};
assign add_ln43_1_fu_839_p4 = {{{i_2}, {tmp2}}, {lshr_ln1_reg_1619}};
assign add_ln43_2_fu_1017_p4 = {{{i_2}, {tmp2}}, {add_ln44_2_reg_1637}};
assign add_ln43_3_fu_1041_p4 = {{{i_2}, {tmp2}}, {lshr_ln44_1_reg_1747}};
assign add_ln43_4_fu_1070_p4 = {{{i_2}, {tmp2}}, {lshr_ln44_2_reg_1770}};
assign add_ln43_5_fu_1262_p4 = {{{i_2}, {tmp2}}, {lshr_ln44_3_reg_1857}};
assign add_ln44_10_fu_1282_p2 = (zext_ln39_fu_1226_p1 + or_ln6_fu_1274_p4);
assign add_ln44_1_fu_778_p4 = {{{i_2}, {j_1}}, {lshr_ln1_fu_768_p4}};
assign add_ln44_2_fu_793_p2 = (lshr_ln_fu_704_p4 + 2'd1);
assign add_ln44_3_fu_799_p4 = {{{i_2}, {j_1}}, {add_ln44_2_fu_793_p2}};
assign add_ln44_4_fu_898_p2 = (k_1_reg_1554 + 4'd5);
assign add_ln44_5_fu_913_p4 = {{{i_2}, {j_1}}, {lshr_ln44_1_fu_903_p4}};
assign add_ln44_6_fu_926_p2 = (k_1_reg_1554 + 4'd6);
assign add_ln44_7_fu_941_p4 = {{{i_2}, {j_1}}, {lshr_ln44_2_fu_931_p4}};
assign add_ln44_8_fu_1082_p2 = (k_1_reg_1554 + 4'd7);
assign add_ln44_9_fu_1097_p4 = {{{i_2}, {j_1}}, {lshr_ln44_3_fu_1087_p4}};
assign add_ln44_fu_762_p2 = (ap_sig_allocacmp_k_1 + 4'd3);
assign add_ln48_10_fu_1167_p2 = (add_ln48_9_reg_1798 + add_ln48_7_fu_1162_p2);
assign add_ln48_11_fu_1404_p2 = (reg_678 + reg_670);
assign add_ln48_12_fu_977_p2 = ($signed(reg_619) + $signed(orig_3_q1));
assign add_ln48_13_fu_1172_p2 = (add_ln48_12_reg_1803 + reg_661);
assign add_ln48_14_fu_983_p2 = ($signed(orig_3_load_123_reg_1732) + $signed(sum0_3_reg_1685));
assign add_ln48_15_fu_987_p2 = (add_ln48_14_fu_983_p2 + reg_641);
assign add_ln48_16_fu_1177_p2 = (add_ln48_15_reg_1808 + add_ln48_13_fu_1172_p2);
assign add_ln48_17_fu_1411_p2 = (reg_682 + reg_674);
assign add_ln48_19_fu_1182_p2 = (reg_692 + reg_625);
assign add_ln48_1_fu_1152_p2 = (add_ln48_reg_1788 + reg_651);
assign add_ln48_20_fu_993_p2 = ($signed(reg_666) + $signed(reg_646));
assign add_ln48_21_fu_999_p2 = (add_ln48_20_fu_993_p2 + reg_625);
assign add_ln48_22_fu_1188_p2 = (add_ln48_21_reg_1813 + add_ln48_19_fu_1182_p2);
assign add_ln48_23_fu_1438_p2 = (reg_670 + mul_ln48_6_reg_1818);
assign add_ln48_24_fu_1363_p2 = ($signed(sum0_3_reg_1685) + $signed(orig_1_q0));
assign add_ln48_25_fu_1418_p2 = (add_ln48_24_reg_2009 + reg_614);
assign add_ln48_26_fu_1304_p2 = ($signed(reg_651) + $signed(reg_619));
assign add_ln48_27_fu_1310_p2 = (add_ln48_26_fu_1304_p2 + reg_614);
assign add_ln48_28_fu_1423_p2 = (add_ln48_27_reg_1954 + add_ln48_25_fu_1418_p2);
assign add_ln48_29_fu_1456_p2 = (reg_682 + mul_ln48_8_reg_1909_pp0_iter1_reg);
assign add_ln48_2_fu_864_p2 = ($signed(reg_619) + $signed(reg_625));
assign add_ln48_30_fu_1316_p2 = ($signed(reg_646) + $signed(orig_2_q0));
assign add_ln48_31_fu_1368_p1 = reg_619;
assign add_ln48_31_fu_1368_p2 = (add_ln48_30_reg_1959 + add_ln48_31_fu_1368_p1);
assign add_ln48_32_fu_1322_p2 = ($signed(reg_656) + $signed(reg_635));
assign add_ln48_33_fu_1328_p2 = (add_ln48_32_fu_1322_p2 + reg_630);
assign add_ln48_34_fu_1373_p2 = (add_ln48_33_reg_1964 + add_ln48_31_fu_1368_p2);
assign add_ln48_35_fu_1444_p2 = (reg_670 + mul_ln48_10_reg_1969);
assign add_ln48_36_fu_1334_p2 = ($signed(reg_619) + $signed(orig_3_q0));
assign add_ln48_37_fu_1378_p2 = (add_ln48_36_reg_1974 + reg_641);
assign add_ln48_38_fu_1340_p1 = reg_625;
assign add_ln48_38_fu_1340_p2 = ($signed(reg_661) + $signed(add_ln48_38_fu_1340_p1));
assign add_ln48_39_fu_1346_p2 = (add_ln48_38_fu_1340_p2 + reg_641);
assign add_ln48_3_fu_870_p2 = (add_ln48_2_fu_864_p2 + reg_614);
assign add_ln48_40_fu_1383_p2 = (add_ln48_39_reg_1979 + add_ln48_37_fu_1378_p2);
assign add_ln48_41_fu_1450_p2 = (reg_674 + mul_ln48_12_reg_1984);
assign add_ln48_43_fu_1428_p2 = (reg_692 + orig_0_load_126_reg_1989);
assign add_ln48_44_fu_1388_p1 = reg_646;
assign add_ln48_44_fu_1388_p2 = (orig_0_load_129_reg_1999 + add_ln48_44_fu_1388_p1);
assign add_ln48_45_fu_1393_p2 = (add_ln48_44_fu_1388_p2 + reg_666);
assign add_ln48_46_fu_1433_p2 = (add_ln48_45_reg_2024 + add_ln48_43_fu_1428_p2);
assign add_ln48_47_fu_1462_p2 = (reg_682 + reg_678);
assign add_ln48_4_fu_1157_p2 = (add_ln48_3_reg_1712 + add_ln48_1_fu_1152_p2);
assign add_ln48_5_fu_1399_p2 = (mul_ln48_1_reg_2004 + mul_ln48_reg_1884);
assign add_ln48_6_fu_960_p0 = reg_614;
assign add_ln48_6_fu_960_p2 = ($signed(add_ln48_6_fu_960_p0) + $signed(orig_2_q1));
assign add_ln48_7_fu_1162_p2 = (add_ln48_6_reg_1793 + reg_656);
assign add_ln48_8_fu_966_p2 = ($signed(orig_2_load_4_reg_1722) + $signed(reg_635));
assign add_ln48_9_fu_971_p2 = (add_ln48_8_fu_966_p2 + reg_630);
assign add_ln48_fu_954_p2 = (reg_651 + orig_1_q0);
assign add_ln4_fu_747_p4 = {{{i_2}, {tmp2}}, {lshr_ln_fu_704_p4}};
assign add_ln_fu_714_p4 = {{{i_2}, {j_1}}, {lshr_ln_fu_704_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_1123_p3 = k_1_reg_1554[4'd3];
assign grp_fu_686_p2 = ($signed(reg_635) + $signed(orig_0_q0));
assign icmp_ln38_fu_1053_p2 = ((add_ln44_6_reg_1765 == 4'd15) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_768_p4 = {{add_ln44_fu_762_p2[3:2]}};
assign lshr_ln44_1_fu_903_p4 = {{add_ln44_4_fu_898_p2[3:2]}};
assign lshr_ln44_2_fu_931_p4 = {{add_ln44_6_fu_926_p2[3:2]}};
assign lshr_ln44_3_fu_1087_p4 = {{add_ln44_8_fu_1082_p2[3:2]}};
assign lshr_ln_fu_704_p4 = {{ap_sig_allocacmp_k_1[3:2]}};
assign or_ln6_fu_1274_p4 = {{{i_2}, {j_1}}, {2'd2}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign sol_0_address0 = sol_0_address0_local;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = sol_0_d0_local;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = sol_2_address0_local;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = sol_2_d0_local;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = sol_3_address0_local;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = sol_3_d0_local;
assign sol_3_we0 = sol_3_we0_local;
assign trunc_ln44_fu_1136_p1 = k_1_reg_1554[2:0];
assign xor_ln44_fu_1130_p2 = (bit_sel_fu_1123_p3 ^ 1'd1);
assign xor_ln_fu_1139_p3 = {{xor_ln44_fu_1130_p2}, {trunc_ln44_fu_1136_p1}};
assign zext_ln39_1_fu_724_p1 = add_ln_fu_714_p4;
assign zext_ln39_fu_1226_p1 = lshr_ln_reg_1563;
assign zext_ln40_1_fu_882_p1 = add_ln40_1_fu_876_p3;
assign zext_ln40_2_fu_1199_p1 = add_ln40_2_fu_1193_p3;
assign zext_ln40_3_fu_1210_p1 = add_ln40_3_fu_1204_p3;
assign zext_ln40_4_fu_1235_p1 = add_ln40_4_fu_1229_p3;
assign zext_ln40_5_fu_1257_p1 = add_ln40_5_fu_1251_p3;
assign zext_ln40_fu_820_p1 = add_ln1_fu_814_p3;
assign zext_ln41_1_fu_893_p1 = add_ln41_1_fu_887_p3;
assign zext_ln41_2_fu_1299_p1 = add_ln41_2_fu_1293_p3;
assign zext_ln41_3_fu_1221_p1 = add_ln41_3_fu_1215_p3;
assign zext_ln41_4_fu_1246_p1 = add_ln41_4_fu_1240_p3;
assign zext_ln41_5_fu_1358_p1 = add_ln41_5_fu_1352_p3;
assign zext_ln41_fu_857_p1 = add_ln2_fu_851_p3;
assign zext_ln42_1_fu_834_p1 = add_ln42_1_fu_827_p4;
assign zext_ln42_2_fu_1012_p1 = add_ln42_2_fu_1005_p4;
assign zext_ln42_3_fu_1036_p1 = add_ln42_3_fu_1029_p4;
assign zext_ln42_4_fu_1065_p1 = add_ln42_4_fu_1058_p4;
assign zext_ln42_5_fu_1118_p1 = add_ln42_5_fu_1110_p4;
assign zext_ln42_fu_741_p1 = add_ln3_fu_731_p4;
assign zext_ln43_1_fu_846_p1 = add_ln43_1_fu_839_p4;
assign zext_ln43_2_fu_1024_p1 = add_ln43_2_fu_1017_p4;
assign zext_ln43_3_fu_1048_p1 = add_ln43_3_fu_1041_p4;
assign zext_ln43_4_fu_1077_p1 = add_ln43_4_fu_1070_p4;
assign zext_ln43_5_fu_1269_p1 = add_ln43_5_fu_1262_p4;
assign zext_ln43_fu_757_p1 = add_ln4_fu_747_p4;
assign zext_ln44_1_fu_809_p1 = add_ln44_3_fu_799_p4;
assign zext_ln44_2_fu_921_p1 = add_ln44_5_fu_913_p4;
assign zext_ln44_3_fu_949_p1 = add_ln44_7_fu_941_p4;
assign zext_ln44_4_fu_1105_p1 = add_ln44_9_fu_1097_p4;
assign zext_ln44_5_fu_1288_p1 = add_ln44_10_fu_1282_p2;
assign zext_ln44_fu_788_p1 = add_ln44_1_fu_778_p4;
always @ (posedge ap_clk) begin
    zext_ln39_1_reg_1570[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln39_1_reg_1570_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln42_reg_1578[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln43_reg_1583[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1627[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1627_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_1645[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_1645_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_2_reg_1755[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_2_reg_1755_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_3_reg_1778[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_3_reg_1778_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_4_reg_1864[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_4_reg_1864_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 