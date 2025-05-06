
module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v115_2_address0,v115_2_ce0,v115_2_q0,v115_3_address0,v115_3_ce0,v115_3_q0,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_4_address0,v58_4_ce0,v58_4_we0,v58_4_d0,v58_4_address1,v58_4_ce1,v58_4_q1,v58_5_address0,v58_5_ce0,v58_5_we0,v58_5_d0,v58_5_address1,v58_5_ce1,v58_5_q1,v58_6_address0,v58_6_ce0,v58_6_we0,v58_6_d0,v58_6_q0,v58_7_address0,v58_7_ce0,v58_7_we0,v58_7_d0,v58_7_q0,grp_fu_123_p_din0,grp_fu_123_p_din1,grp_fu_123_p_opcode,grp_fu_123_p_dout0,grp_fu_123_p_ce,grp_fu_127_p_din0,grp_fu_127_p_din1,grp_fu_127_p_dout0,grp_fu_127_p_ce);  
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
output  [3:0] v115_0_address0;
output   v115_0_ce0;
input  [31:0] v115_0_q0;
output  [3:0] v115_1_address0;
output   v115_1_ce0;
input  [31:0] v115_1_q0;
output  [3:0] v115_2_address0;
output   v115_2_ce0;
input  [31:0] v115_2_q0;
output  [3:0] v115_3_address0;
output   v115_3_ce0;
input  [31:0] v115_3_q0;
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
output  [31:0] grp_fu_123_p_din0;
output  [31:0] grp_fu_123_p_din1;
output  [1:0] grp_fu_123_p_opcode;
input  [31:0] grp_fu_123_p_dout0;
output   grp_fu_123_p_ce;
output  [31:0] grp_fu_127_p_din0;
output  [31:0] grp_fu_127_p_din1;
input  [31:0] grp_fu_127_p_dout0;
output   grp_fu_127_p_ce;
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
reg   [0:0] icmp_ln97_reg_1065;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_470;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_474;
reg   [31:0] reg_478;
wire   [31:0] grp_fu_458_p2;
reg   [31:0] reg_486;
wire   [0:0] icmp_ln97_fu_512_p2;
reg   [0:0] icmp_ln97_reg_1065_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_1065_pp0_iter2_reg;
reg   [0:0] icmp_ln97_reg_1065_pp0_iter3_reg;
wire   [6:0] select_ln97_fu_544_p3;
reg   [6:0] select_ln97_reg_1069;
wire   [5:0] trunc_ln97_fu_552_p1;
reg   [5:0] trunc_ln97_reg_1074;
wire   [6:0] select_ln97_1_fu_556_p3;
reg   [6:0] select_ln97_1_reg_1079;
wire   [1:0] trunc_ln97_1_fu_564_p1;
reg   [1:0] trunc_ln97_1_reg_1085;
reg   [2:0] lshr_ln1_reg_1110;
wire   [4:0] tmp_1_fu_601_p4;
reg   [4:0] tmp_1_reg_1128;
reg   [3:0] tmp_3_reg_1138;
wire   [0:0] trunc_ln114_fu_634_p1;
reg   [0:0] trunc_ln114_reg_1146;
wire   [1:0] trunc_ln128_fu_638_p1;
reg   [1:0] trunc_ln128_reg_1154;
reg   [0:0] tmp_6_reg_1160;
wire   [11:0] zext_ln97_fu_660_p1;
reg   [11:0] zext_ln97_reg_1166;
wire   [0:0] cmp7_fu_663_p2;
reg   [0:0] cmp7_reg_1176;
reg   [0:0] cmp7_reg_1176_pp0_iter1_reg;
wire   [31:0] v65_fu_684_p11;
reg   [31:0] v65_reg_1188;
reg   [31:0] v65_reg_1188_pp0_iter1_reg;
reg   [31:0] v61_reg_1199;
reg   [31:0] v68_reg_1209;
reg   [31:0] v74_reg_1229;
reg   [31:0] v80_reg_1239;
wire   [31:0] v64_fu_833_p1;
wire   [31:0] v71_fu_838_p1;
reg   [31:0] v86_reg_1269;
reg   [31:0] v92_reg_1279;
reg   [2:0] v58_0_addr_reg_1294;
reg   [2:0] v58_0_addr_reg_1294_pp0_iter2_reg;
reg   [2:0] v58_0_addr_reg_1294_pp0_iter3_reg;
reg   [2:0] v58_1_addr_reg_1299;
reg   [2:0] v58_1_addr_reg_1299_pp0_iter2_reg;
reg   [2:0] v58_1_addr_reg_1299_pp0_iter3_reg;
reg   [2:0] v58_2_addr_reg_1304;
reg   [2:0] v58_2_addr_reg_1304_pp0_iter2_reg;
reg   [2:0] v58_2_addr_reg_1304_pp0_iter3_reg;
wire   [31:0] v77_fu_929_p1;
reg   [2:0] v58_3_addr_reg_1314;
reg   [2:0] v58_3_addr_reg_1314_pp0_iter2_reg;
reg   [2:0] v58_3_addr_reg_1314_pp0_iter3_reg;
wire   [31:0] v83_fu_934_p1;
reg   [2:0] v58_4_addr_reg_1324;
reg   [2:0] v58_4_addr_reg_1324_pp0_iter2_reg;
reg   [2:0] v58_4_addr_reg_1324_pp0_iter3_reg;
reg   [2:0] v58_5_addr_reg_1330;
reg   [2:0] v58_5_addr_reg_1330_pp0_iter2_reg;
reg   [2:0] v58_5_addr_reg_1330_pp0_iter3_reg;
reg   [31:0] v98_reg_1341;
reg   [31:0] v98_reg_1341_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1346;
reg   [2:0] v58_6_addr_reg_1346_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1346_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1346_pp0_iter4_reg;
reg   [31:0] v104_reg_1356;
reg   [31:0] v104_reg_1356_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1361;
reg   [2:0] v58_7_addr_reg_1361_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1361_pp0_iter3_reg;
reg   [2:0] v58_7_addr_reg_1361_pp0_iter4_reg;
wire   [31:0] v63_fu_976_p3;
reg   [31:0] v63_reg_1366;
wire   [31:0] v89_fu_982_p1;
wire   [31:0] v95_fu_987_p1;
wire   [31:0] v70_fu_992_p3;
reg   [31:0] v70_reg_1381;
wire   [31:0] v76_fu_998_p3;
reg   [31:0] v76_reg_1386;
wire   [31:0] v82_fu_1004_p3;
reg   [31:0] v82_reg_1391;
wire   [31:0] v88_fu_1010_p3;
reg   [31:0] v88_reg_1396;
wire   [31:0] v94_fu_1016_p3;
reg   [31:0] v94_reg_1401;
reg   [31:0] v66_reg_1406;
wire   [31:0] grp_fu_466_p2;
reg   [31:0] v72_reg_1411;
wire   [31:0] v101_fu_1022_p1;
wire   [31:0] v107_fu_1027_p1;
reg   [31:0] v78_reg_1426;
reg   [31:0] v84_reg_1431;
reg   [31:0] v90_reg_1436;
reg   [31:0] v96_reg_1441;
reg   [31:0] v102_reg_1446;
reg   [31:0] v108_reg_1451;
wire   [31:0] v100_fu_1032_p3;
reg   [31:0] v100_reg_1456;
wire   [31:0] v106_fu_1038_p3;
reg   [31:0] v106_reg_1461;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln97_1_fu_578_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln98_fu_586_p1;
wire   [63:0] zext_ln107_fu_619_p1;
wire   [63:0] zext_ln102_fu_720_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln110_fu_738_p1;
wire   [63:0] zext_ln114_fu_751_p1;
wire   [63:0] zext_ln121_fu_763_p1;
wire   [63:0] zext_ln117_fu_783_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_800_p1;
wire   [63:0] zext_ln128_fu_813_p1;
wire   [63:0] zext_ln135_fu_828_p1;
wire   [63:0] zext_ln131_fu_858_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_878_p1;
wire   [63:0] zext_ln142_fu_891_p1;
wire   [63:0] zext_ln149_fu_903_p1;
wire   [63:0] zext_ln98_1_fu_918_p1;
wire   [63:0] zext_ln145_fu_954_p1;
wire   [63:0] zext_ln152_fu_971_p1;
reg   [6:0] v60_fu_134;
wire   [6:0] add_ln98_fu_908_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_load;
reg   [6:0] v59_fu_138;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_142;
wire   [9:0] add_ln97_1_fu_518_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v115_0_ce0_local;
reg    v115_1_ce0_local;
reg    v115_2_ce0_local;
reg    v115_3_ce0_local;
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
reg   [31:0] grp_fu_454_p0;
reg   [31:0] grp_fu_454_p1;
reg   [31:0] grp_fu_458_p0;
reg   [31:0] grp_fu_458_p1;
reg   [31:0] grp_fu_462_p0;
reg   [31:0] grp_fu_462_p1;
reg   [31:0] grp_fu_466_p0;
reg   [31:0] grp_fu_466_p1;
wire   [0:0] tmp_4_fu_536_p3;
wire   [6:0] add_ln97_fu_530_p2;
wire   [3:0] lshr_ln_fu_568_p4;
wire   [5:0] or_ln_fu_611_p3;
wire   [31:0] v65_fu_684_p2;
wire   [31:0] v65_fu_684_p4;
wire   [31:0] v65_fu_684_p6;
wire   [31:0] v65_fu_684_p8;
wire   [31:0] v65_fu_684_p9;
wire   [11:0] tmp_fu_707_p3;
wire   [11:0] add_ln102_fu_714_p2;
wire   [11:0] tmp_2_fu_725_p3;
wire   [11:0] add_ln110_fu_732_p2;
wire   [5:0] or_ln1_fu_743_p4;
wire   [5:0] or_ln2_fu_756_p3;
wire   [11:0] tmp_5_fu_768_p5;
wire   [11:0] add_ln117_fu_778_p2;
wire   [11:0] tmp_7_fu_788_p3;
wire   [11:0] add_ln124_fu_795_p2;
wire   [5:0] or_ln3_fu_805_p4;
wire   [5:0] or_ln4_fu_818_p5;
wire   [11:0] tmp_s_fu_843_p5;
wire   [11:0] add_ln131_fu_853_p2;
wire   [11:0] tmp_8_fu_863_p5;
wire   [11:0] add_ln138_fu_873_p2;
wire   [5:0] or_ln5_fu_883_p4;
wire   [5:0] or_ln6_fu_896_p3;
wire   [11:0] tmp_9_fu_939_p5;
wire   [11:0] add_ln145_fu_949_p2;
wire   [11:0] tmp_10_fu_959_p3;
wire   [11:0] add_ln152_fu_966_p2;
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
wire   [1:0] v65_fu_684_p1;
wire   [1:0] v65_fu_684_p3;
wire  signed [1:0] v65_fu_684_p5;
wire  signed [1:0] v65_fu_684_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v60_fu_134 = 7'd0;
#0 v59_fu_138 = 7'd0;
#0 indvar_flatten_fu_142 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_458_p0),.din1(grp_fu_458_p1),.ce(1'b1),.dout(grp_fu_458_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_466_p0),.din1(grp_fu_466_p1),.ce(1'b1),.dout(grp_fu_466_p2));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U7(.din0(v65_fu_684_p2),.din1(v65_fu_684_p4),.din2(v65_fu_684_p6),.din3(v65_fu_684_p8),.def(v65_fu_684_p9),.sel(trunc_ln97_1_reg_1085),.dout(v65_fu_684_p11));
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
        if (((icmp_ln97_fu_512_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_142 <= add_ln97_1_fu_518_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_142 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln97_fu_512_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v59_fu_138 <= select_ln97_1_fu_556_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v59_fu_138 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v60_fu_134 <= 7'd0;
    end else if (((icmp_ln97_reg_1065 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v60_fu_134 <= add_ln98_fu_908_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1176 <= cmp7_fu_663_p2;
        cmp7_reg_1176_pp0_iter1_reg <= cmp7_reg_1176;
        v100_reg_1456 <= v100_fu_1032_p3;
        v106_reg_1461 <= v106_fu_1038_p3;
        v63_reg_1366 <= v63_fu_976_p3;
        v65_reg_1188 <= v65_fu_684_p11;
        v65_reg_1188_pp0_iter1_reg <= v65_reg_1188;
        v70_reg_1381 <= v70_fu_992_p3;
        v76_reg_1386 <= v76_fu_998_p3;
        v82_reg_1391 <= v82_fu_1004_p3;
        v88_reg_1396 <= v88_fu_1010_p3;
        v94_reg_1401 <= v94_fu_1016_p3;
        zext_ln97_reg_1166[6 : 0] <= zext_ln97_fu_660_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln97_reg_1065 <= icmp_ln97_fu_512_p2;
        icmp_ln97_reg_1065_pp0_iter1_reg <= icmp_ln97_reg_1065;
        icmp_ln97_reg_1065_pp0_iter2_reg <= icmp_ln97_reg_1065_pp0_iter1_reg;
        icmp_ln97_reg_1065_pp0_iter3_reg <= icmp_ln97_reg_1065_pp0_iter2_reg;
        lshr_ln1_reg_1110 <= {{select_ln97_fu_544_p3[5:3]}};
        select_ln97_1_reg_1079 <= select_ln97_1_fu_556_p3;
        select_ln97_reg_1069 <= select_ln97_fu_544_p3;
        tmp_1_reg_1128 <= {{select_ln97_fu_544_p3[5:1]}};
        tmp_3_reg_1138 <= {{select_ln97_fu_544_p3[5:2]}};
        tmp_6_reg_1160 <= select_ln97_fu_544_p3[32'd1];
        trunc_ln114_reg_1146 <= trunc_ln114_fu_634_p1;
        trunc_ln128_reg_1154 <= trunc_ln128_fu_638_p1;
        trunc_ln97_1_reg_1085 <= trunc_ln97_1_fu_564_p1;
        trunc_ln97_reg_1074 <= trunc_ln97_fu_552_p1;
        v104_reg_1356_pp0_iter2_reg <= v104_reg_1356;
        v58_0_addr_reg_1294 <= zext_ln98_1_fu_918_p1;
        v58_0_addr_reg_1294_pp0_iter2_reg <= v58_0_addr_reg_1294;
        v58_0_addr_reg_1294_pp0_iter3_reg <= v58_0_addr_reg_1294_pp0_iter2_reg;
        v58_1_addr_reg_1299 <= zext_ln98_1_fu_918_p1;
        v58_1_addr_reg_1299_pp0_iter2_reg <= v58_1_addr_reg_1299;
        v58_1_addr_reg_1299_pp0_iter3_reg <= v58_1_addr_reg_1299_pp0_iter2_reg;
        v58_2_addr_reg_1304 <= zext_ln98_1_fu_918_p1;
        v58_2_addr_reg_1304_pp0_iter2_reg <= v58_2_addr_reg_1304;
        v58_2_addr_reg_1304_pp0_iter3_reg <= v58_2_addr_reg_1304_pp0_iter2_reg;
        v58_3_addr_reg_1314 <= zext_ln98_1_fu_918_p1;
        v58_3_addr_reg_1314_pp0_iter2_reg <= v58_3_addr_reg_1314;
        v58_3_addr_reg_1314_pp0_iter3_reg <= v58_3_addr_reg_1314_pp0_iter2_reg;
        v58_4_addr_reg_1324 <= zext_ln98_1_fu_918_p1;
        v58_4_addr_reg_1324_pp0_iter2_reg <= v58_4_addr_reg_1324;
        v58_4_addr_reg_1324_pp0_iter3_reg <= v58_4_addr_reg_1324_pp0_iter2_reg;
        v58_5_addr_reg_1330 <= zext_ln98_1_fu_918_p1;
        v58_5_addr_reg_1330_pp0_iter2_reg <= v58_5_addr_reg_1330;
        v58_5_addr_reg_1330_pp0_iter3_reg <= v58_5_addr_reg_1330_pp0_iter2_reg;
        v58_6_addr_reg_1346 <= zext_ln98_1_fu_918_p1;
        v58_6_addr_reg_1346_pp0_iter2_reg <= v58_6_addr_reg_1346;
        v58_6_addr_reg_1346_pp0_iter3_reg <= v58_6_addr_reg_1346_pp0_iter2_reg;
        v58_6_addr_reg_1346_pp0_iter4_reg <= v58_6_addr_reg_1346_pp0_iter3_reg;
        v58_7_addr_reg_1361 <= zext_ln98_1_fu_918_p1;
        v58_7_addr_reg_1361_pp0_iter2_reg <= v58_7_addr_reg_1361;
        v58_7_addr_reg_1361_pp0_iter3_reg <= v58_7_addr_reg_1361_pp0_iter2_reg;
        v58_7_addr_reg_1361_pp0_iter4_reg <= v58_7_addr_reg_1361_pp0_iter3_reg;
        v98_reg_1341_pp0_iter2_reg <= v98_reg_1341;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_470 <= v114_q1;
        reg_474 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_478 <= grp_fu_123_p_dout0;
        reg_486 <= grp_fu_458_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1446 <= grp_fu_127_p_dout0;
        v108_reg_1451 <= grp_fu_466_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v104_reg_1356 <= v57_q0;
        v98_reg_1341 <= v57_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v61_reg_1199 <= v57_q1;
        v68_reg_1209 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1406 <= grp_fu_127_p_dout0;
        v72_reg_1411 <= grp_fu_466_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v74_reg_1229 <= v57_q1;
        v80_reg_1239 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1426 <= grp_fu_127_p_dout0;
        v84_reg_1431 <= grp_fu_466_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v86_reg_1269 <= v57_q1;
        v92_reg_1279 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1436 <= grp_fu_127_p_dout0;
        v96_reg_1441 <= grp_fu_466_p2;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_1065 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln97_reg_1065_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_142;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_138;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_load = v60_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_454_p0 = v100_reg_1456;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_454_p0 = v88_reg_1396;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_454_p0 = v76_reg_1386;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_454_p0 = v63_reg_1366;
    end else begin
        grp_fu_454_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_454_p1 = v102_reg_1446;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_454_p1 = v90_reg_1436;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_454_p1 = v78_reg_1426;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_454_p1 = v66_reg_1406;
    end else begin
        grp_fu_454_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_458_p0 = v106_reg_1461;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_458_p0 = v94_reg_1401;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_458_p0 = v82_reg_1391;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_458_p0 = v70_reg_1381;
    end else begin
        grp_fu_458_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_458_p1 = v108_reg_1451;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_458_p1 = v96_reg_1441;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_458_p1 = v84_reg_1431;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_458_p1 = v72_reg_1411;
    end else begin
        grp_fu_458_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_462_p0 = v101_fu_1022_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_462_p0 = v89_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_462_p0 = v77_fu_929_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_462_p0 = v64_fu_833_p1;
    end else begin
        grp_fu_462_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_462_p1 = v65_reg_1188_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_462_p1 = v65_reg_1188;
    end else begin
        grp_fu_462_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_466_p0 = v107_fu_1027_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_466_p0 = v95_fu_987_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_466_p0 = v83_fu_934_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_466_p0 = v71_fu_838_p1;
    end else begin
        grp_fu_466_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_466_p1 = v65_reg_1188_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_466_p1 = v65_reg_1188;
    end else begin
        grp_fu_466_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_971_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_878_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_800_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_738_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_954_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_783_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_720_p1;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_828_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_763_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_619_p1;
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
            v57_address1_local = zext_ln142_fu_891_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_813_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_751_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_586_p1;
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
        v58_0_address0_local = v58_0_addr_reg_1294_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln98_1_fu_918_p1;
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
        v58_1_address0_local = v58_1_addr_reg_1299_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln98_1_fu_918_p1;
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
        v58_2_address0_local = v58_2_addr_reg_1304_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln98_1_fu_918_p1;
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
        v58_3_address0_local = v58_3_addr_reg_1314_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln98_1_fu_918_p1;
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
        v58_6_address0_local = v58_6_addr_reg_1346_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_address0_local = v58_6_addr_reg_1346;
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
        v58_7_address0_local = v58_7_addr_reg_1361_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_address0_local = v58_7_addr_reg_1361;
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
assign add_ln102_fu_714_p2 = (tmp_fu_707_p3 + zext_ln97_fu_660_p1);
assign add_ln110_fu_732_p2 = (tmp_2_fu_725_p3 + zext_ln97_fu_660_p1);
assign add_ln117_fu_778_p2 = (tmp_5_fu_768_p5 + zext_ln97_reg_1166);
assign add_ln124_fu_795_p2 = (tmp_7_fu_788_p3 + zext_ln97_reg_1166);
assign add_ln131_fu_853_p2 = (tmp_s_fu_843_p5 + zext_ln97_reg_1166);
assign add_ln138_fu_873_p2 = (tmp_8_fu_863_p5 + zext_ln97_reg_1166);
assign add_ln145_fu_949_p2 = (tmp_9_fu_939_p5 + zext_ln97_reg_1166);
assign add_ln152_fu_966_p2 = (tmp_10_fu_959_p3 + zext_ln97_reg_1166);
assign add_ln97_1_fu_518_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_530_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_908_p2 = (select_ln97_reg_1069 + 7'd8);
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
assign cmp7_fu_663_p2 = ((select_ln97_1_reg_1079 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_123_p_ce = 1'b1;
assign grp_fu_123_p_din0 = grp_fu_454_p0;
assign grp_fu_123_p_din1 = grp_fu_454_p1;
assign grp_fu_123_p_opcode = 2'd0;
assign grp_fu_127_p_ce = 1'b1;
assign grp_fu_127_p_din0 = grp_fu_462_p0;
assign grp_fu_127_p_din1 = grp_fu_462_p1;
assign icmp_ln97_fu_512_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln_fu_568_p4 = {{select_ln97_1_fu_556_p3[5:2]}};
assign or_ln1_fu_743_p4 = {{{tmp_3_reg_1138}, {1'd1}}, {trunc_ln114_reg_1146}};
assign or_ln2_fu_756_p3 = {{tmp_3_reg_1138}, {2'd3}};
assign or_ln3_fu_805_p4 = {{{lshr_ln1_reg_1110}, {1'd1}}, {trunc_ln128_reg_1154}};
assign or_ln4_fu_818_p5 = {{{{lshr_ln1_reg_1110}, {1'd1}}, {tmp_6_reg_1160}}, {1'd1}};
assign or_ln5_fu_883_p4 = {{{lshr_ln1_reg_1110}, {2'd3}}, {trunc_ln114_reg_1146}};
assign or_ln6_fu_896_p3 = {{lshr_ln1_reg_1110}, {3'd7}};
assign or_ln_fu_611_p3 = {{tmp_1_fu_601_p4}, {1'd1}};
assign select_ln97_1_fu_556_p3 = ((tmp_4_fu_536_p3[0:0] == 1'b1) ? add_ln97_fu_530_p2 : ap_sig_allocacmp_v59_load);
assign select_ln97_fu_544_p3 = ((tmp_4_fu_536_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v60_load);
assign tmp_10_fu_959_p3 = {{lshr_ln1_reg_1110}, {9'd448}};
assign tmp_1_fu_601_p4 = {{select_ln97_fu_544_p3[5:1]}};
assign tmp_2_fu_725_p3 = {{tmp_1_reg_1128}, {7'd64}};
assign tmp_4_fu_536_p3 = ap_sig_allocacmp_v60_load[32'd6];
assign tmp_5_fu_768_p5 = {{{{tmp_3_reg_1138}, {1'd1}}, {trunc_ln114_reg_1146}}, {6'd0}};
assign tmp_7_fu_788_p3 = {{tmp_3_reg_1138}, {8'd192}};
assign tmp_8_fu_863_p5 = {{{{lshr_ln1_reg_1110}, {1'd1}}, {tmp_6_reg_1160}}, {7'd64}};
assign tmp_9_fu_939_p5 = {{{{lshr_ln1_reg_1110}, {2'd3}}, {trunc_ln114_reg_1146}}, {6'd0}};
assign tmp_fu_707_p3 = {{trunc_ln97_reg_1074}, {6'd0}};
assign tmp_s_fu_843_p5 = {{{{lshr_ln1_reg_1110}, {1'd1}}, {trunc_ln128_reg_1154}}, {6'd0}};
assign trunc_ln114_fu_634_p1 = select_ln97_fu_544_p3[0:0];
assign trunc_ln128_fu_638_p1 = select_ln97_fu_544_p3[1:0];
assign trunc_ln97_1_fu_564_p1 = select_ln97_1_fu_556_p3[1:0];
assign trunc_ln97_fu_552_p1 = select_ln97_fu_544_p3[5:0];
assign v100_fu_1032_p3 = ((cmp7_reg_1176_pp0_iter1_reg[0:0] == 1'b1) ? v98_reg_1341_pp0_iter2_reg : v58_6_q0);
assign v101_fu_1022_p1 = reg_470;
assign v106_fu_1038_p3 = ((cmp7_reg_1176_pp0_iter1_reg[0:0] == 1'b1) ? v104_reg_1356_pp0_iter2_reg : v58_7_q0);
assign v107_fu_1027_p1 = reg_474;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_0_address0 = zext_ln97_1_fu_578_p1;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = zext_ln97_1_fu_578_p1;
assign v115_1_ce0 = v115_1_ce0_local;
assign v115_2_address0 = zext_ln97_1_fu_578_p1;
assign v115_2_ce0 = v115_2_ce0_local;
assign v115_3_address0 = zext_ln97_1_fu_578_p1;
assign v115_3_ce0 = v115_3_ce0_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_d0 = reg_478;
assign v58_0_we0 = v58_0_we0_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_d0 = reg_486;
assign v58_1_we0 = v58_1_we0_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_d0 = reg_478;
assign v58_2_we0 = v58_2_we0_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_d0 = reg_486;
assign v58_3_we0 = v58_3_we0_local;
assign v58_4_address0 = v58_4_addr_reg_1324_pp0_iter3_reg;
assign v58_4_address1 = zext_ln98_1_fu_918_p1;
assign v58_4_ce0 = v58_4_ce0_local;
assign v58_4_ce1 = v58_4_ce1_local;
assign v58_4_d0 = reg_478;
assign v58_4_we0 = v58_4_we0_local;
assign v58_5_address0 = v58_5_addr_reg_1330_pp0_iter3_reg;
assign v58_5_address1 = zext_ln98_1_fu_918_p1;
assign v58_5_ce0 = v58_5_ce0_local;
assign v58_5_ce1 = v58_5_ce1_local;
assign v58_5_d0 = reg_486;
assign v58_5_we0 = v58_5_we0_local;
assign v58_6_address0 = v58_6_address0_local;
assign v58_6_ce0 = v58_6_ce0_local;
assign v58_6_d0 = reg_478;
assign v58_6_we0 = v58_6_we0_local;
assign v58_7_address0 = v58_7_address0_local;
assign v58_7_ce0 = v58_7_ce0_local;
assign v58_7_d0 = reg_486;
assign v58_7_we0 = v58_7_we0_local;
assign v63_fu_976_p3 = ((cmp7_reg_1176[0:0] == 1'b1) ? v61_reg_1199 : v58_0_q0);
assign v64_fu_833_p1 = reg_470;
assign v65_fu_684_p2 = v115_0_q0;
assign v65_fu_684_p4 = v115_1_q0;
assign v65_fu_684_p6 = v115_2_q0;
assign v65_fu_684_p8 = v115_3_q0;
assign v65_fu_684_p9 = 'bx;
assign v70_fu_992_p3 = ((cmp7_reg_1176[0:0] == 1'b1) ? v68_reg_1209 : v58_1_q0);
assign v71_fu_838_p1 = reg_474;
assign v76_fu_998_p3 = ((cmp7_reg_1176[0:0] == 1'b1) ? v74_reg_1229 : v58_2_q0);
assign v77_fu_929_p1 = reg_470;
assign v82_fu_1004_p3 = ((cmp7_reg_1176[0:0] == 1'b1) ? v80_reg_1239 : v58_3_q0);
assign v83_fu_934_p1 = reg_474;
assign v88_fu_1010_p3 = ((cmp7_reg_1176[0:0] == 1'b1) ? v86_reg_1269 : v58_4_q1);
assign v89_fu_982_p1 = reg_470;
assign v94_fu_1016_p3 = ((cmp7_reg_1176[0:0] == 1'b1) ? v92_reg_1279 : v58_5_q1);
assign v95_fu_987_p1 = reg_474;
assign zext_ln102_fu_720_p1 = add_ln102_fu_714_p2;
assign zext_ln107_fu_619_p1 = or_ln_fu_611_p3;
assign zext_ln110_fu_738_p1 = add_ln110_fu_732_p2;
assign zext_ln114_fu_751_p1 = or_ln1_fu_743_p4;
assign zext_ln117_fu_783_p1 = add_ln117_fu_778_p2;
assign zext_ln121_fu_763_p1 = or_ln2_fu_756_p3;
assign zext_ln124_fu_800_p1 = add_ln124_fu_795_p2;
assign zext_ln128_fu_813_p1 = or_ln3_fu_805_p4;
assign zext_ln131_fu_858_p1 = add_ln131_fu_853_p2;
assign zext_ln135_fu_828_p1 = or_ln4_fu_818_p5;
assign zext_ln138_fu_878_p1 = add_ln138_fu_873_p2;
assign zext_ln142_fu_891_p1 = or_ln5_fu_883_p4;
assign zext_ln145_fu_954_p1 = add_ln145_fu_949_p2;
assign zext_ln149_fu_903_p1 = or_ln6_fu_896_p3;
assign zext_ln152_fu_971_p1 = add_ln152_fu_966_p2;
assign zext_ln97_1_fu_578_p1 = lshr_ln_fu_568_p4;
assign zext_ln97_fu_660_p1 = select_ln97_1_reg_1079;
assign zext_ln98_1_fu_918_p1 = lshr_ln1_reg_1110;
assign zext_ln98_fu_586_p1 = select_ln97_fu_544_p3;
always @ (posedge ap_clk) begin
    zext_ln97_reg_1166[11:7] <= 5'b00000;
end
endmodule 
