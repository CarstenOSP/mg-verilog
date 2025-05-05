module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_4_address0,v58_4_ce0,v58_4_we0,v58_4_d0,v58_4_address1,v58_4_ce1,v58_4_q1,v58_5_address0,v58_5_ce0,v58_5_we0,v58_5_d0,v58_5_address1,v58_5_ce1,v58_5_q1,v58_6_address0,v58_6_ce0,v58_6_we0,v58_6_d0,v58_6_q0,v58_7_address0,v58_7_ce0,v58_7_we0,v58_7_d0,v58_7_q0,grp_fu_127_p_din0,grp_fu_127_p_din1,grp_fu_127_p_opcode,grp_fu_127_p_dout0,grp_fu_127_p_ce,grp_fu_131_p_din0,grp_fu_131_p_din1,grp_fu_131_p_dout0,grp_fu_131_p_ce); 
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
output  [4:0] v115_0_address0;
output   v115_0_ce0;
input  [31:0] v115_0_q0;
output  [4:0] v115_1_address0;
output   v115_1_ce0;
input  [31:0] v115_1_q0;
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
output  [31:0] grp_fu_127_p_din0;
output  [31:0] grp_fu_127_p_din1;
output  [1:0] grp_fu_127_p_opcode;
input  [31:0] grp_fu_127_p_dout0;
output   grp_fu_127_p_ce;
output  [31:0] grp_fu_131_p_din0;
output  [31:0] grp_fu_131_p_din1;
input  [31:0] grp_fu_131_p_dout0;
output   grp_fu_131_p_ce;
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
reg   [0:0] icmp_ln97_reg_995;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_430;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_434;
reg   [31:0] reg_438;
wire   [31:0] grp_fu_418_p2;
reg   [31:0] reg_446;
wire   [0:0] icmp_ln97_fu_472_p2;
reg   [0:0] icmp_ln97_reg_995_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_995_pp0_iter2_reg;
reg   [0:0] icmp_ln97_reg_995_pp0_iter3_reg;
wire   [6:0] select_ln97_fu_504_p3;
reg   [6:0] select_ln97_reg_999;
wire   [5:0] trunc_ln97_fu_512_p1;
reg   [5:0] trunc_ln97_reg_1004;
wire   [6:0] select_ln97_1_fu_516_p3;
reg   [6:0] select_ln97_1_reg_1009;
wire   [0:0] trunc_ln97_1_fu_524_p1;
reg   [0:0] trunc_ln97_1_reg_1015;
reg   [4:0] lshr_ln_reg_1020;
reg   [2:0] lshr_ln1_reg_1025;
wire   [4:0] tmp_1_fu_553_p4;
reg   [4:0] tmp_1_reg_1043;
reg   [3:0] tmp_3_reg_1053;
wire   [0:0] trunc_ln114_fu_586_p1;
reg   [0:0] trunc_ln114_reg_1061;
wire   [1:0] trunc_ln128_fu_590_p1;
reg   [1:0] trunc_ln128_reg_1069;
reg   [0:0] tmp_6_reg_1075;
wire   [11:0] zext_ln97_fu_612_p1;
reg   [11:0] zext_ln97_reg_1081;
wire   [0:0] cmp7_fu_620_p2;
reg   [0:0] cmp7_reg_1091;
reg   [0:0] cmp7_reg_1091_pp0_iter1_reg;
reg   [31:0] v61_reg_1118;
reg   [31:0] v68_reg_1128;
wire   [31:0] v65_v_fu_686_p3;
reg   [31:0] v65_v_reg_1143;
reg   [31:0] v74_reg_1153;
reg   [31:0] v80_reg_1163;
wire   [31:0] v65_fu_758_p1;
reg   [31:0] v65_reg_1178;
wire   [31:0] v64_fu_763_p1;
wire   [31:0] v71_fu_768_p1;
reg   [31:0] v86_reg_1199;
reg   [31:0] v92_reg_1209;
reg   [2:0] v58_0_addr_reg_1224;
reg   [2:0] v58_0_addr_reg_1224_pp0_iter2_reg;
reg   [2:0] v58_0_addr_reg_1224_pp0_iter3_reg;
reg   [2:0] v58_1_addr_reg_1229;
reg   [2:0] v58_1_addr_reg_1229_pp0_iter2_reg;
reg   [2:0] v58_1_addr_reg_1229_pp0_iter3_reg;
reg   [2:0] v58_2_addr_reg_1234;
reg   [2:0] v58_2_addr_reg_1234_pp0_iter2_reg;
reg   [2:0] v58_2_addr_reg_1234_pp0_iter3_reg;
wire   [31:0] v77_fu_859_p1;
reg   [2:0] v58_3_addr_reg_1244;
reg   [2:0] v58_3_addr_reg_1244_pp0_iter2_reg;
reg   [2:0] v58_3_addr_reg_1244_pp0_iter3_reg;
wire   [31:0] v83_fu_864_p1;
reg   [2:0] v58_4_addr_reg_1254;
reg   [2:0] v58_4_addr_reg_1254_pp0_iter2_reg;
reg   [2:0] v58_4_addr_reg_1254_pp0_iter3_reg;
reg   [2:0] v58_5_addr_reg_1260;
reg   [2:0] v58_5_addr_reg_1260_pp0_iter2_reg;
reg   [2:0] v58_5_addr_reg_1260_pp0_iter3_reg;
reg   [31:0] v98_reg_1271;
reg   [31:0] v98_reg_1271_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1276;
reg   [2:0] v58_6_addr_reg_1276_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1276_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1276_pp0_iter4_reg;
reg   [31:0] v104_reg_1286;
reg   [31:0] v104_reg_1286_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1291;
reg   [2:0] v58_7_addr_reg_1291_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1291_pp0_iter3_reg;
reg   [2:0] v58_7_addr_reg_1291_pp0_iter4_reg;
wire   [31:0] v63_fu_906_p3;
reg   [31:0] v63_reg_1296;
wire   [31:0] v89_fu_912_p1;
wire   [31:0] v95_fu_917_p1;
wire   [31:0] v70_fu_922_p3;
reg   [31:0] v70_reg_1311;
wire   [31:0] v76_fu_928_p3;
reg   [31:0] v76_reg_1316;
wire   [31:0] v82_fu_934_p3;
reg   [31:0] v82_reg_1321;
wire   [31:0] v88_fu_940_p3;
reg   [31:0] v88_reg_1326;
wire   [31:0] v94_fu_946_p3;
reg   [31:0] v94_reg_1331;
reg   [31:0] v66_reg_1336;
wire   [31:0] grp_fu_426_p2;
reg   [31:0] v72_reg_1341;
wire   [31:0] v101_fu_952_p1;
wire   [31:0] v107_fu_957_p1;
reg   [31:0] v78_reg_1356;
reg   [31:0] v84_reg_1361;
reg   [31:0] v90_reg_1366;
reg   [31:0] v96_reg_1371;
reg   [31:0] v102_reg_1376;
reg   [31:0] v108_reg_1381;
wire   [31:0] v100_fu_962_p3;
reg   [31:0] v100_reg_1386;
wire   [31:0] v106_fu_968_p3;
reg   [31:0] v106_reg_1391;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln98_fu_538_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln107_fu_571_p1;
wire   [63:0] zext_ln97_1_fu_615_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_638_p1;
wire   [63:0] zext_ln110_fu_656_p1;
wire   [63:0] zext_ln114_fu_669_p1;
wire   [63:0] zext_ln121_fu_681_p1;
wire   [63:0] zext_ln117_fu_708_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_725_p1;
wire   [63:0] zext_ln128_fu_738_p1;
wire   [63:0] zext_ln135_fu_753_p1;
wire   [63:0] zext_ln131_fu_788_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_808_p1;
wire   [63:0] zext_ln142_fu_821_p1;
wire   [63:0] zext_ln149_fu_833_p1;
wire   [63:0] zext_ln98_1_fu_848_p1;
wire   [63:0] zext_ln145_fu_884_p1;
wire   [63:0] zext_ln152_fu_901_p1;
reg   [6:0] v60_fu_120;
wire   [6:0] add_ln98_fu_838_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_load;
reg   [6:0] v59_fu_124;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_128;
wire   [9:0] add_ln97_1_fu_478_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v57_ce1_local;
reg   [5:0] v57_address1_local;
reg    v57_ce0_local;
reg   [5:0] v57_address0_local;
reg    v115_0_ce0_local;
reg    v115_1_ce0_local;
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
reg   [31:0] grp_fu_414_p0;
reg   [31:0] grp_fu_414_p1;
reg   [31:0] grp_fu_418_p0;
reg   [31:0] grp_fu_418_p1;
reg   [31:0] grp_fu_422_p0;
reg   [31:0] grp_fu_422_p1;
reg   [31:0] grp_fu_426_p0;
reg   [31:0] grp_fu_426_p1;
wire   [0:0] tmp_4_fu_496_p3;
wire   [6:0] add_ln97_fu_490_p2;
wire   [5:0] or_ln_fu_563_p3;
wire   [11:0] tmp_fu_625_p3;
wire   [11:0] add_ln102_fu_632_p2;
wire   [11:0] tmp_2_fu_643_p3;
wire   [11:0] add_ln110_fu_650_p2;
wire   [5:0] or_ln1_fu_661_p4;
wire   [5:0] or_ln2_fu_674_p3;
wire   [11:0] tmp_5_fu_693_p5;
wire   [11:0] add_ln117_fu_703_p2;
wire   [11:0] tmp_7_fu_713_p3;
wire   [11:0] add_ln124_fu_720_p2;
wire   [5:0] or_ln3_fu_730_p4;
wire   [5:0] or_ln4_fu_743_p5;
wire   [11:0] tmp_s_fu_773_p5;
wire   [11:0] add_ln131_fu_783_p2;
wire   [11:0] tmp_8_fu_793_p5;
wire   [11:0] add_ln138_fu_803_p2;
wire   [5:0] or_ln5_fu_813_p4;
wire   [5:0] or_ln6_fu_826_p3;
wire   [11:0] tmp_9_fu_869_p5;
wire   [11:0] add_ln145_fu_879_p2;
wire   [11:0] tmp_10_fu_889_p3;
wire   [11:0] add_ln152_fu_896_p2;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v60_fu_120 = 7'd0;
#0 v59_fu_124 = 7'd0;
#0 indvar_flatten_fu_128 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_418_p0),.din1(grp_fu_418_p1),.ce(1'b1),.dout(grp_fu_418_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_426_p0),.din1(grp_fu_426_p1),.ce(1'b1),.dout(grp_fu_426_p2));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_472_p2 == 1'd0))) begin
            indvar_flatten_fu_128 <= add_ln97_1_fu_478_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_128 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_472_p2 == 1'd0))) begin
            v59_fu_124 <= select_ln97_1_fu_516_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v59_fu_124 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v60_fu_120 <= 7'd0;
    end else if (((icmp_ln97_reg_995 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v60_fu_120 <= add_ln98_fu_838_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1091 <= cmp7_fu_620_p2;
        cmp7_reg_1091_pp0_iter1_reg <= cmp7_reg_1091;
        v100_reg_1386 <= v100_fu_962_p3;
        v106_reg_1391 <= v106_fu_968_p3;
        v63_reg_1296 <= v63_fu_906_p3;
        v70_reg_1311 <= v70_fu_922_p3;
        v76_reg_1316 <= v76_fu_928_p3;
        v82_reg_1321 <= v82_fu_934_p3;
        v88_reg_1326 <= v88_fu_940_p3;
        v94_reg_1331 <= v94_fu_946_p3;
        zext_ln97_reg_1081[6 : 0] <= zext_ln97_fu_612_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln97_reg_995 <= icmp_ln97_fu_472_p2;
        icmp_ln97_reg_995_pp0_iter1_reg <= icmp_ln97_reg_995;
        icmp_ln97_reg_995_pp0_iter2_reg <= icmp_ln97_reg_995_pp0_iter1_reg;
        icmp_ln97_reg_995_pp0_iter3_reg <= icmp_ln97_reg_995_pp0_iter2_reg;
        lshr_ln1_reg_1025 <= {{select_ln97_fu_504_p3[5:3]}};
        lshr_ln_reg_1020 <= {{select_ln97_1_fu_516_p3[5:1]}};
        select_ln97_1_reg_1009 <= select_ln97_1_fu_516_p3;
        select_ln97_reg_999 <= select_ln97_fu_504_p3;
        tmp_1_reg_1043 <= {{select_ln97_fu_504_p3[5:1]}};
        tmp_3_reg_1053 <= {{select_ln97_fu_504_p3[5:2]}};
        tmp_6_reg_1075 <= select_ln97_fu_504_p3[32'd1];
        trunc_ln114_reg_1061 <= trunc_ln114_fu_586_p1;
        trunc_ln128_reg_1069 <= trunc_ln128_fu_590_p1;
        trunc_ln97_1_reg_1015 <= trunc_ln97_1_fu_524_p1;
        trunc_ln97_reg_1004 <= trunc_ln97_fu_512_p1;
        v104_reg_1286_pp0_iter2_reg <= v104_reg_1286;
        v58_0_addr_reg_1224 <= zext_ln98_1_fu_848_p1;
        v58_0_addr_reg_1224_pp0_iter2_reg <= v58_0_addr_reg_1224;
        v58_0_addr_reg_1224_pp0_iter3_reg <= v58_0_addr_reg_1224_pp0_iter2_reg;
        v58_1_addr_reg_1229 <= zext_ln98_1_fu_848_p1;
        v58_1_addr_reg_1229_pp0_iter2_reg <= v58_1_addr_reg_1229;
        v58_1_addr_reg_1229_pp0_iter3_reg <= v58_1_addr_reg_1229_pp0_iter2_reg;
        v58_2_addr_reg_1234 <= zext_ln98_1_fu_848_p1;
        v58_2_addr_reg_1234_pp0_iter2_reg <= v58_2_addr_reg_1234;
        v58_2_addr_reg_1234_pp0_iter3_reg <= v58_2_addr_reg_1234_pp0_iter2_reg;
        v58_3_addr_reg_1244 <= zext_ln98_1_fu_848_p1;
        v58_3_addr_reg_1244_pp0_iter2_reg <= v58_3_addr_reg_1244;
        v58_3_addr_reg_1244_pp0_iter3_reg <= v58_3_addr_reg_1244_pp0_iter2_reg;
        v58_4_addr_reg_1254 <= zext_ln98_1_fu_848_p1;
        v58_4_addr_reg_1254_pp0_iter2_reg <= v58_4_addr_reg_1254;
        v58_4_addr_reg_1254_pp0_iter3_reg <= v58_4_addr_reg_1254_pp0_iter2_reg;
        v58_5_addr_reg_1260 <= zext_ln98_1_fu_848_p1;
        v58_5_addr_reg_1260_pp0_iter2_reg <= v58_5_addr_reg_1260;
        v58_5_addr_reg_1260_pp0_iter3_reg <= v58_5_addr_reg_1260_pp0_iter2_reg;
        v58_6_addr_reg_1276 <= zext_ln98_1_fu_848_p1;
        v58_6_addr_reg_1276_pp0_iter2_reg <= v58_6_addr_reg_1276;
        v58_6_addr_reg_1276_pp0_iter3_reg <= v58_6_addr_reg_1276_pp0_iter2_reg;
        v58_6_addr_reg_1276_pp0_iter4_reg <= v58_6_addr_reg_1276_pp0_iter3_reg;
        v58_7_addr_reg_1291 <= zext_ln98_1_fu_848_p1;
        v58_7_addr_reg_1291_pp0_iter2_reg <= v58_7_addr_reg_1291;
        v58_7_addr_reg_1291_pp0_iter3_reg <= v58_7_addr_reg_1291_pp0_iter2_reg;
        v58_7_addr_reg_1291_pp0_iter4_reg <= v58_7_addr_reg_1291_pp0_iter3_reg;
        v98_reg_1271_pp0_iter2_reg <= v98_reg_1271;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_430 <= v114_q1;
        reg_434 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_438 <= grp_fu_127_p_dout0;
        reg_446 <= grp_fu_418_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1376 <= grp_fu_131_p_dout0;
        v108_reg_1381 <= grp_fu_426_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v104_reg_1286 <= v57_q0;
        v98_reg_1271 <= v57_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v61_reg_1118 <= v57_q1;
        v68_reg_1128 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_reg_1178 <= v65_fu_758_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_v_reg_1143 <= v65_v_fu_686_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1336 <= grp_fu_131_p_dout0;
        v72_reg_1341 <= grp_fu_426_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v74_reg_1153 <= v57_q1;
        v80_reg_1163 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1356 <= grp_fu_131_p_dout0;
        v84_reg_1361 <= grp_fu_426_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v86_reg_1199 <= v57_q1;
        v92_reg_1209 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1366 <= grp_fu_131_p_dout0;
        v96_reg_1371 <= grp_fu_426_p2;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_995 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln97_reg_995_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_128;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_124;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_load = v60_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_414_p0 = v100_reg_1386;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_414_p0 = v88_reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_414_p0 = v76_reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_414_p0 = v63_reg_1296;
    end else begin
        grp_fu_414_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_414_p1 = v102_reg_1376;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_414_p1 = v90_reg_1366;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_414_p1 = v78_reg_1356;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_414_p1 = v66_reg_1336;
    end else begin
        grp_fu_414_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_418_p0 = v106_reg_1391;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_418_p0 = v94_reg_1331;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_418_p0 = v82_reg_1321;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_418_p0 = v70_reg_1311;
    end else begin
        grp_fu_418_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_418_p1 = v108_reg_1381;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_418_p1 = v96_reg_1371;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_418_p1 = v84_reg_1361;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_418_p1 = v72_reg_1341;
    end else begin
        grp_fu_418_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_422_p0 = v101_fu_952_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_422_p0 = v89_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_422_p0 = v77_fu_859_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_422_p0 = v64_fu_763_p1;
    end else begin
        grp_fu_422_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_422_p1 = v65_reg_1178;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_422_p1 = v65_fu_758_p1;
    end else begin
        grp_fu_422_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_426_p0 = v107_fu_957_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_426_p0 = v95_fu_917_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_p0 = v83_fu_864_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_426_p0 = v71_fu_768_p1;
    end else begin
        grp_fu_426_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_426_p1 = v65_reg_1178;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_426_p1 = v65_fu_758_p1;
    end else begin
        grp_fu_426_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_901_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_808_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_656_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_884_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_788_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_708_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_638_p1;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v115_0_ce0_local = 1'b1;
    end else begin
        v115_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v115_1_ce0_local = 1'b1;
    end else begin
        v115_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_833_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_753_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_681_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_571_p1;
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
            v57_address1_local = zext_ln142_fu_821_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_738_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_669_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_538_p1;
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
        v58_0_address0_local = v58_0_addr_reg_1224_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln98_1_fu_848_p1;
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
        v58_1_address0_local = v58_1_addr_reg_1229_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln98_1_fu_848_p1;
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
        v58_2_address0_local = v58_2_addr_reg_1234_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln98_1_fu_848_p1;
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
        v58_3_address0_local = v58_3_addr_reg_1244_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln98_1_fu_848_p1;
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
        v58_6_address0_local = v58_6_addr_reg_1276_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_address0_local = v58_6_addr_reg_1276;
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
        v58_7_address0_local = v58_7_addr_reg_1291_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_address0_local = v58_7_addr_reg_1291;
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
assign add_ln102_fu_632_p2 = (tmp_fu_625_p3 + zext_ln97_fu_612_p1);
assign add_ln110_fu_650_p2 = (tmp_2_fu_643_p3 + zext_ln97_fu_612_p1);
assign add_ln117_fu_703_p2 = (tmp_5_fu_693_p5 + zext_ln97_reg_1081);
assign add_ln124_fu_720_p2 = (tmp_7_fu_713_p3 + zext_ln97_reg_1081);
assign add_ln131_fu_783_p2 = (tmp_s_fu_773_p5 + zext_ln97_reg_1081);
assign add_ln138_fu_803_p2 = (tmp_8_fu_793_p5 + zext_ln97_reg_1081);
assign add_ln145_fu_879_p2 = (tmp_9_fu_869_p5 + zext_ln97_reg_1081);
assign add_ln152_fu_896_p2 = (tmp_10_fu_889_p3 + zext_ln97_reg_1081);
assign add_ln97_1_fu_478_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_490_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_838_p2 = (select_ln97_reg_999 + 7'd8);
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
assign cmp7_fu_620_p2 = ((select_ln97_1_reg_1009 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_127_p_ce = 1'b1;
assign grp_fu_127_p_din0 = grp_fu_414_p0;
assign grp_fu_127_p_din1 = grp_fu_414_p1;
assign grp_fu_127_p_opcode = 2'd0;
assign grp_fu_131_p_ce = 1'b1;
assign grp_fu_131_p_din0 = grp_fu_422_p0;
assign grp_fu_131_p_din1 = grp_fu_422_p1;
assign icmp_ln97_fu_472_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign or_ln1_fu_661_p4 = {{{tmp_3_reg_1053}, {1'd1}}, {trunc_ln114_reg_1061}};
assign or_ln2_fu_674_p3 = {{tmp_3_reg_1053}, {2'd3}};
assign or_ln3_fu_730_p4 = {{{lshr_ln1_reg_1025}, {1'd1}}, {trunc_ln128_reg_1069}};
assign or_ln4_fu_743_p5 = {{{{lshr_ln1_reg_1025}, {1'd1}}, {tmp_6_reg_1075}}, {1'd1}};
assign or_ln5_fu_813_p4 = {{{lshr_ln1_reg_1025}, {2'd3}}, {trunc_ln114_reg_1061}};
assign or_ln6_fu_826_p3 = {{lshr_ln1_reg_1025}, {3'd7}};
assign or_ln_fu_563_p3 = {{tmp_1_fu_553_p4}, {1'd1}};
assign select_ln97_1_fu_516_p3 = ((tmp_4_fu_496_p3[0:0] == 1'b1) ? add_ln97_fu_490_p2 : ap_sig_allocacmp_v59_load);
assign select_ln97_fu_504_p3 = ((tmp_4_fu_496_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v60_load);
assign tmp_10_fu_889_p3 = {{lshr_ln1_reg_1025}, {9'd448}};
assign tmp_1_fu_553_p4 = {{select_ln97_fu_504_p3[5:1]}};
assign tmp_2_fu_643_p3 = {{tmp_1_reg_1043}, {7'd64}};
assign tmp_4_fu_496_p3 = ap_sig_allocacmp_v60_load[32'd6];
assign tmp_5_fu_693_p5 = {{{{tmp_3_reg_1053}, {1'd1}}, {trunc_ln114_reg_1061}}, {6'd0}};
assign tmp_7_fu_713_p3 = {{tmp_3_reg_1053}, {8'd192}};
assign tmp_8_fu_793_p5 = {{{{lshr_ln1_reg_1025}, {1'd1}}, {tmp_6_reg_1075}}, {7'd64}};
assign tmp_9_fu_869_p5 = {{{{lshr_ln1_reg_1025}, {2'd3}}, {trunc_ln114_reg_1061}}, {6'd0}};
assign tmp_fu_625_p3 = {{trunc_ln97_reg_1004}, {6'd0}};
assign tmp_s_fu_773_p5 = {{{{lshr_ln1_reg_1025}, {1'd1}}, {trunc_ln128_reg_1069}}, {6'd0}};
assign trunc_ln114_fu_586_p1 = select_ln97_fu_504_p3[0:0];
assign trunc_ln128_fu_590_p1 = select_ln97_fu_504_p3[1:0];
assign trunc_ln97_1_fu_524_p1 = select_ln97_1_fu_516_p3[0:0];
assign trunc_ln97_fu_512_p1 = select_ln97_fu_504_p3[5:0];
assign v100_fu_962_p3 = ((cmp7_reg_1091_pp0_iter1_reg[0:0] == 1'b1) ? v98_reg_1271_pp0_iter2_reg : v58_6_q0);
assign v101_fu_952_p1 = reg_430;
assign v106_fu_968_p3 = ((cmp7_reg_1091_pp0_iter1_reg[0:0] == 1'b1) ? v104_reg_1286_pp0_iter2_reg : v58_7_q0);
assign v107_fu_957_p1 = reg_434;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_0_address0 = zext_ln97_1_fu_615_p1;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = zext_ln97_1_fu_615_p1;
assign v115_1_ce0 = v115_1_ce0_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_d0 = reg_438;
assign v58_0_we0 = v58_0_we0_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_d0 = reg_446;
assign v58_1_we0 = v58_1_we0_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_d0 = reg_438;
assign v58_2_we0 = v58_2_we0_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_d0 = reg_446;
assign v58_3_we0 = v58_3_we0_local;
assign v58_4_address0 = v58_4_addr_reg_1254_pp0_iter3_reg;
assign v58_4_address1 = zext_ln98_1_fu_848_p1;
assign v58_4_ce0 = v58_4_ce0_local;
assign v58_4_ce1 = v58_4_ce1_local;
assign v58_4_d0 = reg_438;
assign v58_4_we0 = v58_4_we0_local;
assign v58_5_address0 = v58_5_addr_reg_1260_pp0_iter3_reg;
assign v58_5_address1 = zext_ln98_1_fu_848_p1;
assign v58_5_ce0 = v58_5_ce0_local;
assign v58_5_ce1 = v58_5_ce1_local;
assign v58_5_d0 = reg_446;
assign v58_5_we0 = v58_5_we0_local;
assign v58_6_address0 = v58_6_address0_local;
assign v58_6_ce0 = v58_6_ce0_local;
assign v58_6_d0 = reg_438;
assign v58_6_we0 = v58_6_we0_local;
assign v58_7_address0 = v58_7_address0_local;
assign v58_7_ce0 = v58_7_ce0_local;
assign v58_7_d0 = reg_446;
assign v58_7_we0 = v58_7_we0_local;
assign v63_fu_906_p3 = ((cmp7_reg_1091[0:0] == 1'b1) ? v61_reg_1118 : v58_0_q0);
assign v64_fu_763_p1 = reg_430;
assign v65_fu_758_p1 = v65_v_reg_1143;
assign v65_v_fu_686_p3 = ((trunc_ln97_1_reg_1015[0:0] == 1'b1) ? v115_1_q0 : v115_0_q0);
assign v70_fu_922_p3 = ((cmp7_reg_1091[0:0] == 1'b1) ? v68_reg_1128 : v58_1_q0);
assign v71_fu_768_p1 = reg_434;
assign v76_fu_928_p3 = ((cmp7_reg_1091[0:0] == 1'b1) ? v74_reg_1153 : v58_2_q0);
assign v77_fu_859_p1 = reg_430;
assign v82_fu_934_p3 = ((cmp7_reg_1091[0:0] == 1'b1) ? v80_reg_1163 : v58_3_q0);
assign v83_fu_864_p1 = reg_434;
assign v88_fu_940_p3 = ((cmp7_reg_1091[0:0] == 1'b1) ? v86_reg_1199 : v58_4_q1);
assign v89_fu_912_p1 = reg_430;
assign v94_fu_946_p3 = ((cmp7_reg_1091[0:0] == 1'b1) ? v92_reg_1209 : v58_5_q1);
assign v95_fu_917_p1 = reg_434;
assign zext_ln102_fu_638_p1 = add_ln102_fu_632_p2;
assign zext_ln107_fu_571_p1 = or_ln_fu_563_p3;
assign zext_ln110_fu_656_p1 = add_ln110_fu_650_p2;
assign zext_ln114_fu_669_p1 = or_ln1_fu_661_p4;
assign zext_ln117_fu_708_p1 = add_ln117_fu_703_p2;
assign zext_ln121_fu_681_p1 = or_ln2_fu_674_p3;
assign zext_ln124_fu_725_p1 = add_ln124_fu_720_p2;
assign zext_ln128_fu_738_p1 = or_ln3_fu_730_p4;
assign zext_ln131_fu_788_p1 = add_ln131_fu_783_p2;
assign zext_ln135_fu_753_p1 = or_ln4_fu_743_p5;
assign zext_ln138_fu_808_p1 = add_ln138_fu_803_p2;
assign zext_ln142_fu_821_p1 = or_ln5_fu_813_p4;
assign zext_ln145_fu_884_p1 = add_ln145_fu_879_p2;
assign zext_ln149_fu_833_p1 = or_ln6_fu_826_p3;
assign zext_ln152_fu_901_p1 = add_ln152_fu_896_p2;
assign zext_ln97_1_fu_615_p1 = lshr_ln_reg_1020;
assign zext_ln97_fu_612_p1 = select_ln97_1_reg_1009;
assign zext_ln98_1_fu_848_p1 = lshr_ln1_reg_1025;
assign zext_ln98_fu_538_p1 = select_ln97_fu_504_p3;
always @ (posedge ap_clk) begin
    zext_ln97_reg_1081[11:7] <= 5'b00000;
end
endmodule 