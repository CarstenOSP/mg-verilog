module atax_atax_node1_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v59,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_3_address1,v58_3_ce1,v58_3_we1,v58_3_d1,v58_3_q1,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_2_address1,v58_2_ce1,v58_2_we1,v58_2_d1,v58_2_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,cmp7,v65,zext_ln97,grp_fu_379_p_din0,grp_fu_379_p_din1,grp_fu_379_p_opcode,grp_fu_379_p_dout0,grp_fu_379_p_ce,grp_fu_383_p_din0,grp_fu_383_p_din1,grp_fu_383_p_opcode,grp_fu_383_p_dout0,grp_fu_383_p_ce,grp_fu_387_p_din0,grp_fu_387_p_din1,grp_fu_387_p_dout0,grp_fu_387_p_ce,grp_fu_391_p_din0,grp_fu_391_p_din1,grp_fu_391_p_dout0,grp_fu_391_p_ce); 
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
input  [5:0] v59;
output  [11:0] v114_address0;
output   v114_ce0;
input  [31:0] v114_q0;
output  [11:0] v114_address1;
output   v114_ce1;
input  [31:0] v114_q1;
output  [3:0] v58_3_address0;
output   v58_3_ce0;
output   v58_3_we0;
output  [31:0] v58_3_d0;
input  [31:0] v58_3_q0;
output  [3:0] v58_3_address1;
output   v58_3_ce1;
output   v58_3_we1;
output  [31:0] v58_3_d1;
input  [31:0] v58_3_q1;
output  [3:0] v58_2_address0;
output   v58_2_ce0;
output   v58_2_we0;
output  [31:0] v58_2_d0;
input  [31:0] v58_2_q0;
output  [3:0] v58_2_address1;
output   v58_2_ce1;
output   v58_2_we1;
output  [31:0] v58_2_d1;
input  [31:0] v58_2_q1;
output  [3:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [3:0] v58_1_address1;
output   v58_1_ce1;
output   v58_1_we1;
output  [31:0] v58_1_d1;
input  [31:0] v58_1_q1;
output  [3:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [3:0] v58_0_address1;
output   v58_0_ce1;
output   v58_0_we1;
output  [31:0] v58_0_d1;
input  [31:0] v58_0_q1;
output  [5:0] v57_address0;
output   v57_ce0;
input  [31:0] v57_q0;
output  [5:0] v57_address1;
output   v57_ce1;
input  [31:0] v57_q1;
input  [0:0] cmp7;
input  [31:0] v65;
input  [5:0] zext_ln97;
output  [31:0] grp_fu_379_p_din0;
output  [31:0] grp_fu_379_p_din1;
output  [1:0] grp_fu_379_p_opcode;
input  [31:0] grp_fu_379_p_dout0;
output   grp_fu_379_p_ce;
output  [31:0] grp_fu_383_p_din0;
output  [31:0] grp_fu_383_p_din1;
output  [1:0] grp_fu_383_p_opcode;
input  [31:0] grp_fu_383_p_dout0;
output   grp_fu_383_p_ce;
output  [31:0] grp_fu_387_p_din0;
output  [31:0] grp_fu_387_p_din1;
input  [31:0] grp_fu_387_p_dout0;
output   grp_fu_387_p_ce;
output  [31:0] grp_fu_391_p_din0;
output  [31:0] grp_fu_391_p_din1;
input  [31:0] grp_fu_391_p_dout0;
output   grp_fu_391_p_ce;
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
reg   [0:0] tmp_reg_852;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_398;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_402;
reg   [31:0] reg_406;
reg   [31:0] reg_413;
wire   [6:0] v59_cast_fu_420_p1;
reg   [6:0] v59_cast_reg_837;
reg   [6:0] v60_3_reg_844;
wire   [0:0] tmp_fu_432_p3;
reg   [0:0] tmp_reg_852_pp0_iter1_reg;
reg   [0:0] tmp_reg_852_pp0_iter2_reg;
reg   [0:0] tmp_reg_852_pp0_iter3_reg;
wire   [4:0] tmp_2_cast_fu_440_p4;
reg   [4:0] tmp_2_cast_reg_856;
wire   [3:0] lshr_ln_fu_489_p4;
reg   [3:0] lshr_ln_reg_871;
wire   [31:0] v64_fu_526_p1;
wire   [31:0] v71_fu_531_p1;
wire   [2:0] tmp_12_fu_536_p4;
reg   [2:0] tmp_12_reg_898;
reg   [2:0] tmp_12_reg_898_pp0_iter1_reg;
wire   [0:0] tmp_10_fu_545_p3;
reg   [0:0] tmp_10_reg_909;
wire   [31:0] v77_fu_586_p1;
wire   [31:0] v83_fu_591_p1;
reg   [3:0] v58_0_addr_reg_949;
reg   [3:0] v58_0_addr_reg_949_pp0_iter2_reg;
reg   [3:0] v58_0_addr_reg_949_pp0_iter3_reg;
reg   [3:0] v58_1_addr_reg_960;
reg   [3:0] v58_1_addr_reg_960_pp0_iter2_reg;
reg   [3:0] v58_1_addr_reg_960_pp0_iter3_reg;
reg   [3:0] v58_2_addr_reg_966;
reg   [3:0] v58_2_addr_reg_966_pp0_iter2_reg;
reg   [3:0] v58_2_addr_reg_966_pp0_iter3_reg;
reg   [3:0] v58_3_addr_reg_971;
reg   [3:0] v58_3_addr_reg_971_pp0_iter2_reg;
reg   [3:0] v58_3_addr_reg_971_pp0_iter3_reg;
reg   [3:0] v58_0_addr_1_reg_976;
reg   [3:0] v58_0_addr_1_reg_976_pp0_iter2_reg;
reg   [3:0] v58_0_addr_1_reg_976_pp0_iter3_reg;
wire   [31:0] v89_fu_660_p1;
reg   [3:0] v58_1_addr_1_reg_987;
reg   [3:0] v58_1_addr_1_reg_987_pp0_iter2_reg;
reg   [3:0] v58_1_addr_1_reg_987_pp0_iter3_reg;
wire   [31:0] v95_fu_665_p1;
reg   [3:0] v58_2_addr_1_reg_998;
reg   [3:0] v58_2_addr_1_reg_998_pp0_iter2_reg;
reg   [3:0] v58_2_addr_1_reg_998_pp0_iter3_reg;
reg   [3:0] v58_2_addr_1_reg_998_pp0_iter4_reg;
reg   [3:0] v58_3_addr_1_reg_1003;
reg   [3:0] v58_3_addr_1_reg_1003_pp0_iter2_reg;
reg   [3:0] v58_3_addr_1_reg_1003_pp0_iter3_reg;
reg   [3:0] v58_3_addr_1_reg_1003_pp0_iter4_reg;
wire   [31:0] v63_fu_670_p3;
reg   [31:0] v63_reg_1008;
reg   [31:0] v66_reg_1013;
reg   [31:0] v72_reg_1018;
wire   [31:0] v101_fu_701_p1;
wire   [31:0] v107_fu_706_p1;
wire   [31:0] v70_fu_711_p3;
reg   [31:0] v70_reg_1043;
reg   [31:0] v75_reg_1048;
reg   [31:0] v81_reg_1053;
reg   [31:0] v87_reg_1058;
reg   [31:0] v93_reg_1063;
reg   [31:0] v99_reg_1068;
reg   [31:0] v105_reg_1073;
reg   [31:0] v78_reg_1078;
reg   [31:0] v84_reg_1083;
wire   [31:0] v76_fu_745_p3;
reg   [31:0] v76_reg_1098;
wire   [31:0] v82_fu_751_p3;
reg   [31:0] v82_reg_1103;
reg   [31:0] v90_reg_1108;
reg   [31:0] v96_reg_1113;
wire   [31:0] v88_fu_781_p3;
reg   [31:0] v88_reg_1128;
wire   [31:0] v94_fu_787_p3;
reg   [31:0] v94_reg_1133;
reg   [31:0] v102_reg_1138;
reg   [31:0] v108_reg_1143;
wire   [31:0] v100_fu_793_p3;
reg   [31:0] v100_reg_1148;
wire   [31:0] v106_fu_799_p3;
reg   [31:0] v106_reg_1153;
reg   [31:0] v103_reg_1158;
reg   [31:0] v109_reg_1163;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln102_fu_458_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_473_p1;
wire   [63:0] zext_ln117_fu_507_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln124_fu_521_p1;
wire   [63:0] zext_ln131_fu_563_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln138_fu_581_p1;
wire   [63:0] zext_ln145_fu_604_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln152_fu_617_p1;
wire   [63:0] zext_ln98_fu_622_p1;
wire   [63:0] zext_ln98_1_fu_626_p1;
wire   [63:0] zext_ln107_fu_640_p1;
wire   [63:0] zext_ln128_1_fu_652_p1;
wire   [63:0] zext_ln114_fu_684_p1;
wire   [63:0] zext_ln121_fu_696_p1;
wire   [63:0] zext_ln128_fu_725_p1;
wire   [63:0] zext_ln135_fu_740_p1;
wire   [63:0] zext_ln142_fu_764_p1;
wire   [63:0] zext_ln149_fu_776_p1;
reg   [6:0] v60_fu_108;
wire   [6:0] add_ln98_fu_478_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_3;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v57_ce1_local;
reg   [5:0] v57_address1_local;
reg    v57_ce0_local;
reg   [5:0] v57_address0_local;
reg    v58_0_ce1_local;
reg   [3:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [3:0] v58_0_address0_local;
reg    v58_0_we0_local;
reg    v58_0_we1_local;
reg    v58_1_ce1_local;
reg   [3:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [3:0] v58_1_address0_local;
reg    v58_1_we0_local;
reg    v58_1_we1_local;
reg    v58_2_ce1_local;
reg   [3:0] v58_2_address1_local;
reg    v58_2_ce0_local;
reg   [3:0] v58_2_address0_local;
reg    v58_2_we1_local;
reg    v58_2_we0_local;
reg    v58_3_ce1_local;
reg   [3:0] v58_3_address1_local;
reg    v58_3_ce0_local;
reg   [3:0] v58_3_address0_local;
reg    v58_3_we1_local;
reg    v58_3_we0_local;
reg   [31:0] grp_fu_382_p0;
reg   [31:0] grp_fu_382_p1;
reg   [31:0] grp_fu_386_p0;
reg   [31:0] grp_fu_386_p1;
reg   [31:0] grp_fu_390_p0;
reg   [31:0] grp_fu_394_p0;
wire   [11:0] tmp_3_fu_450_p3;
wire   [11:0] add_ln_fu_463_p4;
wire   [11:0] tmp_9_fu_498_p4;
wire   [11:0] add_ln1_fu_512_p4;
wire   [11:0] tmp_17_fu_552_p5;
wire   [11:0] add_ln2_fu_568_p6;
wire   [11:0] tmp_25_fu_596_p4;
wire   [11:0] add_ln3_fu_609_p4;
wire   [5:0] or_ln_fu_633_p3;
wire   [3:0] or_ln128_1_fu_645_p3;
wire   [5:0] or_ln1_fu_677_p3;
wire   [5:0] or_ln2_fu_689_p3;
wire   [5:0] or_ln3_fu_718_p3;
wire   [5:0] or_ln4_fu_730_p5;
wire   [5:0] or_ln5_fu_757_p3;
wire   [5:0] or_ln6_fu_769_p3;
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
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v60_fu_108 = 7'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_432_p3 == 1'd0))) begin
            v60_fu_108 <= add_ln98_fu_478_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_fu_108 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln_reg_871 <= {{v60_3_reg_844[5:2]}};
        v63_reg_1008 <= v63_fu_670_p3;
        v70_reg_1043 <= v70_fu_711_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_398 <= v114_q1;
        reg_402 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_406 <= grp_fu_379_p_dout0;
        reg_413 <= grp_fu_383_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_10_reg_909 <= v60_3_reg_844[32'd1];
        tmp_12_reg_898 <= {{v60_3_reg_844[5:3]}};
        tmp_12_reg_898_pp0_iter1_reg <= tmp_12_reg_898;
        v76_reg_1098 <= v76_fu_745_p3;
        v82_reg_1103 <= v82_fu_751_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_2_cast_reg_856 <= {{ap_sig_allocacmp_v60_3[5:1]}};
        tmp_reg_852 <= ap_sig_allocacmp_v60_3[32'd6];
        tmp_reg_852_pp0_iter1_reg <= tmp_reg_852;
        tmp_reg_852_pp0_iter2_reg <= tmp_reg_852_pp0_iter1_reg;
        tmp_reg_852_pp0_iter3_reg <= tmp_reg_852_pp0_iter2_reg;
        v100_reg_1148 <= v100_fu_793_p3;
        v106_reg_1153 <= v106_fu_799_p3;
        v58_0_addr_1_reg_976[3 : 1] <= zext_ln128_1_fu_652_p1[3 : 1];
        v58_0_addr_1_reg_976_pp0_iter2_reg[3 : 1] <= v58_0_addr_1_reg_976[3 : 1];
        v58_0_addr_1_reg_976_pp0_iter3_reg[3 : 1] <= v58_0_addr_1_reg_976_pp0_iter2_reg[3 : 1];
        v58_0_addr_reg_949 <= zext_ln98_1_fu_626_p1;
        v58_0_addr_reg_949_pp0_iter2_reg <= v58_0_addr_reg_949;
        v58_0_addr_reg_949_pp0_iter3_reg <= v58_0_addr_reg_949_pp0_iter2_reg;
        v58_1_addr_1_reg_987[3 : 1] <= zext_ln128_1_fu_652_p1[3 : 1];
        v58_1_addr_1_reg_987_pp0_iter2_reg[3 : 1] <= v58_1_addr_1_reg_987[3 : 1];
        v58_1_addr_1_reg_987_pp0_iter3_reg[3 : 1] <= v58_1_addr_1_reg_987_pp0_iter2_reg[3 : 1];
        v58_1_addr_reg_960 <= zext_ln98_1_fu_626_p1;
        v58_1_addr_reg_960_pp0_iter2_reg <= v58_1_addr_reg_960;
        v58_1_addr_reg_960_pp0_iter3_reg <= v58_1_addr_reg_960_pp0_iter2_reg;
        v58_2_addr_1_reg_998[3 : 1] <= zext_ln128_1_fu_652_p1[3 : 1];
        v58_2_addr_1_reg_998_pp0_iter2_reg[3 : 1] <= v58_2_addr_1_reg_998[3 : 1];
        v58_2_addr_1_reg_998_pp0_iter3_reg[3 : 1] <= v58_2_addr_1_reg_998_pp0_iter2_reg[3 : 1];
        v58_2_addr_1_reg_998_pp0_iter4_reg[3 : 1] <= v58_2_addr_1_reg_998_pp0_iter3_reg[3 : 1];
        v58_2_addr_reg_966 <= zext_ln98_1_fu_626_p1;
        v58_2_addr_reg_966_pp0_iter2_reg <= v58_2_addr_reg_966;
        v58_2_addr_reg_966_pp0_iter3_reg <= v58_2_addr_reg_966_pp0_iter2_reg;
        v58_3_addr_1_reg_1003[3 : 1] <= zext_ln128_1_fu_652_p1[3 : 1];
        v58_3_addr_1_reg_1003_pp0_iter2_reg[3 : 1] <= v58_3_addr_1_reg_1003[3 : 1];
        v58_3_addr_1_reg_1003_pp0_iter3_reg[3 : 1] <= v58_3_addr_1_reg_1003_pp0_iter2_reg[3 : 1];
        v58_3_addr_1_reg_1003_pp0_iter4_reg[3 : 1] <= v58_3_addr_1_reg_1003_pp0_iter3_reg[3 : 1];
        v58_3_addr_reg_971 <= zext_ln98_1_fu_626_p1;
        v58_3_addr_reg_971_pp0_iter2_reg <= v58_3_addr_reg_971;
        v58_3_addr_reg_971_pp0_iter3_reg <= v58_3_addr_reg_971_pp0_iter2_reg;
        v59_cast_reg_837[5 : 0] <= v59_cast_fu_420_p1[5 : 0];
        v60_3_reg_844 <= ap_sig_allocacmp_v60_3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_1138 <= grp_fu_387_p_dout0;
        v108_reg_1143 <= grp_fu_391_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_1158 <= grp_fu_379_p_dout0;
        v109_reg_1163 <= grp_fu_383_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v105_reg_1073 <= v58_3_q0;
        v66_reg_1013 <= grp_fu_387_p_dout0;
        v72_reg_1018 <= grp_fu_391_p_dout0;
        v75_reg_1048 <= v58_2_q1;
        v81_reg_1053 <= v58_3_q1;
        v87_reg_1058 <= v58_0_q0;
        v93_reg_1063 <= v58_1_q0;
        v99_reg_1068 <= v58_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v78_reg_1078 <= grp_fu_387_p_dout0;
        v84_reg_1083 <= grp_fu_391_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v88_reg_1128 <= v88_fu_781_p3;
        v94_reg_1133 <= v94_fu_787_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v90_reg_1108 <= grp_fu_387_p_dout0;
        v96_reg_1113 <= grp_fu_391_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_852 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_reg_852_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_3 = v60_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_382_p0 = v100_reg_1148;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_382_p0 = v88_reg_1128;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_382_p0 = v76_reg_1098;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_382_p0 = v63_reg_1008;
    end else begin
        grp_fu_382_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_382_p1 = v102_reg_1138;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_382_p1 = v90_reg_1108;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_382_p1 = v78_reg_1078;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_382_p1 = v66_reg_1013;
    end else begin
        grp_fu_382_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_386_p0 = v106_reg_1153;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_386_p0 = v94_reg_1133;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_386_p0 = v82_reg_1103;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_386_p0 = v70_reg_1043;
    end else begin
        grp_fu_386_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_386_p1 = v108_reg_1143;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_386_p1 = v96_reg_1113;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_386_p1 = v84_reg_1083;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_386_p1 = v72_reg_1018;
    end else begin
        grp_fu_386_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_390_p0 = v101_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_390_p0 = v89_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_390_p0 = v77_fu_586_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_390_p0 = v64_fu_526_p1;
    end else begin
        grp_fu_390_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_394_p0 = v107_fu_706_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_394_p0 = v95_fu_665_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_394_p0 = v83_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_394_p0 = v71_fu_531_p1;
    end else begin
        grp_fu_394_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_address0_local = zext_ln152_fu_617_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_address0_local = zext_ln138_fu_581_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_address0_local = zext_ln124_fu_521_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_address0_local = zext_ln110_fu_473_p1;
        end else begin
            v114_address0_local = 'bx;
        end
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_address1_local = zext_ln145_fu_604_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_address1_local = zext_ln131_fu_563_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_address1_local = zext_ln117_fu_507_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_address1_local = zext_ln102_fu_458_p1;
        end else begin
            v114_address1_local = 'bx;
        end
    end else begin
        v114_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_ce0_local = 1'b1;
    end else begin
        v114_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_ce1_local = 1'b1;
    end else begin
        v114_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_776_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_740_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_696_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_640_p1;
        end else begin
            v57_address0_local = 'bx;
        end
    end else begin
        v57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address1_local = zext_ln142_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_725_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_684_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_622_p1;
        end else begin
            v57_address1_local = 'bx;
        end
    end else begin
        v57_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v57_ce0_local = 1'b1;
    end else begin
        v57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v57_ce1_local = 1'b1;
    end else begin
        v57_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = v58_0_addr_reg_949_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln128_1_fu_652_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_1_reg_976_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_1_fu_626_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_we1_local = 1'b1;
    end else begin
        v58_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = v58_1_addr_reg_960_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln128_1_fu_652_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_1_reg_987_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_1_fu_626_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_we1_local = 1'b1;
    end else begin
        v58_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_2_address0_local = v58_2_addr_1_reg_998_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln128_1_fu_652_p1;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_2_address1_local = v58_2_addr_reg_966_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address1_local = zext_ln98_1_fu_626_p1;
    end else begin
        v58_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_2_ce0_local = 1'b1;
    end else begin
        v58_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_2_ce1_local = 1'b1;
    end else begin
        v58_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_2_we0_local = 1'b1;
    end else begin
        v58_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_2_we1_local = 1'b1;
    end else begin
        v58_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_3_address0_local = v58_3_addr_1_reg_1003_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln128_1_fu_652_p1;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_3_address1_local = v58_3_addr_reg_971_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address1_local = zext_ln98_1_fu_626_p1;
    end else begin
        v58_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_3_ce0_local = 1'b1;
    end else begin
        v58_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_3_ce1_local = 1'b1;
    end else begin
        v58_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_3_we0_local = 1'b1;
    end else begin
        v58_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_3_we1_local = 1'b1;
    end else begin
        v58_3_we1_local = 1'b0;
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
assign add_ln1_fu_512_p4 = {{{lshr_ln_fu_489_p4}, {2'd3}}, {zext_ln97}};
assign add_ln2_fu_568_p6 = {{{{{tmp_12_fu_536_p4}, {1'd1}}, {tmp_10_fu_545_p3}}, {1'd1}}, {zext_ln97}};
assign add_ln3_fu_609_p4 = {{{tmp_12_reg_898}, {3'd7}}, {zext_ln97}};
assign add_ln98_fu_478_p2 = (ap_sig_allocacmp_v60_3 + 7'd8);
assign add_ln_fu_463_p4 = {{{tmp_2_cast_fu_440_p4}, {1'd1}}, {zext_ln97}};
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
assign grp_fu_379_p_ce = 1'b1;
assign grp_fu_379_p_din0 = grp_fu_382_p0;
assign grp_fu_379_p_din1 = grp_fu_382_p1;
assign grp_fu_379_p_opcode = 2'd0;
assign grp_fu_383_p_ce = 1'b1;
assign grp_fu_383_p_din0 = grp_fu_386_p0;
assign grp_fu_383_p_din1 = grp_fu_386_p1;
assign grp_fu_383_p_opcode = 2'd0;
assign grp_fu_387_p_ce = 1'b1;
assign grp_fu_387_p_din0 = grp_fu_390_p0;
assign grp_fu_387_p_din1 = v65;
assign grp_fu_391_p_ce = 1'b1;
assign grp_fu_391_p_din0 = grp_fu_394_p0;
assign grp_fu_391_p_din1 = v65;
assign lshr_ln_fu_489_p4 = {{v60_3_reg_844[5:2]}};
assign or_ln128_1_fu_645_p3 = {{tmp_12_reg_898}, {1'd1}};
assign or_ln1_fu_677_p3 = {{lshr_ln_reg_871}, {2'd2}};
assign or_ln2_fu_689_p3 = {{lshr_ln_reg_871}, {2'd3}};
assign or_ln3_fu_718_p3 = {{tmp_12_reg_898}, {3'd4}};
assign or_ln4_fu_730_p5 = {{{{tmp_12_reg_898}, {1'd1}}, {tmp_10_reg_909}}, {1'd1}};
assign or_ln5_fu_757_p3 = {{tmp_12_reg_898_pp0_iter1_reg}, {3'd6}};
assign or_ln6_fu_769_p3 = {{tmp_12_reg_898_pp0_iter1_reg}, {3'd7}};
assign or_ln_fu_633_p3 = {{tmp_2_cast_reg_856}, {1'd1}};
assign tmp_10_fu_545_p3 = v60_3_reg_844[32'd1];
assign tmp_12_fu_536_p4 = {{v60_3_reg_844[5:3]}};
assign tmp_17_fu_552_p5 = {{{{tmp_12_fu_536_p4}, {1'd1}}, {tmp_10_fu_545_p3}}, {v59_cast_reg_837}};
assign tmp_25_fu_596_p4 = {{{tmp_12_reg_898}, {2'd3}}, {v59_cast_reg_837}};
assign tmp_2_cast_fu_440_p4 = {{ap_sig_allocacmp_v60_3[5:1]}};
assign tmp_3_fu_450_p3 = {{tmp_2_cast_fu_440_p4}, {v59_cast_fu_420_p1}};
assign tmp_9_fu_498_p4 = {{{lshr_ln_fu_489_p4}, {1'd1}}, {v59_cast_reg_837}};
assign tmp_fu_432_p3 = ap_sig_allocacmp_v60_3[32'd6];
assign v100_fu_793_p3 = ((cmp7[0:0] == 1'b1) ? v57_q1 : v99_reg_1068);
assign v101_fu_701_p1 = reg_398;
assign v106_fu_799_p3 = ((cmp7[0:0] == 1'b1) ? v57_q0 : v105_reg_1073);
assign v107_fu_706_p1 = reg_402;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = reg_406;
assign v58_0_d1 = reg_406;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = reg_413;
assign v58_1_d1 = reg_413;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_address1 = v58_2_address1_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_ce1 = v58_2_ce1_local;
assign v58_2_d0 = v103_reg_1158;
assign v58_2_d1 = reg_406;
assign v58_2_we0 = v58_2_we0_local;
assign v58_2_we1 = v58_2_we1_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_address1 = v58_3_address1_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_ce1 = v58_3_ce1_local;
assign v58_3_d0 = v109_reg_1163;
assign v58_3_d1 = reg_413;
assign v58_3_we0 = v58_3_we0_local;
assign v58_3_we1 = v58_3_we1_local;
assign v59_cast_fu_420_p1 = v59;
assign v63_fu_670_p3 = ((cmp7[0:0] == 1'b1) ? v57_q1 : v58_0_q1);
assign v64_fu_526_p1 = reg_398;
assign v70_fu_711_p3 = ((cmp7[0:0] == 1'b1) ? v57_q0 : v58_1_q1);
assign v71_fu_531_p1 = reg_402;
assign v76_fu_745_p3 = ((cmp7[0:0] == 1'b1) ? v57_q1 : v75_reg_1048);
assign v77_fu_586_p1 = reg_398;
assign v82_fu_751_p3 = ((cmp7[0:0] == 1'b1) ? v57_q0 : v81_reg_1053);
assign v83_fu_591_p1 = reg_402;
assign v88_fu_781_p3 = ((cmp7[0:0] == 1'b1) ? v57_q1 : v87_reg_1058);
assign v89_fu_660_p1 = reg_398;
assign v94_fu_787_p3 = ((cmp7[0:0] == 1'b1) ? v57_q0 : v93_reg_1063);
assign v95_fu_665_p1 = reg_402;
assign zext_ln102_fu_458_p1 = tmp_3_fu_450_p3;
assign zext_ln107_fu_640_p1 = or_ln_fu_633_p3;
assign zext_ln110_fu_473_p1 = add_ln_fu_463_p4;
assign zext_ln114_fu_684_p1 = or_ln1_fu_677_p3;
assign zext_ln117_fu_507_p1 = tmp_9_fu_498_p4;
assign zext_ln121_fu_696_p1 = or_ln2_fu_689_p3;
assign zext_ln124_fu_521_p1 = add_ln1_fu_512_p4;
assign zext_ln128_1_fu_652_p1 = or_ln128_1_fu_645_p3;
assign zext_ln128_fu_725_p1 = or_ln3_fu_718_p3;
assign zext_ln131_fu_563_p1 = tmp_17_fu_552_p5;
assign zext_ln135_fu_740_p1 = or_ln4_fu_730_p5;
assign zext_ln138_fu_581_p1 = add_ln2_fu_568_p6;
assign zext_ln142_fu_764_p1 = or_ln5_fu_757_p3;
assign zext_ln145_fu_604_p1 = tmp_25_fu_596_p4;
assign zext_ln149_fu_776_p1 = or_ln6_fu_769_p3;
assign zext_ln152_fu_617_p1 = add_ln3_fu_609_p4;
assign zext_ln98_1_fu_626_p1 = lshr_ln_reg_871;
assign zext_ln98_fu_622_p1 = v60_3_reg_844;
always @ (posedge ap_clk) begin
    v59_cast_reg_837[6] <= 1'b0;
    v58_0_addr_1_reg_976[0] <= 1'b1;
    v58_0_addr_1_reg_976_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_976_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_987[0] <= 1'b1;
    v58_1_addr_1_reg_987_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_987_pp0_iter3_reg[0] <= 1'b1;
    v58_2_addr_1_reg_998[0] <= 1'b1;
    v58_2_addr_1_reg_998_pp0_iter2_reg[0] <= 1'b1;
    v58_2_addr_1_reg_998_pp0_iter3_reg[0] <= 1'b1;
    v58_2_addr_1_reg_998_pp0_iter4_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1003[0] <= 1'b1;
    v58_3_addr_1_reg_1003_pp0_iter2_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1003_pp0_iter3_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1003_pp0_iter4_reg[0] <= 1'b1;
end
endmodule 