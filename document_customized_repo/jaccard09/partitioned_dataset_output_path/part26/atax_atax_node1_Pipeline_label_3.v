
module atax_atax_node1_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,lshr_ln,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v58_7_address0,v58_7_ce0,v58_7_we0,v58_7_d0,v58_7_address1,v58_7_ce1,v58_7_q1,v58_6_address0,v58_6_ce0,v58_6_we0,v58_6_d0,v58_6_address1,v58_6_ce1,v58_6_q1,v58_5_address0,v58_5_ce0,v58_5_we0,v58_5_d0,v58_5_q0,v58_4_address0,v58_4_ce0,v58_4_we0,v58_4_d0,v58_4_q0,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,cmp7,v65,grp_fu_659_p_din0,grp_fu_659_p_din1,grp_fu_659_p_opcode,grp_fu_659_p_dout0,grp_fu_659_p_ce,grp_fu_663_p_din0,grp_fu_663_p_din1,grp_fu_663_p_opcode,grp_fu_663_p_dout0,grp_fu_663_p_ce,grp_fu_667_p_din0,grp_fu_667_p_din1,grp_fu_667_p_dout0,grp_fu_667_p_ce,grp_fu_671_p_din0,grp_fu_671_p_din1,grp_fu_671_p_dout0,grp_fu_671_p_ce);  
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
input  [4:0] lshr_ln;
output  [10:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [10:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
output  [2:0] v58_7_address0;
output   v58_7_ce0;
output   v58_7_we0;
output  [31:0] v58_7_d0;
output  [2:0] v58_7_address1;
output   v58_7_ce1;
input  [31:0] v58_7_q1;
output  [2:0] v58_6_address0;
output   v58_6_ce0;
output   v58_6_we0;
output  [31:0] v58_6_d0;
output  [2:0] v58_6_address1;
output   v58_6_ce1;
input  [31:0] v58_6_q1;
output  [2:0] v58_5_address0;
output   v58_5_ce0;
output   v58_5_we0;
output  [31:0] v58_5_d0;
input  [31:0] v58_5_q0;
output  [2:0] v58_4_address0;
output   v58_4_ce0;
output   v58_4_we0;
output  [31:0] v58_4_d0;
input  [31:0] v58_4_q0;
output  [2:0] v58_3_address0;
output   v58_3_ce0;
output   v58_3_we0;
output  [31:0] v58_3_d0;
input  [31:0] v58_3_q0;
output  [2:0] v58_2_address0;
output   v58_2_ce0;
output   v58_2_we0;
output  [31:0] v58_2_d0;
input  [31:0] v58_2_q0;
output  [2:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [2:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [5:0] v57_address0;
output   v57_ce0;
input  [31:0] v57_q0;
output  [5:0] v57_address1;
output   v57_ce1;
input  [31:0] v57_q1;
input  [0:0] cmp7;
input  [31:0] v65;
output  [31:0] grp_fu_659_p_din0;
output  [31:0] grp_fu_659_p_din1;
output  [1:0] grp_fu_659_p_opcode;
input  [31:0] grp_fu_659_p_dout0;
output   grp_fu_659_p_ce;
output  [31:0] grp_fu_663_p_din0;
output  [31:0] grp_fu_663_p_din1;
output  [1:0] grp_fu_663_p_opcode;
input  [31:0] grp_fu_663_p_dout0;
output   grp_fu_663_p_ce;
output  [31:0] grp_fu_667_p_din0;
output  [31:0] grp_fu_667_p_din1;
input  [31:0] grp_fu_667_p_dout0;
output   grp_fu_667_p_ce;
output  [31:0] grp_fu_671_p_din0;
output  [31:0] grp_fu_671_p_din1;
input  [31:0] grp_fu_671_p_dout0;
output   grp_fu_671_p_ce;
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
reg   [0:0] tmp_17_reg_841;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_402;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_406;
reg   [31:0] reg_410;
reg   [31:0] reg_418;
reg   [6:0] v60_5_reg_833;
wire   [0:0] tmp_17_fu_434_p3;
reg   [0:0] tmp_17_reg_841_pp0_iter1_reg;
reg   [0:0] tmp_17_reg_841_pp0_iter2_reg;
wire   [4:0] tmp_1_fu_459_p4;
reg   [4:0] tmp_1_reg_850;
wire   [3:0] tmp_3_fu_495_p4;
reg   [3:0] tmp_3_reg_860;
wire   [2:0] lshr_ln1_fu_532_p4;
reg   [2:0] lshr_ln1_reg_876;
reg   [2:0] lshr_ln1_reg_876_pp0_iter1_reg;
wire   [31:0] v64_fu_541_p1;
wire   [31:0] v71_fu_546_p1;
wire   [0:0] tmp_19_fu_565_p3;
reg   [0:0] tmp_19_reg_902;
wire   [31:0] v77_fu_590_p1;
wire   [31:0] v83_fu_595_p1;
reg   [2:0] v58_0_addr_reg_937;
reg   [2:0] v58_0_addr_reg_937_pp0_iter2_reg;
reg   [2:0] v58_0_addr_reg_937_pp0_iter3_reg;
reg   [2:0] v58_1_addr_reg_947;
reg   [2:0] v58_1_addr_reg_947_pp0_iter2_reg;
reg   [2:0] v58_1_addr_reg_947_pp0_iter3_reg;
reg   [2:0] v58_2_addr_reg_952;
reg   [2:0] v58_2_addr_reg_952_pp0_iter2_reg;
reg   [2:0] v58_2_addr_reg_952_pp0_iter3_reg;
reg   [2:0] v58_3_addr_reg_957;
reg   [2:0] v58_3_addr_reg_957_pp0_iter2_reg;
reg   [2:0] v58_3_addr_reg_957_pp0_iter3_reg;
reg   [2:0] v58_4_addr_reg_962;
reg   [2:0] v58_4_addr_reg_962_pp0_iter2_reg;
reg   [2:0] v58_4_addr_reg_962_pp0_iter3_reg;
wire   [31:0] v89_fu_653_p1;
reg   [2:0] v58_5_addr_reg_972;
reg   [2:0] v58_5_addr_reg_972_pp0_iter2_reg;
reg   [2:0] v58_5_addr_reg_972_pp0_iter3_reg;
wire   [31:0] v95_fu_658_p1;
reg   [2:0] v58_6_addr_reg_982;
reg   [2:0] v58_6_addr_reg_982_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_982_pp0_iter3_reg;
reg   [2:0] v58_7_addr_reg_988;
reg   [2:0] v58_7_addr_reg_988_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_988_pp0_iter3_reg;
wire   [31:0] v63_fu_663_p3;
reg   [31:0] v63_reg_994;
reg   [31:0] v66_reg_999;
reg   [31:0] v72_reg_1004;
wire   [31:0] v101_fu_694_p1;
wire   [31:0] v107_fu_699_p1;
wire   [31:0] v70_fu_704_p3;
reg   [31:0] v70_reg_1029;
reg   [31:0] v75_reg_1034;
reg   [31:0] v81_reg_1039;
reg   [31:0] v87_reg_1044;
reg   [31:0] v93_reg_1049;
reg   [31:0] v99_reg_1054;
reg   [31:0] v105_reg_1059;
reg   [31:0] v78_reg_1064;
reg   [31:0] v84_reg_1069;
wire   [31:0] v76_fu_738_p3;
reg   [31:0] v76_reg_1084;
wire   [31:0] v82_fu_744_p3;
reg   [31:0] v82_reg_1089;
reg   [31:0] v90_reg_1094;
reg   [31:0] v96_reg_1099;
wire   [31:0] v88_fu_774_p3;
reg   [31:0] v88_reg_1114;
wire   [31:0] v94_fu_780_p3;
reg   [31:0] v94_reg_1119;
reg   [31:0] v102_reg_1124;
reg   [31:0] v108_reg_1129;
wire   [31:0] v100_fu_786_p3;
reg   [31:0] v100_reg_1134;
wire   [31:0] v106_fu_792_p3;
reg   [31:0] v106_reg_1139;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln102_fu_454_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_479_p1;
wire   [63:0] zext_ln117_fu_513_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln124_fu_527_p1;
wire   [63:0] zext_ln131_fu_560_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln138_fu_585_p1;
wire   [63:0] zext_ln145_fu_608_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln152_fu_621_p1;
wire   [63:0] zext_ln98_fu_626_p1;
wire   [63:0] zext_ln98_1_fu_630_p1;
wire   [63:0] zext_ln107_fu_648_p1;
wire   [63:0] zext_ln114_fu_677_p1;
wire   [63:0] zext_ln121_fu_689_p1;
wire   [63:0] zext_ln128_fu_718_p1;
wire   [63:0] zext_ln135_fu_733_p1;
wire   [63:0] zext_ln142_fu_757_p1;
wire   [63:0] zext_ln149_fu_769_p1;
reg   [6:0] v60_fu_106;
wire   [6:0] add_ln98_fu_484_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_5;
reg    v114_0_ce1_local;
reg   [10:0] v114_0_address1_local;
reg    v114_0_ce0_local;
reg   [10:0] v114_0_address0_local;
reg    v57_ce1_local;
reg   [5:0] v57_address1_local;
reg    v57_ce0_local;
reg   [5:0] v57_address0_local;
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
reg    v58_4_ce0_local;
reg   [2:0] v58_4_address0_local;
reg    v58_4_we0_local;
reg    v58_5_ce0_local;
reg   [2:0] v58_5_address0_local;
reg    v58_5_we0_local;
reg    v58_6_ce1_local;
reg    v58_6_we0_local;
reg    v58_6_ce0_local;
reg    v58_7_ce1_local;
reg    v58_7_we0_local;
reg    v58_7_ce0_local;
reg   [31:0] grp_fu_386_p0;
reg   [31:0] grp_fu_386_p1;
reg   [31:0] grp_fu_390_p0;
reg   [31:0] grp_fu_390_p1;
reg   [31:0] grp_fu_394_p0;
reg   [31:0] grp_fu_398_p0;
wire   [5:0] trunc_ln98_fu_442_p1;
wire   [10:0] tmp_fu_446_p3;
wire   [10:0] tmp_2_fu_469_p4;
wire   [10:0] tmp_5_fu_504_p4;
wire   [10:0] tmp_7_fu_518_p4;
wire   [10:0] tmp_10_fu_551_p4;
wire   [10:0] tmp_13_fu_572_p6;
wire   [10:0] tmp_16_fu_600_p4;
wire   [10:0] tmp_18_fu_613_p4;
wire   [5:0] or_ln_fu_641_p3;
wire   [5:0] or_ln1_fu_670_p3;
wire   [5:0] or_ln2_fu_682_p3;
wire   [5:0] or_ln3_fu_711_p3;
wire   [5:0] or_ln4_fu_723_p5;
wire   [5:0] or_ln5_fu_750_p3;
wire   [5:0] or_ln6_fu_762_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
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
#0 v60_fu_106 = 7'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_17_fu_434_p3 == 1'd0))) begin
            v60_fu_106 <= add_ln98_fu_484_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_fu_106 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        lshr_ln1_reg_876 <= {{v60_5_reg_833[5:3]}};
        lshr_ln1_reg_876_pp0_iter1_reg <= lshr_ln1_reg_876;
        tmp_19_reg_902 <= v60_5_reg_833[32'd1];
        v76_reg_1084 <= v76_fu_738_p3;
        v82_reg_1089 <= v82_fu_744_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_402 <= v114_0_q1;
        reg_406 <= v114_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_410 <= grp_fu_659_p_dout0;
        reg_418 <= grp_fu_663_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_17_reg_841 <= ap_sig_allocacmp_v60_5[32'd6];
        tmp_17_reg_841_pp0_iter1_reg <= tmp_17_reg_841;
        tmp_17_reg_841_pp0_iter2_reg <= tmp_17_reg_841_pp0_iter1_reg;
        tmp_1_reg_850 <= {{ap_sig_allocacmp_v60_5[5:1]}};
        v100_reg_1134 <= v100_fu_786_p3;
        v106_reg_1139 <= v106_fu_792_p3;
        v58_0_addr_reg_937 <= zext_ln98_1_fu_630_p1;
        v58_0_addr_reg_937_pp0_iter2_reg <= v58_0_addr_reg_937;
        v58_0_addr_reg_937_pp0_iter3_reg <= v58_0_addr_reg_937_pp0_iter2_reg;
        v58_1_addr_reg_947 <= zext_ln98_1_fu_630_p1;
        v58_1_addr_reg_947_pp0_iter2_reg <= v58_1_addr_reg_947;
        v58_1_addr_reg_947_pp0_iter3_reg <= v58_1_addr_reg_947_pp0_iter2_reg;
        v58_2_addr_reg_952 <= zext_ln98_1_fu_630_p1;
        v58_2_addr_reg_952_pp0_iter2_reg <= v58_2_addr_reg_952;
        v58_2_addr_reg_952_pp0_iter3_reg <= v58_2_addr_reg_952_pp0_iter2_reg;
        v58_3_addr_reg_957 <= zext_ln98_1_fu_630_p1;
        v58_3_addr_reg_957_pp0_iter2_reg <= v58_3_addr_reg_957;
        v58_3_addr_reg_957_pp0_iter3_reg <= v58_3_addr_reg_957_pp0_iter2_reg;
        v58_4_addr_reg_962 <= zext_ln98_1_fu_630_p1;
        v58_4_addr_reg_962_pp0_iter2_reg <= v58_4_addr_reg_962;
        v58_4_addr_reg_962_pp0_iter3_reg <= v58_4_addr_reg_962_pp0_iter2_reg;
        v58_5_addr_reg_972 <= zext_ln98_1_fu_630_p1;
        v58_5_addr_reg_972_pp0_iter2_reg <= v58_5_addr_reg_972;
        v58_5_addr_reg_972_pp0_iter3_reg <= v58_5_addr_reg_972_pp0_iter2_reg;
        v58_6_addr_reg_982 <= zext_ln98_1_fu_630_p1;
        v58_6_addr_reg_982_pp0_iter2_reg <= v58_6_addr_reg_982;
        v58_6_addr_reg_982_pp0_iter3_reg <= v58_6_addr_reg_982_pp0_iter2_reg;
        v58_7_addr_reg_988 <= zext_ln98_1_fu_630_p1;
        v58_7_addr_reg_988_pp0_iter2_reg <= v58_7_addr_reg_988;
        v58_7_addr_reg_988_pp0_iter3_reg <= v58_7_addr_reg_988_pp0_iter2_reg;
        v60_5_reg_833 <= ap_sig_allocacmp_v60_5;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_3_reg_860 <= {{v60_5_reg_833[5:2]}};
        v63_reg_994 <= v63_fu_663_p3;
        v70_reg_1029 <= v70_fu_704_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_1124 <= grp_fu_667_p_dout0;
        v108_reg_1129 <= grp_fu_671_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v105_reg_1059 <= v58_7_q1;
        v66_reg_999 <= grp_fu_667_p_dout0;
        v72_reg_1004 <= grp_fu_671_p_dout0;
        v75_reg_1034 <= v58_2_q0;
        v81_reg_1039 <= v58_3_q0;
        v87_reg_1044 <= v58_4_q0;
        v93_reg_1049 <= v58_5_q0;
        v99_reg_1054 <= v58_6_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v78_reg_1064 <= grp_fu_667_p_dout0;
        v84_reg_1069 <= grp_fu_671_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v88_reg_1114 <= v88_fu_774_p3;
        v94_reg_1119 <= v94_fu_780_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v90_reg_1094 <= grp_fu_667_p_dout0;
        v96_reg_1099 <= grp_fu_671_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_17_reg_841 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_17_reg_841_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v60_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_5 = v60_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_386_p0 = v100_reg_1134;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_386_p0 = v88_reg_1114;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_386_p0 = v76_reg_1084;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_386_p0 = v63_reg_994;
    end else begin
        grp_fu_386_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_386_p1 = v102_reg_1124;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_386_p1 = v90_reg_1094;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_386_p1 = v78_reg_1064;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_386_p1 = v66_reg_999;
    end else begin
        grp_fu_386_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_390_p0 = v106_reg_1139;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_390_p0 = v94_reg_1119;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_390_p0 = v82_reg_1089;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_390_p0 = v70_reg_1029;
    end else begin
        grp_fu_390_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_390_p1 = v108_reg_1129;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_390_p1 = v96_reg_1099;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_390_p1 = v84_reg_1069;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_390_p1 = v72_reg_1004;
    end else begin
        grp_fu_390_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_394_p0 = v101_fu_694_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_394_p0 = v89_fu_653_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_394_p0 = v77_fu_590_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_394_p0 = v64_fu_541_p1;
    end else begin
        grp_fu_394_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_398_p0 = v107_fu_699_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_398_p0 = v95_fu_658_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_398_p0 = v83_fu_595_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_398_p0 = v71_fu_546_p1;
    end else begin
        grp_fu_398_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_0_address0_local = zext_ln152_fu_621_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_0_address0_local = zext_ln138_fu_585_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_0_address0_local = zext_ln124_fu_527_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_0_address0_local = zext_ln110_fu_479_p1;
        end else begin
            v114_0_address0_local = 'bx;
        end
    end else begin
        v114_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_0_address1_local = zext_ln145_fu_608_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_0_address1_local = zext_ln131_fu_560_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_0_address1_local = zext_ln117_fu_513_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_0_address1_local = zext_ln102_fu_454_p1;
        end else begin
            v114_0_address1_local = 'bx;
        end
    end else begin
        v114_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_0_ce0_local = 1'b1;
    end else begin
        v114_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_0_ce1_local = 1'b1;
    end else begin
        v114_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_769_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_733_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_648_p1;
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
            v57_address1_local = zext_ln142_fu_757_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_718_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_626_p1;
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
        v58_0_address0_local = v58_0_addr_reg_937_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln98_1_fu_630_p1;
    end else begin
        v58_0_address0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = v58_1_addr_reg_947_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln98_1_fu_630_p1;
    end else begin
        v58_1_address0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_2_address0_local = v58_2_addr_reg_952_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln98_1_fu_630_p1;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_2_ce0_local = 1'b1;
    end else begin
        v58_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_2_we0_local = 1'b1;
    end else begin
        v58_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_3_address0_local = v58_3_addr_reg_957_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln98_1_fu_630_p1;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_3_ce0_local = 1'b1;
    end else begin
        v58_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_3_we0_local = 1'b1;
    end else begin
        v58_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_4_address0_local = v58_4_addr_reg_962_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_address0_local = zext_ln98_1_fu_630_p1;
    end else begin
        v58_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_4_ce0_local = 1'b1;
    end else begin
        v58_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_4_we0_local = 1'b1;
    end else begin
        v58_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_5_address0_local = v58_5_addr_reg_972_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_address0_local = zext_ln98_1_fu_630_p1;
    end else begin
        v58_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_5_ce0_local = 1'b1;
    end else begin
        v58_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_5_we0_local = 1'b1;
    end else begin
        v58_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_ce0_local = 1'b1;
    end else begin
        v58_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_ce1_local = 1'b1;
    end else begin
        v58_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_we0_local = 1'b1;
    end else begin
        v58_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_ce0_local = 1'b1;
    end else begin
        v58_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_ce1_local = 1'b1;
    end else begin
        v58_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_we0_local = 1'b1;
    end else begin
        v58_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln98_fu_484_p2 = (ap_sig_allocacmp_v60_5 + 7'd8);
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
assign grp_fu_659_p_ce = 1'b1;
assign grp_fu_659_p_din0 = grp_fu_386_p0;
assign grp_fu_659_p_din1 = grp_fu_386_p1;
assign grp_fu_659_p_opcode = 2'd0;
assign grp_fu_663_p_ce = 1'b1;
assign grp_fu_663_p_din0 = grp_fu_390_p0;
assign grp_fu_663_p_din1 = grp_fu_390_p1;
assign grp_fu_663_p_opcode = 2'd0;
assign grp_fu_667_p_ce = 1'b1;
assign grp_fu_667_p_din0 = grp_fu_394_p0;
assign grp_fu_667_p_din1 = v65;
assign grp_fu_671_p_ce = 1'b1;
assign grp_fu_671_p_din0 = grp_fu_398_p0;
assign grp_fu_671_p_din1 = v65;
assign lshr_ln1_fu_532_p4 = {{v60_5_reg_833[5:3]}};
assign or_ln1_fu_670_p3 = {{tmp_3_reg_860}, {2'd2}};
assign or_ln2_fu_682_p3 = {{tmp_3_reg_860}, {2'd3}};
assign or_ln3_fu_711_p3 = {{lshr_ln1_reg_876}, {3'd4}};
assign or_ln4_fu_723_p5 = {{{{lshr_ln1_reg_876}, {1'd1}}, {tmp_19_reg_902}}, {1'd1}};
assign or_ln5_fu_750_p3 = {{lshr_ln1_reg_876_pp0_iter1_reg}, {3'd6}};
assign or_ln6_fu_762_p3 = {{lshr_ln1_reg_876_pp0_iter1_reg}, {3'd7}};
assign or_ln_fu_641_p3 = {{tmp_1_reg_850}, {1'd1}};
assign tmp_10_fu_551_p4 = {{{lshr_ln1_fu_532_p4}, {3'd4}}, {lshr_ln}};
assign tmp_13_fu_572_p6 = {{{{{lshr_ln1_fu_532_p4}, {1'd1}}, {tmp_19_fu_565_p3}}, {1'd1}}, {lshr_ln}};
assign tmp_16_fu_600_p4 = {{{lshr_ln1_reg_876}, {3'd6}}, {lshr_ln}};
assign tmp_17_fu_434_p3 = ap_sig_allocacmp_v60_5[32'd6];
assign tmp_18_fu_613_p4 = {{{lshr_ln1_reg_876}, {3'd7}}, {lshr_ln}};
assign tmp_19_fu_565_p3 = v60_5_reg_833[32'd1];
assign tmp_1_fu_459_p4 = {{ap_sig_allocacmp_v60_5[5:1]}};
assign tmp_2_fu_469_p4 = {{{tmp_1_fu_459_p4}, {1'd1}}, {lshr_ln}};
assign tmp_3_fu_495_p4 = {{v60_5_reg_833[5:2]}};
assign tmp_5_fu_504_p4 = {{{tmp_3_fu_495_p4}, {2'd2}}, {lshr_ln}};
assign tmp_7_fu_518_p4 = {{{tmp_3_fu_495_p4}, {2'd3}}, {lshr_ln}};
assign tmp_fu_446_p3 = {{trunc_ln98_fu_442_p1}, {lshr_ln}};
assign trunc_ln98_fu_442_p1 = ap_sig_allocacmp_v60_5[5:0];
assign v100_fu_786_p3 = ((cmp7[0:0] == 1'b1) ? v57_q1 : v99_reg_1054);
assign v101_fu_694_p1 = reg_402;
assign v106_fu_792_p3 = ((cmp7[0:0] == 1'b1) ? v57_q0 : v105_reg_1059);
assign v107_fu_699_p1 = reg_406;
assign v114_0_address0 = v114_0_address0_local;
assign v114_0_address1 = v114_0_address1_local;
assign v114_0_ce0 = v114_0_ce0_local;
assign v114_0_ce1 = v114_0_ce1_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_d0 = reg_410;
assign v58_0_we0 = v58_0_we0_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_d0 = reg_418;
assign v58_1_we0 = v58_1_we0_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_d0 = reg_410;
assign v58_2_we0 = v58_2_we0_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_d0 = reg_418;
assign v58_3_we0 = v58_3_we0_local;
assign v58_4_address0 = v58_4_address0_local;
assign v58_4_ce0 = v58_4_ce0_local;
assign v58_4_d0 = reg_410;
assign v58_4_we0 = v58_4_we0_local;
assign v58_5_address0 = v58_5_address0_local;
assign v58_5_ce0 = v58_5_ce0_local;
assign v58_5_d0 = reg_418;
assign v58_5_we0 = v58_5_we0_local;
assign v58_6_address0 = v58_6_addr_reg_982_pp0_iter3_reg;
assign v58_6_address1 = zext_ln98_1_fu_630_p1;
assign v58_6_ce0 = v58_6_ce0_local;
assign v58_6_ce1 = v58_6_ce1_local;
assign v58_6_d0 = reg_410;
assign v58_6_we0 = v58_6_we0_local;
assign v58_7_address0 = v58_7_addr_reg_988_pp0_iter3_reg;
assign v58_7_address1 = zext_ln98_1_fu_630_p1;
assign v58_7_ce0 = v58_7_ce0_local;
assign v58_7_ce1 = v58_7_ce1_local;
assign v58_7_d0 = reg_418;
assign v58_7_we0 = v58_7_we0_local;
assign v63_fu_663_p3 = ((cmp7[0:0] == 1'b1) ? v57_q1 : v58_0_q0);
assign v64_fu_541_p1 = reg_402;
assign v70_fu_704_p3 = ((cmp7[0:0] == 1'b1) ? v57_q0 : v58_1_q0);
assign v71_fu_546_p1 = reg_406;
assign v76_fu_738_p3 = ((cmp7[0:0] == 1'b1) ? v57_q1 : v75_reg_1034);
assign v77_fu_590_p1 = reg_402;
assign v82_fu_744_p3 = ((cmp7[0:0] == 1'b1) ? v57_q0 : v81_reg_1039);
assign v83_fu_595_p1 = reg_406;
assign v88_fu_774_p3 = ((cmp7[0:0] == 1'b1) ? v57_q1 : v87_reg_1044);
assign v89_fu_653_p1 = reg_402;
assign v94_fu_780_p3 = ((cmp7[0:0] == 1'b1) ? v57_q0 : v93_reg_1049);
assign v95_fu_658_p1 = reg_406;
assign zext_ln102_fu_454_p1 = tmp_fu_446_p3;
assign zext_ln107_fu_648_p1 = or_ln_fu_641_p3;
assign zext_ln110_fu_479_p1 = tmp_2_fu_469_p4;
assign zext_ln114_fu_677_p1 = or_ln1_fu_670_p3;
assign zext_ln117_fu_513_p1 = tmp_5_fu_504_p4;
assign zext_ln121_fu_689_p1 = or_ln2_fu_682_p3;
assign zext_ln124_fu_527_p1 = tmp_7_fu_518_p4;
assign zext_ln128_fu_718_p1 = or_ln3_fu_711_p3;
assign zext_ln131_fu_560_p1 = tmp_10_fu_551_p4;
assign zext_ln135_fu_733_p1 = or_ln4_fu_723_p5;
assign zext_ln138_fu_585_p1 = tmp_13_fu_572_p6;
assign zext_ln142_fu_757_p1 = or_ln5_fu_750_p3;
assign zext_ln145_fu_608_p1 = tmp_16_fu_600_p4;
assign zext_ln149_fu_769_p1 = or_ln6_fu_762_p3;
assign zext_ln152_fu_621_p1 = tmp_18_fu_613_p4;
assign zext_ln98_1_fu_630_p1 = lshr_ln1_reg_876;
assign zext_ln98_fu_626_p1 = v60_5_reg_833;
endmodule 
