
module forward_dataflow_in_loop_VITIS_LOOP_18872_1_Loop_VITIS_LOOP_18314_1_proc18564 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15440_1_1_3_address0,v15440_1_1_3_ce0,v15440_1_1_3_we0,v15440_1_1_3_d0,v15440_1_1_2_address0,v15440_1_1_2_ce0,v15440_1_1_2_we0,v15440_1_1_2_d0,v15440_1_1_1_address0,v15440_1_1_1_ce0,v15440_1_1_1_we0,v15440_1_1_1_d0,v15440_1_1_0_address0,v15440_1_1_0_ce0,v15440_1_1_0_we0,v15440_1_1_0_d0,v15440_1_0_3_address0,v15440_1_0_3_ce0,v15440_1_0_3_we0,v15440_1_0_3_d0,v15440_1_0_2_address0,v15440_1_0_2_ce0,v15440_1_0_2_we0,v15440_1_0_2_d0,v15440_1_0_1_address0,v15440_1_0_1_ce0,v15440_1_0_1_we0,v15440_1_0_1_d0,v15440_1_0_0_address0,v15440_1_0_0_ce0,v15440_1_0_0_we0,v15440_1_0_0_d0,v15440_0_1_3_address0,v15440_0_1_3_ce0,v15440_0_1_3_we0,v15440_0_1_3_d0,v15440_0_1_2_address0,v15440_0_1_2_ce0,v15440_0_1_2_we0,v15440_0_1_2_d0,v15440_0_1_1_address0,v15440_0_1_1_ce0,v15440_0_1_1_we0,v15440_0_1_1_d0,v15440_0_1_0_address0,v15440_0_1_0_ce0,v15440_0_1_0_we0,v15440_0_1_0_d0,v15440_0_0_3_address0,v15440_0_0_3_ce0,v15440_0_0_3_we0,v15440_0_0_3_d0,v15440_0_0_2_address0,v15440_0_0_2_ce0,v15440_0_0_2_we0,v15440_0_0_2_d0,v15440_0_0_1_address0,v15440_0_0_1_ce0,v15440_0_0_1_we0,v15440_0_0_1_d0,v15440_0_0_0_address0,v15440_0_0_0_ce0,v15440_0_0_0_we0,v15440_0_0_0_d0,p_read,v14574_15_i_address0,v14574_15_i_ce0,v14574_15_i_q0,v14574_14_i_address0,v14574_14_i_ce0,v14574_14_i_q0,v14574_13_i_address0,v14574_13_i_ce0,v14574_13_i_q0,v14574_12_i_address0,v14574_12_i_ce0,v14574_12_i_q0,v14574_11_i_address0,v14574_11_i_ce0,v14574_11_i_q0,v14574_10_i_address0,v14574_10_i_ce0,v14574_10_i_q0,v14574_9_i_address0,v14574_9_i_ce0,v14574_9_i_q0,v14574_8_i_address0,v14574_8_i_ce0,v14574_8_i_q0,v14574_7_i_address0,v14574_7_i_ce0,v14574_7_i_q0,v14574_6_i_address0,v14574_6_i_ce0,v14574_6_i_q0,v14574_5_i_address0,v14574_5_i_ce0,v14574_5_i_q0,v14574_4_i_address0,v14574_4_i_ce0,v14574_4_i_q0,v14574_3_i_address0,v14574_3_i_ce0,v14574_3_i_q0,v14574_2_i_address0,v14574_2_i_ce0,v14574_2_i_q0,v14574_1_i_address0,v14574_1_i_ce0,v14574_1_i_q0,v14574_i_address0,v14574_i_ce0,v14574_i_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [14:0] v15440_1_1_3_address0;
output   v15440_1_1_3_ce0;
output   v15440_1_1_3_we0;
output  [7:0] v15440_1_1_3_d0;
output  [14:0] v15440_1_1_2_address0;
output   v15440_1_1_2_ce0;
output   v15440_1_1_2_we0;
output  [7:0] v15440_1_1_2_d0;
output  [14:0] v15440_1_1_1_address0;
output   v15440_1_1_1_ce0;
output   v15440_1_1_1_we0;
output  [7:0] v15440_1_1_1_d0;
output  [14:0] v15440_1_1_0_address0;
output   v15440_1_1_0_ce0;
output   v15440_1_1_0_we0;
output  [7:0] v15440_1_1_0_d0;
output  [14:0] v15440_1_0_3_address0;
output   v15440_1_0_3_ce0;
output   v15440_1_0_3_we0;
output  [7:0] v15440_1_0_3_d0;
output  [14:0] v15440_1_0_2_address0;
output   v15440_1_0_2_ce0;
output   v15440_1_0_2_we0;
output  [7:0] v15440_1_0_2_d0;
output  [14:0] v15440_1_0_1_address0;
output   v15440_1_0_1_ce0;
output   v15440_1_0_1_we0;
output  [7:0] v15440_1_0_1_d0;
output  [14:0] v15440_1_0_0_address0;
output   v15440_1_0_0_ce0;
output   v15440_1_0_0_we0;
output  [7:0] v15440_1_0_0_d0;
output  [14:0] v15440_0_1_3_address0;
output   v15440_0_1_3_ce0;
output   v15440_0_1_3_we0;
output  [7:0] v15440_0_1_3_d0;
output  [14:0] v15440_0_1_2_address0;
output   v15440_0_1_2_ce0;
output   v15440_0_1_2_we0;
output  [7:0] v15440_0_1_2_d0;
output  [14:0] v15440_0_1_1_address0;
output   v15440_0_1_1_ce0;
output   v15440_0_1_1_we0;
output  [7:0] v15440_0_1_1_d0;
output  [14:0] v15440_0_1_0_address0;
output   v15440_0_1_0_ce0;
output   v15440_0_1_0_we0;
output  [7:0] v15440_0_1_0_d0;
output  [14:0] v15440_0_0_3_address0;
output   v15440_0_0_3_ce0;
output   v15440_0_0_3_we0;
output  [7:0] v15440_0_0_3_d0;
output  [14:0] v15440_0_0_2_address0;
output   v15440_0_0_2_ce0;
output   v15440_0_0_2_we0;
output  [7:0] v15440_0_0_2_d0;
output  [14:0] v15440_0_0_1_address0;
output   v15440_0_0_1_ce0;
output   v15440_0_0_1_we0;
output  [7:0] v15440_0_0_1_d0;
output  [14:0] v15440_0_0_0_address0;
output   v15440_0_0_0_ce0;
output   v15440_0_0_0_we0;
output  [7:0] v15440_0_0_0_d0;
input  [3:0] p_read;
output  [10:0] v14574_15_i_address0;
output   v14574_15_i_ce0;
input  [7:0] v14574_15_i_q0;
output  [10:0] v14574_14_i_address0;
output   v14574_14_i_ce0;
input  [7:0] v14574_14_i_q0;
output  [10:0] v14574_13_i_address0;
output   v14574_13_i_ce0;
input  [7:0] v14574_13_i_q0;
output  [10:0] v14574_12_i_address0;
output   v14574_12_i_ce0;
input  [7:0] v14574_12_i_q0;
output  [10:0] v14574_11_i_address0;
output   v14574_11_i_ce0;
input  [7:0] v14574_11_i_q0;
output  [10:0] v14574_10_i_address0;
output   v14574_10_i_ce0;
input  [7:0] v14574_10_i_q0;
output  [10:0] v14574_9_i_address0;
output   v14574_9_i_ce0;
input  [7:0] v14574_9_i_q0;
output  [10:0] v14574_8_i_address0;
output   v14574_8_i_ce0;
input  [7:0] v14574_8_i_q0;
output  [10:0] v14574_7_i_address0;
output   v14574_7_i_ce0;
input  [7:0] v14574_7_i_q0;
output  [10:0] v14574_6_i_address0;
output   v14574_6_i_ce0;
input  [7:0] v14574_6_i_q0;
output  [10:0] v14574_5_i_address0;
output   v14574_5_i_ce0;
input  [7:0] v14574_5_i_q0;
output  [10:0] v14574_4_i_address0;
output   v14574_4_i_ce0;
input  [7:0] v14574_4_i_q0;
output  [10:0] v14574_3_i_address0;
output   v14574_3_i_ce0;
input  [7:0] v14574_3_i_q0;
output  [10:0] v14574_2_i_address0;
output   v14574_2_i_ce0;
input  [7:0] v14574_2_i_q0;
output  [10:0] v14574_1_i_address0;
output   v14574_1_i_ce0;
input  [7:0] v14574_1_i_q0;
output  [10:0] v14574_i_address0;
output   v14574_i_ce0;
input  [7:0] v14574_i_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln18314_fu_1014_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [4:0] p_udiv24_i_cast_cast_cast_cast_fu_706_p3;
reg   [4:0] p_udiv24_i_cast_cast_cast_cast_reg_1419;
wire   [3:0] trunc_ln18807_cast_cast_cast_cast_fu_726_p3;
reg   [3:0] trunc_ln18807_cast_cast_cast_cast_reg_1424;
reg   [3:0] trunc_ln18807_cast_cast_cast_cast_reg_1424_pp0_iter1_reg;
wire   [5:0] empty_262_fu_886_p2;
reg   [5:0] empty_262_reg_1429;
reg   [5:0] tmp_195_reg_1435;
wire   [3:0] lshr_ln18315_1_fu_906_p4;
reg   [3:0] lshr_ln18315_1_reg_1441;
wire   [8:0] add_ln18318_fu_920_p2;
reg   [8:0] add_ln18318_reg_1446;
wire   [7:0] trunc_ln18318_fu_926_p1;
reg   [7:0] trunc_ln18318_reg_1451;
reg   [4:0] lshr_ln32_reg_1456;
reg   [2:0] lshr_ln18316_1_reg_1461;
reg   [2:0] lshr_ln18316_1_reg_1461_pp0_iter1_reg;
reg   [3:0] lshr_ln33_reg_1467;
reg   [3:0] lshr_ln33_reg_1467_pp0_iter1_reg;
wire   [0:0] icmp_ln18316_fu_1002_p2;
reg   [0:0] icmp_ln18316_reg_1472;
wire   [0:0] icmp_ln18315_fu_1008_p2;
reg   [0:0] icmp_ln18315_reg_1477;
reg   [0:0] icmp_ln18314_reg_1482;
wire   [10:0] add_ln18341_fu_1121_p2;
reg   [10:0] add_ln18341_reg_1486;
wire   [10:0] add_ln18325_fu_1127_p2;
reg   [10:0] add_ln18325_reg_1492;
wire   [10:0] add_ln18349_fu_1136_p2;
reg   [10:0] add_ln18349_reg_1498;
wire   [10:0] add_ln18333_fu_1142_p2;
reg   [10:0] add_ln18333_reg_1504;
reg   [0:0] ap_phi_mux_icmp_ln18315291_phi_fu_647_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln18316290_phi_fu_657_p4;
wire   [63:0] zext_ln18318_4_fu_1157_p1;
wire   [63:0] zext_ln18343_1_fu_1291_p1;
wire   [63:0] zext_ln18335_fu_1302_p1;
wire   [63:0] zext_ln18327_fu_1313_p1;
wire   [63:0] zext_ln18319_fu_1324_p1;
wire   [63:0] zext_ln18349_4_fu_1338_p1;
wire   [63:0] zext_ln18341_2_fu_1351_p1;
wire   [63:0] zext_ln18333_2_fu_1364_p1;
wire   [63:0] zext_ln18325_1_fu_1377_p1;
reg   [10:0] indvar_flatten12285_fu_186;
wire   [10:0] add_ln18314_1_fu_996_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten12285_load;
reg   [5:0] v14181286_fu_190;
wire   [5:0] v14181_fu_800_p3;
reg   [5:0] ap_sig_allocacmp_v14181286_load;
reg   [6:0] indvar_flatten287_fu_194;
wire   [6:0] select_ln18315_1_fu_988_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten287_load;
reg   [4:0] v14182288_fu_198;
wire   [4:0] v14182_fu_828_p3;
reg   [4:0] ap_sig_allocacmp_v14182288_load;
reg   [4:0] v14183289_fu_202;
wire   [4:0] v14183_fu_976_p2;
reg   [4:0] ap_sig_allocacmp_v14183289_load;
reg    v14574_15_i_ce0_local;
reg    v14574_14_i_ce0_local;
reg    v14574_13_i_ce0_local;
reg    v14574_12_i_ce0_local;
reg    v14574_11_i_ce0_local;
reg    v14574_10_i_ce0_local;
reg    v14574_9_i_ce0_local;
reg    v14574_8_i_ce0_local;
reg    v14574_7_i_ce0_local;
reg    v14574_6_i_ce0_local;
reg    v14574_5_i_ce0_local;
reg    v14574_4_i_ce0_local;
reg    v14574_3_i_ce0_local;
reg    v14574_2_i_ce0_local;
reg    v14574_1_i_ce0_local;
reg    v14574_i_ce0_local;
reg    v15440_0_0_0_we0_local;
reg    v15440_0_0_0_ce0_local;
reg    v15440_0_0_1_we0_local;
reg    v15440_0_0_1_ce0_local;
reg    v15440_0_0_2_we0_local;
reg    v15440_0_0_2_ce0_local;
reg    v15440_0_0_3_we0_local;
reg    v15440_0_0_3_ce0_local;
reg    v15440_0_1_0_we0_local;
reg    v15440_0_1_0_ce0_local;
reg    v15440_0_1_1_we0_local;
reg    v15440_0_1_1_ce0_local;
reg    v15440_0_1_2_we0_local;
reg    v15440_0_1_2_ce0_local;
reg    v15440_0_1_3_we0_local;
reg    v15440_0_1_3_ce0_local;
reg    v15440_1_0_0_we0_local;
reg    v15440_1_0_0_ce0_local;
reg    v15440_1_0_1_we0_local;
reg    v15440_1_0_1_ce0_local;
reg    v15440_1_0_2_we0_local;
reg    v15440_1_0_2_ce0_local;
reg    v15440_1_0_3_we0_local;
reg    v15440_1_0_3_ce0_local;
reg    v15440_1_1_0_we0_local;
reg    v15440_1_1_0_ce0_local;
reg    v15440_1_1_1_we0_local;
reg    v15440_1_1_1_ce0_local;
reg    v15440_1_1_2_we0_local;
reg    v15440_1_1_2_ce0_local;
reg    v15440_1_1_3_we0_local;
reg    v15440_1_1_3_ce0_local;
wire   [1:0] tmp_fu_664_p4;
wire   [0:0] tmp_192_fu_690_p3;
wire   [0:0] empty_fu_714_p1;
wire   [0:0] xor_ln18314_fu_788_p2;
wire   [5:0] add_ln18314_fu_774_p2;
wire   [4:0] select_ln18314_fu_780_p3;
wire   [0:0] and_ln18314_fu_794_p2;
wire   [0:0] empty_260_fu_814_p2;
wire   [4:0] add_ln18315_fu_808_p2;
wire   [4:0] lshr_ln_fu_840_p4;
wire   [5:0] tmp_193_fu_862_p3;
wire   [8:0] p_shl139_fu_854_p3;
wire   [8:0] zext_ln18318_fu_870_p1;
wire   [6:0] mul_i179_i_fu_674_p3;
wire   [6:0] zext_ln18314_fu_836_p1;
wire   [5:0] zext_ln18314_1_fu_850_p1;
wire   [5:0] trunc_ln_fu_682_p3;
wire   [6:0] empty_261_fu_880_p2;
wire   [8:0] sub_ln18318_fu_874_p2;
wire   [8:0] zext_ln18318_1_fu_916_p1;
wire   [5:0] zext_ln18807_cast_cast_cast_cast_fu_698_p3;
wire   [5:0] zext_ln18315_fu_902_p1;
wire   [5:0] empty_263_fu_930_p2;
wire   [4:0] v14183_mid2_fu_820_p3;
wire   [5:0] select_ln18807_cast_cast_fu_718_p3;
wire   [5:0] zext_ln18316_fu_946_p1;
wire   [5:0] add_ln18319_fu_960_p2;
wire   [6:0] add_ln18315_1_fu_982_p2;
wire   [7:0] tmp_194_fu_1052_p3;
wire   [10:0] p_shl140_fu_1045_p3;
wire   [10:0] zext_ln18333_fu_1059_p1;
wire   [7:0] tmp_196_fu_1076_p3;
wire   [10:0] p_shl141_fu_1069_p3;
wire   [10:0] zext_ln18349_fu_1083_p1;
wire   [10:0] tmp_197_fu_1096_p3;
wire   [10:0] zext_ln18318_2_fu_1103_p1;
wire   [4:0] zext_ln18315_1_fu_1093_p1;
wire   [4:0] empty_264_fu_1112_p2;
wire   [10:0] sub_ln18349_fu_1087_p2;
wire   [10:0] zext_ln18341_fu_1117_p1;
wire   [10:0] sub_ln18333_fu_1063_p2;
wire   [10:0] zext_ln18349_1_fu_1133_p1;
wire   [10:0] sub_ln18318_1_fu_1106_p2;
wire   [10:0] zext_ln18318_3_fu_1148_p1;
wire   [10:0] add_ln18318_1_fu_1151_p2;
wire   [11:0] tmp_198_fu_1184_p3;
wire   [14:0] p_shl142_fu_1177_p3;
wire   [14:0] zext_ln18341_1_fu_1191_p1;
wire   [11:0] tmp_199_fu_1208_p3;
wire   [14:0] p_shl143_fu_1201_p3;
wire   [14:0] zext_ln18325_fu_1215_p1;
wire   [11:0] tmp_200_fu_1232_p3;
wire   [14:0] p_shl144_fu_1225_p3;
wire   [14:0] zext_ln18349_2_fu_1239_p1;
wire   [11:0] tmp_201_fu_1256_p3;
wire   [14:0] p_shl_fu_1249_p3;
wire   [14:0] zext_ln18333_1_fu_1263_p1;
wire   [3:0] zext_ln18316_1_fu_1273_p1;
wire   [3:0] add_ln18319_1_fu_1276_p2;
wire   [14:0] sub_ln18349_1_fu_1243_p2;
wire   [14:0] zext_ln18343_fu_1281_p1;
wire   [14:0] add_ln18343_fu_1285_p2;
wire   [14:0] sub_ln18341_fu_1195_p2;
wire   [14:0] add_ln18335_fu_1296_p2;
wire   [14:0] sub_ln18333_1_fu_1267_p2;
wire   [14:0] add_ln18327_fu_1307_p2;
wire   [14:0] sub_ln18325_fu_1219_p2;
wire   [14:0] add_ln18319_2_fu_1318_p2;
wire   [14:0] zext_ln18349_3_fu_1329_p1;
wire   [14:0] add_ln18349_1_fu_1332_p2;
wire   [14:0] add_ln18341_1_fu_1345_p2;
wire   [14:0] add_ln18333_1_fu_1358_p2;
wire   [14:0] add_ln18325_1_fu_1371_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_966;
reg    ap_condition_304;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12285_fu_186 = 11'd0;
#0 v14181286_fu_190 = 6'd0;
#0 indvar_flatten287_fu_194 = 7'd0;
#0 v14182288_fu_198 = 5'd0;
#0 v14183289_fu_202 = 5'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_304)) begin
        indvar_flatten12285_fu_186 <= add_ln18314_1_fu_996_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_304)) begin
    indvar_flatten287_fu_194 <= select_ln18315_1_fu_988_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_304)) begin
    v14181286_fu_190 <= v14181_fu_800_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_304)) begin
    v14182288_fu_198 <= v14182_fu_828_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_304)) begin
    v14183289_fu_202 <= v14183_fu_976_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18318_reg_1446 <= add_ln18318_fu_920_p2;
        add_ln18325_reg_1492 <= add_ln18325_fu_1127_p2;
        add_ln18333_reg_1504 <= add_ln18333_fu_1142_p2;
        add_ln18341_reg_1486 <= add_ln18341_fu_1121_p2;
        add_ln18349_reg_1498 <= add_ln18349_fu_1136_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_262_reg_1429 <= empty_262_fu_886_p2;
        icmp_ln18314_reg_1482 <= icmp_ln18314_fu_1014_p2;
        lshr_ln18315_1_reg_1441 <= {{v14182_fu_828_p3[4:1]}};
        lshr_ln18316_1_reg_1461 <= {{v14183_mid2_fu_820_p3[4:2]}};
        lshr_ln18316_1_reg_1461_pp0_iter1_reg <= lshr_ln18316_1_reg_1461;
        lshr_ln32_reg_1456 <= {{empty_263_fu_930_p2[5:1]}};
        lshr_ln33_reg_1467 <= {{add_ln18319_fu_960_p2[5:2]}};
        lshr_ln33_reg_1467_pp0_iter1_reg <= lshr_ln33_reg_1467;
        p_udiv24_i_cast_cast_cast_cast_reg_1419[3 : 1] <= p_udiv24_i_cast_cast_cast_cast_fu_706_p3[3 : 1];
        tmp_195_reg_1435 <= {{empty_261_fu_880_p2[6:1]}};
        trunc_ln18318_reg_1451 <= trunc_ln18318_fu_926_p1;
        trunc_ln18807_cast_cast_cast_cast_reg_1424[2 : 0] <= trunc_ln18807_cast_cast_cast_cast_fu_726_p3[2 : 0];
        trunc_ln18807_cast_cast_cast_cast_reg_1424_pp0_iter1_reg[2 : 0] <= trunc_ln18807_cast_cast_cast_cast_reg_1424[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18315_reg_1477 <= icmp_ln18315_fu_1008_p2;
        icmp_ln18316_reg_1472 <= icmp_ln18316_fu_1002_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18314_fu_1014_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_966)) begin
            ap_phi_mux_icmp_ln18315291_phi_fu_647_p4 = icmp_ln18315_reg_1477;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln18315291_phi_fu_647_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln18315291_phi_fu_647_p4 = icmp_ln18315_reg_1477;
        end
    end else begin
        ap_phi_mux_icmp_ln18315291_phi_fu_647_p4 = icmp_ln18315_reg_1477;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_966)) begin
            ap_phi_mux_icmp_ln18316290_phi_fu_657_p4 = icmp_ln18316_reg_1472;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln18316290_phi_fu_657_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln18316290_phi_fu_657_p4 = icmp_ln18316_reg_1472;
        end
    end else begin
        ap_phi_mux_icmp_ln18316290_phi_fu_657_p4 = icmp_ln18316_reg_1472;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12285_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12285_load = indvar_flatten12285_fu_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten287_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten287_load = indvar_flatten287_fu_194;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v14181286_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v14181286_load = v14181286_fu_190;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v14182288_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v14182288_load = v14182288_fu_198;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v14183289_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v14183289_load = v14183289_fu_202;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_10_i_ce0_local = 1'b1;
    end else begin
        v14574_10_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_11_i_ce0_local = 1'b1;
    end else begin
        v14574_11_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_12_i_ce0_local = 1'b1;
    end else begin
        v14574_12_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_13_i_ce0_local = 1'b1;
    end else begin
        v14574_13_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_14_i_ce0_local = 1'b1;
    end else begin
        v14574_14_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_15_i_ce0_local = 1'b1;
    end else begin
        v14574_15_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_1_i_ce0_local = 1'b1;
    end else begin
        v14574_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_2_i_ce0_local = 1'b1;
    end else begin
        v14574_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_3_i_ce0_local = 1'b1;
    end else begin
        v14574_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_4_i_ce0_local = 1'b1;
    end else begin
        v14574_4_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_5_i_ce0_local = 1'b1;
    end else begin
        v14574_5_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_6_i_ce0_local = 1'b1;
    end else begin
        v14574_6_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_7_i_ce0_local = 1'b1;
    end else begin
        v14574_7_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_8_i_ce0_local = 1'b1;
    end else begin
        v14574_8_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_9_i_ce0_local = 1'b1;
    end else begin
        v14574_9_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14574_i_ce0_local = 1'b1;
    end else begin
        v14574_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_0_0_ce0_local = 1'b1;
    end else begin
        v15440_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_0_0_we0_local = 1'b1;
    end else begin
        v15440_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_0_1_ce0_local = 1'b1;
    end else begin
        v15440_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_0_1_we0_local = 1'b1;
    end else begin
        v15440_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_0_2_ce0_local = 1'b1;
    end else begin
        v15440_0_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_0_2_we0_local = 1'b1;
    end else begin
        v15440_0_0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_0_3_ce0_local = 1'b1;
    end else begin
        v15440_0_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_0_3_we0_local = 1'b1;
    end else begin
        v15440_0_0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_1_0_ce0_local = 1'b1;
    end else begin
        v15440_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_1_0_we0_local = 1'b1;
    end else begin
        v15440_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_1_1_ce0_local = 1'b1;
    end else begin
        v15440_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_1_1_we0_local = 1'b1;
    end else begin
        v15440_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_1_2_ce0_local = 1'b1;
    end else begin
        v15440_0_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_1_2_we0_local = 1'b1;
    end else begin
        v15440_0_1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_1_3_ce0_local = 1'b1;
    end else begin
        v15440_0_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_0_1_3_we0_local = 1'b1;
    end else begin
        v15440_0_1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_0_0_ce0_local = 1'b1;
    end else begin
        v15440_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_0_0_we0_local = 1'b1;
    end else begin
        v15440_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_0_1_ce0_local = 1'b1;
    end else begin
        v15440_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_0_1_we0_local = 1'b1;
    end else begin
        v15440_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_0_2_ce0_local = 1'b1;
    end else begin
        v15440_1_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_0_2_we0_local = 1'b1;
    end else begin
        v15440_1_0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_0_3_ce0_local = 1'b1;
    end else begin
        v15440_1_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_0_3_we0_local = 1'b1;
    end else begin
        v15440_1_0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_1_0_ce0_local = 1'b1;
    end else begin
        v15440_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_1_0_we0_local = 1'b1;
    end else begin
        v15440_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_1_1_ce0_local = 1'b1;
    end else begin
        v15440_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_1_1_we0_local = 1'b1;
    end else begin
        v15440_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_1_2_ce0_local = 1'b1;
    end else begin
        v15440_1_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_1_2_we0_local = 1'b1;
    end else begin
        v15440_1_1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_1_3_ce0_local = 1'b1;
    end else begin
        v15440_1_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15440_1_1_3_we0_local = 1'b1;
    end else begin
        v15440_1_1_3_we0_local = 1'b0;
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
assign add_ln18314_1_fu_996_p2 = (ap_sig_allocacmp_indvar_flatten12285_load + 11'd1);
assign add_ln18314_fu_774_p2 = (ap_sig_allocacmp_v14181286_load + 6'd2);
assign add_ln18315_1_fu_982_p2 = (ap_sig_allocacmp_indvar_flatten287_load + 7'd1);
assign add_ln18315_fu_808_p2 = (select_ln18314_fu_780_p3 + 5'd2);
assign add_ln18318_1_fu_1151_p2 = (sub_ln18318_1_fu_1106_p2 + zext_ln18318_3_fu_1148_p1);
assign add_ln18318_fu_920_p2 = (sub_ln18318_fu_874_p2 + zext_ln18318_1_fu_916_p1);
assign add_ln18319_1_fu_1276_p2 = (zext_ln18316_1_fu_1273_p1 + trunc_ln18807_cast_cast_cast_cast_reg_1424_pp0_iter1_reg);
assign add_ln18319_2_fu_1318_p2 = (sub_ln18325_fu_1219_p2 + zext_ln18343_fu_1281_p1);
assign add_ln18319_fu_960_p2 = (select_ln18807_cast_cast_fu_718_p3 + zext_ln18316_fu_946_p1);
assign add_ln18325_1_fu_1371_p2 = (sub_ln18325_fu_1219_p2 + zext_ln18349_3_fu_1329_p1);
assign add_ln18325_fu_1127_p2 = (sub_ln18333_fu_1063_p2 + zext_ln18341_fu_1117_p1);
assign add_ln18327_fu_1307_p2 = (sub_ln18333_1_fu_1267_p2 + zext_ln18343_fu_1281_p1);
assign add_ln18333_1_fu_1358_p2 = (sub_ln18333_1_fu_1267_p2 + zext_ln18349_3_fu_1329_p1);
assign add_ln18333_fu_1142_p2 = (sub_ln18333_fu_1063_p2 + zext_ln18349_1_fu_1133_p1);
assign add_ln18335_fu_1296_p2 = (sub_ln18341_fu_1195_p2 + zext_ln18343_fu_1281_p1);
assign add_ln18341_1_fu_1345_p2 = (sub_ln18341_fu_1195_p2 + zext_ln18349_3_fu_1329_p1);
assign add_ln18341_fu_1121_p2 = (sub_ln18349_fu_1087_p2 + zext_ln18341_fu_1117_p1);
assign add_ln18343_fu_1285_p2 = (sub_ln18349_1_fu_1243_p2 + zext_ln18343_fu_1281_p1);
assign add_ln18349_1_fu_1332_p2 = (sub_ln18349_1_fu_1243_p2 + zext_ln18349_3_fu_1329_p1);
assign add_ln18349_fu_1136_p2 = (sub_ln18349_fu_1087_p2 + zext_ln18349_1_fu_1133_p1);
assign and_ln18314_fu_794_p2 = (xor_ln18314_fu_788_p2 & ap_phi_mux_icmp_ln18316290_phi_fu_657_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_304 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_966 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln18314_reg_1482 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_260_fu_814_p2 = (ap_phi_mux_icmp_ln18315291_phi_fu_647_p4 | and_ln18314_fu_794_p2);
assign empty_261_fu_880_p2 = (mul_i179_i_fu_674_p3 + zext_ln18314_fu_836_p1);
assign empty_262_fu_886_p2 = (zext_ln18314_1_fu_850_p1 + trunc_ln_fu_682_p3);
assign empty_263_fu_930_p2 = (zext_ln18807_cast_cast_cast_cast_fu_698_p3 + zext_ln18315_fu_902_p1);
assign empty_264_fu_1112_p2 = (zext_ln18315_1_fu_1093_p1 + p_udiv24_i_cast_cast_cast_cast_reg_1419);
assign empty_fu_714_p1 = p_read[0:0];
assign icmp_ln18314_fu_1014_p2 = ((ap_sig_allocacmp_indvar_flatten12285_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln18315_fu_1008_p2 = ((select_ln18315_1_fu_988_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln18316_fu_1002_p2 = ((v14183_fu_976_p2 == 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln18315_1_fu_906_p4 = {{v14182_fu_828_p3[4:1]}};
assign lshr_ln_fu_840_p4 = {{v14181_fu_800_p3[5:1]}};
assign mul_i179_i_fu_674_p3 = {{tmp_fu_664_p4}, {5'd0}};
assign p_shl139_fu_854_p3 = {{lshr_ln_fu_840_p4}, {4'd0}};
assign p_shl140_fu_1045_p3 = {{empty_262_reg_1429}, {5'd0}};
assign p_shl141_fu_1069_p3 = {{tmp_195_reg_1435}, {5'd0}};
assign p_shl142_fu_1177_p3 = {{add_ln18341_reg_1486}, {4'd0}};
assign p_shl143_fu_1201_p3 = {{add_ln18325_reg_1492}, {4'd0}};
assign p_shl144_fu_1225_p3 = {{add_ln18349_reg_1498}, {4'd0}};
assign p_shl_fu_1249_p3 = {{add_ln18333_reg_1504}, {4'd0}};
assign p_udiv24_i_cast_cast_cast_cast_fu_706_p3 = ((tmp_192_fu_690_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign select_ln18314_fu_780_p3 = ((ap_phi_mux_icmp_ln18315291_phi_fu_647_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v14182288_load);
assign select_ln18315_1_fu_988_p3 = ((ap_phi_mux_icmp_ln18315291_phi_fu_647_p4[0:0] == 1'b1) ? 7'd1 : add_ln18315_1_fu_982_p2);
assign select_ln18807_cast_cast_fu_718_p3 = ((empty_fu_714_p1[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign sub_ln18318_1_fu_1106_p2 = (tmp_197_fu_1096_p3 - zext_ln18318_2_fu_1103_p1);
assign sub_ln18318_fu_874_p2 = (p_shl139_fu_854_p3 - zext_ln18318_fu_870_p1);
assign sub_ln18325_fu_1219_p2 = (p_shl143_fu_1201_p3 - zext_ln18325_fu_1215_p1);
assign sub_ln18333_1_fu_1267_p2 = (p_shl_fu_1249_p3 - zext_ln18333_1_fu_1263_p1);
assign sub_ln18333_fu_1063_p2 = (p_shl140_fu_1045_p3 - zext_ln18333_fu_1059_p1);
assign sub_ln18341_fu_1195_p2 = (p_shl142_fu_1177_p3 - zext_ln18341_1_fu_1191_p1);
assign sub_ln18349_1_fu_1243_p2 = (p_shl144_fu_1225_p3 - zext_ln18349_2_fu_1239_p1);
assign sub_ln18349_fu_1087_p2 = (p_shl141_fu_1069_p3 - zext_ln18349_fu_1083_p1);
assign tmp_192_fu_690_p3 = p_read[32'd1];
assign tmp_193_fu_862_p3 = {{lshr_ln_fu_840_p4}, {1'd0}};
assign tmp_194_fu_1052_p3 = {{empty_262_reg_1429}, {2'd0}};
assign tmp_196_fu_1076_p3 = {{tmp_195_reg_1435}, {2'd0}};
assign tmp_197_fu_1096_p3 = {{trunc_ln18318_reg_1451}, {3'd0}};
assign tmp_198_fu_1184_p3 = {{add_ln18341_reg_1486}, {1'd0}};
assign tmp_199_fu_1208_p3 = {{add_ln18325_reg_1492}, {1'd0}};
assign tmp_200_fu_1232_p3 = {{add_ln18349_reg_1498}, {1'd0}};
assign tmp_201_fu_1256_p3 = {{add_ln18333_reg_1504}, {1'd0}};
assign tmp_fu_664_p4 = {{p_read[3:2]}};
assign trunc_ln18318_fu_926_p1 = add_ln18318_fu_920_p2[7:0];
assign trunc_ln18807_cast_cast_cast_cast_fu_726_p3 = ((empty_fu_714_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign trunc_ln_fu_682_p3 = {{tmp_fu_664_p4}, {4'd0}};
assign v14181_fu_800_p3 = ((ap_phi_mux_icmp_ln18315291_phi_fu_647_p4[0:0] == 1'b1) ? add_ln18314_fu_774_p2 : ap_sig_allocacmp_v14181286_load);
assign v14182_fu_828_p3 = ((and_ln18314_fu_794_p2[0:0] == 1'b1) ? add_ln18315_fu_808_p2 : select_ln18314_fu_780_p3);
assign v14183_fu_976_p2 = (v14183_mid2_fu_820_p3 + 5'd4);
assign v14183_mid2_fu_820_p3 = ((empty_260_fu_814_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v14183289_load);
assign v14574_10_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_10_i_ce0 = v14574_10_i_ce0_local;
assign v14574_11_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_11_i_ce0 = v14574_11_i_ce0_local;
assign v14574_12_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_12_i_ce0 = v14574_12_i_ce0_local;
assign v14574_13_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_13_i_ce0 = v14574_13_i_ce0_local;
assign v14574_14_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_14_i_ce0 = v14574_14_i_ce0_local;
assign v14574_15_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_15_i_ce0 = v14574_15_i_ce0_local;
assign v14574_1_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_1_i_ce0 = v14574_1_i_ce0_local;
assign v14574_2_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_2_i_ce0 = v14574_2_i_ce0_local;
assign v14574_3_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_3_i_ce0 = v14574_3_i_ce0_local;
assign v14574_4_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_4_i_ce0 = v14574_4_i_ce0_local;
assign v14574_5_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_5_i_ce0 = v14574_5_i_ce0_local;
assign v14574_6_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_6_i_ce0 = v14574_6_i_ce0_local;
assign v14574_7_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_7_i_ce0 = v14574_7_i_ce0_local;
assign v14574_8_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_8_i_ce0 = v14574_8_i_ce0_local;
assign v14574_9_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_9_i_ce0 = v14574_9_i_ce0_local;
assign v14574_i_address0 = zext_ln18318_4_fu_1157_p1;
assign v14574_i_ce0 = v14574_i_ce0_local;
assign v15440_0_0_0_address0 = zext_ln18319_fu_1324_p1;
assign v15440_0_0_0_ce0 = v15440_0_0_0_ce0_local;
assign v15440_0_0_0_d0 = v14574_15_i_q0;
assign v15440_0_0_0_we0 = v15440_0_0_0_we0_local;
assign v15440_0_0_1_address0 = zext_ln18325_1_fu_1377_p1;
assign v15440_0_0_1_ce0 = v15440_0_0_1_ce0_local;
assign v15440_0_0_1_d0 = v14574_14_i_q0;
assign v15440_0_0_1_we0 = v15440_0_0_1_we0_local;
assign v15440_0_0_2_address0 = zext_ln18325_1_fu_1377_p1;
assign v15440_0_0_2_ce0 = v15440_0_0_2_ce0_local;
assign v15440_0_0_2_d0 = v14574_13_i_q0;
assign v15440_0_0_2_we0 = v15440_0_0_2_we0_local;
assign v15440_0_0_3_address0 = zext_ln18325_1_fu_1377_p1;
assign v15440_0_0_3_ce0 = v15440_0_0_3_ce0_local;
assign v15440_0_0_3_d0 = v14574_12_i_q0;
assign v15440_0_0_3_we0 = v15440_0_0_3_we0_local;
assign v15440_0_1_0_address0 = zext_ln18327_fu_1313_p1;
assign v15440_0_1_0_ce0 = v15440_0_1_0_ce0_local;
assign v15440_0_1_0_d0 = v14574_11_i_q0;
assign v15440_0_1_0_we0 = v15440_0_1_0_we0_local;
assign v15440_0_1_1_address0 = zext_ln18333_2_fu_1364_p1;
assign v15440_0_1_1_ce0 = v15440_0_1_1_ce0_local;
assign v15440_0_1_1_d0 = v14574_10_i_q0;
assign v15440_0_1_1_we0 = v15440_0_1_1_we0_local;
assign v15440_0_1_2_address0 = zext_ln18333_2_fu_1364_p1;
assign v15440_0_1_2_ce0 = v15440_0_1_2_ce0_local;
assign v15440_0_1_2_d0 = v14574_9_i_q0;
assign v15440_0_1_2_we0 = v15440_0_1_2_we0_local;
assign v15440_0_1_3_address0 = zext_ln18333_2_fu_1364_p1;
assign v15440_0_1_3_ce0 = v15440_0_1_3_ce0_local;
assign v15440_0_1_3_d0 = v14574_8_i_q0;
assign v15440_0_1_3_we0 = v15440_0_1_3_we0_local;
assign v15440_1_0_0_address0 = zext_ln18335_fu_1302_p1;
assign v15440_1_0_0_ce0 = v15440_1_0_0_ce0_local;
assign v15440_1_0_0_d0 = v14574_7_i_q0;
assign v15440_1_0_0_we0 = v15440_1_0_0_we0_local;
assign v15440_1_0_1_address0 = zext_ln18341_2_fu_1351_p1;
assign v15440_1_0_1_ce0 = v15440_1_0_1_ce0_local;
assign v15440_1_0_1_d0 = v14574_6_i_q0;
assign v15440_1_0_1_we0 = v15440_1_0_1_we0_local;
assign v15440_1_0_2_address0 = zext_ln18341_2_fu_1351_p1;
assign v15440_1_0_2_ce0 = v15440_1_0_2_ce0_local;
assign v15440_1_0_2_d0 = v14574_5_i_q0;
assign v15440_1_0_2_we0 = v15440_1_0_2_we0_local;
assign v15440_1_0_3_address0 = zext_ln18341_2_fu_1351_p1;
assign v15440_1_0_3_ce0 = v15440_1_0_3_ce0_local;
assign v15440_1_0_3_d0 = v14574_4_i_q0;
assign v15440_1_0_3_we0 = v15440_1_0_3_we0_local;
assign v15440_1_1_0_address0 = zext_ln18343_1_fu_1291_p1;
assign v15440_1_1_0_ce0 = v15440_1_1_0_ce0_local;
assign v15440_1_1_0_d0 = v14574_3_i_q0;
assign v15440_1_1_0_we0 = v15440_1_1_0_we0_local;
assign v15440_1_1_1_address0 = zext_ln18349_4_fu_1338_p1;
assign v15440_1_1_1_ce0 = v15440_1_1_1_ce0_local;
assign v15440_1_1_1_d0 = v14574_2_i_q0;
assign v15440_1_1_1_we0 = v15440_1_1_1_we0_local;
assign v15440_1_1_2_address0 = zext_ln18349_4_fu_1338_p1;
assign v15440_1_1_2_ce0 = v15440_1_1_2_ce0_local;
assign v15440_1_1_2_d0 = v14574_1_i_q0;
assign v15440_1_1_2_we0 = v15440_1_1_2_we0_local;
assign v15440_1_1_3_address0 = zext_ln18349_4_fu_1338_p1;
assign v15440_1_1_3_ce0 = v15440_1_1_3_ce0_local;
assign v15440_1_1_3_d0 = v14574_i_q0;
assign v15440_1_1_3_we0 = v15440_1_1_3_we0_local;
assign xor_ln18314_fu_788_p2 = (ap_phi_mux_icmp_ln18315291_phi_fu_647_p4 ^ 1'd1);
assign zext_ln18314_1_fu_850_p1 = lshr_ln_fu_840_p4;
assign zext_ln18314_fu_836_p1 = v14181_fu_800_p3;
assign zext_ln18315_1_fu_1093_p1 = lshr_ln18315_1_reg_1441;
assign zext_ln18315_fu_902_p1 = v14182_fu_828_p3;
assign zext_ln18316_1_fu_1273_p1 = lshr_ln18316_1_reg_1461_pp0_iter1_reg;
assign zext_ln18316_fu_946_p1 = v14183_mid2_fu_820_p3;
assign zext_ln18318_1_fu_916_p1 = lshr_ln18315_1_fu_906_p4;
assign zext_ln18318_2_fu_1103_p1 = add_ln18318_reg_1446;
assign zext_ln18318_3_fu_1148_p1 = lshr_ln18316_1_reg_1461;
assign zext_ln18318_4_fu_1157_p1 = add_ln18318_1_fu_1151_p2;
assign zext_ln18318_fu_870_p1 = tmp_193_fu_862_p3;
assign zext_ln18319_fu_1324_p1 = add_ln18319_2_fu_1318_p2;
assign zext_ln18325_1_fu_1377_p1 = add_ln18325_1_fu_1371_p2;
assign zext_ln18325_fu_1215_p1 = tmp_199_fu_1208_p3;
assign zext_ln18327_fu_1313_p1 = add_ln18327_fu_1307_p2;
assign zext_ln18333_1_fu_1263_p1 = tmp_201_fu_1256_p3;
assign zext_ln18333_2_fu_1364_p1 = add_ln18333_1_fu_1358_p2;
assign zext_ln18333_fu_1059_p1 = tmp_194_fu_1052_p3;
assign zext_ln18335_fu_1302_p1 = add_ln18335_fu_1296_p2;
assign zext_ln18341_1_fu_1191_p1 = tmp_198_fu_1184_p3;
assign zext_ln18341_2_fu_1351_p1 = add_ln18341_1_fu_1345_p2;
assign zext_ln18341_fu_1117_p1 = empty_264_fu_1112_p2;
assign zext_ln18343_1_fu_1291_p1 = add_ln18343_fu_1285_p2;
assign zext_ln18343_fu_1281_p1 = add_ln18319_1_fu_1276_p2;
assign zext_ln18349_1_fu_1133_p1 = lshr_ln32_reg_1456;
assign zext_ln18349_2_fu_1239_p1 = tmp_200_fu_1232_p3;
assign zext_ln18349_3_fu_1329_p1 = lshr_ln33_reg_1467_pp0_iter1_reg;
assign zext_ln18349_4_fu_1338_p1 = add_ln18349_1_fu_1332_p2;
assign zext_ln18349_fu_1083_p1 = tmp_196_fu_1076_p3;
assign zext_ln18807_cast_cast_cast_cast_fu_698_p3 = ((tmp_192_fu_690_p3[0:0] == 1'b1) ? 6'd28 : 6'd0);
always @ (posedge ap_clk) begin
    p_udiv24_i_cast_cast_cast_cast_reg_1419[0] <= 1'b0;
    p_udiv24_i_cast_cast_cast_cast_reg_1419[4] <= 1'b0;
    trunc_ln18807_cast_cast_cast_cast_reg_1424[3] <= 1'b0;
    trunc_ln18807_cast_cast_cast_cast_reg_1424_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
