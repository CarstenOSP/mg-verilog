module forward_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,p_udiv62_cast,mul9_i_cast_cast,empty_94,v3353_address0,v3353_ce0,v3353_we0,v3353_d0,v3353_1_address0,v3353_1_ce0,v3353_1_we0,v3353_1_d0,v3353_2_address0,v3353_2_ce0,v3353_2_we0,v3353_2_d0,v3353_3_address0,v3353_3_ce0,v3353_3_we0,v3353_3_d0,v3353_4_address0,v3353_4_ce0,v3353_4_we0,v3353_4_d0,v3353_5_address0,v3353_5_ce0,v3353_5_we0,v3353_5_d0,v3353_6_address0,v3353_6_ce0,v3353_6_we0,v3353_6_d0,v3353_7_address0,v3353_7_ce0,v3353_7_we0,v3353_7_d0,v3353_8_address0,v3353_8_ce0,v3353_8_we0,v3353_8_d0,v3353_9_address0,v3353_9_ce0,v3353_9_we0,v3353_9_d0,v3353_10_address0,v3353_10_ce0,v3353_10_we0,v3353_10_d0,v3353_11_address0,v3353_11_ce0,v3353_11_we0,v3353_11_d0,v3353_12_address0,v3353_12_ce0,v3353_12_we0,v3353_12_d0,v3353_13_address0,v3353_13_ce0,v3353_13_we0,v3353_13_d0,v3353_14_address0,v3353_14_ce0,v3353_14_we0,v3353_14_d0,v3353_15_address0,v3353_15_ce0,v3353_15_we0,v3353_15_d0,empty_95,empty,v13738_0_0_address0,v13738_0_0_ce0,v13738_0_0_q0,v13738_0_1_address0,v13738_0_1_ce0,v13738_0_1_q0,v13738_1_0_address0,v13738_1_0_ce0,v13738_1_0_q0,v13738_1_1_address0,v13738_1_1_ce0,v13738_1_1_q0,v13738_2_0_address0,v13738_2_0_ce0,v13738_2_0_q0,v13738_2_1_address0,v13738_2_1_ce0,v13738_2_1_q0,v13738_3_0_address0,v13738_3_0_ce0,v13738_3_0_q0,v13738_3_1_address0,v13738_3_1_ce0,v13738_3_1_q0,v13738_4_0_address0,v13738_4_0_ce0,v13738_4_0_q0,v13738_4_1_address0,v13738_4_1_ce0,v13738_4_1_q0,v13738_5_0_address0,v13738_5_0_ce0,v13738_5_0_q0,v13738_5_1_address0,v13738_5_1_ce0,v13738_5_1_q0,v13738_6_0_address0,v13738_6_0_ce0,v13738_6_0_q0,v13738_6_1_address0,v13738_6_1_ce0,v13738_6_1_q0,v13738_7_0_address0,v13738_7_0_ce0,v13738_7_0_q0,v13738_7_1_address0,v13738_7_1_ce0,v13738_7_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [9:0] mul_i;
input  [6:0] p_udiv62_cast;
input  [3:0] mul9_i_cast_cast;
input  [1:0] empty_94;
output  [5:0] v3353_address0;
output   v3353_ce0;
output   v3353_we0;
output  [7:0] v3353_d0;
output  [5:0] v3353_1_address0;
output   v3353_1_ce0;
output   v3353_1_we0;
output  [7:0] v3353_1_d0;
output  [5:0] v3353_2_address0;
output   v3353_2_ce0;
output   v3353_2_we0;
output  [7:0] v3353_2_d0;
output  [5:0] v3353_3_address0;
output   v3353_3_ce0;
output   v3353_3_we0;
output  [7:0] v3353_3_d0;
output  [5:0] v3353_4_address0;
output   v3353_4_ce0;
output   v3353_4_we0;
output  [7:0] v3353_4_d0;
output  [5:0] v3353_5_address0;
output   v3353_5_ce0;
output   v3353_5_we0;
output  [7:0] v3353_5_d0;
output  [5:0] v3353_6_address0;
output   v3353_6_ce0;
output   v3353_6_we0;
output  [7:0] v3353_6_d0;
output  [5:0] v3353_7_address0;
output   v3353_7_ce0;
output   v3353_7_we0;
output  [7:0] v3353_7_d0;
output  [5:0] v3353_8_address0;
output   v3353_8_ce0;
output   v3353_8_we0;
output  [7:0] v3353_8_d0;
output  [5:0] v3353_9_address0;
output   v3353_9_ce0;
output   v3353_9_we0;
output  [7:0] v3353_9_d0;
output  [5:0] v3353_10_address0;
output   v3353_10_ce0;
output   v3353_10_we0;
output  [7:0] v3353_10_d0;
output  [5:0] v3353_11_address0;
output   v3353_11_ce0;
output   v3353_11_we0;
output  [7:0] v3353_11_d0;
output  [5:0] v3353_12_address0;
output   v3353_12_ce0;
output   v3353_12_we0;
output  [7:0] v3353_12_d0;
output  [5:0] v3353_13_address0;
output   v3353_13_ce0;
output   v3353_13_we0;
output  [7:0] v3353_13_d0;
output  [5:0] v3353_14_address0;
output   v3353_14_ce0;
output   v3353_14_we0;
output  [7:0] v3353_14_d0;
output  [5:0] v3353_15_address0;
output   v3353_15_ce0;
output   v3353_15_we0;
output  [7:0] v3353_15_d0;
input  [0:0] empty_95;
input  [1:0] empty;
output  [12:0] v13738_0_0_address0;
output   v13738_0_0_ce0;
input  [7:0] v13738_0_0_q0;
output  [12:0] v13738_0_1_address0;
output   v13738_0_1_ce0;
input  [7:0] v13738_0_1_q0;
output  [12:0] v13738_1_0_address0;
output   v13738_1_0_ce0;
input  [7:0] v13738_1_0_q0;
output  [12:0] v13738_1_1_address0;
output   v13738_1_1_ce0;
input  [7:0] v13738_1_1_q0;
output  [12:0] v13738_2_0_address0;
output   v13738_2_0_ce0;
input  [7:0] v13738_2_0_q0;
output  [12:0] v13738_2_1_address0;
output   v13738_2_1_ce0;
input  [7:0] v13738_2_1_q0;
output  [12:0] v13738_3_0_address0;
output   v13738_3_0_ce0;
input  [7:0] v13738_3_0_q0;
output  [12:0] v13738_3_1_address0;
output   v13738_3_1_ce0;
input  [7:0] v13738_3_1_q0;
output  [12:0] v13738_4_0_address0;
output   v13738_4_0_ce0;
input  [7:0] v13738_4_0_q0;
output  [12:0] v13738_4_1_address0;
output   v13738_4_1_ce0;
input  [7:0] v13738_4_1_q0;
output  [12:0] v13738_5_0_address0;
output   v13738_5_0_ce0;
input  [7:0] v13738_5_0_q0;
output  [12:0] v13738_5_1_address0;
output   v13738_5_1_ce0;
input  [7:0] v13738_5_1_q0;
output  [12:0] v13738_6_0_address0;
output   v13738_6_0_ce0;
input  [7:0] v13738_6_0_q0;
output  [12:0] v13738_6_1_address0;
output   v13738_6_1_ce0;
input  [7:0] v13738_6_1_q0;
output  [12:0] v13738_7_0_address0;
output   v13738_7_0_ce0;
input  [7:0] v13738_7_0_q0;
output  [12:0] v13738_7_1_address0;
output   v13738_7_1_ce0;
input  [7:0] v13738_7_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln3964_fu_1040_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] p_cast4_fu_808_p1;
reg   [2:0] p_cast4_reg_1635;
wire   [1:0] v3261_mid2_fu_906_p3;
reg   [1:0] v3261_mid2_reg_1640;
wire   [2:0] lshr_ln_fu_926_p4;
reg   [2:0] lshr_ln_reg_1646;
wire   [6:0] empty_297_fu_946_p2;
reg   [6:0] empty_297_reg_1652;
reg   [6:0] tmp_319_reg_1658;
reg   [2:0] lshr_ln28_reg_1664;
wire   [4:0] empty_298_fu_982_p2;
reg   [4:0] empty_298_reg_1669;
wire   [0:0] empty_299_fu_988_p1;
reg   [0:0] empty_299_reg_1674;
reg   [0:0] empty_299_reg_1674_pp0_iter1_reg;
reg   [0:0] empty_299_reg_1674_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_1694;
wire   [0:0] icmp_ln3966_fu_1028_p2;
reg   [0:0] icmp_ln3966_reg_1699;
wire   [0:0] icmp_ln3965_fu_1034_p2;
reg   [0:0] icmp_ln3965_reg_1704;
reg   [0:0] icmp_ln3964_reg_1709;
wire   [5:0] add_ln3999_1_fu_1345_p2;
reg   [5:0] add_ln3999_1_reg_1713;
reg   [5:0] add_ln3999_1_reg_1713_pp0_iter2_reg;
wire   [12:0] add_ln3969_1_fu_1380_p2;
reg   [12:0] add_ln3969_1_reg_1718;
wire   [12:0] add_ln3971_1_fu_1386_p2;
reg   [12:0] add_ln3971_1_reg_1723;
wire   [12:0] add_ln3973_1_fu_1392_p2;
reg   [12:0] add_ln3973_1_reg_1728;
wire   [12:0] add_ln3975_1_fu_1398_p2;
reg   [12:0] add_ln3975_1_reg_1733;
reg   [0:0] ap_phi_mux_icmp_ln3965294_phi_fu_791_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln3966293_phi_fu_801_p4;
wire   [63:0] zext_ln3969_3_fu_1404_p1;
wire   [63:0] zext_ln3971_2_fu_1409_p1;
wire   [63:0] zext_ln3973_2_fu_1414_p1;
wire   [63:0] zext_ln3975_1_fu_1431_p1;
wire   [63:0] zext_ln3999_4_fu_1448_p1;
reg   [5:0] indvar_flatten12288_fu_188;
wire   [5:0] add_ln3964_1_fu_1022_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten12288_load;
reg   [5:0] v3259289_fu_192;
wire   [5:0] v3259_fu_886_p3;
reg   [5:0] ap_sig_allocacmp_v3259289_load;
reg   [4:0] indvar_flatten290_fu_196;
wire   [4:0] select_ln3965_1_fu_1014_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten290_load;
reg   [3:0] v3260291_fu_200;
wire   [3:0] v3260_fu_914_p3;
reg   [3:0] ap_sig_allocacmp_v3260291_load;
reg   [1:0] v3261292_fu_204;
wire   [1:0] v3261_fu_1002_p2;
reg   [1:0] ap_sig_allocacmp_v3261292_load;
reg    v13738_0_0_ce0_local;
reg   [12:0] v13738_0_0_address0_local;
reg    v13738_0_1_ce0_local;
reg   [12:0] v13738_0_1_address0_local;
reg    v13738_1_0_ce0_local;
reg   [12:0] v13738_1_0_address0_local;
reg    v13738_1_1_ce0_local;
reg   [12:0] v13738_1_1_address0_local;
reg    v13738_2_0_ce0_local;
reg   [12:0] v13738_2_0_address0_local;
reg    v13738_2_1_ce0_local;
reg   [12:0] v13738_2_1_address0_local;
reg    v13738_3_0_ce0_local;
reg   [12:0] v13738_3_0_address0_local;
reg    v13738_3_1_ce0_local;
reg   [12:0] v13738_3_1_address0_local;
reg    v13738_4_0_ce0_local;
reg   [12:0] v13738_4_0_address0_local;
reg    v13738_4_1_ce0_local;
reg   [12:0] v13738_4_1_address0_local;
reg    v13738_5_0_ce0_local;
reg   [12:0] v13738_5_0_address0_local;
reg    v13738_5_1_ce0_local;
reg   [12:0] v13738_5_1_address0_local;
reg    v13738_6_0_ce0_local;
reg   [12:0] v13738_6_0_address0_local;
reg    v13738_6_1_ce0_local;
reg   [12:0] v13738_6_1_address0_local;
reg    v13738_7_0_ce0_local;
reg   [12:0] v13738_7_0_address0_local;
reg    v13738_7_1_ce0_local;
reg   [12:0] v13738_7_1_address0_local;
reg    v3353_15_we0_local;
wire   [7:0] select_ln3969_fu_1467_p3;
reg    v3353_15_ce0_local;
reg    v3353_14_we0_local;
wire   [7:0] select_ln3971_fu_1475_p3;
reg    v3353_14_ce0_local;
reg    v3353_13_we0_local;
wire   [7:0] select_ln3973_fu_1483_p3;
reg    v3353_13_ce0_local;
reg    v3353_12_we0_local;
wire   [7:0] select_ln3975_fu_1491_p3;
reg    v3353_12_ce0_local;
reg    v3353_11_we0_local;
wire   [7:0] select_ln3977_fu_1499_p3;
reg    v3353_11_ce0_local;
reg    v3353_10_we0_local;
wire   [7:0] select_ln3979_fu_1507_p3;
reg    v3353_10_ce0_local;
reg    v3353_9_we0_local;
wire   [7:0] select_ln3981_fu_1515_p3;
reg    v3353_9_ce0_local;
reg    v3353_8_we0_local;
wire   [7:0] select_ln3983_fu_1523_p3;
reg    v3353_8_ce0_local;
reg    v3353_7_we0_local;
wire   [7:0] select_ln3985_fu_1531_p3;
reg    v3353_7_ce0_local;
reg    v3353_6_we0_local;
wire   [7:0] select_ln3987_fu_1539_p3;
reg    v3353_6_ce0_local;
reg    v3353_5_we0_local;
wire   [7:0] select_ln3989_fu_1547_p3;
reg    v3353_5_ce0_local;
reg    v3353_4_we0_local;
wire   [7:0] select_ln3991_fu_1555_p3;
reg    v3353_4_ce0_local;
reg    v3353_3_we0_local;
wire   [7:0] select_ln3993_fu_1563_p3;
reg    v3353_3_ce0_local;
reg    v3353_2_we0_local;
wire   [7:0] select_ln3995_fu_1571_p3;
reg    v3353_2_ce0_local;
reg    v3353_1_we0_local;
wire   [7:0] select_ln3997_fu_1579_p3;
reg    v3353_1_ce0_local;
reg    v3353_we0_local;
wire   [7:0] select_ln3999_fu_1587_p3;
reg    v3353_ce0_local;
wire   [0:0] xor_ln3964_fu_874_p2;
wire   [5:0] add_ln3964_fu_860_p2;
wire   [3:0] select_ln3964_fu_866_p3;
wire   [0:0] and_ln3964_fu_880_p2;
wire   [0:0] empty_295_fu_900_p2;
wire   [3:0] add_ln3965_fu_894_p2;
wire   [9:0] zext_ln3964_fu_922_p1;
wire   [6:0] zext_ln3964_1_fu_936_p1;
wire   [9:0] empty_296_fu_940_p2;
wire   [4:0] mul9_i_cast_cast_cast_fu_816_p1;
wire   [4:0] zext_ln3965_1_fu_962_p1;
wire   [4:0] tmp_fu_976_p2;
wire   [4:0] p_cast3_fu_812_p1;
wire   [4:0] add_ln3965_1_fu_1008_p2;
wire   [4:0] tmp_316_fu_1074_p3;
wire   [5:0] zext_ln3999_1_fu_1081_p1;
wire   [5:0] zext_ln3999_fu_1071_p1;
wire   [9:0] tmp_317_fu_1091_p3;
wire   [7:0] tmp_318_fu_1102_p3;
wire   [10:0] zext_ln3969_fu_1098_p1;
wire   [10:0] zext_ln3969_1_fu_1109_p1;
wire   [10:0] add_ln3969_2_fu_1113_p2;
wire   [9:0] tmp_320_fu_1123_p3;
wire   [7:0] tmp_321_fu_1134_p3;
wire   [10:0] zext_ln3973_fu_1130_p1;
wire   [10:0] zext_ln3973_1_fu_1141_p1;
wire   [10:0] add_ln3973_2_fu_1145_p2;
wire   [5:0] add_ln3999_2_fu_1085_p2;
wire   [5:0] zext_ln3999_2_fu_1155_p1;
wire   [5:0] add_ln3999_fu_1158_p2;
wire   [5:0] shl_ln3999_fu_1164_p2;
wire   [10:0] zext_ln3971_fu_1176_p1;
wire   [10:0] add_ln3971_fu_1179_p2;
wire   [9:0] trunc_ln3971_fu_1185_p1;
wire   [11:0] tmp_322_fu_1189_p3;
wire   [12:0] tmp_323_fu_1197_p3;
wire   [12:0] zext_ln3971_1_fu_1205_p1;
wire   [10:0] add_ln3975_fu_1215_p2;
wire   [9:0] trunc_ln3975_fu_1221_p1;
wire   [11:0] tmp_324_fu_1225_p3;
wire   [12:0] tmp_325_fu_1233_p3;
wire   [12:0] zext_ln3975_fu_1241_p1;
wire   [5:0] p_cast9_i_fu_1251_p1;
wire   [5:0] empty_300_fu_1254_p2;
wire   [4:0] p_cast_fu_1260_p4;
wire  signed [10:0] sext_ln3969_fu_1270_p1;
wire   [11:0] mul_ln3969_cast_fu_1119_p1;
wire   [11:0] zext_ln3969_2_fu_1274_p1;
wire   [11:0] add_ln3969_fu_1278_p2;
wire   [9:0] trunc_ln3969_fu_1284_p1;
wire   [12:0] tmp_327_fu_1296_p3;
wire   [12:0] tmp_326_fu_1288_p3;
wire   [11:0] zext_ln3965_fu_1151_p1;
wire   [11:0] add_ln3973_fu_1310_p2;
wire   [9:0] trunc_ln3973_fu_1316_p1;
wire   [12:0] tmp_329_fu_1328_p3;
wire   [12:0] tmp_328_fu_1320_p3;
wire   [5:0] sub_ln3999_fu_1170_p2;
wire   [5:0] zext_ln3999_3_fu_1342_p1;
wire   [2:0] zext_ln3966_fu_1351_p1;
wire   [2:0] add_ln3968_fu_1361_p2;
wire   [3:0] zext_ln3968_fu_1366_p1;
wire   [3:0] select_ln3968_fu_1354_p3;
wire   [3:0] add_ln3968_1_fu_1370_p2;
wire   [12:0] sub_ln3973_fu_1304_p2;
wire  signed [12:0] sext_ln3969_1_fu_1376_p1;
wire   [12:0] sub_ln3975_fu_1209_p2;
wire   [12:0] sub_ln3966_fu_1336_p2;
wire   [12:0] sub_ln3975_1_fu_1245_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1050;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten12288_fu_188 = 6'd0;
#0 v3259289_fu_192 = 6'd0;
#0 indvar_flatten290_fu_196 = 5'd0;
#0 v3260291_fu_200 = 4'd0;
#0 v3261292_fu_204 = 2'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12288_fu_188 <= add_ln3964_1_fu_1022_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12288_fu_188 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten290_fu_196 <= select_ln3965_1_fu_1014_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten290_fu_196 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v3259289_fu_192 <= v3259_fu_886_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v3259289_fu_192 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v3260291_fu_200 <= v3260_fu_914_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v3260291_fu_200 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v3261292_fu_204 <= v3261_fu_1002_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v3261292_fu_204 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln3969_1_reg_1718 <= add_ln3969_1_fu_1380_p2;
        add_ln3971_1_reg_1723 <= add_ln3971_1_fu_1386_p2;
        add_ln3973_1_reg_1728 <= add_ln3973_1_fu_1392_p2;
        add_ln3975_1_reg_1733 <= add_ln3975_1_fu_1398_p2;
        add_ln3999_1_reg_1713 <= add_ln3999_1_fu_1345_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_297_reg_1652 <= empty_297_fu_946_p2;
        empty_298_reg_1669 <= empty_298_fu_982_p2;
        empty_299_reg_1674 <= empty_299_fu_988_p1;
        empty_299_reg_1674_pp0_iter1_reg <= empty_299_reg_1674;
        icmp_ln3964_reg_1709 <= icmp_ln3964_fu_1040_p2;
        lshr_ln28_reg_1664 <= {{v3260_fu_914_p3[3:1]}};
        lshr_ln_reg_1646 <= {{v3259_fu_886_p3[5:3]}};
        p_cast4_reg_1635[1 : 0] <= p_cast4_fu_808_p1[1 : 0];
        tmp_319_reg_1658 <= {{empty_296_fu_940_p2[9:3]}};
        tmp_s_reg_1694 <= {{empty_298_fu_982_p2[4:1]}};
        v3261_mid2_reg_1640 <= v3261_mid2_fu_906_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln3999_1_reg_1713_pp0_iter2_reg <= add_ln3999_1_reg_1713;
        empty_299_reg_1674_pp0_iter2_reg <= empty_299_reg_1674_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln3965_reg_1704 <= icmp_ln3965_fu_1034_p2;
        icmp_ln3966_reg_1699 <= icmp_ln3966_fu_1028_p2;
    end
end
always @ (*) begin
    if (((icmp_ln3964_fu_1040_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1050)) begin
            ap_phi_mux_icmp_ln3965294_phi_fu_791_p4 = icmp_ln3965_reg_1704;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3965294_phi_fu_791_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3965294_phi_fu_791_p4 = icmp_ln3965_reg_1704;
        end
    end else begin
        ap_phi_mux_icmp_ln3965294_phi_fu_791_p4 = icmp_ln3965_reg_1704;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1050)) begin
            ap_phi_mux_icmp_ln3966293_phi_fu_801_p4 = icmp_ln3966_reg_1699;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3966293_phi_fu_801_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3966293_phi_fu_801_p4 = icmp_ln3966_reg_1699;
        end
    end else begin
        ap_phi_mux_icmp_ln3966293_phi_fu_801_p4 = icmp_ln3966_reg_1699;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12288_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12288_load = indvar_flatten12288_fu_188;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten290_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten290_load = indvar_flatten290_fu_196;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v3259289_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v3259289_load = v3259289_fu_192;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v3260291_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v3260291_load = v3260291_fu_200;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v3261292_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v3261292_load = v3261292_fu_204;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_0_0_address0_local = zext_ln3971_2_fu_1409_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_0_0_address0_local = zext_ln3969_3_fu_1404_p1;
        end else begin
            v13738_0_0_address0_local = 'bx;
        end
    end else begin
        v13738_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_0_0_ce0_local = 1'b1;
    end else begin
        v13738_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_0_1_address0_local = zext_ln3971_2_fu_1409_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_0_1_address0_local = zext_ln3969_3_fu_1404_p1;
        end else begin
            v13738_0_1_address0_local = 'bx;
        end
    end else begin
        v13738_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_0_1_ce0_local = 1'b1;
    end else begin
        v13738_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_1_0_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_1_0_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_1_0_address0_local = 'bx;
        end
    end else begin
        v13738_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_1_0_ce0_local = 1'b1;
    end else begin
        v13738_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_1_1_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_1_1_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_1_1_address0_local = 'bx;
        end
    end else begin
        v13738_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_1_1_ce0_local = 1'b1;
    end else begin
        v13738_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_2_0_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_2_0_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_2_0_address0_local = 'bx;
        end
    end else begin
        v13738_2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_2_0_ce0_local = 1'b1;
    end else begin
        v13738_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_2_1_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_2_1_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_2_1_address0_local = 'bx;
        end
    end else begin
        v13738_2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_2_1_ce0_local = 1'b1;
    end else begin
        v13738_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_3_0_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_3_0_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_3_0_address0_local = 'bx;
        end
    end else begin
        v13738_3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_3_0_ce0_local = 1'b1;
    end else begin
        v13738_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_3_1_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_3_1_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_3_1_address0_local = 'bx;
        end
    end else begin
        v13738_3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_3_1_ce0_local = 1'b1;
    end else begin
        v13738_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_4_0_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_4_0_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_4_0_address0_local = 'bx;
        end
    end else begin
        v13738_4_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_4_0_ce0_local = 1'b1;
    end else begin
        v13738_4_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_4_1_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_4_1_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_4_1_address0_local = 'bx;
        end
    end else begin
        v13738_4_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_4_1_ce0_local = 1'b1;
    end else begin
        v13738_4_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_5_0_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_5_0_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_5_0_address0_local = 'bx;
        end
    end else begin
        v13738_5_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_5_0_ce0_local = 1'b1;
    end else begin
        v13738_5_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_5_1_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_5_1_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_5_1_address0_local = 'bx;
        end
    end else begin
        v13738_5_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_5_1_ce0_local = 1'b1;
    end else begin
        v13738_5_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_6_0_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_6_0_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_6_0_address0_local = 'bx;
        end
    end else begin
        v13738_6_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_6_0_ce0_local = 1'b1;
    end else begin
        v13738_6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_6_1_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_6_1_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_6_1_address0_local = 'bx;
        end
    end else begin
        v13738_6_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_6_1_ce0_local = 1'b1;
    end else begin
        v13738_6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_7_0_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_7_0_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_7_0_address0_local = 'bx;
        end
    end else begin
        v13738_7_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_7_0_ce0_local = 1'b1;
    end else begin
        v13738_7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_299_reg_1674_pp0_iter1_reg == 1'd1)) begin
            v13738_7_1_address0_local = zext_ln3975_1_fu_1431_p1;
        end else if ((empty_299_reg_1674_pp0_iter1_reg == 1'd0)) begin
            v13738_7_1_address0_local = zext_ln3973_2_fu_1414_p1;
        end else begin
            v13738_7_1_address0_local = 'bx;
        end
    end else begin
        v13738_7_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (empty_299_reg_1674_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        v13738_7_1_ce0_local = 1'b1;
    end else begin
        v13738_7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_10_ce0_local = 1'b1;
    end else begin
        v3353_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_10_we0_local = 1'b1;
    end else begin
        v3353_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_11_ce0_local = 1'b1;
    end else begin
        v3353_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_11_we0_local = 1'b1;
    end else begin
        v3353_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_12_ce0_local = 1'b1;
    end else begin
        v3353_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_12_we0_local = 1'b1;
    end else begin
        v3353_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_13_ce0_local = 1'b1;
    end else begin
        v3353_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_13_we0_local = 1'b1;
    end else begin
        v3353_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_14_ce0_local = 1'b1;
    end else begin
        v3353_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_14_we0_local = 1'b1;
    end else begin
        v3353_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_15_ce0_local = 1'b1;
    end else begin
        v3353_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_15_we0_local = 1'b1;
    end else begin
        v3353_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_1_ce0_local = 1'b1;
    end else begin
        v3353_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_1_we0_local = 1'b1;
    end else begin
        v3353_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_2_ce0_local = 1'b1;
    end else begin
        v3353_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_2_we0_local = 1'b1;
    end else begin
        v3353_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_3_ce0_local = 1'b1;
    end else begin
        v3353_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_3_we0_local = 1'b1;
    end else begin
        v3353_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_4_ce0_local = 1'b1;
    end else begin
        v3353_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_4_we0_local = 1'b1;
    end else begin
        v3353_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_5_ce0_local = 1'b1;
    end else begin
        v3353_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_5_we0_local = 1'b1;
    end else begin
        v3353_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_6_ce0_local = 1'b1;
    end else begin
        v3353_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_6_we0_local = 1'b1;
    end else begin
        v3353_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_7_ce0_local = 1'b1;
    end else begin
        v3353_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_7_we0_local = 1'b1;
    end else begin
        v3353_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_8_ce0_local = 1'b1;
    end else begin
        v3353_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_8_we0_local = 1'b1;
    end else begin
        v3353_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_9_ce0_local = 1'b1;
    end else begin
        v3353_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_9_we0_local = 1'b1;
    end else begin
        v3353_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_ce0_local = 1'b1;
    end else begin
        v3353_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3353_we0_local = 1'b1;
    end else begin
        v3353_we0_local = 1'b0;
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
assign add_ln3964_1_fu_1022_p2 = (ap_sig_allocacmp_indvar_flatten12288_load + 6'd1);
assign add_ln3964_fu_860_p2 = (ap_sig_allocacmp_v3259289_load + 6'd8);
assign add_ln3965_1_fu_1008_p2 = (ap_sig_allocacmp_indvar_flatten290_load + 5'd1);
assign add_ln3965_fu_894_p2 = (select_ln3964_fu_866_p3 + 4'd2);
assign add_ln3968_1_fu_1370_p2 = (zext_ln3968_fu_1366_p1 + select_ln3968_fu_1354_p3);
assign add_ln3968_fu_1361_p2 = (p_cast4_reg_1635 + zext_ln3966_fu_1351_p1);
assign add_ln3969_1_fu_1380_p2 = ($signed(sub_ln3973_fu_1304_p2) + $signed(sext_ln3969_1_fu_1376_p1));
assign add_ln3969_2_fu_1113_p2 = (zext_ln3969_fu_1098_p1 + zext_ln3969_1_fu_1109_p1);
assign add_ln3969_fu_1278_p2 = (mul_ln3969_cast_fu_1119_p1 + zext_ln3969_2_fu_1274_p1);
assign add_ln3971_1_fu_1386_p2 = ($signed(sub_ln3975_fu_1209_p2) + $signed(sext_ln3969_1_fu_1376_p1));
assign add_ln3971_fu_1179_p2 = (add_ln3969_2_fu_1113_p2 + zext_ln3971_fu_1176_p1);
assign add_ln3973_1_fu_1392_p2 = ($signed(sub_ln3966_fu_1336_p2) + $signed(sext_ln3969_1_fu_1376_p1));
assign add_ln3973_2_fu_1145_p2 = (zext_ln3973_fu_1130_p1 + zext_ln3973_1_fu_1141_p1);
assign add_ln3973_fu_1310_p2 = (zext_ln3965_fu_1151_p1 + zext_ln3969_2_fu_1274_p1);
assign add_ln3975_1_fu_1398_p2 = ($signed(sub_ln3975_1_fu_1245_p2) + $signed(sext_ln3969_1_fu_1376_p1));
assign add_ln3975_fu_1215_p2 = (add_ln3973_2_fu_1145_p2 + zext_ln3971_fu_1176_p1);
assign add_ln3999_1_fu_1345_p2 = (sub_ln3999_fu_1170_p2 + zext_ln3999_3_fu_1342_p1);
assign add_ln3999_2_fu_1085_p2 = (zext_ln3999_1_fu_1081_p1 + zext_ln3999_fu_1071_p1);
assign add_ln3999_fu_1158_p2 = (add_ln3999_2_fu_1085_p2 + zext_ln3999_2_fu_1155_p1);
assign and_ln3964_fu_880_p2 = (xor_ln3964_fu_874_p2 & ap_phi_mux_icmp_ln3966293_phi_fu_801_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1050 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln3964_reg_1709 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_295_fu_900_p2 = (ap_phi_mux_icmp_ln3965294_phi_fu_791_p4 | and_ln3964_fu_880_p2);
assign empty_296_fu_940_p2 = (mul_i + zext_ln3964_fu_922_p1);
assign empty_297_fu_946_p2 = (p_udiv62_cast + zext_ln3964_1_fu_936_p1);
assign empty_298_fu_982_p2 = (tmp_fu_976_p2 + p_cast3_fu_812_p1);
assign empty_299_fu_988_p1 = empty_298_fu_982_p2[0:0];
assign empty_300_fu_1254_p2 = ($signed(p_cast9_i_fu_1251_p1) + $signed(6'd63));
assign icmp_ln3964_fu_1040_p2 = ((ap_sig_allocacmp_indvar_flatten12288_load == 6'd59) ? 1'b1 : 1'b0);
assign icmp_ln3965_fu_1034_p2 = ((select_ln3965_1_fu_1014_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln3966_fu_1028_p2 = ((v3261_fu_1002_p2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln_fu_926_p4 = {{v3259_fu_886_p3[5:3]}};
assign mul9_i_cast_cast_cast_fu_816_p1 = mul9_i_cast_cast;
assign mul_ln3969_cast_fu_1119_p1 = add_ln3969_2_fu_1113_p2;
assign p_cast3_fu_812_p1 = empty_94;
assign p_cast4_fu_808_p1 = empty;
assign p_cast9_i_fu_1251_p1 = empty_298_reg_1669;
assign p_cast_fu_1260_p4 = {{empty_300_fu_1254_p2[5:1]}};
assign select_ln3964_fu_866_p3 = ((ap_phi_mux_icmp_ln3965294_phi_fu_791_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v3260291_load);
assign select_ln3965_1_fu_1014_p3 = ((ap_phi_mux_icmp_ln3965294_phi_fu_791_p4[0:0] == 1'b1) ? 5'd1 : add_ln3965_1_fu_1008_p2);
assign select_ln3968_fu_1354_p3 = ((empty_95[0:0] == 1'b1) ? 4'd2 : 4'd15);
assign select_ln3969_fu_1467_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_0_0_q0 : v13738_0_1_q0);
assign select_ln3971_fu_1475_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_0_1_q0 : v13738_0_0_q0);
assign select_ln3973_fu_1483_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_1_0_q0 : v13738_1_1_q0);
assign select_ln3975_fu_1491_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_1_1_q0 : v13738_1_0_q0);
assign select_ln3977_fu_1499_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_2_0_q0 : v13738_2_1_q0);
assign select_ln3979_fu_1507_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_2_1_q0 : v13738_2_0_q0);
assign select_ln3981_fu_1515_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_3_0_q0 : v13738_3_1_q0);
assign select_ln3983_fu_1523_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_3_1_q0 : v13738_3_0_q0);
assign select_ln3985_fu_1531_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_4_0_q0 : v13738_4_1_q0);
assign select_ln3987_fu_1539_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_4_1_q0 : v13738_4_0_q0);
assign select_ln3989_fu_1547_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_5_0_q0 : v13738_5_1_q0);
assign select_ln3991_fu_1555_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_5_1_q0 : v13738_5_0_q0);
assign select_ln3993_fu_1563_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_6_0_q0 : v13738_6_1_q0);
assign select_ln3995_fu_1571_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_6_1_q0 : v13738_6_0_q0);
assign select_ln3997_fu_1579_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_7_0_q0 : v13738_7_1_q0);
assign select_ln3999_fu_1587_p3 = ((empty_299_reg_1674_pp0_iter2_reg[0:0] == 1'b1) ? v13738_7_1_q0 : v13738_7_0_q0);
assign sext_ln3969_1_fu_1376_p1 = $signed(add_ln3968_1_fu_1370_p2);
assign sext_ln3969_fu_1270_p1 = $signed(p_cast_fu_1260_p4);
assign shl_ln3999_fu_1164_p2 = add_ln3999_fu_1158_p2 << 6'd2;
assign sub_ln3966_fu_1336_p2 = (tmp_329_fu_1328_p3 - tmp_328_fu_1320_p3);
assign sub_ln3973_fu_1304_p2 = (tmp_327_fu_1296_p3 - tmp_326_fu_1288_p3);
assign sub_ln3975_1_fu_1245_p2 = (tmp_325_fu_1233_p3 - zext_ln3975_fu_1241_p1);
assign sub_ln3975_fu_1209_p2 = (tmp_323_fu_1197_p3 - zext_ln3971_1_fu_1205_p1);
assign sub_ln3999_fu_1170_p2 = (shl_ln3999_fu_1164_p2 - add_ln3999_fu_1158_p2);
assign tmp_316_fu_1074_p3 = {{lshr_ln_reg_1646}, {2'd0}};
assign tmp_317_fu_1091_p3 = {{empty_297_reg_1652}, {3'd0}};
assign tmp_318_fu_1102_p3 = {{empty_297_reg_1652}, {1'd0}};
assign tmp_320_fu_1123_p3 = {{tmp_319_reg_1658}, {3'd0}};
assign tmp_321_fu_1134_p3 = {{tmp_319_reg_1658}, {1'd0}};
assign tmp_322_fu_1189_p3 = {{add_ln3971_fu_1179_p2}, {1'd0}};
assign tmp_323_fu_1197_p3 = {{trunc_ln3971_fu_1185_p1}, {3'd0}};
assign tmp_324_fu_1225_p3 = {{add_ln3975_fu_1215_p2}, {1'd0}};
assign tmp_325_fu_1233_p3 = {{trunc_ln3975_fu_1221_p1}, {3'd0}};
assign tmp_326_fu_1288_p3 = {{add_ln3969_fu_1278_p2}, {1'd0}};
assign tmp_327_fu_1296_p3 = {{trunc_ln3969_fu_1284_p1}, {3'd0}};
assign tmp_328_fu_1320_p3 = {{add_ln3973_fu_1310_p2}, {1'd0}};
assign tmp_329_fu_1328_p3 = {{trunc_ln3973_fu_1316_p1}, {3'd0}};
assign tmp_fu_976_p2 = (mul9_i_cast_cast_cast_fu_816_p1 + zext_ln3965_1_fu_962_p1);
assign trunc_ln3969_fu_1284_p1 = add_ln3969_fu_1278_p2[9:0];
assign trunc_ln3971_fu_1185_p1 = add_ln3971_fu_1179_p2[9:0];
assign trunc_ln3973_fu_1316_p1 = add_ln3973_fu_1310_p2[9:0];
assign trunc_ln3975_fu_1221_p1 = add_ln3975_fu_1215_p2[9:0];
assign v13738_0_0_address0 = v13738_0_0_address0_local;
assign v13738_0_0_ce0 = v13738_0_0_ce0_local;
assign v13738_0_1_address0 = v13738_0_1_address0_local;
assign v13738_0_1_ce0 = v13738_0_1_ce0_local;
assign v13738_1_0_address0 = v13738_1_0_address0_local;
assign v13738_1_0_ce0 = v13738_1_0_ce0_local;
assign v13738_1_1_address0 = v13738_1_1_address0_local;
assign v13738_1_1_ce0 = v13738_1_1_ce0_local;
assign v13738_2_0_address0 = v13738_2_0_address0_local;
assign v13738_2_0_ce0 = v13738_2_0_ce0_local;
assign v13738_2_1_address0 = v13738_2_1_address0_local;
assign v13738_2_1_ce0 = v13738_2_1_ce0_local;
assign v13738_3_0_address0 = v13738_3_0_address0_local;
assign v13738_3_0_ce0 = v13738_3_0_ce0_local;
assign v13738_3_1_address0 = v13738_3_1_address0_local;
assign v13738_3_1_ce0 = v13738_3_1_ce0_local;
assign v13738_4_0_address0 = v13738_4_0_address0_local;
assign v13738_4_0_ce0 = v13738_4_0_ce0_local;
assign v13738_4_1_address0 = v13738_4_1_address0_local;
assign v13738_4_1_ce0 = v13738_4_1_ce0_local;
assign v13738_5_0_address0 = v13738_5_0_address0_local;
assign v13738_5_0_ce0 = v13738_5_0_ce0_local;
assign v13738_5_1_address0 = v13738_5_1_address0_local;
assign v13738_5_1_ce0 = v13738_5_1_ce0_local;
assign v13738_6_0_address0 = v13738_6_0_address0_local;
assign v13738_6_0_ce0 = v13738_6_0_ce0_local;
assign v13738_6_1_address0 = v13738_6_1_address0_local;
assign v13738_6_1_ce0 = v13738_6_1_ce0_local;
assign v13738_7_0_address0 = v13738_7_0_address0_local;
assign v13738_7_0_ce0 = v13738_7_0_ce0_local;
assign v13738_7_1_address0 = v13738_7_1_address0_local;
assign v13738_7_1_ce0 = v13738_7_1_ce0_local;
assign v3259_fu_886_p3 = ((ap_phi_mux_icmp_ln3965294_phi_fu_791_p4[0:0] == 1'b1) ? add_ln3964_fu_860_p2 : ap_sig_allocacmp_v3259289_load);
assign v3260_fu_914_p3 = ((and_ln3964_fu_880_p2[0:0] == 1'b1) ? add_ln3965_fu_894_p2 : select_ln3964_fu_866_p3);
assign v3261_fu_1002_p2 = (v3261_mid2_fu_906_p3 + 2'd1);
assign v3261_mid2_fu_906_p3 = ((empty_295_fu_900_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v3261292_load);
assign v3353_10_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_10_ce0 = v3353_10_ce0_local;
assign v3353_10_d0 = select_ln3979_fu_1507_p3;
assign v3353_10_we0 = v3353_10_we0_local;
assign v3353_11_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_11_ce0 = v3353_11_ce0_local;
assign v3353_11_d0 = select_ln3977_fu_1499_p3;
assign v3353_11_we0 = v3353_11_we0_local;
assign v3353_12_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_12_ce0 = v3353_12_ce0_local;
assign v3353_12_d0 = select_ln3975_fu_1491_p3;
assign v3353_12_we0 = v3353_12_we0_local;
assign v3353_13_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_13_ce0 = v3353_13_ce0_local;
assign v3353_13_d0 = select_ln3973_fu_1483_p3;
assign v3353_13_we0 = v3353_13_we0_local;
assign v3353_14_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_14_ce0 = v3353_14_ce0_local;
assign v3353_14_d0 = select_ln3971_fu_1475_p3;
assign v3353_14_we0 = v3353_14_we0_local;
assign v3353_15_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_15_ce0 = v3353_15_ce0_local;
assign v3353_15_d0 = select_ln3969_fu_1467_p3;
assign v3353_15_we0 = v3353_15_we0_local;
assign v3353_1_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_1_ce0 = v3353_1_ce0_local;
assign v3353_1_d0 = select_ln3997_fu_1579_p3;
assign v3353_1_we0 = v3353_1_we0_local;
assign v3353_2_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_2_ce0 = v3353_2_ce0_local;
assign v3353_2_d0 = select_ln3995_fu_1571_p3;
assign v3353_2_we0 = v3353_2_we0_local;
assign v3353_3_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_3_ce0 = v3353_3_ce0_local;
assign v3353_3_d0 = select_ln3993_fu_1563_p3;
assign v3353_3_we0 = v3353_3_we0_local;
assign v3353_4_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_4_ce0 = v3353_4_ce0_local;
assign v3353_4_d0 = select_ln3991_fu_1555_p3;
assign v3353_4_we0 = v3353_4_we0_local;
assign v3353_5_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_5_ce0 = v3353_5_ce0_local;
assign v3353_5_d0 = select_ln3989_fu_1547_p3;
assign v3353_5_we0 = v3353_5_we0_local;
assign v3353_6_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_6_ce0 = v3353_6_ce0_local;
assign v3353_6_d0 = select_ln3987_fu_1539_p3;
assign v3353_6_we0 = v3353_6_we0_local;
assign v3353_7_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_7_ce0 = v3353_7_ce0_local;
assign v3353_7_d0 = select_ln3985_fu_1531_p3;
assign v3353_7_we0 = v3353_7_we0_local;
assign v3353_8_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_8_ce0 = v3353_8_ce0_local;
assign v3353_8_d0 = select_ln3983_fu_1523_p3;
assign v3353_8_we0 = v3353_8_we0_local;
assign v3353_9_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_9_ce0 = v3353_9_ce0_local;
assign v3353_9_d0 = select_ln3981_fu_1515_p3;
assign v3353_9_we0 = v3353_9_we0_local;
assign v3353_address0 = zext_ln3999_4_fu_1448_p1;
assign v3353_ce0 = v3353_ce0_local;
assign v3353_d0 = select_ln3999_fu_1587_p3;
assign v3353_we0 = v3353_we0_local;
assign xor_ln3964_fu_874_p2 = (ap_phi_mux_icmp_ln3965294_phi_fu_791_p4 ^ 1'd1);
assign zext_ln3964_1_fu_936_p1 = lshr_ln_fu_926_p4;
assign zext_ln3964_fu_922_p1 = v3259_fu_886_p3;
assign zext_ln3965_1_fu_962_p1 = v3260_fu_914_p3;
assign zext_ln3965_fu_1151_p1 = add_ln3973_2_fu_1145_p2;
assign zext_ln3966_fu_1351_p1 = v3261_mid2_reg_1640;
assign zext_ln3968_fu_1366_p1 = add_ln3968_fu_1361_p2;
assign zext_ln3969_1_fu_1109_p1 = tmp_318_fu_1102_p3;
assign zext_ln3969_2_fu_1274_p1 = $unsigned(sext_ln3969_fu_1270_p1);
assign zext_ln3969_3_fu_1404_p1 = add_ln3969_1_reg_1718;
assign zext_ln3969_fu_1098_p1 = tmp_317_fu_1091_p3;
assign zext_ln3971_1_fu_1205_p1 = tmp_322_fu_1189_p3;
assign zext_ln3971_2_fu_1409_p1 = add_ln3971_1_reg_1723;
assign zext_ln3971_fu_1176_p1 = tmp_s_reg_1694;
assign zext_ln3973_1_fu_1141_p1 = tmp_321_fu_1134_p3;
assign zext_ln3973_2_fu_1414_p1 = add_ln3973_1_reg_1728;
assign zext_ln3973_fu_1130_p1 = tmp_320_fu_1123_p3;
assign zext_ln3975_1_fu_1431_p1 = add_ln3975_1_reg_1733;
assign zext_ln3975_fu_1241_p1 = tmp_324_fu_1225_p3;
assign zext_ln3999_1_fu_1081_p1 = tmp_316_fu_1074_p3;
assign zext_ln3999_2_fu_1155_p1 = lshr_ln28_reg_1664;
assign zext_ln3999_3_fu_1342_p1 = v3261_mid2_reg_1640;
assign zext_ln3999_4_fu_1448_p1 = add_ln3999_1_reg_1713_pp0_iter2_reg;
assign zext_ln3999_fu_1071_p1 = lshr_ln_reg_1646;
always @ (posedge ap_clk) begin
    p_cast4_reg_1635[2] <= 1'b0;
end
endmodule 