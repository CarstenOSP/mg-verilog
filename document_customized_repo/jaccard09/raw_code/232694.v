module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v115_2_address0,v115_2_ce0,v115_2_q0,v115_3_address0,v115_3_ce0,v115_3_q0,v57_0_address0,v57_0_ce0,v57_0_q0,v57_0_address1,v57_0_ce1,v57_0_q1,v57_1_address0,v57_1_ce0,v57_1_q0,v57_1_address1,v57_1_ce1,v57_1_q1,v57_2_address0,v57_2_ce0,v57_2_q0,v57_2_address1,v57_2_ce1,v57_2_q1,v57_3_address0,v57_3_ce0,v57_3_q0,v57_3_address1,v57_3_ce1,v57_3_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,grp_fu_108_p_din0,grp_fu_108_p_din1,grp_fu_108_p_opcode,grp_fu_108_p_dout0,grp_fu_108_p_ce,grp_fu_112_p_din0,grp_fu_112_p_din1,grp_fu_112_p_dout0,grp_fu_112_p_ce); 
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
output  [3:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
output  [3:0] v57_0_address1;
output   v57_0_ce1;
input  [31:0] v57_0_q1;
output  [3:0] v57_1_address0;
output   v57_1_ce0;
input  [31:0] v57_1_q0;
output  [3:0] v57_1_address1;
output   v57_1_ce1;
input  [31:0] v57_1_q1;
output  [3:0] v57_2_address0;
output   v57_2_ce0;
input  [31:0] v57_2_q0;
output  [3:0] v57_2_address1;
output   v57_2_ce1;
input  [31:0] v57_2_q1;
output  [3:0] v57_3_address0;
output   v57_3_ce0;
input  [31:0] v57_3_q0;
output  [3:0] v57_3_address1;
output   v57_3_ce1;
input  [31:0] v57_3_q1;
output  [4:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [4:0] v58_0_address1;
output   v58_0_ce1;
output   v58_0_we1;
output  [31:0] v58_0_d1;
input  [31:0] v58_0_q1;
output  [4:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [4:0] v58_1_address1;
output   v58_1_ce1;
output   v58_1_we1;
output  [31:0] v58_1_d1;
input  [31:0] v58_1_q1;
output  [31:0] grp_fu_108_p_din0;
output  [31:0] grp_fu_108_p_din1;
output  [1:0] grp_fu_108_p_opcode;
input  [31:0] grp_fu_108_p_dout0;
output   grp_fu_108_p_ce;
output  [31:0] grp_fu_112_p_din0;
output  [31:0] grp_fu_112_p_din1;
input  [31:0] grp_fu_112_p_dout0;
output   grp_fu_112_p_ce;
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
reg   [0:0] icmp_ln97_reg_1006;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_455;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_459;
reg   [31:0] reg_463;
wire   [31:0] grp_fu_443_p2;
reg   [31:0] reg_468;
wire   [0:0] icmp_ln97_fu_491_p2;
reg   [6:0] v60_load_reg_1010;
wire   [0:0] tmp_1_fu_515_p3;
reg   [0:0] tmp_1_reg_1015;
wire   [6:0] select_ln97_1_fu_523_p3;
reg   [6:0] select_ln97_1_reg_1020;
wire   [1:0] trunc_ln97_1_fu_531_p1;
reg   [1:0] trunc_ln97_1_reg_1026;
wire   [6:0] select_ln97_fu_563_p3;
reg   [6:0] select_ln97_reg_1051;
wire   [11:0] zext_ln97_fu_573_p1;
reg   [11:0] zext_ln97_reg_1056;
wire   [0:0] cmp7_fu_576_p2;
reg   [0:0] cmp7_reg_1066;
reg   [0:0] cmp7_reg_1066_pp0_iter1_reg;
wire   [31:0] v65_fu_597_p11;
reg   [31:0] v65_reg_1078;
reg   [31:0] v65_reg_1078_pp0_iter1_reg;
wire   [4:0] lshr_ln1_fu_639_p4;
reg   [4:0] lshr_ln1_reg_1089;
reg   [3:0] lshr_ln98_1_reg_1094;
wire   [0:0] trunc_ln114_fu_678_p1;
reg   [0:0] trunc_ln114_reg_1107;
reg   [2:0] tmp_9_reg_1113;
wire   [1:0] trunc_ln128_fu_692_p1;
reg   [1:0] trunc_ln128_reg_1124;
reg   [0:0] tmp_3_reg_1129;
wire   [31:0] v64_fu_741_p1;
wire   [31:0] v71_fu_746_p1;
reg   [4:0] v58_0_addr_reg_1170;
reg   [4:0] v58_0_addr_reg_1170_pp0_iter2_reg;
reg   [4:0] v58_0_addr_reg_1170_pp0_iter3_reg;
reg   [4:0] v58_1_addr_reg_1180;
reg   [4:0] v58_1_addr_reg_1180_pp0_iter2_reg;
reg   [4:0] v58_1_addr_reg_1180_pp0_iter3_reg;
reg   [4:0] v58_0_addr_1_reg_1190;
reg   [4:0] v58_0_addr_1_reg_1190_pp0_iter2_reg;
reg   [4:0] v58_0_addr_1_reg_1190_pp0_iter3_reg;
wire   [31:0] v77_fu_826_p1;
reg   [4:0] v58_1_addr_1_reg_1206;
reg   [4:0] v58_1_addr_1_reg_1206_pp0_iter2_reg;
reg   [4:0] v58_1_addr_1_reg_1206_pp0_iter3_reg;
wire   [31:0] v83_fu_831_p1;
wire   [63:0] zext_ln128_1_fu_843_p1;
reg   [63:0] zext_ln128_1_reg_1217;
wire   [31:0] v63_fu_886_p3;
reg   [31:0] v63_reg_1243;
reg   [31:0] v86_reg_1248;
reg   [4:0] v58_0_addr_2_reg_1253;
reg   [4:0] v58_0_addr_2_reg_1253_pp0_iter2_reg;
reg   [4:0] v58_0_addr_2_reg_1253_pp0_iter3_reg;
reg   [4:0] v58_0_addr_2_reg_1253_pp0_iter4_reg;
wire   [31:0] v89_fu_907_p1;
reg   [31:0] v92_reg_1264;
reg   [4:0] v58_1_addr_2_reg_1269;
reg   [4:0] v58_1_addr_2_reg_1269_pp0_iter2_reg;
reg   [4:0] v58_1_addr_2_reg_1269_pp0_iter3_reg;
reg   [4:0] v58_1_addr_2_reg_1269_pp0_iter4_reg;
wire   [31:0] v95_fu_912_p1;
reg   [4:0] v58_0_addr_3_reg_1280;
reg   [4:0] v58_0_addr_3_reg_1280_pp0_iter2_reg;
reg   [4:0] v58_0_addr_3_reg_1280_pp0_iter3_reg;
reg   [4:0] v58_0_addr_3_reg_1280_pp0_iter4_reg;
reg   [4:0] v58_1_addr_3_reg_1285;
reg   [4:0] v58_1_addr_3_reg_1285_pp0_iter2_reg;
reg   [4:0] v58_1_addr_3_reg_1285_pp0_iter3_reg;
reg   [4:0] v58_1_addr_3_reg_1285_pp0_iter4_reg;
wire   [31:0] v70_fu_930_p3;
reg   [31:0] v70_reg_1290;
wire   [31:0] v76_fu_937_p3;
reg   [31:0] v76_reg_1295;
wire   [31:0] v82_fu_944_p3;
reg   [31:0] v82_reg_1300;
reg   [31:0] v66_reg_1305;
wire   [31:0] grp_fu_451_p2;
reg   [31:0] v72_reg_1310;
wire   [31:0] v101_fu_951_p1;
wire   [31:0] v107_fu_956_p1;
wire   [31:0] v88_fu_961_p3;
reg   [31:0] v88_reg_1325;
wire   [31:0] v94_fu_967_p3;
reg   [31:0] v94_reg_1330;
reg   [31:0] v99_reg_1335;
reg   [31:0] v105_reg_1340;
reg   [31:0] v78_reg_1345;
reg   [31:0] v84_reg_1350;
reg   [31:0] v90_reg_1355;
reg   [31:0] v96_reg_1360;
reg   [31:0] v102_reg_1375;
reg   [31:0] v108_reg_1380;
wire   [31:0] v100_fu_973_p3;
reg   [31:0] v100_reg_1385;
wire   [31:0] v106_fu_979_p3;
reg   [31:0] v106_reg_1390;
reg   [31:0] v91_reg_1395;
reg   [31:0] v97_reg_1400;
reg   [31:0] v103_reg_1405;
reg   [31:0] v109_reg_1410;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln97_1_fu_545_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln102_fu_634_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln110_fu_673_p1;
wire   [63:0] zext_ln117_fu_719_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_736_p1;
wire   [63:0] zext_ln131_fu_766_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_786_p1;
wire   [63:0] zext_ln98_1_fu_806_p1;
wire   [63:0] zext_ln98_fu_801_p1;
wire   [63:0] zext_ln114_fu_820_p1;
wire   [63:0] zext_ln145_fu_864_p1;
wire   [63:0] zext_ln152_fu_881_p1;
wire   [63:0] zext_ln128_fu_901_p1;
wire   [63:0] zext_ln142_fu_924_p1;
reg   [6:0] v60_fu_120;
wire   [6:0] add_ln98_fu_791_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_load;
reg   [6:0] v59_fu_124;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_128;
wire   [9:0] add_ln97_1_fu_497_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v115_0_ce0_local;
reg    v115_1_ce0_local;
reg    v115_2_ce0_local;
reg    v115_3_ce0_local;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v57_0_ce1_local;
reg    v57_0_ce0_local;
reg    v58_0_ce1_local;
reg   [4:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [4:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg   [31:0] v58_0_d0_local;
reg    v57_1_ce1_local;
reg    v57_1_ce0_local;
reg    v57_2_ce1_local;
reg    v57_2_ce0_local;
reg    v57_3_ce1_local;
reg    v57_3_ce0_local;
reg    v58_1_ce1_local;
reg   [4:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [4:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
reg   [31:0] v58_1_d0_local;
reg   [31:0] grp_fu_439_p0;
reg   [31:0] grp_fu_439_p1;
reg   [31:0] grp_fu_443_p0;
reg   [31:0] grp_fu_443_p1;
reg   [31:0] grp_fu_447_p0;
reg   [31:0] grp_fu_447_p1;
reg   [31:0] grp_fu_451_p0;
reg   [31:0] grp_fu_451_p1;
wire   [6:0] add_ln97_fu_509_p2;
wire   [3:0] lshr_ln_fu_535_p4;
wire   [31:0] v65_fu_597_p2;
wire   [31:0] v65_fu_597_p4;
wire   [31:0] v65_fu_597_p6;
wire   [31:0] v65_fu_597_p8;
wire   [31:0] v65_fu_597_p9;
wire   [5:0] trunc_ln97_fu_569_p1;
wire   [11:0] tmp_fu_620_p3;
wire   [11:0] add_ln102_fu_628_p2;
wire   [11:0] tmp_2_fu_659_p3;
wire   [11:0] add_ln110_fu_667_p2;
wire   [11:0] tmp_5_fu_704_p5;
wire   [11:0] add_ln117_fu_714_p2;
wire   [11:0] tmp_8_fu_724_p3;
wire   [11:0] add_ln124_fu_731_p2;
wire   [11:0] tmp_s_fu_751_p5;
wire   [11:0] add_ln131_fu_761_p2;
wire   [11:0] tmp_4_fu_771_p5;
wire   [11:0] add_ln138_fu_781_p2;
wire   [4:0] or_ln114_1_fu_813_p3;
wire   [3:0] or_ln128_2_fu_836_p3;
wire   [11:0] tmp_6_fu_849_p5;
wire   [11:0] add_ln145_fu_859_p2;
wire   [11:0] tmp_7_fu_869_p3;
wire   [11:0] add_ln152_fu_876_p2;
wire   [4:0] or_ln128_1_fu_893_p4;
wire   [4:0] or_ln142_1_fu_917_p3;
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
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire   [1:0] v65_fu_597_p1;
wire   [1:0] v65_fu_597_p3;
wire  signed [1:0] v65_fu_597_p5;
wire  signed [1:0] v65_fu_597_p7;
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
fadd_32ns_32ns_32_7_full_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_443_p0),.din1(grp_fu_443_p1),.ce(1'b1),.dout(grp_fu_443_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_451_p0),.din1(grp_fu_451_p1),.ce(1'b1),.dout(grp_fu_451_p2));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U10(.din0(v65_fu_597_p2),.din1(v65_fu_597_p4),.din2(v65_fu_597_p6),.din3(v65_fu_597_p8),.def(v65_fu_597_p9),.sel(trunc_ln97_1_reg_1026),.dout(v65_fu_597_p11));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_491_p2 == 1'd0))) begin
            indvar_flatten_fu_128 <= add_ln97_1_fu_497_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_128 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_491_p2 == 1'd0))) begin
            v59_fu_124 <= select_ln97_1_fu_523_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v59_fu_124 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v60_fu_120 <= 7'd0;
    end else if (((icmp_ln97_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v60_fu_120 <= add_ln98_fu_791_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1066 <= cmp7_fu_576_p2;
        cmp7_reg_1066_pp0_iter1_reg <= cmp7_reg_1066;
        lshr_ln1_reg_1089 <= {{select_ln97_fu_563_p3[5:1]}};
        lshr_ln98_1_reg_1094 <= {{select_ln97_fu_563_p3[5:2]}};
        select_ln97_reg_1051 <= select_ln97_fu_563_p3;
        tmp_3_reg_1129 <= select_ln97_fu_563_p3[32'd1];
        tmp_9_reg_1113 <= {{select_ln97_fu_563_p3[5:3]}};
        trunc_ln114_reg_1107 <= trunc_ln114_fu_678_p1;
        trunc_ln128_reg_1124 <= trunc_ln128_fu_692_p1;
        v100_reg_1385 <= v100_fu_973_p3;
        v106_reg_1390 <= v106_fu_979_p3;
        v58_0_addr_2_reg_1253[0] <= zext_ln128_fu_901_p1[0];
v58_0_addr_2_reg_1253[4 : 2] <= zext_ln128_fu_901_p1[4 : 2];
        v58_0_addr_2_reg_1253_pp0_iter2_reg[0] <= v58_0_addr_2_reg_1253[0];
v58_0_addr_2_reg_1253_pp0_iter2_reg[4 : 2] <= v58_0_addr_2_reg_1253[4 : 2];
        v58_0_addr_2_reg_1253_pp0_iter3_reg[0] <= v58_0_addr_2_reg_1253_pp0_iter2_reg[0];
v58_0_addr_2_reg_1253_pp0_iter3_reg[4 : 2] <= v58_0_addr_2_reg_1253_pp0_iter2_reg[4 : 2];
        v58_0_addr_2_reg_1253_pp0_iter4_reg[0] <= v58_0_addr_2_reg_1253_pp0_iter3_reg[0];
v58_0_addr_2_reg_1253_pp0_iter4_reg[4 : 2] <= v58_0_addr_2_reg_1253_pp0_iter3_reg[4 : 2];
        v58_0_addr_3_reg_1280[4 : 2] <= zext_ln142_fu_924_p1[4 : 2];
        v58_0_addr_3_reg_1280_pp0_iter2_reg[4 : 2] <= v58_0_addr_3_reg_1280[4 : 2];
        v58_0_addr_3_reg_1280_pp0_iter3_reg[4 : 2] <= v58_0_addr_3_reg_1280_pp0_iter2_reg[4 : 2];
        v58_0_addr_3_reg_1280_pp0_iter4_reg[4 : 2] <= v58_0_addr_3_reg_1280_pp0_iter3_reg[4 : 2];
        v58_1_addr_2_reg_1269[0] <= zext_ln128_fu_901_p1[0];
v58_1_addr_2_reg_1269[4 : 2] <= zext_ln128_fu_901_p1[4 : 2];
        v58_1_addr_2_reg_1269_pp0_iter2_reg[0] <= v58_1_addr_2_reg_1269[0];
v58_1_addr_2_reg_1269_pp0_iter2_reg[4 : 2] <= v58_1_addr_2_reg_1269[4 : 2];
        v58_1_addr_2_reg_1269_pp0_iter3_reg[0] <= v58_1_addr_2_reg_1269_pp0_iter2_reg[0];
v58_1_addr_2_reg_1269_pp0_iter3_reg[4 : 2] <= v58_1_addr_2_reg_1269_pp0_iter2_reg[4 : 2];
        v58_1_addr_2_reg_1269_pp0_iter4_reg[0] <= v58_1_addr_2_reg_1269_pp0_iter3_reg[0];
v58_1_addr_2_reg_1269_pp0_iter4_reg[4 : 2] <= v58_1_addr_2_reg_1269_pp0_iter3_reg[4 : 2];
        v58_1_addr_3_reg_1285[4 : 2] <= zext_ln142_fu_924_p1[4 : 2];
        v58_1_addr_3_reg_1285_pp0_iter2_reg[4 : 2] <= v58_1_addr_3_reg_1285[4 : 2];
        v58_1_addr_3_reg_1285_pp0_iter3_reg[4 : 2] <= v58_1_addr_3_reg_1285_pp0_iter2_reg[4 : 2];
        v58_1_addr_3_reg_1285_pp0_iter4_reg[4 : 2] <= v58_1_addr_3_reg_1285_pp0_iter3_reg[4 : 2];
        v63_reg_1243 <= v63_fu_886_p3;
        v65_reg_1078 <= v65_fu_597_p11;
        v65_reg_1078_pp0_iter1_reg <= v65_reg_1078;
        v70_reg_1290 <= v70_fu_930_p3;
        v76_reg_1295 <= v76_fu_937_p3;
        v82_reg_1300 <= v82_fu_944_p3;
        zext_ln97_reg_1056[6 : 0] <= zext_ln97_fu_573_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln97_reg_1006 <= icmp_ln97_fu_491_p2;
        select_ln97_1_reg_1020 <= select_ln97_1_fu_523_p3;
        tmp_1_reg_1015 <= ap_sig_allocacmp_v60_load[32'd6];
        trunc_ln97_1_reg_1026 <= trunc_ln97_1_fu_531_p1;
        v58_0_addr_1_reg_1190[4 : 1] <= zext_ln114_fu_820_p1[4 : 1];
        v58_0_addr_1_reg_1190_pp0_iter2_reg[4 : 1] <= v58_0_addr_1_reg_1190[4 : 1];
        v58_0_addr_1_reg_1190_pp0_iter3_reg[4 : 1] <= v58_0_addr_1_reg_1190_pp0_iter2_reg[4 : 1];
        v58_0_addr_reg_1170 <= zext_ln98_fu_801_p1;
        v58_0_addr_reg_1170_pp0_iter2_reg <= v58_0_addr_reg_1170;
        v58_0_addr_reg_1170_pp0_iter3_reg <= v58_0_addr_reg_1170_pp0_iter2_reg;
        v58_1_addr_1_reg_1206[4 : 1] <= zext_ln114_fu_820_p1[4 : 1];
        v58_1_addr_1_reg_1206_pp0_iter2_reg[4 : 1] <= v58_1_addr_1_reg_1206[4 : 1];
        v58_1_addr_1_reg_1206_pp0_iter3_reg[4 : 1] <= v58_1_addr_1_reg_1206_pp0_iter2_reg[4 : 1];
        v58_1_addr_reg_1180 <= zext_ln98_fu_801_p1;
        v58_1_addr_reg_1180_pp0_iter2_reg <= v58_1_addr_reg_1180;
        v58_1_addr_reg_1180_pp0_iter3_reg <= v58_1_addr_reg_1180_pp0_iter2_reg;
        v60_load_reg_1010 <= ap_sig_allocacmp_v60_load;
        zext_ln128_1_reg_1217[3 : 1] <= zext_ln128_1_fu_843_p1[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_455 <= v114_q1;
        reg_459 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_463 <= grp_fu_108_p_dout0;
        reg_468 <= grp_fu_443_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1375 <= grp_fu_112_p_dout0;
        v108_reg_1380 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v103_reg_1405 <= grp_fu_108_p_dout0;
        v109_reg_1410 <= grp_fu_443_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v105_reg_1340 <= v58_1_q0;
        v66_reg_1305 <= grp_fu_112_p_dout0;
        v72_reg_1310 <= grp_fu_451_p2;
        v99_reg_1335 <= v58_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1345 <= grp_fu_112_p_dout0;
        v84_reg_1350 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v86_reg_1248 <= v57_0_q0;
        v92_reg_1264 <= v57_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v88_reg_1325 <= v88_fu_961_p3;
        v94_reg_1330 <= v94_fu_967_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1355 <= grp_fu_112_p_dout0;
        v96_reg_1360 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v91_reg_1395 <= grp_fu_108_p_dout0;
        v97_reg_1400 <= grp_fu_443_p2;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_1006 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_load = v60_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_439_p0 = v100_reg_1385;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_439_p0 = v88_reg_1325;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_439_p0 = v76_reg_1295;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_439_p0 = v63_reg_1243;
    end else begin
        grp_fu_439_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_439_p1 = v102_reg_1375;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_439_p1 = v90_reg_1355;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_439_p1 = v78_reg_1345;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_439_p1 = v66_reg_1305;
    end else begin
        grp_fu_439_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_443_p0 = v106_reg_1390;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_443_p0 = v94_reg_1330;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_443_p0 = v82_reg_1300;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_443_p0 = v70_reg_1290;
    end else begin
        grp_fu_443_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_443_p1 = v108_reg_1380;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_443_p1 = v96_reg_1360;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_443_p1 = v84_reg_1350;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_443_p1 = v72_reg_1310;
    end else begin
        grp_fu_443_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_447_p0 = v101_fu_951_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_447_p0 = v89_fu_907_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_447_p0 = v77_fu_826_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_447_p0 = v64_fu_741_p1;
    end else begin
        grp_fu_447_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_447_p1 = v65_reg_1078_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_447_p1 = v65_reg_1078;
    end else begin
        grp_fu_447_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_451_p0 = v107_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_451_p0 = v95_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_451_p0 = v83_fu_831_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_451_p0 = v71_fu_746_p1;
    end else begin
        grp_fu_451_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_451_p1 = v65_reg_1078_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_451_p1 = v65_reg_1078;
    end else begin
        grp_fu_451_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_881_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_786_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_736_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_673_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_864_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_766_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_719_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_634_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_0_ce0_local = 1'b1;
    end else begin
        v57_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_0_ce1_local = 1'b1;
    end else begin
        v57_0_ce1_local = 1'b0;
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
        v57_1_ce1_local = 1'b1;
    end else begin
        v57_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_2_ce0_local = 1'b1;
    end else begin
        v57_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_2_ce1_local = 1'b1;
    end else begin
        v57_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_3_ce0_local = 1'b1;
    end else begin
        v57_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_3_ce1_local = 1'b1;
    end else begin
        v57_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address0_local = v58_0_addr_3_reg_1280_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_2_reg_1253_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = zext_ln142_fu_924_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln114_fu_820_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_1_reg_1190_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_1170_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address1_local = zext_ln128_fu_901_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_fu_801_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v58_0_d0_local = v103_reg_1405;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v58_0_d0_local = v91_reg_1395;
        end else begin
            v58_0_d0_local = 'bx;
        end
    end else begin
        v58_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_we1_local = 1'b1;
    end else begin
        v58_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address0_local = v58_1_addr_3_reg_1285_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_2_reg_1269_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = zext_ln142_fu_924_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln114_fu_820_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_1_reg_1206_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_1180_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address1_local = zext_ln128_fu_901_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_fu_801_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v58_1_d0_local = v109_reg_1410;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v58_1_d0_local = v97_reg_1400;
        end else begin
            v58_1_d0_local = 'bx;
        end
    end else begin
        v58_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_we1_local = 1'b1;
    end else begin
        v58_1_we1_local = 1'b0;
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
assign add_ln102_fu_628_p2 = (tmp_fu_620_p3 + zext_ln97_fu_573_p1);
assign add_ln110_fu_667_p2 = (tmp_2_fu_659_p3 + zext_ln97_fu_573_p1);
assign add_ln117_fu_714_p2 = (tmp_5_fu_704_p5 + zext_ln97_reg_1056);
assign add_ln124_fu_731_p2 = (tmp_8_fu_724_p3 + zext_ln97_reg_1056);
assign add_ln131_fu_761_p2 = (tmp_s_fu_751_p5 + zext_ln97_reg_1056);
assign add_ln138_fu_781_p2 = (tmp_4_fu_771_p5 + zext_ln97_reg_1056);
assign add_ln145_fu_859_p2 = (tmp_6_fu_849_p5 + zext_ln97_reg_1056);
assign add_ln152_fu_876_p2 = (tmp_7_fu_869_p3 + zext_ln97_reg_1056);
assign add_ln97_1_fu_497_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_509_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_791_p2 = (select_ln97_reg_1051 + 7'd8);
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
assign cmp7_fu_576_p2 = ((select_ln97_1_reg_1020 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_108_p_ce = 1'b1;
assign grp_fu_108_p_din0 = grp_fu_439_p0;
assign grp_fu_108_p_din1 = grp_fu_439_p1;
assign grp_fu_108_p_opcode = 2'd0;
assign grp_fu_112_p_ce = 1'b1;
assign grp_fu_112_p_din0 = grp_fu_447_p0;
assign grp_fu_112_p_din1 = grp_fu_447_p1;
assign icmp_ln97_fu_491_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_639_p4 = {{select_ln97_fu_563_p3[5:1]}};
assign lshr_ln_fu_535_p4 = {{select_ln97_1_fu_523_p3[5:2]}};
assign or_ln114_1_fu_813_p3 = {{lshr_ln98_1_reg_1094}, {1'd1}};
assign or_ln128_1_fu_893_p4 = {{{tmp_9_reg_1113}, {1'd1}}, {tmp_3_reg_1129}};
assign or_ln128_2_fu_836_p3 = {{tmp_9_reg_1113}, {1'd1}};
assign or_ln142_1_fu_917_p3 = {{tmp_9_reg_1113}, {2'd3}};
assign select_ln97_1_fu_523_p3 = ((tmp_1_fu_515_p3[0:0] == 1'b1) ? add_ln97_fu_509_p2 : ap_sig_allocacmp_v59_load);
assign select_ln97_fu_563_p3 = ((tmp_1_reg_1015[0:0] == 1'b1) ? 7'd0 : v60_load_reg_1010);
assign tmp_1_fu_515_p3 = ap_sig_allocacmp_v60_load[32'd6];
assign tmp_2_fu_659_p3 = {{lshr_ln1_fu_639_p4}, {7'd64}};
assign tmp_4_fu_771_p5 = {{{{tmp_9_reg_1113}, {1'd1}}, {tmp_3_reg_1129}}, {7'd64}};
assign tmp_5_fu_704_p5 = {{{{lshr_ln98_1_reg_1094}, {1'd1}}, {trunc_ln114_reg_1107}}, {6'd0}};
assign tmp_6_fu_849_p5 = {{{{tmp_9_reg_1113}, {2'd3}}, {trunc_ln114_reg_1107}}, {6'd0}};
assign tmp_7_fu_869_p3 = {{tmp_9_reg_1113}, {9'd448}};
assign tmp_8_fu_724_p3 = {{lshr_ln98_1_reg_1094}, {8'd192}};
assign tmp_fu_620_p3 = {{trunc_ln97_fu_569_p1}, {6'd0}};
assign tmp_s_fu_751_p5 = {{{{tmp_9_reg_1113}, {1'd1}}, {trunc_ln128_reg_1124}}, {6'd0}};
assign trunc_ln114_fu_678_p1 = select_ln97_fu_563_p3[0:0];
assign trunc_ln128_fu_692_p1 = select_ln97_fu_563_p3[1:0];
assign trunc_ln97_1_fu_531_p1 = select_ln97_1_fu_523_p3[1:0];
assign trunc_ln97_fu_569_p1 = select_ln97_fu_563_p3[5:0];
assign v100_fu_973_p3 = ((cmp7_reg_1066_pp0_iter1_reg[0:0] == 1'b1) ? v57_2_q0 : v99_reg_1335);
assign v101_fu_951_p1 = reg_455;
assign v106_fu_979_p3 = ((cmp7_reg_1066_pp0_iter1_reg[0:0] == 1'b1) ? v57_3_q0 : v105_reg_1340);
assign v107_fu_956_p1 = reg_459;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_0_address0 = zext_ln97_1_fu_545_p1;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = zext_ln97_1_fu_545_p1;
assign v115_1_ce0 = v115_1_ce0_local;
assign v115_2_address0 = zext_ln97_1_fu_545_p1;
assign v115_2_ce0 = v115_2_ce0_local;
assign v115_3_address0 = zext_ln97_1_fu_545_p1;
assign v115_3_ce0 = v115_3_ce0_local;
assign v57_0_address0 = zext_ln128_1_fu_843_p1;
assign v57_0_address1 = zext_ln98_1_fu_806_p1;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_0_ce1 = v57_0_ce1_local;
assign v57_1_address0 = zext_ln128_1_fu_843_p1;
assign v57_1_address1 = zext_ln98_1_fu_806_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_1_ce1 = v57_1_ce1_local;
assign v57_2_address0 = zext_ln128_1_reg_1217;
assign v57_2_address1 = zext_ln98_1_fu_806_p1;
assign v57_2_ce0 = v57_2_ce0_local;
assign v57_2_ce1 = v57_2_ce1_local;
assign v57_3_address0 = zext_ln128_1_reg_1217;
assign v57_3_address1 = zext_ln98_1_fu_806_p1;
assign v57_3_ce0 = v57_3_ce0_local;
assign v57_3_ce1 = v57_3_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = v58_0_d0_local;
assign v58_0_d1 = reg_463;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = v58_1_d0_local;
assign v58_1_d1 = reg_468;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v63_fu_886_p3 = ((cmp7_reg_1066[0:0] == 1'b1) ? v57_0_q1 : v58_0_q1);
assign v64_fu_741_p1 = reg_455;
assign v65_fu_597_p2 = v115_0_q0;
assign v65_fu_597_p4 = v115_1_q0;
assign v65_fu_597_p6 = v115_2_q0;
assign v65_fu_597_p8 = v115_3_q0;
assign v65_fu_597_p9 = 'bx;
assign v70_fu_930_p3 = ((cmp7_reg_1066[0:0] == 1'b1) ? v57_1_q1 : v58_1_q1);
assign v71_fu_746_p1 = reg_459;
assign v76_fu_937_p3 = ((cmp7_reg_1066[0:0] == 1'b1) ? v57_2_q1 : v58_0_q0);
assign v77_fu_826_p1 = reg_455;
assign v82_fu_944_p3 = ((cmp7_reg_1066[0:0] == 1'b1) ? v57_3_q1 : v58_1_q0);
assign v83_fu_831_p1 = reg_459;
assign v88_fu_961_p3 = ((cmp7_reg_1066_pp0_iter1_reg[0:0] == 1'b1) ? v86_reg_1248 : v58_0_q1);
assign v89_fu_907_p1 = reg_455;
assign v94_fu_967_p3 = ((cmp7_reg_1066_pp0_iter1_reg[0:0] == 1'b1) ? v92_reg_1264 : v58_1_q1);
assign v95_fu_912_p1 = reg_459;
assign zext_ln102_fu_634_p1 = add_ln102_fu_628_p2;
assign zext_ln110_fu_673_p1 = add_ln110_fu_667_p2;
assign zext_ln114_fu_820_p1 = or_ln114_1_fu_813_p3;
assign zext_ln117_fu_719_p1 = add_ln117_fu_714_p2;
assign zext_ln124_fu_736_p1 = add_ln124_fu_731_p2;
assign zext_ln128_1_fu_843_p1 = or_ln128_2_fu_836_p3;
assign zext_ln128_fu_901_p1 = or_ln128_1_fu_893_p4;
assign zext_ln131_fu_766_p1 = add_ln131_fu_761_p2;
assign zext_ln138_fu_786_p1 = add_ln138_fu_781_p2;
assign zext_ln142_fu_924_p1 = or_ln142_1_fu_917_p3;
assign zext_ln145_fu_864_p1 = add_ln145_fu_859_p2;
assign zext_ln152_fu_881_p1 = add_ln152_fu_876_p2;
assign zext_ln97_1_fu_545_p1 = lshr_ln_fu_535_p4;
assign zext_ln97_fu_573_p1 = select_ln97_1_reg_1020;
assign zext_ln98_1_fu_806_p1 = lshr_ln98_1_reg_1094;
assign zext_ln98_fu_801_p1 = lshr_ln1_reg_1089;
always @ (posedge ap_clk) begin
    zext_ln97_reg_1056[11:7] <= 5'b00000;
    v58_0_addr_1_reg_1190[0] <= 1'b1;
    v58_0_addr_1_reg_1190_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_1190_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1206[0] <= 1'b1;
    v58_1_addr_1_reg_1206_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1206_pp0_iter3_reg[0] <= 1'b1;
    zext_ln128_1_reg_1217[0] <= 1'b1;
    zext_ln128_1_reg_1217[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    v58_0_addr_2_reg_1253[1] <= 1'b1;
    v58_0_addr_2_reg_1253_pp0_iter2_reg[1] <= 1'b1;
    v58_0_addr_2_reg_1253_pp0_iter3_reg[1] <= 1'b1;
    v58_0_addr_2_reg_1253_pp0_iter4_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1269[1] <= 1'b1;
    v58_1_addr_2_reg_1269_pp0_iter2_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1269_pp0_iter3_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1269_pp0_iter4_reg[1] <= 1'b1;
    v58_0_addr_3_reg_1280[1:0] <= 2'b11;
    v58_0_addr_3_reg_1280_pp0_iter2_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1280_pp0_iter3_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1280_pp0_iter4_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1285[1:0] <= 2'b11;
    v58_1_addr_3_reg_1285_pp0_iter2_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1285_pp0_iter3_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1285_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 