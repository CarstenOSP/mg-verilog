
module bicg_bicg_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_0_address0,v137_0_ce0,v137_0_q0,v137_0_address1,v137_0_ce1,v137_0_q1,v137_1_address0,v137_1_ce0,v137_1_q0,v137_1_address1,v137_1_ce1,v137_1_q1,v137_2_address0,v137_2_ce0,v137_2_q0,v137_2_address1,v137_2_ce1,v137_2_q1,v137_3_address0,v137_3_ce0,v137_3_q0,v137_3_address1,v137_3_ce1,v137_3_q1,v139_address0,v139_ce0,v139_q0,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1);  
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
output  [9:0] v137_0_address0;
output   v137_0_ce0;
input  [31:0] v137_0_q0;
output  [9:0] v137_0_address1;
output   v137_0_ce1;
input  [31:0] v137_0_q1;
output  [9:0] v137_1_address0;
output   v137_1_ce0;
input  [31:0] v137_1_q0;
output  [9:0] v137_1_address1;
output   v137_1_ce1;
input  [31:0] v137_1_q1;
output  [9:0] v137_2_address0;
output   v137_2_ce0;
input  [31:0] v137_2_q0;
output  [9:0] v137_2_address1;
output   v137_2_ce1;
input  [31:0] v137_2_q1;
output  [9:0] v137_3_address0;
output   v137_3_ce0;
input  [31:0] v137_3_q0;
output  [9:0] v137_3_address1;
output   v137_3_ce1;
input  [31:0] v137_3_q1;
output  [5:0] v139_address0;
output   v139_ce0;
input  [31:0] v139_q0;
output  [4:0] v10_0_address0;
output   v10_0_ce0;
output   v10_0_we0;
output  [31:0] v10_0_d0;
input  [31:0] v10_0_q0;
output  [4:0] v10_0_address1;
output   v10_0_ce1;
output   v10_0_we1;
output  [31:0] v10_0_d1;
input  [31:0] v10_0_q1;
output  [4:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [31:0] v10_1_d0;
input  [31:0] v10_1_q0;
output  [4:0] v10_1_address1;
output   v10_1_ce1;
output   v10_1_we1;
output  [31:0] v10_1_d1;
input  [31:0] v10_1_q1;
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
reg   [0:0] icmp_ln41_reg_1238;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_505_p2;
reg   [31:0] reg_549;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_509_p2;
reg   [31:0] reg_554;
wire   [0:0] icmp_ln41_fu_577_p2;
wire   [6:0] select_ln41_fu_609_p3;
reg   [6:0] select_ln41_reg_1242;
wire   [1:0] trunc_ln41_1_fu_634_p1;
reg   [1:0] trunc_ln41_1_reg_1247;
wire   [3:0] lshr_ln_fu_638_p4;
reg   [3:0] lshr_ln_reg_1259;
wire   [0:0] cmp7_fu_648_p2;
reg   [0:0] cmp7_reg_1269;
reg   [0:0] cmp7_reg_1269_pp0_iter1_reg;
wire   [4:0] lshr_ln1_fu_670_p4;
reg   [4:0] lshr_ln1_reg_1302;
reg   [3:0] tmp_11_reg_1327;
wire   [0:0] trunc_ln58_fu_708_p1;
reg   [0:0] trunc_ln58_reg_1334;
reg   [2:0] tmp_14_reg_1340;
wire   [1:0] trunc_ln72_fu_722_p1;
reg   [1:0] trunc_ln72_reg_1350;
reg   [0:0] tmp_6_reg_1355;
wire   [31:0] v17_fu_744_p1;
reg   [31:0] v17_reg_1361;
wire   [31:0] v16_fu_764_p11;
reg   [31:0] v16_reg_1367;
wire   [31:0] v23_fu_803_p11;
reg   [31:0] v23_reg_1372;
wire   [31:0] v29_fu_875_p11;
reg   [31:0] v29_reg_1417;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v35_fu_914_p11;
reg   [31:0] v35_reg_1422;
reg   [4:0] v10_0_addr_reg_1467;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] v10_0_addr_reg_1467_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_1467_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_1472;
reg   [4:0] v10_1_addr_reg_1472_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_1472_pp0_iter3_reg;
reg   [4:0] v10_0_addr_1_reg_1477;
reg   [4:0] v10_0_addr_1_reg_1477_pp0_iter2_reg;
reg   [4:0] v10_0_addr_1_reg_1477_pp0_iter3_reg;
reg   [4:0] v10_1_addr_1_reg_1483;
reg   [4:0] v10_1_addr_1_reg_1483_pp0_iter2_reg;
reg   [4:0] v10_1_addr_1_reg_1483_pp0_iter3_reg;
wire   [31:0] v41_fu_1007_p11;
reg   [31:0] v41_reg_1489;
wire   [31:0] v47_fu_1046_p11;
reg   [31:0] v47_reg_1494;
wire   [31:0] grp_fu_521_p3;
reg   [31:0] v15_reg_1539;
reg   [4:0] v10_0_addr_2_reg_1544;
reg   [4:0] v10_0_addr_2_reg_1544_pp0_iter2_reg;
reg   [4:0] v10_0_addr_2_reg_1544_pp0_iter3_reg;
reg   [4:0] v10_0_addr_2_reg_1544_pp0_iter4_reg;
reg   [4:0] v10_1_addr_2_reg_1550;
reg   [4:0] v10_1_addr_2_reg_1550_pp0_iter2_reg;
reg   [4:0] v10_1_addr_2_reg_1550_pp0_iter3_reg;
reg   [4:0] v10_1_addr_2_reg_1550_pp0_iter4_reg;
reg   [4:0] v10_0_addr_3_reg_1556;
reg   [4:0] v10_0_addr_3_reg_1556_pp0_iter2_reg;
reg   [4:0] v10_0_addr_3_reg_1556_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_1556_pp0_iter4_reg;
wire   [31:0] v53_fu_1155_p11;
reg   [31:0] v53_reg_1561;
reg   [4:0] v10_1_addr_3_reg_1566;
reg   [4:0] v10_1_addr_3_reg_1566_pp0_iter2_reg;
reg   [4:0] v10_1_addr_3_reg_1566_pp0_iter3_reg;
reg   [4:0] v10_1_addr_3_reg_1566_pp0_iter4_reg;
wire   [31:0] v59_fu_1194_p11;
reg   [31:0] v59_reg_1571;
wire   [31:0] grp_fu_528_p3;
reg   [31:0] v22_reg_1576;
wire   [31:0] grp_fu_535_p3;
reg   [31:0] v28_reg_1581;
wire   [31:0] grp_fu_542_p3;
reg   [31:0] v34_reg_1586;
wire   [31:0] grp_fu_513_p2;
reg   [31:0] v18_reg_1591;
wire   [31:0] grp_fu_517_p2;
reg   [31:0] v24_reg_1596;
reg   [31:0] v40_reg_1601;
reg   [31:0] v46_reg_1606;
reg   [31:0] v52_reg_1611;
reg   [31:0] v58_reg_1616;
reg   [31:0] v30_reg_1621;
reg   [31:0] v36_reg_1626;
reg   [31:0] v42_reg_1631;
reg   [31:0] v48_reg_1636;
reg   [31:0] v54_reg_1641;
reg   [31:0] v60_reg_1646;
reg   [31:0] v43_reg_1651;
reg   [31:0] v49_reg_1656;
reg   [31:0] v55_reg_1661;
reg   [31:0] v61_reg_1666;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln41_fu_629_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln46_fu_662_p1;
wire   [63:0] zext_ln54_fu_690_p1;
wire   [63:0] zext_ln61_fu_835_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln68_fu_851_p1;
wire   [63:0] zext_ln75_fu_946_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln82_fu_965_p1;
wire   [63:0] zext_ln42_fu_973_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln59_fu_985_p1;
wire   [63:0] zext_ln89_fu_1078_p1;
wire   [63:0] zext_ln96_fu_1094_p1;
wire   [63:0] zext_ln73_fu_1120_p1;
wire   [63:0] zext_ln87_fu_1133_p1;
reg   [6:0] v12_fu_106;
wire   [6:0] add_ln42_fu_1102_p2;
wire    ap_loop_init;
reg   [6:0] v11_fu_110;
wire   [6:0] select_ln41_1_fu_621_p3;
reg   [9:0] indvar_flatten_fu_114;
wire   [9:0] add_ln41_1_fu_583_p2;
reg    v139_ce0_local;
reg    v137_0_ce1_local;
reg   [9:0] v137_0_address1_local;
reg    v137_0_ce0_local;
reg   [9:0] v137_0_address0_local;
reg    v137_1_ce1_local;
reg   [9:0] v137_1_address1_local;
reg    v137_1_ce0_local;
reg   [9:0] v137_1_address0_local;
reg    v137_2_ce1_local;
reg   [9:0] v137_2_address1_local;
reg    v137_2_ce0_local;
reg   [9:0] v137_2_address0_local;
reg    v137_3_ce1_local;
reg   [9:0] v137_3_address1_local;
reg    v137_3_ce0_local;
reg   [9:0] v137_3_address0_local;
reg    v10_0_ce1_local;
reg   [4:0] v10_0_address1_local;
reg    v10_0_ce0_local;
reg   [4:0] v10_0_address0_local;
reg    v10_0_we1_local;
reg    v10_0_we0_local;
reg   [31:0] v10_0_d0_local;
reg    v10_1_ce1_local;
reg   [4:0] v10_1_address1_local;
reg    v10_1_ce0_local;
reg   [4:0] v10_1_address0_local;
reg    v10_1_we1_local;
reg    v10_1_we0_local;
reg   [31:0] v10_1_d0_local;
reg   [31:0] grp_fu_505_p0;
reg   [31:0] grp_fu_505_p1;
reg   [31:0] grp_fu_509_p0;
reg   [31:0] grp_fu_509_p1;
reg   [31:0] grp_fu_513_p0;
reg   [31:0] grp_fu_517_p0;
reg   [0:0] grp_fu_521_p0;
reg   [0:0] grp_fu_528_p0;
reg   [0:0] grp_fu_535_p0;
reg   [0:0] grp_fu_542_p0;
wire   [0:0] tmp_5_fu_601_p3;
wire   [6:0] add_ln41_fu_595_p2;
wire   [5:0] trunc_ln41_fu_617_p1;
wire   [9:0] tmp_fu_654_p3;
wire   [9:0] tmp_s_fu_680_p4;
wire   [31:0] v16_fu_764_p2;
wire   [31:0] v16_fu_764_p4;
wire   [31:0] v16_fu_764_p6;
wire   [31:0] v16_fu_764_p8;
wire   [31:0] v16_fu_764_p9;
wire   [31:0] v23_fu_803_p2;
wire   [31:0] v23_fu_803_p4;
wire   [31:0] v23_fu_803_p6;
wire   [31:0] v23_fu_803_p8;
wire   [31:0] v23_fu_803_p9;
wire   [9:0] tmp_12_fu_826_p5;
wire   [9:0] tmp_13_fu_843_p4;
wire   [31:0] v29_fu_875_p2;
wire   [31:0] v29_fu_875_p4;
wire   [31:0] v29_fu_875_p6;
wire   [31:0] v29_fu_875_p8;
wire   [31:0] v29_fu_875_p9;
wire   [31:0] v35_fu_914_p2;
wire   [31:0] v35_fu_914_p4;
wire   [31:0] v35_fu_914_p6;
wire   [31:0] v35_fu_914_p8;
wire   [31:0] v35_fu_914_p9;
wire   [9:0] tmp_15_fu_937_p5;
wire   [9:0] tmp_16_fu_954_p6;
wire   [4:0] or_ln58_1_fu_978_p3;
wire   [31:0] v41_fu_1007_p2;
wire   [31:0] v41_fu_1007_p4;
wire   [31:0] v41_fu_1007_p6;
wire   [31:0] v41_fu_1007_p8;
wire   [31:0] v41_fu_1007_p9;
wire   [31:0] v47_fu_1046_p2;
wire   [31:0] v47_fu_1046_p4;
wire   [31:0] v47_fu_1046_p6;
wire   [31:0] v47_fu_1046_p8;
wire   [31:0] v47_fu_1046_p9;
wire   [9:0] tmp_17_fu_1069_p5;
wire   [9:0] tmp_18_fu_1086_p4;
wire   [4:0] or_ln72_1_fu_1112_p4;
wire   [4:0] or_ln86_1_fu_1126_p3;
wire   [31:0] v53_fu_1155_p2;
wire   [31:0] v53_fu_1155_p4;
wire   [31:0] v53_fu_1155_p6;
wire   [31:0] v53_fu_1155_p8;
wire   [31:0] v53_fu_1155_p9;
wire   [31:0] v59_fu_1194_p2;
wire   [31:0] v59_fu_1194_p4;
wire   [31:0] v59_fu_1194_p6;
wire   [31:0] v59_fu_1194_p8;
wire   [31:0] v59_fu_1194_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v16_fu_764_p1;
wire   [1:0] v16_fu_764_p3;
wire  signed [1:0] v16_fu_764_p5;
wire  signed [1:0] v16_fu_764_p7;
wire   [1:0] v23_fu_803_p1;
wire   [1:0] v23_fu_803_p3;
wire  signed [1:0] v23_fu_803_p5;
wire  signed [1:0] v23_fu_803_p7;
wire   [1:0] v29_fu_875_p1;
wire   [1:0] v29_fu_875_p3;
wire  signed [1:0] v29_fu_875_p5;
wire  signed [1:0] v29_fu_875_p7;
wire   [1:0] v35_fu_914_p1;
wire   [1:0] v35_fu_914_p3;
wire  signed [1:0] v35_fu_914_p5;
wire  signed [1:0] v35_fu_914_p7;
wire   [1:0] v41_fu_1007_p1;
wire   [1:0] v41_fu_1007_p3;
wire  signed [1:0] v41_fu_1007_p5;
wire  signed [1:0] v41_fu_1007_p7;
wire   [1:0] v47_fu_1046_p1;
wire   [1:0] v47_fu_1046_p3;
wire  signed [1:0] v47_fu_1046_p5;
wire  signed [1:0] v47_fu_1046_p7;
wire   [1:0] v53_fu_1155_p1;
wire   [1:0] v53_fu_1155_p3;
wire  signed [1:0] v53_fu_1155_p5;
wire  signed [1:0] v53_fu_1155_p7;
wire   [1:0] v59_fu_1194_p1;
wire   [1:0] v59_fu_1194_p3;
wire  signed [1:0] v59_fu_1194_p5;
wire  signed [1:0] v59_fu_1194_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_fu_106 = 7'd0;
#0 v11_fu_110 = 7'd0;
#0 indvar_flatten_fu_114 = 10'd0;
#0 ap_done_reg = 1'b0;
end
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_505_p0),.din1(grp_fu_505_p1),.ce(1'b1),.dout(grp_fu_505_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_509_p0),.din1(grp_fu_509_p1),.ce(1'b1),.dout(grp_fu_509_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_513_p0),.din1(v17_reg_1361),.ce(1'b1),.dout(grp_fu_513_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_517_p0),.din1(v17_reg_1361),.ce(1'b1),.dout(grp_fu_517_p2));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U15(.din0(v16_fu_764_p2),.din1(v16_fu_764_p4),.din2(v16_fu_764_p6),.din3(v16_fu_764_p8),.def(v16_fu_764_p9),.sel(trunc_ln41_1_reg_1247),.dout(v16_fu_764_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U16(.din0(v23_fu_803_p2),.din1(v23_fu_803_p4),.din2(v23_fu_803_p6),.din3(v23_fu_803_p8),.def(v23_fu_803_p9),.sel(trunc_ln41_1_reg_1247),.dout(v23_fu_803_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U17(.din0(v29_fu_875_p2),.din1(v29_fu_875_p4),.din2(v29_fu_875_p6),.din3(v29_fu_875_p8),.def(v29_fu_875_p9),.sel(trunc_ln41_1_reg_1247),.dout(v29_fu_875_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U18(.din0(v35_fu_914_p2),.din1(v35_fu_914_p4),.din2(v35_fu_914_p6),.din3(v35_fu_914_p8),.def(v35_fu_914_p9),.sel(trunc_ln41_1_reg_1247),.dout(v35_fu_914_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U19(.din0(v41_fu_1007_p2),.din1(v41_fu_1007_p4),.din2(v41_fu_1007_p6),.din3(v41_fu_1007_p8),.def(v41_fu_1007_p9),.sel(trunc_ln41_1_reg_1247),.dout(v41_fu_1007_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U20(.din0(v47_fu_1046_p2),.din1(v47_fu_1046_p4),.din2(v47_fu_1046_p6),.din3(v47_fu_1046_p8),.def(v47_fu_1046_p9),.sel(trunc_ln41_1_reg_1247),.dout(v47_fu_1046_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U21(.din0(v53_fu_1155_p2),.din1(v53_fu_1155_p4),.din2(v53_fu_1155_p6),.din3(v53_fu_1155_p8),.def(v53_fu_1155_p9),.sel(trunc_ln41_1_reg_1247),.dout(v53_fu_1155_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U22(.din0(v59_fu_1194_p2),.din1(v59_fu_1194_p4),.din2(v59_fu_1194_p6),.din3(v59_fu_1194_p8),.def(v59_fu_1194_p9),.sel(trunc_ln41_1_reg_1247),.dout(v59_fu_1194_p11));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_114 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln41_fu_577_p2 == 1'd0))) begin
        indvar_flatten_fu_114 <= add_ln41_1_fu_583_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11_fu_110 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln41_fu_577_p2 == 1'd0))) begin
        v11_fu_110 <= select_ln41_1_fu_621_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v12_fu_106 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v12_fu_106 <= add_ln42_fu_1102_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        v29_reg_1417 <= v29_fu_875_p11;
        v35_reg_1422 <= v35_fu_914_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1269 <= cmp7_fu_648_p2;
        cmp7_reg_1269_pp0_iter1_reg <= cmp7_reg_1269;
        icmp_ln41_reg_1238 <= icmp_ln41_fu_577_p2;
        lshr_ln1_reg_1302 <= {{select_ln41_fu_609_p3[5:1]}};
        lshr_ln_reg_1259 <= {{select_ln41_1_fu_621_p3[5:2]}};
        select_ln41_reg_1242 <= select_ln41_fu_609_p3;
        tmp_11_reg_1327 <= {{select_ln41_fu_609_p3[5:2]}};
        tmp_14_reg_1340 <= {{select_ln41_fu_609_p3[5:3]}};
        tmp_6_reg_1355 <= select_ln41_fu_609_p3[32'd1];
        trunc_ln41_1_reg_1247 <= trunc_ln41_1_fu_634_p1;
        trunc_ln58_reg_1334 <= trunc_ln58_fu_708_p1;
        trunc_ln72_reg_1350 <= trunc_ln72_fu_722_p1;
        v10_0_addr_2_reg_1544[0] <= zext_ln73_fu_1120_p1[0];
v10_0_addr_2_reg_1544[4 : 2] <= zext_ln73_fu_1120_p1[4 : 2];
        v10_0_addr_2_reg_1544_pp0_iter2_reg[0] <= v10_0_addr_2_reg_1544[0];
v10_0_addr_2_reg_1544_pp0_iter2_reg[4 : 2] <= v10_0_addr_2_reg_1544[4 : 2];
        v10_0_addr_2_reg_1544_pp0_iter3_reg[0] <= v10_0_addr_2_reg_1544_pp0_iter2_reg[0];
v10_0_addr_2_reg_1544_pp0_iter3_reg[4 : 2] <= v10_0_addr_2_reg_1544_pp0_iter2_reg[4 : 2];
        v10_0_addr_2_reg_1544_pp0_iter4_reg[0] <= v10_0_addr_2_reg_1544_pp0_iter3_reg[0];
v10_0_addr_2_reg_1544_pp0_iter4_reg[4 : 2] <= v10_0_addr_2_reg_1544_pp0_iter3_reg[4 : 2];
        v10_0_addr_3_reg_1556[4 : 2] <= zext_ln87_fu_1133_p1[4 : 2];
        v10_0_addr_3_reg_1556_pp0_iter2_reg[4 : 2] <= v10_0_addr_3_reg_1556[4 : 2];
        v10_0_addr_3_reg_1556_pp0_iter3_reg[4 : 2] <= v10_0_addr_3_reg_1556_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_1556_pp0_iter4_reg[4 : 2] <= v10_0_addr_3_reg_1556_pp0_iter3_reg[4 : 2];
        v10_1_addr_2_reg_1550[0] <= zext_ln73_fu_1120_p1[0];
v10_1_addr_2_reg_1550[4 : 2] <= zext_ln73_fu_1120_p1[4 : 2];
        v10_1_addr_2_reg_1550_pp0_iter2_reg[0] <= v10_1_addr_2_reg_1550[0];
v10_1_addr_2_reg_1550_pp0_iter2_reg[4 : 2] <= v10_1_addr_2_reg_1550[4 : 2];
        v10_1_addr_2_reg_1550_pp0_iter3_reg[0] <= v10_1_addr_2_reg_1550_pp0_iter2_reg[0];
v10_1_addr_2_reg_1550_pp0_iter3_reg[4 : 2] <= v10_1_addr_2_reg_1550_pp0_iter2_reg[4 : 2];
        v10_1_addr_2_reg_1550_pp0_iter4_reg[0] <= v10_1_addr_2_reg_1550_pp0_iter3_reg[0];
v10_1_addr_2_reg_1550_pp0_iter4_reg[4 : 2] <= v10_1_addr_2_reg_1550_pp0_iter3_reg[4 : 2];
        v10_1_addr_3_reg_1566[4 : 2] <= zext_ln87_fu_1133_p1[4 : 2];
        v10_1_addr_3_reg_1566_pp0_iter2_reg[4 : 2] <= v10_1_addr_3_reg_1566[4 : 2];
        v10_1_addr_3_reg_1566_pp0_iter3_reg[4 : 2] <= v10_1_addr_3_reg_1566_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_1566_pp0_iter4_reg[4 : 2] <= v10_1_addr_3_reg_1566_pp0_iter3_reg[4 : 2];
        v53_reg_1561 <= v53_fu_1155_p11;
        v59_reg_1571 <= v59_fu_1194_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_549 <= grp_fu_505_p2;
        reg_554 <= grp_fu_509_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_addr_1_reg_1477[4 : 1] <= zext_ln59_fu_985_p1[4 : 1];
        v10_0_addr_1_reg_1477_pp0_iter2_reg[4 : 1] <= v10_0_addr_1_reg_1477[4 : 1];
        v10_0_addr_1_reg_1477_pp0_iter3_reg[4 : 1] <= v10_0_addr_1_reg_1477_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_1467 <= zext_ln42_fu_973_p1;
        v10_0_addr_reg_1467_pp0_iter2_reg <= v10_0_addr_reg_1467;
        v10_0_addr_reg_1467_pp0_iter3_reg <= v10_0_addr_reg_1467_pp0_iter2_reg;
        v10_1_addr_1_reg_1483[4 : 1] <= zext_ln59_fu_985_p1[4 : 1];
        v10_1_addr_1_reg_1483_pp0_iter2_reg[4 : 1] <= v10_1_addr_1_reg_1483[4 : 1];
        v10_1_addr_1_reg_1483_pp0_iter3_reg[4 : 1] <= v10_1_addr_1_reg_1483_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_1472 <= zext_ln42_fu_973_p1;
        v10_1_addr_reg_1472_pp0_iter2_reg <= v10_1_addr_reg_1472;
        v10_1_addr_reg_1472_pp0_iter3_reg <= v10_1_addr_reg_1472_pp0_iter2_reg;
        v41_reg_1489 <= v41_fu_1007_p11;
        v47_reg_1494 <= v47_fu_1046_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v15_reg_1539 <= grp_fu_521_p3;
        v22_reg_1576 <= grp_fu_528_p3;
        v28_reg_1581 <= grp_fu_535_p3;
        v34_reg_1586 <= grp_fu_542_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v16_reg_1367 <= v16_fu_764_p11;
        v17_reg_1361 <= v17_fu_744_p1;
        v23_reg_1372 <= v23_fu_803_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v18_reg_1591 <= grp_fu_513_p2;
        v24_reg_1596 <= grp_fu_517_p2;
        v40_reg_1601 <= grp_fu_521_p3;
        v46_reg_1606 <= grp_fu_528_p3;
        v52_reg_1611 <= grp_fu_535_p3;
        v58_reg_1616 <= grp_fu_542_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v30_reg_1621 <= grp_fu_513_p2;
        v36_reg_1626 <= grp_fu_517_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v42_reg_1631 <= grp_fu_513_p2;
        v48_reg_1636 <= grp_fu_517_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v43_reg_1651 <= grp_fu_505_p2;
        v49_reg_1656 <= grp_fu_509_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v54_reg_1641 <= grp_fu_513_p2;
        v60_reg_1646 <= grp_fu_517_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v55_reg_1661 <= grp_fu_505_p2;
        v61_reg_1666 <= grp_fu_509_p2;
    end
end
always @ (*) begin
    if (((icmp_ln41_reg_1238 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_505_p0 = v52_reg_1611;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_505_p0 = v40_reg_1601;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_505_p0 = v28_reg_1581;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_505_p0 = v15_reg_1539;
    end else begin
        grp_fu_505_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_505_p1 = v54_reg_1641;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_505_p1 = v42_reg_1631;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_505_p1 = v30_reg_1621;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_505_p1 = v18_reg_1591;
    end else begin
        grp_fu_505_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_509_p0 = v58_reg_1616;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_509_p0 = v46_reg_1606;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_509_p0 = v34_reg_1586;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_509_p0 = v22_reg_1576;
    end else begin
        grp_fu_509_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_509_p1 = v60_reg_1646;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_509_p1 = v48_reg_1636;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_509_p1 = v36_reg_1626;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_509_p1 = v24_reg_1596;
    end else begin
        grp_fu_509_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_513_p0 = v53_reg_1561;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_513_p0 = v41_reg_1489;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_513_p0 = v29_reg_1417;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_513_p0 = v16_reg_1367;
    end else begin
        grp_fu_513_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_517_p0 = v59_reg_1571;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_517_p0 = v47_reg_1494;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_517_p0 = v35_reg_1422;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_517_p0 = v23_reg_1372;
    end else begin
        grp_fu_517_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_521_p0 = cmp7_reg_1269_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_521_p0 = cmp7_reg_1269;
        end else begin
            grp_fu_521_p0 = 'bx;
        end
    end else begin
        grp_fu_521_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_528_p0 = cmp7_reg_1269_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_528_p0 = cmp7_reg_1269;
        end else begin
            grp_fu_528_p0 = 'bx;
        end
    end else begin
        grp_fu_528_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_535_p0 = cmp7_reg_1269_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_535_p0 = cmp7_reg_1269;
        end else begin
            grp_fu_535_p0 = 'bx;
        end
    end else begin
        grp_fu_535_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_542_p0 = cmp7_reg_1269_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_542_p0 = cmp7_reg_1269;
        end else begin
            grp_fu_542_p0 = 'bx;
        end
    end else begin
        grp_fu_542_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_3_reg_1556_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_2_reg_1544_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_1133_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_985_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_1_reg_1477_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_1467_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_1120_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_973_p1;
    end else begin
        v10_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce0_local = 1'b1;
    end else begin
        v10_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce1_local = 1'b1;
    end else begin
        v10_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v10_0_d0_local = v55_reg_1661;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v10_0_d0_local = v43_reg_1651;
        end else begin
            v10_0_d0_local = 'bx;
        end
    end else begin
        v10_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we0_local = 1'b1;
    end else begin
        v10_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we1_local = 1'b1;
    end else begin
        v10_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address0_local = v10_1_addr_3_reg_1566_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_2_reg_1550_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_1133_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_985_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_1_reg_1483_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_1472_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_1120_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_973_p1;
    end else begin
        v10_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce1_local = 1'b1;
    end else begin
        v10_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v10_1_d0_local = v61_reg_1666;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v10_1_d0_local = v49_reg_1656;
        end else begin
            v10_1_d0_local = 'bx;
        end
    end else begin
        v10_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we0_local = 1'b1;
    end else begin
        v10_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we1_local = 1'b1;
    end else begin
        v10_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_0_address0_local = zext_ln96_fu_1094_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_0_address0_local = zext_ln82_fu_965_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_0_address0_local = zext_ln68_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_0_address0_local = zext_ln54_fu_690_p1;
    end else begin
        v137_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_0_address1_local = zext_ln89_fu_1078_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_0_address1_local = zext_ln75_fu_946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_0_address1_local = zext_ln61_fu_835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_0_address1_local = zext_ln46_fu_662_p1;
    end else begin
        v137_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_0_ce0_local = 1'b1;
    end else begin
        v137_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_0_ce1_local = 1'b1;
    end else begin
        v137_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_1_address0_local = zext_ln96_fu_1094_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_1_address0_local = zext_ln82_fu_965_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_1_address0_local = zext_ln68_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_1_address0_local = zext_ln54_fu_690_p1;
    end else begin
        v137_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_1_address1_local = zext_ln89_fu_1078_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_1_address1_local = zext_ln75_fu_946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_1_address1_local = zext_ln61_fu_835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_1_address1_local = zext_ln46_fu_662_p1;
    end else begin
        v137_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_1_ce0_local = 1'b1;
    end else begin
        v137_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_1_ce1_local = 1'b1;
    end else begin
        v137_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_2_address0_local = zext_ln96_fu_1094_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_2_address0_local = zext_ln82_fu_965_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_2_address0_local = zext_ln68_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_2_address0_local = zext_ln54_fu_690_p1;
    end else begin
        v137_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_2_address1_local = zext_ln89_fu_1078_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_2_address1_local = zext_ln75_fu_946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_2_address1_local = zext_ln61_fu_835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_2_address1_local = zext_ln46_fu_662_p1;
    end else begin
        v137_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_2_ce0_local = 1'b1;
    end else begin
        v137_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_2_ce1_local = 1'b1;
    end else begin
        v137_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_3_address0_local = zext_ln96_fu_1094_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_3_address0_local = zext_ln82_fu_965_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_3_address0_local = zext_ln68_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_3_address0_local = zext_ln54_fu_690_p1;
    end else begin
        v137_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v137_3_address1_local = zext_ln89_fu_1078_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v137_3_address1_local = zext_ln75_fu_946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v137_3_address1_local = zext_ln61_fu_835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v137_3_address1_local = zext_ln46_fu_662_p1;
    end else begin
        v137_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_3_ce0_local = 1'b1;
    end else begin
        v137_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_3_ce1_local = 1'b1;
    end else begin
        v137_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v139_ce0_local = 1'b1;
    end else begin
        v139_ce0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign add_ln41_1_fu_583_p2 = (indvar_flatten_fu_114 + 10'd1);
assign add_ln41_fu_595_p2 = (v11_fu_110 + 7'd1);
assign add_ln42_fu_1102_p2 = (select_ln41_reg_1242 + 7'd8);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign cmp7_fu_648_p2 = ((select_ln41_1_fu_621_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_521_p3 = ((grp_fu_521_p0[0:0] == 1'b1) ? 32'd0 : v10_0_q1);
assign grp_fu_528_p3 = ((grp_fu_528_p0[0:0] == 1'b1) ? 32'd0 : v10_1_q1);
assign grp_fu_535_p3 = ((grp_fu_535_p0[0:0] == 1'b1) ? 32'd0 : v10_0_q0);
assign grp_fu_542_p3 = ((grp_fu_542_p0[0:0] == 1'b1) ? 32'd0 : v10_1_q0);
assign icmp_ln41_fu_577_p2 = ((indvar_flatten_fu_114 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_670_p4 = {{select_ln41_fu_609_p3[5:1]}};
assign lshr_ln_fu_638_p4 = {{select_ln41_1_fu_621_p3[5:2]}};
assign or_ln58_1_fu_978_p3 = {{tmp_11_reg_1327}, {1'd1}};
assign or_ln72_1_fu_1112_p4 = {{{tmp_14_reg_1340}, {1'd1}}, {tmp_6_reg_1355}};
assign or_ln86_1_fu_1126_p3 = {{tmp_14_reg_1340}, {2'd3}};
assign select_ln41_1_fu_621_p3 = ((tmp_5_fu_601_p3[0:0] == 1'b1) ? add_ln41_fu_595_p2 : v11_fu_110);
assign select_ln41_fu_609_p3 = ((tmp_5_fu_601_p3[0:0] == 1'b1) ? 7'd0 : v12_fu_106);
assign tmp_12_fu_826_p5 = {{{{tmp_11_reg_1327}, {1'd1}}, {trunc_ln58_reg_1334}}, {lshr_ln_reg_1259}};
assign tmp_13_fu_843_p4 = {{{tmp_11_reg_1327}, {2'd3}}, {lshr_ln_reg_1259}};
assign tmp_15_fu_937_p5 = {{{{tmp_14_reg_1340}, {1'd1}}, {trunc_ln72_reg_1350}}, {lshr_ln_reg_1259}};
assign tmp_16_fu_954_p6 = {{{{{tmp_14_reg_1340}, {1'd1}}, {tmp_6_reg_1355}}, {1'd1}}, {lshr_ln_reg_1259}};
assign tmp_17_fu_1069_p5 = {{{{tmp_14_reg_1340}, {2'd3}}, {trunc_ln58_reg_1334}}, {lshr_ln_reg_1259}};
assign tmp_18_fu_1086_p4 = {{{tmp_14_reg_1340}, {3'd7}}, {lshr_ln_reg_1259}};
assign tmp_5_fu_601_p3 = v12_fu_106[32'd6];
assign tmp_fu_654_p3 = {{trunc_ln41_fu_617_p1}, {lshr_ln_fu_638_p4}};
assign tmp_s_fu_680_p4 = {{{lshr_ln1_fu_670_p4}, {1'd1}}, {lshr_ln_fu_638_p4}};
assign trunc_ln41_1_fu_634_p1 = select_ln41_1_fu_621_p3[1:0];
assign trunc_ln41_fu_617_p1 = select_ln41_fu_609_p3[5:0];
assign trunc_ln58_fu_708_p1 = select_ln41_fu_609_p3[0:0];
assign trunc_ln72_fu_722_p1 = select_ln41_fu_609_p3[1:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_549;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_554;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_0_address0 = v137_0_address0_local;
assign v137_0_address1 = v137_0_address1_local;
assign v137_0_ce0 = v137_0_ce0_local;
assign v137_0_ce1 = v137_0_ce1_local;
assign v137_1_address0 = v137_1_address0_local;
assign v137_1_address1 = v137_1_address1_local;
assign v137_1_ce0 = v137_1_ce0_local;
assign v137_1_ce1 = v137_1_ce1_local;
assign v137_2_address0 = v137_2_address0_local;
assign v137_2_address1 = v137_2_address1_local;
assign v137_2_ce0 = v137_2_ce0_local;
assign v137_2_ce1 = v137_2_ce1_local;
assign v137_3_address0 = v137_3_address0_local;
assign v137_3_address1 = v137_3_address1_local;
assign v137_3_ce0 = v137_3_ce0_local;
assign v137_3_ce1 = v137_3_ce1_local;
assign v139_address0 = zext_ln41_fu_629_p1;
assign v139_ce0 = v139_ce0_local;
assign v16_fu_764_p2 = v137_0_q1;
assign v16_fu_764_p4 = v137_1_q1;
assign v16_fu_764_p6 = v137_2_q1;
assign v16_fu_764_p8 = v137_3_q1;
assign v16_fu_764_p9 = 'bx;
assign v17_fu_744_p1 = v139_q0;
assign v23_fu_803_p2 = v137_0_q0;
assign v23_fu_803_p4 = v137_1_q0;
assign v23_fu_803_p6 = v137_2_q0;
assign v23_fu_803_p8 = v137_3_q0;
assign v23_fu_803_p9 = 'bx;
assign v29_fu_875_p2 = v137_0_q1;
assign v29_fu_875_p4 = v137_1_q1;
assign v29_fu_875_p6 = v137_2_q1;
assign v29_fu_875_p8 = v137_3_q1;
assign v29_fu_875_p9 = 'bx;
assign v35_fu_914_p2 = v137_0_q0;
assign v35_fu_914_p4 = v137_1_q0;
assign v35_fu_914_p6 = v137_2_q0;
assign v35_fu_914_p8 = v137_3_q0;
assign v35_fu_914_p9 = 'bx;
assign v41_fu_1007_p2 = v137_0_q1;
assign v41_fu_1007_p4 = v137_1_q1;
assign v41_fu_1007_p6 = v137_2_q1;
assign v41_fu_1007_p8 = v137_3_q1;
assign v41_fu_1007_p9 = 'bx;
assign v47_fu_1046_p2 = v137_0_q0;
assign v47_fu_1046_p4 = v137_1_q0;
assign v47_fu_1046_p6 = v137_2_q0;
assign v47_fu_1046_p8 = v137_3_q0;
assign v47_fu_1046_p9 = 'bx;
assign v53_fu_1155_p2 = v137_0_q1;
assign v53_fu_1155_p4 = v137_1_q1;
assign v53_fu_1155_p6 = v137_2_q1;
assign v53_fu_1155_p8 = v137_3_q1;
assign v53_fu_1155_p9 = 'bx;
assign v59_fu_1194_p2 = v137_0_q0;
assign v59_fu_1194_p4 = v137_1_q0;
assign v59_fu_1194_p6 = v137_2_q0;
assign v59_fu_1194_p8 = v137_3_q0;
assign v59_fu_1194_p9 = 'bx;
assign zext_ln41_fu_629_p1 = select_ln41_1_fu_621_p3;
assign zext_ln42_fu_973_p1 = lshr_ln1_reg_1302;
assign zext_ln46_fu_662_p1 = tmp_fu_654_p3;
assign zext_ln54_fu_690_p1 = tmp_s_fu_680_p4;
assign zext_ln59_fu_985_p1 = or_ln58_1_fu_978_p3;
assign zext_ln61_fu_835_p1 = tmp_12_fu_826_p5;
assign zext_ln68_fu_851_p1 = tmp_13_fu_843_p4;
assign zext_ln73_fu_1120_p1 = or_ln72_1_fu_1112_p4;
assign zext_ln75_fu_946_p1 = tmp_15_fu_937_p5;
assign zext_ln82_fu_965_p1 = tmp_16_fu_954_p6;
assign zext_ln87_fu_1133_p1 = or_ln86_1_fu_1126_p3;
assign zext_ln89_fu_1078_p1 = tmp_17_fu_1069_p5;
assign zext_ln96_fu_1094_p1 = tmp_18_fu_1086_p4;
always @ (posedge ap_clk) begin
    v10_0_addr_1_reg_1477[0] <= 1'b1;
    v10_0_addr_1_reg_1477_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_1_reg_1477_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_1_reg_1483[0] <= 1'b1;
    v10_1_addr_1_reg_1483_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_1_reg_1483_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_2_reg_1544[1] <= 1'b1;
    v10_0_addr_2_reg_1544_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_2_reg_1544_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_2_reg_1544_pp0_iter4_reg[1] <= 1'b1;
    v10_1_addr_2_reg_1550[1] <= 1'b1;
    v10_1_addr_2_reg_1550_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_2_reg_1550_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_2_reg_1550_pp0_iter4_reg[1] <= 1'b1;
    v10_0_addr_3_reg_1556[1:0] <= 2'b11;
    v10_0_addr_3_reg_1556_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_1556_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_1556_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_1566[1:0] <= 2'b11;
    v10_1_addr_3_reg_1566_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_1566_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_1566_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
