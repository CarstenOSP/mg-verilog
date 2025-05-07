module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v115_2_address0,v115_2_ce0,v115_2_q0,v115_3_address0,v115_3_ce0,v115_3_q0,v115_4_address0,v115_4_ce0,v115_4_q0,v115_5_address0,v115_5_ce0,v115_5_q0,v115_6_address0,v115_6_ce0,v115_6_q0,v115_7_address0,v115_7_ce0,v115_7_q0,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_4_address0,v58_4_ce0,v58_4_we0,v58_4_d0,v58_4_address1,v58_4_ce1,v58_4_q1,v58_5_address0,v58_5_ce0,v58_5_we0,v58_5_d0,v58_5_address1,v58_5_ce1,v58_5_q1,v58_6_address0,v58_6_ce0,v58_6_we0,v58_6_d0,v58_6_q0,v58_7_address0,v58_7_ce0,v58_7_we0,v58_7_d0,v58_7_q0,grp_fu_223_p_din0,grp_fu_223_p_din1,grp_fu_223_p_opcode,grp_fu_223_p_dout0,grp_fu_223_p_ce,grp_fu_227_p_din0,grp_fu_227_p_din1,grp_fu_227_p_opcode,grp_fu_227_p_dout0,grp_fu_227_p_ce,grp_fu_231_p_din0,grp_fu_231_p_din1,grp_fu_231_p_dout0,grp_fu_231_p_ce,grp_fu_235_p_din0,grp_fu_235_p_din1,grp_fu_235_p_dout0,grp_fu_235_p_ce); 
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
output  [11:0] v114_address0;
output   v114_ce0;
input  [31:0] v114_q0;
output  [11:0] v114_address1;
output   v114_ce1;
input  [31:0] v114_q1;
output  [2:0] v115_0_address0;
output   v115_0_ce0;
input  [31:0] v115_0_q0;
output  [2:0] v115_1_address0;
output   v115_1_ce0;
input  [31:0] v115_1_q0;
output  [2:0] v115_2_address0;
output   v115_2_ce0;
input  [31:0] v115_2_q0;
output  [2:0] v115_3_address0;
output   v115_3_ce0;
input  [31:0] v115_3_q0;
output  [2:0] v115_4_address0;
output   v115_4_ce0;
input  [31:0] v115_4_q0;
output  [2:0] v115_5_address0;
output   v115_5_ce0;
input  [31:0] v115_5_q0;
output  [2:0] v115_6_address0;
output   v115_6_ce0;
input  [31:0] v115_6_q0;
output  [2:0] v115_7_address0;
output   v115_7_ce0;
input  [31:0] v115_7_q0;
output  [5:0] v57_address0;
output   v57_ce0;
input  [31:0] v57_q0;
output  [5:0] v57_address1;
output   v57_ce1;
input  [31:0] v57_q1;
output  [2:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [2:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [2:0] v58_2_address0;
output   v58_2_ce0;
output   v58_2_we0;
output  [31:0] v58_2_d0;
input  [31:0] v58_2_q0;
output  [2:0] v58_3_address0;
output   v58_3_ce0;
output   v58_3_we0;
output  [31:0] v58_3_d0;
input  [31:0] v58_3_q0;
output  [2:0] v58_4_address0;
output   v58_4_ce0;
output   v58_4_we0;
output  [31:0] v58_4_d0;
output  [2:0] v58_4_address1;
output   v58_4_ce1;
input  [31:0] v58_4_q1;
output  [2:0] v58_5_address0;
output   v58_5_ce0;
output   v58_5_we0;
output  [31:0] v58_5_d0;
output  [2:0] v58_5_address1;
output   v58_5_ce1;
input  [31:0] v58_5_q1;
output  [2:0] v58_6_address0;
output   v58_6_ce0;
output   v58_6_we0;
output  [31:0] v58_6_d0;
input  [31:0] v58_6_q0;
output  [2:0] v58_7_address0;
output   v58_7_ce0;
output   v58_7_we0;
output  [31:0] v58_7_d0;
input  [31:0] v58_7_q0;
output  [31:0] grp_fu_223_p_din0;
output  [31:0] grp_fu_223_p_din1;
output  [1:0] grp_fu_223_p_opcode;
input  [31:0] grp_fu_223_p_dout0;
output   grp_fu_223_p_ce;
output  [31:0] grp_fu_227_p_din0;
output  [31:0] grp_fu_227_p_din1;
output  [1:0] grp_fu_227_p_opcode;
input  [31:0] grp_fu_227_p_dout0;
output   grp_fu_227_p_ce;
output  [31:0] grp_fu_231_p_din0;
output  [31:0] grp_fu_231_p_din1;
input  [31:0] grp_fu_231_p_dout0;
output   grp_fu_231_p_ce;
output  [31:0] grp_fu_235_p_din0;
output  [31:0] grp_fu_235_p_din1;
input  [31:0] grp_fu_235_p_dout0;
output   grp_fu_235_p_ce;
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
reg   [0:0] icmp_ln97_reg_1169;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_538;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_542;
reg   [31:0] reg_546;
reg   [31:0] reg_554;
wire   [0:0] icmp_ln97_fu_580_p2;
reg   [0:0] icmp_ln97_reg_1169_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_1169_pp0_iter2_reg;
reg   [0:0] icmp_ln97_reg_1169_pp0_iter3_reg;
wire   [6:0] select_ln97_fu_612_p3;
reg   [6:0] select_ln97_reg_1173;
wire   [5:0] trunc_ln97_fu_620_p1;
reg   [5:0] trunc_ln97_reg_1178;
wire   [6:0] select_ln97_1_fu_624_p3;
reg   [6:0] select_ln97_1_reg_1183;
wire   [2:0] trunc_ln97_1_fu_632_p1;
reg   [2:0] trunc_ln97_1_reg_1189;
reg   [2:0] lshr_ln1_reg_1234;
wire   [4:0] tmp_1_fu_673_p4;
reg   [4:0] tmp_1_reg_1252;
reg   [3:0] tmp_3_reg_1262;
wire   [0:0] trunc_ln114_fu_706_p1;
reg   [0:0] trunc_ln114_reg_1270;
wire   [1:0] trunc_ln128_fu_710_p1;
reg   [1:0] trunc_ln128_reg_1278;
reg   [0:0] tmp_6_reg_1284;
wire   [11:0] zext_ln97_fu_732_p1;
reg   [11:0] zext_ln97_reg_1290;
wire   [0:0] cmp7_fu_735_p2;
reg   [0:0] cmp7_reg_1300;
reg   [0:0] cmp7_reg_1300_pp0_iter1_reg;
wire   [31:0] v65_fu_772_p19;
reg   [31:0] v65_reg_1312;
reg   [31:0] v65_reg_1312_pp0_iter1_reg;
reg   [31:0] v61_reg_1323;
reg   [31:0] v68_reg_1333;
reg   [31:0] v74_reg_1353;
reg   [31:0] v80_reg_1363;
wire   [31:0] v64_fu_937_p1;
wire   [31:0] v71_fu_942_p1;
reg   [31:0] v86_reg_1393;
reg   [31:0] v92_reg_1403;
reg   [2:0] v58_0_addr_reg_1418;
reg   [2:0] v58_0_addr_reg_1418_pp0_iter2_reg;
reg   [2:0] v58_0_addr_reg_1418_pp0_iter3_reg;
reg   [2:0] v58_1_addr_reg_1423;
reg   [2:0] v58_1_addr_reg_1423_pp0_iter2_reg;
reg   [2:0] v58_1_addr_reg_1423_pp0_iter3_reg;
reg   [2:0] v58_2_addr_reg_1428;
reg   [2:0] v58_2_addr_reg_1428_pp0_iter2_reg;
reg   [2:0] v58_2_addr_reg_1428_pp0_iter3_reg;
wire   [31:0] v77_fu_1033_p1;
reg   [2:0] v58_3_addr_reg_1438;
reg   [2:0] v58_3_addr_reg_1438_pp0_iter2_reg;
reg   [2:0] v58_3_addr_reg_1438_pp0_iter3_reg;
wire   [31:0] v83_fu_1038_p1;
reg   [2:0] v58_4_addr_reg_1448;
reg   [2:0] v58_4_addr_reg_1448_pp0_iter2_reg;
reg   [2:0] v58_4_addr_reg_1448_pp0_iter3_reg;
reg   [2:0] v58_5_addr_reg_1454;
reg   [2:0] v58_5_addr_reg_1454_pp0_iter2_reg;
reg   [2:0] v58_5_addr_reg_1454_pp0_iter3_reg;
reg   [31:0] v98_reg_1465;
reg   [31:0] v98_reg_1465_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1470;
reg   [2:0] v58_6_addr_reg_1470_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1470_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1470_pp0_iter4_reg;
reg   [31:0] v104_reg_1480;
reg   [31:0] v104_reg_1480_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1485;
reg   [2:0] v58_7_addr_reg_1485_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1485_pp0_iter3_reg;
reg   [2:0] v58_7_addr_reg_1485_pp0_iter4_reg;
wire   [31:0] v63_fu_1080_p3;
reg   [31:0] v63_reg_1490;
wire   [31:0] v89_fu_1086_p1;
wire   [31:0] v95_fu_1091_p1;
wire   [31:0] v70_fu_1096_p3;
reg   [31:0] v70_reg_1505;
wire   [31:0] v76_fu_1102_p3;
reg   [31:0] v76_reg_1510;
wire   [31:0] v82_fu_1108_p3;
reg   [31:0] v82_reg_1515;
wire   [31:0] v88_fu_1114_p3;
reg   [31:0] v88_reg_1520;
wire   [31:0] v94_fu_1120_p3;
reg   [31:0] v94_reg_1525;
reg   [31:0] v66_reg_1530;
reg   [31:0] v72_reg_1535;
wire   [31:0] v101_fu_1126_p1;
wire   [31:0] v107_fu_1131_p1;
reg   [31:0] v78_reg_1550;
reg   [31:0] v84_reg_1555;
reg   [31:0] v90_reg_1560;
reg   [31:0] v96_reg_1565;
reg   [31:0] v102_reg_1570;
reg   [31:0] v108_reg_1575;
wire   [31:0] v100_fu_1136_p3;
reg   [31:0] v100_reg_1580;
wire   [31:0] v106_fu_1142_p3;
reg   [31:0] v106_reg_1585;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln97_1_fu_646_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln98_fu_658_p1;
wire   [63:0] zext_ln107_fu_691_p1;
wire   [63:0] zext_ln102_fu_824_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln110_fu_842_p1;
wire   [63:0] zext_ln114_fu_855_p1;
wire   [63:0] zext_ln121_fu_867_p1;
wire   [63:0] zext_ln117_fu_887_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_904_p1;
wire   [63:0] zext_ln128_fu_917_p1;
wire   [63:0] zext_ln135_fu_932_p1;
wire   [63:0] zext_ln131_fu_962_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_982_p1;
wire   [63:0] zext_ln142_fu_995_p1;
wire   [63:0] zext_ln149_fu_1007_p1;
wire   [63:0] zext_ln98_1_fu_1022_p1;
wire   [63:0] zext_ln145_fu_1058_p1;
wire   [63:0] zext_ln152_fu_1075_p1;
reg   [6:0] v60_fu_150;
wire   [6:0] add_ln98_fu_1012_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_load;
reg   [6:0] v59_fu_154;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_158;
wire   [9:0] add_ln97_1_fu_586_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v115_0_ce0_local;
reg    v115_1_ce0_local;
reg    v115_2_ce0_local;
reg    v115_3_ce0_local;
reg    v115_4_ce0_local;
reg    v115_5_ce0_local;
reg    v115_6_ce0_local;
reg    v115_7_ce0_local;
reg    v57_ce1_local;
reg   [5:0] v57_address1_local;
reg    v57_ce0_local;
reg   [5:0] v57_address0_local;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v58_0_ce0_local;
reg   [2:0] v58_0_address0_local;
reg    v58_0_we0_local;
reg    v58_1_ce0_local;
reg   [2:0] v58_1_address0_local;
reg    v58_1_we0_local;
reg    v58_2_ce0_local;
reg   [2:0] v58_2_address0_local;
reg    v58_2_we0_local;
reg    v58_3_ce0_local;
reg   [2:0] v58_3_address0_local;
reg    v58_3_we0_local;
reg    v58_4_ce1_local;
reg    v58_4_we0_local;
reg    v58_4_ce0_local;
reg    v58_5_ce1_local;
reg    v58_5_we0_local;
reg    v58_5_ce0_local;
reg    v58_6_ce0_local;
reg   [2:0] v58_6_address0_local;
reg    v58_6_we0_local;
reg    v58_7_ce0_local;
reg   [2:0] v58_7_address0_local;
reg    v58_7_we0_local;
reg   [31:0] grp_fu_522_p0;
reg   [31:0] grp_fu_522_p1;
reg   [31:0] grp_fu_526_p0;
reg   [31:0] grp_fu_526_p1;
reg   [31:0] grp_fu_530_p0;
reg   [31:0] grp_fu_530_p1;
reg   [31:0] grp_fu_534_p0;
reg   [31:0] grp_fu_534_p1;
wire   [0:0] tmp_4_fu_604_p3;
wire   [6:0] add_ln97_fu_598_p2;
wire   [2:0] lshr_ln_fu_636_p4;
wire   [5:0] or_ln_fu_683_p3;
wire   [31:0] v65_fu_772_p2;
wire   [31:0] v65_fu_772_p4;
wire   [31:0] v65_fu_772_p6;
wire   [31:0] v65_fu_772_p8;
wire   [31:0] v65_fu_772_p10;
wire   [31:0] v65_fu_772_p12;
wire   [31:0] v65_fu_772_p14;
wire   [31:0] v65_fu_772_p16;
wire   [31:0] v65_fu_772_p17;
wire   [11:0] tmp_fu_811_p3;
wire   [11:0] add_ln102_fu_818_p2;
wire   [11:0] tmp_2_fu_829_p3;
wire   [11:0] add_ln110_fu_836_p2;
wire   [5:0] or_ln1_fu_847_p4;
wire   [5:0] or_ln2_fu_860_p3;
wire   [11:0] tmp_5_fu_872_p5;
wire   [11:0] add_ln117_fu_882_p2;
wire   [11:0] tmp_7_fu_892_p3;
wire   [11:0] add_ln124_fu_899_p2;
wire   [5:0] or_ln3_fu_909_p4;
wire   [5:0] or_ln4_fu_922_p5;
wire   [11:0] tmp_s_fu_947_p5;
wire   [11:0] add_ln131_fu_957_p2;
wire   [11:0] tmp_8_fu_967_p5;
wire   [11:0] add_ln138_fu_977_p2;
wire   [5:0] or_ln5_fu_987_p4;
wire   [5:0] or_ln6_fu_1000_p3;
wire   [11:0] tmp_9_fu_1043_p5;
wire   [11:0] add_ln145_fu_1053_p2;
wire   [11:0] tmp_10_fu_1063_p3;
wire   [11:0] add_ln152_fu_1070_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage1;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire   [2:0] v65_fu_772_p1;
wire   [2:0] v65_fu_772_p3;
wire   [2:0] v65_fu_772_p5;
wire   [2:0] v65_fu_772_p7;
wire  signed [2:0] v65_fu_772_p9;
wire  signed [2:0] v65_fu_772_p11;
wire  signed [2:0] v65_fu_772_p13;
wire  signed [2:0] v65_fu_772_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v60_fu_150 = 7'd0;
#0 v59_fu_154 = 7'd0;
#0 indvar_flatten_fu_158 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U5(.din0(v65_fu_772_p2),.din1(v65_fu_772_p4),.din2(v65_fu_772_p6),.din3(v65_fu_772_p8),.din4(v65_fu_772_p10),.din5(v65_fu_772_p12),.din6(v65_fu_772_p14),.din7(v65_fu_772_p16),.def(v65_fu_772_p17),.sel(trunc_ln97_1_reg_1189),.dout(v65_fu_772_p19));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln97_fu_580_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_158 <= add_ln97_1_fu_586_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_158 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln97_fu_580_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v59_fu_154 <= select_ln97_1_fu_624_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v59_fu_154 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v60_fu_150 <= 7'd0;
    end else if (((icmp_ln97_reg_1169 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v60_fu_150 <= add_ln98_fu_1012_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1300 <= cmp7_fu_735_p2;
        cmp7_reg_1300_pp0_iter1_reg <= cmp7_reg_1300;
        v100_reg_1580 <= v100_fu_1136_p3;
        v106_reg_1585 <= v106_fu_1142_p3;
        v63_reg_1490 <= v63_fu_1080_p3;
        v65_reg_1312 <= v65_fu_772_p19;
        v65_reg_1312_pp0_iter1_reg <= v65_reg_1312;
        v70_reg_1505 <= v70_fu_1096_p3;
        v76_reg_1510 <= v76_fu_1102_p3;
        v82_reg_1515 <= v82_fu_1108_p3;
        v88_reg_1520 <= v88_fu_1114_p3;
        v94_reg_1525 <= v94_fu_1120_p3;
        zext_ln97_reg_1290[6 : 0] <= zext_ln97_fu_732_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln97_reg_1169 <= icmp_ln97_fu_580_p2;
        icmp_ln97_reg_1169_pp0_iter1_reg <= icmp_ln97_reg_1169;
        icmp_ln97_reg_1169_pp0_iter2_reg <= icmp_ln97_reg_1169_pp0_iter1_reg;
        icmp_ln97_reg_1169_pp0_iter3_reg <= icmp_ln97_reg_1169_pp0_iter2_reg;
        lshr_ln1_reg_1234 <= {{select_ln97_fu_612_p3[5:3]}};
        select_ln97_1_reg_1183 <= select_ln97_1_fu_624_p3;
        select_ln97_reg_1173 <= select_ln97_fu_612_p3;
        tmp_1_reg_1252 <= {{select_ln97_fu_612_p3[5:1]}};
        tmp_3_reg_1262 <= {{select_ln97_fu_612_p3[5:2]}};
        tmp_6_reg_1284 <= select_ln97_fu_612_p3[32'd1];
        trunc_ln114_reg_1270 <= trunc_ln114_fu_706_p1;
        trunc_ln128_reg_1278 <= trunc_ln128_fu_710_p1;
        trunc_ln97_1_reg_1189 <= trunc_ln97_1_fu_632_p1;
        trunc_ln97_reg_1178 <= trunc_ln97_fu_620_p1;
        v104_reg_1480_pp0_iter2_reg <= v104_reg_1480;
        v58_0_addr_reg_1418 <= zext_ln98_1_fu_1022_p1;
        v58_0_addr_reg_1418_pp0_iter2_reg <= v58_0_addr_reg_1418;
        v58_0_addr_reg_1418_pp0_iter3_reg <= v58_0_addr_reg_1418_pp0_iter2_reg;
        v58_1_addr_reg_1423 <= zext_ln98_1_fu_1022_p1;
        v58_1_addr_reg_1423_pp0_iter2_reg <= v58_1_addr_reg_1423;
        v58_1_addr_reg_1423_pp0_iter3_reg <= v58_1_addr_reg_1423_pp0_iter2_reg;
        v58_2_addr_reg_1428 <= zext_ln98_1_fu_1022_p1;
        v58_2_addr_reg_1428_pp0_iter2_reg <= v58_2_addr_reg_1428;
        v58_2_addr_reg_1428_pp0_iter3_reg <= v58_2_addr_reg_1428_pp0_iter2_reg;
        v58_3_addr_reg_1438 <= zext_ln98_1_fu_1022_p1;
        v58_3_addr_reg_1438_pp0_iter2_reg <= v58_3_addr_reg_1438;
        v58_3_addr_reg_1438_pp0_iter3_reg <= v58_3_addr_reg_1438_pp0_iter2_reg;
        v58_4_addr_reg_1448 <= zext_ln98_1_fu_1022_p1;
        v58_4_addr_reg_1448_pp0_iter2_reg <= v58_4_addr_reg_1448;
        v58_4_addr_reg_1448_pp0_iter3_reg <= v58_4_addr_reg_1448_pp0_iter2_reg;
        v58_5_addr_reg_1454 <= zext_ln98_1_fu_1022_p1;
        v58_5_addr_reg_1454_pp0_iter2_reg <= v58_5_addr_reg_1454;
        v58_5_addr_reg_1454_pp0_iter3_reg <= v58_5_addr_reg_1454_pp0_iter2_reg;
        v58_6_addr_reg_1470 <= zext_ln98_1_fu_1022_p1;
        v58_6_addr_reg_1470_pp0_iter2_reg <= v58_6_addr_reg_1470;
        v58_6_addr_reg_1470_pp0_iter3_reg <= v58_6_addr_reg_1470_pp0_iter2_reg;
        v58_6_addr_reg_1470_pp0_iter4_reg <= v58_6_addr_reg_1470_pp0_iter3_reg;
        v58_7_addr_reg_1485 <= zext_ln98_1_fu_1022_p1;
        v58_7_addr_reg_1485_pp0_iter2_reg <= v58_7_addr_reg_1485;
        v58_7_addr_reg_1485_pp0_iter3_reg <= v58_7_addr_reg_1485_pp0_iter2_reg;
        v58_7_addr_reg_1485_pp0_iter4_reg <= v58_7_addr_reg_1485_pp0_iter3_reg;
        v98_reg_1465_pp0_iter2_reg <= v98_reg_1465;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_538 <= v114_q1;
        reg_542 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_546 <= grp_fu_223_p_dout0;
        reg_554 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1570 <= grp_fu_231_p_dout0;
        v108_reg_1575 <= grp_fu_235_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v104_reg_1480 <= v57_q0;
        v98_reg_1465 <= v57_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v61_reg_1323 <= v57_q1;
        v68_reg_1333 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1530 <= grp_fu_231_p_dout0;
        v72_reg_1535 <= grp_fu_235_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v74_reg_1353 <= v57_q1;
        v80_reg_1363 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1550 <= grp_fu_231_p_dout0;
        v84_reg_1555 <= grp_fu_235_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v86_reg_1393 <= v57_q1;
        v92_reg_1403 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1560 <= grp_fu_231_p_dout0;
        v96_reg_1565 <= grp_fu_235_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_1169 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln97_reg_1169_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_158;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_154;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_load = v60_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_522_p0 = v100_reg_1580;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_522_p0 = v88_reg_1520;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_522_p0 = v76_reg_1510;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_522_p0 = v63_reg_1490;
    end else begin
        grp_fu_522_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_522_p1 = v102_reg_1570;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_522_p1 = v90_reg_1560;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_522_p1 = v78_reg_1550;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_522_p1 = v66_reg_1530;
    end else begin
        grp_fu_522_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_526_p0 = v106_reg_1585;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_526_p0 = v94_reg_1525;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_526_p0 = v82_reg_1515;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_526_p0 = v70_reg_1505;
    end else begin
        grp_fu_526_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_526_p1 = v108_reg_1575;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_526_p1 = v96_reg_1565;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_526_p1 = v84_reg_1555;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_526_p1 = v72_reg_1535;
    end else begin
        grp_fu_526_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_530_p0 = v101_fu_1126_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_530_p0 = v89_fu_1086_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_530_p0 = v77_fu_1033_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_530_p0 = v64_fu_937_p1;
    end else begin
        grp_fu_530_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_530_p1 = v65_reg_1312_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_530_p1 = v65_reg_1312;
    end else begin
        grp_fu_530_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_534_p0 = v107_fu_1131_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_534_p0 = v95_fu_1091_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_534_p0 = v83_fu_1038_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_534_p0 = v71_fu_942_p1;
    end else begin
        grp_fu_534_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_534_p1 = v65_reg_1312_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_534_p1 = v65_reg_1312;
    end else begin
        grp_fu_534_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_1075_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_904_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_842_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_1058_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_962_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_824_p1;
    end else begin
        v114_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_ce0_local = 1'b1;
    end else begin
        v114_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_ce1_local = 1'b1;
    end else begin
        v114_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v115_0_ce0_local = 1'b1;
    end else begin
        v115_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v115_1_ce0_local = 1'b1;
    end else begin
        v115_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v115_2_ce0_local = 1'b1;
    end else begin
        v115_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v115_3_ce0_local = 1'b1;
    end else begin
        v115_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v115_4_ce0_local = 1'b1;
    end else begin
        v115_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v115_5_ce0_local = 1'b1;
    end else begin
        v115_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v115_6_ce0_local = 1'b1;
    end else begin
        v115_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v115_7_ce0_local = 1'b1;
    end else begin
        v115_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_1007_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_932_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_867_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_691_p1;
        end else begin
            v57_address0_local = 'bx;
        end
    end else begin
        v57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address1_local = zext_ln142_fu_995_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_855_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_658_p1;
        end else begin
            v57_address1_local = 'bx;
        end
    end else begin
        v57_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v57_ce0_local = 1'b1;
    end else begin
        v57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v57_ce1_local = 1'b1;
    end else begin
        v57_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_reg_1418_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln98_1_fu_1022_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_reg_1423_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln98_1_fu_1022_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_address0_local = v58_2_addr_reg_1428_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln98_1_fu_1022_p1;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_2_ce0_local = 1'b1;
    end else begin
        v58_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_we0_local = 1'b1;
    end else begin
        v58_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_3_address0_local = v58_3_addr_reg_1438_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln98_1_fu_1022_p1;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_3_ce0_local = 1'b1;
    end else begin
        v58_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_3_we0_local = 1'b1;
    end else begin
        v58_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_ce0_local = 1'b1;
    end else begin
        v58_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_ce1_local = 1'b1;
    end else begin
        v58_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_we0_local = 1'b1;
    end else begin
        v58_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_ce0_local = 1'b1;
    end else begin
        v58_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_ce1_local = 1'b1;
    end else begin
        v58_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_we0_local = 1'b1;
    end else begin
        v58_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_6_address0_local = v58_6_addr_reg_1470_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_address0_local = v58_6_addr_reg_1470;
    end else begin
        v58_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_6_ce0_local = 1'b1;
    end else begin
        v58_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_6_we0_local = 1'b1;
    end else begin
        v58_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_7_address0_local = v58_7_addr_reg_1485_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_address0_local = v58_7_addr_reg_1485;
    end else begin
        v58_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_7_ce0_local = 1'b1;
    end else begin
        v58_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_7_we0_local = 1'b1;
    end else begin
        v58_7_we0_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign add_ln102_fu_818_p2 = (tmp_fu_811_p3 + zext_ln97_fu_732_p1);
assign add_ln110_fu_836_p2 = (tmp_2_fu_829_p3 + zext_ln97_fu_732_p1);
assign add_ln117_fu_882_p2 = (tmp_5_fu_872_p5 + zext_ln97_reg_1290);
assign add_ln124_fu_899_p2 = (tmp_7_fu_892_p3 + zext_ln97_reg_1290);
assign add_ln131_fu_957_p2 = (tmp_s_fu_947_p5 + zext_ln97_reg_1290);
assign add_ln138_fu_977_p2 = (tmp_8_fu_967_p5 + zext_ln97_reg_1290);
assign add_ln145_fu_1053_p2 = (tmp_9_fu_1043_p5 + zext_ln97_reg_1290);
assign add_ln152_fu_1070_p2 = (tmp_10_fu_1063_p3 + zext_ln97_reg_1290);
assign add_ln97_1_fu_586_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_598_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_1012_p2 = (select_ln97_reg_1173 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign cmp7_fu_735_p2 = ((select_ln97_1_reg_1183 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_223_p_ce = 1'b1;
assign grp_fu_223_p_din0 = grp_fu_522_p0;
assign grp_fu_223_p_din1 = grp_fu_522_p1;
assign grp_fu_223_p_opcode = 2'd0;
assign grp_fu_227_p_ce = 1'b1;
assign grp_fu_227_p_din0 = grp_fu_526_p0;
assign grp_fu_227_p_din1 = grp_fu_526_p1;
assign grp_fu_227_p_opcode = 2'd0;
assign grp_fu_231_p_ce = 1'b1;
assign grp_fu_231_p_din0 = grp_fu_530_p0;
assign grp_fu_231_p_din1 = grp_fu_530_p1;
assign grp_fu_235_p_ce = 1'b1;
assign grp_fu_235_p_din0 = grp_fu_534_p0;
assign grp_fu_235_p_din1 = grp_fu_534_p1;
assign icmp_ln97_fu_580_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln_fu_636_p4 = {{select_ln97_1_fu_624_p3[5:3]}};
assign or_ln1_fu_847_p4 = {{{tmp_3_reg_1262}, {1'd1}}, {trunc_ln114_reg_1270}};
assign or_ln2_fu_860_p3 = {{tmp_3_reg_1262}, {2'd3}};
assign or_ln3_fu_909_p4 = {{{lshr_ln1_reg_1234}, {1'd1}}, {trunc_ln128_reg_1278}};
assign or_ln4_fu_922_p5 = {{{{lshr_ln1_reg_1234}, {1'd1}}, {tmp_6_reg_1284}}, {1'd1}};
assign or_ln5_fu_987_p4 = {{{lshr_ln1_reg_1234}, {2'd3}}, {trunc_ln114_reg_1270}};
assign or_ln6_fu_1000_p3 = {{lshr_ln1_reg_1234}, {3'd7}};
assign or_ln_fu_683_p3 = {{tmp_1_fu_673_p4}, {1'd1}};
assign select_ln97_1_fu_624_p3 = ((tmp_4_fu_604_p3[0:0] == 1'b1) ? add_ln97_fu_598_p2 : ap_sig_allocacmp_v59_load);
assign select_ln97_fu_612_p3 = ((tmp_4_fu_604_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v60_load);
assign tmp_10_fu_1063_p3 = {{lshr_ln1_reg_1234}, {9'd448}};
assign tmp_1_fu_673_p4 = {{select_ln97_fu_612_p3[5:1]}};
assign tmp_2_fu_829_p3 = {{tmp_1_reg_1252}, {7'd64}};
assign tmp_4_fu_604_p3 = ap_sig_allocacmp_v60_load[32'd6];
assign tmp_5_fu_872_p5 = {{{{tmp_3_reg_1262}, {1'd1}}, {trunc_ln114_reg_1270}}, {6'd0}};
assign tmp_7_fu_892_p3 = {{tmp_3_reg_1262}, {8'd192}};
assign tmp_8_fu_967_p5 = {{{{lshr_ln1_reg_1234}, {1'd1}}, {tmp_6_reg_1284}}, {7'd64}};
assign tmp_9_fu_1043_p5 = {{{{lshr_ln1_reg_1234}, {2'd3}}, {trunc_ln114_reg_1270}}, {6'd0}};
assign tmp_fu_811_p3 = {{trunc_ln97_reg_1178}, {6'd0}};
assign tmp_s_fu_947_p5 = {{{{lshr_ln1_reg_1234}, {1'd1}}, {trunc_ln128_reg_1278}}, {6'd0}};
assign trunc_ln114_fu_706_p1 = select_ln97_fu_612_p3[0:0];
assign trunc_ln128_fu_710_p1 = select_ln97_fu_612_p3[1:0];
assign trunc_ln97_1_fu_632_p1 = select_ln97_1_fu_624_p3[2:0];
assign trunc_ln97_fu_620_p1 = select_ln97_fu_612_p3[5:0];
assign v100_fu_1136_p3 = ((cmp7_reg_1300_pp0_iter1_reg[0:0] == 1'b1) ? v98_reg_1465_pp0_iter2_reg : v58_6_q0);
assign v101_fu_1126_p1 = reg_538;
assign v106_fu_1142_p3 = ((cmp7_reg_1300_pp0_iter1_reg[0:0] == 1'b1) ? v104_reg_1480_pp0_iter2_reg : v58_7_q0);
assign v107_fu_1131_p1 = reg_542;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_0_address0 = zext_ln97_1_fu_646_p1;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = zext_ln97_1_fu_646_p1;
assign v115_1_ce0 = v115_1_ce0_local;
assign v115_2_address0 = zext_ln97_1_fu_646_p1;
assign v115_2_ce0 = v115_2_ce0_local;
assign v115_3_address0 = zext_ln97_1_fu_646_p1;
assign v115_3_ce0 = v115_3_ce0_local;
assign v115_4_address0 = zext_ln97_1_fu_646_p1;
assign v115_4_ce0 = v115_4_ce0_local;
assign v115_5_address0 = zext_ln97_1_fu_646_p1;
assign v115_5_ce0 = v115_5_ce0_local;
assign v115_6_address0 = zext_ln97_1_fu_646_p1;
assign v115_6_ce0 = v115_6_ce0_local;
assign v115_7_address0 = zext_ln97_1_fu_646_p1;
assign v115_7_ce0 = v115_7_ce0_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_d0 = reg_546;
assign v58_0_we0 = v58_0_we0_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_d0 = reg_554;
assign v58_1_we0 = v58_1_we0_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_d0 = reg_546;
assign v58_2_we0 = v58_2_we0_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_d0 = reg_554;
assign v58_3_we0 = v58_3_we0_local;
assign v58_4_address0 = v58_4_addr_reg_1448_pp0_iter3_reg;
assign v58_4_address1 = zext_ln98_1_fu_1022_p1;
assign v58_4_ce0 = v58_4_ce0_local;
assign v58_4_ce1 = v58_4_ce1_local;
assign v58_4_d0 = reg_546;
assign v58_4_we0 = v58_4_we0_local;
assign v58_5_address0 = v58_5_addr_reg_1454_pp0_iter3_reg;
assign v58_5_address1 = zext_ln98_1_fu_1022_p1;
assign v58_5_ce0 = v58_5_ce0_local;
assign v58_5_ce1 = v58_5_ce1_local;
assign v58_5_d0 = reg_554;
assign v58_5_we0 = v58_5_we0_local;
assign v58_6_address0 = v58_6_address0_local;
assign v58_6_ce0 = v58_6_ce0_local;
assign v58_6_d0 = reg_546;
assign v58_6_we0 = v58_6_we0_local;
assign v58_7_address0 = v58_7_address0_local;
assign v58_7_ce0 = v58_7_ce0_local;
assign v58_7_d0 = reg_554;
assign v58_7_we0 = v58_7_we0_local;
assign v63_fu_1080_p3 = ((cmp7_reg_1300[0:0] == 1'b1) ? v61_reg_1323 : v58_0_q0);
assign v64_fu_937_p1 = reg_538;
assign v65_fu_772_p10 = v115_4_q0;
assign v65_fu_772_p12 = v115_5_q0;
assign v65_fu_772_p14 = v115_6_q0;
assign v65_fu_772_p16 = v115_7_q0;
assign v65_fu_772_p17 = 'bx;
assign v65_fu_772_p2 = v115_0_q0;
assign v65_fu_772_p4 = v115_1_q0;
assign v65_fu_772_p6 = v115_2_q0;
assign v65_fu_772_p8 = v115_3_q0;
assign v70_fu_1096_p3 = ((cmp7_reg_1300[0:0] == 1'b1) ? v68_reg_1333 : v58_1_q0);
assign v71_fu_942_p1 = reg_542;
assign v76_fu_1102_p3 = ((cmp7_reg_1300[0:0] == 1'b1) ? v74_reg_1353 : v58_2_q0);
assign v77_fu_1033_p1 = reg_538;
assign v82_fu_1108_p3 = ((cmp7_reg_1300[0:0] == 1'b1) ? v80_reg_1363 : v58_3_q0);
assign v83_fu_1038_p1 = reg_542;
assign v88_fu_1114_p3 = ((cmp7_reg_1300[0:0] == 1'b1) ? v86_reg_1393 : v58_4_q1);
assign v89_fu_1086_p1 = reg_538;
assign v94_fu_1120_p3 = ((cmp7_reg_1300[0:0] == 1'b1) ? v92_reg_1403 : v58_5_q1);
assign v95_fu_1091_p1 = reg_542;
assign zext_ln102_fu_824_p1 = add_ln102_fu_818_p2;
assign zext_ln107_fu_691_p1 = or_ln_fu_683_p3;
assign zext_ln110_fu_842_p1 = add_ln110_fu_836_p2;
assign zext_ln114_fu_855_p1 = or_ln1_fu_847_p4;
assign zext_ln117_fu_887_p1 = add_ln117_fu_882_p2;
assign zext_ln121_fu_867_p1 = or_ln2_fu_860_p3;
assign zext_ln124_fu_904_p1 = add_ln124_fu_899_p2;
assign zext_ln128_fu_917_p1 = or_ln3_fu_909_p4;
assign zext_ln131_fu_962_p1 = add_ln131_fu_957_p2;
assign zext_ln135_fu_932_p1 = or_ln4_fu_922_p5;
assign zext_ln138_fu_982_p1 = add_ln138_fu_977_p2;
assign zext_ln142_fu_995_p1 = or_ln5_fu_987_p4;
assign zext_ln145_fu_1058_p1 = add_ln145_fu_1053_p2;
assign zext_ln149_fu_1007_p1 = or_ln6_fu_1000_p3;
assign zext_ln152_fu_1075_p1 = add_ln152_fu_1070_p2;
assign zext_ln97_1_fu_646_p1 = lshr_ln_fu_636_p4;
assign zext_ln97_fu_732_p1 = select_ln97_1_reg_1183;
assign zext_ln98_1_fu_1022_p1 = lshr_ln1_reg_1234;
assign zext_ln98_fu_658_p1 = select_ln97_fu_612_p3;
always @ (posedge ap_clk) begin
    zext_ln97_reg_1290[11:7] <= 5'b00000;
end
endmodule 