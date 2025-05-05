module stencil3d_stencil3d_Pipeline_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,i_2,j_2,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,empty_5,empty,indvars_iv_next61,tmp4,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,C_load,C_load_1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [10:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [10:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [10:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [10:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [10:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [10:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [10:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
input  [4:0] i_2;
input  [4:0] j_2;
output  [10:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [10:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
input  [9:0] empty_5;
input  [9:0] empty;
input  [4:0] indvars_iv_next61;
input  [4:0] tmp4;
output  [10:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [10:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [10:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [10:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
output  [10:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [10:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [10:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [10:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [10:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [10:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [10:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [10:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [10:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [10:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln38_reg_1342;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_688;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_693;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_698;
reg   [31:0] reg_702;
reg   [31:0] reg_706;
wire   [31:0] grp_fu_672_p2;
reg   [31:0] reg_710;
wire   [31:0] grp_fu_676_p2;
reg   [31:0] reg_714;
wire   [0:0] tmp_2_fu_726_p3;
reg   [0:0] tmp_2_reg_1250;
wire   [63:0] zext_ln39_1_fu_744_p1;
reg   [63:0] zext_ln39_1_reg_1257;
reg   [63:0] zext_ln39_1_reg_1257_pp0_iter1_reg;
reg   [63:0] zext_ln39_1_reg_1257_pp0_iter2_reg;
wire   [63:0] zext_ln42_fu_765_p1;
reg   [63:0] zext_ln42_reg_1269;
wire   [63:0] zext_ln43_fu_782_p1;
reg   [63:0] zext_ln43_reg_1277;
wire   [0:0] icmp_ln38_fu_787_p2;
reg   [0:0] icmp_ln38_reg_1342_pp0_iter1_reg;
reg   [0:0] icmp_ln38_reg_1342_pp0_iter2_reg;
wire   [0:0] tmp_3_fu_799_p3;
reg   [0:0] tmp_3_reg_1346;
wire   [63:0] zext_ln44_fu_817_p1;
reg   [63:0] zext_ln44_reg_1354;
reg   [63:0] zext_ln44_reg_1354_pp0_iter1_reg;
reg   [63:0] zext_ln44_reg_1354_pp0_iter2_reg;
wire   [63:0] zext_ln40_fu_859_p1;
reg   [63:0] zext_ln40_reg_1369;
reg  signed [31:0] sum0_1_reg_1381;
reg   [31:0] orig_0_load_reg_1388;
reg   [31:0] orig_2_load_3_reg_1398;
reg  signed [31:0] sum0_2_reg_1408;
reg   [31:0] orig_3_load_3_reg_1420;
reg  signed [31:0] sum0_3_reg_1430;
reg   [31:0] orig_4_load_3_reg_1442;
reg  signed [31:0] sum0_4_reg_1452;
reg  signed [31:0] sum0_5_reg_1464;
reg  signed [31:0] sum0_5_reg_1464_pp0_iter1_reg;
reg  signed [31:0] sum0_6_reg_1476;
reg  signed [31:0] sum0_6_reg_1476_pp0_iter1_reg;
reg  signed [31:0] sum0_7_reg_1488;
reg  signed [31:0] sum0_7_reg_1488_pp0_iter1_reg;
wire   [31:0] add_ln48_3_fu_912_p2;
reg   [31:0] add_ln48_3_reg_1514;
reg   [31:0] orig_2_load_1_reg_1519;
reg   [31:0] orig_2_load_4_reg_1529;
reg   [31:0] orig_3_load_1_reg_1534;
reg   [31:0] orig_3_load_4_reg_1544;
reg   [31:0] orig_4_load_1_reg_1549;
reg   [31:0] orig_4_load_4_reg_1559;
reg   [31:0] orig_5_load_4_reg_1569;
reg   [31:0] orig_6_load_4_reg_1579;
reg   [31:0] orig_7_load_3_reg_1589;
reg   [31:0] orig_0_load_4_reg_1604;
reg   [31:0] orig_0_load_5_reg_1609;
wire   [31:0] add_ln48_fu_940_p2;
reg   [31:0] add_ln48_reg_1614;
wire   [31:0] add_ln48_6_fu_946_p2;
reg   [31:0] add_ln48_6_reg_1619;
wire   [31:0] add_ln48_9_fu_956_p2;
reg   [31:0] add_ln48_9_reg_1624;
wire   [31:0] grp_fu_664_p2;
reg   [31:0] mul_ln48_2_reg_1629;
reg   [31:0] mul_ln48_2_reg_1629_pp0_iter2_reg;
wire   [31:0] add_ln48_12_fu_961_p2;
reg   [31:0] add_ln48_12_reg_1634;
wire   [31:0] add_ln48_15_fu_970_p2;
reg   [31:0] add_ln48_15_reg_1639;
wire   [31:0] grp_fu_668_p2;
reg   [31:0] mul_ln48_4_reg_1644;
reg   [31:0] mul_ln48_4_reg_1644_pp0_iter2_reg;
wire   [31:0] add_ln48_18_fu_975_p2;
reg   [31:0] add_ln48_18_reg_1649;
wire   [31:0] add_ln48_21_fu_984_p2;
reg   [31:0] add_ln48_21_reg_1654;
reg   [31:0] mul_ln48_6_reg_1659;
reg   [31:0] mul_ln48_6_reg_1659_pp0_iter2_reg;
wire   [31:0] add_ln48_24_fu_989_p2;
reg   [31:0] add_ln48_24_reg_1669;
reg   [31:0] mul_ln48_8_reg_1674;
reg   [31:0] mul_ln48_8_reg_1674_pp0_iter2_reg;
wire   [31:0] add_ln48_30_fu_994_p2;
reg   [31:0] add_ln48_30_reg_1684;
wire   [31:0] grp_fu_680_p2;
reg   [31:0] mul_ln48_10_reg_1689;
reg   [31:0] mul_ln48_10_reg_1689_pp0_iter2_reg;
wire   [31:0] grp_fu_684_p2;
reg   [31:0] mul_ln48_12_reg_1699;
reg   [31:0] mul_ln48_12_reg_1699_pp0_iter2_reg;
reg   [31:0] orig_0_load_2_reg_1704;
reg   [31:0] orig_0_load_3_reg_1709;
wire  signed [31:0] add_ln48_4_fu_1026_p2;
reg  signed [31:0] add_ln48_4_reg_1719;
reg   [31:0] mul_ln48_reg_1724;
reg   [31:0] mul_ln48_reg_1724_pp0_iter2_reg;
wire  signed [31:0] add_ln48_10_fu_1035_p2;
reg  signed [31:0] add_ln48_10_reg_1729;
wire  signed [31:0] add_ln48_16_fu_1044_p2;
reg  signed [31:0] add_ln48_16_reg_1734;
wire  signed [31:0] add_ln48_22_fu_1053_p2;
reg  signed [31:0] add_ln48_22_reg_1739;
reg   [31:0] orig_7_load_2_reg_1759;
reg   [31:0] mul_ln48_14_reg_1764;
reg   [31:0] mul_ln48_14_reg_1764_pp0_iter2_reg;
wire   [31:0] add_ln48_27_fu_1062_p2;
reg   [31:0] add_ln48_27_reg_1769;
wire   [31:0] add_ln48_33_fu_1072_p2;
reg   [31:0] add_ln48_33_reg_1774;
wire   [31:0] add_ln48_36_fu_1078_p2;
reg   [31:0] add_ln48_36_reg_1779;
wire   [31:0] add_ln48_39_fu_1087_p2;
reg   [31:0] add_ln48_39_reg_1784;
wire   [31:0] add_ln48_42_fu_1092_p2;
reg   [31:0] add_ln48_42_reg_1789;
wire   [31:0] add_ln48_45_fu_1101_p2;
reg   [31:0] add_ln48_45_reg_1794;
wire  signed [31:0] add_ln48_28_fu_1111_p2;
reg  signed [31:0] add_ln48_28_reg_1799;
wire  signed [31:0] add_ln48_34_fu_1121_p2;
reg  signed [31:0] add_ln48_34_reg_1804;
wire  signed [31:0] add_ln48_40_fu_1131_p2;
reg  signed [31:0] add_ln48_40_reg_1809;
wire  signed [31:0] add_ln48_46_fu_1140_p2;
reg  signed [31:0] add_ln48_46_reg_1814;
reg   [31:0] mul_ln48_5_reg_1819;
reg   [31:0] mul_ln48_7_reg_1824;
reg   [31:0] mul_ln48_9_reg_1829;
reg   [31:0] mul_ln48_11_reg_1834;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln42_1_fu_874_p1;
wire   [63:0] zext_ln43_1_fu_886_p1;
wire   [63:0] zext_ln41_fu_897_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln40_1_fu_924_p1;
wire   [63:0] zext_ln41_1_fu_935_p1;
wire   [63:0] zext_ln44_1_fu_1016_p1;
reg   [3:0] k_fu_100;
wire   [3:0] xor_ln_fu_840_p3;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_1;
reg    orig_1_ce1_local;
reg   [10:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [10:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [10:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [10:0] orig_2_address0_local;
reg    orig_0_ce1_local;
reg   [10:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [10:0] orig_0_address0_local;
reg    orig_3_ce1_local;
reg   [10:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [10:0] orig_3_address0_local;
reg    orig_4_ce1_local;
reg   [10:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [10:0] orig_4_address0_local;
reg    orig_5_ce1_local;
reg   [10:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [10:0] orig_5_address0_local;
reg    orig_6_ce1_local;
reg   [10:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [10:0] orig_6_address0_local;
reg    orig_7_ce1_local;
reg   [10:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [10:0] orig_7_address0_local;
reg    sol_1_we0_local;
wire   [31:0] add_ln48_5_fu_1145_p2;
reg    sol_1_ce0_local;
reg    sol_2_we0_local;
wire   [31:0] add_ln48_11_fu_1151_p2;
reg    sol_2_ce0_local;
reg    sol_3_we0_local;
wire   [31:0] add_ln48_17_fu_1157_p2;
reg    sol_3_ce0_local;
reg    sol_4_we0_local;
wire   [31:0] add_ln48_23_fu_1162_p2;
reg    sol_4_ce0_local;
reg    sol_5_we0_local;
wire   [31:0] add_ln48_29_fu_1167_p2;
reg    sol_5_ce0_local;
reg    sol_6_we0_local;
wire   [31:0] add_ln48_35_fu_1172_p2;
reg    sol_6_ce0_local;
reg    sol_7_we0_local;
wire   [31:0] add_ln48_41_fu_1177_p2;
reg    sol_7_ce0_local;
reg    sol_0_we0_local;
wire   [31:0] add_ln48_47_fu_1183_p2;
reg    sol_0_ce0_local;
reg  signed [31:0] grp_fu_664_p0;
reg  signed [31:0] grp_fu_664_p1;
reg  signed [31:0] grp_fu_668_p0;
reg  signed [31:0] grp_fu_668_p1;
reg  signed [31:0] grp_fu_672_p0;
reg  signed [31:0] grp_fu_672_p1;
reg  signed [31:0] grp_fu_676_p0;
reg  signed [31:0] grp_fu_676_p1;
reg  signed [31:0] grp_fu_680_p0;
reg  signed [31:0] grp_fu_680_p1;
reg  signed [31:0] grp_fu_684_p0;
reg  signed [31:0] grp_fu_684_p1;
wire   [10:0] add_ln4_fu_734_p4;
wire   [10:0] add_ln7_fu_755_p4;
wire   [10:0] add_ln8_fu_772_p4;
wire   [3:0] add_ln44_fu_793_p2;
wire   [10:0] add_ln44_2_fu_807_p4;
wire   [0:0] bit_sel_fu_822_p3;
wire   [0:0] xor_ln44_fu_830_p2;
wire   [2:0] trunc_ln44_fu_836_p1;
wire   [10:0] add_ln5_fu_853_p3;
wire   [10:0] add_ln42_1_fu_867_p4;
wire   [10:0] add_ln43_1_fu_879_p4;
wire   [10:0] add_ln6_fu_891_p3;
wire   [31:0] add_ln48_2_fu_908_p2;
wire   [10:0] add_ln40_1_fu_918_p3;
wire   [10:0] add_ln41_1_fu_929_p3;
wire  signed [31:0] add_ln48_6_fu_946_p0;
wire   [31:0] add_ln48_8_fu_952_p2;
wire   [31:0] add_ln48_14_fu_966_p2;
wire   [31:0] add_ln48_20_fu_980_p2;
wire   [10:0] zext_ln39_fu_999_p1;
wire   [10:0] or_ln1_fu_1002_p4;
wire   [10:0] add_ln44_1_fu_1010_p2;
wire   [31:0] add_ln48_1_fu_1021_p2;
wire   [31:0] add_ln48_7_fu_1031_p2;
wire   [31:0] add_ln48_13_fu_1040_p2;
wire   [31:0] add_ln48_19_fu_1049_p2;
wire   [31:0] add_ln48_26_fu_1058_p2;
wire   [31:0] add_ln48_32_fu_1068_p2;
wire   [31:0] add_ln48_38_fu_1083_p2;
wire   [31:0] add_ln48_44_fu_1096_p2;
wire   [31:0] add_ln48_25_fu_1106_p2;
wire   [31:0] add_ln48_31_fu_1116_p2;
wire   [31:0] add_ln48_37_fu_1126_p2;
wire   [31:0] add_ln48_43_fu_1136_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_100 = 4'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U42(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_664_p0),.din1(grp_fu_664_p1),.ce(1'b1),.dout(grp_fu_664_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U43(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_668_p0),.din1(grp_fu_668_p1),.ce(1'b1),.dout(grp_fu_668_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U44(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_672_p0),.din1(grp_fu_672_p1),.ce(1'b1),.dout(grp_fu_672_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U45(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_676_p0),.din1(grp_fu_676_p1),.ce(1'b1),.dout(grp_fu_676_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U46(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_680_p0),.din1(grp_fu_680_p1),.ce(1'b1),.dout(grp_fu_680_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U47(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_684_p0),.din1(grp_fu_684_p1),.ce(1'b1),.dout(grp_fu_684_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln38_fu_787_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            k_fu_100 <= xor_ln_fu_840_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_100 <= 4'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_693 <= orig_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_693 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_10_reg_1729 <= add_ln48_10_fu_1035_p2;
        add_ln48_16_reg_1734 <= add_ln48_16_fu_1044_p2;
        add_ln48_22_reg_1739 <= add_ln48_22_fu_1053_p2;
        add_ln48_4_reg_1719 <= add_ln48_4_fu_1026_p2;
        mul_ln48_14_reg_1764_pp0_iter2_reg <= mul_ln48_14_reg_1764;
        mul_ln48_reg_1724_pp0_iter2_reg <= mul_ln48_reg_1724;
        sum0_5_reg_1464_pp0_iter1_reg <= sum0_5_reg_1464;
        sum0_6_reg_1476_pp0_iter1_reg <= sum0_6_reg_1476;
        sum0_7_reg_1488_pp0_iter1_reg <= sum0_7_reg_1488;
        zext_ln40_reg_1369[10 : 0] <= zext_ln40_fu_859_p1[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_12_reg_1634 <= add_ln48_12_fu_961_p2;
        add_ln48_15_reg_1639 <= add_ln48_15_fu_970_p2;
        add_ln48_18_reg_1649 <= add_ln48_18_fu_975_p2;
        add_ln48_21_reg_1654 <= add_ln48_21_fu_984_p2;
        add_ln48_24_reg_1669 <= add_ln48_24_fu_989_p2;
        add_ln48_28_reg_1799 <= add_ln48_28_fu_1111_p2;
        add_ln48_30_reg_1684 <= add_ln48_30_fu_994_p2;
        add_ln48_34_reg_1804 <= add_ln48_34_fu_1121_p2;
        add_ln48_40_reg_1809 <= add_ln48_40_fu_1131_p2;
        add_ln48_46_reg_1814 <= add_ln48_46_fu_1140_p2;
        add_ln48_6_reg_1619 <= add_ln48_6_fu_946_p2;
        add_ln48_9_reg_1624 <= add_ln48_9_fu_956_p2;
        add_ln48_reg_1614 <= add_ln48_fu_940_p2;
        icmp_ln38_reg_1342 <= icmp_ln38_fu_787_p2;
        icmp_ln38_reg_1342_pp0_iter1_reg <= icmp_ln38_reg_1342;
        icmp_ln38_reg_1342_pp0_iter2_reg <= icmp_ln38_reg_1342_pp0_iter1_reg;
        mul_ln48_10_reg_1689_pp0_iter2_reg <= mul_ln48_10_reg_1689;
        mul_ln48_12_reg_1699_pp0_iter2_reg <= mul_ln48_12_reg_1699;
        mul_ln48_2_reg_1629_pp0_iter2_reg <= mul_ln48_2_reg_1629;
        mul_ln48_4_reg_1644_pp0_iter2_reg <= mul_ln48_4_reg_1644;
        mul_ln48_6_reg_1659_pp0_iter2_reg <= mul_ln48_6_reg_1659;
        mul_ln48_8_reg_1674_pp0_iter2_reg <= mul_ln48_8_reg_1674;
        tmp_2_reg_1250 <= ap_sig_allocacmp_k_1[32'd3];
        tmp_3_reg_1346 <= add_ln44_fu_793_p2[32'd3];
        zext_ln39_1_reg_1257[10 : 0] <= zext_ln39_1_fu_744_p1[10 : 0];
        zext_ln39_1_reg_1257_pp0_iter1_reg[10 : 0] <= zext_ln39_1_reg_1257[10 : 0];
        zext_ln39_1_reg_1257_pp0_iter2_reg[10 : 0] <= zext_ln39_1_reg_1257_pp0_iter1_reg[10 : 0];
        zext_ln42_reg_1269[10 : 0] <= zext_ln42_fu_765_p1[10 : 0];
        zext_ln43_reg_1277[10 : 0] <= zext_ln43_fu_782_p1[10 : 0];
        zext_ln44_reg_1354[10 : 0] <= zext_ln44_fu_817_p1[10 : 0];
        zext_ln44_reg_1354_pp0_iter1_reg[10 : 0] <= zext_ln44_reg_1354[10 : 0];
        zext_ln44_reg_1354_pp0_iter2_reg[10 : 0] <= zext_ln44_reg_1354_pp0_iter1_reg[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_27_reg_1769 <= add_ln48_27_fu_1062_p2;
        add_ln48_33_reg_1774 <= add_ln48_33_fu_1072_p2;
        add_ln48_36_reg_1779 <= add_ln48_36_fu_1078_p2;
        add_ln48_39_reg_1784 <= add_ln48_39_fu_1087_p2;
        add_ln48_3_reg_1514 <= add_ln48_3_fu_912_p2;
        add_ln48_42_reg_1789 <= add_ln48_42_fu_1092_p2;
        add_ln48_45_reg_1794 <= add_ln48_45_fu_1101_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_10_reg_1689 <= grp_fu_680_p2;
        mul_ln48_12_reg_1699 <= grp_fu_684_p2;
        mul_ln48_2_reg_1629 <= grp_fu_664_p2;
        mul_ln48_4_reg_1644 <= grp_fu_668_p2;
        mul_ln48_6_reg_1659 <= grp_fu_672_p2;
        mul_ln48_8_reg_1674 <= grp_fu_676_p2;
        orig_0_load_2_reg_1704 <= orig_0_q1;
        orig_0_load_3_reg_1709 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_11_reg_1834 <= grp_fu_668_p2;
        mul_ln48_9_reg_1829 <= grp_fu_664_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_14_reg_1764 <= grp_fu_668_p2;
        mul_ln48_reg_1724 <= grp_fu_664_p2;
        orig_7_load_2_reg_1759 <= orig_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_5_reg_1819 <= grp_fu_680_p2;
        mul_ln48_7_reg_1824 <= grp_fu_684_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_load_4_reg_1604 <= orig_0_q1;
        orig_0_load_5_reg_1609 <= orig_0_q0;
        orig_2_load_1_reg_1519 <= orig_2_q1;
        orig_2_load_4_reg_1529 <= orig_2_q0;
        orig_3_load_1_reg_1534 <= orig_3_q1;
        orig_3_load_4_reg_1544 <= orig_3_q0;
        orig_4_load_1_reg_1549 <= orig_4_q1;
        orig_4_load_4_reg_1559 <= orig_4_q0;
        orig_5_load_4_reg_1569 <= orig_5_q1;
        orig_6_load_4_reg_1579 <= orig_6_q1;
        orig_7_load_3_reg_1589 <= orig_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_load_reg_1388 <= orig_0_q1;
        orig_2_load_3_reg_1398 <= orig_2_q0;
        orig_3_load_3_reg_1420 <= orig_3_q0;
        orig_4_load_3_reg_1442 <= orig_4_q0;
        sum0_1_reg_1381 <= orig_2_q1;
        sum0_2_reg_1408 <= orig_3_q1;
        sum0_3_reg_1430 <= orig_4_q1;
        sum0_4_reg_1452 <= orig_5_q1;
        sum0_5_reg_1464 <= orig_6_q1;
        sum0_6_reg_1476 <= orig_7_q1;
        sum0_7_reg_1488 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_688 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_698 <= orig_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_702 <= orig_5_q0;
        reg_706 <= orig_6_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_710 <= grp_fu_672_p2;
        reg_714 <= grp_fu_676_p2;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_1342 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_1342_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_1 = 4'd1;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_664_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_664_p0 = reg_688;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_664_p0 = sum0_1_reg_1381;
    end else begin
        grp_fu_664_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_664_p1 = add_ln48_28_reg_1799;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_664_p1 = C_load;
    end else begin
        grp_fu_664_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_668_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_668_p0 = sum0_7_reg_1488;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_668_p0 = sum0_2_reg_1408;
    end else begin
        grp_fu_668_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_668_p1 = add_ln48_34_reg_1804;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_668_p1 = C_load;
    end else begin
        grp_fu_668_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_672_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_672_p0 = sum0_3_reg_1430;
    end else begin
        grp_fu_672_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_672_p1 = add_ln48_40_reg_1809;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_672_p1 = add_ln48_4_reg_1719;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_672_p1 = C_load;
    end else begin
        grp_fu_672_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_676_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_676_p0 = sum0_4_reg_1452;
    end else begin
        grp_fu_676_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_676_p1 = add_ln48_46_reg_1814;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_676_p1 = add_ln48_10_reg_1729;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_676_p1 = C_load;
    end else begin
        grp_fu_676_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_680_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_680_p0 = sum0_5_reg_1464;
    end else begin
        grp_fu_680_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_680_p1 = add_ln48_16_reg_1734;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_680_p1 = C_load;
    end else begin
        grp_fu_680_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_684_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_684_p0 = sum0_6_reg_1476;
    end else begin
        grp_fu_684_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_684_p1 = add_ln48_22_reg_1739;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_684_p1 = C_load;
    end else begin
        grp_fu_684_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln41_1_fu_935_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = zext_ln43_1_fu_886_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln44_fu_817_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln40_1_fu_924_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln42_1_fu_874_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln39_1_fu_744_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln44_1_fu_1016_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln42_reg_1269;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln40_fu_859_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln41_fu_897_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln39_1_reg_1257;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln43_fu_782_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address0_local = zext_ln41_fu_897_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address0_local = zext_ln43_reg_1277;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address0_local = zext_ln42_fu_765_p1;
        end else begin
            orig_2_address0_local = 'bx;
        end
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address1_local = zext_ln40_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address1_local = zext_ln39_1_fu_744_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address0_local = zext_ln41_fu_897_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address0_local = zext_ln43_reg_1277;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address0_local = zext_ln42_fu_765_p1;
        end else begin
            orig_3_address0_local = 'bx;
        end
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address1_local = zext_ln40_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address1_local = zext_ln39_1_fu_744_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_4_address0_local = zext_ln41_fu_897_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_4_address0_local = zext_ln43_reg_1277;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_4_address0_local = zext_ln42_fu_765_p1;
        end else begin
            orig_4_address0_local = 'bx;
        end
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_4_address1_local = zext_ln40_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_4_address1_local = zext_ln39_1_fu_744_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln40_reg_1369;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln42_reg_1269;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = zext_ln41_fu_897_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_5_address1_local = zext_ln43_reg_1277;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_5_address1_local = zext_ln39_1_fu_744_p1;
        end else begin
            orig_5_address1_local = 'bx;
        end
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln40_reg_1369;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln42_reg_1269;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = zext_ln41_fu_897_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_6_address1_local = zext_ln43_reg_1277;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_6_address1_local = zext_ln39_1_fu_744_p1;
        end else begin
            orig_6_address1_local = 'bx;
        end
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln40_reg_1369;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln42_reg_1269;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = zext_ln41_fu_897_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_7_address1_local = zext_ln43_reg_1277;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_7_address1_local = zext_ln39_1_fu_744_p1;
        end else begin
            orig_7_address1_local = 'bx;
        end
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_1342_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln38_reg_1342_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln40_1_fu_918_p3 = {{empty_5}, {tmp_3_reg_1346}};
assign add_ln41_1_fu_929_p3 = {{empty}, {tmp_3_reg_1346}};
assign add_ln42_1_fu_867_p4 = {{{i_2}, {indvars_iv_next61}}, {tmp_3_reg_1346}};
assign add_ln43_1_fu_879_p4 = {{{i_2}, {tmp4}}, {tmp_3_reg_1346}};
assign add_ln44_1_fu_1010_p2 = (zext_ln39_fu_999_p1 + or_ln1_fu_1002_p4);
assign add_ln44_2_fu_807_p4 = {{{i_2}, {j_2}}, {tmp_3_fu_799_p3}};
assign add_ln44_fu_793_p2 = (ap_sig_allocacmp_k_1 + 4'd7);
assign add_ln48_10_fu_1035_p2 = (add_ln48_9_reg_1624 + add_ln48_7_fu_1031_p2);
assign add_ln48_11_fu_1151_p2 = (reg_714 + mul_ln48_2_reg_1629_pp0_iter2_reg);
assign add_ln48_12_fu_961_p2 = ($signed(sum0_1_reg_1381) + $signed(orig_3_q0));
assign add_ln48_13_fu_1040_p2 = (add_ln48_12_reg_1634 + orig_3_load_1_reg_1534);
assign add_ln48_14_fu_966_p2 = ($signed(orig_3_load_4_reg_1544) + $signed(sum0_3_reg_1430));
assign add_ln48_15_fu_970_p2 = (add_ln48_14_fu_966_p2 + orig_3_load_3_reg_1420);
assign add_ln48_16_fu_1044_p2 = (add_ln48_15_reg_1639 + add_ln48_13_fu_1040_p2);
assign add_ln48_17_fu_1157_p2 = (mul_ln48_5_reg_1819 + mul_ln48_4_reg_1644_pp0_iter2_reg);
assign add_ln48_18_fu_975_p2 = ($signed(sum0_2_reg_1408) + $signed(orig_4_q0));
assign add_ln48_19_fu_1049_p2 = (add_ln48_18_reg_1649 + orig_4_load_1_reg_1549);
assign add_ln48_1_fu_1021_p2 = (add_ln48_reg_1614 + reg_693);
assign add_ln48_20_fu_980_p2 = ($signed(orig_4_load_4_reg_1559) + $signed(sum0_4_reg_1452));
assign add_ln48_21_fu_984_p2 = (add_ln48_20_fu_980_p2 + orig_4_load_3_reg_1442);
assign add_ln48_22_fu_1053_p2 = (add_ln48_21_reg_1654 + add_ln48_19_fu_1049_p2);
assign add_ln48_23_fu_1162_p2 = (mul_ln48_7_reg_1824 + mul_ln48_6_reg_1659_pp0_iter2_reg);
assign add_ln48_24_fu_989_p2 = ($signed(sum0_3_reg_1430) + $signed(orig_5_q0));
assign add_ln48_25_fu_1106_p2 = (add_ln48_24_reg_1669 + reg_702);
assign add_ln48_26_fu_1058_p2 = ($signed(orig_5_load_4_reg_1569) + $signed(sum0_5_reg_1464_pp0_iter1_reg));
assign add_ln48_27_fu_1062_p2 = (add_ln48_26_fu_1058_p2 + reg_702);
assign add_ln48_28_fu_1111_p2 = (add_ln48_27_reg_1769 + add_ln48_25_fu_1106_p2);
assign add_ln48_29_fu_1167_p2 = (mul_ln48_9_reg_1829 + mul_ln48_8_reg_1674_pp0_iter2_reg);
assign add_ln48_2_fu_908_p2 = ($signed(sum0_1_reg_1381) + $signed(orig_0_load_reg_1388));
assign add_ln48_30_fu_994_p2 = ($signed(sum0_4_reg_1452) + $signed(orig_6_q0));
assign add_ln48_31_fu_1116_p2 = (add_ln48_30_reg_1684 + reg_706);
assign add_ln48_32_fu_1068_p2 = ($signed(orig_6_load_4_reg_1579) + $signed(sum0_6_reg_1476_pp0_iter1_reg));
assign add_ln48_33_fu_1072_p2 = (add_ln48_32_fu_1068_p2 + reg_706);
assign add_ln48_34_fu_1121_p2 = (add_ln48_33_reg_1774 + add_ln48_31_fu_1116_p2);
assign add_ln48_35_fu_1172_p2 = (mul_ln48_11_reg_1834 + mul_ln48_10_reg_1689_pp0_iter2_reg);
assign add_ln48_36_fu_1078_p2 = ($signed(sum0_5_reg_1464_pp0_iter1_reg) + $signed(reg_698));
assign add_ln48_37_fu_1126_p2 = (add_ln48_36_reg_1779 + reg_698);
assign add_ln48_38_fu_1083_p2 = ($signed(orig_7_load_3_reg_1589) + $signed(sum0_7_reg_1488_pp0_iter1_reg));
assign add_ln48_39_fu_1087_p2 = (add_ln48_38_fu_1083_p2 + orig_7_load_2_reg_1759);
assign add_ln48_3_fu_912_p2 = (add_ln48_2_fu_908_p2 + reg_688);
assign add_ln48_40_fu_1131_p2 = (add_ln48_39_reg_1784 + add_ln48_37_fu_1126_p2);
assign add_ln48_41_fu_1177_p2 = (reg_710 + mul_ln48_12_reg_1699_pp0_iter2_reg);
assign add_ln48_42_fu_1092_p2 = ($signed(sum0_6_reg_1476_pp0_iter1_reg) + $signed(orig_0_load_3_reg_1709));
assign add_ln48_43_fu_1136_p2 = (add_ln48_42_reg_1789 + orig_0_load_2_reg_1704);
assign add_ln48_44_fu_1096_p2 = (orig_0_load_5_reg_1609 + reg_693);
assign add_ln48_45_fu_1101_p2 = (add_ln48_44_fu_1096_p2 + orig_0_load_4_reg_1604);
assign add_ln48_46_fu_1140_p2 = (add_ln48_45_reg_1794 + add_ln48_43_fu_1136_p2);
assign add_ln48_47_fu_1183_p2 = (reg_714 + mul_ln48_14_reg_1764_pp0_iter2_reg);
assign add_ln48_4_fu_1026_p2 = (add_ln48_3_reg_1514 + add_ln48_1_fu_1021_p2);
assign add_ln48_5_fu_1145_p2 = (reg_710 + mul_ln48_reg_1724_pp0_iter2_reg);
assign add_ln48_6_fu_946_p0 = reg_688;
assign add_ln48_6_fu_946_p2 = ($signed(add_ln48_6_fu_946_p0) + $signed(orig_2_q0));
assign add_ln48_7_fu_1031_p2 = (add_ln48_6_reg_1619 + orig_2_load_1_reg_1519);
assign add_ln48_8_fu_952_p2 = ($signed(orig_2_load_4_reg_1529) + $signed(sum0_2_reg_1408));
assign add_ln48_9_fu_956_p2 = (add_ln48_8_fu_952_p2 + orig_2_load_3_reg_1398);
assign add_ln48_fu_940_p2 = (reg_693 + orig_1_q0);
assign add_ln4_fu_734_p4 = {{{i_2}, {j_2}}, {tmp_2_fu_726_p3}};
assign add_ln5_fu_853_p3 = {{empty_5}, {tmp_2_reg_1250}};
assign add_ln6_fu_891_p3 = {{empty}, {tmp_2_reg_1250}};
assign add_ln7_fu_755_p4 = {{{i_2}, {indvars_iv_next61}}, {tmp_2_fu_726_p3}};
assign add_ln8_fu_772_p4 = {{{i_2}, {tmp4}}, {tmp_2_fu_726_p3}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_822_p3 = ap_sig_allocacmp_k_1[4'd3];
assign icmp_ln38_fu_787_p2 = ((ap_sig_allocacmp_k_1 == 4'd9) ? 1'b1 : 1'b0);
assign or_ln1_fu_1002_p4 = {{{i_2}, {j_2}}, {1'd1}};
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
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = orig_4_address1_local;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = orig_5_address1_local;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = orig_6_address1_local;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = orig_7_address1_local;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign sol_0_address0 = zext_ln44_reg_1354_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = add_ln48_47_fu_1183_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln39_1_reg_1257_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_1145_p2;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln39_1_reg_1257_pp0_iter2_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = add_ln48_11_fu_1151_p2;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln39_1_reg_1257_pp0_iter2_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = add_ln48_17_fu_1157_p2;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = zext_ln39_1_reg_1257_pp0_iter2_reg;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = add_ln48_23_fu_1162_p2;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = zext_ln39_1_reg_1257_pp0_iter2_reg;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = add_ln48_29_fu_1167_p2;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = zext_ln39_1_reg_1257_pp0_iter2_reg;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = add_ln48_35_fu_1172_p2;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = zext_ln39_1_reg_1257_pp0_iter2_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = add_ln48_41_fu_1177_p2;
assign sol_7_we0 = sol_7_we0_local;
assign tmp_2_fu_726_p3 = ap_sig_allocacmp_k_1[32'd3];
assign tmp_3_fu_799_p3 = add_ln44_fu_793_p2[32'd3];
assign trunc_ln44_fu_836_p1 = ap_sig_allocacmp_k_1[2:0];
assign xor_ln44_fu_830_p2 = (bit_sel_fu_822_p3 ^ 1'd1);
assign xor_ln_fu_840_p3 = {{xor_ln44_fu_830_p2}, {trunc_ln44_fu_836_p1}};
assign zext_ln39_1_fu_744_p1 = add_ln4_fu_734_p4;
assign zext_ln39_fu_999_p1 = tmp_2_reg_1250;
assign zext_ln40_1_fu_924_p1 = add_ln40_1_fu_918_p3;
assign zext_ln40_fu_859_p1 = add_ln5_fu_853_p3;
assign zext_ln41_1_fu_935_p1 = add_ln41_1_fu_929_p3;
assign zext_ln41_fu_897_p1 = add_ln6_fu_891_p3;
assign zext_ln42_1_fu_874_p1 = add_ln42_1_fu_867_p4;
assign zext_ln42_fu_765_p1 = add_ln7_fu_755_p4;
assign zext_ln43_1_fu_886_p1 = add_ln43_1_fu_879_p4;
assign zext_ln43_fu_782_p1 = add_ln8_fu_772_p4;
assign zext_ln44_1_fu_1016_p1 = add_ln44_1_fu_1010_p2;
assign zext_ln44_fu_817_p1 = add_ln44_2_fu_807_p4;
always @ (posedge ap_clk) begin
    zext_ln39_1_reg_1257[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln39_1_reg_1257_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln39_1_reg_1257_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln42_reg_1269[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln43_reg_1277[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1354[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1354_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1354_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln40_reg_1369[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 