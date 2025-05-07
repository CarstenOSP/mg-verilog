module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [6:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [6:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [6:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [6:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln309_reg_1107;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_1101;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln309_fu_563_p2;
reg   [0:0] icmp_ln309_reg_1107_pp0_iter1_reg;
reg   [0:0] icmp_ln309_reg_1107_pp0_iter2_reg;
reg   [0:0] icmp_ln309_reg_1107_pp0_iter3_reg;
reg   [0:0] icmp_ln309_reg_1107_pp0_iter4_reg;
reg   [0:0] icmp_ln309_reg_1107_pp0_iter5_reg;
reg   [0:0] icmp_ln309_reg_1107_pp0_iter6_reg;
wire   [8:0] offset_fu_583_p3;
reg   [8:0] offset_reg_1111;
reg   [8:0] offset_reg_1111_pp0_iter1_reg;
reg   [8:0] offset_reg_1111_pp0_iter2_reg;
reg   [8:0] offset_reg_1111_pp0_iter3_reg;
reg   [8:0] offset_reg_1111_pp0_iter4_reg;
wire   [5:0] trunc_ln314_fu_602_p1;
reg   [5:0] trunc_ln314_reg_1118;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] trunc_ln314_reg_1118_pp0_iter1_reg;
reg   [5:0] trunc_ln314_reg_1118_pp0_iter2_reg;
reg   [5:0] trunc_ln314_reg_1118_pp0_iter3_reg;
reg   [5:0] trunc_ln314_reg_1118_pp0_iter4_reg;
reg   [5:0] trunc_ln314_reg_1118_pp0_iter5_reg;
reg   [5:0] trunc_ln314_reg_1118_pp0_iter6_reg;
reg   [5:0] trunc_ln314_reg_1118_pp0_iter7_reg;
wire   [9:0] zext_ln172_fu_610_p1;
reg   [9:0] zext_ln172_reg_1126;
reg   [6:0] tmp_63_reg_1134;
reg   [6:0] tmp_63_reg_1134_pp0_iter5_reg;
wire   [2:0] trunc_ln172_fu_632_p1;
reg   [2:0] trunc_ln172_reg_1139;
reg   [7:0] tmp_68_reg_1151;
reg   [7:0] tmp_69_reg_1156;
reg   [7:0] tmp_70_reg_1161;
wire   [63:0] tmp_s_fu_767_p13;
reg   [63:0] tmp_s_reg_1366;
wire   [63:0] tmp_21_fu_794_p13;
reg   [63:0] tmp_21_reg_1371;
wire   [63:0] tmp_22_fu_821_p13;
reg   [63:0] tmp_22_reg_1376;
wire   [63:0] tmp_23_fu_848_p13;
reg   [63:0] tmp_23_reg_1381;
wire   [63:0] tmp_24_fu_875_p13;
reg   [63:0] tmp_24_reg_1386;
wire   [63:0] tmp_25_fu_902_p13;
reg   [63:0] tmp_25_reg_1391;
wire   [63:0] tmp_26_fu_929_p13;
reg   [63:0] tmp_26_reg_1396;
wire   [63:0] tmp_27_fu_956_p13;
reg   [63:0] tmp_27_reg_1401;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln172_13_fu_663_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_680_p1;
wire   [63:0] zext_ln316_fu_698_p1;
wire   [63:0] zext_ln317_fu_716_p1;
wire   [63:0] zext_ln318_fu_734_p1;
wire   [63:0] zext_ln319_fu_743_p1;
wire   [63:0] zext_ln320_fu_751_p1;
wire   [63:0] zext_ln321_fu_759_p1;
wire   [63:0] zext_ln314_fu_990_p1;
wire   [63:0] zext_ln315_1_fu_1003_p1;
wire   [63:0] zext_ln318_1_fu_1016_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln319_1_fu_1029_p1;
reg   [6:0] tid_fu_104;
wire   [6:0] add_ln309_fu_597_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
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
wire   [2:0] tmp_fu_569_p4;
wire   [5:0] trunc_ln312_fu_579_p1;
wire   [8:0] grp_fu_591_p0;
wire   [3:0] grp_fu_591_p1;
wire   [8:0] mul_ln172_fu_616_p0;
wire   [10:0] mul_ln172_fu_616_p1;
wire   [18:0] mul_ln172_fu_616_p2;
wire   [2:0] grp_fu_591_p2;
wire   [20:0] tmp_68_fu_636_p1;
wire  signed [20:0] grp_fu_1035_p3;
wire   [20:0] tmp_69_fu_645_p1;
wire  signed [20:0] grp_fu_1044_p3;
wire   [20:0] tmp_70_fu_654_p1;
wire  signed [20:0] grp_fu_1053_p3;
wire   [20:0] tmp_64_fu_671_p1;
wire  signed [20:0] grp_fu_1062_p3;
wire   [7:0] tmp_64_fu_671_p4;
wire   [20:0] tmp_65_fu_689_p1;
wire  signed [20:0] grp_fu_1070_p3;
wire   [7:0] tmp_65_fu_689_p4;
wire   [20:0] tmp_66_fu_707_p1;
wire  signed [20:0] grp_fu_1078_p3;
wire   [7:0] tmp_66_fu_707_p4;
wire   [20:0] tmp_67_fu_725_p1;
wire  signed [20:0] grp_fu_1086_p3;
wire   [7:0] tmp_67_fu_725_p4;
wire   [63:0] tmp_s_fu_767_p11;
wire   [63:0] tmp_21_fu_794_p11;
wire   [63:0] tmp_22_fu_821_p11;
wire   [63:0] tmp_23_fu_848_p11;
wire   [63:0] tmp_24_fu_875_p11;
wire   [63:0] tmp_25_fu_902_p11;
wire   [63:0] tmp_26_fu_929_p11;
wire   [63:0] tmp_27_fu_956_p11;
wire   [7:0] shl_ln7_fu_983_p3;
wire   [7:0] or_ln_fu_996_p3;
wire   [7:0] or_ln5_fu_1009_p3;
wire   [7:0] or_ln6_fu_1022_p3;
wire   [8:0] grp_fu_1035_p0;
wire   [5:0] grp_fu_1035_p1;
wire   [10:0] grp_fu_1035_p2;
wire   [8:0] grp_fu_1044_p0;
wire   [4:0] grp_fu_1044_p1;
wire   [10:0] grp_fu_1044_p2;
wire   [8:0] grp_fu_1053_p0;
wire   [5:0] grp_fu_1053_p1;
wire   [10:0] grp_fu_1053_p2;
wire   [8:0] grp_fu_1062_p0;
wire   [5:0] grp_fu_1062_p1;
wire   [10:0] grp_fu_1062_p2;
wire   [8:0] grp_fu_1070_p0;
wire   [3:0] grp_fu_1070_p1;
wire   [10:0] grp_fu_1070_p2;
wire   [8:0] grp_fu_1078_p0;
wire   [5:0] grp_fu_1078_p1;
wire   [10:0] grp_fu_1078_p2;
wire   [8:0] grp_fu_1086_p0;
wire   [4:0] grp_fu_1086_p1;
wire   [10:0] grp_fu_1086_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter7_stage0;
reg    ap_idle_pp0_0to6;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to8;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_fu_616_p00;
reg    ap_condition_297;
wire   [2:0] tmp_s_fu_767_p1;
wire   [2:0] tmp_s_fu_767_p3;
wire   [2:0] tmp_s_fu_767_p5;
wire   [2:0] tmp_s_fu_767_p7;
wire  signed [2:0] tmp_s_fu_767_p9;
wire   [2:0] tmp_21_fu_794_p1;
wire  signed [2:0] tmp_21_fu_794_p3;
wire   [2:0] tmp_21_fu_794_p5;
wire   [2:0] tmp_21_fu_794_p7;
wire   [2:0] tmp_21_fu_794_p9;
wire   [2:0] tmp_22_fu_821_p1;
wire   [2:0] tmp_22_fu_821_p3;
wire  signed [2:0] tmp_22_fu_821_p5;
wire   [2:0] tmp_22_fu_821_p7;
wire   [2:0] tmp_22_fu_821_p9;
wire   [2:0] tmp_23_fu_848_p1;
wire   [2:0] tmp_23_fu_848_p3;
wire   [2:0] tmp_23_fu_848_p5;
wire   [2:0] tmp_23_fu_848_p7;
wire  signed [2:0] tmp_23_fu_848_p9;
wire  signed [2:0] tmp_24_fu_875_p1;
wire   [2:0] tmp_24_fu_875_p3;
wire   [2:0] tmp_24_fu_875_p5;
wire   [2:0] tmp_24_fu_875_p7;
wire   [2:0] tmp_24_fu_875_p9;
wire   [2:0] tmp_25_fu_902_p1;
wire   [2:0] tmp_25_fu_902_p3;
wire  signed [2:0] tmp_25_fu_902_p5;
wire   [2:0] tmp_25_fu_902_p7;
wire   [2:0] tmp_25_fu_902_p9;
wire   [2:0] tmp_26_fu_929_p1;
wire   [2:0] tmp_26_fu_929_p3;
wire   [2:0] tmp_26_fu_929_p5;
wire  signed [2:0] tmp_26_fu_929_p7;
wire   [2:0] tmp_26_fu_929_p9;
wire  signed [2:0] tmp_27_fu_956_p1;
wire   [2:0] tmp_27_fu_956_p3;
wire   [2:0] tmp_27_fu_956_p5;
wire   [2:0] tmp_27_fu_956_p7;
wire   [2:0] tmp_27_fu_956_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_104 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U394(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_591_p0),.din1(grp_fu_591_p1),.ce(1'b1),.dout(grp_fu_591_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U395(.din0(mul_ln172_fu_616_p0),.din1(mul_ln172_fu_616_p1),.dout(mul_ln172_fu_616_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U396(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_s_fu_767_p11),.sel(trunc_ln172_reg_1139),.dout(tmp_s_fu_767_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U397(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_21_fu_794_p11),.sel(trunc_ln172_reg_1139),.dout(tmp_21_fu_794_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U398(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_22_fu_821_p11),.sel(trunc_ln172_reg_1139),.dout(tmp_22_fu_821_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U399(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_23_fu_848_p11),.sel(trunc_ln172_reg_1139),.dout(tmp_23_fu_848_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U400(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_24_fu_875_p11),.sel(trunc_ln172_reg_1139),.dout(tmp_24_fu_875_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U401(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_25_fu_902_p11),.sel(trunc_ln172_reg_1139),.dout(tmp_25_fu_902_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U402(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_26_fu_929_p11),.sel(trunc_ln172_reg_1139),.dout(tmp_26_fu_929_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U403(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_27_fu_956_p11),.sel(trunc_ln172_reg_1139),.dout(tmp_27_fu_956_p13));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U404(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1035_p0),.din1(grp_fu_1035_p1),.din2(grp_fu_1035_p2),.ce(1'b1),.dout(grp_fu_1035_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U405(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1044_p0),.din1(grp_fu_1044_p1),.din2(grp_fu_1044_p2),.ce(1'b1),.dout(grp_fu_1044_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U406(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1053_p0),.din1(grp_fu_1053_p1),.din2(grp_fu_1053_p2),.ce(1'b1),.dout(grp_fu_1053_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U407(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1062_p0),.din1(grp_fu_1062_p1),.din2(grp_fu_1062_p2),.ce(1'b1),.dout(grp_fu_1062_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U408(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1070_p0),.din1(grp_fu_1070_p1),.din2(grp_fu_1070_p2),.ce(1'b1),.dout(grp_fu_1070_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U409(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1078_p0),.din1(grp_fu_1078_p1),.din2(grp_fu_1078_p2),.ce(1'b1),.dout(grp_fu_1078_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U410(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1086_p0),.din1(grp_fu_1086_p1),.din2(grp_fu_1086_p2),.ce(1'b1),.dout(grp_fu_1086_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_104 <= 7'd0;
    end else if (((icmp_ln309_reg_1107 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_104 <= add_ln309_fu_597_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln309_reg_1107 <= icmp_ln309_fu_563_p2;
        icmp_ln309_reg_1107_pp0_iter1_reg <= icmp_ln309_reg_1107;
        icmp_ln309_reg_1107_pp0_iter2_reg <= icmp_ln309_reg_1107_pp0_iter1_reg;
        icmp_ln309_reg_1107_pp0_iter3_reg <= icmp_ln309_reg_1107_pp0_iter2_reg;
        icmp_ln309_reg_1107_pp0_iter4_reg <= icmp_ln309_reg_1107_pp0_iter3_reg;
        icmp_ln309_reg_1107_pp0_iter5_reg <= icmp_ln309_reg_1107_pp0_iter4_reg;
        icmp_ln309_reg_1107_pp0_iter6_reg <= icmp_ln309_reg_1107_pp0_iter5_reg;
        offset_reg_1111 <= offset_fu_583_p3;
        offset_reg_1111_pp0_iter1_reg <= offset_reg_1111;
        offset_reg_1111_pp0_iter2_reg <= offset_reg_1111_pp0_iter1_reg;
        offset_reg_1111_pp0_iter3_reg <= offset_reg_1111_pp0_iter2_reg;
        offset_reg_1111_pp0_iter4_reg <= offset_reg_1111_pp0_iter3_reg;
        tid_2_reg_1101 <= ap_sig_allocacmp_tid_2;
        tmp_21_reg_1371 <= tmp_21_fu_794_p13;
        tmp_22_reg_1376 <= tmp_22_fu_821_p13;
        tmp_23_reg_1381 <= tmp_23_fu_848_p13;
        tmp_24_reg_1386 <= tmp_24_fu_875_p13;
        tmp_25_reg_1391 <= tmp_25_fu_902_p13;
        tmp_26_reg_1396 <= tmp_26_fu_929_p13;
        tmp_27_reg_1401 <= tmp_27_fu_956_p13;
        tmp_68_reg_1151 <= {{tmp_68_fu_636_p1[20:13]}};
        tmp_69_reg_1156 <= {{tmp_69_fu_645_p1[20:13]}};
        tmp_70_reg_1161 <= {{tmp_70_fu_654_p1[20:13]}};
        tmp_s_reg_1366 <= tmp_s_fu_767_p13;
        trunc_ln172_reg_1139 <= trunc_ln172_fu_632_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_63_reg_1134 <= {{mul_ln172_fu_616_p2[18:12]}};
        tmp_63_reg_1134_pp0_iter5_reg <= tmp_63_reg_1134;
        trunc_ln314_reg_1118 <= trunc_ln314_fu_602_p1;
        trunc_ln314_reg_1118_pp0_iter1_reg <= trunc_ln314_reg_1118;
        trunc_ln314_reg_1118_pp0_iter2_reg <= trunc_ln314_reg_1118_pp0_iter1_reg;
        trunc_ln314_reg_1118_pp0_iter3_reg <= trunc_ln314_reg_1118_pp0_iter2_reg;
        trunc_ln314_reg_1118_pp0_iter4_reg <= trunc_ln314_reg_1118_pp0_iter3_reg;
        trunc_ln314_reg_1118_pp0_iter5_reg <= trunc_ln314_reg_1118_pp0_iter4_reg;
        trunc_ln314_reg_1118_pp0_iter6_reg <= trunc_ln314_reg_1118_pp0_iter5_reg;
        trunc_ln314_reg_1118_pp0_iter7_reg <= trunc_ln314_reg_1118_pp0_iter6_reg;
        zext_ln172_reg_1126[8 : 0] <= zext_ln172_fu_610_p1[8 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln319_1_fu_1029_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_1_fu_1003_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln318_1_fu_1016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_fu_990_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_27_reg_1401;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_23_reg_1381;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_26_reg_1396;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_22_reg_1376;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln319_1_fu_1029_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_1_fu_1003_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln318_1_fu_1016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_fu_990_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_25_reg_1391;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_21_reg_1371;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_24_reg_1386;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_s_reg_1366;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln309_reg_1107 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln309_reg_1107_pp0_iter6_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_104;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_297)) begin
        if ((trunc_ln172_reg_1139 == 3'd0)) begin
            smem_1_address0_local = zext_ln321_fu_759_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd2)) begin
            smem_1_address0_local = zext_ln320_fu_751_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd3)) begin
            smem_1_address0_local = zext_ln319_fu_743_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd1)) begin
            smem_1_address0_local = zext_ln317_fu_716_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd4)) begin
            smem_1_address0_local = zext_ln315_fu_680_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_297)) begin
        if ((trunc_ln172_reg_1139 == 3'd0)) begin
            smem_1_address1_local = zext_ln318_fu_734_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd3)) begin
            smem_1_address1_local = zext_ln316_fu_698_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd1)) begin
            smem_1_address1_local = zext_ln172_13_fu_663_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_297)) begin
        if ((trunc_ln172_reg_1139 == 3'd1)) begin
            smem_2_address0_local = zext_ln321_fu_759_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd3)) begin
            smem_2_address0_local = zext_ln320_fu_751_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd4)) begin
            smem_2_address0_local = zext_ln319_fu_743_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd2)) begin
            smem_2_address0_local = zext_ln317_fu_716_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd0)) begin
            smem_2_address0_local = zext_ln315_fu_680_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_297)) begin
        if ((trunc_ln172_reg_1139 == 3'd1)) begin
            smem_2_address1_local = zext_ln318_fu_734_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd4)) begin
            smem_2_address1_local = zext_ln316_fu_698_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd2)) begin
            smem_2_address1_local = zext_ln172_13_fu_663_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_297)) begin
        if ((trunc_ln172_reg_1139 == 3'd2)) begin
            smem_3_address0_local = zext_ln321_fu_759_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd4)) begin
            smem_3_address0_local = zext_ln320_fu_751_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd0)) begin
            smem_3_address0_local = zext_ln319_fu_743_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd3)) begin
            smem_3_address0_local = zext_ln317_fu_716_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd1)) begin
            smem_3_address0_local = zext_ln315_fu_680_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_297)) begin
        if ((trunc_ln172_reg_1139 == 3'd2)) begin
            smem_3_address1_local = zext_ln318_fu_734_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd0)) begin
            smem_3_address1_local = zext_ln316_fu_698_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd3)) begin
            smem_3_address1_local = zext_ln172_13_fu_663_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_297)) begin
        if ((trunc_ln172_reg_1139 == 3'd3)) begin
            smem_4_address0_local = zext_ln321_fu_759_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd0)) begin
            smem_4_address0_local = zext_ln320_fu_751_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd1)) begin
            smem_4_address0_local = zext_ln319_fu_743_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd4)) begin
            smem_4_address0_local = zext_ln317_fu_716_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd2)) begin
            smem_4_address0_local = zext_ln315_fu_680_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_297)) begin
        if ((trunc_ln172_reg_1139 == 3'd3)) begin
            smem_4_address1_local = zext_ln318_fu_734_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd1)) begin
            smem_4_address1_local = zext_ln316_fu_698_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd4)) begin
            smem_4_address1_local = zext_ln172_13_fu_663_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd1)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_297)) begin
        if ((trunc_ln172_reg_1139 == 3'd4)) begin
            smem_address0_local = zext_ln321_fu_759_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd1)) begin
            smem_address0_local = zext_ln320_fu_751_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd2)) begin
            smem_address0_local = zext_ln319_fu_743_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd0)) begin
            smem_address0_local = zext_ln317_fu_716_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd3)) begin
            smem_address0_local = zext_ln315_fu_680_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_297)) begin
        if ((trunc_ln172_reg_1139 == 3'd4)) begin
            smem_address1_local = zext_ln318_fu_734_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd2)) begin
            smem_address1_local = zext_ln316_fu_698_p1;
        end else if ((trunc_ln172_reg_1139 == 3'd0)) begin
            smem_address1_local = zext_ln172_13_fu_663_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1139 == 3'd0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
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
assign add_ln309_fu_597_p2 = (tid_2_reg_1101 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_297 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_1035_p0 = zext_ln172_fu_610_p1;
assign grp_fu_1035_p1 = 10'd48;
assign grp_fu_1035_p2 = 21'd1639;
assign grp_fu_1044_p0 = zext_ln172_fu_610_p1;
assign grp_fu_1044_p1 = 10'd24;
assign grp_fu_1044_p2 = 21'd1639;
assign grp_fu_1053_p0 = zext_ln172_fu_610_p1;
assign grp_fu_1053_p1 = 10'd56;
assign grp_fu_1053_p2 = 21'd1639;
assign grp_fu_1062_p0 = zext_ln172_reg_1126;
assign grp_fu_1062_p1 = 10'd32;
assign grp_fu_1062_p2 = 21'd1639;
assign grp_fu_1070_p0 = zext_ln172_reg_1126;
assign grp_fu_1070_p1 = 10'd8;
assign grp_fu_1070_p2 = 21'd1639;
assign grp_fu_1078_p0 = zext_ln172_reg_1126;
assign grp_fu_1078_p1 = 10'd40;
assign grp_fu_1078_p2 = 21'd1639;
assign grp_fu_1086_p0 = zext_ln172_reg_1126;
assign grp_fu_1086_p1 = 10'd16;
assign grp_fu_1086_p2 = 21'd1639;
assign grp_fu_591_p0 = {{tmp_fu_569_p4}, {trunc_ln312_fu_579_p1}};
assign grp_fu_591_p1 = 9'd5;
assign icmp_ln309_fu_563_p2 = ((ap_sig_allocacmp_tid_2 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_fu_616_p0 = mul_ln172_fu_616_p00;
assign mul_ln172_fu_616_p00 = offset_reg_1111_pp0_iter4_reg;
assign mul_ln172_fu_616_p1 = 19'd820;
assign offset_fu_583_p3 = {{tmp_fu_569_p4}, {trunc_ln312_fu_579_p1}};
assign or_ln5_fu_1009_p3 = {{trunc_ln314_reg_1118_pp0_iter7_reg}, {2'd1}};
assign or_ln6_fu_1022_p3 = {{trunc_ln314_reg_1118_pp0_iter7_reg}, {2'd3}};
assign or_ln_fu_996_p3 = {{trunc_ln314_reg_1118_pp0_iter6_reg}, {2'd2}};
assign shl_ln7_fu_983_p3 = {{trunc_ln314_reg_1118_pp0_iter6_reg}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = smem_4_address1_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_21_fu_794_p11 = 'bx;
assign tmp_22_fu_821_p11 = 'bx;
assign tmp_23_fu_848_p11 = 'bx;
assign tmp_24_fu_875_p11 = 'bx;
assign tmp_25_fu_902_p11 = 'bx;
assign tmp_26_fu_929_p11 = 'bx;
assign tmp_27_fu_956_p11 = 'bx;
assign tmp_64_fu_671_p1 = grp_fu_1062_p3;
assign tmp_64_fu_671_p4 = {{tmp_64_fu_671_p1[20:13]}};
assign tmp_65_fu_689_p1 = grp_fu_1070_p3;
assign tmp_65_fu_689_p4 = {{tmp_65_fu_689_p1[20:13]}};
assign tmp_66_fu_707_p1 = grp_fu_1078_p3;
assign tmp_66_fu_707_p4 = {{tmp_66_fu_707_p1[20:13]}};
assign tmp_67_fu_725_p1 = grp_fu_1086_p3;
assign tmp_67_fu_725_p4 = {{tmp_67_fu_725_p1[20:13]}};
assign tmp_68_fu_636_p1 = grp_fu_1035_p3;
assign tmp_69_fu_645_p1 = grp_fu_1044_p3;
assign tmp_70_fu_654_p1 = grp_fu_1053_p3;
assign tmp_fu_569_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_s_fu_767_p11 = 'bx;
assign trunc_ln172_fu_632_p1 = grp_fu_591_p2[2:0];
assign trunc_ln312_fu_579_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_602_p1 = tid_2_reg_1101[5:0];
assign zext_ln172_13_fu_663_p1 = tmp_63_reg_1134_pp0_iter5_reg;
assign zext_ln172_fu_610_p1 = offset_reg_1111_pp0_iter4_reg;
assign zext_ln314_fu_990_p1 = shl_ln7_fu_983_p3;
assign zext_ln315_1_fu_1003_p1 = or_ln_fu_996_p3;
assign zext_ln315_fu_680_p1 = tmp_64_fu_671_p4;
assign zext_ln316_fu_698_p1 = tmp_65_fu_689_p4;
assign zext_ln317_fu_716_p1 = tmp_66_fu_707_p4;
assign zext_ln318_1_fu_1016_p1 = or_ln5_fu_1009_p3;
assign zext_ln318_fu_734_p1 = tmp_67_fu_725_p4;
assign zext_ln319_1_fu_1029_p1 = or_ln6_fu_1022_p3;
assign zext_ln319_fu_743_p1 = tmp_68_reg_1151;
assign zext_ln320_fu_751_p1 = tmp_69_reg_1156;
assign zext_ln321_fu_759_p1 = tmp_70_reg_1161;
always @ (posedge ap_clk) begin
    zext_ln172_reg_1126[9] <= 1'b0;
end
endmodule 