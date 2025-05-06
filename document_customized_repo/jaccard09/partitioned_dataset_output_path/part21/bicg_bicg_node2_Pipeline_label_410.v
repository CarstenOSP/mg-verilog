
module bicg_bicg_node2_Pipeline_label_410 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v70_23_reload,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,tmp_195,tmp_221,v138_0_address0,v138_0_ce0,v138_0_q0,v138_0_address1,v138_0_ce1,v138_0_q1,v138_1_address0,v138_1_ce0,v138_1_q0,v138_1_address1,v138_1_ce1,v138_1_q1,v69_9,v70_24_out,v70_24_out_ap_vld,grp_fu_1434_p_din0,grp_fu_1434_p_din1,grp_fu_1434_p_opcode,grp_fu_1434_p_dout0,grp_fu_1434_p_ce,grp_fu_1438_p_din0,grp_fu_1438_p_din1,grp_fu_1438_p_opcode,grp_fu_1438_p_dout0,grp_fu_1438_p_ce,grp_fu_1442_p_din0,grp_fu_1442_p_din1,grp_fu_1442_p_dout0,grp_fu_1442_p_ce,grp_fu_1446_p_din0,grp_fu_1446_p_din1,grp_fu_1446_p_dout0,grp_fu_1446_p_ce);  
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
input  [31:0] v70_23_reload;
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
input  [1:0] tmp_195;
input  [1:0] tmp_221;
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
input  [31:0] v69_9;
output  [31:0] v70_24_out;
output   v70_24_out_ap_vld;
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
reg v70_24_out_ap_vld;
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
reg   [0:0] tmp_reg_874;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_383_p3;
reg   [31:0] reg_397;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_390_p3;
reg   [31:0] reg_401;
reg   [31:0] reg_405;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_410;
reg   [6:0] v68_reg_861;
reg   [0:0] tmp_reg_874_pp0_iter1_reg;
reg   [0:0] tmp_reg_874_pp0_iter2_reg;
reg   [0:0] tmp_reg_874_pp0_iter3_reg;
wire   [0:0] icmp_ln115_fu_492_p2;
reg   [0:0] icmp_ln115_reg_898;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] tmp_47_fu_497_p3;
reg   [0:0] tmp_47_reg_903;
wire   [31:0] select_ln119_fu_504_p3;
reg   [31:0] select_ln119_reg_911;
wire   [31:0] select_ln128_fu_512_p3;
reg   [31:0] select_ln128_reg_916;
wire   [31:0] v71_fu_572_p3;
reg   [31:0] v71_reg_941;
wire   [31:0] v75_fu_580_p1;
wire   [31:0] v83_fu_584_p1;
wire   [0:0] tmp_48_fu_588_p3;
reg   [0:0] tmp_48_reg_957;
wire   [1:0] tmp_154_fu_595_p4;
reg   [1:0] tmp_154_reg_962;
wire   [31:0] v91_fu_653_p1;
wire   [31:0] v99_fu_658_p1;
reg   [4:0] v65_0_addr_reg_1018;
reg   [4:0] v65_0_addr_reg_1018_pp0_iter2_reg;
reg   [4:0] v65_0_addr_reg_1018_pp0_iter3_reg;
reg   [4:0] v65_1_addr_reg_1023;
reg   [4:0] v65_1_addr_reg_1023_pp0_iter2_reg;
reg   [4:0] v65_1_addr_reg_1023_pp0_iter3_reg;
reg   [4:0] v65_0_addr_34_reg_1028;
reg   [4:0] v65_0_addr_34_reg_1028_pp0_iter2_reg;
reg   [4:0] v65_0_addr_34_reg_1028_pp0_iter3_reg;
reg   [4:0] v65_1_addr_34_reg_1033;
reg   [4:0] v65_1_addr_34_reg_1033_pp0_iter2_reg;
reg   [4:0] v65_1_addr_34_reg_1033_pp0_iter3_reg;
reg   [2:0] tmp_153_reg_1038;
wire   [31:0] v107_fu_758_p1;
wire   [31:0] v115_fu_763_p1;
wire   [31:0] select_ln173_fu_768_p3;
reg   [31:0] select_ln173_reg_1054;
wire   [31:0] select_ln183_fu_775_p3;
reg   [31:0] select_ln183_reg_1059;
reg   [31:0] v73_reg_1064;
reg   [31:0] v76_reg_1069;
reg   [31:0] v84_reg_1074;
reg   [4:0] v65_0_addr_35_reg_1079;
reg   [4:0] v65_0_addr_35_reg_1079_pp0_iter2_reg;
reg   [4:0] v65_0_addr_35_reg_1079_pp0_iter3_reg;
reg   [4:0] v65_1_addr_35_reg_1084;
reg   [4:0] v65_1_addr_35_reg_1084_pp0_iter2_reg;
reg   [4:0] v65_1_addr_35_reg_1084_pp0_iter3_reg;
reg   [4:0] v65_0_addr_36_reg_1089;
reg   [4:0] v65_0_addr_36_reg_1089_pp0_iter2_reg;
reg   [4:0] v65_0_addr_36_reg_1089_pp0_iter3_reg;
reg   [4:0] v65_0_addr_36_reg_1089_pp0_iter4_reg;
wire   [31:0] v123_fu_809_p1;
reg   [4:0] v65_1_addr_36_reg_1099;
reg   [4:0] v65_1_addr_36_reg_1099_pp0_iter2_reg;
reg   [4:0] v65_1_addr_36_reg_1099_pp0_iter3_reg;
reg   [4:0] v65_1_addr_36_reg_1099_pp0_iter4_reg;
wire   [31:0] v131_fu_813_p1;
reg   [31:0] v81_reg_1109;
reg   [31:0] v89_reg_1114;
reg   [31:0] v97_1_reg_1119;
reg   [31:0] v92_reg_1124;
reg   [31:0] v100_reg_1129;
reg   [31:0] v105_reg_1134;
reg   [31:0] v113_reg_1139;
reg   [31:0] v121_reg_1144;
reg   [31:0] v129_reg_1149;
reg   [31:0] v108_reg_1154;
reg   [31:0] v116_reg_1159;
reg   [31:0] v124_reg_1164;
reg   [31:0] v132_reg_1169;
reg   [31:0] v93_1_reg_1174;
reg   [31:0] v101_reg_1179;
reg   [31:0] v125_reg_1184;
reg   [31:0] v133_reg_1189;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln119_fu_454_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln128_fu_486_p1;
wire   [63:0] zext_ln137_fu_543_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln146_fu_563_p1;
wire   [63:0] zext_ln155_fu_618_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln164_fu_642_p1;
wire   [63:0] zext_ln173_fu_676_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln183_fu_695_p1;
wire   [63:0] zext_ln113_fu_720_p1;
wire   [63:0] zext_ln135_fu_743_p1;
wire   [63:0] zext_ln153_fu_790_p1;
wire   [63:0] zext_ln171_fu_803_p1;
reg   [31:0] v66_fu_100;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v126_fu_104;
wire   [6:0] add_ln112_fu_701_p2;
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
reg   [31:0] grp_fu_367_p0;
reg   [31:0] grp_fu_367_p1;
reg   [31:0] grp_fu_371_p0;
reg   [31:0] grp_fu_371_p1;
reg   [31:0] grp_fu_375_p0;
reg   [31:0] grp_fu_375_p1;
reg   [31:0] grp_fu_379_p0;
reg   [31:0] grp_fu_379_p1;
wire   [4:0] trunc_ln112_fu_436_p1;
wire   [10:0] tmp_s_fu_440_p6;
wire   [3:0] tmp_147_fu_460_p4;
wire   [10:0] tmp_148_fu_470_p7;
wire   [2:0] tmp_150_fu_520_p4;
wire   [10:0] tmp_151_fu_529_p7;
wire   [10:0] tmp_152_fu_549_p7;
wire   [10:0] tmp_155_fu_604_p7;
wire   [10:0] tmp_156_fu_624_p9;
wire   [10:0] tmp_157_fu_663_p7;
wire   [10:0] tmp_158_fu_682_p7;
wire   [4:0] lshr_ln113_9_fu_711_p4;
wire   [3:0] tmp_149_fu_726_p4;
wire   [4:0] or_ln135_s_fu_735_p3;
wire   [4:0] or_ln153_s_fu_782_p4;
wire   [4:0] or_ln171_s_fu_796_p3;
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
#0 v66_fu_100 = 32'd0;
#0 v126_fu_104 = 7'd0;
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
        v126_fu_104 <= 7'd0;
    end else if (((tmp_reg_874 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v126_fu_104 <= add_ln112_fu_701_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_fu_100 <= v70_23_reload;
    end else if (((tmp_reg_874 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_fu_100 <= v71_fu_572_p3;
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
        icmp_ln115_reg_898 <= icmp_ln115_fu_492_p2;
        select_ln119_reg_911 <= select_ln119_fu_504_p3;
        select_ln128_reg_916 <= select_ln128_fu_512_p3;
        tmp_47_reg_903 <= v68_reg_861[32'd5];
        v65_0_addr_35_reg_1079[0] <= zext_ln153_fu_790_p1[0];
v65_0_addr_35_reg_1079[4 : 2] <= zext_ln153_fu_790_p1[4 : 2];
        v65_0_addr_35_reg_1079_pp0_iter2_reg[0] <= v65_0_addr_35_reg_1079[0];
v65_0_addr_35_reg_1079_pp0_iter2_reg[4 : 2] <= v65_0_addr_35_reg_1079[4 : 2];
        v65_0_addr_35_reg_1079_pp0_iter3_reg[0] <= v65_0_addr_35_reg_1079_pp0_iter2_reg[0];
v65_0_addr_35_reg_1079_pp0_iter3_reg[4 : 2] <= v65_0_addr_35_reg_1079_pp0_iter2_reg[4 : 2];
        v65_0_addr_36_reg_1089[4 : 2] <= zext_ln171_fu_803_p1[4 : 2];
        v65_0_addr_36_reg_1089_pp0_iter2_reg[4 : 2] <= v65_0_addr_36_reg_1089[4 : 2];
        v65_0_addr_36_reg_1089_pp0_iter3_reg[4 : 2] <= v65_0_addr_36_reg_1089_pp0_iter2_reg[4 : 2];
        v65_0_addr_36_reg_1089_pp0_iter4_reg[4 : 2] <= v65_0_addr_36_reg_1089_pp0_iter3_reg[4 : 2];
        v65_1_addr_35_reg_1084[0] <= zext_ln153_fu_790_p1[0];
v65_1_addr_35_reg_1084[4 : 2] <= zext_ln153_fu_790_p1[4 : 2];
        v65_1_addr_35_reg_1084_pp0_iter2_reg[0] <= v65_1_addr_35_reg_1084[0];
v65_1_addr_35_reg_1084_pp0_iter2_reg[4 : 2] <= v65_1_addr_35_reg_1084[4 : 2];
        v65_1_addr_35_reg_1084_pp0_iter3_reg[0] <= v65_1_addr_35_reg_1084_pp0_iter2_reg[0];
v65_1_addr_35_reg_1084_pp0_iter3_reg[4 : 2] <= v65_1_addr_35_reg_1084_pp0_iter2_reg[4 : 2];
        v65_1_addr_36_reg_1099[4 : 2] <= zext_ln171_fu_803_p1[4 : 2];
        v65_1_addr_36_reg_1099_pp0_iter2_reg[4 : 2] <= v65_1_addr_36_reg_1099[4 : 2];
        v65_1_addr_36_reg_1099_pp0_iter3_reg[4 : 2] <= v65_1_addr_36_reg_1099_pp0_iter2_reg[4 : 2];
        v65_1_addr_36_reg_1099_pp0_iter4_reg[4 : 2] <= v65_1_addr_36_reg_1099_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_397 <= grp_fu_383_p3;
        reg_401 <= grp_fu_390_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_405 <= grp_fu_1434_p_dout0;
        reg_410 <= grp_fu_1438_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln173_reg_1054 <= select_ln173_fu_768_p3;
        select_ln183_reg_1059 <= select_ln183_fu_775_p3;
        tmp_153_reg_1038 <= {{v68_reg_861[5:3]}};
        tmp_reg_874 <= ap_sig_allocacmp_v68[32'd6];
        tmp_reg_874_pp0_iter1_reg <= tmp_reg_874;
        tmp_reg_874_pp0_iter2_reg <= tmp_reg_874_pp0_iter1_reg;
        tmp_reg_874_pp0_iter3_reg <= tmp_reg_874_pp0_iter2_reg;
        v65_0_addr_34_reg_1028[4 : 1] <= zext_ln135_fu_743_p1[4 : 1];
        v65_0_addr_34_reg_1028_pp0_iter2_reg[4 : 1] <= v65_0_addr_34_reg_1028[4 : 1];
        v65_0_addr_34_reg_1028_pp0_iter3_reg[4 : 1] <= v65_0_addr_34_reg_1028_pp0_iter2_reg[4 : 1];
        v65_0_addr_reg_1018 <= zext_ln113_fu_720_p1;
        v65_0_addr_reg_1018_pp0_iter2_reg <= v65_0_addr_reg_1018;
        v65_0_addr_reg_1018_pp0_iter3_reg <= v65_0_addr_reg_1018_pp0_iter2_reg;
        v65_1_addr_34_reg_1033[4 : 1] <= zext_ln135_fu_743_p1[4 : 1];
        v65_1_addr_34_reg_1033_pp0_iter2_reg[4 : 1] <= v65_1_addr_34_reg_1033[4 : 1];
        v65_1_addr_34_reg_1033_pp0_iter3_reg[4 : 1] <= v65_1_addr_34_reg_1033_pp0_iter2_reg[4 : 1];
        v65_1_addr_reg_1023 <= zext_ln113_fu_720_p1;
        v65_1_addr_reg_1023_pp0_iter2_reg <= v65_1_addr_reg_1023;
        v65_1_addr_reg_1023_pp0_iter3_reg <= v65_1_addr_reg_1023_pp0_iter2_reg;
        v68_reg_861 <= ap_sig_allocacmp_v68;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_154_reg_962 <= {{v68_reg_861[4:3]}};
        tmp_48_reg_957 <= v68_reg_861[32'd1];
        v71_reg_941 <= v71_fu_572_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_1129 <= grp_fu_1446_p_dout0;
        v105_reg_1134 <= v65_0_q1;
        v113_reg_1139 <= v65_1_q1;
        v121_reg_1144 <= v65_0_q0;
        v129_reg_1149 <= v65_1_q0;
        v92_reg_1124 <= grp_fu_1442_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v101_reg_1179 <= grp_fu_1438_p_dout0;
        v93_1_reg_1174 <= grp_fu_1434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v108_reg_1154 <= grp_fu_1442_p_dout0;
        v116_reg_1159 <= grp_fu_1446_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_reg_1164 <= grp_fu_1442_p_dout0;
        v132_reg_1169 <= grp_fu_1446_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v125_reg_1184 <= grp_fu_1434_p_dout0;
        v133_reg_1189 <= grp_fu_1438_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v73_reg_1064 <= v65_0_q1;
        v76_reg_1069 <= grp_fu_1442_p_dout0;
        v81_reg_1109 <= v65_1_q1;
        v84_reg_1074 <= grp_fu_1446_p_dout0;
        v89_reg_1114 <= v65_0_q0;
        v97_1_reg_1119 <= v65_1_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_874 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v68 = v126_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_367_p0 = v121_reg_1144;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_367_p0 = v105_reg_1134;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_367_p0 = v89_reg_1114;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_367_p0 = v73_reg_1064;
    end else begin
        grp_fu_367_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_367_p1 = v124_reg_1164;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_367_p1 = v108_reg_1154;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_367_p1 = v92_reg_1124;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_367_p1 = v76_reg_1069;
    end else begin
        grp_fu_367_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_371_p0 = v129_reg_1149;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_371_p0 = v113_reg_1139;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_371_p0 = v97_1_reg_1119;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p0 = v81_reg_1109;
    end else begin
        grp_fu_371_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_371_p1 = v132_reg_1169;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_371_p1 = v116_reg_1159;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_371_p1 = v100_reg_1129;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p1 = v84_reg_1074;
    end else begin
        grp_fu_371_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_375_p0 = v123_fu_809_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_375_p0 = v107_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_375_p0 = v91_fu_653_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p0 = v75_fu_580_p1;
    end else begin
        grp_fu_375_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_375_p1 = v71_reg_941;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p1 = v71_fu_572_p3;
    end else begin
        grp_fu_375_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_379_p0 = v131_fu_813_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_379_p0 = v115_fu_763_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_379_p0 = v99_fu_658_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_379_p0 = v83_fu_584_p1;
    end else begin
        grp_fu_379_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_379_p1 = v71_reg_941;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_379_p1 = v71_fu_572_p3;
    end else begin
        grp_fu_379_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_0_address0_local = zext_ln183_fu_695_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_0_address0_local = zext_ln164_fu_642_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_0_address0_local = zext_ln146_fu_563_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_0_address0_local = zext_ln128_fu_486_p1;
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
            v138_0_address1_local = zext_ln173_fu_676_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_0_address1_local = zext_ln155_fu_618_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_0_address1_local = zext_ln137_fu_543_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_0_address1_local = zext_ln119_fu_454_p1;
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
            v138_1_address0_local = zext_ln183_fu_695_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_1_address0_local = zext_ln164_fu_642_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_1_address0_local = zext_ln146_fu_563_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_1_address0_local = zext_ln128_fu_486_p1;
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
            v138_1_address1_local = zext_ln173_fu_676_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_1_address1_local = zext_ln155_fu_618_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_1_address1_local = zext_ln137_fu_543_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_1_address1_local = zext_ln119_fu_454_p1;
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
        v65_0_address0_local = v65_0_addr_36_reg_1089_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address0_local = v65_0_addr_34_reg_1028_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address0_local = zext_ln171_fu_803_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address0_local = zext_ln135_fu_743_p1;
    end else begin
        v65_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address1_local = v65_0_addr_35_reg_1079_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address1_local = v65_0_addr_reg_1018_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address1_local = zext_ln153_fu_790_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address1_local = zext_ln113_fu_720_p1;
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
        v65_0_d0_local = v125_reg_1184;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_d0_local = v93_1_reg_1174;
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
        v65_1_address0_local = v65_1_addr_36_reg_1099_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address0_local = v65_1_addr_34_reg_1033_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address0_local = zext_ln171_fu_803_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address0_local = zext_ln135_fu_743_p1;
    end else begin
        v65_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address1_local = v65_1_addr_35_reg_1084_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address1_local = v65_1_addr_reg_1023_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address1_local = zext_ln153_fu_790_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address1_local = zext_ln113_fu_720_p1;
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
        v65_1_d0_local = v133_reg_1189;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_d0_local = v101_reg_1179;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_874_pp0_iter3_reg == 1'd1))) begin
        v70_24_out_ap_vld = 1'b1;
    end else begin
        v70_24_out_ap_vld = 1'b0;
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
assign add_ln112_fu_701_p2 = (v68_reg_861 + 7'd8);
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
assign grp_fu_1434_p_din0 = grp_fu_367_p0;
assign grp_fu_1434_p_din1 = grp_fu_367_p1;
assign grp_fu_1434_p_opcode = 2'd0;
assign grp_fu_1438_p_ce = 1'b1;
assign grp_fu_1438_p_din0 = grp_fu_371_p0;
assign grp_fu_1438_p_din1 = grp_fu_371_p1;
assign grp_fu_1438_p_opcode = 2'd0;
assign grp_fu_1442_p_ce = 1'b1;
assign grp_fu_1442_p_din0 = grp_fu_375_p0;
assign grp_fu_1442_p_din1 = grp_fu_375_p1;
assign grp_fu_1446_p_ce = 1'b1;
assign grp_fu_1446_p_din0 = grp_fu_379_p0;
assign grp_fu_1446_p_din1 = grp_fu_379_p1;
assign grp_fu_383_p3 = ((tmp_47_reg_903[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign grp_fu_390_p3 = ((tmp_47_reg_903[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign icmp_ln115_fu_492_p2 = ((v68_reg_861 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln113_9_fu_711_p4 = {{v68_reg_861[5:1]}};
assign or_ln135_s_fu_735_p3 = {{tmp_149_fu_726_p4}, {1'd1}};
assign or_ln153_s_fu_782_p4 = {{{tmp_153_reg_1038}, {1'd1}}, {tmp_48_reg_957}};
assign or_ln171_s_fu_796_p3 = {{tmp_153_reg_1038}, {2'd3}};
assign select_ln119_fu_504_p3 = ((tmp_47_fu_497_p3[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign select_ln128_fu_512_p3 = ((tmp_47_fu_497_p3[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign select_ln173_fu_768_p3 = ((tmp_47_reg_903[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign select_ln183_fu_775_p3 = ((tmp_47_reg_903[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign tmp_147_fu_460_p4 = {{ap_sig_allocacmp_v68[4:1]}};
assign tmp_148_fu_470_p7 = {{{{{{tmp_195}, {1'd1}}, {tmp_221}}, {1'd1}}, {tmp_147_fu_460_p4}}, {1'd1}};
assign tmp_149_fu_726_p4 = {{v68_reg_861[5:2]}};
assign tmp_150_fu_520_p4 = {{v68_reg_861[4:2]}};
assign tmp_151_fu_529_p7 = {{{{{{tmp_195}, {1'd1}}, {tmp_221}}, {1'd1}}, {tmp_150_fu_520_p4}}, {2'd2}};
assign tmp_152_fu_549_p7 = {{{{{{tmp_195}, {1'd1}}, {tmp_221}}, {1'd1}}, {tmp_150_fu_520_p4}}, {2'd3}};
assign tmp_154_fu_595_p4 = {{v68_reg_861[4:3]}};
assign tmp_155_fu_604_p7 = {{{{{{tmp_195}, {1'd1}}, {tmp_221}}, {1'd1}}, {tmp_154_fu_595_p4}}, {3'd4}};
assign tmp_156_fu_624_p9 = {{{{{{{{tmp_195}, {1'd1}}, {tmp_221}}, {1'd1}}, {tmp_154_fu_595_p4}}, {1'd1}}, {tmp_48_fu_588_p3}}, {1'd1}};
assign tmp_157_fu_663_p7 = {{{{{{tmp_195}, {1'd1}}, {tmp_221}}, {1'd1}}, {tmp_154_reg_962}}, {3'd6}};
assign tmp_158_fu_682_p7 = {{{{{{tmp_195}, {1'd1}}, {tmp_221}}, {1'd1}}, {tmp_154_reg_962}}, {3'd7}};
assign tmp_47_fu_497_p3 = v68_reg_861[32'd5];
assign tmp_48_fu_588_p3 = v68_reg_861[32'd1];
assign tmp_s_fu_440_p6 = {{{{{tmp_195}, {1'd1}}, {tmp_221}}, {1'd1}}, {trunc_ln112_fu_436_p1}};
assign trunc_ln112_fu_436_p1 = ap_sig_allocacmp_v68[4:0];
assign v107_fu_758_p1 = reg_397;
assign v115_fu_763_p1 = reg_401;
assign v123_fu_809_p1 = select_ln173_reg_1054;
assign v131_fu_813_p1 = select_ln183_reg_1059;
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
assign v65_0_d1 = reg_405;
assign v65_0_we0 = v65_0_we0_local;
assign v65_0_we1 = v65_0_we1_local;
assign v65_1_address0 = v65_1_address0_local;
assign v65_1_address1 = v65_1_address1_local;
assign v65_1_ce0 = v65_1_ce0_local;
assign v65_1_ce1 = v65_1_ce1_local;
assign v65_1_d0 = v65_1_d0_local;
assign v65_1_d1 = reg_410;
assign v65_1_we0 = v65_1_we0_local;
assign v65_1_we1 = v65_1_we1_local;
assign v70_24_out = v66_fu_100;
assign v71_fu_572_p3 = ((icmp_ln115_reg_898[0:0] == 1'b1) ? v69_9 : v66_fu_100);
assign v75_fu_580_p1 = select_ln119_reg_911;
assign v83_fu_584_p1 = select_ln128_reg_916;
assign v91_fu_653_p1 = reg_397;
assign v99_fu_658_p1 = reg_401;
assign zext_ln113_fu_720_p1 = lshr_ln113_9_fu_711_p4;
assign zext_ln119_fu_454_p1 = tmp_s_fu_440_p6;
assign zext_ln128_fu_486_p1 = tmp_148_fu_470_p7;
assign zext_ln135_fu_743_p1 = or_ln135_s_fu_735_p3;
assign zext_ln137_fu_543_p1 = tmp_151_fu_529_p7;
assign zext_ln146_fu_563_p1 = tmp_152_fu_549_p7;
assign zext_ln153_fu_790_p1 = or_ln153_s_fu_782_p4;
assign zext_ln155_fu_618_p1 = tmp_155_fu_604_p7;
assign zext_ln164_fu_642_p1 = tmp_156_fu_624_p9;
assign zext_ln171_fu_803_p1 = or_ln171_s_fu_796_p3;
assign zext_ln173_fu_676_p1 = tmp_157_fu_663_p7;
assign zext_ln183_fu_695_p1 = tmp_158_fu_682_p7;
always @ (posedge ap_clk) begin
    v65_0_addr_34_reg_1028[0] <= 1'b1;
    v65_0_addr_34_reg_1028_pp0_iter2_reg[0] <= 1'b1;
    v65_0_addr_34_reg_1028_pp0_iter3_reg[0] <= 1'b1;
    v65_1_addr_34_reg_1033[0] <= 1'b1;
    v65_1_addr_34_reg_1033_pp0_iter2_reg[0] <= 1'b1;
    v65_1_addr_34_reg_1033_pp0_iter3_reg[0] <= 1'b1;
    v65_0_addr_35_reg_1079[1] <= 1'b1;
    v65_0_addr_35_reg_1079_pp0_iter2_reg[1] <= 1'b1;
    v65_0_addr_35_reg_1079_pp0_iter3_reg[1] <= 1'b1;
    v65_1_addr_35_reg_1084[1] <= 1'b1;
    v65_1_addr_35_reg_1084_pp0_iter2_reg[1] <= 1'b1;
    v65_1_addr_35_reg_1084_pp0_iter3_reg[1] <= 1'b1;
    v65_0_addr_36_reg_1089[1:0] <= 2'b11;
    v65_0_addr_36_reg_1089_pp0_iter2_reg[1:0] <= 2'b11;
    v65_0_addr_36_reg_1089_pp0_iter3_reg[1:0] <= 2'b11;
    v65_0_addr_36_reg_1089_pp0_iter4_reg[1:0] <= 2'b11;
    v65_1_addr_36_reg_1099[1:0] <= 2'b11;
    v65_1_addr_36_reg_1099_pp0_iter2_reg[1:0] <= 2'b11;
    v65_1_addr_36_reg_1099_pp0_iter3_reg[1:0] <= 2'b11;
    v65_1_addr_36_reg_1099_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
