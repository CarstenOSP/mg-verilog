module atax_atax_node1_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v59,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v57_0_address0,v57_0_ce0,v57_0_q0,cmp7,v65,zext_ln97,v57_1_address0,v57_1_ce0,v57_1_q0,v57_2_address0,v57_2_ce0,v57_2_q0,v57_3_address0,v57_3_ce0,v57_3_q0,v57_4_address0,v57_4_ce0,v57_4_q0,v57_5_address0,v57_5_ce0,v57_5_q0,v57_6_address0,v57_6_ce0,v57_6_q0,v57_7_address0,v57_7_ce0,v57_7_q0,grp_fu_588_p_din0,grp_fu_588_p_din1,grp_fu_588_p_opcode,grp_fu_588_p_dout0,grp_fu_588_p_ce,grp_fu_592_p_din0,grp_fu_592_p_din1,grp_fu_592_p_opcode,grp_fu_592_p_dout0,grp_fu_592_p_ce,grp_fu_596_p_din0,grp_fu_596_p_din1,grp_fu_596_p_dout0,grp_fu_596_p_ce,grp_fu_600_p_din0,grp_fu_600_p_din1,grp_fu_600_p_dout0,grp_fu_600_p_ce); 
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
output  [2:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
input  [0:0] cmp7;
input  [31:0] v65;
input  [5:0] zext_ln97;
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
output  [31:0] grp_fu_588_p_din0;
output  [31:0] grp_fu_588_p_din1;
output  [1:0] grp_fu_588_p_opcode;
input  [31:0] grp_fu_588_p_dout0;
output   grp_fu_588_p_ce;
output  [31:0] grp_fu_592_p_din0;
output  [31:0] grp_fu_592_p_din1;
output  [1:0] grp_fu_592_p_opcode;
input  [31:0] grp_fu_592_p_dout0;
output   grp_fu_592_p_ce;
output  [31:0] grp_fu_596_p_din0;
output  [31:0] grp_fu_596_p_din1;
input  [31:0] grp_fu_596_p_dout0;
output   grp_fu_596_p_ce;
output  [31:0] grp_fu_600_p_din0;
output  [31:0] grp_fu_600_p_din1;
input  [31:0] grp_fu_600_p_dout0;
output   grp_fu_600_p_ce;
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
reg   [0:0] tmp_reg_801;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_411;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_415;
reg   [31:0] reg_419;
reg   [31:0] reg_424;
wire   [6:0] v59_cast_fu_429_p1;
reg   [6:0] v59_cast_reg_787;
reg   [6:0] v60_5_reg_794;
wire   [0:0] tmp_fu_441_p3;
wire   [4:0] tmp_2_cast_fu_449_p4;
reg   [4:0] tmp_2_cast_reg_805;
reg   [2:0] lshr_ln98_1_reg_820;
wire   [3:0] tmp_6_fu_507_p4;
reg   [3:0] tmp_6_reg_831;
reg   [0:0] tmp_15_reg_846;
wire   [31:0] v64_fu_551_p1;
wire   [31:0] v71_fu_556_p1;
wire   [31:0] v77_fu_591_p1;
wire   [31:0] v83_fu_596_p1;
reg   [4:0] v58_0_addr_reg_898;
reg   [4:0] v58_0_addr_reg_898_pp0_iter2_reg;
reg   [4:0] v58_0_addr_reg_898_pp0_iter3_reg;
reg   [4:0] v58_1_addr_reg_908;
reg   [4:0] v58_1_addr_reg_908_pp0_iter2_reg;
reg   [4:0] v58_1_addr_reg_908_pp0_iter3_reg;
reg   [4:0] v58_0_addr_1_reg_918;
reg   [4:0] v58_0_addr_1_reg_918_pp0_iter2_reg;
reg   [4:0] v58_0_addr_1_reg_918_pp0_iter3_reg;
reg   [4:0] v58_1_addr_1_reg_928;
reg   [4:0] v58_1_addr_1_reg_928_pp0_iter2_reg;
reg   [4:0] v58_1_addr_1_reg_928_pp0_iter3_reg;
wire   [31:0] v89_fu_656_p1;
wire   [31:0] v95_fu_661_p1;
wire   [31:0] v63_fu_666_p3;
reg   [31:0] v63_reg_963;
reg   [31:0] v66_reg_968;
reg   [31:0] v72_reg_973;
reg   [31:0] v86_reg_978;
reg   [4:0] v58_0_addr_2_reg_983;
reg   [4:0] v58_0_addr_2_reg_983_pp0_iter2_reg;
reg   [4:0] v58_0_addr_2_reg_983_pp0_iter3_reg;
reg   [31:0] v92_reg_988;
reg   [4:0] v58_1_addr_2_reg_993;
reg   [4:0] v58_1_addr_2_reg_993_pp0_iter2_reg;
reg   [4:0] v58_1_addr_2_reg_993_pp0_iter3_reg;
reg   [31:0] v98_reg_998;
reg   [4:0] v58_0_addr_3_reg_1003;
reg   [4:0] v58_0_addr_3_reg_1003_pp0_iter2_reg;
reg   [4:0] v58_0_addr_3_reg_1003_pp0_iter3_reg;
reg   [4:0] v58_0_addr_3_reg_1003_pp0_iter4_reg;
wire   [31:0] v101_fu_700_p1;
reg   [31:0] v104_reg_1013;
reg   [4:0] v58_1_addr_3_reg_1018;
reg   [4:0] v58_1_addr_3_reg_1018_pp0_iter2_reg;
reg   [4:0] v58_1_addr_3_reg_1018_pp0_iter3_reg;
reg   [4:0] v58_1_addr_3_reg_1018_pp0_iter4_reg;
wire   [31:0] v107_fu_705_p1;
wire   [31:0] v70_fu_710_p3;
reg   [31:0] v70_reg_1028;
wire   [31:0] v76_fu_717_p3;
reg   [31:0] v76_reg_1033;
wire   [31:0] v82_fu_724_p3;
reg   [31:0] v82_reg_1038;
reg   [31:0] v78_reg_1043;
reg   [31:0] v84_reg_1048;
wire   [31:0] v88_fu_731_p3;
reg   [31:0] v88_reg_1053;
wire   [31:0] v94_fu_737_p3;
reg   [31:0] v94_reg_1058;
wire   [31:0] v100_fu_743_p3;
reg   [31:0] v100_reg_1063;
wire   [31:0] v106_fu_749_p3;
reg   [31:0] v106_reg_1068;
reg   [31:0] v90_reg_1073;
reg   [31:0] v96_reg_1078;
reg   [31:0] v102_reg_1083;
reg   [31:0] v108_reg_1088;
reg   [31:0] v79_reg_1093;
reg   [31:0] v85_reg_1098;
reg   [31:0] v103_reg_1103;
reg   [31:0] v109_reg_1108;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln102_fu_467_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_482_p1;
wire   [63:0] zext_ln117_fu_525_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln124_fu_539_p1;
wire   [63:0] zext_ln131_fu_570_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln138_fu_586_p1;
wire   [63:0] zext_ln145_fu_609_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln152_fu_622_p1;
wire   [63:0] zext_ln98_1_fu_632_p1;
wire   [63:0] zext_ln98_fu_627_p1;
wire   [63:0] zext_ln114_fu_650_p1;
wire   [63:0] zext_ln128_fu_681_p1;
wire   [63:0] zext_ln142_fu_694_p1;
reg   [6:0] v60_fu_108;
wire   [6:0] add_ln98_fu_487_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_5;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v57_0_ce0_local;
reg    v58_0_ce1_local;
reg   [4:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [4:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg   [31:0] v58_0_d0_local;
reg    v57_1_ce0_local;
reg    v57_2_ce0_local;
reg    v57_3_ce0_local;
reg    v57_4_ce0_local;
reg    v57_5_ce0_local;
reg    v57_6_ce0_local;
reg    v57_7_ce0_local;
reg    v58_1_ce1_local;
reg   [4:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [4:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
reg   [31:0] v58_1_d0_local;
reg   [31:0] grp_fu_395_p0;
reg   [31:0] grp_fu_395_p1;
reg   [31:0] grp_fu_399_p0;
reg   [31:0] grp_fu_399_p1;
reg   [31:0] grp_fu_403_p0;
reg   [31:0] grp_fu_407_p0;
wire   [11:0] tmp_3_fu_459_p3;
wire   [11:0] add_ln_fu_472_p4;
wire   [11:0] tmp_9_fu_516_p4;
wire   [11:0] add_ln1_fu_530_p4;
wire   [11:0] tmp_17_fu_561_p5;
wire   [11:0] add_ln2_fu_575_p6;
wire   [11:0] tmp_26_fu_601_p4;
wire   [11:0] add_ln3_fu_614_p4;
wire   [4:0] or_ln114_1_fu_643_p3;
wire   [4:0] or_ln128_1_fu_673_p4;
wire   [4:0] or_ln142_1_fu_687_p3;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_441_p3 == 1'd0))) begin
            v60_fu_108 <= add_ln98_fu_487_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_fu_108 <= 7'd0;
        end
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
        lshr_ln98_1_reg_820 <= {{v60_5_reg_794[5:3]}};
        tmp_15_reg_846 <= v60_5_reg_794[32'd1];
        tmp_6_reg_831 <= {{v60_5_reg_794[5:2]}};
        v104_reg_1013 <= v57_7_q0;
        v58_0_addr_2_reg_983[0] <= zext_ln128_fu_681_p1[0];
v58_0_addr_2_reg_983[4 : 2] <= zext_ln128_fu_681_p1[4 : 2];
        v58_0_addr_2_reg_983_pp0_iter2_reg[0] <= v58_0_addr_2_reg_983[0];
v58_0_addr_2_reg_983_pp0_iter2_reg[4 : 2] <= v58_0_addr_2_reg_983[4 : 2];
        v58_0_addr_2_reg_983_pp0_iter3_reg[0] <= v58_0_addr_2_reg_983_pp0_iter2_reg[0];
v58_0_addr_2_reg_983_pp0_iter3_reg[4 : 2] <= v58_0_addr_2_reg_983_pp0_iter2_reg[4 : 2];
        v58_0_addr_3_reg_1003[4 : 2] <= zext_ln142_fu_694_p1[4 : 2];
        v58_0_addr_3_reg_1003_pp0_iter2_reg[4 : 2] <= v58_0_addr_3_reg_1003[4 : 2];
        v58_0_addr_3_reg_1003_pp0_iter3_reg[4 : 2] <= v58_0_addr_3_reg_1003_pp0_iter2_reg[4 : 2];
        v58_0_addr_3_reg_1003_pp0_iter4_reg[4 : 2] <= v58_0_addr_3_reg_1003_pp0_iter3_reg[4 : 2];
        v58_1_addr_2_reg_993[0] <= zext_ln128_fu_681_p1[0];
v58_1_addr_2_reg_993[4 : 2] <= zext_ln128_fu_681_p1[4 : 2];
        v58_1_addr_2_reg_993_pp0_iter2_reg[0] <= v58_1_addr_2_reg_993[0];
v58_1_addr_2_reg_993_pp0_iter2_reg[4 : 2] <= v58_1_addr_2_reg_993[4 : 2];
        v58_1_addr_2_reg_993_pp0_iter3_reg[0] <= v58_1_addr_2_reg_993_pp0_iter2_reg[0];
v58_1_addr_2_reg_993_pp0_iter3_reg[4 : 2] <= v58_1_addr_2_reg_993_pp0_iter2_reg[4 : 2];
        v58_1_addr_3_reg_1018[4 : 2] <= zext_ln142_fu_694_p1[4 : 2];
        v58_1_addr_3_reg_1018_pp0_iter2_reg[4 : 2] <= v58_1_addr_3_reg_1018[4 : 2];
        v58_1_addr_3_reg_1018_pp0_iter3_reg[4 : 2] <= v58_1_addr_3_reg_1018_pp0_iter2_reg[4 : 2];
        v58_1_addr_3_reg_1018_pp0_iter4_reg[4 : 2] <= v58_1_addr_3_reg_1018_pp0_iter3_reg[4 : 2];
        v63_reg_963 <= v63_fu_666_p3;
        v70_reg_1028 <= v70_fu_710_p3;
        v76_reg_1033 <= v76_fu_717_p3;
        v82_reg_1038 <= v82_fu_724_p3;
        v86_reg_978 <= v57_4_q0;
        v92_reg_988 <= v57_5_q0;
        v98_reg_998 <= v57_6_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_411 <= v114_q1;
        reg_415 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_419 <= grp_fu_588_p_dout0;
        reg_424 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_2_cast_reg_805 <= {{ap_sig_allocacmp_v60_5[5:1]}};
        tmp_reg_801 <= ap_sig_allocacmp_v60_5[32'd6];
        v58_0_addr_1_reg_918[4 : 1] <= zext_ln114_fu_650_p1[4 : 1];
        v58_0_addr_1_reg_918_pp0_iter2_reg[4 : 1] <= v58_0_addr_1_reg_918[4 : 1];
        v58_0_addr_1_reg_918_pp0_iter3_reg[4 : 1] <= v58_0_addr_1_reg_918_pp0_iter2_reg[4 : 1];
        v58_0_addr_reg_898 <= zext_ln98_fu_627_p1;
        v58_0_addr_reg_898_pp0_iter2_reg <= v58_0_addr_reg_898;
        v58_0_addr_reg_898_pp0_iter3_reg <= v58_0_addr_reg_898_pp0_iter2_reg;
        v58_1_addr_1_reg_928[4 : 1] <= zext_ln114_fu_650_p1[4 : 1];
        v58_1_addr_1_reg_928_pp0_iter2_reg[4 : 1] <= v58_1_addr_1_reg_928[4 : 1];
        v58_1_addr_1_reg_928_pp0_iter3_reg[4 : 1] <= v58_1_addr_1_reg_928_pp0_iter2_reg[4 : 1];
        v58_1_addr_reg_908 <= zext_ln98_fu_627_p1;
        v58_1_addr_reg_908_pp0_iter2_reg <= v58_1_addr_reg_908;
        v58_1_addr_reg_908_pp0_iter3_reg <= v58_1_addr_reg_908_pp0_iter2_reg;
        v59_cast_reg_787[5 : 0] <= v59_cast_fu_429_p1[5 : 0];
        v60_5_reg_794 <= ap_sig_allocacmp_v60_5;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_1063 <= v100_fu_743_p3;
        v106_reg_1068 <= v106_fu_749_p3;
        v88_reg_1053 <= v88_fu_731_p3;
        v94_reg_1058 <= v94_fu_737_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_1083 <= grp_fu_596_p_dout0;
        v108_reg_1088 <= grp_fu_600_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_1103 <= grp_fu_588_p_dout0;
        v109_reg_1108 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v66_reg_968 <= grp_fu_596_p_dout0;
        v72_reg_973 <= grp_fu_600_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v78_reg_1043 <= grp_fu_596_p_dout0;
        v84_reg_1048 <= grp_fu_600_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v79_reg_1093 <= grp_fu_588_p_dout0;
        v85_reg_1098 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v90_reg_1073 <= grp_fu_596_p_dout0;
        v96_reg_1078 <= grp_fu_600_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_801 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v60_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_5 = v60_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_395_p0 = v100_reg_1063;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_395_p0 = v88_reg_1053;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_395_p0 = v76_reg_1033;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_395_p0 = v63_reg_963;
    end else begin
        grp_fu_395_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_395_p1 = v102_reg_1083;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_395_p1 = v90_reg_1073;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_395_p1 = v78_reg_1043;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_395_p1 = v66_reg_968;
    end else begin
        grp_fu_395_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p0 = v106_reg_1068;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p0 = v94_reg_1058;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p0 = v82_reg_1038;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p0 = v70_reg_1028;
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p1 = v108_reg_1088;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p1 = v96_reg_1078;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p1 = v84_reg_1048;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p1 = v72_reg_973;
    end else begin
        grp_fu_399_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p0 = v101_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_403_p0 = v89_fu_656_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p0 = v77_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p0 = v64_fu_551_p1;
    end else begin
        grp_fu_403_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_407_p0 = v107_fu_705_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_407_p0 = v95_fu_661_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p0 = v83_fu_596_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_407_p0 = v71_fu_556_p1;
    end else begin
        grp_fu_407_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_address0_local = zext_ln152_fu_622_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_address0_local = zext_ln138_fu_586_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_address0_local = zext_ln124_fu_539_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_address0_local = zext_ln110_fu_482_p1;
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
            v114_address1_local = zext_ln145_fu_609_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_address1_local = zext_ln131_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_address1_local = zext_ln117_fu_525_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_address1_local = zext_ln102_fu_467_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_6_ce0_local = 1'b1;
    end else begin
        v57_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_7_ce0_local = 1'b1;
    end else begin
        v57_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address0_local = v58_0_addr_3_reg_1003_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_1_reg_918_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = zext_ln142_fu_694_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln114_fu_650_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_2_reg_983_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_898_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address1_local = zext_ln128_fu_681_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_fu_627_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_d0_local = v103_reg_1103;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_d0_local = v79_reg_1093;
    end else begin
        v58_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        v58_1_address0_local = v58_1_addr_3_reg_1018_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_1_reg_928_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = zext_ln142_fu_694_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln114_fu_650_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_2_reg_993_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_908_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address1_local = zext_ln128_fu_681_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_fu_627_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_d0_local = v109_reg_1108;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_d0_local = v85_reg_1098;
    end else begin
        v58_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign add_ln1_fu_530_p4 = {{{tmp_6_fu_507_p4}, {2'd3}}, {zext_ln97}};
assign add_ln2_fu_575_p6 = {{{{{lshr_ln98_1_reg_820}, {1'd1}}, {tmp_15_reg_846}}, {1'd1}}, {zext_ln97}};
assign add_ln3_fu_614_p4 = {{{lshr_ln98_1_reg_820}, {3'd7}}, {zext_ln97}};
assign add_ln98_fu_487_p2 = (ap_sig_allocacmp_v60_5 + 7'd8);
assign add_ln_fu_472_p4 = {{{tmp_2_cast_fu_449_p4}, {1'd1}}, {zext_ln97}};
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
assign grp_fu_588_p_ce = 1'b1;
assign grp_fu_588_p_din0 = grp_fu_395_p0;
assign grp_fu_588_p_din1 = grp_fu_395_p1;
assign grp_fu_588_p_opcode = 2'd0;
assign grp_fu_592_p_ce = 1'b1;
assign grp_fu_592_p_din0 = grp_fu_399_p0;
assign grp_fu_592_p_din1 = grp_fu_399_p1;
assign grp_fu_592_p_opcode = 2'd0;
assign grp_fu_596_p_ce = 1'b1;
assign grp_fu_596_p_din0 = grp_fu_403_p0;
assign grp_fu_596_p_din1 = v65;
assign grp_fu_600_p_ce = 1'b1;
assign grp_fu_600_p_din0 = grp_fu_407_p0;
assign grp_fu_600_p_din1 = v65;
assign or_ln114_1_fu_643_p3 = {{tmp_6_reg_831}, {1'd1}};
assign or_ln128_1_fu_673_p4 = {{{lshr_ln98_1_reg_820}, {1'd1}}, {tmp_15_reg_846}};
assign or_ln142_1_fu_687_p3 = {{lshr_ln98_1_reg_820}, {2'd3}};
assign tmp_17_fu_561_p5 = {{{{lshr_ln98_1_reg_820}, {1'd1}}, {tmp_15_reg_846}}, {v59_cast_reg_787}};
assign tmp_26_fu_601_p4 = {{{lshr_ln98_1_reg_820}, {2'd3}}, {v59_cast_reg_787}};
assign tmp_2_cast_fu_449_p4 = {{ap_sig_allocacmp_v60_5[5:1]}};
assign tmp_3_fu_459_p3 = {{tmp_2_cast_fu_449_p4}, {v59_cast_fu_429_p1}};
assign tmp_6_fu_507_p4 = {{v60_5_reg_794[5:2]}};
assign tmp_9_fu_516_p4 = {{{tmp_6_fu_507_p4}, {1'd1}}, {v59_cast_reg_787}};
assign tmp_fu_441_p3 = ap_sig_allocacmp_v60_5[32'd6];
assign v100_fu_743_p3 = ((cmp7[0:0] == 1'b1) ? v98_reg_998 : v58_0_q0);
assign v101_fu_700_p1 = reg_411;
assign v106_fu_749_p3 = ((cmp7[0:0] == 1'b1) ? v104_reg_1013 : v58_1_q0);
assign v107_fu_705_p1 = reg_415;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v57_0_address0 = zext_ln98_1_fu_632_p1;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_1_address0 = zext_ln98_1_fu_632_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_2_address0 = zext_ln98_1_fu_632_p1;
assign v57_2_ce0 = v57_2_ce0_local;
assign v57_3_address0 = zext_ln98_1_fu_632_p1;
assign v57_3_ce0 = v57_3_ce0_local;
assign v57_4_address0 = zext_ln98_1_fu_632_p1;
assign v57_4_ce0 = v57_4_ce0_local;
assign v57_5_address0 = zext_ln98_1_fu_632_p1;
assign v57_5_ce0 = v57_5_ce0_local;
assign v57_6_address0 = zext_ln98_1_fu_632_p1;
assign v57_6_ce0 = v57_6_ce0_local;
assign v57_7_address0 = zext_ln98_1_fu_632_p1;
assign v57_7_ce0 = v57_7_ce0_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = v58_0_d0_local;
assign v58_0_d1 = reg_419;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = v58_1_d0_local;
assign v58_1_d1 = reg_424;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v59_cast_fu_429_p1 = v59;
assign v63_fu_666_p3 = ((cmp7[0:0] == 1'b1) ? v57_0_q0 : v58_0_q1);
assign v64_fu_551_p1 = reg_411;
assign v70_fu_710_p3 = ((cmp7[0:0] == 1'b1) ? v57_1_q0 : v58_1_q1);
assign v71_fu_556_p1 = reg_415;
assign v76_fu_717_p3 = ((cmp7[0:0] == 1'b1) ? v57_2_q0 : v58_0_q0);
assign v77_fu_591_p1 = reg_411;
assign v82_fu_724_p3 = ((cmp7[0:0] == 1'b1) ? v57_3_q0 : v58_1_q0);
assign v83_fu_596_p1 = reg_415;
assign v88_fu_731_p3 = ((cmp7[0:0] == 1'b1) ? v86_reg_978 : v58_0_q1);
assign v89_fu_656_p1 = reg_411;
assign v94_fu_737_p3 = ((cmp7[0:0] == 1'b1) ? v92_reg_988 : v58_1_q1);
assign v95_fu_661_p1 = reg_415;
assign zext_ln102_fu_467_p1 = tmp_3_fu_459_p3;
assign zext_ln110_fu_482_p1 = add_ln_fu_472_p4;
assign zext_ln114_fu_650_p1 = or_ln114_1_fu_643_p3;
assign zext_ln117_fu_525_p1 = tmp_9_fu_516_p4;
assign zext_ln124_fu_539_p1 = add_ln1_fu_530_p4;
assign zext_ln128_fu_681_p1 = or_ln128_1_fu_673_p4;
assign zext_ln131_fu_570_p1 = tmp_17_fu_561_p5;
assign zext_ln138_fu_586_p1 = add_ln2_fu_575_p6;
assign zext_ln142_fu_694_p1 = or_ln142_1_fu_687_p3;
assign zext_ln145_fu_609_p1 = tmp_26_fu_601_p4;
assign zext_ln152_fu_622_p1 = add_ln3_fu_614_p4;
assign zext_ln98_1_fu_632_p1 = lshr_ln98_1_reg_820;
assign zext_ln98_fu_627_p1 = tmp_2_cast_reg_805;
always @ (posedge ap_clk) begin
    v59_cast_reg_787[6] <= 1'b0;
    v58_0_addr_1_reg_918[0] <= 1'b1;
    v58_0_addr_1_reg_918_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_918_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_928[0] <= 1'b1;
    v58_1_addr_1_reg_928_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_928_pp0_iter3_reg[0] <= 1'b1;
    v58_0_addr_2_reg_983[1] <= 1'b1;
    v58_0_addr_2_reg_983_pp0_iter2_reg[1] <= 1'b1;
    v58_0_addr_2_reg_983_pp0_iter3_reg[1] <= 1'b1;
    v58_1_addr_2_reg_993[1] <= 1'b1;
    v58_1_addr_2_reg_993_pp0_iter2_reg[1] <= 1'b1;
    v58_1_addr_2_reg_993_pp0_iter3_reg[1] <= 1'b1;
    v58_0_addr_3_reg_1003[1:0] <= 2'b11;
    v58_0_addr_3_reg_1003_pp0_iter2_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1003_pp0_iter3_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1003_pp0_iter4_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1018[1:0] <= 2'b11;
    v58_1_addr_3_reg_1018_pp0_iter2_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1018_pp0_iter3_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1018_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 