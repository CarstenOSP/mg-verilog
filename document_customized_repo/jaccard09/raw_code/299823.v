module bicg_bicg_node2_Pipeline_label_415 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v70_27_reload,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,tmp_195,v138_0_address0,v138_0_ce0,v138_0_q0,v138_0_address1,v138_0_ce1,v138_0_q1,v138_1_address0,v138_1_ce0,v138_1_q0,v138_1_address1,v138_1_ce1,v138_1_q1,v69_14,v70_28_out,v70_28_out_ap_vld,grp_fu_1434_p_din0,grp_fu_1434_p_din1,grp_fu_1434_p_opcode,grp_fu_1434_p_dout0,grp_fu_1434_p_ce,grp_fu_1438_p_din0,grp_fu_1438_p_din1,grp_fu_1438_p_opcode,grp_fu_1438_p_dout0,grp_fu_1438_p_ce,grp_fu_1442_p_din0,grp_fu_1442_p_din1,grp_fu_1442_p_dout0,grp_fu_1442_p_ce,grp_fu_1446_p_din0,grp_fu_1446_p_din1,grp_fu_1446_p_dout0,grp_fu_1446_p_ce); 
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
input  [31:0] v70_27_reload;
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
input  [31:0] v69_14;
output  [31:0] v70_28_out;
output   v70_28_out_ap_vld;
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
reg v70_28_out_ap_vld;
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
reg   [0:0] tmp_reg_832;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_377_p3;
reg   [31:0] reg_391;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_384_p3;
reg   [31:0] reg_395;
reg   [31:0] reg_399;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_404;
reg   [6:0] v68_reg_819;
reg   [0:0] tmp_reg_832_pp0_iter1_reg;
reg   [0:0] tmp_reg_832_pp0_iter2_reg;
reg   [0:0] tmp_reg_832_pp0_iter3_reg;
wire   [0:0] icmp_ln115_fu_478_p2;
reg   [0:0] icmp_ln115_reg_856;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] tmp_34_fu_483_p3;
reg   [0:0] tmp_34_reg_861;
wire   [31:0] select_ln119_fu_490_p3;
reg   [31:0] select_ln119_reg_869;
wire   [31:0] select_ln128_fu_498_p3;
reg   [31:0] select_ln128_reg_874;
wire   [31:0] v71_fu_552_p3;
reg   [31:0] v71_reg_899;
wire   [31:0] v75_fu_560_p1;
wire   [31:0] v83_fu_564_p1;
wire   [0:0] tmp_35_fu_568_p3;
reg   [0:0] tmp_35_reg_915;
wire   [1:0] tmp_94_fu_575_p4;
reg   [1:0] tmp_94_reg_920;
wire   [31:0] v91_fu_627_p1;
wire   [31:0] v99_fu_632_p1;
reg   [4:0] v65_0_addr_reg_976;
reg   [4:0] v65_0_addr_reg_976_pp0_iter2_reg;
reg   [4:0] v65_0_addr_reg_976_pp0_iter3_reg;
reg   [4:0] v65_1_addr_reg_981;
reg   [4:0] v65_1_addr_reg_981_pp0_iter2_reg;
reg   [4:0] v65_1_addr_reg_981_pp0_iter3_reg;
reg   [4:0] v65_0_addr_19_reg_986;
reg   [4:0] v65_0_addr_19_reg_986_pp0_iter2_reg;
reg   [4:0] v65_0_addr_19_reg_986_pp0_iter3_reg;
reg   [4:0] v65_1_addr_19_reg_991;
reg   [4:0] v65_1_addr_19_reg_991_pp0_iter2_reg;
reg   [4:0] v65_1_addr_19_reg_991_pp0_iter3_reg;
reg   [2:0] tmp_93_reg_996;
wire   [31:0] v107_fu_726_p1;
wire   [31:0] v115_fu_731_p1;
wire   [31:0] select_ln173_fu_736_p3;
reg   [31:0] select_ln173_reg_1012;
wire   [31:0] select_ln183_fu_743_p3;
reg   [31:0] select_ln183_reg_1017;
reg   [31:0] v73_reg_1022;
reg   [31:0] v76_reg_1027;
reg   [31:0] v84_reg_1032;
reg   [4:0] v65_0_addr_20_reg_1037;
reg   [4:0] v65_0_addr_20_reg_1037_pp0_iter2_reg;
reg   [4:0] v65_0_addr_20_reg_1037_pp0_iter3_reg;
reg   [4:0] v65_1_addr_20_reg_1042;
reg   [4:0] v65_1_addr_20_reg_1042_pp0_iter2_reg;
reg   [4:0] v65_1_addr_20_reg_1042_pp0_iter3_reg;
reg   [4:0] v65_0_addr_21_reg_1047;
reg   [4:0] v65_0_addr_21_reg_1047_pp0_iter2_reg;
reg   [4:0] v65_0_addr_21_reg_1047_pp0_iter3_reg;
reg   [4:0] v65_0_addr_21_reg_1047_pp0_iter4_reg;
wire   [31:0] v123_fu_777_p1;
reg   [4:0] v65_1_addr_21_reg_1057;
reg   [4:0] v65_1_addr_21_reg_1057_pp0_iter2_reg;
reg   [4:0] v65_1_addr_21_reg_1057_pp0_iter3_reg;
reg   [4:0] v65_1_addr_21_reg_1057_pp0_iter4_reg;
wire   [31:0] v131_fu_781_p1;
reg   [31:0] v81_reg_1067;
reg   [31:0] v89_reg_1072;
reg   [31:0] v97_reg_1077;
reg   [31:0] v92_reg_1082;
reg   [31:0] v100_reg_1087;
reg   [31:0] v105_reg_1092;
reg   [31:0] v113_reg_1097;
reg   [31:0] v121_reg_1102;
reg   [31:0] v129_reg_1107;
reg   [31:0] v108_reg_1112;
reg   [31:0] v116_reg_1117;
reg   [31:0] v124_reg_1122;
reg   [31:0] v132_reg_1127;
reg   [31:0] v93_reg_1132;
reg   [31:0] v101_reg_1137;
reg   [31:0] v125_reg_1142;
reg   [31:0] v133_reg_1147;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln119_fu_444_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln128_fu_472_p1;
wire   [63:0] zext_ln137_fu_526_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln146_fu_543_p1;
wire   [63:0] zext_ln155_fu_595_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln164_fu_616_p1;
wire   [63:0] zext_ln173_fu_647_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln183_fu_663_p1;
wire   [63:0] zext_ln113_fu_688_p1;
wire   [63:0] zext_ln135_fu_711_p1;
wire   [63:0] zext_ln153_fu_758_p1;
wire   [63:0] zext_ln171_fu_771_p1;
reg   [31:0] v66_fu_100;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v126_fu_104;
wire   [6:0] add_ln112_fu_669_p2;
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
reg   [31:0] grp_fu_361_p0;
reg   [31:0] grp_fu_361_p1;
reg   [31:0] grp_fu_365_p0;
reg   [31:0] grp_fu_365_p1;
reg   [31:0] grp_fu_369_p0;
reg   [31:0] grp_fu_369_p1;
reg   [31:0] grp_fu_373_p0;
reg   [31:0] grp_fu_373_p1;
wire   [4:0] trunc_ln112_fu_430_p1;
wire   [10:0] tmp_s_fu_434_p4;
wire   [3:0] tmp_87_fu_450_p4;
wire   [10:0] tmp_88_fu_460_p5;
wire   [2:0] tmp_90_fu_506_p4;
wire   [10:0] tmp_91_fu_515_p5;
wire   [10:0] tmp_92_fu_532_p5;
wire   [10:0] tmp_95_fu_584_p5;
wire   [10:0] tmp_96_fu_601_p7;
wire   [10:0] tmp_97_fu_637_p5;
wire   [10:0] tmp_98_fu_653_p5;
wire   [4:0] lshr_ln113_s_fu_679_p4;
wire   [3:0] tmp_89_fu_694_p4;
wire   [4:0] or_ln135_s_fu_703_p3;
wire   [4:0] or_ln153_s_fu_750_p4;
wire   [4:0] or_ln171_s_fu_764_p3;
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
    end else if (((tmp_reg_832 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v126_fu_104 <= add_ln112_fu_669_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_fu_100 <= v70_27_reload;
    end else if (((tmp_reg_832 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_fu_100 <= v71_fu_552_p3;
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
        icmp_ln115_reg_856 <= icmp_ln115_fu_478_p2;
        select_ln119_reg_869 <= select_ln119_fu_490_p3;
        select_ln128_reg_874 <= select_ln128_fu_498_p3;
        tmp_34_reg_861 <= v68_reg_819[32'd5];
        v65_0_addr_20_reg_1037[0] <= zext_ln153_fu_758_p1[0];
v65_0_addr_20_reg_1037[4 : 2] <= zext_ln153_fu_758_p1[4 : 2];
        v65_0_addr_20_reg_1037_pp0_iter2_reg[0] <= v65_0_addr_20_reg_1037[0];
v65_0_addr_20_reg_1037_pp0_iter2_reg[4 : 2] <= v65_0_addr_20_reg_1037[4 : 2];
        v65_0_addr_20_reg_1037_pp0_iter3_reg[0] <= v65_0_addr_20_reg_1037_pp0_iter2_reg[0];
v65_0_addr_20_reg_1037_pp0_iter3_reg[4 : 2] <= v65_0_addr_20_reg_1037_pp0_iter2_reg[4 : 2];
        v65_0_addr_21_reg_1047[4 : 2] <= zext_ln171_fu_771_p1[4 : 2];
        v65_0_addr_21_reg_1047_pp0_iter2_reg[4 : 2] <= v65_0_addr_21_reg_1047[4 : 2];
        v65_0_addr_21_reg_1047_pp0_iter3_reg[4 : 2] <= v65_0_addr_21_reg_1047_pp0_iter2_reg[4 : 2];
        v65_0_addr_21_reg_1047_pp0_iter4_reg[4 : 2] <= v65_0_addr_21_reg_1047_pp0_iter3_reg[4 : 2];
        v65_1_addr_20_reg_1042[0] <= zext_ln153_fu_758_p1[0];
v65_1_addr_20_reg_1042[4 : 2] <= zext_ln153_fu_758_p1[4 : 2];
        v65_1_addr_20_reg_1042_pp0_iter2_reg[0] <= v65_1_addr_20_reg_1042[0];
v65_1_addr_20_reg_1042_pp0_iter2_reg[4 : 2] <= v65_1_addr_20_reg_1042[4 : 2];
        v65_1_addr_20_reg_1042_pp0_iter3_reg[0] <= v65_1_addr_20_reg_1042_pp0_iter2_reg[0];
v65_1_addr_20_reg_1042_pp0_iter3_reg[4 : 2] <= v65_1_addr_20_reg_1042_pp0_iter2_reg[4 : 2];
        v65_1_addr_21_reg_1057[4 : 2] <= zext_ln171_fu_771_p1[4 : 2];
        v65_1_addr_21_reg_1057_pp0_iter2_reg[4 : 2] <= v65_1_addr_21_reg_1057[4 : 2];
        v65_1_addr_21_reg_1057_pp0_iter3_reg[4 : 2] <= v65_1_addr_21_reg_1057_pp0_iter2_reg[4 : 2];
        v65_1_addr_21_reg_1057_pp0_iter4_reg[4 : 2] <= v65_1_addr_21_reg_1057_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_391 <= grp_fu_377_p3;
        reg_395 <= grp_fu_384_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_399 <= grp_fu_1434_p_dout0;
        reg_404 <= grp_fu_1438_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln173_reg_1012 <= select_ln173_fu_736_p3;
        select_ln183_reg_1017 <= select_ln183_fu_743_p3;
        tmp_93_reg_996 <= {{v68_reg_819[5:3]}};
        tmp_reg_832 <= ap_sig_allocacmp_v68[32'd6];
        tmp_reg_832_pp0_iter1_reg <= tmp_reg_832;
        tmp_reg_832_pp0_iter2_reg <= tmp_reg_832_pp0_iter1_reg;
        tmp_reg_832_pp0_iter3_reg <= tmp_reg_832_pp0_iter2_reg;
        v65_0_addr_19_reg_986[4 : 1] <= zext_ln135_fu_711_p1[4 : 1];
        v65_0_addr_19_reg_986_pp0_iter2_reg[4 : 1] <= v65_0_addr_19_reg_986[4 : 1];
        v65_0_addr_19_reg_986_pp0_iter3_reg[4 : 1] <= v65_0_addr_19_reg_986_pp0_iter2_reg[4 : 1];
        v65_0_addr_reg_976 <= zext_ln113_fu_688_p1;
        v65_0_addr_reg_976_pp0_iter2_reg <= v65_0_addr_reg_976;
        v65_0_addr_reg_976_pp0_iter3_reg <= v65_0_addr_reg_976_pp0_iter2_reg;
        v65_1_addr_19_reg_991[4 : 1] <= zext_ln135_fu_711_p1[4 : 1];
        v65_1_addr_19_reg_991_pp0_iter2_reg[4 : 1] <= v65_1_addr_19_reg_991[4 : 1];
        v65_1_addr_19_reg_991_pp0_iter3_reg[4 : 1] <= v65_1_addr_19_reg_991_pp0_iter2_reg[4 : 1];
        v65_1_addr_reg_981 <= zext_ln113_fu_688_p1;
        v65_1_addr_reg_981_pp0_iter2_reg <= v65_1_addr_reg_981;
        v65_1_addr_reg_981_pp0_iter3_reg <= v65_1_addr_reg_981_pp0_iter2_reg;
        v68_reg_819 <= ap_sig_allocacmp_v68;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_35_reg_915 <= v68_reg_819[32'd1];
        tmp_94_reg_920 <= {{v68_reg_819[4:3]}};
        v71_reg_899 <= v71_fu_552_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_1087 <= grp_fu_1446_p_dout0;
        v105_reg_1092 <= v65_0_q1;
        v113_reg_1097 <= v65_1_q1;
        v121_reg_1102 <= v65_0_q0;
        v129_reg_1107 <= v65_1_q0;
        v92_reg_1082 <= grp_fu_1442_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v101_reg_1137 <= grp_fu_1438_p_dout0;
        v93_reg_1132 <= grp_fu_1434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v108_reg_1112 <= grp_fu_1442_p_dout0;
        v116_reg_1117 <= grp_fu_1446_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_reg_1122 <= grp_fu_1442_p_dout0;
        v132_reg_1127 <= grp_fu_1446_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v125_reg_1142 <= grp_fu_1434_p_dout0;
        v133_reg_1147 <= grp_fu_1438_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v73_reg_1022 <= v65_0_q1;
        v76_reg_1027 <= grp_fu_1442_p_dout0;
        v81_reg_1067 <= v65_1_q1;
        v84_reg_1032 <= grp_fu_1446_p_dout0;
        v89_reg_1072 <= v65_0_q0;
        v97_reg_1077 <= v65_1_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_832 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        grp_fu_361_p0 = v121_reg_1102;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_361_p0 = v105_reg_1092;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_361_p0 = v89_reg_1072;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_361_p0 = v73_reg_1022;
    end else begin
        grp_fu_361_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_361_p1 = v124_reg_1122;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_361_p1 = v108_reg_1112;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_361_p1 = v92_reg_1082;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_361_p1 = v76_reg_1027;
    end else begin
        grp_fu_361_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_365_p0 = v129_reg_1107;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_365_p0 = v113_reg_1097;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_365_p0 = v97_reg_1077;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_365_p0 = v81_reg_1067;
    end else begin
        grp_fu_365_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_365_p1 = v132_reg_1127;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_365_p1 = v116_reg_1117;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_365_p1 = v100_reg_1087;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_365_p1 = v84_reg_1032;
    end else begin
        grp_fu_365_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_369_p0 = v123_fu_777_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_369_p0 = v107_fu_726_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_369_p0 = v91_fu_627_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_369_p0 = v75_fu_560_p1;
    end else begin
        grp_fu_369_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_369_p1 = v71_reg_899;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_369_p1 = v71_fu_552_p3;
    end else begin
        grp_fu_369_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_373_p0 = v131_fu_781_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_373_p0 = v115_fu_731_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_373_p0 = v99_fu_632_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_373_p0 = v83_fu_564_p1;
    end else begin
        grp_fu_373_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_373_p1 = v71_reg_899;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_373_p1 = v71_fu_552_p3;
    end else begin
        grp_fu_373_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_0_address0_local = zext_ln183_fu_663_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_0_address0_local = zext_ln164_fu_616_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_0_address0_local = zext_ln146_fu_543_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_0_address0_local = zext_ln128_fu_472_p1;
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
            v138_0_address1_local = zext_ln173_fu_647_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_0_address1_local = zext_ln155_fu_595_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_0_address1_local = zext_ln137_fu_526_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_0_address1_local = zext_ln119_fu_444_p1;
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
            v138_1_address0_local = zext_ln183_fu_663_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_1_address0_local = zext_ln164_fu_616_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_1_address0_local = zext_ln146_fu_543_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_1_address0_local = zext_ln128_fu_472_p1;
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
            v138_1_address1_local = zext_ln173_fu_647_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_1_address1_local = zext_ln155_fu_595_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_1_address1_local = zext_ln137_fu_526_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_1_address1_local = zext_ln119_fu_444_p1;
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
        v65_0_address0_local = v65_0_addr_21_reg_1047_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address0_local = v65_0_addr_19_reg_986_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address0_local = zext_ln171_fu_771_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address0_local = zext_ln135_fu_711_p1;
    end else begin
        v65_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address1_local = v65_0_addr_20_reg_1037_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address1_local = v65_0_addr_reg_976_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address1_local = zext_ln153_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address1_local = zext_ln113_fu_688_p1;
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
        v65_0_d0_local = v125_reg_1142;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_d0_local = v93_reg_1132;
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
        v65_1_address0_local = v65_1_addr_21_reg_1057_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address0_local = v65_1_addr_19_reg_991_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address0_local = zext_ln171_fu_771_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address0_local = zext_ln135_fu_711_p1;
    end else begin
        v65_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address1_local = v65_1_addr_20_reg_1042_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address1_local = v65_1_addr_reg_981_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address1_local = zext_ln153_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address1_local = zext_ln113_fu_688_p1;
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
        v65_1_d0_local = v133_reg_1147;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_d0_local = v101_reg_1137;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_832_pp0_iter3_reg == 1'd1))) begin
        v70_28_out_ap_vld = 1'b1;
    end else begin
        v70_28_out_ap_vld = 1'b0;
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
assign add_ln112_fu_669_p2 = (v68_reg_819 + 7'd8);
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
assign grp_fu_1434_p_din0 = grp_fu_361_p0;
assign grp_fu_1434_p_din1 = grp_fu_361_p1;
assign grp_fu_1434_p_opcode = 2'd0;
assign grp_fu_1438_p_ce = 1'b1;
assign grp_fu_1438_p_din0 = grp_fu_365_p0;
assign grp_fu_1438_p_din1 = grp_fu_365_p1;
assign grp_fu_1438_p_opcode = 2'd0;
assign grp_fu_1442_p_ce = 1'b1;
assign grp_fu_1442_p_din0 = grp_fu_369_p0;
assign grp_fu_1442_p_din1 = grp_fu_369_p1;
assign grp_fu_1446_p_ce = 1'b1;
assign grp_fu_1446_p_din0 = grp_fu_373_p0;
assign grp_fu_1446_p_din1 = grp_fu_373_p1;
assign grp_fu_377_p3 = ((tmp_34_reg_861[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign grp_fu_384_p3 = ((tmp_34_reg_861[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign icmp_ln115_fu_478_p2 = ((v68_reg_819 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln113_s_fu_679_p4 = {{v68_reg_819[5:1]}};
assign or_ln135_s_fu_703_p3 = {{tmp_89_fu_694_p4}, {1'd1}};
assign or_ln153_s_fu_750_p4 = {{{tmp_93_reg_996}, {1'd1}}, {tmp_35_reg_915}};
assign or_ln171_s_fu_764_p3 = {{tmp_93_reg_996}, {2'd3}};
assign select_ln119_fu_490_p3 = ((tmp_34_fu_483_p3[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign select_ln128_fu_498_p3 = ((tmp_34_fu_483_p3[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign select_ln173_fu_736_p3 = ((tmp_34_reg_861[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign select_ln183_fu_743_p3 = ((tmp_34_reg_861[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign tmp_34_fu_483_p3 = v68_reg_819[32'd5];
assign tmp_35_fu_568_p3 = v68_reg_819[32'd1];
assign tmp_87_fu_450_p4 = {{ap_sig_allocacmp_v68[4:1]}};
assign tmp_88_fu_460_p5 = {{{{tmp_195}, {4'd14}}, {tmp_87_fu_450_p4}}, {1'd1}};
assign tmp_89_fu_694_p4 = {{v68_reg_819[5:2]}};
assign tmp_90_fu_506_p4 = {{v68_reg_819[4:2]}};
assign tmp_91_fu_515_p5 = {{{{tmp_195}, {4'd14}}, {tmp_90_fu_506_p4}}, {2'd2}};
assign tmp_92_fu_532_p5 = {{{{tmp_195}, {4'd14}}, {tmp_90_fu_506_p4}}, {2'd3}};
assign tmp_94_fu_575_p4 = {{v68_reg_819[4:3]}};
assign tmp_95_fu_584_p5 = {{{{tmp_195}, {4'd14}}, {tmp_94_fu_575_p4}}, {3'd4}};
assign tmp_96_fu_601_p7 = {{{{{{tmp_195}, {4'd14}}, {tmp_94_fu_575_p4}}, {1'd1}}, {tmp_35_fu_568_p3}}, {1'd1}};
assign tmp_97_fu_637_p5 = {{{{tmp_195}, {4'd14}}, {tmp_94_reg_920}}, {3'd6}};
assign tmp_98_fu_653_p5 = {{{{tmp_195}, {4'd14}}, {tmp_94_reg_920}}, {3'd7}};
assign tmp_s_fu_434_p4 = {{{tmp_195}, {4'd14}}, {trunc_ln112_fu_430_p1}};
assign trunc_ln112_fu_430_p1 = ap_sig_allocacmp_v68[4:0];
assign v107_fu_726_p1 = reg_391;
assign v115_fu_731_p1 = reg_395;
assign v123_fu_777_p1 = select_ln173_reg_1012;
assign v131_fu_781_p1 = select_ln183_reg_1017;
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
assign v65_0_d1 = reg_399;
assign v65_0_we0 = v65_0_we0_local;
assign v65_0_we1 = v65_0_we1_local;
assign v65_1_address0 = v65_1_address0_local;
assign v65_1_address1 = v65_1_address1_local;
assign v65_1_ce0 = v65_1_ce0_local;
assign v65_1_ce1 = v65_1_ce1_local;
assign v65_1_d0 = v65_1_d0_local;
assign v65_1_d1 = reg_404;
assign v65_1_we0 = v65_1_we0_local;
assign v65_1_we1 = v65_1_we1_local;
assign v70_28_out = v66_fu_100;
assign v71_fu_552_p3 = ((icmp_ln115_reg_856[0:0] == 1'b1) ? v69_14 : v66_fu_100);
assign v75_fu_560_p1 = select_ln119_reg_869;
assign v83_fu_564_p1 = select_ln128_reg_874;
assign v91_fu_627_p1 = reg_391;
assign v99_fu_632_p1 = reg_395;
assign zext_ln113_fu_688_p1 = lshr_ln113_s_fu_679_p4;
assign zext_ln119_fu_444_p1 = tmp_s_fu_434_p4;
assign zext_ln128_fu_472_p1 = tmp_88_fu_460_p5;
assign zext_ln135_fu_711_p1 = or_ln135_s_fu_703_p3;
assign zext_ln137_fu_526_p1 = tmp_91_fu_515_p5;
assign zext_ln146_fu_543_p1 = tmp_92_fu_532_p5;
assign zext_ln153_fu_758_p1 = or_ln153_s_fu_750_p4;
assign zext_ln155_fu_595_p1 = tmp_95_fu_584_p5;
assign zext_ln164_fu_616_p1 = tmp_96_fu_601_p7;
assign zext_ln171_fu_771_p1 = or_ln171_s_fu_764_p3;
assign zext_ln173_fu_647_p1 = tmp_97_fu_637_p5;
assign zext_ln183_fu_663_p1 = tmp_98_fu_653_p5;
always @ (posedge ap_clk) begin
    v65_0_addr_19_reg_986[0] <= 1'b1;
    v65_0_addr_19_reg_986_pp0_iter2_reg[0] <= 1'b1;
    v65_0_addr_19_reg_986_pp0_iter3_reg[0] <= 1'b1;
    v65_1_addr_19_reg_991[0] <= 1'b1;
    v65_1_addr_19_reg_991_pp0_iter2_reg[0] <= 1'b1;
    v65_1_addr_19_reg_991_pp0_iter3_reg[0] <= 1'b1;
    v65_0_addr_20_reg_1037[1] <= 1'b1;
    v65_0_addr_20_reg_1037_pp0_iter2_reg[1] <= 1'b1;
    v65_0_addr_20_reg_1037_pp0_iter3_reg[1] <= 1'b1;
    v65_1_addr_20_reg_1042[1] <= 1'b1;
    v65_1_addr_20_reg_1042_pp0_iter2_reg[1] <= 1'b1;
    v65_1_addr_20_reg_1042_pp0_iter3_reg[1] <= 1'b1;
    v65_0_addr_21_reg_1047[1:0] <= 2'b11;
    v65_0_addr_21_reg_1047_pp0_iter2_reg[1:0] <= 2'b11;
    v65_0_addr_21_reg_1047_pp0_iter3_reg[1:0] <= 2'b11;
    v65_0_addr_21_reg_1047_pp0_iter4_reg[1:0] <= 2'b11;
    v65_1_addr_21_reg_1057[1:0] <= 2'b11;
    v65_1_addr_21_reg_1057_pp0_iter2_reg[1:0] <= 2'b11;
    v65_1_addr_21_reg_1057_pp0_iter3_reg[1:0] <= 2'b11;
    v65_1_addr_21_reg_1057_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 