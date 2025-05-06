
module forward_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20614_1_proc_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,empty,idxprom_i1661,zext_ln20828_1,zext_ln20828,v16142_address0,v16142_ce0,v16142_we0,v16142_d0,v16142_1_address0,v16142_1_ce0,v16142_1_we0,v16142_1_d0,v16142_2_address0,v16142_2_ce0,v16142_2_we0,v16142_2_d0,v16142_3_address0,v16142_3_ce0,v16142_3_we0,v16142_3_d0,v16142_4_address0,v16142_4_ce0,v16142_4_we0,v16142_4_d0,v16142_5_address0,v16142_5_ce0,v16142_5_we0,v16142_5_d0,v16142_6_address0,v16142_6_ce0,v16142_6_we0,v16142_6_d0,v16142_7_address0,v16142_7_ce0,v16142_7_we0,v16142_7_d0,v16142_8_address0,v16142_8_ce0,v16142_8_we0,v16142_8_d0,v16142_9_address0,v16142_9_ce0,v16142_9_we0,v16142_9_d0,v16142_10_address0,v16142_10_ce0,v16142_10_we0,v16142_10_d0,v16142_11_address0,v16142_11_ce0,v16142_11_we0,v16142_11_d0,v16142_12_address0,v16142_12_ce0,v16142_12_we0,v16142_12_d0,v16142_13_address0,v16142_13_ce0,v16142_13_we0,v16142_13_d0,v16142_14_address0,v16142_14_ce0,v16142_14_we0,v16142_14_d0,v16142_15_address0,v16142_15_ce0,v16142_15_we0,v16142_15_d0,v16141_15_address0,v16141_15_ce0,v16141_15_q0,v16140_7_address0,v16140_7_ce0,v16140_7_q0,v16141_14_address0,v16141_14_ce0,v16141_14_q0,v16140_6_address0,v16140_6_ce0,v16140_6_q0,v16141_13_address0,v16141_13_ce0,v16141_13_q0,v16140_5_address0,v16140_5_ce0,v16140_5_q0,v16141_12_address0,v16141_12_ce0,v16141_12_q0,v16140_4_address0,v16140_4_ce0,v16140_4_q0,v16141_11_address0,v16141_11_ce0,v16141_11_q0,v16140_3_address0,v16140_3_ce0,v16140_3_q0,v16141_10_address0,v16141_10_ce0,v16141_10_q0,v16140_2_address0,v16140_2_ce0,v16140_2_q0,v16141_9_address0,v16141_9_ce0,v16141_9_q0,v16140_1_address0,v16140_1_ce0,v16140_1_q0,v16141_8_address0,v16141_8_ce0,v16141_8_q0,v16140_address0,v16140_ce0,v16140_q0,v16141_7_address0,v16141_7_ce0,v16141_7_q0,v16141_6_address0,v16141_6_ce0,v16141_6_q0,v16141_5_address0,v16141_5_ce0,v16141_5_q0,v16141_4_address0,v16141_4_ce0,v16141_4_q0,v16141_3_address0,v16141_3_ce0,v16141_3_q0,v16141_2_address0,v16141_2_ce0,v16141_2_q0,v16141_1_address0,v16141_1_ce0,v16141_1_q0,v16141_address0,v16141_ce0,v16141_q0,brmerge130_i,brmerge132_i);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] rem4;
input  [0:0] empty;
input  [2:0] idxprom_i1661;
input  [1:0] zext_ln20828_1;
input  [1:0] zext_ln20828;
output  [9:0] v16142_address0;
output   v16142_ce0;
output   v16142_we0;
output  [7:0] v16142_d0;
output  [9:0] v16142_1_address0;
output   v16142_1_ce0;
output   v16142_1_we0;
output  [7:0] v16142_1_d0;
output  [9:0] v16142_2_address0;
output   v16142_2_ce0;
output   v16142_2_we0;
output  [7:0] v16142_2_d0;
output  [9:0] v16142_3_address0;
output   v16142_3_ce0;
output   v16142_3_we0;
output  [7:0] v16142_3_d0;
output  [9:0] v16142_4_address0;
output   v16142_4_ce0;
output   v16142_4_we0;
output  [7:0] v16142_4_d0;
output  [9:0] v16142_5_address0;
output   v16142_5_ce0;
output   v16142_5_we0;
output  [7:0] v16142_5_d0;
output  [9:0] v16142_6_address0;
output   v16142_6_ce0;
output   v16142_6_we0;
output  [7:0] v16142_6_d0;
output  [9:0] v16142_7_address0;
output   v16142_7_ce0;
output   v16142_7_we0;
output  [7:0] v16142_7_d0;
output  [9:0] v16142_8_address0;
output   v16142_8_ce0;
output   v16142_8_we0;
output  [7:0] v16142_8_d0;
output  [9:0] v16142_9_address0;
output   v16142_9_ce0;
output   v16142_9_we0;
output  [7:0] v16142_9_d0;
output  [9:0] v16142_10_address0;
output   v16142_10_ce0;
output   v16142_10_we0;
output  [7:0] v16142_10_d0;
output  [9:0] v16142_11_address0;
output   v16142_11_ce0;
output   v16142_11_we0;
output  [7:0] v16142_11_d0;
output  [9:0] v16142_12_address0;
output   v16142_12_ce0;
output   v16142_12_we0;
output  [7:0] v16142_12_d0;
output  [9:0] v16142_13_address0;
output   v16142_13_ce0;
output   v16142_13_we0;
output  [7:0] v16142_13_d0;
output  [9:0] v16142_14_address0;
output   v16142_14_ce0;
output   v16142_14_we0;
output  [7:0] v16142_14_d0;
output  [9:0] v16142_15_address0;
output   v16142_15_ce0;
output   v16142_15_we0;
output  [7:0] v16142_15_d0;
output  [9:0] v16141_15_address0;
output   v16141_15_ce0;
input  [7:0] v16141_15_q0;
output  [6:0] v16140_7_address0;
output   v16140_7_ce0;
input  [7:0] v16140_7_q0;
output  [9:0] v16141_14_address0;
output   v16141_14_ce0;
input  [7:0] v16141_14_q0;
output  [6:0] v16140_6_address0;
output   v16140_6_ce0;
input  [7:0] v16140_6_q0;
output  [9:0] v16141_13_address0;
output   v16141_13_ce0;
input  [7:0] v16141_13_q0;
output  [6:0] v16140_5_address0;
output   v16140_5_ce0;
input  [7:0] v16140_5_q0;
output  [9:0] v16141_12_address0;
output   v16141_12_ce0;
input  [7:0] v16141_12_q0;
output  [6:0] v16140_4_address0;
output   v16140_4_ce0;
input  [7:0] v16140_4_q0;
output  [9:0] v16141_11_address0;
output   v16141_11_ce0;
input  [7:0] v16141_11_q0;
output  [6:0] v16140_3_address0;
output   v16140_3_ce0;
input  [7:0] v16140_3_q0;
output  [9:0] v16141_10_address0;
output   v16141_10_ce0;
input  [7:0] v16141_10_q0;
output  [6:0] v16140_2_address0;
output   v16140_2_ce0;
input  [7:0] v16140_2_q0;
output  [9:0] v16141_9_address0;
output   v16141_9_ce0;
input  [7:0] v16141_9_q0;
output  [6:0] v16140_1_address0;
output   v16140_1_ce0;
input  [7:0] v16140_1_q0;
output  [9:0] v16141_8_address0;
output   v16141_8_ce0;
input  [7:0] v16141_8_q0;
output  [6:0] v16140_address0;
output   v16140_ce0;
input  [7:0] v16140_q0;
output  [9:0] v16141_7_address0;
output   v16141_7_ce0;
input  [7:0] v16141_7_q0;
output  [9:0] v16141_6_address0;
output   v16141_6_ce0;
input  [7:0] v16141_6_q0;
output  [9:0] v16141_5_address0;
output   v16141_5_ce0;
input  [7:0] v16141_5_q0;
output  [9:0] v16141_4_address0;
output   v16141_4_ce0;
input  [7:0] v16141_4_q0;
output  [9:0] v16141_3_address0;
output   v16141_3_ce0;
input  [7:0] v16141_3_q0;
output  [9:0] v16141_2_address0;
output   v16141_2_ce0;
input  [7:0] v16141_2_q0;
output  [9:0] v16141_1_address0;
output   v16141_1_ce0;
input  [7:0] v16141_1_q0;
output  [9:0] v16141_address0;
output   v16141_ce0;
input  [7:0] v16141_q0;
input  [0:0] brmerge130_i;
input  [0:0] brmerge132_i;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln20614_fu_1074_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [2:0] v16304_0144_address0;
wire   [7:0] v16304_0144_q0;
wire   [2:0] v16304_2146_address0;
wire   [7:0] v16304_2146_q0;
wire   [8:0] v16303_0_address0;
wire  signed [7:0] v16303_0_q0;
wire   [2:0] v16304_1145_address0;
wire   [7:0] v16304_1145_q0;
wire   [2:0] v16304_3147_address0;
wire   [7:0] v16304_3147_q0;
wire   [8:0] v16303_1_address0;
wire  signed [7:0] v16303_1_q0;
reg   [0:0] icmp_ln20615279_reg_862;
reg   [0:0] icmp_ln20615279_reg_862_pp0_iter1_reg;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln20616278_reg_873;
wire   [0:0] brmerge132_i_read_reg_1994;
wire   [8:0] zext_ln20828_cast_fu_884_p1;
reg   [8:0] zext_ln20828_cast_reg_2034;
wire   [7:0] zext_ln20828_1_cast_fu_888_p1;
reg   [7:0] zext_ln20828_1_cast_reg_2040;
wire   [2:0] lshr_ln_fu_944_p4;
reg   [2:0] lshr_ln_reg_2046;
reg   [2:0] lshr_ln_reg_2046_pp0_iter1_reg;
reg   [2:0] lshr_ln_reg_2046_pp0_iter2_reg;
reg   [2:0] lshr_ln_reg_2046_pp0_iter3_reg;
reg   [2:0] tmp_37_reg_2051;
reg   [2:0] tmp_37_reg_2051_pp0_iter1_reg;
reg   [2:0] tmp_37_reg_2051_pp0_iter2_reg;
reg   [2:0] tmp_37_reg_2051_pp0_iter3_reg;
wire   [0:0] empty_265_fu_982_p2;
reg   [0:0] empty_265_reg_2056;
reg   [0:0] empty_265_reg_2056_pp0_iter1_reg;
reg   [0:0] empty_265_reg_2056_pp0_iter2_reg;
reg   [0:0] empty_265_reg_2056_pp0_iter3_reg;
reg   [0:0] empty_265_reg_2056_pp0_iter4_reg;
wire   [5:0] empty_267_fu_1008_p2;
reg   [5:0] empty_267_reg_2062;
wire   [5:0] empty_275_fu_1042_p2;
reg   [5:0] empty_275_reg_2068;
wire   [0:0] icmp_ln20615_fu_1068_p2;
reg   [0:0] icmp_ln20615_reg_2074;
reg   [0:0] icmp_ln20614_reg_2079;
reg   [0:0] icmp_ln20614_reg_2079_pp0_iter1_reg;
reg   [0:0] icmp_ln20614_reg_2079_pp0_iter2_reg;
wire   [8:0] empty_273_fu_1138_p2;
reg   [8:0] empty_273_reg_2083;
wire   [8:0] empty_281_fu_1186_p2;
reg   [8:0] empty_281_reg_2088;
wire   [2:0] lshr_ln29_fu_1249_p4;
reg   [2:0] lshr_ln29_reg_2103;
reg   [2:0] lshr_ln29_reg_2103_pp0_iter3_reg;
wire   [3:0] tmp_39_fu_1259_p4;
reg   [3:0] tmp_39_reg_2108;
reg   [3:0] tmp_39_reg_2108_pp0_iter3_reg;
wire   [0:0] xor_ln20616_fu_1303_p2;
reg   [0:0] xor_ln20616_reg_2153;
wire   [63:0] zext_ln20805_fu_1333_p1;
reg   [63:0] zext_ln20805_reg_2250;
reg   [63:0] zext_ln20805_reg_2250_pp0_iter5_reg;
reg   [0:0] ap_phi_mux_icmp_ln20615279_phi_fu_865_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln20616278_phi_fu_876_p4;
wire   [63:0] p_cast7_fu_1241_p1;
wire   [63:0] p_cast8_fu_1245_p1;
wire   [63:0] zext_ln20621_fu_1277_p1;
wire   [63:0] p_cast23_i_fu_1319_p1;
reg   [9:0] indvar_flatten12273_fu_202;
wire   [9:0] add_ln20614_1_fu_1062_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12273_load;
reg   [4:0] v15911274_fu_206;
wire   [4:0] v15911_fu_936_p3;
reg   [4:0] ap_sig_allocacmp_v15911274_load;
reg   [8:0] indvar_flatten275_fu_210;
wire   [8:0] select_ln20615_1_fu_1054_p3;
reg   [8:0] ap_sig_allocacmp_indvar_flatten275_load;
reg   [5:0] v15912276_fu_214;
wire   [5:0] v15912_fu_1233_p3;
reg   [5:0] v15913277_fu_218;
wire   [5:0] v15913_fu_1289_p2;
reg    v16303_0_ce0_local;
reg    v16303_1_ce0_local;
reg    v16140_7_ce0_local;
reg    v16140_6_ce0_local;
reg    v16140_5_ce0_local;
reg    v16140_4_ce0_local;
reg    v16140_3_ce0_local;
reg    v16140_2_ce0_local;
reg    v16140_1_ce0_local;
reg    v16140_ce0_local;
reg    v16304_0144_ce0_local;
reg    v16304_2146_ce0_local;
reg    v16304_1145_ce0_local;
reg    v16304_3147_ce0_local;
reg    v16141_15_ce0_local;
reg    v16141_14_ce0_local;
reg    v16141_13_ce0_local;
reg    v16141_12_ce0_local;
reg    v16141_11_ce0_local;
reg    v16141_10_ce0_local;
reg    v16141_9_ce0_local;
reg    v16141_8_ce0_local;
reg    v16141_7_ce0_local;
reg    v16141_6_ce0_local;
reg    v16141_5_ce0_local;
reg    v16141_4_ce0_local;
reg    v16141_3_ce0_local;
reg    v16141_2_ce0_local;
reg    v16141_1_ce0_local;
reg    v16141_ce0_local;
reg    v16142_15_we0_local;
wire   [7:0] select_ln20631_fu_1491_p3;
reg    v16142_15_ce0_local;
reg    v16142_14_we0_local;
wire   [7:0] select_ln20643_fu_1510_p3;
reg    v16142_14_ce0_local;
reg    v16142_13_we0_local;
wire   [7:0] select_ln20655_fu_1529_p3;
reg    v16142_13_ce0_local;
reg    v16142_12_we0_local;
wire   [7:0] select_ln20667_fu_1548_p3;
reg    v16142_12_ce0_local;
reg    v16142_11_we0_local;
wire   [7:0] select_ln20679_fu_1567_p3;
reg    v16142_11_ce0_local;
reg    v16142_10_we0_local;
wire   [7:0] select_ln20691_fu_1586_p3;
reg    v16142_10_ce0_local;
reg    v16142_9_we0_local;
wire   [7:0] select_ln20703_fu_1605_p3;
reg    v16142_9_ce0_local;
reg    v16142_8_we0_local;
wire   [7:0] select_ln20715_fu_1624_p3;
reg    v16142_8_ce0_local;
reg    v16142_7_we0_local;
wire   [7:0] select_ln20728_fu_1643_p3;
reg    v16142_7_ce0_local;
reg    v16142_6_we0_local;
wire   [7:0] select_ln20739_fu_1662_p3;
reg    v16142_6_ce0_local;
reg    v16142_5_we0_local;
wire   [7:0] select_ln20750_fu_1681_p3;
reg    v16142_5_ce0_local;
reg    v16142_4_we0_local;
wire   [7:0] select_ln20761_fu_1700_p3;
reg    v16142_4_ce0_local;
reg    v16142_3_we0_local;
wire   [7:0] select_ln20772_fu_1719_p3;
reg    v16142_3_ce0_local;
reg    v16142_2_we0_local;
wire   [7:0] select_ln20783_fu_1738_p3;
reg    v16142_2_ce0_local;
reg    v16142_1_we0_local;
wire   [7:0] select_ln20794_fu_1757_p3;
reg    v16142_1_ce0_local;
reg    v16142_we0_local;
wire   [7:0] select_ln20805_fu_1776_p3;
reg    v16142_ce0_local;
wire   [4:0] add_ln20614_fu_930_p2;
wire   [4:0] empty_263_fu_954_p2;
wire   [1:0] empty_264_fu_978_p1;
wire   [3:0] tmp_s_fu_960_p3;
wire   [5:0] p_shl33_fu_992_p4;
wire   [5:0] tmp_150_cast_fu_988_p1;
wire   [5:0] empty_266_fu_1002_p2;
wire   [5:0] idxprom_i1661_cast_fu_892_p1;
wire   [3:0] tmp_38_fu_1014_p4;
wire   [5:0] p_shl30_fu_1028_p3;
wire   [5:0] tmp_152_cast_fu_1024_p1;
wire   [5:0] empty_274_fu_1036_p2;
wire   [8:0] add_ln20615_1_fu_1048_p2;
wire   [7:0] p_shl32_fu_1098_p3;
wire   [7:0] p_cast1_fu_1095_p1;
wire   [7:0] empty_268_fu_1105_p2;
wire   [7:0] empty_269_fu_1111_p2;
wire   [6:0] empty_270_fu_1116_p1;
wire   [8:0] tmp_186_fu_1120_p3;
wire   [8:0] empty_271_fu_1128_p1;
wire   [8:0] empty_272_fu_1132_p2;
wire   [7:0] p_shl29_fu_1146_p3;
wire   [7:0] p_cast4_fu_1143_p1;
wire   [7:0] empty_276_fu_1153_p2;
wire   [7:0] empty_277_fu_1159_p2;
wire   [6:0] empty_278_fu_1164_p1;
wire   [8:0] tmp_187_fu_1168_p3;
wire   [8:0] empty_279_fu_1176_p1;
wire   [8:0] empty_280_fu_1180_p2;
wire   [5:0] select_ln20614_fu_1197_p3;
wire   [0:0] or_ln20614_fu_1213_p2;
wire   [5:0] select_ln20614_1_fu_1205_p3;
wire   [5:0] add_ln20615_fu_1219_p2;
wire   [5:0] v15913_mid2_fu_1225_p3;
wire   [6:0] tmp_41_fu_1269_p3;
wire   [0:0] tmp_188_fu_1295_p3;
wire   [9:0] tmp_40_fu_1326_p4;
wire   [7:0] v15914_fu_1353_p3;
wire   [7:0] v16004_fu_1360_p3;
wire  signed [7:0] v15924_fu_1479_p0;
wire   [7:0] grp_fu_1783_p3;
wire   [0:0] v15924_fu_1479_p2;
wire  signed [7:0] v15925_1_fu_1484_p1;
wire  signed [7:0] select_ln20631_fu_1491_p1;
wire   [7:0] v15925_1_fu_1484_p3;
wire  signed [7:0] v15935_fu_1498_p0;
wire   [7:0] grp_fu_1794_p3;
wire   [0:0] v15935_fu_1498_p2;
wire  signed [7:0] v15936_1_fu_1503_p1;
wire  signed [7:0] select_ln20643_fu_1510_p1;
wire   [7:0] v15936_1_fu_1503_p3;
wire  signed [7:0] v15946_fu_1517_p0;
wire   [7:0] grp_fu_1805_p3;
wire   [0:0] v15946_fu_1517_p2;
wire  signed [7:0] v15947_1_fu_1522_p1;
wire  signed [7:0] select_ln20655_fu_1529_p1;
wire   [7:0] v15947_1_fu_1522_p3;
wire  signed [7:0] v15957_fu_1536_p0;
wire   [7:0] grp_fu_1816_p3;
wire   [0:0] v15957_fu_1536_p2;
wire  signed [7:0] v15958_1_fu_1541_p1;
wire  signed [7:0] select_ln20667_fu_1548_p1;
wire   [7:0] v15958_1_fu_1541_p3;
wire  signed [7:0] v15968_fu_1555_p0;
wire   [7:0] grp_fu_1827_p3;
wire   [0:0] v15968_fu_1555_p2;
wire  signed [7:0] v15969_1_fu_1560_p1;
wire  signed [7:0] select_ln20679_fu_1567_p1;
wire   [7:0] v15969_1_fu_1560_p3;
wire  signed [7:0] v15979_fu_1574_p0;
wire   [7:0] grp_fu_1838_p3;
wire   [0:0] v15979_fu_1574_p2;
wire  signed [7:0] v15980_1_fu_1579_p1;
wire  signed [7:0] select_ln20691_fu_1586_p1;
wire   [7:0] v15980_1_fu_1579_p3;
wire  signed [7:0] v15990_fu_1593_p0;
wire   [7:0] grp_fu_1849_p3;
wire   [0:0] v15990_fu_1593_p2;
wire  signed [7:0] v15991_1_fu_1598_p1;
wire  signed [7:0] select_ln20703_fu_1605_p1;
wire   [7:0] v15991_1_fu_1598_p3;
wire  signed [7:0] v16001_fu_1612_p0;
wire   [7:0] grp_fu_1860_p3;
wire   [0:0] v16001_fu_1612_p2;
wire  signed [7:0] v16002_1_fu_1617_p1;
wire  signed [7:0] select_ln20715_fu_1624_p1;
wire   [7:0] v16002_1_fu_1617_p3;
wire  signed [7:0] v16013_fu_1631_p0;
wire   [7:0] grp_fu_1871_p3;
wire   [0:0] v16013_fu_1631_p2;
wire  signed [7:0] v16014_1_fu_1636_p1;
wire  signed [7:0] select_ln20728_fu_1643_p1;
wire   [7:0] v16014_1_fu_1636_p3;
wire  signed [7:0] v16023_fu_1650_p0;
wire   [7:0] grp_fu_1882_p3;
wire   [0:0] v16023_fu_1650_p2;
wire  signed [7:0] v16024_1_fu_1655_p1;
wire  signed [7:0] select_ln20739_fu_1662_p1;
wire   [7:0] v16024_1_fu_1655_p3;
wire  signed [7:0] v16033_fu_1669_p0;
wire   [7:0] grp_fu_1893_p3;
wire   [0:0] v16033_fu_1669_p2;
wire  signed [7:0] v16034_1_fu_1674_p1;
wire  signed [7:0] select_ln20750_fu_1681_p1;
wire   [7:0] v16034_1_fu_1674_p3;
wire  signed [7:0] v16043_fu_1688_p0;
wire   [7:0] grp_fu_1904_p3;
wire   [0:0] v16043_fu_1688_p2;
wire  signed [7:0] v16044_1_fu_1693_p1;
wire  signed [7:0] select_ln20761_fu_1700_p1;
wire   [7:0] v16044_1_fu_1693_p3;
wire  signed [7:0] v16053_fu_1707_p0;
wire   [7:0] grp_fu_1915_p3;
wire   [0:0] v16053_fu_1707_p2;
wire  signed [7:0] v16054_1_fu_1712_p1;
wire  signed [7:0] select_ln20772_fu_1719_p1;
wire   [7:0] v16054_1_fu_1712_p3;
wire  signed [7:0] v16063_fu_1726_p0;
wire   [7:0] grp_fu_1926_p3;
wire   [0:0] v16063_fu_1726_p2;
wire  signed [7:0] v16064_1_fu_1731_p1;
wire  signed [7:0] select_ln20783_fu_1738_p1;
wire   [7:0] v16064_1_fu_1731_p3;
wire  signed [7:0] v16073_fu_1745_p0;
wire   [7:0] grp_fu_1937_p3;
wire   [0:0] v16073_fu_1745_p2;
wire  signed [7:0] v16074_1_fu_1750_p1;
wire  signed [7:0] select_ln20794_fu_1757_p1;
wire   [7:0] v16074_1_fu_1750_p3;
wire  signed [7:0] v16083_fu_1764_p0;
wire   [7:0] grp_fu_1948_p3;
wire   [0:0] v16083_fu_1764_p2;
wire  signed [7:0] v16084_1_fu_1769_p1;
wire  signed [7:0] select_ln20805_fu_1776_p1;
wire   [7:0] v16084_1_fu_1769_p3;
wire   [7:0] grp_fu_1783_p2;
wire   [7:0] grp_fu_1794_p2;
wire   [7:0] grp_fu_1805_p2;
wire   [7:0] grp_fu_1816_p2;
wire   [7:0] grp_fu_1827_p2;
wire   [7:0] grp_fu_1838_p2;
wire   [7:0] grp_fu_1849_p2;
wire   [7:0] grp_fu_1860_p2;
wire   [7:0] grp_fu_1871_p2;
wire   [7:0] grp_fu_1882_p2;
wire   [7:0] grp_fu_1893_p2;
wire   [7:0] grp_fu_1904_p2;
wire   [7:0] grp_fu_1915_p2;
wire   [7:0] grp_fu_1926_p2;
wire   [7:0] grp_fu_1937_p2;
wire   [7:0] grp_fu_1948_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1484;
reg    ap_condition_1489;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 indvar_flatten12273_fu_202 = 10'd0;
#0 v15911274_fu_206 = 5'd0;
#0 indvar_flatten275_fu_210 = 9'd0;
#0 v15912276_fu_214 = 6'd0;
#0 v15913277_fu_218 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20614_1_proc_Pipeline_VITbkb #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v16304_0144_U(.clk(ap_clk),.reset(ap_rst),.address0(v16304_0144_address0),.ce0(v16304_0144_ce0_local),.q0(v16304_0144_q0));
forward_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20614_1_proc_Pipeline_VITcud #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v16304_2146_U(.clk(ap_clk),.reset(ap_rst),.address0(v16304_2146_address0),.ce0(v16304_2146_ce0_local),.q0(v16304_2146_q0));
forward_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20614_1_proc_Pipeline_VITdEe #(.DataWidth( 8 ),.AddressRange( 432 ),.AddressWidth( 9 ))
v16303_0_U(.clk(ap_clk),.reset(ap_rst),.address0(v16303_0_address0),.ce0(v16303_0_ce0_local),.q0(v16303_0_q0));
forward_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20614_1_proc_Pipeline_VITeOg #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v16304_1145_U(.clk(ap_clk),.reset(ap_rst),.address0(v16304_1145_address0),.ce0(v16304_1145_ce0_local),.q0(v16304_1145_q0));
forward_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20614_1_proc_Pipeline_VITfYi #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v16304_3147_U(.clk(ap_clk),.reset(ap_rst),.address0(v16304_3147_address0),.ce0(v16304_3147_ce0_local),.q0(v16304_3147_q0));
forward_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20614_1_proc_Pipeline_VITg8j #(.DataWidth( 8 ),.AddressRange( 432 ),.AddressWidth( 9 ))
v16303_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v16303_1_address0),.ce0(v16303_1_ce0_local),.q0(v16303_1_q0));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U137(.clk(ap_clk),.reset(ap_rst),.din0(v16140_7_q0),.din1(v16303_0_q0),.din2(grp_fu_1783_p2),.ce(1'b1),.dout(grp_fu_1783_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U138(.clk(ap_clk),.reset(ap_rst),.din0(v16140_6_q0),.din1(v16303_0_q0),.din2(grp_fu_1794_p2),.ce(1'b1),.dout(grp_fu_1794_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U139(.clk(ap_clk),.reset(ap_rst),.din0(v16140_5_q0),.din1(v16303_0_q0),.din2(grp_fu_1805_p2),.ce(1'b1),.dout(grp_fu_1805_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U140(.clk(ap_clk),.reset(ap_rst),.din0(v16140_4_q0),.din1(v16303_0_q0),.din2(grp_fu_1816_p2),.ce(1'b1),.dout(grp_fu_1816_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U141(.clk(ap_clk),.reset(ap_rst),.din0(v16140_3_q0),.din1(v16303_0_q0),.din2(grp_fu_1827_p2),.ce(1'b1),.dout(grp_fu_1827_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U142(.clk(ap_clk),.reset(ap_rst),.din0(v16140_2_q0),.din1(v16303_0_q0),.din2(grp_fu_1838_p2),.ce(1'b1),.dout(grp_fu_1838_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U143(.clk(ap_clk),.reset(ap_rst),.din0(v16140_1_q0),.din1(v16303_0_q0),.din2(grp_fu_1849_p2),.ce(1'b1),.dout(grp_fu_1849_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U144(.clk(ap_clk),.reset(ap_rst),.din0(v16140_q0),.din1(v16303_0_q0),.din2(grp_fu_1860_p2),.ce(1'b1),.dout(grp_fu_1860_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U145(.clk(ap_clk),.reset(ap_rst),.din0(v16140_7_q0),.din1(v16303_1_q0),.din2(grp_fu_1871_p2),.ce(1'b1),.dout(grp_fu_1871_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U146(.clk(ap_clk),.reset(ap_rst),.din0(v16140_6_q0),.din1(v16303_1_q0),.din2(grp_fu_1882_p2),.ce(1'b1),.dout(grp_fu_1882_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U147(.clk(ap_clk),.reset(ap_rst),.din0(v16140_5_q0),.din1(v16303_1_q0),.din2(grp_fu_1893_p2),.ce(1'b1),.dout(grp_fu_1893_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U148(.clk(ap_clk),.reset(ap_rst),.din0(v16140_4_q0),.din1(v16303_1_q0),.din2(grp_fu_1904_p2),.ce(1'b1),.dout(grp_fu_1904_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U149(.clk(ap_clk),.reset(ap_rst),.din0(v16140_3_q0),.din1(v16303_1_q0),.din2(grp_fu_1915_p2),.ce(1'b1),.dout(grp_fu_1915_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U150(.clk(ap_clk),.reset(ap_rst),.din0(v16140_2_q0),.din1(v16303_1_q0),.din2(grp_fu_1926_p2),.ce(1'b1),.dout(grp_fu_1926_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U151(.clk(ap_clk),.reset(ap_rst),.din0(v16140_1_q0),.din1(v16303_1_q0),.din2(grp_fu_1937_p2),.ce(1'b1),.dout(grp_fu_1937_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U152(.clk(ap_clk),.reset(ap_rst),.din0(v16140_q0),.din1(v16303_1_q0),.din2(grp_fu_1948_p2),.ce(1'b1),.dout(grp_fu_1948_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1489)) begin
            icmp_ln20615279_reg_862 <= icmp_ln20615_reg_2074;
        end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            icmp_ln20615279_reg_862 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln20614_reg_2079_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        icmp_ln20616278_reg_873 <= xor_ln20616_reg_2153;
    end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln20616278_reg_873 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12273_fu_202 <= add_ln20614_1_fu_1062_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12273_fu_202 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten275_fu_210 <= select_ln20615_1_fu_1054_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten275_fu_210 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v15911274_fu_206 <= v15911_fu_936_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v15911274_fu_206 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v15912276_fu_214 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v15912276_fu_214 <= v15912_fu_1233_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v15913277_fu_218 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v15913277_fu_218 <= v15913_fu_1289_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_265_reg_2056 <= empty_265_fu_982_p2;
        empty_265_reg_2056_pp0_iter1_reg <= empty_265_reg_2056;
        empty_267_reg_2062 <= empty_267_fu_1008_p2;
        empty_273_reg_2083 <= empty_273_fu_1138_p2;
        empty_275_reg_2068 <= empty_275_fu_1042_p2;
        empty_281_reg_2088 <= empty_281_fu_1186_p2;
        icmp_ln20614_reg_2079 <= icmp_ln20614_fu_1074_p2;
        icmp_ln20614_reg_2079_pp0_iter1_reg <= icmp_ln20614_reg_2079;
        icmp_ln20615279_reg_862_pp0_iter1_reg <= icmp_ln20615279_reg_862;
        lshr_ln_reg_2046 <= {{v15911_fu_936_p3[3:1]}};
        lshr_ln_reg_2046_pp0_iter1_reg <= lshr_ln_reg_2046;
        tmp_37_reg_2051 <= {{empty_263_fu_954_p2[4:2]}};
        tmp_37_reg_2051_pp0_iter1_reg <= tmp_37_reg_2051;
        zext_ln20828_1_cast_reg_2040[1 : 0] <= zext_ln20828_1_cast_fu_888_p1[1 : 0];
        zext_ln20828_cast_reg_2034[1 : 0] <= zext_ln20828_cast_fu_884_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        empty_265_reg_2056_pp0_iter2_reg <= empty_265_reg_2056_pp0_iter1_reg;
        empty_265_reg_2056_pp0_iter3_reg <= empty_265_reg_2056_pp0_iter2_reg;
        empty_265_reg_2056_pp0_iter4_reg <= empty_265_reg_2056_pp0_iter3_reg;
        icmp_ln20614_reg_2079_pp0_iter2_reg <= icmp_ln20614_reg_2079_pp0_iter1_reg;
        lshr_ln29_reg_2103 <= {{v15913_mid2_fu_1225_p3[4:2]}};
        lshr_ln29_reg_2103_pp0_iter3_reg <= lshr_ln29_reg_2103;
        lshr_ln_reg_2046_pp0_iter2_reg <= lshr_ln_reg_2046_pp0_iter1_reg;
        lshr_ln_reg_2046_pp0_iter3_reg <= lshr_ln_reg_2046_pp0_iter2_reg;
        tmp_37_reg_2051_pp0_iter2_reg <= tmp_37_reg_2051_pp0_iter1_reg;
        tmp_37_reg_2051_pp0_iter3_reg <= tmp_37_reg_2051_pp0_iter2_reg;
        tmp_39_reg_2108 <= {{v15912_fu_1233_p3[4:1]}};
        tmp_39_reg_2108_pp0_iter3_reg <= tmp_39_reg_2108;
        zext_ln20805_reg_2250[9 : 0] <= zext_ln20805_fu_1333_p1[9 : 0];
        zext_ln20805_reg_2250_pp0_iter5_reg[9 : 0] <= zext_ln20805_reg_2250[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln20615_reg_2074 <= icmp_ln20615_fu_1068_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        xor_ln20616_reg_2153 <= xor_ln20616_fu_1303_p2;
    end
end
always @ (*) begin
    if (((icmp_ln20614_fu_1074_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1484)) begin
            ap_phi_mux_icmp_ln20615279_phi_fu_865_p4 = icmp_ln20615_reg_2074;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln20615279_phi_fu_865_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln20615279_phi_fu_865_p4 = icmp_ln20615_reg_2074;
        end
    end else begin
        ap_phi_mux_icmp_ln20615279_phi_fu_865_p4 = icmp_ln20615_reg_2074;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln20614_reg_2079_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_icmp_ln20616278_phi_fu_876_p4 = xor_ln20616_reg_2153;
    end else begin
        ap_phi_mux_icmp_ln20616278_phi_fu_876_p4 = icmp_ln20616278_reg_873;
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
        ap_sig_allocacmp_indvar_flatten12273_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12273_load = indvar_flatten12273_fu_202;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten275_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten275_load = indvar_flatten275_fu_210;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15911274_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v15911274_load = v15911274_fu_206;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16140_1_ce0_local = 1'b1;
    end else begin
        v16140_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16140_2_ce0_local = 1'b1;
    end else begin
        v16140_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16140_3_ce0_local = 1'b1;
    end else begin
        v16140_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16140_4_ce0_local = 1'b1;
    end else begin
        v16140_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16140_5_ce0_local = 1'b1;
    end else begin
        v16140_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16140_6_ce0_local = 1'b1;
    end else begin
        v16140_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16140_7_ce0_local = 1'b1;
    end else begin
        v16140_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16140_ce0_local = 1'b1;
    end else begin
        v16140_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_10_ce0_local = 1'b1;
    end else begin
        v16141_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_11_ce0_local = 1'b1;
    end else begin
        v16141_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_12_ce0_local = 1'b1;
    end else begin
        v16141_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_13_ce0_local = 1'b1;
    end else begin
        v16141_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_14_ce0_local = 1'b1;
    end else begin
        v16141_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_15_ce0_local = 1'b1;
    end else begin
        v16141_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_1_ce0_local = 1'b1;
    end else begin
        v16141_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_2_ce0_local = 1'b1;
    end else begin
        v16141_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_3_ce0_local = 1'b1;
    end else begin
        v16141_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_4_ce0_local = 1'b1;
    end else begin
        v16141_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_5_ce0_local = 1'b1;
    end else begin
        v16141_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_6_ce0_local = 1'b1;
    end else begin
        v16141_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_7_ce0_local = 1'b1;
    end else begin
        v16141_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_8_ce0_local = 1'b1;
    end else begin
        v16141_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_9_ce0_local = 1'b1;
    end else begin
        v16141_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16141_ce0_local = 1'b1;
    end else begin
        v16141_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_10_ce0_local = 1'b1;
    end else begin
        v16142_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_10_we0_local = 1'b1;
    end else begin
        v16142_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_11_ce0_local = 1'b1;
    end else begin
        v16142_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_11_we0_local = 1'b1;
    end else begin
        v16142_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_12_ce0_local = 1'b1;
    end else begin
        v16142_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_12_we0_local = 1'b1;
    end else begin
        v16142_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_13_ce0_local = 1'b1;
    end else begin
        v16142_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_13_we0_local = 1'b1;
    end else begin
        v16142_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_14_ce0_local = 1'b1;
    end else begin
        v16142_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_14_we0_local = 1'b1;
    end else begin
        v16142_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_15_ce0_local = 1'b1;
    end else begin
        v16142_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_15_we0_local = 1'b1;
    end else begin
        v16142_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_1_ce0_local = 1'b1;
    end else begin
        v16142_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_1_we0_local = 1'b1;
    end else begin
        v16142_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_2_ce0_local = 1'b1;
    end else begin
        v16142_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_2_we0_local = 1'b1;
    end else begin
        v16142_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_3_ce0_local = 1'b1;
    end else begin
        v16142_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_3_we0_local = 1'b1;
    end else begin
        v16142_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_4_ce0_local = 1'b1;
    end else begin
        v16142_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_4_we0_local = 1'b1;
    end else begin
        v16142_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_5_ce0_local = 1'b1;
    end else begin
        v16142_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_5_we0_local = 1'b1;
    end else begin
        v16142_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_6_ce0_local = 1'b1;
    end else begin
        v16142_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_6_we0_local = 1'b1;
    end else begin
        v16142_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_7_ce0_local = 1'b1;
    end else begin
        v16142_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_7_we0_local = 1'b1;
    end else begin
        v16142_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_8_ce0_local = 1'b1;
    end else begin
        v16142_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_8_we0_local = 1'b1;
    end else begin
        v16142_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_9_ce0_local = 1'b1;
    end else begin
        v16142_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_9_we0_local = 1'b1;
    end else begin
        v16142_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_ce0_local = 1'b1;
    end else begin
        v16142_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v16142_we0_local = 1'b1;
    end else begin
        v16142_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16303_0_ce0_local = 1'b1;
    end else begin
        v16303_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16303_1_ce0_local = 1'b1;
    end else begin
        v16303_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16304_0144_ce0_local = 1'b1;
    end else begin
        v16304_0144_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16304_1145_ce0_local = 1'b1;
    end else begin
        v16304_1145_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16304_2146_ce0_local = 1'b1;
    end else begin
        v16304_2146_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v16304_3147_ce0_local = 1'b1;
    end else begin
        v16304_3147_ce0_local = 1'b0;
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
assign add_ln20614_1_fu_1062_p2 = (ap_sig_allocacmp_indvar_flatten12273_load + 10'd1);
assign add_ln20614_fu_930_p2 = (ap_sig_allocacmp_v15911274_load + 5'd2);
assign add_ln20615_1_fu_1048_p2 = (ap_sig_allocacmp_indvar_flatten275_load + 9'd1);
assign add_ln20615_fu_1219_p2 = (select_ln20614_fu_1197_p3 + 6'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1484 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln20614_reg_2079 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1489 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln20614_reg_2079 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge132_i_read_reg_1994 = brmerge132_i;
assign empty_263_fu_954_p2 = (v15911_fu_936_p3 + rem4);
assign empty_264_fu_978_p1 = empty_263_fu_954_p2[1:0];
assign empty_265_fu_982_p2 = ((empty_264_fu_978_p1 != 2'd0) ? 1'b1 : 1'b0);
assign empty_266_fu_1002_p2 = (p_shl33_fu_992_p4 - tmp_150_cast_fu_988_p1);
assign empty_267_fu_1008_p2 = (empty_266_fu_1002_p2 + idxprom_i1661_cast_fu_892_p1);
assign empty_268_fu_1105_p2 = (p_shl32_fu_1098_p3 - p_cast1_fu_1095_p1);
assign empty_269_fu_1111_p2 = (empty_268_fu_1105_p2 + zext_ln20828_1_cast_reg_2040);
assign empty_270_fu_1116_p1 = empty_269_fu_1111_p2[6:0];
assign empty_271_fu_1128_p1 = empty_269_fu_1111_p2;
assign empty_272_fu_1132_p2 = (tmp_186_fu_1120_p3 - empty_271_fu_1128_p1);
assign empty_273_fu_1138_p2 = (empty_272_fu_1132_p2 + zext_ln20828_cast_reg_2034);
assign empty_274_fu_1036_p2 = (p_shl30_fu_1028_p3 - tmp_152_cast_fu_1024_p1);
assign empty_275_fu_1042_p2 = (empty_274_fu_1036_p2 + idxprom_i1661_cast_fu_892_p1);
assign empty_276_fu_1153_p2 = (p_shl29_fu_1146_p3 - p_cast4_fu_1143_p1);
assign empty_277_fu_1159_p2 = (empty_276_fu_1153_p2 + zext_ln20828_1_cast_reg_2040);
assign empty_278_fu_1164_p1 = empty_277_fu_1159_p2[6:0];
assign empty_279_fu_1176_p1 = empty_277_fu_1159_p2;
assign empty_280_fu_1180_p2 = (tmp_187_fu_1168_p3 - empty_279_fu_1176_p1);
assign empty_281_fu_1186_p2 = (empty_280_fu_1180_p2 + zext_ln20828_cast_reg_2034);
assign grp_fu_1783_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_15_q0 : v15914_fu_1353_p3);
assign grp_fu_1794_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_14_q0 : v15914_fu_1353_p3);
assign grp_fu_1805_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_13_q0 : v15914_fu_1353_p3);
assign grp_fu_1816_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_12_q0 : v15914_fu_1353_p3);
assign grp_fu_1827_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_11_q0 : v15914_fu_1353_p3);
assign grp_fu_1838_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_10_q0 : v15914_fu_1353_p3);
assign grp_fu_1849_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_9_q0 : v15914_fu_1353_p3);
assign grp_fu_1860_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_8_q0 : v15914_fu_1353_p3);
assign grp_fu_1871_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_7_q0 : v16004_fu_1360_p3);
assign grp_fu_1882_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_6_q0 : v16004_fu_1360_p3);
assign grp_fu_1893_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_5_q0 : v16004_fu_1360_p3);
assign grp_fu_1904_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_4_q0 : v16004_fu_1360_p3);
assign grp_fu_1915_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_3_q0 : v16004_fu_1360_p3);
assign grp_fu_1926_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_2_q0 : v16004_fu_1360_p3);
assign grp_fu_1937_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_1_q0 : v16004_fu_1360_p3);
assign grp_fu_1948_p2 = ((brmerge130_i[0:0] == 1'b1) ? v16141_q0 : v16004_fu_1360_p3);
assign icmp_ln20614_fu_1074_p2 = ((ap_sig_allocacmp_indvar_flatten12273_load == 10'd1023) ? 1'b1 : 1'b0);
assign icmp_ln20615_fu_1068_p2 = ((select_ln20615_1_fu_1054_p3 == 9'd128) ? 1'b1 : 1'b0);
assign idxprom_i1661_cast_fu_892_p1 = idxprom_i1661;
assign lshr_ln29_fu_1249_p4 = {{v15913_mid2_fu_1225_p3[4:2]}};
assign lshr_ln_fu_944_p4 = {{v15911_fu_936_p3[3:1]}};
assign or_ln20614_fu_1213_p2 = (icmp_ln20615279_reg_862_pp0_iter1_reg | ap_phi_mux_icmp_ln20616278_phi_fu_876_p4);
assign p_cast1_fu_1095_p1 = empty_267_reg_2062;
assign p_cast23_i_fu_1319_p1 = tmp_37_reg_2051_pp0_iter3_reg;
assign p_cast4_fu_1143_p1 = empty_275_reg_2068;
assign p_cast7_fu_1241_p1 = empty_273_reg_2083;
assign p_cast8_fu_1245_p1 = empty_281_reg_2088;
assign p_shl29_fu_1146_p3 = {{empty_275_reg_2068}, {2'd0}};
assign p_shl30_fu_1028_p3 = {{tmp_38_fu_1014_p4}, {2'd0}};
assign p_shl32_fu_1098_p3 = {{empty_267_reg_2062}, {2'd0}};
assign p_shl33_fu_992_p4 = {{{empty}, {lshr_ln_fu_944_p4}}, {2'd0}};
assign select_ln20614_1_fu_1205_p3 = ((icmp_ln20615279_reg_862_pp0_iter1_reg[0:0] == 1'b1) ? 6'd0 : v15913277_fu_218);
assign select_ln20614_fu_1197_p3 = ((icmp_ln20615279_reg_862_pp0_iter1_reg[0:0] == 1'b1) ? 6'd0 : v15912276_fu_214);
assign select_ln20615_1_fu_1054_p3 = ((ap_phi_mux_icmp_ln20615279_phi_fu_865_p4[0:0] == 1'b1) ? 9'd1 : add_ln20615_1_fu_1048_p2);
assign select_ln20631_fu_1491_p1 = grp_fu_1783_p3;
assign select_ln20631_fu_1491_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20631_fu_1491_p1 : v15925_1_fu_1484_p3);
assign select_ln20643_fu_1510_p1 = grp_fu_1794_p3;
assign select_ln20643_fu_1510_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20643_fu_1510_p1 : v15936_1_fu_1503_p3);
assign select_ln20655_fu_1529_p1 = grp_fu_1805_p3;
assign select_ln20655_fu_1529_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20655_fu_1529_p1 : v15947_1_fu_1522_p3);
assign select_ln20667_fu_1548_p1 = grp_fu_1816_p3;
assign select_ln20667_fu_1548_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20667_fu_1548_p1 : v15958_1_fu_1541_p3);
assign select_ln20679_fu_1567_p1 = grp_fu_1827_p3;
assign select_ln20679_fu_1567_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20679_fu_1567_p1 : v15969_1_fu_1560_p3);
assign select_ln20691_fu_1586_p1 = grp_fu_1838_p3;
assign select_ln20691_fu_1586_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20691_fu_1586_p1 : v15980_1_fu_1579_p3);
assign select_ln20703_fu_1605_p1 = grp_fu_1849_p3;
assign select_ln20703_fu_1605_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20703_fu_1605_p1 : v15991_1_fu_1598_p3);
assign select_ln20715_fu_1624_p1 = grp_fu_1860_p3;
assign select_ln20715_fu_1624_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20715_fu_1624_p1 : v16002_1_fu_1617_p3);
assign select_ln20728_fu_1643_p1 = grp_fu_1871_p3;
assign select_ln20728_fu_1643_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20728_fu_1643_p1 : v16014_1_fu_1636_p3);
assign select_ln20739_fu_1662_p1 = grp_fu_1882_p3;
assign select_ln20739_fu_1662_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20739_fu_1662_p1 : v16024_1_fu_1655_p3);
assign select_ln20750_fu_1681_p1 = grp_fu_1893_p3;
assign select_ln20750_fu_1681_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20750_fu_1681_p1 : v16034_1_fu_1674_p3);
assign select_ln20761_fu_1700_p1 = grp_fu_1904_p3;
assign select_ln20761_fu_1700_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20761_fu_1700_p1 : v16044_1_fu_1693_p3);
assign select_ln20772_fu_1719_p1 = grp_fu_1915_p3;
assign select_ln20772_fu_1719_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20772_fu_1719_p1 : v16054_1_fu_1712_p3);
assign select_ln20783_fu_1738_p1 = grp_fu_1926_p3;
assign select_ln20783_fu_1738_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20783_fu_1738_p1 : v16064_1_fu_1731_p3);
assign select_ln20794_fu_1757_p1 = grp_fu_1937_p3;
assign select_ln20794_fu_1757_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20794_fu_1757_p1 : v16074_1_fu_1750_p3);
assign select_ln20805_fu_1776_p1 = grp_fu_1948_p3;
assign select_ln20805_fu_1776_p3 = ((brmerge132_i[0:0] == 1'b1) ? select_ln20805_fu_1776_p1 : v16084_1_fu_1769_p3);
assign tmp_150_cast_fu_988_p1 = tmp_s_fu_960_p3;
assign tmp_152_cast_fu_1024_p1 = tmp_38_fu_1014_p4;
assign tmp_186_fu_1120_p3 = {{empty_270_fu_1116_p1}, {2'd0}};
assign tmp_187_fu_1168_p3 = {{empty_278_fu_1164_p1}, {2'd0}};
assign tmp_188_fu_1295_p3 = v15913_fu_1289_p2[32'd5];
assign tmp_38_fu_1014_p4 = {{empty_263_fu_954_p2[4:1]}};
assign tmp_39_fu_1259_p4 = {{v15912_fu_1233_p3[4:1]}};
assign tmp_40_fu_1326_p4 = {{{lshr_ln_reg_2046_pp0_iter3_reg}, {tmp_39_reg_2108_pp0_iter3_reg}}, {lshr_ln29_reg_2103_pp0_iter3_reg}};
assign tmp_41_fu_1269_p3 = {{tmp_39_fu_1259_p4}, {lshr_ln29_fu_1249_p4}};
assign tmp_s_fu_960_p3 = {{empty}, {lshr_ln_fu_944_p4}};
assign v15911_fu_936_p3 = ((ap_phi_mux_icmp_ln20615279_phi_fu_865_p4[0:0] == 1'b1) ? add_ln20614_fu_930_p2 : ap_sig_allocacmp_v15911274_load);
assign v15912_fu_1233_p3 = ((or_ln20614_fu_1213_p2[0:0] == 1'b1) ? select_ln20614_fu_1197_p3 : add_ln20615_fu_1219_p2);
assign v15913_fu_1289_p2 = (v15913_mid2_fu_1225_p3 + 6'd4);
assign v15913_mid2_fu_1225_p3 = ((or_ln20614_fu_1213_p2[0:0] == 1'b1) ? select_ln20614_1_fu_1205_p3 : 6'd0);
assign v15914_fu_1353_p3 = ((empty_265_reg_2056_pp0_iter4_reg[0:0] == 1'b1) ? v16304_2146_q0 : v16304_0144_q0);
assign v15924_fu_1479_p0 = grp_fu_1783_p3;
assign v15924_fu_1479_p2 = (($signed(v15924_fu_1479_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v15925_1_fu_1484_p1 = grp_fu_1783_p3;
assign v15925_1_fu_1484_p3 = ((v15924_fu_1479_p2[0:0] == 1'b1) ? v15925_1_fu_1484_p1 : 8'd166);
assign v15935_fu_1498_p0 = grp_fu_1794_p3;
assign v15935_fu_1498_p2 = (($signed(v15935_fu_1498_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v15936_1_fu_1503_p1 = grp_fu_1794_p3;
assign v15936_1_fu_1503_p3 = ((v15935_fu_1498_p2[0:0] == 1'b1) ? v15936_1_fu_1503_p1 : 8'd166);
assign v15946_fu_1517_p0 = grp_fu_1805_p3;
assign v15946_fu_1517_p2 = (($signed(v15946_fu_1517_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v15947_1_fu_1522_p1 = grp_fu_1805_p3;
assign v15947_1_fu_1522_p3 = ((v15946_fu_1517_p2[0:0] == 1'b1) ? v15947_1_fu_1522_p1 : 8'd166);
assign v15957_fu_1536_p0 = grp_fu_1816_p3;
assign v15957_fu_1536_p2 = (($signed(v15957_fu_1536_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v15958_1_fu_1541_p1 = grp_fu_1816_p3;
assign v15958_1_fu_1541_p3 = ((v15957_fu_1536_p2[0:0] == 1'b1) ? v15958_1_fu_1541_p1 : 8'd166);
assign v15968_fu_1555_p0 = grp_fu_1827_p3;
assign v15968_fu_1555_p2 = (($signed(v15968_fu_1555_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v15969_1_fu_1560_p1 = grp_fu_1827_p3;
assign v15969_1_fu_1560_p3 = ((v15968_fu_1555_p2[0:0] == 1'b1) ? v15969_1_fu_1560_p1 : 8'd166);
assign v15979_fu_1574_p0 = grp_fu_1838_p3;
assign v15979_fu_1574_p2 = (($signed(v15979_fu_1574_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v15980_1_fu_1579_p1 = grp_fu_1838_p3;
assign v15980_1_fu_1579_p3 = ((v15979_fu_1574_p2[0:0] == 1'b1) ? v15980_1_fu_1579_p1 : 8'd166);
assign v15990_fu_1593_p0 = grp_fu_1849_p3;
assign v15990_fu_1593_p2 = (($signed(v15990_fu_1593_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v15991_1_fu_1598_p1 = grp_fu_1849_p3;
assign v15991_1_fu_1598_p3 = ((v15990_fu_1593_p2[0:0] == 1'b1) ? v15991_1_fu_1598_p1 : 8'd166);
assign v16001_fu_1612_p0 = grp_fu_1860_p3;
assign v16001_fu_1612_p2 = (($signed(v16001_fu_1612_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v16002_1_fu_1617_p1 = grp_fu_1860_p3;
assign v16002_1_fu_1617_p3 = ((v16001_fu_1612_p2[0:0] == 1'b1) ? v16002_1_fu_1617_p1 : 8'd166);
assign v16004_fu_1360_p3 = ((empty_265_reg_2056_pp0_iter4_reg[0:0] == 1'b1) ? v16304_3147_q0 : v16304_1145_q0);
assign v16013_fu_1631_p0 = grp_fu_1871_p3;
assign v16013_fu_1631_p2 = (($signed(v16013_fu_1631_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v16014_1_fu_1636_p1 = grp_fu_1871_p3;
assign v16014_1_fu_1636_p3 = ((v16013_fu_1631_p2[0:0] == 1'b1) ? v16014_1_fu_1636_p1 : 8'd166);
assign v16023_fu_1650_p0 = grp_fu_1882_p3;
assign v16023_fu_1650_p2 = (($signed(v16023_fu_1650_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v16024_1_fu_1655_p1 = grp_fu_1882_p3;
assign v16024_1_fu_1655_p3 = ((v16023_fu_1650_p2[0:0] == 1'b1) ? v16024_1_fu_1655_p1 : 8'd166);
assign v16033_fu_1669_p0 = grp_fu_1893_p3;
assign v16033_fu_1669_p2 = (($signed(v16033_fu_1669_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v16034_1_fu_1674_p1 = grp_fu_1893_p3;
assign v16034_1_fu_1674_p3 = ((v16033_fu_1669_p2[0:0] == 1'b1) ? v16034_1_fu_1674_p1 : 8'd166);
assign v16043_fu_1688_p0 = grp_fu_1904_p3;
assign v16043_fu_1688_p2 = (($signed(v16043_fu_1688_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v16044_1_fu_1693_p1 = grp_fu_1904_p3;
assign v16044_1_fu_1693_p3 = ((v16043_fu_1688_p2[0:0] == 1'b1) ? v16044_1_fu_1693_p1 : 8'd166);
assign v16053_fu_1707_p0 = grp_fu_1915_p3;
assign v16053_fu_1707_p2 = (($signed(v16053_fu_1707_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v16054_1_fu_1712_p1 = grp_fu_1915_p3;
assign v16054_1_fu_1712_p3 = ((v16053_fu_1707_p2[0:0] == 1'b1) ? v16054_1_fu_1712_p1 : 8'd166);
assign v16063_fu_1726_p0 = grp_fu_1926_p3;
assign v16063_fu_1726_p2 = (($signed(v16063_fu_1726_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v16064_1_fu_1731_p1 = grp_fu_1926_p3;
assign v16064_1_fu_1731_p3 = ((v16063_fu_1726_p2[0:0] == 1'b1) ? v16064_1_fu_1731_p1 : 8'd166);
assign v16073_fu_1745_p0 = grp_fu_1937_p3;
assign v16073_fu_1745_p2 = (($signed(v16073_fu_1745_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v16074_1_fu_1750_p1 = grp_fu_1937_p3;
assign v16074_1_fu_1750_p3 = ((v16073_fu_1745_p2[0:0] == 1'b1) ? v16074_1_fu_1750_p1 : 8'd166);
assign v16083_fu_1764_p0 = grp_fu_1948_p3;
assign v16083_fu_1764_p2 = (($signed(v16083_fu_1764_p0) > $signed(8'd166)) ? 1'b1 : 1'b0);
assign v16084_1_fu_1769_p1 = grp_fu_1948_p3;
assign v16084_1_fu_1769_p3 = ((v16083_fu_1764_p2[0:0] == 1'b1) ? v16084_1_fu_1769_p1 : 8'd166);
assign v16140_1_address0 = zext_ln20621_fu_1277_p1;
assign v16140_1_ce0 = v16140_1_ce0_local;
assign v16140_2_address0 = zext_ln20621_fu_1277_p1;
assign v16140_2_ce0 = v16140_2_ce0_local;
assign v16140_3_address0 = zext_ln20621_fu_1277_p1;
assign v16140_3_ce0 = v16140_3_ce0_local;
assign v16140_4_address0 = zext_ln20621_fu_1277_p1;
assign v16140_4_ce0 = v16140_4_ce0_local;
assign v16140_5_address0 = zext_ln20621_fu_1277_p1;
assign v16140_5_ce0 = v16140_5_ce0_local;
assign v16140_6_address0 = zext_ln20621_fu_1277_p1;
assign v16140_6_ce0 = v16140_6_ce0_local;
assign v16140_7_address0 = zext_ln20621_fu_1277_p1;
assign v16140_7_ce0 = v16140_7_ce0_local;
assign v16140_address0 = zext_ln20621_fu_1277_p1;
assign v16140_ce0 = v16140_ce0_local;
assign v16141_10_address0 = zext_ln20805_fu_1333_p1;
assign v16141_10_ce0 = v16141_10_ce0_local;
assign v16141_11_address0 = zext_ln20805_fu_1333_p1;
assign v16141_11_ce0 = v16141_11_ce0_local;
assign v16141_12_address0 = zext_ln20805_fu_1333_p1;
assign v16141_12_ce0 = v16141_12_ce0_local;
assign v16141_13_address0 = zext_ln20805_fu_1333_p1;
assign v16141_13_ce0 = v16141_13_ce0_local;
assign v16141_14_address0 = zext_ln20805_fu_1333_p1;
assign v16141_14_ce0 = v16141_14_ce0_local;
assign v16141_15_address0 = zext_ln20805_fu_1333_p1;
assign v16141_15_ce0 = v16141_15_ce0_local;
assign v16141_1_address0 = zext_ln20805_fu_1333_p1;
assign v16141_1_ce0 = v16141_1_ce0_local;
assign v16141_2_address0 = zext_ln20805_fu_1333_p1;
assign v16141_2_ce0 = v16141_2_ce0_local;
assign v16141_3_address0 = zext_ln20805_fu_1333_p1;
assign v16141_3_ce0 = v16141_3_ce0_local;
assign v16141_4_address0 = zext_ln20805_fu_1333_p1;
assign v16141_4_ce0 = v16141_4_ce0_local;
assign v16141_5_address0 = zext_ln20805_fu_1333_p1;
assign v16141_5_ce0 = v16141_5_ce0_local;
assign v16141_6_address0 = zext_ln20805_fu_1333_p1;
assign v16141_6_ce0 = v16141_6_ce0_local;
assign v16141_7_address0 = zext_ln20805_fu_1333_p1;
assign v16141_7_ce0 = v16141_7_ce0_local;
assign v16141_8_address0 = zext_ln20805_fu_1333_p1;
assign v16141_8_ce0 = v16141_8_ce0_local;
assign v16141_9_address0 = zext_ln20805_fu_1333_p1;
assign v16141_9_ce0 = v16141_9_ce0_local;
assign v16141_address0 = zext_ln20805_fu_1333_p1;
assign v16141_ce0 = v16141_ce0_local;
assign v16142_10_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_10_ce0 = v16142_10_ce0_local;
assign v16142_10_d0 = select_ln20691_fu_1586_p3;
assign v16142_10_we0 = v16142_10_we0_local;
assign v16142_11_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_11_ce0 = v16142_11_ce0_local;
assign v16142_11_d0 = select_ln20679_fu_1567_p3;
assign v16142_11_we0 = v16142_11_we0_local;
assign v16142_12_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_12_ce0 = v16142_12_ce0_local;
assign v16142_12_d0 = select_ln20667_fu_1548_p3;
assign v16142_12_we0 = v16142_12_we0_local;
assign v16142_13_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_13_ce0 = v16142_13_ce0_local;
assign v16142_13_d0 = select_ln20655_fu_1529_p3;
assign v16142_13_we0 = v16142_13_we0_local;
assign v16142_14_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_14_ce0 = v16142_14_ce0_local;
assign v16142_14_d0 = select_ln20643_fu_1510_p3;
assign v16142_14_we0 = v16142_14_we0_local;
assign v16142_15_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_15_ce0 = v16142_15_ce0_local;
assign v16142_15_d0 = select_ln20631_fu_1491_p3;
assign v16142_15_we0 = v16142_15_we0_local;
assign v16142_1_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_1_ce0 = v16142_1_ce0_local;
assign v16142_1_d0 = select_ln20794_fu_1757_p3;
assign v16142_1_we0 = v16142_1_we0_local;
assign v16142_2_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_2_ce0 = v16142_2_ce0_local;
assign v16142_2_d0 = select_ln20783_fu_1738_p3;
assign v16142_2_we0 = v16142_2_we0_local;
assign v16142_3_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_3_ce0 = v16142_3_ce0_local;
assign v16142_3_d0 = select_ln20772_fu_1719_p3;
assign v16142_3_we0 = v16142_3_we0_local;
assign v16142_4_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_4_ce0 = v16142_4_ce0_local;
assign v16142_4_d0 = select_ln20761_fu_1700_p3;
assign v16142_4_we0 = v16142_4_we0_local;
assign v16142_5_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_5_ce0 = v16142_5_ce0_local;
assign v16142_5_d0 = select_ln20750_fu_1681_p3;
assign v16142_5_we0 = v16142_5_we0_local;
assign v16142_6_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_6_ce0 = v16142_6_ce0_local;
assign v16142_6_d0 = select_ln20739_fu_1662_p3;
assign v16142_6_we0 = v16142_6_we0_local;
assign v16142_7_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_7_ce0 = v16142_7_ce0_local;
assign v16142_7_d0 = select_ln20728_fu_1643_p3;
assign v16142_7_we0 = v16142_7_we0_local;
assign v16142_8_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_8_ce0 = v16142_8_ce0_local;
assign v16142_8_d0 = select_ln20715_fu_1624_p3;
assign v16142_8_we0 = v16142_8_we0_local;
assign v16142_9_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_9_ce0 = v16142_9_ce0_local;
assign v16142_9_d0 = select_ln20703_fu_1605_p3;
assign v16142_9_we0 = v16142_9_we0_local;
assign v16142_address0 = zext_ln20805_reg_2250_pp0_iter5_reg;
assign v16142_ce0 = v16142_ce0_local;
assign v16142_d0 = select_ln20805_fu_1776_p3;
assign v16142_we0 = v16142_we0_local;
assign v16303_0_address0 = p_cast7_fu_1241_p1;
assign v16303_1_address0 = p_cast8_fu_1245_p1;
assign v16304_0144_address0 = p_cast23_i_fu_1319_p1;
assign v16304_1145_address0 = p_cast23_i_fu_1319_p1;
assign v16304_2146_address0 = p_cast23_i_fu_1319_p1;
assign v16304_3147_address0 = p_cast23_i_fu_1319_p1;
assign xor_ln20616_fu_1303_p2 = (tmp_188_fu_1295_p3 ^ 1'd1);
assign zext_ln20621_fu_1277_p1 = tmp_41_fu_1269_p3;
assign zext_ln20805_fu_1333_p1 = tmp_40_fu_1326_p4;
assign zext_ln20828_1_cast_fu_888_p1 = zext_ln20828_1;
assign zext_ln20828_cast_fu_884_p1 = zext_ln20828;
always @ (posedge ap_clk) begin
    zext_ln20828_cast_reg_2034[8:2] <= 7'b0000000;
    zext_ln20828_1_cast_reg_2040[7:2] <= 6'b000000;
    zext_ln20805_reg_2250[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln20805_reg_2250_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
