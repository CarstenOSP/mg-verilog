module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v115_2_address0,v115_2_ce0,v115_2_q0,v115_3_address0,v115_3_ce0,v115_3_q0,v115_4_address0,v115_4_ce0,v115_4_q0,v115_5_address0,v115_5_ce0,v115_5_q0,v115_6_address0,v115_6_ce0,v115_6_q0,v115_7_address0,v115_7_ce0,v115_7_q0,v57_0_address0,v57_0_ce0,v57_0_q0,v57_1_address0,v57_1_ce0,v57_1_q0,v57_2_address0,v57_2_ce0,v57_2_q0,v57_3_address0,v57_3_ce0,v57_3_q0,v57_4_address0,v57_4_ce0,v57_4_q0,v57_5_address0,v57_5_ce0,v57_5_q0,v57_6_address0,v57_6_ce0,v57_6_q0,v57_7_address0,v57_7_ce0,v57_7_q0,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_4_address0,v58_4_ce0,v58_4_we0,v58_4_d0,v58_4_address1,v58_4_ce1,v58_4_q1,v58_5_address0,v58_5_ce0,v58_5_we0,v58_5_d0,v58_5_address1,v58_5_ce1,v58_5_q1,v58_6_address0,v58_6_ce0,v58_6_we0,v58_6_d0,v58_6_q0,v58_7_address0,v58_7_ce0,v58_7_we0,v58_7_d0,v58_7_q0,grp_fu_487_p_din0,grp_fu_487_p_din1,grp_fu_487_p_opcode,grp_fu_487_p_dout0,grp_fu_487_p_ce,grp_fu_491_p_din0,grp_fu_491_p_din1,grp_fu_491_p_opcode,grp_fu_491_p_dout0,grp_fu_491_p_ce,grp_fu_495_p_din0,grp_fu_495_p_din1,grp_fu_495_p_dout0,grp_fu_495_p_ce,grp_fu_499_p_din0,grp_fu_499_p_din1,grp_fu_499_p_dout0,grp_fu_499_p_ce); 
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
output  [2:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
output  [2:0] v57_1_address0;
output   v57_1_ce0;
input  [31:0] v57_1_q0;
output  [2:0] v57_2_address0;
output   v57_2_ce0;
input  [31:0] v57_2_q0;
output  [2:0] v57_3_address0;
output   v57_3_ce0;
input  [31:0] v57_3_q0;
output  [2:0] v57_4_address0;
output   v57_4_ce0;
input  [31:0] v57_4_q0;
output  [2:0] v57_5_address0;
output   v57_5_ce0;
input  [31:0] v57_5_q0;
output  [2:0] v57_6_address0;
output   v57_6_ce0;
input  [31:0] v57_6_q0;
output  [2:0] v57_7_address0;
output   v57_7_ce0;
input  [31:0] v57_7_q0;
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
output  [31:0] grp_fu_487_p_din0;
output  [31:0] grp_fu_487_p_din1;
output  [1:0] grp_fu_487_p_opcode;
input  [31:0] grp_fu_487_p_dout0;
output   grp_fu_487_p_ce;
output  [31:0] grp_fu_491_p_din0;
output  [31:0] grp_fu_491_p_din1;
output  [1:0] grp_fu_491_p_opcode;
input  [31:0] grp_fu_491_p_dout0;
output   grp_fu_491_p_ce;
output  [31:0] grp_fu_495_p_din0;
output  [31:0] grp_fu_495_p_din1;
input  [31:0] grp_fu_495_p_dout0;
output   grp_fu_495_p_ce;
output  [31:0] grp_fu_499_p_din0;
output  [31:0] grp_fu_499_p_din1;
input  [31:0] grp_fu_499_p_dout0;
output   grp_fu_499_p_ce;
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
reg   [0:0] icmp_ln97_reg_1118;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_571;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_575;
reg   [31:0] reg_579;
reg   [31:0] reg_587;
wire   [0:0] icmp_ln97_fu_613_p2;
reg   [0:0] icmp_ln97_reg_1118_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_1118_pp0_iter2_reg;
reg   [0:0] icmp_ln97_reg_1118_pp0_iter3_reg;
reg   [6:0] v60_load_reg_1122;
wire   [0:0] tmp_4_fu_637_p3;
reg   [0:0] tmp_4_reg_1127;
wire   [6:0] select_ln97_1_fu_645_p3;
reg   [6:0] select_ln97_1_reg_1132;
wire   [2:0] trunc_ln97_1_fu_653_p1;
reg   [2:0] trunc_ln97_1_reg_1138;
wire   [6:0] select_ln97_fu_689_p3;
reg   [6:0] select_ln97_reg_1183;
wire   [11:0] zext_ln97_fu_699_p1;
reg   [11:0] zext_ln97_reg_1188;
wire   [0:0] cmp7_fu_702_p2;
reg   [0:0] cmp7_reg_1198;
reg   [0:0] cmp7_reg_1198_pp0_iter1_reg;
wire   [31:0] v65_fu_739_p19;
reg   [31:0] v65_reg_1210;
reg   [31:0] v65_reg_1210_pp0_iter1_reg;
reg   [2:0] lshr_ln1_reg_1221;
reg   [3:0] tmp_3_reg_1235;
wire   [0:0] trunc_ln114_fu_846_p1;
reg   [0:0] trunc_ln114_reg_1241;
wire   [1:0] trunc_ln128_fu_850_p1;
reg   [1:0] trunc_ln128_reg_1247;
reg   [0:0] tmp_6_reg_1252;
wire   [31:0] v64_fu_899_p1;
wire   [31:0] v71_fu_904_p1;
wire   [63:0] zext_ln98_fu_959_p1;
reg   [63:0] zext_ln98_reg_1287;
reg   [2:0] v58_0_addr_reg_1300;
reg   [2:0] v58_0_addr_reg_1300_pp0_iter2_reg;
reg   [2:0] v58_0_addr_reg_1300_pp0_iter3_reg;
reg   [2:0] v58_1_addr_reg_1310;
reg   [2:0] v58_1_addr_reg_1310_pp0_iter2_reg;
reg   [2:0] v58_1_addr_reg_1310_pp0_iter3_reg;
reg   [2:0] v58_2_addr_reg_1320;
reg   [2:0] v58_2_addr_reg_1320_pp0_iter2_reg;
reg   [2:0] v58_2_addr_reg_1320_pp0_iter3_reg;
wire   [31:0] v77_fu_974_p1;
reg   [2:0] v58_3_addr_reg_1335;
reg   [2:0] v58_3_addr_reg_1335_pp0_iter2_reg;
reg   [2:0] v58_3_addr_reg_1335_pp0_iter3_reg;
wire   [31:0] v83_fu_979_p1;
reg   [2:0] v58_4_addr_reg_1350;
reg   [2:0] v58_4_addr_reg_1350_pp0_iter2_reg;
reg   [2:0] v58_4_addr_reg_1350_pp0_iter3_reg;
reg   [2:0] v58_5_addr_reg_1361;
reg   [2:0] v58_5_addr_reg_1361_pp0_iter2_reg;
reg   [2:0] v58_5_addr_reg_1361_pp0_iter3_reg;
wire   [31:0] v63_fu_1021_p3;
reg   [31:0] v63_reg_1377;
wire   [31:0] v89_fu_1028_p1;
wire   [31:0] v95_fu_1033_p1;
wire   [31:0] v70_fu_1038_p3;
reg   [31:0] v70_reg_1392;
wire   [31:0] v76_fu_1045_p3;
reg   [31:0] v76_reg_1397;
wire   [31:0] v82_fu_1052_p3;
reg   [31:0] v82_reg_1402;
wire   [31:0] v88_fu_1059_p3;
reg   [31:0] v88_reg_1407;
wire   [31:0] v94_fu_1066_p3;
reg   [31:0] v94_reg_1412;
reg   [31:0] v66_reg_1417;
reg   [31:0] v72_reg_1422;
wire   [31:0] v101_fu_1073_p1;
wire   [31:0] v107_fu_1078_p1;
reg   [31:0] v78_reg_1437;
reg   [31:0] v84_reg_1442;
reg   [31:0] v90_reg_1447;
reg   [31:0] v96_reg_1452;
reg   [2:0] v58_6_addr_reg_1462;
reg   [2:0] v58_6_addr_reg_1462_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1462_pp0_iter4_reg;
reg   [2:0] v58_7_addr_reg_1472;
reg   [2:0] v58_7_addr_reg_1472_pp0_iter3_reg;
reg   [2:0] v58_7_addr_reg_1472_pp0_iter4_reg;
reg   [31:0] v102_reg_1477;
reg   [31:0] v108_reg_1482;
wire   [31:0] v100_fu_1083_p3;
reg   [31:0] v100_reg_1487;
wire   [31:0] v106_fu_1090_p3;
reg   [31:0] v106_reg_1492;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln97_1_fu_667_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln102_fu_792_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln110_fu_831_p1;
wire   [63:0] zext_ln117_fu_877_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_894_p1;
wire   [63:0] zext_ln131_fu_924_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_944_p1;
wire   [63:0] zext_ln145_fu_999_p1;
wire   [63:0] zext_ln152_fu_1016_p1;
reg   [6:0] v60_fu_150;
wire   [6:0] add_ln98_fu_949_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_load;
reg   [6:0] v59_fu_154;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_158;
wire   [9:0] add_ln97_1_fu_619_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v115_0_ce0_local;
reg    v115_1_ce0_local;
reg    v115_2_ce0_local;
reg    v115_3_ce0_local;
reg    v115_4_ce0_local;
reg    v115_5_ce0_local;
reg    v115_6_ce0_local;
reg    v115_7_ce0_local;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v57_0_ce0_local;
reg    v58_0_ce0_local;
reg   [2:0] v58_0_address0_local;
reg    v58_0_we0_local;
reg    v57_1_ce0_local;
reg    v57_2_ce0_local;
reg    v57_3_ce0_local;
reg    v57_4_ce0_local;
reg    v57_5_ce0_local;
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
reg    v57_6_ce0_local;
reg    v57_7_ce0_local;
reg    v58_6_ce0_local;
reg   [2:0] v58_6_address0_local;
reg    v58_6_we0_local;
reg    v58_7_ce0_local;
reg   [2:0] v58_7_address0_local;
reg    v58_7_we0_local;
reg   [31:0] grp_fu_555_p0;
reg   [31:0] grp_fu_555_p1;
reg   [31:0] grp_fu_559_p0;
reg   [31:0] grp_fu_559_p1;
reg   [31:0] grp_fu_563_p0;
reg   [31:0] grp_fu_563_p1;
reg   [31:0] grp_fu_567_p0;
reg   [31:0] grp_fu_567_p1;
wire   [6:0] add_ln97_fu_631_p2;
wire   [2:0] lshr_ln_fu_657_p4;
wire   [31:0] v65_fu_739_p2;
wire   [31:0] v65_fu_739_p4;
wire   [31:0] v65_fu_739_p6;
wire   [31:0] v65_fu_739_p8;
wire   [31:0] v65_fu_739_p10;
wire   [31:0] v65_fu_739_p12;
wire   [31:0] v65_fu_739_p14;
wire   [31:0] v65_fu_739_p16;
wire   [31:0] v65_fu_739_p17;
wire   [5:0] trunc_ln97_fu_695_p1;
wire   [11:0] tmp_fu_778_p3;
wire   [11:0] add_ln102_fu_786_p2;
wire   [4:0] tmp_1_fu_807_p4;
wire   [11:0] tmp_2_fu_817_p3;
wire   [11:0] add_ln110_fu_825_p2;
wire   [11:0] tmp_5_fu_862_p5;
wire   [11:0] add_ln117_fu_872_p2;
wire   [11:0] tmp_7_fu_882_p3;
wire   [11:0] add_ln124_fu_889_p2;
wire   [11:0] tmp_s_fu_909_p5;
wire   [11:0] add_ln131_fu_919_p2;
wire   [11:0] tmp_8_fu_929_p5;
wire   [11:0] add_ln138_fu_939_p2;
wire   [11:0] tmp_9_fu_984_p5;
wire   [11:0] add_ln145_fu_994_p2;
wire   [11:0] tmp_10_fu_1004_p3;
wire   [11:0] add_ln152_fu_1011_p2;
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
wire   [2:0] v65_fu_739_p1;
wire   [2:0] v65_fu_739_p3;
wire   [2:0] v65_fu_739_p5;
wire   [2:0] v65_fu_739_p7;
wire  signed [2:0] v65_fu_739_p9;
wire  signed [2:0] v65_fu_739_p11;
wire  signed [2:0] v65_fu_739_p13;
wire  signed [2:0] v65_fu_739_p15;
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
sparsemux_17_3_32_1_1_U5(.din0(v65_fu_739_p2),.din1(v65_fu_739_p4),.din2(v65_fu_739_p6),.din3(v65_fu_739_p8),.din4(v65_fu_739_p10),.din5(v65_fu_739_p12),.din6(v65_fu_739_p14),.din7(v65_fu_739_p16),.def(v65_fu_739_p17),.sel(trunc_ln97_1_reg_1138),.dout(v65_fu_739_p19));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln97_fu_613_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_158 <= add_ln97_1_fu_619_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_158 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln97_fu_613_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v59_fu_154 <= select_ln97_1_fu_645_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v59_fu_154 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v60_fu_150 <= 7'd0;
    end else if (((icmp_ln97_reg_1118 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v60_fu_150 <= add_ln98_fu_949_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1198 <= cmp7_fu_702_p2;
        cmp7_reg_1198_pp0_iter1_reg <= cmp7_reg_1198;
        lshr_ln1_reg_1221 <= {{select_ln97_fu_689_p3[5:3]}};
        select_ln97_reg_1183 <= select_ln97_fu_689_p3;
        tmp_3_reg_1235 <= {{select_ln97_fu_689_p3[5:2]}};
        tmp_6_reg_1252 <= select_ln97_fu_689_p3[32'd1];
        trunc_ln114_reg_1241 <= trunc_ln114_fu_846_p1;
        trunc_ln128_reg_1247 <= trunc_ln128_fu_850_p1;
        v100_reg_1487 <= v100_fu_1083_p3;
        v106_reg_1492 <= v106_fu_1090_p3;
        v63_reg_1377 <= v63_fu_1021_p3;
        v65_reg_1210 <= v65_fu_739_p19;
        v65_reg_1210_pp0_iter1_reg <= v65_reg_1210;
        v70_reg_1392 <= v70_fu_1038_p3;
        v76_reg_1397 <= v76_fu_1045_p3;
        v82_reg_1402 <= v82_fu_1052_p3;
        v88_reg_1407 <= v88_fu_1059_p3;
        v94_reg_1412 <= v94_fu_1066_p3;
        zext_ln97_reg_1188[6 : 0] <= zext_ln97_fu_699_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln97_reg_1118 <= icmp_ln97_fu_613_p2;
        icmp_ln97_reg_1118_pp0_iter1_reg <= icmp_ln97_reg_1118;
        icmp_ln97_reg_1118_pp0_iter2_reg <= icmp_ln97_reg_1118_pp0_iter1_reg;
        icmp_ln97_reg_1118_pp0_iter3_reg <= icmp_ln97_reg_1118_pp0_iter2_reg;
        select_ln97_1_reg_1132 <= select_ln97_1_fu_645_p3;
        tmp_4_reg_1127 <= ap_sig_allocacmp_v60_load[32'd6];
        trunc_ln97_1_reg_1138 <= trunc_ln97_1_fu_653_p1;
        v58_0_addr_reg_1300 <= zext_ln98_fu_959_p1;
        v58_0_addr_reg_1300_pp0_iter2_reg <= v58_0_addr_reg_1300;
        v58_0_addr_reg_1300_pp0_iter3_reg <= v58_0_addr_reg_1300_pp0_iter2_reg;
        v58_1_addr_reg_1310 <= zext_ln98_fu_959_p1;
        v58_1_addr_reg_1310_pp0_iter2_reg <= v58_1_addr_reg_1310;
        v58_1_addr_reg_1310_pp0_iter3_reg <= v58_1_addr_reg_1310_pp0_iter2_reg;
        v58_2_addr_reg_1320 <= zext_ln98_fu_959_p1;
        v58_2_addr_reg_1320_pp0_iter2_reg <= v58_2_addr_reg_1320;
        v58_2_addr_reg_1320_pp0_iter3_reg <= v58_2_addr_reg_1320_pp0_iter2_reg;
        v58_3_addr_reg_1335 <= zext_ln98_fu_959_p1;
        v58_3_addr_reg_1335_pp0_iter2_reg <= v58_3_addr_reg_1335;
        v58_3_addr_reg_1335_pp0_iter3_reg <= v58_3_addr_reg_1335_pp0_iter2_reg;
        v58_4_addr_reg_1350 <= zext_ln98_fu_959_p1;
        v58_4_addr_reg_1350_pp0_iter2_reg <= v58_4_addr_reg_1350;
        v58_4_addr_reg_1350_pp0_iter3_reg <= v58_4_addr_reg_1350_pp0_iter2_reg;
        v58_5_addr_reg_1361 <= zext_ln98_fu_959_p1;
        v58_5_addr_reg_1361_pp0_iter2_reg <= v58_5_addr_reg_1361;
        v58_5_addr_reg_1361_pp0_iter3_reg <= v58_5_addr_reg_1361_pp0_iter2_reg;
        v58_6_addr_reg_1462 <= zext_ln98_reg_1287;
        v58_6_addr_reg_1462_pp0_iter3_reg <= v58_6_addr_reg_1462;
        v58_6_addr_reg_1462_pp0_iter4_reg <= v58_6_addr_reg_1462_pp0_iter3_reg;
        v58_7_addr_reg_1472 <= zext_ln98_reg_1287;
        v58_7_addr_reg_1472_pp0_iter3_reg <= v58_7_addr_reg_1472;
        v58_7_addr_reg_1472_pp0_iter4_reg <= v58_7_addr_reg_1472_pp0_iter3_reg;
        v60_load_reg_1122 <= ap_sig_allocacmp_v60_load;
        zext_ln98_reg_1287[2 : 0] <= zext_ln98_fu_959_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_571 <= v114_q1;
        reg_575 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_579 <= grp_fu_487_p_dout0;
        reg_587 <= grp_fu_491_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1477 <= grp_fu_495_p_dout0;
        v108_reg_1482 <= grp_fu_499_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1417 <= grp_fu_495_p_dout0;
        v72_reg_1422 <= grp_fu_499_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1437 <= grp_fu_495_p_dout0;
        v84_reg_1442 <= grp_fu_499_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1447 <= grp_fu_495_p_dout0;
        v96_reg_1452 <= grp_fu_499_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_1118 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln97_reg_1118_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        grp_fu_555_p0 = v100_reg_1487;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_555_p0 = v88_reg_1407;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_555_p0 = v76_reg_1397;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_555_p0 = v63_reg_1377;
    end else begin
        grp_fu_555_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_555_p1 = v102_reg_1477;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_555_p1 = v90_reg_1447;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_555_p1 = v78_reg_1437;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_555_p1 = v66_reg_1417;
    end else begin
        grp_fu_555_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_559_p0 = v106_reg_1492;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_559_p0 = v94_reg_1412;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_559_p0 = v82_reg_1402;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_559_p0 = v70_reg_1392;
    end else begin
        grp_fu_559_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_559_p1 = v108_reg_1482;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_559_p1 = v96_reg_1452;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_559_p1 = v84_reg_1442;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_559_p1 = v72_reg_1422;
    end else begin
        grp_fu_559_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_563_p0 = v101_fu_1073_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_563_p0 = v89_fu_1028_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_563_p0 = v77_fu_974_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_563_p0 = v64_fu_899_p1;
    end else begin
        grp_fu_563_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_563_p1 = v65_reg_1210_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_563_p1 = v65_reg_1210;
    end else begin
        grp_fu_563_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_567_p0 = v107_fu_1078_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_567_p0 = v95_fu_1033_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_567_p0 = v83_fu_979_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_567_p0 = v71_fu_904_p1;
    end else begin
        grp_fu_567_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_567_p1 = v65_reg_1210_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_567_p1 = v65_reg_1210;
    end else begin
        grp_fu_567_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_1016_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_944_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_894_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_831_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_999_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_924_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_877_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_792_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_0_ce0_local = 1'b1;
    end else begin
        v57_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_1_ce0_local = 1'b1;
    end else begin
        v57_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_2_ce0_local = 1'b1;
    end else begin
        v57_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_3_ce0_local = 1'b1;
    end else begin
        v57_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_4_ce0_local = 1'b1;
    end else begin
        v57_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_5_ce0_local = 1'b1;
    end else begin
        v57_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_6_ce0_local = 1'b1;
    end else begin
        v57_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_7_ce0_local = 1'b1;
    end else begin
        v57_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_reg_1300_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln98_fu_959_p1;
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
        v58_1_address0_local = v58_1_addr_reg_1310_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln98_fu_959_p1;
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
        v58_2_address0_local = v58_2_addr_reg_1320_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln98_fu_959_p1;
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
        v58_3_address0_local = v58_3_addr_reg_1335_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln98_fu_959_p1;
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
        v58_6_address0_local = v58_6_addr_reg_1462_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_address0_local = zext_ln98_reg_1287;
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
        v58_7_address0_local = v58_7_addr_reg_1472_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_address0_local = zext_ln98_reg_1287;
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
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
assign add_ln102_fu_786_p2 = (tmp_fu_778_p3 + zext_ln97_fu_699_p1);
assign add_ln110_fu_825_p2 = (tmp_2_fu_817_p3 + zext_ln97_fu_699_p1);
assign add_ln117_fu_872_p2 = (tmp_5_fu_862_p5 + zext_ln97_reg_1188);
assign add_ln124_fu_889_p2 = (tmp_7_fu_882_p3 + zext_ln97_reg_1188);
assign add_ln131_fu_919_p2 = (tmp_s_fu_909_p5 + zext_ln97_reg_1188);
assign add_ln138_fu_939_p2 = (tmp_8_fu_929_p5 + zext_ln97_reg_1188);
assign add_ln145_fu_994_p2 = (tmp_9_fu_984_p5 + zext_ln97_reg_1188);
assign add_ln152_fu_1011_p2 = (tmp_10_fu_1004_p3 + zext_ln97_reg_1188);
assign add_ln97_1_fu_619_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_631_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_949_p2 = (select_ln97_reg_1183 + 7'd8);
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
assign cmp7_fu_702_p2 = ((select_ln97_1_reg_1132 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_487_p_ce = 1'b1;
assign grp_fu_487_p_din0 = grp_fu_555_p0;
assign grp_fu_487_p_din1 = grp_fu_555_p1;
assign grp_fu_487_p_opcode = 2'd0;
assign grp_fu_491_p_ce = 1'b1;
assign grp_fu_491_p_din0 = grp_fu_559_p0;
assign grp_fu_491_p_din1 = grp_fu_559_p1;
assign grp_fu_491_p_opcode = 2'd0;
assign grp_fu_495_p_ce = 1'b1;
assign grp_fu_495_p_din0 = grp_fu_563_p0;
assign grp_fu_495_p_din1 = grp_fu_563_p1;
assign grp_fu_499_p_ce = 1'b1;
assign grp_fu_499_p_din0 = grp_fu_567_p0;
assign grp_fu_499_p_din1 = grp_fu_567_p1;
assign icmp_ln97_fu_613_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln_fu_657_p4 = {{select_ln97_1_fu_645_p3[5:3]}};
assign select_ln97_1_fu_645_p3 = ((tmp_4_fu_637_p3[0:0] == 1'b1) ? add_ln97_fu_631_p2 : ap_sig_allocacmp_v59_load);
assign select_ln97_fu_689_p3 = ((tmp_4_reg_1127[0:0] == 1'b1) ? 7'd0 : v60_load_reg_1122);
assign tmp_10_fu_1004_p3 = {{lshr_ln1_reg_1221}, {9'd448}};
assign tmp_1_fu_807_p4 = {{select_ln97_fu_689_p3[5:1]}};
assign tmp_2_fu_817_p3 = {{tmp_1_fu_807_p4}, {7'd64}};
assign tmp_4_fu_637_p3 = ap_sig_allocacmp_v60_load[32'd6];
assign tmp_5_fu_862_p5 = {{{{tmp_3_reg_1235}, {1'd1}}, {trunc_ln114_reg_1241}}, {6'd0}};
assign tmp_7_fu_882_p3 = {{tmp_3_reg_1235}, {8'd192}};
assign tmp_8_fu_929_p5 = {{{{lshr_ln1_reg_1221}, {1'd1}}, {tmp_6_reg_1252}}, {7'd64}};
assign tmp_9_fu_984_p5 = {{{{lshr_ln1_reg_1221}, {2'd3}}, {trunc_ln114_reg_1241}}, {6'd0}};
assign tmp_fu_778_p3 = {{trunc_ln97_fu_695_p1}, {6'd0}};
assign tmp_s_fu_909_p5 = {{{{lshr_ln1_reg_1221}, {1'd1}}, {trunc_ln128_reg_1247}}, {6'd0}};
assign trunc_ln114_fu_846_p1 = select_ln97_fu_689_p3[0:0];
assign trunc_ln128_fu_850_p1 = select_ln97_fu_689_p3[1:0];
assign trunc_ln97_1_fu_653_p1 = select_ln97_1_fu_645_p3[2:0];
assign trunc_ln97_fu_695_p1 = select_ln97_fu_689_p3[5:0];
assign v100_fu_1083_p3 = ((cmp7_reg_1198_pp0_iter1_reg[0:0] == 1'b1) ? v57_6_q0 : v58_6_q0);
assign v101_fu_1073_p1 = reg_571;
assign v106_fu_1090_p3 = ((cmp7_reg_1198_pp0_iter1_reg[0:0] == 1'b1) ? v57_7_q0 : v58_7_q0);
assign v107_fu_1078_p1 = reg_575;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_0_address0 = zext_ln97_1_fu_667_p1;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = zext_ln97_1_fu_667_p1;
assign v115_1_ce0 = v115_1_ce0_local;
assign v115_2_address0 = zext_ln97_1_fu_667_p1;
assign v115_2_ce0 = v115_2_ce0_local;
assign v115_3_address0 = zext_ln97_1_fu_667_p1;
assign v115_3_ce0 = v115_3_ce0_local;
assign v115_4_address0 = zext_ln97_1_fu_667_p1;
assign v115_4_ce0 = v115_4_ce0_local;
assign v115_5_address0 = zext_ln97_1_fu_667_p1;
assign v115_5_ce0 = v115_5_ce0_local;
assign v115_6_address0 = zext_ln97_1_fu_667_p1;
assign v115_6_ce0 = v115_6_ce0_local;
assign v115_7_address0 = zext_ln97_1_fu_667_p1;
assign v115_7_ce0 = v115_7_ce0_local;
assign v57_0_address0 = zext_ln98_fu_959_p1;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_1_address0 = zext_ln98_fu_959_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_2_address0 = zext_ln98_fu_959_p1;
assign v57_2_ce0 = v57_2_ce0_local;
assign v57_3_address0 = zext_ln98_fu_959_p1;
assign v57_3_ce0 = v57_3_ce0_local;
assign v57_4_address0 = zext_ln98_fu_959_p1;
assign v57_4_ce0 = v57_4_ce0_local;
assign v57_5_address0 = zext_ln98_fu_959_p1;
assign v57_5_ce0 = v57_5_ce0_local;
assign v57_6_address0 = zext_ln98_reg_1287;
assign v57_6_ce0 = v57_6_ce0_local;
assign v57_7_address0 = zext_ln98_reg_1287;
assign v57_7_ce0 = v57_7_ce0_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_d0 = reg_579;
assign v58_0_we0 = v58_0_we0_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_d0 = reg_587;
assign v58_1_we0 = v58_1_we0_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_d0 = reg_579;
assign v58_2_we0 = v58_2_we0_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_d0 = reg_587;
assign v58_3_we0 = v58_3_we0_local;
assign v58_4_address0 = v58_4_addr_reg_1350_pp0_iter3_reg;
assign v58_4_address1 = zext_ln98_fu_959_p1;
assign v58_4_ce0 = v58_4_ce0_local;
assign v58_4_ce1 = v58_4_ce1_local;
assign v58_4_d0 = reg_579;
assign v58_4_we0 = v58_4_we0_local;
assign v58_5_address0 = v58_5_addr_reg_1361_pp0_iter3_reg;
assign v58_5_address1 = zext_ln98_fu_959_p1;
assign v58_5_ce0 = v58_5_ce0_local;
assign v58_5_ce1 = v58_5_ce1_local;
assign v58_5_d0 = reg_587;
assign v58_5_we0 = v58_5_we0_local;
assign v58_6_address0 = v58_6_address0_local;
assign v58_6_ce0 = v58_6_ce0_local;
assign v58_6_d0 = reg_579;
assign v58_6_we0 = v58_6_we0_local;
assign v58_7_address0 = v58_7_address0_local;
assign v58_7_ce0 = v58_7_ce0_local;
assign v58_7_d0 = reg_587;
assign v58_7_we0 = v58_7_we0_local;
assign v63_fu_1021_p3 = ((cmp7_reg_1198[0:0] == 1'b1) ? v57_0_q0 : v58_0_q0);
assign v64_fu_899_p1 = reg_571;
assign v65_fu_739_p10 = v115_4_q0;
assign v65_fu_739_p12 = v115_5_q0;
assign v65_fu_739_p14 = v115_6_q0;
assign v65_fu_739_p16 = v115_7_q0;
assign v65_fu_739_p17 = 'bx;
assign v65_fu_739_p2 = v115_0_q0;
assign v65_fu_739_p4 = v115_1_q0;
assign v65_fu_739_p6 = v115_2_q0;
assign v65_fu_739_p8 = v115_3_q0;
assign v70_fu_1038_p3 = ((cmp7_reg_1198[0:0] == 1'b1) ? v57_1_q0 : v58_1_q0);
assign v71_fu_904_p1 = reg_575;
assign v76_fu_1045_p3 = ((cmp7_reg_1198[0:0] == 1'b1) ? v57_2_q0 : v58_2_q0);
assign v77_fu_974_p1 = reg_571;
assign v82_fu_1052_p3 = ((cmp7_reg_1198[0:0] == 1'b1) ? v57_3_q0 : v58_3_q0);
assign v83_fu_979_p1 = reg_575;
assign v88_fu_1059_p3 = ((cmp7_reg_1198[0:0] == 1'b1) ? v57_4_q0 : v58_4_q1);
assign v89_fu_1028_p1 = reg_571;
assign v94_fu_1066_p3 = ((cmp7_reg_1198[0:0] == 1'b1) ? v57_5_q0 : v58_5_q1);
assign v95_fu_1033_p1 = reg_575;
assign zext_ln102_fu_792_p1 = add_ln102_fu_786_p2;
assign zext_ln110_fu_831_p1 = add_ln110_fu_825_p2;
assign zext_ln117_fu_877_p1 = add_ln117_fu_872_p2;
assign zext_ln124_fu_894_p1 = add_ln124_fu_889_p2;
assign zext_ln131_fu_924_p1 = add_ln131_fu_919_p2;
assign zext_ln138_fu_944_p1 = add_ln138_fu_939_p2;
assign zext_ln145_fu_999_p1 = add_ln145_fu_994_p2;
assign zext_ln152_fu_1016_p1 = add_ln152_fu_1011_p2;
assign zext_ln97_1_fu_667_p1 = lshr_ln_fu_657_p4;
assign zext_ln97_fu_699_p1 = select_ln97_1_reg_1132;
assign zext_ln98_fu_959_p1 = lshr_ln1_reg_1221;
always @ (posedge ap_clk) begin
    zext_ln97_reg_1188[11:7] <= 5'b00000;
    zext_ln98_reg_1287[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 