
module spmv_spmv_Pipeline_spmv_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sext_ln16,sext_ln16_1,val_0_address0,val_0_ce0,val_0_q0,val_0_address1,val_0_ce1,val_0_q1,val_1_address0,val_1_ce0,val_1_q0,val_1_address1,val_1_ce1,val_1_q1,val_2_address0,val_2_ce0,val_2_q0,val_2_address1,val_2_ce1,val_2_q1,val_3_address0,val_3_ce0,val_3_q0,val_3_address1,val_3_ce1,val_3_q1,val_4_address0,val_4_ce0,val_4_q0,val_4_address1,val_4_ce1,val_4_q1,val_5_address0,val_5_ce0,val_5_q0,val_5_address1,val_5_ce1,val_5_q1,val_6_address0,val_6_ce0,val_6_q0,val_6_address1,val_6_ce1,val_6_q1,val_7_address0,val_7_ce0,val_7_q0,val_7_address1,val_7_ce1,val_7_q1,cols_address0,cols_ce0,cols_q0,cols_address1,cols_ce1,cols_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,vec_2_address0,vec_2_ce0,vec_2_q0,vec_2_address1,vec_2_ce1,vec_2_q1,vec_3_address0,vec_3_ce0,vec_3_q0,vec_3_address1,vec_3_ce1,vec_3_q1,vec_4_address0,vec_4_ce0,vec_4_q0,vec_4_address1,vec_4_ce1,vec_4_q1,vec_5_address0,vec_5_ce0,vec_5_q0,vec_5_address1,vec_5_ce1,vec_5_q1,vec_6_address0,vec_6_ce0,vec_6_q0,vec_6_address1,vec_6_ce1,vec_6_q1,vec_7_address0,vec_7_ce0,vec_7_q0,vec_7_address1,vec_7_ce1,vec_7_q1,tmp_end,sum_out,sum_out_ap_vld,sum_3_out,sum_3_out_ap_vld,sum_2_out,sum_2_out_ap_vld,sum_1_out,sum_1_out_ap_vld,ap_return);  
parameter    ap_ST_fsm_state1 = 38'd1;
parameter    ap_ST_fsm_pp0_stage0 = 38'd2;
parameter    ap_ST_fsm_pp0_stage1 = 38'd4;
parameter    ap_ST_fsm_pp0_stage2 = 38'd8;
parameter    ap_ST_fsm_pp0_stage3 = 38'd16;
parameter    ap_ST_fsm_pp0_stage4 = 38'd32;
parameter    ap_ST_fsm_pp0_stage5 = 38'd64;
parameter    ap_ST_fsm_pp0_stage6 = 38'd128;
parameter    ap_ST_fsm_pp0_stage7 = 38'd256;
parameter    ap_ST_fsm_pp0_stage8 = 38'd512;
parameter    ap_ST_fsm_pp0_stage9 = 38'd1024;
parameter    ap_ST_fsm_pp0_stage10 = 38'd2048;
parameter    ap_ST_fsm_pp0_stage11 = 38'd4096;
parameter    ap_ST_fsm_pp0_stage12 = 38'd8192;
parameter    ap_ST_fsm_pp0_stage13 = 38'd16384;
parameter    ap_ST_fsm_pp0_stage14 = 38'd32768;
parameter    ap_ST_fsm_pp0_stage15 = 38'd65536;
parameter    ap_ST_fsm_pp0_stage16 = 38'd131072;
parameter    ap_ST_fsm_pp0_stage17 = 38'd262144;
parameter    ap_ST_fsm_pp0_stage18 = 38'd524288;
parameter    ap_ST_fsm_pp0_stage19 = 38'd1048576;
parameter    ap_ST_fsm_pp0_stage20 = 38'd2097152;
parameter    ap_ST_fsm_pp0_stage21 = 38'd4194304;
parameter    ap_ST_fsm_pp0_stage22 = 38'd8388608;
parameter    ap_ST_fsm_pp0_stage23 = 38'd16777216;
parameter    ap_ST_fsm_pp0_stage24 = 38'd33554432;
parameter    ap_ST_fsm_pp0_stage25 = 38'd67108864;
parameter    ap_ST_fsm_pp0_stage26 = 38'd134217728;
parameter    ap_ST_fsm_pp0_stage27 = 38'd268435456;
parameter    ap_ST_fsm_pp0_stage28 = 38'd536870912;
parameter    ap_ST_fsm_pp0_stage29 = 38'd1073741824;
parameter    ap_ST_fsm_pp0_stage30 = 38'd2147483648;
parameter    ap_ST_fsm_pp0_stage31 = 38'd4294967296;
parameter    ap_ST_fsm_state44 = 38'd8589934592;
parameter    ap_ST_fsm_state45 = 38'd17179869184;
parameter    ap_ST_fsm_state46 = 38'd34359738368;
parameter    ap_ST_fsm_state47 = 38'd68719476736;
parameter    ap_ST_fsm_state48 = 38'd137438953472;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sext_ln16;
input  [31:0] sext_ln16_1;
output  [7:0] val_0_address0;
output   val_0_ce0;
input  [63:0] val_0_q0;
output  [7:0] val_0_address1;
output   val_0_ce1;
input  [63:0] val_0_q1;
output  [7:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [7:0] val_1_address1;
output   val_1_ce1;
input  [63:0] val_1_q1;
output  [7:0] val_2_address0;
output   val_2_ce0;
input  [63:0] val_2_q0;
output  [7:0] val_2_address1;
output   val_2_ce1;
input  [63:0] val_2_q1;
output  [7:0] val_3_address0;
output   val_3_ce0;
input  [63:0] val_3_q0;
output  [7:0] val_3_address1;
output   val_3_ce1;
input  [63:0] val_3_q1;
output  [7:0] val_4_address0;
output   val_4_ce0;
input  [63:0] val_4_q0;
output  [7:0] val_4_address1;
output   val_4_ce1;
input  [63:0] val_4_q1;
output  [7:0] val_5_address0;
output   val_5_ce0;
input  [63:0] val_5_q0;
output  [7:0] val_5_address1;
output   val_5_ce1;
input  [63:0] val_5_q1;
output  [7:0] val_6_address0;
output   val_6_ce0;
input  [63:0] val_6_q0;
output  [7:0] val_6_address1;
output   val_6_ce1;
input  [63:0] val_6_q1;
output  [7:0] val_7_address0;
output   val_7_ce0;
input  [63:0] val_7_q0;
output  [7:0] val_7_address1;
output   val_7_ce1;
input  [63:0] val_7_q1;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [10:0] cols_address1;
output   cols_ce1;
input  [31:0] cols_q1;
output  [5:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [5:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [5:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [5:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [5:0] vec_2_address0;
output   vec_2_ce0;
input  [63:0] vec_2_q0;
output  [5:0] vec_2_address1;
output   vec_2_ce1;
input  [63:0] vec_2_q1;
output  [5:0] vec_3_address0;
output   vec_3_ce0;
input  [63:0] vec_3_q0;
output  [5:0] vec_3_address1;
output   vec_3_ce1;
input  [63:0] vec_3_q1;
output  [5:0] vec_4_address0;
output   vec_4_ce0;
input  [63:0] vec_4_q0;
output  [5:0] vec_4_address1;
output   vec_4_ce1;
input  [63:0] vec_4_q1;
output  [5:0] vec_5_address0;
output   vec_5_ce0;
input  [63:0] vec_5_q0;
output  [5:0] vec_5_address1;
output   vec_5_ce1;
input  [63:0] vec_5_q1;
output  [5:0] vec_6_address0;
output   vec_6_ce0;
input  [63:0] vec_6_q0;
output  [5:0] vec_6_address1;
output   vec_6_ce1;
input  [63:0] vec_6_q1;
output  [5:0] vec_7_address0;
output   vec_7_ce0;
input  [63:0] vec_7_q0;
output  [5:0] vec_7_address1;
output   vec_7_ce1;
input  [63:0] vec_7_q1;
input  [31:0] tmp_end;
output  [63:0] sum_out;
output   sum_out_ap_vld;
output  [63:0] sum_3_out;
output   sum_3_out_ap_vld;
output  [63:0] sum_2_out;
output   sum_2_out_ap_vld;
output  [63:0] sum_1_out;
output   sum_1_out_ap_vld;
output  [1:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] sum_out;
reg sum_out_ap_vld;
reg sum_3_out_ap_vld;
reg sum_2_out_ap_vld;
reg sum_1_out_ap_vld;
reg[1:0] ap_return;
(* fsm_encoding = "none" *) reg   [37:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [32:0] sext_ln16_1_cast_fu_924_p1;
reg  signed [32:0] sext_ln16_1_cast_reg_1767;
reg   [32:0] j_1_reg_1774;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln16_fu_945_p2;
reg   [0:0] icmp_ln16_reg_1783;
reg   [0:0] icmp_ln16_reg_1783_pp0_iter1_reg;
wire   [2:0] trunc_ln16_1_fu_980_p1;
reg   [2:0] trunc_ln16_1_reg_1832;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_fu_1015_p19;
reg   [63:0] tmp_reg_1839;
wire   [2:0] trunc_ln17_fu_1055_p1;
reg   [2:0] trunc_ln17_reg_1844;
wire   [0:0] icmp_ln16_1_fu_1104_p2;
reg   [0:0] icmp_ln16_1_reg_1889;
reg   [0:0] icmp_ln16_1_reg_1889_pp0_iter1_reg;
wire   [0:0] icmp_ln16_2_fu_1141_p2;
reg   [0:0] icmp_ln16_2_reg_1938;
reg   [0:0] icmp_ln16_2_reg_1938_pp0_iter1_reg;
wire   [63:0] tmp_1_fu_1178_p19;
reg   [63:0] tmp_1_reg_1987;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_2_fu_1249_p19;
reg   [63:0] tmp_2_reg_1992;
wire   [2:0] trunc_ln17_1_fu_1288_p1;
reg   [2:0] trunc_ln17_1_reg_1997;
wire   [63:0] tmp_4_fu_1336_p19;
reg   [63:0] tmp_4_reg_2042;
wire   [2:0] trunc_ln17_2_fu_1375_p1;
reg   [2:0] trunc_ln17_2_reg_2047;
wire   [0:0] icmp_ln16_3_fu_1423_p2;
reg   [0:0] icmp_ln16_3_reg_2092;
reg   [0:0] icmp_ln16_3_reg_2092_pp0_iter1_reg;
wire   [63:0] tmp_3_fu_1460_p19;
reg   [63:0] tmp_3_reg_2141;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_5_fu_1531_p19;
reg   [63:0] tmp_5_reg_2146;
wire   [63:0] tmp_6_fu_1602_p19;
reg   [63:0] tmp_6_reg_2151;
wire   [2:0] trunc_ln17_3_fu_1641_p1;
reg   [2:0] trunc_ln17_3_reg_2156;
wire   [63:0] tmp_7_fu_1689_p19;
reg   [63:0] tmp_7_reg_2201;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_896_p2;
reg   [63:0] Si_reg_2206;
wire    ap_CS_fsm_pp0_stage9;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] sum_load_reg_2211;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] Si_1_reg_2217;
reg   [63:0] Si_2_reg_2222;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] Si_3_reg_2227;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [63:0] grp_fu_892_p2;
reg   [63:0] sum_1_reg_2232;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] sum_2_reg_2238;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] sum_3_reg_2244;
reg    ap_enable_reg_pp0_iter1;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg    ap_predicate_tran35to44_state33;
reg    ap_predicate_tran35to45_state33;
reg    ap_predicate_tran35to46_state33;
reg    ap_condition_pp0_flush_enable;
wire    ap_block_pp0_stage1_subdone;
reg   [1:0] UnifiedRetVal_reg_871;
wire    ap_CS_fsm_state47;
wire    ap_CS_fsm_state44;
wire    ap_CS_fsm_state45;
wire    ap_CS_fsm_state46;
wire   [63:0] zext_ln9_fu_965_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16_fu_950_p1;
wire   [63:0] zext_ln17_fu_1059_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln10_1_fu_1092_p1;
wire   [63:0] zext_ln10_fu_1077_p1;
wire   [63:0] zext_ln10_3_fu_1129_p1;
wire   [63:0] zext_ln10_2_fu_1114_p1;
wire   [63:0] zext_ln17_1_fu_1292_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln17_2_fu_1379_p1;
wire   [63:0] zext_ln10_5_fu_1411_p1;
wire   [63:0] zext_ln10_4_fu_1396_p1;
wire   [63:0] zext_ln17_3_fu_1645_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] sum_fu_120;
wire    ap_block_pp0_stage10;
reg   [32:0] j_fu_124;
wire   [32:0] add_ln16_2_fu_1732_p2;
wire  signed [32:0] sext_ln16_cast_fu_928_p1;
reg    val_0_ce0_local;
reg   [7:0] val_0_address0_local;
reg    val_0_ce1_local;
reg   [7:0] val_0_address1_local;
reg    val_1_ce0_local;
reg   [7:0] val_1_address0_local;
reg    val_1_ce1_local;
reg   [7:0] val_1_address1_local;
reg    val_2_ce0_local;
reg   [7:0] val_2_address0_local;
reg    val_2_ce1_local;
reg   [7:0] val_2_address1_local;
reg    val_3_ce0_local;
reg   [7:0] val_3_address0_local;
reg    val_3_ce1_local;
reg   [7:0] val_3_address1_local;
reg    val_4_ce0_local;
reg   [7:0] val_4_address0_local;
reg    val_4_ce1_local;
reg   [7:0] val_4_address1_local;
reg    val_5_ce0_local;
reg   [7:0] val_5_address0_local;
reg    val_5_ce1_local;
reg   [7:0] val_5_address1_local;
reg    val_6_ce0_local;
reg   [7:0] val_6_address0_local;
reg    val_6_ce1_local;
reg   [7:0] val_6_address1_local;
reg    val_7_ce0_local;
reg   [7:0] val_7_address0_local;
reg    val_7_ce1_local;
reg   [7:0] val_7_address1_local;
reg    cols_ce0_local;
reg   [10:0] cols_address0_local;
reg    cols_ce1_local;
reg   [10:0] cols_address1_local;
reg    vec_0_ce0_local;
reg   [5:0] vec_0_address0_local;
reg    vec_0_ce1_local;
reg   [5:0] vec_0_address1_local;
reg    vec_1_ce0_local;
reg   [5:0] vec_1_address0_local;
reg    vec_1_ce1_local;
reg   [5:0] vec_1_address1_local;
reg    vec_2_ce0_local;
reg   [5:0] vec_2_address0_local;
reg    vec_2_ce1_local;
reg   [5:0] vec_2_address1_local;
reg    vec_3_ce0_local;
reg   [5:0] vec_3_address0_local;
reg    vec_3_ce1_local;
reg   [5:0] vec_3_address1_local;
reg    vec_4_ce0_local;
reg   [5:0] vec_4_address0_local;
reg    vec_4_ce1_local;
reg   [5:0] vec_4_address1_local;
reg    vec_5_ce0_local;
reg   [5:0] vec_5_address0_local;
reg    vec_5_ce1_local;
reg   [5:0] vec_5_address1_local;
reg    vec_6_ce0_local;
reg   [5:0] vec_6_address0_local;
reg    vec_6_ce1_local;
reg   [5:0] vec_6_address1_local;
reg    vec_7_ce0_local;
reg   [5:0] vec_7_address0_local;
reg    vec_7_ce1_local;
reg   [5:0] vec_7_address1_local;
reg   [63:0] grp_fu_892_p0;
reg   [63:0] grp_fu_892_p1;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26;
reg   [63:0] grp_fu_896_p0;
reg   [63:0] grp_fu_896_p1;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire   [7:0] lshr_ln9_1_fu_955_p4;
wire   [63:0] tmp_fu_1015_p2;
wire   [63:0] tmp_fu_1015_p4;
wire   [63:0] tmp_fu_1015_p6;
wire   [63:0] tmp_fu_1015_p8;
wire   [63:0] tmp_fu_1015_p10;
wire   [63:0] tmp_fu_1015_p12;
wire   [63:0] tmp_fu_1015_p14;
wire   [63:0] tmp_fu_1015_p16;
wire   [63:0] tmp_fu_1015_p17;
wire   [2:0] tmp_fu_1015_p18;
wire   [5:0] grp_fu_900_p4;
wire   [31:0] trunc_ln16_fu_977_p1;
wire   [31:0] add_ln10_fu_1071_p2;
wire   [7:0] lshr_ln2_fu_1082_p4;
wire   [32:0] add_ln16_fu_1109_p2;
wire   [7:0] lshr_ln10_1_fu_1119_p4;
wire   [63:0] tmp_1_fu_1178_p2;
wire   [63:0] tmp_1_fu_1178_p4;
wire   [63:0] tmp_1_fu_1178_p6;
wire   [63:0] tmp_1_fu_1178_p8;
wire   [63:0] tmp_1_fu_1178_p10;
wire   [63:0] tmp_1_fu_1178_p12;
wire   [63:0] tmp_1_fu_1178_p14;
wire   [63:0] tmp_1_fu_1178_p16;
wire   [63:0] tmp_1_fu_1178_p17;
wire   [63:0] tmp_2_fu_1249_p2;
wire   [63:0] tmp_2_fu_1249_p4;
wire   [63:0] tmp_2_fu_1249_p6;
wire   [63:0] tmp_2_fu_1249_p8;
wire   [63:0] tmp_2_fu_1249_p10;
wire   [63:0] tmp_2_fu_1249_p12;
wire   [63:0] tmp_2_fu_1249_p14;
wire   [63:0] tmp_2_fu_1249_p16;
wire   [63:0] tmp_2_fu_1249_p17;
wire   [5:0] grp_fu_910_p4;
wire   [63:0] tmp_4_fu_1336_p2;
wire   [63:0] tmp_4_fu_1336_p4;
wire   [63:0] tmp_4_fu_1336_p6;
wire   [63:0] tmp_4_fu_1336_p8;
wire   [63:0] tmp_4_fu_1336_p10;
wire   [63:0] tmp_4_fu_1336_p12;
wire   [63:0] tmp_4_fu_1336_p14;
wire   [63:0] tmp_4_fu_1336_p16;
wire   [63:0] tmp_4_fu_1336_p17;
wire   [32:0] add_ln16_1_fu_1391_p2;
wire   [7:0] lshr_ln10_2_fu_1401_p4;
wire   [63:0] tmp_3_fu_1460_p2;
wire   [63:0] tmp_3_fu_1460_p4;
wire   [63:0] tmp_3_fu_1460_p6;
wire   [63:0] tmp_3_fu_1460_p8;
wire   [63:0] tmp_3_fu_1460_p10;
wire   [63:0] tmp_3_fu_1460_p12;
wire   [63:0] tmp_3_fu_1460_p14;
wire   [63:0] tmp_3_fu_1460_p16;
wire   [63:0] tmp_3_fu_1460_p17;
wire   [63:0] tmp_5_fu_1531_p2;
wire   [63:0] tmp_5_fu_1531_p4;
wire   [63:0] tmp_5_fu_1531_p6;
wire   [63:0] tmp_5_fu_1531_p8;
wire   [63:0] tmp_5_fu_1531_p10;
wire   [63:0] tmp_5_fu_1531_p12;
wire   [63:0] tmp_5_fu_1531_p14;
wire   [63:0] tmp_5_fu_1531_p16;
wire   [63:0] tmp_5_fu_1531_p17;
wire   [63:0] tmp_6_fu_1602_p2;
wire   [63:0] tmp_6_fu_1602_p4;
wire   [63:0] tmp_6_fu_1602_p6;
wire   [63:0] tmp_6_fu_1602_p8;
wire   [63:0] tmp_6_fu_1602_p10;
wire   [63:0] tmp_6_fu_1602_p12;
wire   [63:0] tmp_6_fu_1602_p14;
wire   [63:0] tmp_6_fu_1602_p16;
wire   [63:0] tmp_6_fu_1602_p17;
wire   [63:0] tmp_7_fu_1689_p2;
wire   [63:0] tmp_7_fu_1689_p4;
wire   [63:0] tmp_7_fu_1689_p6;
wire   [63:0] tmp_7_fu_1689_p8;
wire   [63:0] tmp_7_fu_1689_p10;
wire   [63:0] tmp_7_fu_1689_p12;
wire   [63:0] tmp_7_fu_1689_p14;
wire   [63:0] tmp_7_fu_1689_p16;
wire   [63:0] tmp_7_fu_1689_p17;
reg   [1:0] ap_return_preg;
wire    ap_CS_fsm_state48;
reg   [37:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
wire    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
wire    ap_block_pp0_stage0_subdone;
reg   [3:0] ap_exit_tran_regpp0;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [2:0] tmp_fu_1015_p1;
wire   [2:0] tmp_fu_1015_p3;
wire   [2:0] tmp_fu_1015_p5;
wire   [2:0] tmp_fu_1015_p7;
wire  signed [2:0] tmp_fu_1015_p9;
wire  signed [2:0] tmp_fu_1015_p11;
wire  signed [2:0] tmp_fu_1015_p13;
wire  signed [2:0] tmp_fu_1015_p15;
wire   [2:0] tmp_1_fu_1178_p1;
wire   [2:0] tmp_1_fu_1178_p3;
wire   [2:0] tmp_1_fu_1178_p5;
wire   [2:0] tmp_1_fu_1178_p7;
wire  signed [2:0] tmp_1_fu_1178_p9;
wire  signed [2:0] tmp_1_fu_1178_p11;
wire  signed [2:0] tmp_1_fu_1178_p13;
wire  signed [2:0] tmp_1_fu_1178_p15;
wire  signed [2:0] tmp_2_fu_1249_p1;
wire   [2:0] tmp_2_fu_1249_p3;
wire   [2:0] tmp_2_fu_1249_p5;
wire   [2:0] tmp_2_fu_1249_p7;
wire   [2:0] tmp_2_fu_1249_p9;
wire  signed [2:0] tmp_2_fu_1249_p11;
wire  signed [2:0] tmp_2_fu_1249_p13;
wire  signed [2:0] tmp_2_fu_1249_p15;
wire  signed [2:0] tmp_4_fu_1336_p1;
wire  signed [2:0] tmp_4_fu_1336_p3;
wire   [2:0] tmp_4_fu_1336_p5;
wire   [2:0] tmp_4_fu_1336_p7;
wire   [2:0] tmp_4_fu_1336_p9;
wire   [2:0] tmp_4_fu_1336_p11;
wire  signed [2:0] tmp_4_fu_1336_p13;
wire  signed [2:0] tmp_4_fu_1336_p15;
wire   [2:0] tmp_3_fu_1460_p1;
wire   [2:0] tmp_3_fu_1460_p3;
wire   [2:0] tmp_3_fu_1460_p5;
wire   [2:0] tmp_3_fu_1460_p7;
wire  signed [2:0] tmp_3_fu_1460_p9;
wire  signed [2:0] tmp_3_fu_1460_p11;
wire  signed [2:0] tmp_3_fu_1460_p13;
wire  signed [2:0] tmp_3_fu_1460_p15;
wire   [2:0] tmp_5_fu_1531_p1;
wire   [2:0] tmp_5_fu_1531_p3;
wire   [2:0] tmp_5_fu_1531_p5;
wire   [2:0] tmp_5_fu_1531_p7;
wire  signed [2:0] tmp_5_fu_1531_p9;
wire  signed [2:0] tmp_5_fu_1531_p11;
wire  signed [2:0] tmp_5_fu_1531_p13;
wire  signed [2:0] tmp_5_fu_1531_p15;
wire  signed [2:0] tmp_6_fu_1602_p1;
wire  signed [2:0] tmp_6_fu_1602_p3;
wire  signed [2:0] tmp_6_fu_1602_p5;
wire   [2:0] tmp_6_fu_1602_p7;
wire   [2:0] tmp_6_fu_1602_p9;
wire   [2:0] tmp_6_fu_1602_p11;
wire   [2:0] tmp_6_fu_1602_p13;
wire  signed [2:0] tmp_6_fu_1602_p15;
wire   [2:0] tmp_7_fu_1689_p1;
wire   [2:0] tmp_7_fu_1689_p3;
wire   [2:0] tmp_7_fu_1689_p5;
wire   [2:0] tmp_7_fu_1689_p7;
wire  signed [2:0] tmp_7_fu_1689_p9;
wire  signed [2:0] tmp_7_fu_1689_p11;
wire  signed [2:0] tmp_7_fu_1689_p13;
wire  signed [2:0] tmp_7_fu_1689_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 38'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 sum_fu_120 = 64'd0;
#0 j_fu_124 = 33'd0;
#0 ap_return_preg = 2'd0;
end
spmv_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_892_p0),.din1(grp_fu_892_p1),.ce(1'b1),.dout(grp_fu_892_p2));
spmv_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_896_p0),.din1(grp_fu_896_p1),.ce(1'b1),.dout(grp_fu_896_p2));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(tmp_fu_1015_p2),.din1(tmp_fu_1015_p4),.din2(tmp_fu_1015_p6),.din3(tmp_fu_1015_p8),.din4(tmp_fu_1015_p10),.din5(tmp_fu_1015_p12),.din6(tmp_fu_1015_p14),.din7(tmp_fu_1015_p16),.def(tmp_fu_1015_p17),.sel(tmp_fu_1015_p18),.dout(tmp_fu_1015_p19));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U4(.din0(tmp_1_fu_1178_p2),.din1(tmp_1_fu_1178_p4),.din2(tmp_1_fu_1178_p6),.din3(tmp_1_fu_1178_p8),.din4(tmp_1_fu_1178_p10),.din5(tmp_1_fu_1178_p12),.din6(tmp_1_fu_1178_p14),.din7(tmp_1_fu_1178_p16),.def(tmp_1_fu_1178_p17),.sel(trunc_ln17_reg_1844),.dout(tmp_1_fu_1178_p19));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U5(.din0(tmp_2_fu_1249_p2),.din1(tmp_2_fu_1249_p4),.din2(tmp_2_fu_1249_p6),.din3(tmp_2_fu_1249_p8),.din4(tmp_2_fu_1249_p10),.din5(tmp_2_fu_1249_p12),.din6(tmp_2_fu_1249_p14),.din7(tmp_2_fu_1249_p16),.def(tmp_2_fu_1249_p17),.sel(trunc_ln16_1_reg_1832),.dout(tmp_2_fu_1249_p19));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U6(.din0(tmp_4_fu_1336_p2),.din1(tmp_4_fu_1336_p4),.din2(tmp_4_fu_1336_p6),.din3(tmp_4_fu_1336_p8),.din4(tmp_4_fu_1336_p10),.din5(tmp_4_fu_1336_p12),.din6(tmp_4_fu_1336_p14),.din7(tmp_4_fu_1336_p16),.def(tmp_4_fu_1336_p17),.sel(trunc_ln16_1_reg_1832),.dout(tmp_4_fu_1336_p19));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U7(.din0(tmp_3_fu_1460_p2),.din1(tmp_3_fu_1460_p4),.din2(tmp_3_fu_1460_p6),.din3(tmp_3_fu_1460_p8),.din4(tmp_3_fu_1460_p10),.din5(tmp_3_fu_1460_p12),.din6(tmp_3_fu_1460_p14),.din7(tmp_3_fu_1460_p16),.def(tmp_3_fu_1460_p17),.sel(trunc_ln17_1_reg_1997),.dout(tmp_3_fu_1460_p19));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U8(.din0(tmp_5_fu_1531_p2),.din1(tmp_5_fu_1531_p4),.din2(tmp_5_fu_1531_p6),.din3(tmp_5_fu_1531_p8),.din4(tmp_5_fu_1531_p10),.din5(tmp_5_fu_1531_p12),.din6(tmp_5_fu_1531_p14),.din7(tmp_5_fu_1531_p16),.def(tmp_5_fu_1531_p17),.sel(trunc_ln17_2_reg_2047),.dout(tmp_5_fu_1531_p19));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U9(.din0(tmp_6_fu_1602_p2),.din1(tmp_6_fu_1602_p4),.din2(tmp_6_fu_1602_p6),.din3(tmp_6_fu_1602_p8),.din4(tmp_6_fu_1602_p10),.din5(tmp_6_fu_1602_p12),.din6(tmp_6_fu_1602_p14),.din7(tmp_6_fu_1602_p16),.def(tmp_6_fu_1602_p17),.sel(trunc_ln16_1_reg_1832),.dout(tmp_6_fu_1602_p19));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U10(.din0(tmp_7_fu_1689_p2),.din1(tmp_7_fu_1689_p4),.din2(tmp_7_fu_1689_p6),.din3(tmp_7_fu_1689_p8),.din4(tmp_7_fu_1689_p10),.din5(tmp_7_fu_1689_p12),.din6(tmp_7_fu_1689_p14),.din7(tmp_7_fu_1689_p16),.def(tmp_7_fu_1689_p17),.sel(trunc_ln17_3_reg_2156),.dout(tmp_7_fu_1689_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 2'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state48)) begin
            ap_return_preg <= UnifiedRetVal_reg_871;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        UnifiedRetVal_reg_871 <= 2'd3;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        UnifiedRetVal_reg_871 <= 2'd2;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        UnifiedRetVal_reg_871 <= 2'd1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        UnifiedRetVal_reg_871 <= 2'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage31_subdone))) begin
        if ((icmp_ln16_reg_1783 == 1'd0)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b1;
        end else if ((ap_predicate_tran35to46_state33 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b1;
        end else if ((ap_predicate_tran35to45_state33 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b0;
        end else if ((ap_predicate_tran35to44_state33 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_fu_124 <= sext_ln16_cast_fu_928_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln16_3_reg_2092 == 1'd1) & (icmp_ln16_2_reg_1938 == 1'd1) & (icmp_ln16_1_reg_1889 == 1'd1) & (icmp_ln16_reg_1783 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        j_fu_124 <= add_ln16_2_fu_1732_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_fu_120 <= 64'd0;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln16_3_reg_2092_pp0_iter1_reg == 1'd1) & (icmp_ln16_2_reg_1938_pp0_iter1_reg == 1'd1) & (icmp_ln16_1_reg_1889_pp0_iter1_reg == 1'd1) & (icmp_ln16_reg_1783_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        sum_fu_120 <= grp_fu_892_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        Si_1_reg_2217 <= grp_fu_896_p2;
        sum_load_reg_2211 <= sum_fu_120;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        Si_2_reg_2222 <= grp_fu_896_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        Si_3_reg_2227 <= grp_fu_896_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        Si_reg_2206 <= grp_fu_896_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln16_1_reg_1889 <= icmp_ln16_1_fu_1104_p2;
        icmp_ln16_1_reg_1889_pp0_iter1_reg <= icmp_ln16_1_reg_1889;
        icmp_ln16_2_reg_1938 <= icmp_ln16_2_fu_1141_p2;
        icmp_ln16_2_reg_1938_pp0_iter1_reg <= icmp_ln16_2_reg_1938;
        tmp_reg_1839 <= tmp_fu_1015_p19;
        trunc_ln16_1_reg_1832 <= trunc_ln16_1_fu_980_p1;
        trunc_ln17_reg_1844 <= trunc_ln17_fu_1055_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln16_3_reg_2092 <= icmp_ln16_3_fu_1423_p2;
        icmp_ln16_3_reg_2092_pp0_iter1_reg <= icmp_ln16_3_reg_2092;
        tmp_1_reg_1987 <= tmp_1_fu_1178_p19;
        tmp_2_reg_1992 <= tmp_2_fu_1249_p19;
        tmp_4_reg_2042 <= tmp_4_fu_1336_p19;
        trunc_ln17_1_reg_1997 <= trunc_ln17_1_fu_1288_p1;
        trunc_ln17_2_reg_2047 <= trunc_ln17_2_fu_1375_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln16_reg_1783 <= icmp_ln16_fu_945_p2;
        icmp_ln16_reg_1783_pp0_iter1_reg <= icmp_ln16_reg_1783;
        j_1_reg_1774 <= j_fu_124;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sext_ln16_1_cast_reg_1767 <= sext_ln16_1_cast_fu_924_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sum_1_reg_2232 <= grp_fu_892_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        sum_2_reg_2238 <= grp_fu_892_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_3_reg_2244 <= grp_fu_892_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_3_reg_2141 <= tmp_3_fu_1460_p19;
        tmp_5_reg_2146 <= tmp_5_fu_1531_p19;
        tmp_6_reg_2151 <= tmp_6_fu_1602_p19;
        trunc_ln17_3_reg_2156 <= trunc_ln17_3_fu_1641_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_7_reg_2201 <= tmp_7_fu_1689_p19;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state44_blk = 1'b0;
assign ap_ST_fsm_state45_blk = 1'b0;
assign ap_ST_fsm_state46_blk = 1'b0;
assign ap_ST_fsm_state47_blk = 1'b0;
assign ap_ST_fsm_state48_blk = 1'b0;
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31) & ((ap_predicate_tran35to46_state33 == 1'b1) | (ap_predicate_tran35to45_state33 == 1'b1) | (ap_predicate_tran35to44_state33 == 1'b1) | (icmp_ln16_reg_1783 == 1'd0)))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state48)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        ap_return = UnifiedRetVal_reg_871;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_address0_local = zext_ln10_2_fu_1114_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cols_address0_local = zext_ln16_fu_950_p1;
        end else begin
            cols_address0_local = 'bx;
        end
    end else begin
        cols_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_address1_local = zext_ln10_4_fu_1396_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_address1_local = zext_ln10_fu_1077_p1;
        end else begin
            cols_address1_local = 'bx;
        end
    end else begin
        cols_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        cols_ce0_local = 1'b1;
    end else begin
        cols_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_ce1_local = 1'b1;
    end else begin
        cols_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_892_p0 = sum_3_reg_2244;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_892_p0 = sum_2_reg_2238;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_892_p0 = sum_1_reg_2232;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_892_p0 = sum_fu_120;
    end else begin
        grp_fu_892_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_892_p1 = Si_3_reg_2227;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_892_p1 = Si_2_reg_2222;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_892_p1 = Si_1_reg_2217;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_892_p1 = Si_reg_2206;
    end else begin
        grp_fu_892_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_896_p0 = tmp_6_reg_2151;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_896_p0 = tmp_4_reg_2042;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_896_p0 = tmp_2_reg_1992;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_896_p0 = tmp_reg_1839;
        end else begin
            grp_fu_896_p0 = 'bx;
        end
    end else begin
        grp_fu_896_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_896_p1 = tmp_7_reg_2201;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_896_p1 = tmp_5_reg_2146;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_896_p1 = tmp_3_reg_2141;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_896_p1 = tmp_1_reg_1987;
        end else begin
            grp_fu_896_p1 = 'bx;
        end
    end else begin
        grp_fu_896_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44))) begin
        sum_1_out_ap_vld = 1'b1;
    end else begin
        sum_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44))) begin
        sum_2_out_ap_vld = 1'b1;
    end else begin
        sum_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        sum_3_out_ap_vld = 1'b1;
    end else begin
        sum_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        sum_out = sum_load_reg_2211;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state47))) begin
        sum_out = sum_fu_120;
    end else begin
        sum_out = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state47))) begin
        sum_out_ap_vld = 1'b1;
    end else begin
        sum_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_0_address0_local = zext_ln10_3_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            val_0_address0_local = zext_ln9_fu_965_p1;
        end else begin
            val_0_address0_local = 'bx;
        end
    end else begin
        val_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            val_0_address1_local = zext_ln10_5_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_0_address1_local = zext_ln10_1_fu_1092_p1;
        end else begin
            val_0_address1_local = 'bx;
        end
    end else begin
        val_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        val_0_ce0_local = 1'b1;
    end else begin
        val_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        val_0_ce1_local = 1'b1;
    end else begin
        val_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_1_address0_local = zext_ln10_3_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            val_1_address0_local = zext_ln9_fu_965_p1;
        end else begin
            val_1_address0_local = 'bx;
        end
    end else begin
        val_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            val_1_address1_local = zext_ln10_5_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_1_address1_local = zext_ln10_1_fu_1092_p1;
        end else begin
            val_1_address1_local = 'bx;
        end
    end else begin
        val_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        val_1_ce0_local = 1'b1;
    end else begin
        val_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        val_1_ce1_local = 1'b1;
    end else begin
        val_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_2_address0_local = zext_ln10_3_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            val_2_address0_local = zext_ln9_fu_965_p1;
        end else begin
            val_2_address0_local = 'bx;
        end
    end else begin
        val_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            val_2_address1_local = zext_ln10_5_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_2_address1_local = zext_ln10_1_fu_1092_p1;
        end else begin
            val_2_address1_local = 'bx;
        end
    end else begin
        val_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        val_2_ce0_local = 1'b1;
    end else begin
        val_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        val_2_ce1_local = 1'b1;
    end else begin
        val_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_3_address0_local = zext_ln10_3_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            val_3_address0_local = zext_ln9_fu_965_p1;
        end else begin
            val_3_address0_local = 'bx;
        end
    end else begin
        val_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            val_3_address1_local = zext_ln10_5_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_3_address1_local = zext_ln10_1_fu_1092_p1;
        end else begin
            val_3_address1_local = 'bx;
        end
    end else begin
        val_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        val_3_ce0_local = 1'b1;
    end else begin
        val_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        val_3_ce1_local = 1'b1;
    end else begin
        val_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_4_address0_local = zext_ln10_3_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            val_4_address0_local = zext_ln9_fu_965_p1;
        end else begin
            val_4_address0_local = 'bx;
        end
    end else begin
        val_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            val_4_address1_local = zext_ln10_5_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_4_address1_local = zext_ln10_1_fu_1092_p1;
        end else begin
            val_4_address1_local = 'bx;
        end
    end else begin
        val_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        val_4_ce0_local = 1'b1;
    end else begin
        val_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        val_4_ce1_local = 1'b1;
    end else begin
        val_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_5_address0_local = zext_ln10_3_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            val_5_address0_local = zext_ln9_fu_965_p1;
        end else begin
            val_5_address0_local = 'bx;
        end
    end else begin
        val_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            val_5_address1_local = zext_ln10_5_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_5_address1_local = zext_ln10_1_fu_1092_p1;
        end else begin
            val_5_address1_local = 'bx;
        end
    end else begin
        val_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        val_5_ce0_local = 1'b1;
    end else begin
        val_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        val_5_ce1_local = 1'b1;
    end else begin
        val_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_6_address0_local = zext_ln10_3_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            val_6_address0_local = zext_ln9_fu_965_p1;
        end else begin
            val_6_address0_local = 'bx;
        end
    end else begin
        val_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            val_6_address1_local = zext_ln10_5_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_6_address1_local = zext_ln10_1_fu_1092_p1;
        end else begin
            val_6_address1_local = 'bx;
        end
    end else begin
        val_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        val_6_ce0_local = 1'b1;
    end else begin
        val_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        val_6_ce1_local = 1'b1;
    end else begin
        val_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_7_address0_local = zext_ln10_3_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            val_7_address0_local = zext_ln9_fu_965_p1;
        end else begin
            val_7_address0_local = 'bx;
        end
    end else begin
        val_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            val_7_address1_local = zext_ln10_5_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_7_address1_local = zext_ln10_1_fu_1092_p1;
        end else begin
            val_7_address1_local = 'bx;
        end
    end else begin
        val_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        val_7_ce0_local = 1'b1;
    end else begin
        val_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        val_7_ce1_local = 1'b1;
    end else begin
        val_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_0_address0_local = zext_ln17_2_fu_1379_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            vec_0_address0_local = zext_ln17_fu_1059_p1;
        end else begin
            vec_0_address0_local = 'bx;
        end
    end else begin
        vec_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_0_address1_local = zext_ln17_3_fu_1645_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_0_address1_local = zext_ln17_1_fu_1292_p1;
        end else begin
            vec_0_address1_local = 'bx;
        end
    end else begin
        vec_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_0_ce0_local = 1'b1;
    end else begin
        vec_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_0_ce1_local = 1'b1;
    end else begin
        vec_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_1_address0_local = zext_ln17_2_fu_1379_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            vec_1_address0_local = zext_ln17_fu_1059_p1;
        end else begin
            vec_1_address0_local = 'bx;
        end
    end else begin
        vec_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_1_address1_local = zext_ln17_3_fu_1645_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_1_address1_local = zext_ln17_1_fu_1292_p1;
        end else begin
            vec_1_address1_local = 'bx;
        end
    end else begin
        vec_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_1_ce0_local = 1'b1;
    end else begin
        vec_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_1_ce1_local = 1'b1;
    end else begin
        vec_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_2_address0_local = zext_ln17_2_fu_1379_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            vec_2_address0_local = zext_ln17_fu_1059_p1;
        end else begin
            vec_2_address0_local = 'bx;
        end
    end else begin
        vec_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_2_address1_local = zext_ln17_3_fu_1645_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_2_address1_local = zext_ln17_1_fu_1292_p1;
        end else begin
            vec_2_address1_local = 'bx;
        end
    end else begin
        vec_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_2_ce0_local = 1'b1;
    end else begin
        vec_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_2_ce1_local = 1'b1;
    end else begin
        vec_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_3_address0_local = zext_ln17_2_fu_1379_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            vec_3_address0_local = zext_ln17_fu_1059_p1;
        end else begin
            vec_3_address0_local = 'bx;
        end
    end else begin
        vec_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_3_address1_local = zext_ln17_3_fu_1645_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_3_address1_local = zext_ln17_1_fu_1292_p1;
        end else begin
            vec_3_address1_local = 'bx;
        end
    end else begin
        vec_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_3_ce0_local = 1'b1;
    end else begin
        vec_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_3_ce1_local = 1'b1;
    end else begin
        vec_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_4_address0_local = zext_ln17_2_fu_1379_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            vec_4_address0_local = zext_ln17_fu_1059_p1;
        end else begin
            vec_4_address0_local = 'bx;
        end
    end else begin
        vec_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_4_address1_local = zext_ln17_3_fu_1645_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_4_address1_local = zext_ln17_1_fu_1292_p1;
        end else begin
            vec_4_address1_local = 'bx;
        end
    end else begin
        vec_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_4_ce0_local = 1'b1;
    end else begin
        vec_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_4_ce1_local = 1'b1;
    end else begin
        vec_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_5_address0_local = zext_ln17_2_fu_1379_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            vec_5_address0_local = zext_ln17_fu_1059_p1;
        end else begin
            vec_5_address0_local = 'bx;
        end
    end else begin
        vec_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_5_address1_local = zext_ln17_3_fu_1645_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_5_address1_local = zext_ln17_1_fu_1292_p1;
        end else begin
            vec_5_address1_local = 'bx;
        end
    end else begin
        vec_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_5_ce0_local = 1'b1;
    end else begin
        vec_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_5_ce1_local = 1'b1;
    end else begin
        vec_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_6_address0_local = zext_ln17_2_fu_1379_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            vec_6_address0_local = zext_ln17_fu_1059_p1;
        end else begin
            vec_6_address0_local = 'bx;
        end
    end else begin
        vec_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_6_address1_local = zext_ln17_3_fu_1645_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_6_address1_local = zext_ln17_1_fu_1292_p1;
        end else begin
            vec_6_address1_local = 'bx;
        end
    end else begin
        vec_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_6_ce0_local = 1'b1;
    end else begin
        vec_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_6_ce1_local = 1'b1;
    end else begin
        vec_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_7_address0_local = zext_ln17_2_fu_1379_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            vec_7_address0_local = zext_ln17_fu_1059_p1;
        end else begin
            vec_7_address0_local = 'bx;
        end
    end else begin
        vec_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            vec_7_address1_local = zext_ln17_3_fu_1645_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_7_address1_local = zext_ln17_1_fu_1292_p1;
        end else begin
            vec_7_address1_local = 'bx;
        end
    end else begin
        vec_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_7_ce0_local = 1'b1;
    end else begin
        vec_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        vec_7_ce1_local = 1'b1;
    end else begin
        vec_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_exit_tran_regpp0 == 4'd3))) begin
                ap_NS_fsm = ap_ST_fsm_state47;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_exit_tran_regpp0 == 4'd2))) begin
                ap_NS_fsm = ap_ST_fsm_state46;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_exit_tran_regpp0 == 4'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state45;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_exit_tran_regpp0 == 4'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state44;
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
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln10_fu_1071_p2 = (trunc_ln16_fu_977_p1 + 32'd1);
assign add_ln16_1_fu_1391_p2 = (j_1_reg_1774 + 33'd3);
assign add_ln16_2_fu_1732_p2 = (j_1_reg_1774 + 33'd4);
assign add_ln16_fu_1109_p2 = (j_1_reg_1774 + 33'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state45 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_state46 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state47 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_state48 = ap_CS_fsm[32'd37];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
always @ (*) begin
    ap_predicate_tran35to44_state33 = ((icmp_ln16_3_reg_2092 == 1'd0) & (icmp_ln16_2_reg_1938 == 1'd1) & (icmp_ln16_1_reg_1889 == 1'd1) & (icmp_ln16_reg_1783 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran35to45_state33 = ((icmp_ln16_2_reg_1938 == 1'd0) & (icmp_ln16_1_reg_1889 == 1'd1) & (icmp_ln16_reg_1783 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran35to46_state33 = ((icmp_ln16_1_reg_1889 == 1'd0) & (icmp_ln16_reg_1783 == 1'd1));
end
assign cols_address0 = cols_address0_local;
assign cols_address1 = cols_address1_local;
assign cols_ce0 = cols_ce0_local;
assign cols_ce1 = cols_ce1_local;
assign grp_fu_900_p4 = {{cols_q0[8:3]}};
assign grp_fu_910_p4 = {{cols_q1[8:3]}};
assign icmp_ln16_1_fu_1104_p2 = (($signed(add_ln10_fu_1071_p2) < $signed(tmp_end)) ? 1'b1 : 1'b0);
assign icmp_ln16_2_fu_1141_p2 = (($signed(add_ln16_fu_1109_p2) < $signed(sext_ln16_1_cast_reg_1767)) ? 1'b1 : 1'b0);
assign icmp_ln16_3_fu_1423_p2 = (($signed(add_ln16_1_fu_1391_p2) < $signed(sext_ln16_1_cast_reg_1767)) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_945_p2 = (($signed(j_fu_124) < $signed(sext_ln16_1_cast_reg_1767)) ? 1'b1 : 1'b0);
assign lshr_ln10_1_fu_1119_p4 = {{add_ln16_fu_1109_p2[10:3]}};
assign lshr_ln10_2_fu_1401_p4 = {{add_ln16_1_fu_1391_p2[10:3]}};
assign lshr_ln2_fu_1082_p4 = {{add_ln10_fu_1071_p2[10:3]}};
assign lshr_ln9_1_fu_955_p4 = {{j_fu_124[10:3]}};
assign sext_ln16_1_cast_fu_924_p1 = $signed(sext_ln16_1);
assign sext_ln16_cast_fu_928_p1 = $signed(sext_ln16);
assign sum_1_out = sum_1_reg_2232;
assign sum_2_out = sum_2_reg_2238;
assign sum_3_out = sum_3_reg_2244;
assign tmp_1_fu_1178_p10 = vec_4_q0;
assign tmp_1_fu_1178_p12 = vec_5_q0;
assign tmp_1_fu_1178_p14 = vec_6_q0;
assign tmp_1_fu_1178_p16 = vec_7_q0;
assign tmp_1_fu_1178_p17 = 'bx;
assign tmp_1_fu_1178_p2 = vec_0_q0;
assign tmp_1_fu_1178_p4 = vec_1_q0;
assign tmp_1_fu_1178_p6 = vec_2_q0;
assign tmp_1_fu_1178_p8 = vec_3_q0;
assign tmp_2_fu_1249_p10 = val_4_q1;
assign tmp_2_fu_1249_p12 = val_5_q1;
assign tmp_2_fu_1249_p14 = val_6_q1;
assign tmp_2_fu_1249_p16 = val_7_q1;
assign tmp_2_fu_1249_p17 = 'bx;
assign tmp_2_fu_1249_p2 = val_0_q1;
assign tmp_2_fu_1249_p4 = val_1_q1;
assign tmp_2_fu_1249_p6 = val_2_q1;
assign tmp_2_fu_1249_p8 = val_3_q1;
assign tmp_3_fu_1460_p10 = vec_4_q1;
assign tmp_3_fu_1460_p12 = vec_5_q1;
assign tmp_3_fu_1460_p14 = vec_6_q1;
assign tmp_3_fu_1460_p16 = vec_7_q1;
assign tmp_3_fu_1460_p17 = 'bx;
assign tmp_3_fu_1460_p2 = vec_0_q1;
assign tmp_3_fu_1460_p4 = vec_1_q1;
assign tmp_3_fu_1460_p6 = vec_2_q1;
assign tmp_3_fu_1460_p8 = vec_3_q1;
assign tmp_4_fu_1336_p10 = val_4_q0;
assign tmp_4_fu_1336_p12 = val_5_q0;
assign tmp_4_fu_1336_p14 = val_6_q0;
assign tmp_4_fu_1336_p16 = val_7_q0;
assign tmp_4_fu_1336_p17 = 'bx;
assign tmp_4_fu_1336_p2 = val_0_q0;
assign tmp_4_fu_1336_p4 = val_1_q0;
assign tmp_4_fu_1336_p6 = val_2_q0;
assign tmp_4_fu_1336_p8 = val_3_q0;
assign tmp_5_fu_1531_p10 = vec_4_q0;
assign tmp_5_fu_1531_p12 = vec_5_q0;
assign tmp_5_fu_1531_p14 = vec_6_q0;
assign tmp_5_fu_1531_p16 = vec_7_q0;
assign tmp_5_fu_1531_p17 = 'bx;
assign tmp_5_fu_1531_p2 = vec_0_q0;
assign tmp_5_fu_1531_p4 = vec_1_q0;
assign tmp_5_fu_1531_p6 = vec_2_q0;
assign tmp_5_fu_1531_p8 = vec_3_q0;
assign tmp_6_fu_1602_p10 = val_4_q1;
assign tmp_6_fu_1602_p12 = val_5_q1;
assign tmp_6_fu_1602_p14 = val_6_q1;
assign tmp_6_fu_1602_p16 = val_7_q1;
assign tmp_6_fu_1602_p17 = 'bx;
assign tmp_6_fu_1602_p2 = val_0_q1;
assign tmp_6_fu_1602_p4 = val_1_q1;
assign tmp_6_fu_1602_p6 = val_2_q1;
assign tmp_6_fu_1602_p8 = val_3_q1;
assign tmp_7_fu_1689_p10 = vec_4_q1;
assign tmp_7_fu_1689_p12 = vec_5_q1;
assign tmp_7_fu_1689_p14 = vec_6_q1;
assign tmp_7_fu_1689_p16 = vec_7_q1;
assign tmp_7_fu_1689_p17 = 'bx;
assign tmp_7_fu_1689_p2 = vec_0_q1;
assign tmp_7_fu_1689_p4 = vec_1_q1;
assign tmp_7_fu_1689_p6 = vec_2_q1;
assign tmp_7_fu_1689_p8 = vec_3_q1;
assign tmp_fu_1015_p10 = val_4_q0;
assign tmp_fu_1015_p12 = val_5_q0;
assign tmp_fu_1015_p14 = val_6_q0;
assign tmp_fu_1015_p16 = val_7_q0;
assign tmp_fu_1015_p17 = 'bx;
assign tmp_fu_1015_p18 = j_1_reg_1774[2:0];
assign tmp_fu_1015_p2 = val_0_q0;
assign tmp_fu_1015_p4 = val_1_q0;
assign tmp_fu_1015_p6 = val_2_q0;
assign tmp_fu_1015_p8 = val_3_q0;
assign trunc_ln16_1_fu_980_p1 = j_1_reg_1774[2:0];
assign trunc_ln16_fu_977_p1 = j_1_reg_1774[31:0];
assign trunc_ln17_1_fu_1288_p1 = cols_q1[2:0];
assign trunc_ln17_2_fu_1375_p1 = cols_q0[2:0];
assign trunc_ln17_3_fu_1641_p1 = cols_q1[2:0];
assign trunc_ln17_fu_1055_p1 = cols_q0[2:0];
assign val_0_address0 = val_0_address0_local;
assign val_0_address1 = val_0_address1_local;
assign val_0_ce0 = val_0_ce0_local;
assign val_0_ce1 = val_0_ce1_local;
assign val_1_address0 = val_1_address0_local;
assign val_1_address1 = val_1_address1_local;
assign val_1_ce0 = val_1_ce0_local;
assign val_1_ce1 = val_1_ce1_local;
assign val_2_address0 = val_2_address0_local;
assign val_2_address1 = val_2_address1_local;
assign val_2_ce0 = val_2_ce0_local;
assign val_2_ce1 = val_2_ce1_local;
assign val_3_address0 = val_3_address0_local;
assign val_3_address1 = val_3_address1_local;
assign val_3_ce0 = val_3_ce0_local;
assign val_3_ce1 = val_3_ce1_local;
assign val_4_address0 = val_4_address0_local;
assign val_4_address1 = val_4_address1_local;
assign val_4_ce0 = val_4_ce0_local;
assign val_4_ce1 = val_4_ce1_local;
assign val_5_address0 = val_5_address0_local;
assign val_5_address1 = val_5_address1_local;
assign val_5_ce0 = val_5_ce0_local;
assign val_5_ce1 = val_5_ce1_local;
assign val_6_address0 = val_6_address0_local;
assign val_6_address1 = val_6_address1_local;
assign val_6_ce0 = val_6_ce0_local;
assign val_6_ce1 = val_6_ce1_local;
assign val_7_address0 = val_7_address0_local;
assign val_7_address1 = val_7_address1_local;
assign val_7_ce0 = val_7_ce0_local;
assign val_7_ce1 = val_7_ce1_local;
assign vec_0_address0 = vec_0_address0_local;
assign vec_0_address1 = vec_0_address1_local;
assign vec_0_ce0 = vec_0_ce0_local;
assign vec_0_ce1 = vec_0_ce1_local;
assign vec_1_address0 = vec_1_address0_local;
assign vec_1_address1 = vec_1_address1_local;
assign vec_1_ce0 = vec_1_ce0_local;
assign vec_1_ce1 = vec_1_ce1_local;
assign vec_2_address0 = vec_2_address0_local;
assign vec_2_address1 = vec_2_address1_local;
assign vec_2_ce0 = vec_2_ce0_local;
assign vec_2_ce1 = vec_2_ce1_local;
assign vec_3_address0 = vec_3_address0_local;
assign vec_3_address1 = vec_3_address1_local;
assign vec_3_ce0 = vec_3_ce0_local;
assign vec_3_ce1 = vec_3_ce1_local;
assign vec_4_address0 = vec_4_address0_local;
assign vec_4_address1 = vec_4_address1_local;
assign vec_4_ce0 = vec_4_ce0_local;
assign vec_4_ce1 = vec_4_ce1_local;
assign vec_5_address0 = vec_5_address0_local;
assign vec_5_address1 = vec_5_address1_local;
assign vec_5_ce0 = vec_5_ce0_local;
assign vec_5_ce1 = vec_5_ce1_local;
assign vec_6_address0 = vec_6_address0_local;
assign vec_6_address1 = vec_6_address1_local;
assign vec_6_ce0 = vec_6_ce0_local;
assign vec_6_ce1 = vec_6_ce1_local;
assign vec_7_address0 = vec_7_address0_local;
assign vec_7_address1 = vec_7_address1_local;
assign vec_7_ce0 = vec_7_ce0_local;
assign vec_7_ce1 = vec_7_ce1_local;
assign zext_ln10_1_fu_1092_p1 = lshr_ln2_fu_1082_p4;
assign zext_ln10_2_fu_1114_p1 = add_ln16_fu_1109_p2;
assign zext_ln10_3_fu_1129_p1 = lshr_ln10_1_fu_1119_p4;
assign zext_ln10_4_fu_1396_p1 = add_ln16_1_fu_1391_p2;
assign zext_ln10_5_fu_1411_p1 = lshr_ln10_2_fu_1401_p4;
assign zext_ln10_fu_1077_p1 = add_ln10_fu_1071_p2;
assign zext_ln16_fu_950_p1 = j_fu_124;
assign zext_ln17_1_fu_1292_p1 = grp_fu_910_p4;
assign zext_ln17_2_fu_1379_p1 = grp_fu_900_p4;
assign zext_ln17_3_fu_1645_p1 = grp_fu_910_p4;
assign zext_ln17_fu_1059_p1 = grp_fu_900_p4;
assign zext_ln9_fu_965_p1 = lshr_ln9_1_fu_955_p4;
always @ (posedge ap_clk) begin
    ap_exit_tran_regpp0[3:2] <= 2'b00;
end
endmodule 
