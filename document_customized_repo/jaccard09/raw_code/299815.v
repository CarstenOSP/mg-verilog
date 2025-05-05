module bicg_bicg_node2_Pipeline_label_47 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v70_20_reload,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,tmp_96,v138_0_address0,v138_0_ce0,v138_0_q0,v138_0_address1,v138_0_ce1,v138_0_q1,v138_1_address0,v138_1_ce0,v138_1_q0,v138_1_address1,v138_1_ce1,v138_1_q1,v69_6,v70_21_out,v70_21_out_ap_vld,grp_fu_1434_p_din0,grp_fu_1434_p_din1,grp_fu_1434_p_opcode,grp_fu_1434_p_dout0,grp_fu_1434_p_ce,grp_fu_1438_p_din0,grp_fu_1438_p_din1,grp_fu_1438_p_opcode,grp_fu_1438_p_dout0,grp_fu_1438_p_ce,grp_fu_1442_p_din0,grp_fu_1442_p_din1,grp_fu_1442_p_dout0,grp_fu_1442_p_ce,grp_fu_1446_p_din0,grp_fu_1446_p_din1,grp_fu_1446_p_dout0,grp_fu_1446_p_ce); 
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
input  [31:0] v70_20_reload;
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
input  [2:0] tmp_96;
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
input  [31:0] v69_6;
output  [31:0] v70_21_out;
output   v70_21_out_ap_vld;
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
reg v70_21_out_ap_vld;
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
reg   [0:0] tmp_reg_830;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_375_p3;
reg   [31:0] reg_389;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_382_p3;
reg   [31:0] reg_393;
reg   [31:0] reg_397;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_402;
reg   [6:0] v68_reg_817;
reg   [0:0] tmp_reg_830_pp0_iter1_reg;
reg   [0:0] tmp_reg_830_pp0_iter2_reg;
reg   [0:0] tmp_reg_830_pp0_iter3_reg;
wire   [0:0] icmp_ln115_fu_476_p2;
reg   [0:0] icmp_ln115_reg_854;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] tmp_12_fu_481_p3;
reg   [0:0] tmp_12_reg_859;
wire   [31:0] select_ln119_fu_488_p3;
reg   [31:0] select_ln119_reg_867;
wire   [31:0] select_ln128_fu_496_p3;
reg   [31:0] select_ln128_reg_872;
wire   [31:0] v71_fu_550_p3;
reg   [31:0] v71_reg_897;
wire   [31:0] v75_fu_558_p1;
wire   [31:0] v83_fu_562_p1;
wire   [0:0] tmp_13_fu_566_p3;
reg   [0:0] tmp_13_reg_913;
wire   [1:0] tmp_34_fu_573_p4;
reg   [1:0] tmp_34_reg_918;
wire   [31:0] v91_fu_625_p1;
wire   [31:0] v99_fu_630_p1;
reg   [4:0] v65_0_addr_reg_974;
reg   [4:0] v65_0_addr_reg_974_pp0_iter2_reg;
reg   [4:0] v65_0_addr_reg_974_pp0_iter3_reg;
reg   [4:0] v65_1_addr_reg_979;
reg   [4:0] v65_1_addr_reg_979_pp0_iter2_reg;
reg   [4:0] v65_1_addr_reg_979_pp0_iter3_reg;
reg   [4:0] v65_0_addr_7_reg_984;
reg   [4:0] v65_0_addr_7_reg_984_pp0_iter2_reg;
reg   [4:0] v65_0_addr_7_reg_984_pp0_iter3_reg;
reg   [4:0] v65_1_addr_7_reg_989;
reg   [4:0] v65_1_addr_7_reg_989_pp0_iter2_reg;
reg   [4:0] v65_1_addr_7_reg_989_pp0_iter3_reg;
reg   [2:0] tmp_33_reg_994;
wire   [31:0] v107_fu_724_p1;
wire   [31:0] v115_fu_729_p1;
wire   [31:0] select_ln173_fu_734_p3;
reg   [31:0] select_ln173_reg_1010;
wire   [31:0] select_ln183_fu_741_p3;
reg   [31:0] select_ln183_reg_1015;
reg   [31:0] v73_reg_1020;
reg   [31:0] v76_reg_1025;
reg   [31:0] v84_reg_1030;
reg   [4:0] v65_0_addr_8_reg_1035;
reg   [4:0] v65_0_addr_8_reg_1035_pp0_iter2_reg;
reg   [4:0] v65_0_addr_8_reg_1035_pp0_iter3_reg;
reg   [4:0] v65_1_addr_8_reg_1040;
reg   [4:0] v65_1_addr_8_reg_1040_pp0_iter2_reg;
reg   [4:0] v65_1_addr_8_reg_1040_pp0_iter3_reg;
reg   [4:0] v65_0_addr_9_reg_1045;
reg   [4:0] v65_0_addr_9_reg_1045_pp0_iter2_reg;
reg   [4:0] v65_0_addr_9_reg_1045_pp0_iter3_reg;
reg   [4:0] v65_0_addr_9_reg_1045_pp0_iter4_reg;
wire   [31:0] v123_fu_775_p1;
reg   [4:0] v65_1_addr_9_reg_1055;
reg   [4:0] v65_1_addr_9_reg_1055_pp0_iter2_reg;
reg   [4:0] v65_1_addr_9_reg_1055_pp0_iter3_reg;
reg   [4:0] v65_1_addr_9_reg_1055_pp0_iter4_reg;
wire   [31:0] v131_fu_779_p1;
reg   [31:0] v81_reg_1065;
reg   [31:0] v89_reg_1070;
reg   [31:0] v97_reg_1075;
reg   [31:0] v92_reg_1080;
reg   [31:0] v100_reg_1085;
reg   [31:0] v105_reg_1090;
reg   [31:0] v113_reg_1095;
reg   [31:0] v121_reg_1100;
reg   [31:0] v129_reg_1105;
reg   [31:0] v108_reg_1110;
reg   [31:0] v116_reg_1115;
reg   [31:0] v124_reg_1120;
reg   [31:0] v132_reg_1125;
reg   [31:0] v93_reg_1130;
reg   [31:0] v101_reg_1135;
reg   [31:0] v125_reg_1140;
reg   [31:0] v133_reg_1145;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln119_fu_442_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln128_fu_470_p1;
wire   [63:0] zext_ln137_fu_524_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln146_fu_541_p1;
wire   [63:0] zext_ln155_fu_593_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln164_fu_614_p1;
wire   [63:0] zext_ln173_fu_645_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln183_fu_661_p1;
wire   [63:0] zext_ln113_fu_686_p1;
wire   [63:0] zext_ln135_fu_709_p1;
wire   [63:0] zext_ln153_fu_756_p1;
wire   [63:0] zext_ln171_fu_769_p1;
reg   [31:0] v66_fu_98;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v126_fu_102;
wire   [6:0] add_ln112_fu_667_p2;
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
reg   [31:0] grp_fu_359_p0;
reg   [31:0] grp_fu_359_p1;
reg   [31:0] grp_fu_363_p0;
reg   [31:0] grp_fu_363_p1;
reg   [31:0] grp_fu_367_p0;
reg   [31:0] grp_fu_367_p1;
reg   [31:0] grp_fu_371_p0;
reg   [31:0] grp_fu_371_p1;
wire   [4:0] trunc_ln112_fu_428_p1;
wire   [10:0] tmp_s_fu_432_p4;
wire   [3:0] tmp_27_fu_448_p4;
wire   [10:0] tmp_28_fu_458_p5;
wire   [2:0] tmp_30_fu_504_p4;
wire   [10:0] tmp_31_fu_513_p5;
wire   [10:0] tmp_32_fu_530_p5;
wire   [10:0] tmp_35_fu_582_p5;
wire   [10:0] tmp_36_fu_599_p7;
wire   [10:0] tmp_37_fu_635_p5;
wire   [10:0] tmp_38_fu_651_p5;
wire   [4:0] lshr_ln113_6_fu_677_p4;
wire   [3:0] tmp_29_fu_692_p4;
wire   [4:0] or_ln135_s_fu_701_p3;
wire   [4:0] or_ln153_s_fu_748_p4;
wire   [4:0] or_ln171_s_fu_762_p3;
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
#0 v66_fu_98 = 32'd0;
#0 v126_fu_102 = 7'd0;
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
        v126_fu_102 <= 7'd0;
    end else if (((tmp_reg_830 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v126_fu_102 <= add_ln112_fu_667_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_fu_98 <= v70_20_reload;
    end else if (((tmp_reg_830 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_fu_98 <= v71_fu_550_p3;
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
        icmp_ln115_reg_854 <= icmp_ln115_fu_476_p2;
        select_ln119_reg_867 <= select_ln119_fu_488_p3;
        select_ln128_reg_872 <= select_ln128_fu_496_p3;
        tmp_12_reg_859 <= v68_reg_817[32'd5];
        v65_0_addr_8_reg_1035[0] <= zext_ln153_fu_756_p1[0];
v65_0_addr_8_reg_1035[4 : 2] <= zext_ln153_fu_756_p1[4 : 2];
        v65_0_addr_8_reg_1035_pp0_iter2_reg[0] <= v65_0_addr_8_reg_1035[0];
v65_0_addr_8_reg_1035_pp0_iter2_reg[4 : 2] <= v65_0_addr_8_reg_1035[4 : 2];
        v65_0_addr_8_reg_1035_pp0_iter3_reg[0] <= v65_0_addr_8_reg_1035_pp0_iter2_reg[0];
v65_0_addr_8_reg_1035_pp0_iter3_reg[4 : 2] <= v65_0_addr_8_reg_1035_pp0_iter2_reg[4 : 2];
        v65_0_addr_9_reg_1045[4 : 2] <= zext_ln171_fu_769_p1[4 : 2];
        v65_0_addr_9_reg_1045_pp0_iter2_reg[4 : 2] <= v65_0_addr_9_reg_1045[4 : 2];
        v65_0_addr_9_reg_1045_pp0_iter3_reg[4 : 2] <= v65_0_addr_9_reg_1045_pp0_iter2_reg[4 : 2];
        v65_0_addr_9_reg_1045_pp0_iter4_reg[4 : 2] <= v65_0_addr_9_reg_1045_pp0_iter3_reg[4 : 2];
        v65_1_addr_8_reg_1040[0] <= zext_ln153_fu_756_p1[0];
v65_1_addr_8_reg_1040[4 : 2] <= zext_ln153_fu_756_p1[4 : 2];
        v65_1_addr_8_reg_1040_pp0_iter2_reg[0] <= v65_1_addr_8_reg_1040[0];
v65_1_addr_8_reg_1040_pp0_iter2_reg[4 : 2] <= v65_1_addr_8_reg_1040[4 : 2];
        v65_1_addr_8_reg_1040_pp0_iter3_reg[0] <= v65_1_addr_8_reg_1040_pp0_iter2_reg[0];
v65_1_addr_8_reg_1040_pp0_iter3_reg[4 : 2] <= v65_1_addr_8_reg_1040_pp0_iter2_reg[4 : 2];
        v65_1_addr_9_reg_1055[4 : 2] <= zext_ln171_fu_769_p1[4 : 2];
        v65_1_addr_9_reg_1055_pp0_iter2_reg[4 : 2] <= v65_1_addr_9_reg_1055[4 : 2];
        v65_1_addr_9_reg_1055_pp0_iter3_reg[4 : 2] <= v65_1_addr_9_reg_1055_pp0_iter2_reg[4 : 2];
        v65_1_addr_9_reg_1055_pp0_iter4_reg[4 : 2] <= v65_1_addr_9_reg_1055_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_389 <= grp_fu_375_p3;
        reg_393 <= grp_fu_382_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_397 <= grp_fu_1434_p_dout0;
        reg_402 <= grp_fu_1438_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln173_reg_1010 <= select_ln173_fu_734_p3;
        select_ln183_reg_1015 <= select_ln183_fu_741_p3;
        tmp_33_reg_994 <= {{v68_reg_817[5:3]}};
        tmp_reg_830 <= ap_sig_allocacmp_v68[32'd6];
        tmp_reg_830_pp0_iter1_reg <= tmp_reg_830;
        tmp_reg_830_pp0_iter2_reg <= tmp_reg_830_pp0_iter1_reg;
        tmp_reg_830_pp0_iter3_reg <= tmp_reg_830_pp0_iter2_reg;
        v65_0_addr_7_reg_984[4 : 1] <= zext_ln135_fu_709_p1[4 : 1];
        v65_0_addr_7_reg_984_pp0_iter2_reg[4 : 1] <= v65_0_addr_7_reg_984[4 : 1];
        v65_0_addr_7_reg_984_pp0_iter3_reg[4 : 1] <= v65_0_addr_7_reg_984_pp0_iter2_reg[4 : 1];
        v65_0_addr_reg_974 <= zext_ln113_fu_686_p1;
        v65_0_addr_reg_974_pp0_iter2_reg <= v65_0_addr_reg_974;
        v65_0_addr_reg_974_pp0_iter3_reg <= v65_0_addr_reg_974_pp0_iter2_reg;
        v65_1_addr_7_reg_989[4 : 1] <= zext_ln135_fu_709_p1[4 : 1];
        v65_1_addr_7_reg_989_pp0_iter2_reg[4 : 1] <= v65_1_addr_7_reg_989[4 : 1];
        v65_1_addr_7_reg_989_pp0_iter3_reg[4 : 1] <= v65_1_addr_7_reg_989_pp0_iter2_reg[4 : 1];
        v65_1_addr_reg_979 <= zext_ln113_fu_686_p1;
        v65_1_addr_reg_979_pp0_iter2_reg <= v65_1_addr_reg_979;
        v65_1_addr_reg_979_pp0_iter3_reg <= v65_1_addr_reg_979_pp0_iter2_reg;
        v68_reg_817 <= ap_sig_allocacmp_v68;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_13_reg_913 <= v68_reg_817[32'd1];
        tmp_34_reg_918 <= {{v68_reg_817[4:3]}};
        v71_reg_897 <= v71_fu_550_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_1085 <= grp_fu_1446_p_dout0;
        v105_reg_1090 <= v65_0_q1;
        v113_reg_1095 <= v65_1_q1;
        v121_reg_1100 <= v65_0_q0;
        v129_reg_1105 <= v65_1_q0;
        v92_reg_1080 <= grp_fu_1442_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v101_reg_1135 <= grp_fu_1438_p_dout0;
        v93_reg_1130 <= grp_fu_1434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v108_reg_1110 <= grp_fu_1442_p_dout0;
        v116_reg_1115 <= grp_fu_1446_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_reg_1120 <= grp_fu_1442_p_dout0;
        v132_reg_1125 <= grp_fu_1446_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v125_reg_1140 <= grp_fu_1434_p_dout0;
        v133_reg_1145 <= grp_fu_1438_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v73_reg_1020 <= v65_0_q1;
        v76_reg_1025 <= grp_fu_1442_p_dout0;
        v81_reg_1065 <= v65_1_q1;
        v84_reg_1030 <= grp_fu_1446_p_dout0;
        v89_reg_1070 <= v65_0_q0;
        v97_reg_1075 <= v65_1_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_830 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v68 = v126_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_359_p0 = v121_reg_1100;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_359_p0 = v105_reg_1090;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_359_p0 = v89_reg_1070;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_359_p0 = v73_reg_1020;
    end else begin
        grp_fu_359_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_359_p1 = v124_reg_1120;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_359_p1 = v108_reg_1110;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_359_p1 = v92_reg_1080;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_359_p1 = v76_reg_1025;
    end else begin
        grp_fu_359_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_363_p0 = v129_reg_1105;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_363_p0 = v113_reg_1095;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_363_p0 = v97_reg_1075;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_363_p0 = v81_reg_1065;
    end else begin
        grp_fu_363_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_363_p1 = v132_reg_1125;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_363_p1 = v116_reg_1115;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_363_p1 = v100_reg_1085;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_363_p1 = v84_reg_1030;
    end else begin
        grp_fu_363_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_367_p0 = v123_fu_775_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_367_p0 = v107_fu_724_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_367_p0 = v91_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_367_p0 = v75_fu_558_p1;
    end else begin
        grp_fu_367_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_367_p1 = v71_reg_897;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_367_p1 = v71_fu_550_p3;
    end else begin
        grp_fu_367_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_371_p0 = v131_fu_779_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_371_p0 = v115_fu_729_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_371_p0 = v99_fu_630_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p0 = v83_fu_562_p1;
    end else begin
        grp_fu_371_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_371_p1 = v71_reg_897;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p1 = v71_fu_550_p3;
    end else begin
        grp_fu_371_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_0_address0_local = zext_ln183_fu_661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_0_address0_local = zext_ln164_fu_614_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_0_address0_local = zext_ln146_fu_541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_0_address0_local = zext_ln128_fu_470_p1;
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
            v138_0_address1_local = zext_ln173_fu_645_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_0_address1_local = zext_ln155_fu_593_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_0_address1_local = zext_ln137_fu_524_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_0_address1_local = zext_ln119_fu_442_p1;
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
            v138_1_address0_local = zext_ln183_fu_661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_1_address0_local = zext_ln164_fu_614_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_1_address0_local = zext_ln146_fu_541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_1_address0_local = zext_ln128_fu_470_p1;
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
            v138_1_address1_local = zext_ln173_fu_645_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_1_address1_local = zext_ln155_fu_593_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_1_address1_local = zext_ln137_fu_524_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_1_address1_local = zext_ln119_fu_442_p1;
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
        v65_0_address0_local = v65_0_addr_9_reg_1045_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address0_local = v65_0_addr_7_reg_984_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address0_local = zext_ln171_fu_769_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address0_local = zext_ln135_fu_709_p1;
    end else begin
        v65_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address1_local = v65_0_addr_8_reg_1035_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address1_local = v65_0_addr_reg_974_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address1_local = zext_ln153_fu_756_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address1_local = zext_ln113_fu_686_p1;
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
        v65_0_d0_local = v125_reg_1140;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_d0_local = v93_reg_1130;
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
        v65_1_address0_local = v65_1_addr_9_reg_1055_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address0_local = v65_1_addr_7_reg_989_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address0_local = zext_ln171_fu_769_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address0_local = zext_ln135_fu_709_p1;
    end else begin
        v65_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address1_local = v65_1_addr_8_reg_1040_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address1_local = v65_1_addr_reg_979_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address1_local = zext_ln153_fu_756_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address1_local = zext_ln113_fu_686_p1;
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
        v65_1_d0_local = v133_reg_1145;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_d0_local = v101_reg_1135;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_830_pp0_iter3_reg == 1'd1))) begin
        v70_21_out_ap_vld = 1'b1;
    end else begin
        v70_21_out_ap_vld = 1'b0;
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
assign add_ln112_fu_667_p2 = (v68_reg_817 + 7'd8);
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
assign grp_fu_1434_p_din0 = grp_fu_359_p0;
assign grp_fu_1434_p_din1 = grp_fu_359_p1;
assign grp_fu_1434_p_opcode = 2'd0;
assign grp_fu_1438_p_ce = 1'b1;
assign grp_fu_1438_p_din0 = grp_fu_363_p0;
assign grp_fu_1438_p_din1 = grp_fu_363_p1;
assign grp_fu_1438_p_opcode = 2'd0;
assign grp_fu_1442_p_ce = 1'b1;
assign grp_fu_1442_p_din0 = grp_fu_367_p0;
assign grp_fu_1442_p_din1 = grp_fu_367_p1;
assign grp_fu_1446_p_ce = 1'b1;
assign grp_fu_1446_p_din0 = grp_fu_371_p0;
assign grp_fu_1446_p_din1 = grp_fu_371_p1;
assign grp_fu_375_p3 = ((tmp_12_reg_859[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign grp_fu_382_p3 = ((tmp_12_reg_859[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign icmp_ln115_fu_476_p2 = ((v68_reg_817 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln113_6_fu_677_p4 = {{v68_reg_817[5:1]}};
assign or_ln135_s_fu_701_p3 = {{tmp_29_fu_692_p4}, {1'd1}};
assign or_ln153_s_fu_748_p4 = {{{tmp_33_reg_994}, {1'd1}}, {tmp_13_reg_913}};
assign or_ln171_s_fu_762_p3 = {{tmp_33_reg_994}, {2'd3}};
assign select_ln119_fu_488_p3 = ((tmp_12_fu_481_p3[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign select_ln128_fu_496_p3 = ((tmp_12_fu_481_p3[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign select_ln173_fu_734_p3 = ((tmp_12_reg_859[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign select_ln183_fu_741_p3 = ((tmp_12_reg_859[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign tmp_12_fu_481_p3 = v68_reg_817[32'd5];
assign tmp_13_fu_566_p3 = v68_reg_817[32'd1];
assign tmp_27_fu_448_p4 = {{ap_sig_allocacmp_v68[4:1]}};
assign tmp_28_fu_458_p5 = {{{{tmp_96}, {3'd6}}, {tmp_27_fu_448_p4}}, {1'd1}};
assign tmp_29_fu_692_p4 = {{v68_reg_817[5:2]}};
assign tmp_30_fu_504_p4 = {{v68_reg_817[4:2]}};
assign tmp_31_fu_513_p5 = {{{{tmp_96}, {3'd6}}, {tmp_30_fu_504_p4}}, {2'd2}};
assign tmp_32_fu_530_p5 = {{{{tmp_96}, {3'd6}}, {tmp_30_fu_504_p4}}, {2'd3}};
assign tmp_34_fu_573_p4 = {{v68_reg_817[4:3]}};
assign tmp_35_fu_582_p5 = {{{{tmp_96}, {3'd6}}, {tmp_34_fu_573_p4}}, {3'd4}};
assign tmp_36_fu_599_p7 = {{{{{{tmp_96}, {3'd6}}, {tmp_34_fu_573_p4}}, {1'd1}}, {tmp_13_fu_566_p3}}, {1'd1}};
assign tmp_37_fu_635_p5 = {{{{tmp_96}, {3'd6}}, {tmp_34_reg_918}}, {3'd6}};
assign tmp_38_fu_651_p5 = {{{{tmp_96}, {3'd6}}, {tmp_34_reg_918}}, {3'd7}};
assign tmp_s_fu_432_p4 = {{{tmp_96}, {3'd6}}, {trunc_ln112_fu_428_p1}};
assign trunc_ln112_fu_428_p1 = ap_sig_allocacmp_v68[4:0];
assign v107_fu_724_p1 = reg_389;
assign v115_fu_729_p1 = reg_393;
assign v123_fu_775_p1 = select_ln173_reg_1010;
assign v131_fu_779_p1 = select_ln183_reg_1015;
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
assign v65_0_d1 = reg_397;
assign v65_0_we0 = v65_0_we0_local;
assign v65_0_we1 = v65_0_we1_local;
assign v65_1_address0 = v65_1_address0_local;
assign v65_1_address1 = v65_1_address1_local;
assign v65_1_ce0 = v65_1_ce0_local;
assign v65_1_ce1 = v65_1_ce1_local;
assign v65_1_d0 = v65_1_d0_local;
assign v65_1_d1 = reg_402;
assign v65_1_we0 = v65_1_we0_local;
assign v65_1_we1 = v65_1_we1_local;
assign v70_21_out = v66_fu_98;
assign v71_fu_550_p3 = ((icmp_ln115_reg_854[0:0] == 1'b1) ? v69_6 : v66_fu_98);
assign v75_fu_558_p1 = select_ln119_reg_867;
assign v83_fu_562_p1 = select_ln128_reg_872;
assign v91_fu_625_p1 = reg_389;
assign v99_fu_630_p1 = reg_393;
assign zext_ln113_fu_686_p1 = lshr_ln113_6_fu_677_p4;
assign zext_ln119_fu_442_p1 = tmp_s_fu_432_p4;
assign zext_ln128_fu_470_p1 = tmp_28_fu_458_p5;
assign zext_ln135_fu_709_p1 = or_ln135_s_fu_701_p3;
assign zext_ln137_fu_524_p1 = tmp_31_fu_513_p5;
assign zext_ln146_fu_541_p1 = tmp_32_fu_530_p5;
assign zext_ln153_fu_756_p1 = or_ln153_s_fu_748_p4;
assign zext_ln155_fu_593_p1 = tmp_35_fu_582_p5;
assign zext_ln164_fu_614_p1 = tmp_36_fu_599_p7;
assign zext_ln171_fu_769_p1 = or_ln171_s_fu_762_p3;
assign zext_ln173_fu_645_p1 = tmp_37_fu_635_p5;
assign zext_ln183_fu_661_p1 = tmp_38_fu_651_p5;
always @ (posedge ap_clk) begin
    v65_0_addr_7_reg_984[0] <= 1'b1;
    v65_0_addr_7_reg_984_pp0_iter2_reg[0] <= 1'b1;
    v65_0_addr_7_reg_984_pp0_iter3_reg[0] <= 1'b1;
    v65_1_addr_7_reg_989[0] <= 1'b1;
    v65_1_addr_7_reg_989_pp0_iter2_reg[0] <= 1'b1;
    v65_1_addr_7_reg_989_pp0_iter3_reg[0] <= 1'b1;
    v65_0_addr_8_reg_1035[1] <= 1'b1;
    v65_0_addr_8_reg_1035_pp0_iter2_reg[1] <= 1'b1;
    v65_0_addr_8_reg_1035_pp0_iter3_reg[1] <= 1'b1;
    v65_1_addr_8_reg_1040[1] <= 1'b1;
    v65_1_addr_8_reg_1040_pp0_iter2_reg[1] <= 1'b1;
    v65_1_addr_8_reg_1040_pp0_iter3_reg[1] <= 1'b1;
    v65_0_addr_9_reg_1045[1:0] <= 2'b11;
    v65_0_addr_9_reg_1045_pp0_iter2_reg[1:0] <= 2'b11;
    v65_0_addr_9_reg_1045_pp0_iter3_reg[1:0] <= 2'b11;
    v65_0_addr_9_reg_1045_pp0_iter4_reg[1:0] <= 2'b11;
    v65_1_addr_9_reg_1055[1:0] <= 2'b11;
    v65_1_addr_9_reg_1055_pp0_iter2_reg[1:0] <= 2'b11;
    v65_1_addr_9_reg_1055_pp0_iter3_reg[1:0] <= 2'b11;
    v65_1_addr_9_reg_1055_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 