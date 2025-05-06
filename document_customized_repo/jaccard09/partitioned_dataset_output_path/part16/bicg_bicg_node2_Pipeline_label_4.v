
module bicg_bicg_node2_Pipeline_label_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v66,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,v67,v138_0_address0,v138_0_ce0,v138_0_q0,v138_0_address1,v138_0_ce1,v138_0_q1,v138_1_address0,v138_1_ce0,v138_1_q0,v138_1_address1,v138_1_ce1,v138_1_q1,v69,cmp10,v70_15_out,v70_15_out_ap_vld,grp_fu_1434_p_din0,grp_fu_1434_p_din1,grp_fu_1434_p_opcode,grp_fu_1434_p_dout0,grp_fu_1434_p_ce,grp_fu_1438_p_din0,grp_fu_1438_p_din1,grp_fu_1438_p_opcode,grp_fu_1438_p_dout0,grp_fu_1438_p_ce,grp_fu_1442_p_din0,grp_fu_1442_p_din1,grp_fu_1442_p_dout0,grp_fu_1442_p_ce,grp_fu_1446_p_din0,grp_fu_1446_p_din1,grp_fu_1446_p_dout0,grp_fu_1446_p_ce);  
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
input  [31:0] v66;
output  [4:0] v65_1_address0;
output   v65_1_ce0;
output   v65_1_we0;
output  [31:0] v65_1_d0;
input  [31:0] v65_1_q0;
output  [4:0] v65_1_address1;
output   v65_1_ce1;
output   v65_1_we1;
output  [31:0] v65_1_d1;
input  [31:0] v65_1_q1;
output  [4:0] v65_0_address0;
output   v65_0_ce0;
output   v65_0_we0;
output  [31:0] v65_0_d0;
input  [31:0] v65_0_q0;
output  [4:0] v65_0_address1;
output   v65_0_ce1;
output   v65_0_we1;
output  [31:0] v65_0_d1;
input  [31:0] v65_0_q1;
input  [5:0] v67;
output  [10:0] v138_0_address0;
output   v138_0_ce0;
input  [31:0] v138_0_q0;
output  [10:0] v138_0_address1;
output   v138_0_ce1;
input  [31:0] v138_0_q1;
output  [10:0] v138_1_address0;
output   v138_1_ce0;
input  [31:0] v138_1_q0;
output  [10:0] v138_1_address1;
output   v138_1_ce1;
input  [31:0] v138_1_q1;
input  [31:0] v69;
input  [0:0] cmp10;
output  [31:0] v70_15_out;
output   v70_15_out_ap_vld;
output  [31:0] grp_fu_1434_p_din0;
output  [31:0] grp_fu_1434_p_din1;
output  [1:0] grp_fu_1434_p_opcode;
input  [31:0] grp_fu_1434_p_dout0;
output   grp_fu_1434_p_ce;
output  [31:0] grp_fu_1438_p_din0;
output  [31:0] grp_fu_1438_p_din1;
output  [1:0] grp_fu_1438_p_opcode;
input  [31:0] grp_fu_1438_p_dout0;
output   grp_fu_1438_p_ce;
output  [31:0] grp_fu_1442_p_din0;
output  [31:0] grp_fu_1442_p_din1;
input  [31:0] grp_fu_1442_p_dout0;
output   grp_fu_1442_p_ce;
output  [31:0] grp_fu_1446_p_din0;
output  [31:0] grp_fu_1446_p_din1;
input  [31:0] grp_fu_1446_p_dout0;
output   grp_fu_1446_p_ce;
reg ap_idle;
reg v70_15_out_ap_vld;
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
reg   [0:0] tmp_49_reg_870;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_387_p3;
reg   [31:0] reg_422;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_394_p3;
reg   [31:0] reg_426;
reg   [31:0] reg_430;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_435;
reg   [6:0] v68_reg_857;
reg   [0:0] tmp_49_reg_870_pp0_iter1_reg;
reg   [0:0] tmp_49_reg_870_pp0_iter2_reg;
reg   [0:0] tmp_49_reg_870_pp0_iter3_reg;
wire   [0:0] icmp_ln115_fu_505_p2;
reg   [0:0] icmp_ln115_reg_894;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] tmp_50_fu_510_p3;
reg   [0:0] tmp_50_reg_899;
wire   [31:0] select_ln119_fu_517_p3;
reg   [31:0] select_ln119_reg_907;
wire   [31:0] select_ln128_fu_525_p3;
reg   [31:0] select_ln128_reg_912;
wire   [31:0] v71_fu_575_p3;
reg   [31:0] v71_reg_937;
wire   [31:0] v75_fu_583_p1;
wire   [31:0] v83_fu_587_p1;
wire   [0:0] tmp_51_fu_591_p3;
reg   [0:0] tmp_51_reg_953;
wire   [1:0] tmp_11_fu_598_p4;
reg   [1:0] tmp_11_reg_958;
wire   [31:0] v91_fu_646_p1;
wire   [31:0] v99_fu_651_p1;
reg   [4:0] v65_0_addr_reg_1014;
reg   [4:0] v65_0_addr_reg_1014_pp0_iter2_reg;
reg   [4:0] v65_0_addr_reg_1014_pp0_iter3_reg;
reg   [4:0] v65_1_addr_reg_1019;
reg   [4:0] v65_1_addr_reg_1019_pp0_iter2_reg;
reg   [4:0] v65_1_addr_reg_1019_pp0_iter3_reg;
reg   [4:0] v65_0_addr_1_reg_1024;
reg   [4:0] v65_0_addr_1_reg_1024_pp0_iter2_reg;
reg   [4:0] v65_0_addr_1_reg_1024_pp0_iter3_reg;
reg   [4:0] v65_1_addr_1_reg_1029;
reg   [4:0] v65_1_addr_1_reg_1029_pp0_iter2_reg;
reg   [4:0] v65_1_addr_1_reg_1029_pp0_iter3_reg;
reg   [2:0] tmp_9_reg_1034;
wire   [31:0] v107_fu_741_p1;
wire   [31:0] v115_fu_746_p1;
wire   [31:0] select_ln173_fu_751_p3;
reg   [31:0] select_ln173_reg_1050;
wire   [31:0] select_ln183_fu_758_p3;
reg   [31:0] select_ln183_reg_1055;
wire   [31:0] grp_fu_401_p3;
reg   [31:0] v74_reg_1060;
reg   [31:0] v76_reg_1065;
reg   [31:0] v84_reg_1070;
reg   [4:0] v65_0_addr_2_reg_1075;
reg   [4:0] v65_0_addr_2_reg_1075_pp0_iter2_reg;
reg   [4:0] v65_0_addr_2_reg_1075_pp0_iter3_reg;
reg   [4:0] v65_1_addr_2_reg_1080;
reg   [4:0] v65_1_addr_2_reg_1080_pp0_iter2_reg;
reg   [4:0] v65_1_addr_2_reg_1080_pp0_iter3_reg;
reg   [4:0] v65_0_addr_3_reg_1085;
reg   [4:0] v65_0_addr_3_reg_1085_pp0_iter2_reg;
reg   [4:0] v65_0_addr_3_reg_1085_pp0_iter3_reg;
reg   [4:0] v65_0_addr_3_reg_1085_pp0_iter4_reg;
wire   [31:0] v123_fu_792_p1;
reg   [4:0] v65_1_addr_3_reg_1095;
reg   [4:0] v65_1_addr_3_reg_1095_pp0_iter2_reg;
reg   [4:0] v65_1_addr_3_reg_1095_pp0_iter3_reg;
reg   [4:0] v65_1_addr_3_reg_1095_pp0_iter4_reg;
wire   [31:0] v131_fu_796_p1;
reg   [31:0] v81_reg_1105;
wire   [31:0] grp_fu_408_p3;
reg   [31:0] v90_reg_1110;
wire   [31:0] grp_fu_415_p3;
reg   [31:0] v98_1_reg_1115;
reg   [31:0] v92_reg_1120;
reg   [31:0] v100_reg_1125;
wire   [31:0] v82_fu_800_p3;
reg   [31:0] v106_reg_1135;
wire   [31:0] v114_fu_807_p3;
reg   [31:0] v114_reg_1140;
reg   [31:0] v122_reg_1145;
reg   [31:0] v130_reg_1150;
reg   [31:0] v108_reg_1155;
reg   [31:0] v116_reg_1160;
reg   [31:0] v124_reg_1165;
reg   [31:0] v132_reg_1170;
reg   [31:0] v93_reg_1175;
reg   [31:0] v101_1_reg_1180;
reg   [31:0] v125_reg_1185;
reg   [31:0] v133_reg_1190;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln119_fu_473_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln128_fu_499_p1;
wire   [63:0] zext_ln137_fu_551_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln146_fu_566_p1;
wire   [63:0] zext_ln155_fu_616_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln164_fu_635_p1;
wire   [63:0] zext_ln173_fu_664_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln183_fu_678_p1;
wire   [63:0] zext_ln113_fu_703_p1;
wire   [63:0] zext_ln134_fu_726_p1;
wire   [63:0] zext_ln152_fu_773_p1;
wire   [63:0] zext_ln170_fu_786_p1;
reg   [31:0] v66_15_fu_104;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v126_fu_108;
wire   [6:0] add_ln112_fu_684_p2;
reg   [6:0] ap_sig_allocacmp_v68;
wire    ap_block_pp0_stage3_01001;
reg    v138_0_ce1_local;
reg   [10:0] v138_0_address1_local;
reg    v138_0_ce0_local;
reg   [10:0] v138_0_address0_local;
reg    v138_1_ce1_local;
reg   [10:0] v138_1_address1_local;
reg    v138_1_ce0_local;
reg   [10:0] v138_1_address0_local;
reg    v65_0_ce1_local;
reg   [4:0] v65_0_address1_local;
reg    v65_0_ce0_local;
reg   [4:0] v65_0_address0_local;
reg    v65_0_we1_local;
reg    v65_0_we0_local;
reg   [31:0] v65_0_d0_local;
reg    v65_1_ce1_local;
reg   [4:0] v65_1_address1_local;
reg    v65_1_ce0_local;
reg   [4:0] v65_1_address0_local;
reg    v65_1_we1_local;
reg    v65_1_we0_local;
reg   [31:0] v65_1_d0_local;
reg   [31:0] grp_fu_371_p0;
reg   [31:0] grp_fu_371_p1;
reg   [31:0] grp_fu_375_p0;
reg   [31:0] grp_fu_375_p1;
reg   [31:0] grp_fu_379_p0;
reg   [31:0] grp_fu_379_p1;
reg   [31:0] grp_fu_383_p0;
reg   [31:0] grp_fu_383_p1;
wire   [4:0] trunc_ln112_fu_461_p1;
wire   [10:0] tmp_fu_465_p3;
wire   [3:0] tmp_1_fu_479_p4;
wire   [10:0] tmp_2_fu_489_p4;
wire   [2:0] tmp_4_fu_533_p4;
wire   [10:0] tmp_6_fu_542_p4;
wire   [10:0] tmp_8_fu_557_p4;
wire   [10:0] tmp_13_fu_607_p4;
wire   [10:0] tmp_16_fu_622_p6;
wire   [10:0] tmp_20_fu_656_p4;
wire   [10:0] tmp_22_fu_670_p4;
wire   [4:0] lshr_ln_fu_694_p4;
wire   [3:0] tmp_3_fu_709_p4;
wire   [4:0] or_ln_fu_718_p3;
wire   [4:0] or_ln1_fu_765_p4;
wire   [4:0] or_ln2_fu_779_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 v66_15_fu_104 = 32'd0;
#0 v126_fu_108 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v126_fu_108 <= 7'd0;
    end else if (((tmp_49_reg_870 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v126_fu_108 <= add_ln112_fu_684_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_15_fu_104 <= v66;
    end else if (((tmp_49_reg_870 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_15_fu_104 <= v71_fu_575_p3;
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
        icmp_ln115_reg_894 <= icmp_ln115_fu_505_p2;
        select_ln119_reg_907 <= select_ln119_fu_517_p3;
        select_ln128_reg_912 <= select_ln128_fu_525_p3;
        tmp_50_reg_899 <= v68_reg_857[32'd5];
        v65_0_addr_2_reg_1075[0] <= zext_ln152_fu_773_p1[0];
v65_0_addr_2_reg_1075[4 : 2] <= zext_ln152_fu_773_p1[4 : 2];
        v65_0_addr_2_reg_1075_pp0_iter2_reg[0] <= v65_0_addr_2_reg_1075[0];
v65_0_addr_2_reg_1075_pp0_iter2_reg[4 : 2] <= v65_0_addr_2_reg_1075[4 : 2];
        v65_0_addr_2_reg_1075_pp0_iter3_reg[0] <= v65_0_addr_2_reg_1075_pp0_iter2_reg[0];
v65_0_addr_2_reg_1075_pp0_iter3_reg[4 : 2] <= v65_0_addr_2_reg_1075_pp0_iter2_reg[4 : 2];
        v65_0_addr_3_reg_1085[4 : 2] <= zext_ln170_fu_786_p1[4 : 2];
        v65_0_addr_3_reg_1085_pp0_iter2_reg[4 : 2] <= v65_0_addr_3_reg_1085[4 : 2];
        v65_0_addr_3_reg_1085_pp0_iter3_reg[4 : 2] <= v65_0_addr_3_reg_1085_pp0_iter2_reg[4 : 2];
        v65_0_addr_3_reg_1085_pp0_iter4_reg[4 : 2] <= v65_0_addr_3_reg_1085_pp0_iter3_reg[4 : 2];
        v65_1_addr_2_reg_1080[0] <= zext_ln152_fu_773_p1[0];
v65_1_addr_2_reg_1080[4 : 2] <= zext_ln152_fu_773_p1[4 : 2];
        v65_1_addr_2_reg_1080_pp0_iter2_reg[0] <= v65_1_addr_2_reg_1080[0];
v65_1_addr_2_reg_1080_pp0_iter2_reg[4 : 2] <= v65_1_addr_2_reg_1080[4 : 2];
        v65_1_addr_2_reg_1080_pp0_iter3_reg[0] <= v65_1_addr_2_reg_1080_pp0_iter2_reg[0];
v65_1_addr_2_reg_1080_pp0_iter3_reg[4 : 2] <= v65_1_addr_2_reg_1080_pp0_iter2_reg[4 : 2];
        v65_1_addr_3_reg_1095[4 : 2] <= zext_ln170_fu_786_p1[4 : 2];
        v65_1_addr_3_reg_1095_pp0_iter2_reg[4 : 2] <= v65_1_addr_3_reg_1095[4 : 2];
        v65_1_addr_3_reg_1095_pp0_iter3_reg[4 : 2] <= v65_1_addr_3_reg_1095_pp0_iter2_reg[4 : 2];
        v65_1_addr_3_reg_1095_pp0_iter4_reg[4 : 2] <= v65_1_addr_3_reg_1095_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_422 <= grp_fu_387_p3;
        reg_426 <= grp_fu_394_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_430 <= grp_fu_1434_p_dout0;
        reg_435 <= grp_fu_1438_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln173_reg_1050 <= select_ln173_fu_751_p3;
        select_ln183_reg_1055 <= select_ln183_fu_758_p3;
        tmp_49_reg_870 <= ap_sig_allocacmp_v68[32'd6];
        tmp_49_reg_870_pp0_iter1_reg <= tmp_49_reg_870;
        tmp_49_reg_870_pp0_iter2_reg <= tmp_49_reg_870_pp0_iter1_reg;
        tmp_49_reg_870_pp0_iter3_reg <= tmp_49_reg_870_pp0_iter2_reg;
        tmp_9_reg_1034 <= {{v68_reg_857[5:3]}};
        v65_0_addr_1_reg_1024[4 : 1] <= zext_ln134_fu_726_p1[4 : 1];
        v65_0_addr_1_reg_1024_pp0_iter2_reg[4 : 1] <= v65_0_addr_1_reg_1024[4 : 1];
        v65_0_addr_1_reg_1024_pp0_iter3_reg[4 : 1] <= v65_0_addr_1_reg_1024_pp0_iter2_reg[4 : 1];
        v65_0_addr_reg_1014 <= zext_ln113_fu_703_p1;
        v65_0_addr_reg_1014_pp0_iter2_reg <= v65_0_addr_reg_1014;
        v65_0_addr_reg_1014_pp0_iter3_reg <= v65_0_addr_reg_1014_pp0_iter2_reg;
        v65_1_addr_1_reg_1029[4 : 1] <= zext_ln134_fu_726_p1[4 : 1];
        v65_1_addr_1_reg_1029_pp0_iter2_reg[4 : 1] <= v65_1_addr_1_reg_1029[4 : 1];
        v65_1_addr_1_reg_1029_pp0_iter3_reg[4 : 1] <= v65_1_addr_1_reg_1029_pp0_iter2_reg[4 : 1];
        v65_1_addr_reg_1019 <= zext_ln113_fu_703_p1;
        v65_1_addr_reg_1019_pp0_iter2_reg <= v65_1_addr_reg_1019;
        v65_1_addr_reg_1019_pp0_iter3_reg <= v65_1_addr_reg_1019_pp0_iter2_reg;
        v68_reg_857 <= ap_sig_allocacmp_v68;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_11_reg_958 <= {{v68_reg_857[4:3]}};
        tmp_51_reg_953 <= v68_reg_857[32'd1];
        v114_reg_1140 <= v114_fu_807_p3;
        v71_reg_937 <= v71_fu_575_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_1125 <= grp_fu_1446_p_dout0;
        v106_reg_1135 <= grp_fu_401_p3;
        v122_reg_1145 <= grp_fu_408_p3;
        v130_reg_1150 <= grp_fu_415_p3;
        v92_reg_1120 <= grp_fu_1442_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v101_1_reg_1180 <= grp_fu_1438_p_dout0;
        v93_reg_1175 <= grp_fu_1434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v108_reg_1155 <= grp_fu_1442_p_dout0;
        v116_reg_1160 <= grp_fu_1446_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_reg_1165 <= grp_fu_1442_p_dout0;
        v132_reg_1170 <= grp_fu_1446_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v125_reg_1185 <= grp_fu_1434_p_dout0;
        v133_reg_1190 <= grp_fu_1438_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v74_reg_1060 <= grp_fu_401_p3;
        v76_reg_1065 <= grp_fu_1442_p_dout0;
        v81_reg_1105 <= v65_1_q1;
        v84_reg_1070 <= grp_fu_1446_p_dout0;
        v90_reg_1110 <= grp_fu_408_p3;
        v98_1_reg_1115 <= grp_fu_415_p3;
    end
end
always @ (*) begin
    if (((tmp_49_reg_870 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v68 = 7'd0;
    end else begin
        ap_sig_allocacmp_v68 = v126_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_371_p0 = v122_reg_1145;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_371_p0 = v106_reg_1135;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_371_p0 = v90_reg_1110;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p0 = v74_reg_1060;
    end else begin
        grp_fu_371_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_371_p1 = v124_reg_1165;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_371_p1 = v108_reg_1155;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_371_p1 = v92_reg_1120;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p1 = v76_reg_1065;
    end else begin
        grp_fu_371_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_375_p0 = v130_reg_1150;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_375_p0 = v114_reg_1140;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_375_p0 = v98_1_reg_1115;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p0 = v82_fu_800_p3;
    end else begin
        grp_fu_375_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_375_p1 = v132_reg_1170;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_375_p1 = v116_reg_1160;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_375_p1 = v100_reg_1125;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p1 = v84_reg_1070;
    end else begin
        grp_fu_375_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_379_p0 = v123_fu_792_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_379_p0 = v107_fu_741_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_379_p0 = v91_fu_646_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_379_p0 = v75_fu_583_p1;
    end else begin
        grp_fu_379_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_379_p1 = v71_reg_937;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_379_p1 = v71_fu_575_p3;
    end else begin
        grp_fu_379_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_383_p0 = v131_fu_796_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_383_p0 = v115_fu_746_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_383_p0 = v99_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_383_p0 = v83_fu_587_p1;
    end else begin
        grp_fu_383_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_383_p1 = v71_reg_937;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_383_p1 = v71_fu_575_p3;
    end else begin
        grp_fu_383_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_0_address0_local = zext_ln183_fu_678_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_0_address0_local = zext_ln164_fu_635_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_0_address0_local = zext_ln146_fu_566_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_0_address0_local = zext_ln128_fu_499_p1;
        end else begin
            v138_0_address0_local = 'bx;
        end
    end else begin
        v138_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_0_address1_local = zext_ln173_fu_664_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_0_address1_local = zext_ln155_fu_616_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_0_address1_local = zext_ln137_fu_551_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_0_address1_local = zext_ln119_fu_473_p1;
        end else begin
            v138_0_address1_local = 'bx;
        end
    end else begin
        v138_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v138_0_ce0_local = 1'b1;
    end else begin
        v138_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v138_0_ce1_local = 1'b1;
    end else begin
        v138_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_1_address0_local = zext_ln183_fu_678_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_1_address0_local = zext_ln164_fu_635_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_1_address0_local = zext_ln146_fu_566_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_1_address0_local = zext_ln128_fu_499_p1;
        end else begin
            v138_1_address0_local = 'bx;
        end
    end else begin
        v138_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_1_address1_local = zext_ln173_fu_664_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_1_address1_local = zext_ln155_fu_616_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_1_address1_local = zext_ln137_fu_551_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_1_address1_local = zext_ln119_fu_473_p1;
        end else begin
            v138_1_address1_local = 'bx;
        end
    end else begin
        v138_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v138_1_ce0_local = 1'b1;
    end else begin
        v138_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v138_1_ce1_local = 1'b1;
    end else begin
        v138_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address0_local = v65_0_addr_3_reg_1085_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address0_local = v65_0_addr_1_reg_1024_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address0_local = zext_ln170_fu_786_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address0_local = zext_ln134_fu_726_p1;
    end else begin
        v65_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address1_local = v65_0_addr_2_reg_1075_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address1_local = v65_0_addr_reg_1014_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address1_local = zext_ln152_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address1_local = zext_ln113_fu_703_p1;
    end else begin
        v65_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_0_ce0_local = 1'b1;
    end else begin
        v65_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_0_ce1_local = 1'b1;
    end else begin
        v65_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_d0_local = v125_reg_1185;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_d0_local = v93_reg_1175;
    end else begin
        v65_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_0_we0_local = 1'b1;
    end else begin
        v65_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_0_we1_local = 1'b1;
    end else begin
        v65_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address0_local = v65_1_addr_3_reg_1095_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address0_local = v65_1_addr_1_reg_1029_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address0_local = zext_ln170_fu_786_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address0_local = zext_ln134_fu_726_p1;
    end else begin
        v65_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address1_local = v65_1_addr_2_reg_1080_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address1_local = v65_1_addr_reg_1019_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address1_local = zext_ln152_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address1_local = zext_ln113_fu_703_p1;
    end else begin
        v65_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_1_ce0_local = 1'b1;
    end else begin
        v65_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_1_ce1_local = 1'b1;
    end else begin
        v65_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_d0_local = v133_reg_1190;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_d0_local = v101_1_reg_1180;
    end else begin
        v65_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_1_we0_local = 1'b1;
    end else begin
        v65_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_1_we1_local = 1'b1;
    end else begin
        v65_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_49_reg_870_pp0_iter3_reg == 1'd1))) begin
        v70_15_out_ap_vld = 1'b1;
    end else begin
        v70_15_out_ap_vld = 1'b0;
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
assign add_ln112_fu_684_p2 = (v68_reg_857 + 7'd8);
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
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_1434_p_ce = 1'b1;
assign grp_fu_1434_p_din0 = grp_fu_371_p0;
assign grp_fu_1434_p_din1 = grp_fu_371_p1;
assign grp_fu_1434_p_opcode = 2'd0;
assign grp_fu_1438_p_ce = 1'b1;
assign grp_fu_1438_p_din0 = grp_fu_375_p0;
assign grp_fu_1438_p_din1 = grp_fu_375_p1;
assign grp_fu_1438_p_opcode = 2'd0;
assign grp_fu_1442_p_ce = 1'b1;
assign grp_fu_1442_p_din0 = grp_fu_379_p0;
assign grp_fu_1442_p_din1 = grp_fu_379_p1;
assign grp_fu_1446_p_ce = 1'b1;
assign grp_fu_1446_p_din0 = grp_fu_383_p0;
assign grp_fu_1446_p_din1 = grp_fu_383_p1;
assign grp_fu_387_p3 = ((tmp_50_reg_899[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign grp_fu_394_p3 = ((tmp_50_reg_899[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign grp_fu_401_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_0_q1);
assign grp_fu_408_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_0_q0);
assign grp_fu_415_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_1_q0);
assign icmp_ln115_fu_505_p2 = ((v68_reg_857 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_694_p4 = {{v68_reg_857[5:1]}};
assign or_ln1_fu_765_p4 = {{{tmp_9_reg_1034}, {1'd1}}, {tmp_51_reg_953}};
assign or_ln2_fu_779_p3 = {{tmp_9_reg_1034}, {2'd3}};
assign or_ln_fu_718_p3 = {{tmp_3_fu_709_p4}, {1'd1}};
assign select_ln119_fu_517_p3 = ((tmp_50_fu_510_p3[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign select_ln128_fu_525_p3 = ((tmp_50_fu_510_p3[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign select_ln173_fu_751_p3 = ((tmp_50_reg_899[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign select_ln183_fu_758_p3 = ((tmp_50_reg_899[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign tmp_11_fu_598_p4 = {{v68_reg_857[4:3]}};
assign tmp_13_fu_607_p4 = {{{v67}, {tmp_11_fu_598_p4}}, {3'd4}};
assign tmp_16_fu_622_p6 = {{{{{v67}, {tmp_11_fu_598_p4}}, {1'd1}}, {tmp_51_fu_591_p3}}, {1'd1}};
assign tmp_1_fu_479_p4 = {{ap_sig_allocacmp_v68[4:1]}};
assign tmp_20_fu_656_p4 = {{{v67}, {tmp_11_reg_958}}, {3'd6}};
assign tmp_22_fu_670_p4 = {{{v67}, {tmp_11_reg_958}}, {3'd7}};
assign tmp_2_fu_489_p4 = {{{v67}, {tmp_1_fu_479_p4}}, {1'd1}};
assign tmp_3_fu_709_p4 = {{v68_reg_857[5:2]}};
assign tmp_4_fu_533_p4 = {{v68_reg_857[4:2]}};
assign tmp_50_fu_510_p3 = v68_reg_857[32'd5];
assign tmp_51_fu_591_p3 = v68_reg_857[32'd1];
assign tmp_6_fu_542_p4 = {{{v67}, {tmp_4_fu_533_p4}}, {2'd2}};
assign tmp_8_fu_557_p4 = {{{v67}, {tmp_4_fu_533_p4}}, {2'd3}};
assign tmp_fu_465_p3 = {{v67}, {trunc_ln112_fu_461_p1}};
assign trunc_ln112_fu_461_p1 = ap_sig_allocacmp_v68[4:0];
assign v107_fu_741_p1 = reg_422;
assign v114_fu_807_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_1_q1);
assign v115_fu_746_p1 = reg_426;
assign v123_fu_792_p1 = select_ln173_reg_1050;
assign v131_fu_796_p1 = select_ln183_reg_1055;
assign v138_0_address0 = v138_0_address0_local;
assign v138_0_address1 = v138_0_address1_local;
assign v138_0_ce0 = v138_0_ce0_local;
assign v138_0_ce1 = v138_0_ce1_local;
assign v138_1_address0 = v138_1_address0_local;
assign v138_1_address1 = v138_1_address1_local;
assign v138_1_ce0 = v138_1_ce0_local;
assign v138_1_ce1 = v138_1_ce1_local;
assign v65_0_address0 = v65_0_address0_local;
assign v65_0_address1 = v65_0_address1_local;
assign v65_0_ce0 = v65_0_ce0_local;
assign v65_0_ce1 = v65_0_ce1_local;
assign v65_0_d0 = v65_0_d0_local;
assign v65_0_d1 = reg_430;
assign v65_0_we0 = v65_0_we0_local;
assign v65_0_we1 = v65_0_we1_local;
assign v65_1_address0 = v65_1_address0_local;
assign v65_1_address1 = v65_1_address1_local;
assign v65_1_ce0 = v65_1_ce0_local;
assign v65_1_ce1 = v65_1_ce1_local;
assign v65_1_d0 = v65_1_d0_local;
assign v65_1_d1 = reg_435;
assign v65_1_we0 = v65_1_we0_local;
assign v65_1_we1 = v65_1_we1_local;
assign v70_15_out = v66_15_fu_104;
assign v71_fu_575_p3 = ((icmp_ln115_reg_894[0:0] == 1'b1) ? v69 : v66_15_fu_104);
assign v75_fu_583_p1 = select_ln119_reg_907;
assign v82_fu_800_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v81_reg_1105);
assign v83_fu_587_p1 = select_ln128_reg_912;
assign v91_fu_646_p1 = reg_422;
assign v99_fu_651_p1 = reg_426;
assign zext_ln113_fu_703_p1 = lshr_ln_fu_694_p4;
assign zext_ln119_fu_473_p1 = tmp_fu_465_p3;
assign zext_ln128_fu_499_p1 = tmp_2_fu_489_p4;
assign zext_ln134_fu_726_p1 = or_ln_fu_718_p3;
assign zext_ln137_fu_551_p1 = tmp_6_fu_542_p4;
assign zext_ln146_fu_566_p1 = tmp_8_fu_557_p4;
assign zext_ln152_fu_773_p1 = or_ln1_fu_765_p4;
assign zext_ln155_fu_616_p1 = tmp_13_fu_607_p4;
assign zext_ln164_fu_635_p1 = tmp_16_fu_622_p6;
assign zext_ln170_fu_786_p1 = or_ln2_fu_779_p3;
assign zext_ln173_fu_664_p1 = tmp_20_fu_656_p4;
assign zext_ln183_fu_678_p1 = tmp_22_fu_670_p4;
always @ (posedge ap_clk) begin
    v65_0_addr_1_reg_1024[0] <= 1'b1;
    v65_0_addr_1_reg_1024_pp0_iter2_reg[0] <= 1'b1;
    v65_0_addr_1_reg_1024_pp0_iter3_reg[0] <= 1'b1;
    v65_1_addr_1_reg_1029[0] <= 1'b1;
    v65_1_addr_1_reg_1029_pp0_iter2_reg[0] <= 1'b1;
    v65_1_addr_1_reg_1029_pp0_iter3_reg[0] <= 1'b1;
    v65_0_addr_2_reg_1075[1] <= 1'b1;
    v65_0_addr_2_reg_1075_pp0_iter2_reg[1] <= 1'b1;
    v65_0_addr_2_reg_1075_pp0_iter3_reg[1] <= 1'b1;
    v65_1_addr_2_reg_1080[1] <= 1'b1;
    v65_1_addr_2_reg_1080_pp0_iter2_reg[1] <= 1'b1;
    v65_1_addr_2_reg_1080_pp0_iter3_reg[1] <= 1'b1;
    v65_0_addr_3_reg_1085[1:0] <= 2'b11;
    v65_0_addr_3_reg_1085_pp0_iter2_reg[1:0] <= 2'b11;
    v65_0_addr_3_reg_1085_pp0_iter3_reg[1:0] <= 2'b11;
    v65_0_addr_3_reg_1085_pp0_iter4_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_1095[1:0] <= 2'b11;
    v65_1_addr_3_reg_1095_pp0_iter2_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_1095_pp0_iter3_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_1095_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
