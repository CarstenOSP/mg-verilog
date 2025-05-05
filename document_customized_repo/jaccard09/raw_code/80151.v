module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [7:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [7:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [7:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [7:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_1558;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_669_p9;
reg   [63:0] reg_707;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_688_p9;
reg   [63:0] reg_713;
reg   [6:0] tid_2_reg_1550;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_1550_pp0_iter1_reg;
reg   [6:0] tid_2_reg_1550_pp0_iter2_reg;
reg   [6:0] tid_2_reg_1550_pp0_iter3_reg;
reg   [0:0] tmp_reg_1558_pp0_iter1_reg;
reg   [0:0] tmp_reg_1558_pp0_iter2_reg;
reg   [0:0] tmp_reg_1558_pp0_iter3_reg;
wire   [2:0] tmp_71_fu_735_p4;
reg   [2:0] tmp_71_reg_1562;
wire   [8:0] offset_fu_749_p3;
reg   [8:0] offset_reg_1567;
reg   [8:0] offset_reg_1567_pp0_iter1_reg;
reg   [8:0] offset_reg_1567_pp0_iter2_reg;
wire   [8:0] offset_4_fu_772_p4;
reg   [8:0] offset_4_reg_1574;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] offset_4_reg_1574_pp0_iter1_reg;
reg   [8:0] offset_4_reg_1574_pp0_iter2_reg;
reg   [8:0] tmp_73_reg_1581;
reg   [8:0] tmp_74_reg_1586;
reg   [8:0] tmp_75_reg_1591;
reg   [8:0] tmp_76_reg_1596;
reg   [8:0] tmp_77_reg_1601;
reg   [8:0] tmp_78_reg_1606;
reg   [8:0] tmp_79_reg_1611;
reg   [7:0] tmp_72_reg_1616;
wire   [1:0] trunc_ln172_fu_885_p1;
reg   [1:0] trunc_ln172_reg_1621;
reg   [8:0] tmp_82_reg_1631;
reg   [8:0] tmp_83_reg_1636;
reg   [8:0] tmp_84_reg_1641;
reg   [8:0] tmp_85_reg_1646;
reg   [8:0] tmp_86_reg_1651;
reg   [8:0] tmp_87_reg_1656;
reg   [8:0] tmp_88_reg_1661;
reg   [7:0] tmp_81_reg_1756;
wire   [1:0] trunc_ln172_4_fu_1007_p1;
reg   [1:0] trunc_ln172_4_reg_1761;
wire   [63:0] tmp_22_fu_1011_p9;
reg   [63:0] tmp_22_reg_1773;
wire   [63:0] tmp_23_fu_1030_p9;
reg   [63:0] tmp_23_reg_1778;
wire   [63:0] tmp_24_fu_1049_p9;
reg   [63:0] tmp_24_reg_1783;
wire   [63:0] tmp_25_fu_1068_p9;
reg   [63:0] tmp_25_reg_1788;
wire   [5:0] trunc_ln314_fu_1117_p1;
reg   [5:0] trunc_ln314_reg_1868;
wire   [63:0] tmp_28_fu_1148_p9;
reg   [63:0] tmp_28_reg_1874;
reg   [4:0] tmp_29_reg_1879;
wire   [63:0] tmp_30_fu_1176_p9;
reg   [63:0] tmp_30_reg_1887;
wire   [63:0] tmp_32_fu_1201_p9;
reg   [63:0] tmp_32_reg_1907;
wire   [63:0] tmp_31_fu_1270_p9;
reg   [63:0] tmp_31_reg_1972;
wire   [63:0] tmp_33_fu_1289_p9;
reg   [63:0] tmp_33_reg_1977;
wire   [63:0] tmp_34_fu_1308_p9;
reg   [63:0] tmp_34_reg_1982;
wire   [63:0] tmp_35_fu_1327_p9;
reg   [63:0] tmp_35_reg_1987;
wire   [63:0] tmp_36_fu_1346_p9;
reg   [63:0] tmp_36_reg_1992;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln172_14_fu_952_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_958_p1;
wire   [63:0] zext_ln316_fu_964_p1;
wire   [63:0] zext_ln317_fu_970_p1;
wire   [63:0] zext_ln318_fu_976_p1;
wire   [63:0] zext_ln319_fu_982_p1;
wire   [63:0] zext_ln320_fu_1087_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln321_fu_1093_p1;
wire   [63:0] zext_ln172_15_fu_1099_p1;
wire   [63:0] zext_ln315_1_fu_1105_p1;
wire   [63:0] zext_ln317_1_fu_1111_p1;
wire   [63:0] zext_ln314_fu_1128_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln315_2_fu_1142_p1;
wire   [63:0] zext_ln316_1_fu_1195_p1;
wire   [63:0] zext_ln318_1_fu_1220_p1;
wire   [63:0] zext_ln319_1_fu_1226_p1;
wire   [63:0] zext_ln320_1_fu_1232_p1;
wire   [63:0] zext_ln321_1_fu_1238_p1;
wire   [63:0] zext_ln318_2_fu_1251_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln319_2_fu_1264_p1;
wire   [63:0] zext_ln314_1_fu_1372_p1;
wire   [63:0] zext_ln315_3_fu_1385_p1;
wire   [63:0] zext_ln318_3_fu_1398_p1;
wire   [63:0] zext_ln319_3_fu_1411_p1;
reg   [6:0] tid_fu_108;
wire   [6:0] add_ln309_fu_787_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg   [7:0] smem_address1_local;
reg    smem_ce0_local;
reg   [7:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [7:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg   [7:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [7:0] smem_2_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
wire   [63:0] grp_fu_669_p7;
wire   [63:0] grp_fu_688_p7;
wire   [5:0] trunc_ln312_fu_745_p1;
wire   [8:0] grp_fu_757_p0;
wire   [2:0] grp_fu_757_p1;
wire   [4:0] tmp_80_fu_763_p4;
wire   [8:0] grp_fu_781_p0;
wire   [2:0] grp_fu_781_p1;
wire   [20:0] tmp_73_fu_803_p1;
wire  signed [20:0] grp_fu_1417_p3;
wire   [20:0] tmp_74_fu_812_p1;
wire  signed [20:0] grp_fu_1426_p3;
wire   [20:0] tmp_75_fu_821_p1;
wire  signed [20:0] grp_fu_1435_p3;
wire   [20:0] tmp_76_fu_830_p1;
wire  signed [20:0] grp_fu_1444_p3;
wire   [20:0] tmp_77_fu_839_p1;
wire  signed [20:0] grp_fu_1453_p3;
wire   [20:0] tmp_78_fu_848_p1;
wire  signed [20:0] grp_fu_1462_p3;
wire   [20:0] tmp_79_fu_857_p1;
wire  signed [20:0] grp_fu_1471_p3;
wire   [8:0] mul_ln172_fu_869_p0;
wire   [10:0] mul_ln172_fu_869_p1;
wire   [18:0] mul_ln172_fu_869_p2;
wire   [1:0] grp_fu_757_p2;
wire   [20:0] tmp_82_fu_889_p1;
wire  signed [20:0] grp_fu_1480_p3;
wire   [20:0] tmp_83_fu_898_p1;
wire  signed [20:0] grp_fu_1489_p3;
wire   [20:0] tmp_84_fu_907_p1;
wire  signed [20:0] grp_fu_1498_p3;
wire   [20:0] tmp_85_fu_916_p1;
wire  signed [20:0] grp_fu_1507_p3;
wire   [20:0] tmp_86_fu_925_p1;
wire  signed [20:0] grp_fu_1516_p3;
wire   [20:0] tmp_87_fu_934_p1;
wire  signed [20:0] grp_fu_1525_p3;
wire   [20:0] tmp_88_fu_943_p1;
wire  signed [20:0] grp_fu_1534_p3;
wire   [8:0] mul_ln172_4_fu_991_p0;
wire   [10:0] mul_ln172_4_fu_991_p1;
wire   [18:0] mul_ln172_4_fu_991_p2;
wire   [1:0] grp_fu_781_p2;
wire   [63:0] tmp_22_fu_1011_p7;
wire   [63:0] tmp_23_fu_1030_p7;
wire   [63:0] tmp_24_fu_1049_p7;
wire   [63:0] tmp_25_fu_1068_p7;
wire   [7:0] shl_ln7_fu_1120_p3;
wire   [7:0] or_ln_fu_1134_p3;
wire   [63:0] tmp_28_fu_1148_p7;
wire   [63:0] tmp_30_fu_1176_p7;
wire   [63:0] tmp_32_fu_1201_p7;
wire   [7:0] or_ln5_fu_1244_p3;
wire   [7:0] or_ln6_fu_1257_p3;
wire   [63:0] tmp_31_fu_1270_p7;
wire   [63:0] tmp_33_fu_1289_p7;
wire   [63:0] tmp_34_fu_1308_p7;
wire   [63:0] tmp_35_fu_1327_p7;
wire   [63:0] tmp_36_fu_1346_p7;
wire   [7:0] shl_ln314_1_fu_1365_p3;
wire   [7:0] or_ln315_1_fu_1378_p3;
wire   [7:0] or_ln318_1_fu_1391_p3;
wire   [7:0] or_ln319_1_fu_1404_p3;
wire   [8:0] grp_fu_1417_p0;
wire   [9:0] zext_ln172_fu_797_p1;
wire   [5:0] grp_fu_1417_p1;
wire   [10:0] grp_fu_1417_p2;
wire   [8:0] grp_fu_1426_p0;
wire   [3:0] grp_fu_1426_p1;
wire   [10:0] grp_fu_1426_p2;
wire   [8:0] grp_fu_1435_p0;
wire   [5:0] grp_fu_1435_p1;
wire   [10:0] grp_fu_1435_p2;
wire   [8:0] grp_fu_1444_p0;
wire   [4:0] grp_fu_1444_p1;
wire   [10:0] grp_fu_1444_p2;
wire   [8:0] grp_fu_1453_p0;
wire   [5:0] grp_fu_1453_p1;
wire   [10:0] grp_fu_1453_p2;
wire   [8:0] grp_fu_1462_p0;
wire   [4:0] grp_fu_1462_p1;
wire   [10:0] grp_fu_1462_p2;
wire   [8:0] grp_fu_1471_p0;
wire   [5:0] grp_fu_1471_p1;
wire   [10:0] grp_fu_1471_p2;
wire   [8:0] grp_fu_1480_p0;
wire   [9:0] zext_ln172_18_fu_800_p1;
wire   [5:0] grp_fu_1480_p1;
wire   [10:0] grp_fu_1480_p2;
wire   [8:0] grp_fu_1489_p0;
wire   [3:0] grp_fu_1489_p1;
wire   [10:0] grp_fu_1489_p2;
wire   [8:0] grp_fu_1498_p0;
wire   [5:0] grp_fu_1498_p1;
wire   [10:0] grp_fu_1498_p2;
wire   [8:0] grp_fu_1507_p0;
wire   [4:0] grp_fu_1507_p1;
wire   [10:0] grp_fu_1507_p2;
wire   [8:0] grp_fu_1516_p0;
wire   [5:0] grp_fu_1516_p1;
wire   [10:0] grp_fu_1516_p2;
wire   [8:0] grp_fu_1525_p0;
wire   [4:0] grp_fu_1525_p1;
wire   [10:0] grp_fu_1525_p2;
wire   [8:0] grp_fu_1534_p0;
wire   [5:0] grp_fu_1534_p1;
wire   [10:0] grp_fu_1534_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage2;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_4_fu_991_p00;
wire   [18:0] mul_ln172_fu_869_p00;
reg    ap_condition_1046;
reg    ap_condition_1049;
reg    ap_condition_1052;
reg    ap_condition_1056;
reg    ap_condition_1060;
reg    ap_condition_1064;
reg    ap_condition_1068;
reg    ap_condition_1072;
reg    ap_condition_1076;
reg    ap_condition_1079;
reg    ap_condition_1083;
reg    ap_condition_1086;
wire   [1:0] grp_fu_669_p1;
wire   [1:0] grp_fu_669_p3;
wire  signed [1:0] grp_fu_669_p5;
wire   [1:0] grp_fu_688_p1;
wire  signed [1:0] grp_fu_688_p3;
wire   [1:0] grp_fu_688_p5;
wire   [1:0] tmp_22_fu_1011_p1;
wire  signed [1:0] tmp_22_fu_1011_p3;
wire   [1:0] tmp_22_fu_1011_p5;
wire  signed [1:0] tmp_23_fu_1030_p1;
wire   [1:0] tmp_23_fu_1030_p3;
wire   [1:0] tmp_23_fu_1030_p5;
wire  signed [1:0] tmp_24_fu_1049_p1;
wire   [1:0] tmp_24_fu_1049_p3;
wire   [1:0] tmp_24_fu_1049_p5;
wire   [1:0] tmp_25_fu_1068_p1;
wire   [1:0] tmp_25_fu_1068_p3;
wire  signed [1:0] tmp_25_fu_1068_p5;
wire   [1:0] tmp_28_fu_1148_p1;
wire   [1:0] tmp_28_fu_1148_p3;
wire  signed [1:0] tmp_28_fu_1148_p5;
wire   [1:0] tmp_30_fu_1176_p1;
wire  signed [1:0] tmp_30_fu_1176_p3;
wire   [1:0] tmp_30_fu_1176_p5;
wire  signed [1:0] tmp_32_fu_1201_p1;
wire   [1:0] tmp_32_fu_1201_p3;
wire   [1:0] tmp_32_fu_1201_p5;
wire   [1:0] tmp_31_fu_1270_p1;
wire  signed [1:0] tmp_31_fu_1270_p3;
wire   [1:0] tmp_31_fu_1270_p5;
wire  signed [1:0] tmp_33_fu_1289_p1;
wire   [1:0] tmp_33_fu_1289_p3;
wire   [1:0] tmp_33_fu_1289_p5;
wire   [1:0] tmp_34_fu_1308_p1;
wire   [1:0] tmp_34_fu_1308_p3;
wire  signed [1:0] tmp_34_fu_1308_p5;
wire   [1:0] tmp_35_fu_1327_p1;
wire   [1:0] tmp_35_fu_1327_p3;
wire  signed [1:0] tmp_35_fu_1327_p5;
wire   [1:0] tmp_36_fu_1346_p1;
wire  signed [1:0] tmp_36_fu_1346_p3;
wire   [1:0] tmp_36_fu_1346_p5;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_108 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U354(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(grp_fu_669_p7),.sel(trunc_ln172_reg_1621),.dout(grp_fu_669_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U355(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(grp_fu_688_p7),.sel(trunc_ln172_reg_1621),.dout(grp_fu_688_p9));
fft1D_512_urem_9ns_3ns_2_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_9ns_3ns_2_13_1_U356(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_757_p0),.din1(grp_fu_757_p1),.ce(1'b1),.dout(grp_fu_757_p2));
fft1D_512_urem_9ns_3ns_2_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_9ns_3ns_2_13_1_U357(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_781_p0),.din1(grp_fu_781_p1),.ce(1'b1),.dout(grp_fu_781_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U358(.din0(mul_ln172_fu_869_p0),.din1(mul_ln172_fu_869_p1),.dout(mul_ln172_fu_869_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U359(.din0(mul_ln172_4_fu_991_p0),.din1(mul_ln172_4_fu_991_p1),.dout(mul_ln172_4_fu_991_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U360(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_22_fu_1011_p7),.sel(trunc_ln172_reg_1621),.dout(tmp_22_fu_1011_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U361(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(tmp_23_fu_1030_p7),.sel(trunc_ln172_reg_1621),.dout(tmp_23_fu_1030_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U362(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_24_fu_1049_p7),.sel(trunc_ln172_reg_1621),.dout(tmp_24_fu_1049_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U363(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_25_fu_1068_p7),.sel(trunc_ln172_reg_1621),.dout(tmp_25_fu_1068_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U364(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_28_fu_1148_p7),.sel(trunc_ln172_4_reg_1761),.dout(tmp_28_fu_1148_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U365(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_30_fu_1176_p7),.sel(trunc_ln172_4_reg_1761),.dout(tmp_30_fu_1176_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U366(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_32_fu_1201_p7),.sel(trunc_ln172_4_reg_1761),.dout(tmp_32_fu_1201_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U367(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_31_fu_1270_p7),.sel(trunc_ln172_4_reg_1761),.dout(tmp_31_fu_1270_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U368(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(tmp_33_fu_1289_p7),.sel(trunc_ln172_4_reg_1761),.dout(tmp_33_fu_1289_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U369(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.def(tmp_34_fu_1308_p7),.sel(trunc_ln172_4_reg_1761),.dout(tmp_34_fu_1308_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U370(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(tmp_35_fu_1327_p7),.sel(trunc_ln172_4_reg_1761),.dout(tmp_35_fu_1327_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U371(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.def(tmp_36_fu_1346_p7),.sel(trunc_ln172_4_reg_1761),.dout(tmp_36_fu_1346_p9));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U372(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1417_p0),.din1(grp_fu_1417_p1),.din2(grp_fu_1417_p2),.ce(1'b1),.dout(grp_fu_1417_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U373(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1426_p0),.din1(grp_fu_1426_p1),.din2(grp_fu_1426_p2),.ce(1'b1),.dout(grp_fu_1426_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U374(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1435_p0),.din1(grp_fu_1435_p1),.din2(grp_fu_1435_p2),.ce(1'b1),.dout(grp_fu_1435_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U375(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1444_p0),.din1(grp_fu_1444_p1),.din2(grp_fu_1444_p2),.ce(1'b1),.dout(grp_fu_1444_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U376(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1453_p0),.din1(grp_fu_1453_p1),.din2(grp_fu_1453_p2),.ce(1'b1),.dout(grp_fu_1453_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U377(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1462_p0),.din1(grp_fu_1462_p1),.din2(grp_fu_1462_p2),.ce(1'b1),.dout(grp_fu_1462_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U378(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1471_p0),.din1(grp_fu_1471_p1),.din2(grp_fu_1471_p2),.ce(1'b1),.dout(grp_fu_1471_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U379(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1480_p0),.din1(grp_fu_1480_p1),.din2(grp_fu_1480_p2),.ce(1'b1),.dout(grp_fu_1480_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U380(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1489_p0),.din1(grp_fu_1489_p1),.din2(grp_fu_1489_p2),.ce(1'b1),.dout(grp_fu_1489_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U381(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1498_p0),.din1(grp_fu_1498_p1),.din2(grp_fu_1498_p2),.ce(1'b1),.dout(grp_fu_1498_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U382(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1507_p0),.din1(grp_fu_1507_p1),.din2(grp_fu_1507_p2),.ce(1'b1),.dout(grp_fu_1507_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U383(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1516_p0),.din1(grp_fu_1516_p1),.din2(grp_fu_1516_p2),.ce(1'b1),.dout(grp_fu_1516_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U384(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1525_p0),.din1(grp_fu_1525_p1),.din2(grp_fu_1525_p2),.ce(1'b1),.dout(grp_fu_1525_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U385(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1534_p0),.din1(grp_fu_1534_p1),.din2(grp_fu_1534_p2),.ce(1'b1),.dout(grp_fu_1534_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_108 <= 7'd0;
    end else if (((tmp_reg_1558 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_108 <= add_ln309_fu_787_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_4_reg_1574[8 : 1] <= offset_4_fu_772_p4[8 : 1];
        offset_4_reg_1574_pp0_iter1_reg[8 : 1] <= offset_4_reg_1574[8 : 1];
        offset_4_reg_1574_pp0_iter2_reg[8 : 1] <= offset_4_reg_1574_pp0_iter1_reg[8 : 1];
        tmp_81_reg_1756 <= {{mul_ln172_4_fu_991_p2[18:11]}};
        trunc_ln172_4_reg_1761 <= trunc_ln172_4_fu_1007_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_1567 <= offset_fu_749_p3;
        offset_reg_1567_pp0_iter1_reg <= offset_reg_1567;
        offset_reg_1567_pp0_iter2_reg <= offset_reg_1567_pp0_iter1_reg;
        tid_2_reg_1550 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_1550_pp0_iter1_reg <= tid_2_reg_1550;
        tid_2_reg_1550_pp0_iter2_reg <= tid_2_reg_1550_pp0_iter1_reg;
        tid_2_reg_1550_pp0_iter3_reg <= tid_2_reg_1550_pp0_iter2_reg;
        tmp_31_reg_1972 <= tmp_31_fu_1270_p9;
        tmp_33_reg_1977 <= tmp_33_fu_1289_p9;
        tmp_34_reg_1982 <= tmp_34_fu_1308_p9;
        tmp_35_reg_1987 <= tmp_35_fu_1327_p9;
        tmp_36_reg_1992 <= tmp_36_fu_1346_p9;
        tmp_71_reg_1562 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_72_reg_1616 <= {{mul_ln172_fu_869_p2[18:11]}};
        tmp_82_reg_1631 <= {{tmp_82_fu_889_p1[20:12]}};
        tmp_83_reg_1636 <= {{tmp_83_fu_898_p1[20:12]}};
        tmp_84_reg_1641 <= {{tmp_84_fu_907_p1[20:12]}};
        tmp_85_reg_1646 <= {{tmp_85_fu_916_p1[20:12]}};
        tmp_86_reg_1651 <= {{tmp_86_fu_925_p1[20:12]}};
        tmp_87_reg_1656 <= {{tmp_87_fu_934_p1[20:12]}};
        tmp_88_reg_1661 <= {{tmp_88_fu_943_p1[20:12]}};
        tmp_reg_1558 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_1558_pp0_iter1_reg <= tmp_reg_1558;
        tmp_reg_1558_pp0_iter2_reg <= tmp_reg_1558_pp0_iter1_reg;
        tmp_reg_1558_pp0_iter3_reg <= tmp_reg_1558_pp0_iter2_reg;
        trunc_ln172_reg_1621 <= trunc_ln172_fu_885_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_707 <= grp_fu_669_p9;
        reg_713 <= grp_fu_688_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_22_reg_1773 <= tmp_22_fu_1011_p9;
        tmp_23_reg_1778 <= tmp_23_fu_1030_p9;
        tmp_24_reg_1783 <= tmp_24_fu_1049_p9;
        tmp_25_reg_1788 <= tmp_25_fu_1068_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_28_reg_1874 <= tmp_28_fu_1148_p9;
        tmp_29_reg_1879 <= {{tid_2_reg_1550_pp0_iter3_reg[5:1]}};
        tmp_30_reg_1887 <= tmp_30_fu_1176_p9;
        tmp_32_reg_1907 <= tmp_32_fu_1201_p9;
        tmp_73_reg_1581 <= {{tmp_73_fu_803_p1[20:12]}};
        tmp_74_reg_1586 <= {{tmp_74_fu_812_p1[20:12]}};
        tmp_75_reg_1591 <= {{tmp_75_fu_821_p1[20:12]}};
        tmp_76_reg_1596 <= {{tmp_76_fu_830_p1[20:12]}};
        tmp_77_reg_1601 <= {{tmp_77_fu_839_p1[20:12]}};
        tmp_78_reg_1606 <= {{tmp_78_fu_848_p1[20:12]}};
        tmp_79_reg_1611 <= {{tmp_79_fu_857_p1[20:12]}};
        trunc_ln314_reg_1868 <= trunc_ln314_fu_1117_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln319_3_fu_1411_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_3_fu_1385_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln319_2_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_2_fu_1142_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln318_3_fu_1398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_1_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln318_2_fu_1251_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_fu_1128_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d0_local = tmp_36_reg_1992;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_32_reg_1907;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = reg_713;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_23_reg_1778;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = tmp_35_reg_1987;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_31_reg_1972;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = reg_707;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = tmp_22_reg_1773;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln319_3_fu_1411_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_3_fu_1385_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln319_2_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln315_2_fu_1142_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln318_3_fu_1398_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_1_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln318_2_fu_1251_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln314_fu_1128_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = tmp_34_reg_1982;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_30_reg_1887;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_25_reg_1788;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = reg_713;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = tmp_33_reg_1977;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_28_reg_1874;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_24_reg_1783;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = reg_707;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1558 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_1558_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_108;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1072)) begin
            smem_1_address0_local = zext_ln319_1_fu_1226_p1;
        end else if ((1'b1 == ap_condition_1068)) begin
            smem_1_address0_local = zext_ln316_1_fu_1195_p1;
        end else if ((1'b1 == ap_condition_1064)) begin
            smem_1_address0_local = zext_ln317_1_fu_1111_p1;
        end else if ((1'b1 == ap_condition_1060)) begin
            smem_1_address0_local = zext_ln315_1_fu_1105_p1;
        end else if ((1'b1 == ap_condition_1056)) begin
            smem_1_address0_local = zext_ln172_15_fu_1099_p1;
        end else if ((1'b1 == ap_condition_1052)) begin
            smem_1_address0_local = zext_ln319_fu_982_p1;
        end else if ((1'b1 == ap_condition_1049)) begin
            smem_1_address0_local = zext_ln318_fu_976_p1;
        end else if ((1'b1 == ap_condition_1046)) begin
            smem_1_address0_local = zext_ln316_fu_964_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1068)) begin
            smem_1_address1_local = zext_ln321_1_fu_1238_p1;
        end else if ((1'b1 == ap_condition_1072)) begin
            smem_1_address1_local = zext_ln320_1_fu_1232_p1;
        end else if ((1'b1 == ap_condition_1083)) begin
            smem_1_address1_local = zext_ln318_1_fu_1220_p1;
        end else if ((1'b1 == ap_condition_1079)) begin
            smem_1_address1_local = zext_ln321_fu_1093_p1;
        end else if ((1'b1 == ap_condition_1076)) begin
            smem_1_address1_local = zext_ln320_fu_1087_p1;
        end else if ((1'b1 == ap_condition_1049)) begin
            smem_1_address1_local = zext_ln317_fu_970_p1;
        end else if ((1'b1 == ap_condition_1046)) begin
            smem_1_address1_local = zext_ln315_fu_958_p1;
        end else if ((1'b1 == ap_condition_1052)) begin
            smem_1_address1_local = zext_ln172_14_fu_952_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1621 == 2'd1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1068)) begin
            smem_2_address0_local = zext_ln319_1_fu_1226_p1;
        end else if ((1'b1 == ap_condition_1083)) begin
            smem_2_address0_local = zext_ln316_1_fu_1195_p1;
        end else if ((1'b1 == ap_condition_1056)) begin
            smem_2_address0_local = zext_ln317_1_fu_1111_p1;
        end else if ((1'b1 == ap_condition_1064)) begin
            smem_2_address0_local = zext_ln315_1_fu_1105_p1;
        end else if ((1'b1 == ap_condition_1060)) begin
            smem_2_address0_local = zext_ln172_15_fu_1099_p1;
        end else if ((1'b1 == ap_condition_1046)) begin
            smem_2_address0_local = zext_ln319_fu_982_p1;
        end else if ((1'b1 == ap_condition_1052)) begin
            smem_2_address0_local = zext_ln318_fu_976_p1;
        end else if ((1'b1 == ap_condition_1049)) begin
            smem_2_address0_local = zext_ln316_fu_964_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1083)) begin
            smem_2_address1_local = zext_ln321_1_fu_1238_p1;
        end else if ((1'b1 == ap_condition_1068)) begin
            smem_2_address1_local = zext_ln320_1_fu_1232_p1;
        end else if ((1'b1 == ap_condition_1072)) begin
            smem_2_address1_local = zext_ln318_1_fu_1220_p1;
        end else if ((1'b1 == ap_condition_1086)) begin
            smem_2_address1_local = zext_ln321_fu_1093_p1;
        end else if ((1'b1 == ap_condition_1079)) begin
            smem_2_address1_local = zext_ln320_fu_1087_p1;
        end else if ((1'b1 == ap_condition_1052)) begin
            smem_2_address1_local = zext_ln317_fu_970_p1;
        end else if ((1'b1 == ap_condition_1049)) begin
            smem_2_address1_local = zext_ln315_fu_958_p1;
        end else if ((1'b1 == ap_condition_1046)) begin
            smem_2_address1_local = zext_ln172_14_fu_952_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1621 == 2'd0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1083)) begin
            smem_address0_local = zext_ln319_1_fu_1226_p1;
        end else if ((1'b1 == ap_condition_1072)) begin
            smem_address0_local = zext_ln316_1_fu_1195_p1;
        end else if ((1'b1 == ap_condition_1060)) begin
            smem_address0_local = zext_ln317_1_fu_1111_p1;
        end else if ((1'b1 == ap_condition_1056)) begin
            smem_address0_local = zext_ln315_1_fu_1105_p1;
        end else if ((1'b1 == ap_condition_1064)) begin
            smem_address0_local = zext_ln172_15_fu_1099_p1;
        end else if ((1'b1 == ap_condition_1049)) begin
            smem_address0_local = zext_ln319_fu_982_p1;
        end else if ((1'b1 == ap_condition_1046)) begin
            smem_address0_local = zext_ln318_fu_976_p1;
        end else if ((1'b1 == ap_condition_1052)) begin
            smem_address0_local = zext_ln316_fu_964_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1072)) begin
            smem_address1_local = zext_ln321_1_fu_1238_p1;
        end else if ((1'b1 == ap_condition_1083)) begin
            smem_address1_local = zext_ln320_1_fu_1232_p1;
        end else if ((1'b1 == ap_condition_1068)) begin
            smem_address1_local = zext_ln318_1_fu_1220_p1;
        end else if ((1'b1 == ap_condition_1076)) begin
            smem_address1_local = zext_ln321_fu_1093_p1;
        end else if ((1'b1 == ap_condition_1086)) begin
            smem_address1_local = zext_ln320_fu_1087_p1;
        end else if ((1'b1 == ap_condition_1046)) begin
            smem_address1_local = zext_ln317_fu_970_p1;
        end else if ((1'b1 == ap_condition_1052)) begin
            smem_address1_local = zext_ln315_fu_958_p1;
        end else if ((1'b1 == ap_condition_1049)) begin
            smem_address1_local = zext_ln172_14_fu_952_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_4_reg_1761 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1621 == 2'd1)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1621 == 2'd0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_d1 = DATA_x_1_d1_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_787_p2 = (tid_2_reg_1550 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
always @ (*) begin
    ap_condition_1046 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd2));
end
always @ (*) begin
    ap_condition_1049 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd0));
end
always @ (*) begin
    ap_condition_1052 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1621 == 2'd1));
end
always @ (*) begin
    ap_condition_1056 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_1761 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1060 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_1761 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1064 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_4_reg_1761 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1068 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_1761 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1072 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_1761 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1076 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1621 == 2'd1));
end
always @ (*) begin
    ap_condition_1079 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1621 == 2'd2));
end
always @ (*) begin
    ap_condition_1083 = ((1'b0 == ap_block_pp0_stage3) & (trunc_ln172_4_reg_1761 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1086 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1621 == 2'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_1417_p0 = zext_ln172_fu_797_p1;
assign grp_fu_1417_p1 = 10'd32;
assign grp_fu_1417_p2 = 21'd1366;
assign grp_fu_1426_p0 = zext_ln172_fu_797_p1;
assign grp_fu_1426_p1 = 10'd8;
assign grp_fu_1426_p2 = 21'd1366;
assign grp_fu_1435_p0 = zext_ln172_fu_797_p1;
assign grp_fu_1435_p1 = 10'd40;
assign grp_fu_1435_p2 = 21'd1366;
assign grp_fu_1444_p0 = zext_ln172_fu_797_p1;
assign grp_fu_1444_p1 = 10'd16;
assign grp_fu_1444_p2 = 21'd1366;
assign grp_fu_1453_p0 = zext_ln172_fu_797_p1;
assign grp_fu_1453_p1 = 10'd48;
assign grp_fu_1453_p2 = 21'd1366;
assign grp_fu_1462_p0 = zext_ln172_fu_797_p1;
assign grp_fu_1462_p1 = 10'd24;
assign grp_fu_1462_p2 = 21'd1366;
assign grp_fu_1471_p0 = zext_ln172_fu_797_p1;
assign grp_fu_1471_p1 = 10'd56;
assign grp_fu_1471_p2 = 21'd1366;
assign grp_fu_1480_p0 = zext_ln172_18_fu_800_p1;
assign grp_fu_1480_p1 = 10'd32;
assign grp_fu_1480_p2 = 21'd1366;
assign grp_fu_1489_p0 = zext_ln172_18_fu_800_p1;
assign grp_fu_1489_p1 = 10'd8;
assign grp_fu_1489_p2 = 21'd1366;
assign grp_fu_1498_p0 = zext_ln172_18_fu_800_p1;
assign grp_fu_1498_p1 = 10'd40;
assign grp_fu_1498_p2 = 21'd1366;
assign grp_fu_1507_p0 = zext_ln172_18_fu_800_p1;
assign grp_fu_1507_p1 = 10'd16;
assign grp_fu_1507_p2 = 21'd1366;
assign grp_fu_1516_p0 = zext_ln172_18_fu_800_p1;
assign grp_fu_1516_p1 = 10'd48;
assign grp_fu_1516_p2 = 21'd1366;
assign grp_fu_1525_p0 = zext_ln172_18_fu_800_p1;
assign grp_fu_1525_p1 = 10'd24;
assign grp_fu_1525_p2 = 21'd1366;
assign grp_fu_1534_p0 = zext_ln172_18_fu_800_p1;
assign grp_fu_1534_p1 = 10'd56;
assign grp_fu_1534_p2 = 21'd1366;
assign grp_fu_669_p7 = 'bx;
assign grp_fu_688_p7 = 'bx;
assign grp_fu_757_p0 = {{tmp_71_fu_735_p4}, {trunc_ln312_fu_745_p1}};
assign grp_fu_757_p1 = 9'd3;
assign grp_fu_781_p0 = {{{tmp_71_reg_1562}, {tmp_80_fu_763_p4}}, {1'd1}};
assign grp_fu_781_p1 = 9'd3;
assign mul_ln172_4_fu_991_p0 = mul_ln172_4_fu_991_p00;
assign mul_ln172_4_fu_991_p00 = offset_4_reg_1574_pp0_iter2_reg;
assign mul_ln172_4_fu_991_p1 = 19'd683;
assign mul_ln172_fu_869_p0 = mul_ln172_fu_869_p00;
assign mul_ln172_fu_869_p00 = offset_reg_1567_pp0_iter2_reg;
assign mul_ln172_fu_869_p1 = 19'd683;
assign offset_4_fu_772_p4 = {{{tmp_71_reg_1562}, {tmp_80_fu_763_p4}}, {1'd1}};
assign offset_fu_749_p3 = {{tmp_71_fu_735_p4}, {trunc_ln312_fu_745_p1}};
assign or_ln315_1_fu_1378_p3 = {{tmp_29_reg_1879}, {3'd6}};
assign or_ln318_1_fu_1391_p3 = {{tmp_29_reg_1879}, {3'd5}};
assign or_ln319_1_fu_1404_p3 = {{tmp_29_reg_1879}, {3'd7}};
assign or_ln5_fu_1244_p3 = {{trunc_ln314_reg_1868}, {2'd1}};
assign or_ln6_fu_1257_p3 = {{trunc_ln314_reg_1868}, {2'd3}};
assign or_ln_fu_1134_p3 = {{trunc_ln314_fu_1117_p1}, {2'd2}};
assign shl_ln314_1_fu_1365_p3 = {{tmp_29_reg_1879}, {3'd4}};
assign shl_ln7_fu_1120_p3 = {{trunc_ln314_fu_1117_p1}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_22_fu_1011_p7 = 'bx;
assign tmp_23_fu_1030_p7 = 'bx;
assign tmp_24_fu_1049_p7 = 'bx;
assign tmp_25_fu_1068_p7 = 'bx;
assign tmp_28_fu_1148_p7 = 'bx;
assign tmp_30_fu_1176_p7 = 'bx;
assign tmp_31_fu_1270_p7 = 'bx;
assign tmp_32_fu_1201_p7 = 'bx;
assign tmp_33_fu_1289_p7 = 'bx;
assign tmp_34_fu_1308_p7 = 'bx;
assign tmp_35_fu_1327_p7 = 'bx;
assign tmp_36_fu_1346_p7 = 'bx;
assign tmp_71_fu_735_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_73_fu_803_p1 = grp_fu_1417_p3;
assign tmp_74_fu_812_p1 = grp_fu_1426_p3;
assign tmp_75_fu_821_p1 = grp_fu_1435_p3;
assign tmp_76_fu_830_p1 = grp_fu_1444_p3;
assign tmp_77_fu_839_p1 = grp_fu_1453_p3;
assign tmp_78_fu_848_p1 = grp_fu_1462_p3;
assign tmp_79_fu_857_p1 = grp_fu_1471_p3;
assign tmp_80_fu_763_p4 = {{tid_2_reg_1550[5:1]}};
assign tmp_82_fu_889_p1 = grp_fu_1480_p3;
assign tmp_83_fu_898_p1 = grp_fu_1489_p3;
assign tmp_84_fu_907_p1 = grp_fu_1498_p3;
assign tmp_85_fu_916_p1 = grp_fu_1507_p3;
assign tmp_86_fu_925_p1 = grp_fu_1516_p3;
assign tmp_87_fu_934_p1 = grp_fu_1525_p3;
assign tmp_88_fu_943_p1 = grp_fu_1534_p3;
assign trunc_ln172_4_fu_1007_p1 = grp_fu_781_p2[1:0];
assign trunc_ln172_fu_885_p1 = grp_fu_757_p2[1:0];
assign trunc_ln312_fu_745_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_1117_p1 = tid_2_reg_1550_pp0_iter3_reg[5:0];
assign zext_ln172_14_fu_952_p1 = tmp_72_reg_1616;
assign zext_ln172_15_fu_1099_p1 = tmp_81_reg_1756;
assign zext_ln172_18_fu_800_p1 = offset_4_reg_1574_pp0_iter1_reg;
assign zext_ln172_fu_797_p1 = offset_reg_1567_pp0_iter1_reg;
assign zext_ln314_1_fu_1372_p1 = shl_ln314_1_fu_1365_p3;
assign zext_ln314_fu_1128_p1 = shl_ln7_fu_1120_p3;
assign zext_ln315_1_fu_1105_p1 = tmp_82_reg_1631;
assign zext_ln315_2_fu_1142_p1 = or_ln_fu_1134_p3;
assign zext_ln315_3_fu_1385_p1 = or_ln315_1_fu_1378_p3;
assign zext_ln315_fu_958_p1 = tmp_73_reg_1581;
assign zext_ln316_1_fu_1195_p1 = tmp_83_reg_1636;
assign zext_ln316_fu_964_p1 = tmp_74_reg_1586;
assign zext_ln317_1_fu_1111_p1 = tmp_84_reg_1641;
assign zext_ln317_fu_970_p1 = tmp_75_reg_1591;
assign zext_ln318_1_fu_1220_p1 = tmp_85_reg_1646;
assign zext_ln318_2_fu_1251_p1 = or_ln5_fu_1244_p3;
assign zext_ln318_3_fu_1398_p1 = or_ln318_1_fu_1391_p3;
assign zext_ln318_fu_976_p1 = tmp_76_reg_1596;
assign zext_ln319_1_fu_1226_p1 = tmp_86_reg_1651;
assign zext_ln319_2_fu_1264_p1 = or_ln6_fu_1257_p3;
assign zext_ln319_3_fu_1411_p1 = or_ln319_1_fu_1404_p3;
assign zext_ln319_fu_982_p1 = tmp_77_reg_1601;
assign zext_ln320_1_fu_1232_p1 = tmp_87_reg_1656;
assign zext_ln320_fu_1087_p1 = tmp_78_reg_1606;
assign zext_ln321_1_fu_1238_p1 = tmp_88_reg_1661;
assign zext_ln321_fu_1093_p1 = tmp_79_reg_1611;
always @ (posedge ap_clk) begin
    offset_4_reg_1574[0] <= 1'b1;
    offset_4_reg_1574_pp0_iter1_reg[0] <= 1'b1;
    offset_4_reg_1574_pp0_iter2_reg[0] <= 1'b1;
end
endmodule 