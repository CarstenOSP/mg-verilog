module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v57_0_address0,v57_0_ce0,v57_0_q0,v57_0_address1,v57_0_ce1,v57_0_q1,v57_1_address0,v57_1_ce0,v57_1_q0,v57_1_address1,v57_1_ce1,v57_1_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,grp_fu_313_p_din0,grp_fu_313_p_din1,grp_fu_313_p_opcode,grp_fu_313_p_dout0,grp_fu_313_p_ce,grp_fu_317_p_din0,grp_fu_317_p_din1,grp_fu_317_p_opcode,grp_fu_317_p_dout0,grp_fu_317_p_ce,grp_fu_321_p_din0,grp_fu_321_p_din1,grp_fu_321_p_dout0,grp_fu_321_p_ce,grp_fu_325_p_din0,grp_fu_325_p_din1,grp_fu_325_p_dout0,grp_fu_325_p_ce); 
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
output  [4:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
output  [4:0] v57_0_address1;
output   v57_0_ce1;
input  [31:0] v57_0_q1;
output  [4:0] v57_1_address0;
output   v57_1_ce0;
input  [31:0] v57_1_q0;
output  [4:0] v57_1_address1;
output   v57_1_ce1;
input  [31:0] v57_1_q1;
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
output  [31:0] grp_fu_313_p_din0;
output  [31:0] grp_fu_313_p_din1;
output  [1:0] grp_fu_313_p_opcode;
input  [31:0] grp_fu_313_p_dout0;
output   grp_fu_313_p_ce;
output  [31:0] grp_fu_317_p_din0;
output  [31:0] grp_fu_317_p_din1;
output  [1:0] grp_fu_317_p_opcode;
input  [31:0] grp_fu_317_p_dout0;
output   grp_fu_317_p_ce;
output  [31:0] grp_fu_321_p_din0;
output  [31:0] grp_fu_321_p_din1;
input  [31:0] grp_fu_321_p_dout0;
output   grp_fu_321_p_ce;
output  [31:0] grp_fu_325_p_din0;
output  [31:0] grp_fu_325_p_din1;
input  [31:0] grp_fu_325_p_dout0;
output   grp_fu_325_p_ce;
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
reg   [0:0] icmp_ln97_reg_890;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_383;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_387;
reg   [31:0] reg_391;
reg   [31:0] reg_396;
wire   [0:0] icmp_ln97_fu_419_p2;
wire   [6:0] select_ln97_fu_451_p3;
reg   [6:0] select_ln97_reg_894;
wire   [5:0] trunc_ln97_fu_459_p1;
reg   [5:0] trunc_ln97_reg_899;
wire   [6:0] select_ln97_1_fu_463_p3;
reg   [6:0] select_ln97_1_reg_904;
wire   [0:0] trunc_ln97_1_fu_471_p1;
reg   [0:0] trunc_ln97_1_reg_910;
reg   [4:0] lshr_ln_reg_915;
wire   [4:0] lshr_ln1_fu_485_p4;
reg   [4:0] lshr_ln1_reg_920;
reg   [4:0] v58_0_addr_reg_930;
reg   [4:0] v58_0_addr_reg_930_pp0_iter1_reg;
reg   [4:0] v58_0_addr_reg_930_pp0_iter2_reg;
reg   [4:0] v58_0_addr_reg_930_pp0_iter3_reg;
reg   [4:0] v58_1_addr_reg_940;
reg   [4:0] v58_1_addr_reg_940_pp0_iter1_reg;
reg   [4:0] v58_1_addr_reg_940_pp0_iter2_reg;
reg   [4:0] v58_1_addr_reg_940_pp0_iter3_reg;
wire   [3:0] tmp_3_fu_503_p4;
reg   [3:0] tmp_3_reg_945;
wire   [0:0] trunc_ln114_fu_513_p1;
reg   [0:0] trunc_ln114_reg_951;
reg   [4:0] v58_0_addr_1_reg_962;
reg   [4:0] v58_0_addr_1_reg_962_pp0_iter1_reg;
reg   [4:0] v58_0_addr_1_reg_962_pp0_iter2_reg;
reg   [4:0] v58_0_addr_1_reg_962_pp0_iter3_reg;
reg   [4:0] v58_1_addr_1_reg_973;
reg   [4:0] v58_1_addr_1_reg_973_pp0_iter1_reg;
reg   [4:0] v58_1_addr_1_reg_973_pp0_iter2_reg;
reg   [4:0] v58_1_addr_1_reg_973_pp0_iter3_reg;
reg   [2:0] tmp_9_reg_979;
wire   [1:0] trunc_ln128_fu_543_p1;
reg   [1:0] trunc_ln128_reg_989;
reg   [0:0] tmp_4_reg_994;
wire   [11:0] zext_ln97_fu_565_p1;
reg   [11:0] zext_ln97_reg_1000;
wire   [0:0] cmp7_fu_573_p2;
reg   [0:0] cmp7_reg_1010;
reg   [0:0] cmp7_reg_1010_pp0_iter1_reg;
reg   [31:0] v61_reg_1037;
reg   [4:0] v58_0_addr_2_reg_1052;
reg   [4:0] v58_0_addr_2_reg_1052_pp0_iter1_reg;
reg   [4:0] v58_0_addr_2_reg_1052_pp0_iter2_reg;
reg   [4:0] v58_0_addr_2_reg_1052_pp0_iter3_reg;
reg   [4:0] v58_0_addr_2_reg_1052_pp0_iter4_reg;
reg   [4:0] v58_1_addr_2_reg_1063;
reg   [4:0] v58_1_addr_2_reg_1063_pp0_iter1_reg;
reg   [4:0] v58_1_addr_2_reg_1063_pp0_iter2_reg;
reg   [4:0] v58_1_addr_2_reg_1063_pp0_iter3_reg;
reg   [4:0] v58_1_addr_2_reg_1063_pp0_iter4_reg;
reg   [4:0] v58_0_addr_3_reg_1074;
reg   [4:0] v58_0_addr_3_reg_1074_pp0_iter1_reg;
reg   [4:0] v58_0_addr_3_reg_1074_pp0_iter2_reg;
reg   [4:0] v58_0_addr_3_reg_1074_pp0_iter3_reg;
reg   [4:0] v58_0_addr_3_reg_1074_pp0_iter4_reg;
reg   [31:0] v68_reg_1084;
reg   [31:0] v74_reg_1089;
reg   [31:0] v80_reg_1094;
reg   [4:0] v58_1_addr_3_reg_1099;
reg   [4:0] v58_1_addr_3_reg_1099_pp0_iter1_reg;
reg   [4:0] v58_1_addr_3_reg_1099_pp0_iter2_reg;
reg   [4:0] v58_1_addr_3_reg_1099_pp0_iter3_reg;
reg   [4:0] v58_1_addr_3_reg_1099_pp0_iter4_reg;
wire   [31:0] v65_v_fu_645_p3;
reg   [31:0] v65_v_reg_1104;
reg   [31:0] v86_reg_1119;
reg   [31:0] v92_reg_1124;
reg   [31:0] v98_reg_1129;
reg   [31:0] v104_reg_1134;
wire   [31:0] v65_fu_689_p1;
reg   [31:0] v65_reg_1139;
wire   [31:0] v64_fu_694_p1;
wire   [31:0] v71_fu_699_p1;
wire   [31:0] v77_fu_754_p1;
wire   [31:0] v83_fu_759_p1;
wire   [31:0] v63_fu_801_p3;
reg   [31:0] v63_reg_1185;
wire   [31:0] v89_fu_807_p1;
wire   [31:0] v95_fu_812_p1;
wire   [31:0] v70_fu_817_p3;
reg   [31:0] v70_reg_1200;
wire   [31:0] v76_fu_823_p3;
reg   [31:0] v76_reg_1205;
wire   [31:0] v82_fu_829_p3;
reg   [31:0] v82_reg_1210;
reg   [31:0] v66_reg_1215;
reg   [31:0] v72_reg_1220;
wire   [31:0] v101_fu_835_p1;
wire   [31:0] v107_fu_840_p1;
wire   [31:0] v88_fu_845_p3;
reg   [31:0] v88_reg_1235;
wire   [31:0] v94_fu_851_p3;
reg   [31:0] v94_reg_1240;
wire   [31:0] v100_fu_857_p3;
reg   [31:0] v100_reg_1245;
wire   [31:0] v106_fu_863_p3;
reg   [31:0] v106_reg_1250;
reg   [31:0] v78_reg_1255;
reg   [31:0] v84_reg_1260;
reg   [31:0] v90_reg_1265;
reg   [31:0] v96_reg_1270;
reg   [31:0] v102_reg_1275;
reg   [31:0] v108_reg_1280;
reg   [31:0] v91_reg_1285;
reg   [31:0] v97_reg_1290;
reg   [31:0] v103_reg_1295;
reg   [31:0] v109_reg_1300;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln98_fu_495_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln114_fu_525_p1;
wire   [63:0] zext_ln97_1_fu_568_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_591_p1;
wire   [63:0] zext_ln110_fu_609_p1;
wire   [63:0] zext_ln128_fu_622_p1;
wire   [63:0] zext_ln142_fu_637_p1;
wire   [63:0] zext_ln117_fu_667_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_684_p1;
wire   [63:0] zext_ln131_fu_719_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_739_p1;
wire   [63:0] zext_ln145_fu_779_p1;
wire   [63:0] zext_ln152_fu_796_p1;
reg   [6:0] v60_fu_100;
wire   [6:0] add_ln98_fu_744_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_load;
reg   [6:0] v59_fu_104;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_108;
wire   [9:0] add_ln97_1_fu_425_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v57_0_ce1_local;
reg   [4:0] v57_0_address1_local;
reg    v57_0_ce0_local;
reg   [4:0] v57_0_address0_local;
reg    v57_1_ce1_local;
reg   [4:0] v57_1_address1_local;
reg    v57_1_ce0_local;
reg   [4:0] v57_1_address0_local;
reg    v115_0_ce0_local;
reg    v115_1_ce0_local;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v58_0_ce1_local;
reg   [4:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [4:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg   [31:0] v58_0_d0_local;
reg    v58_1_ce1_local;
reg   [4:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [4:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
reg   [31:0] v58_1_d0_local;
reg   [31:0] grp_fu_367_p0;
reg   [31:0] grp_fu_367_p1;
reg   [31:0] grp_fu_371_p0;
reg   [31:0] grp_fu_371_p1;
reg   [31:0] grp_fu_375_p0;
reg   [31:0] grp_fu_375_p1;
reg   [31:0] grp_fu_379_p0;
reg   [31:0] grp_fu_379_p1;
wire   [0:0] tmp_1_fu_443_p3;
wire   [6:0] add_ln97_fu_437_p2;
wire   [4:0] or_ln114_1_fu_517_p3;
wire   [11:0] tmp_fu_578_p3;
wire   [11:0] add_ln102_fu_585_p2;
wire   [11:0] tmp_2_fu_596_p3;
wire   [11:0] add_ln110_fu_603_p2;
wire   [4:0] or_ln128_1_fu_614_p4;
wire   [4:0] or_ln142_1_fu_630_p3;
wire   [11:0] tmp_5_fu_652_p5;
wire   [11:0] add_ln117_fu_662_p2;
wire   [11:0] tmp_8_fu_672_p3;
wire   [11:0] add_ln124_fu_679_p2;
wire   [11:0] tmp_s_fu_704_p5;
wire   [11:0] add_ln131_fu_714_p2;
wire   [11:0] tmp_6_fu_724_p5;
wire   [11:0] add_ln138_fu_734_p2;
wire   [11:0] tmp_7_fu_764_p5;
wire   [11:0] add_ln145_fu_774_p2;
wire   [11:0] tmp_10_fu_784_p3;
wire   [11:0] add_ln152_fu_791_p2;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v60_fu_100 = 7'd0;
#0 v59_fu_104 = 7'd0;
#0 indvar_flatten_fu_108 = 10'd0;
#0 ap_done_reg = 1'b0;
end
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_419_p2 == 1'd0))) begin
            indvar_flatten_fu_108 <= add_ln97_1_fu_425_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_108 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_419_p2 == 1'd0))) begin
            v59_fu_104 <= select_ln97_1_fu_463_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v59_fu_104 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v60_fu_100 <= 7'd0;
    end else if (((icmp_ln97_reg_890 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v60_fu_100 <= add_ln98_fu_744_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        v65_reg_1139 <= v65_fu_689_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1010 <= cmp7_fu_573_p2;
        cmp7_reg_1010_pp0_iter1_reg <= cmp7_reg_1010;
        v58_0_addr_2_reg_1052[0] <= zext_ln128_fu_622_p1[0];
v58_0_addr_2_reg_1052[4 : 2] <= zext_ln128_fu_622_p1[4 : 2];
        v58_0_addr_2_reg_1052_pp0_iter1_reg[0] <= v58_0_addr_2_reg_1052[0];
v58_0_addr_2_reg_1052_pp0_iter1_reg[4 : 2] <= v58_0_addr_2_reg_1052[4 : 2];
        v58_0_addr_2_reg_1052_pp0_iter2_reg[0] <= v58_0_addr_2_reg_1052_pp0_iter1_reg[0];
v58_0_addr_2_reg_1052_pp0_iter2_reg[4 : 2] <= v58_0_addr_2_reg_1052_pp0_iter1_reg[4 : 2];
        v58_0_addr_2_reg_1052_pp0_iter3_reg[0] <= v58_0_addr_2_reg_1052_pp0_iter2_reg[0];
v58_0_addr_2_reg_1052_pp0_iter3_reg[4 : 2] <= v58_0_addr_2_reg_1052_pp0_iter2_reg[4 : 2];
        v58_0_addr_2_reg_1052_pp0_iter4_reg[0] <= v58_0_addr_2_reg_1052_pp0_iter3_reg[0];
v58_0_addr_2_reg_1052_pp0_iter4_reg[4 : 2] <= v58_0_addr_2_reg_1052_pp0_iter3_reg[4 : 2];
        v58_0_addr_3_reg_1074[4 : 2] <= zext_ln142_fu_637_p1[4 : 2];
        v58_0_addr_3_reg_1074_pp0_iter1_reg[4 : 2] <= v58_0_addr_3_reg_1074[4 : 2];
        v58_0_addr_3_reg_1074_pp0_iter2_reg[4 : 2] <= v58_0_addr_3_reg_1074_pp0_iter1_reg[4 : 2];
        v58_0_addr_3_reg_1074_pp0_iter3_reg[4 : 2] <= v58_0_addr_3_reg_1074_pp0_iter2_reg[4 : 2];
        v58_0_addr_3_reg_1074_pp0_iter4_reg[4 : 2] <= v58_0_addr_3_reg_1074_pp0_iter3_reg[4 : 2];
        v58_1_addr_2_reg_1063[0] <= zext_ln128_fu_622_p1[0];
v58_1_addr_2_reg_1063[4 : 2] <= zext_ln128_fu_622_p1[4 : 2];
        v58_1_addr_2_reg_1063_pp0_iter1_reg[0] <= v58_1_addr_2_reg_1063[0];
v58_1_addr_2_reg_1063_pp0_iter1_reg[4 : 2] <= v58_1_addr_2_reg_1063[4 : 2];
        v58_1_addr_2_reg_1063_pp0_iter2_reg[0] <= v58_1_addr_2_reg_1063_pp0_iter1_reg[0];
v58_1_addr_2_reg_1063_pp0_iter2_reg[4 : 2] <= v58_1_addr_2_reg_1063_pp0_iter1_reg[4 : 2];
        v58_1_addr_2_reg_1063_pp0_iter3_reg[0] <= v58_1_addr_2_reg_1063_pp0_iter2_reg[0];
v58_1_addr_2_reg_1063_pp0_iter3_reg[4 : 2] <= v58_1_addr_2_reg_1063_pp0_iter2_reg[4 : 2];
        v58_1_addr_2_reg_1063_pp0_iter4_reg[0] <= v58_1_addr_2_reg_1063_pp0_iter3_reg[0];
v58_1_addr_2_reg_1063_pp0_iter4_reg[4 : 2] <= v58_1_addr_2_reg_1063_pp0_iter3_reg[4 : 2];
        v58_1_addr_3_reg_1099[4 : 2] <= zext_ln142_fu_637_p1[4 : 2];
        v58_1_addr_3_reg_1099_pp0_iter1_reg[4 : 2] <= v58_1_addr_3_reg_1099[4 : 2];
        v58_1_addr_3_reg_1099_pp0_iter2_reg[4 : 2] <= v58_1_addr_3_reg_1099_pp0_iter1_reg[4 : 2];
        v58_1_addr_3_reg_1099_pp0_iter3_reg[4 : 2] <= v58_1_addr_3_reg_1099_pp0_iter2_reg[4 : 2];
        v58_1_addr_3_reg_1099_pp0_iter4_reg[4 : 2] <= v58_1_addr_3_reg_1099_pp0_iter3_reg[4 : 2];
        v63_reg_1185 <= v63_fu_801_p3;
        v70_reg_1200 <= v70_fu_817_p3;
        v76_reg_1205 <= v76_fu_823_p3;
        v82_reg_1210 <= v82_fu_829_p3;
        zext_ln97_reg_1000[6 : 0] <= zext_ln97_fu_565_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln97_reg_890 <= icmp_ln97_fu_419_p2;
        lshr_ln1_reg_920 <= {{select_ln97_fu_451_p3[5:1]}};
        lshr_ln_reg_915 <= {{select_ln97_1_fu_463_p3[5:1]}};
        select_ln97_1_reg_904 <= select_ln97_1_fu_463_p3;
        select_ln97_reg_894 <= select_ln97_fu_451_p3;
        tmp_3_reg_945 <= {{select_ln97_fu_451_p3[5:2]}};
        tmp_4_reg_994 <= select_ln97_fu_451_p3[32'd1];
        tmp_9_reg_979 <= {{select_ln97_fu_451_p3[5:3]}};
        trunc_ln114_reg_951 <= trunc_ln114_fu_513_p1;
        trunc_ln128_reg_989 <= trunc_ln128_fu_543_p1;
        trunc_ln97_1_reg_910 <= trunc_ln97_1_fu_471_p1;
        trunc_ln97_reg_899 <= trunc_ln97_fu_459_p1;
        v58_0_addr_1_reg_962[4 : 1] <= zext_ln114_fu_525_p1[4 : 1];
        v58_0_addr_1_reg_962_pp0_iter1_reg[4 : 1] <= v58_0_addr_1_reg_962[4 : 1];
        v58_0_addr_1_reg_962_pp0_iter2_reg[4 : 1] <= v58_0_addr_1_reg_962_pp0_iter1_reg[4 : 1];
        v58_0_addr_1_reg_962_pp0_iter3_reg[4 : 1] <= v58_0_addr_1_reg_962_pp0_iter2_reg[4 : 1];
        v58_0_addr_reg_930 <= zext_ln98_fu_495_p1;
        v58_0_addr_reg_930_pp0_iter1_reg <= v58_0_addr_reg_930;
        v58_0_addr_reg_930_pp0_iter2_reg <= v58_0_addr_reg_930_pp0_iter1_reg;
        v58_0_addr_reg_930_pp0_iter3_reg <= v58_0_addr_reg_930_pp0_iter2_reg;
        v58_1_addr_1_reg_973[4 : 1] <= zext_ln114_fu_525_p1[4 : 1];
        v58_1_addr_1_reg_973_pp0_iter1_reg[4 : 1] <= v58_1_addr_1_reg_973[4 : 1];
        v58_1_addr_1_reg_973_pp0_iter2_reg[4 : 1] <= v58_1_addr_1_reg_973_pp0_iter1_reg[4 : 1];
        v58_1_addr_1_reg_973_pp0_iter3_reg[4 : 1] <= v58_1_addr_1_reg_973_pp0_iter2_reg[4 : 1];
        v58_1_addr_reg_940 <= zext_ln98_fu_495_p1;
        v58_1_addr_reg_940_pp0_iter1_reg <= v58_1_addr_reg_940;
        v58_1_addr_reg_940_pp0_iter2_reg <= v58_1_addr_reg_940_pp0_iter1_reg;
        v58_1_addr_reg_940_pp0_iter3_reg <= v58_1_addr_reg_940_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_383 <= v114_q1;
        reg_387 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_391 <= grp_fu_313_p_dout0;
        reg_396 <= grp_fu_317_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_1245 <= v100_fu_857_p3;
        v106_reg_1250 <= v106_fu_863_p3;
        v65_v_reg_1104 <= v65_v_fu_645_p3;
        v88_reg_1235 <= v88_fu_845_p3;
        v94_reg_1240 <= v94_fu_851_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1275 <= grp_fu_321_p_dout0;
        v108_reg_1280 <= grp_fu_325_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v103_reg_1295 <= grp_fu_313_p_dout0;
        v109_reg_1300 <= grp_fu_317_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v104_reg_1134 <= v57_1_q0;
        v86_reg_1119 <= v57_0_q1;
        v92_reg_1124 <= v57_1_q1;
        v98_reg_1129 <= v57_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v61_reg_1037 <= v57_0_q1;
        v68_reg_1084 <= v57_1_q1;
        v74_reg_1089 <= v57_0_q0;
        v80_reg_1094 <= v57_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1215 <= grp_fu_321_p_dout0;
        v72_reg_1220 <= grp_fu_325_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1255 <= grp_fu_321_p_dout0;
        v84_reg_1260 <= grp_fu_325_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1265 <= grp_fu_321_p_dout0;
        v96_reg_1270 <= grp_fu_325_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v91_reg_1285 <= grp_fu_313_p_dout0;
        v97_reg_1290 <= grp_fu_317_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_890 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_108;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_104;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_load = v60_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_367_p0 = v100_reg_1245;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_367_p0 = v88_reg_1235;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_367_p0 = v76_reg_1205;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_367_p0 = v63_reg_1185;
    end else begin
        grp_fu_367_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_367_p1 = v102_reg_1275;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_367_p1 = v90_reg_1265;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_367_p1 = v78_reg_1255;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_367_p1 = v66_reg_1215;
    end else begin
        grp_fu_367_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p0 = v106_reg_1250;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_371_p0 = v94_reg_1240;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_371_p0 = v82_reg_1210;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_371_p0 = v70_reg_1200;
    end else begin
        grp_fu_371_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p1 = v108_reg_1280;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_371_p1 = v96_reg_1270;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_371_p1 = v84_reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_371_p1 = v72_reg_1220;
    end else begin
        grp_fu_371_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p0 = v101_fu_835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_375_p0 = v89_fu_807_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_375_p0 = v77_fu_754_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_375_p0 = v64_fu_694_p1;
    end else begin
        grp_fu_375_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_375_p1 = v65_reg_1139;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_375_p1 = v65_fu_689_p1;
    end else begin
        grp_fu_375_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_379_p0 = v107_fu_840_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_379_p0 = v95_fu_812_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_379_p0 = v83_fu_759_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_379_p0 = v71_fu_699_p1;
    end else begin
        grp_fu_379_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_379_p1 = v65_reg_1139;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_379_p1 = v65_fu_689_p1;
    end else begin
        grp_fu_379_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_796_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_739_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_684_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_609_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_779_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_719_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_667_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_591_p1;
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
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_0_address0_local = zext_ln142_fu_637_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_0_address0_local = zext_ln114_fu_525_p1;
        end else begin
            v57_0_address0_local = 'bx;
        end
    end else begin
        v57_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_0_address1_local = zext_ln128_fu_622_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_0_address1_local = zext_ln98_fu_495_p1;
        end else begin
            v57_0_address1_local = 'bx;
        end
    end else begin
        v57_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v57_0_ce0_local = 1'b1;
    end else begin
        v57_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v57_0_ce1_local = 1'b1;
    end else begin
        v57_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_1_address0_local = zext_ln142_fu_637_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_1_address0_local = zext_ln114_fu_525_p1;
        end else begin
            v57_1_address0_local = 'bx;
        end
    end else begin
        v57_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_1_address1_local = zext_ln128_fu_622_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_1_address1_local = zext_ln98_fu_495_p1;
        end else begin
            v57_1_address1_local = 'bx;
        end
    end else begin
        v57_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v57_1_ce0_local = 1'b1;
    end else begin
        v57_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v57_1_ce1_local = 1'b1;
    end else begin
        v57_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address0_local = v58_0_addr_3_reg_1074_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_2_reg_1052_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = v58_0_addr_3_reg_1074;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = v58_0_addr_1_reg_962;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_1_reg_962_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_930_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address1_local = v58_0_addr_2_reg_1052;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = v58_0_addr_reg_930;
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
            v58_0_d0_local = v103_reg_1295;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v58_0_d0_local = v91_reg_1285;
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
        v58_1_address0_local = v58_1_addr_3_reg_1099_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_2_reg_1063_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = v58_1_addr_3_reg_1099;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = v58_1_addr_1_reg_973;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_1_reg_973_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_940_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address1_local = v58_1_addr_2_reg_1063;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = v58_1_addr_reg_940;
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
            v58_1_d0_local = v109_reg_1300;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v58_1_d0_local = v97_reg_1290;
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
assign add_ln102_fu_585_p2 = (tmp_fu_578_p3 + zext_ln97_fu_565_p1);
assign add_ln110_fu_603_p2 = (tmp_2_fu_596_p3 + zext_ln97_fu_565_p1);
assign add_ln117_fu_662_p2 = (tmp_5_fu_652_p5 + zext_ln97_reg_1000);
assign add_ln124_fu_679_p2 = (tmp_8_fu_672_p3 + zext_ln97_reg_1000);
assign add_ln131_fu_714_p2 = (tmp_s_fu_704_p5 + zext_ln97_reg_1000);
assign add_ln138_fu_734_p2 = (tmp_6_fu_724_p5 + zext_ln97_reg_1000);
assign add_ln145_fu_774_p2 = (tmp_7_fu_764_p5 + zext_ln97_reg_1000);
assign add_ln152_fu_791_p2 = (tmp_10_fu_784_p3 + zext_ln97_reg_1000);
assign add_ln97_1_fu_425_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_437_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_744_p2 = (select_ln97_reg_894 + 7'd8);
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
assign cmp7_fu_573_p2 = ((select_ln97_1_reg_904 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_313_p_ce = 1'b1;
assign grp_fu_313_p_din0 = grp_fu_367_p0;
assign grp_fu_313_p_din1 = grp_fu_367_p1;
assign grp_fu_313_p_opcode = 2'd0;
assign grp_fu_317_p_ce = 1'b1;
assign grp_fu_317_p_din0 = grp_fu_371_p0;
assign grp_fu_317_p_din1 = grp_fu_371_p1;
assign grp_fu_317_p_opcode = 2'd0;
assign grp_fu_321_p_ce = 1'b1;
assign grp_fu_321_p_din0 = grp_fu_375_p0;
assign grp_fu_321_p_din1 = grp_fu_375_p1;
assign grp_fu_325_p_ce = 1'b1;
assign grp_fu_325_p_din0 = grp_fu_379_p0;
assign grp_fu_325_p_din1 = grp_fu_379_p1;
assign icmp_ln97_fu_419_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_485_p4 = {{select_ln97_fu_451_p3[5:1]}};
assign or_ln114_1_fu_517_p3 = {{tmp_3_fu_503_p4}, {1'd1}};
assign or_ln128_1_fu_614_p4 = {{{tmp_9_reg_979}, {1'd1}}, {tmp_4_reg_994}};
assign or_ln142_1_fu_630_p3 = {{tmp_9_reg_979}, {2'd3}};
assign select_ln97_1_fu_463_p3 = ((tmp_1_fu_443_p3[0:0] == 1'b1) ? add_ln97_fu_437_p2 : ap_sig_allocacmp_v59_load);
assign select_ln97_fu_451_p3 = ((tmp_1_fu_443_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v60_load);
assign tmp_10_fu_784_p3 = {{tmp_9_reg_979}, {9'd448}};
assign tmp_1_fu_443_p3 = ap_sig_allocacmp_v60_load[32'd6];
assign tmp_2_fu_596_p3 = {{lshr_ln1_reg_920}, {7'd64}};
assign tmp_3_fu_503_p4 = {{select_ln97_fu_451_p3[5:2]}};
assign tmp_5_fu_652_p5 = {{{{tmp_3_reg_945}, {1'd1}}, {trunc_ln114_reg_951}}, {6'd0}};
assign tmp_6_fu_724_p5 = {{{{tmp_9_reg_979}, {1'd1}}, {tmp_4_reg_994}}, {7'd64}};
assign tmp_7_fu_764_p5 = {{{{tmp_9_reg_979}, {2'd3}}, {trunc_ln114_reg_951}}, {6'd0}};
assign tmp_8_fu_672_p3 = {{tmp_3_reg_945}, {8'd192}};
assign tmp_fu_578_p3 = {{trunc_ln97_reg_899}, {6'd0}};
assign tmp_s_fu_704_p5 = {{{{tmp_9_reg_979}, {1'd1}}, {trunc_ln128_reg_989}}, {6'd0}};
assign trunc_ln114_fu_513_p1 = select_ln97_fu_451_p3[0:0];
assign trunc_ln128_fu_543_p1 = select_ln97_fu_451_p3[1:0];
assign trunc_ln97_1_fu_471_p1 = select_ln97_1_fu_463_p3[0:0];
assign trunc_ln97_fu_459_p1 = select_ln97_fu_451_p3[5:0];
assign v100_fu_857_p3 = ((cmp7_reg_1010_pp0_iter1_reg[0:0] == 1'b1) ? v98_reg_1129 : v58_0_q0);
assign v101_fu_835_p1 = reg_383;
assign v106_fu_863_p3 = ((cmp7_reg_1010_pp0_iter1_reg[0:0] == 1'b1) ? v104_reg_1134 : v58_1_q0);
assign v107_fu_840_p1 = reg_387;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_0_address0 = zext_ln97_1_fu_568_p1;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = zext_ln97_1_fu_568_p1;
assign v115_1_ce0 = v115_1_ce0_local;
assign v57_0_address0 = v57_0_address0_local;
assign v57_0_address1 = v57_0_address1_local;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_0_ce1 = v57_0_ce1_local;
assign v57_1_address0 = v57_1_address0_local;
assign v57_1_address1 = v57_1_address1_local;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_1_ce1 = v57_1_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = v58_0_d0_local;
assign v58_0_d1 = reg_391;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = v58_1_d0_local;
assign v58_1_d1 = reg_396;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v63_fu_801_p3 = ((cmp7_reg_1010[0:0] == 1'b1) ? v61_reg_1037 : v58_0_q1);
assign v64_fu_694_p1 = reg_383;
assign v65_fu_689_p1 = v65_v_reg_1104;
assign v65_v_fu_645_p3 = ((trunc_ln97_1_reg_910[0:0] == 1'b1) ? v115_1_q0 : v115_0_q0);
assign v70_fu_817_p3 = ((cmp7_reg_1010[0:0] == 1'b1) ? v68_reg_1084 : v58_1_q1);
assign v71_fu_699_p1 = reg_387;
assign v76_fu_823_p3 = ((cmp7_reg_1010[0:0] == 1'b1) ? v74_reg_1089 : v58_0_q0);
assign v77_fu_754_p1 = reg_383;
assign v82_fu_829_p3 = ((cmp7_reg_1010[0:0] == 1'b1) ? v80_reg_1094 : v58_1_q0);
assign v83_fu_759_p1 = reg_387;
assign v88_fu_845_p3 = ((cmp7_reg_1010_pp0_iter1_reg[0:0] == 1'b1) ? v86_reg_1119 : v58_0_q1);
assign v89_fu_807_p1 = reg_383;
assign v94_fu_851_p3 = ((cmp7_reg_1010_pp0_iter1_reg[0:0] == 1'b1) ? v92_reg_1124 : v58_1_q1);
assign v95_fu_812_p1 = reg_387;
assign zext_ln102_fu_591_p1 = add_ln102_fu_585_p2;
assign zext_ln110_fu_609_p1 = add_ln110_fu_603_p2;
assign zext_ln114_fu_525_p1 = or_ln114_1_fu_517_p3;
assign zext_ln117_fu_667_p1 = add_ln117_fu_662_p2;
assign zext_ln124_fu_684_p1 = add_ln124_fu_679_p2;
assign zext_ln128_fu_622_p1 = or_ln128_1_fu_614_p4;
assign zext_ln131_fu_719_p1 = add_ln131_fu_714_p2;
assign zext_ln138_fu_739_p1 = add_ln138_fu_734_p2;
assign zext_ln142_fu_637_p1 = or_ln142_1_fu_630_p3;
assign zext_ln145_fu_779_p1 = add_ln145_fu_774_p2;
assign zext_ln152_fu_796_p1 = add_ln152_fu_791_p2;
assign zext_ln97_1_fu_568_p1 = lshr_ln_reg_915;
assign zext_ln97_fu_565_p1 = select_ln97_1_reg_904;
assign zext_ln98_fu_495_p1 = lshr_ln1_fu_485_p4;
always @ (posedge ap_clk) begin
    v58_0_addr_1_reg_962[0] <= 1'b1;
    v58_0_addr_1_reg_962_pp0_iter1_reg[0] <= 1'b1;
    v58_0_addr_1_reg_962_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_962_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_973[0] <= 1'b1;
    v58_1_addr_1_reg_973_pp0_iter1_reg[0] <= 1'b1;
    v58_1_addr_1_reg_973_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_973_pp0_iter3_reg[0] <= 1'b1;
    zext_ln97_reg_1000[11:7] <= 5'b00000;
    v58_0_addr_2_reg_1052[1] <= 1'b1;
    v58_0_addr_2_reg_1052_pp0_iter1_reg[1] <= 1'b1;
    v58_0_addr_2_reg_1052_pp0_iter2_reg[1] <= 1'b1;
    v58_0_addr_2_reg_1052_pp0_iter3_reg[1] <= 1'b1;
    v58_0_addr_2_reg_1052_pp0_iter4_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1063[1] <= 1'b1;
    v58_1_addr_2_reg_1063_pp0_iter1_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1063_pp0_iter2_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1063_pp0_iter3_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1063_pp0_iter4_reg[1] <= 1'b1;
    v58_0_addr_3_reg_1074[1:0] <= 2'b11;
    v58_0_addr_3_reg_1074_pp0_iter1_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1074_pp0_iter2_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1074_pp0_iter3_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1074_pp0_iter4_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1099[1:0] <= 2'b11;
    v58_1_addr_3_reg_1099_pp0_iter1_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1099_pp0_iter2_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1099_pp0_iter3_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1099_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 