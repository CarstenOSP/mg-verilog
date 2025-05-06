
module bicg_bicg_node2_Pipeline_label_416 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v70_28_reload,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,tmp_195,v138_0_address0,v138_0_ce0,v138_0_q0,v138_0_address1,v138_0_ce1,v138_0_q1,v138_1_address0,v138_1_ce0,v138_1_q0,v138_1_address1,v138_1_ce1,v138_1_q1,v69_15,v70_29_out_i,v70_29_out_o,v70_29_out_o_ap_vld,grp_fu_1434_p_din0,grp_fu_1434_p_din1,grp_fu_1434_p_opcode,grp_fu_1434_p_dout0,grp_fu_1434_p_ce,grp_fu_1438_p_din0,grp_fu_1438_p_din1,grp_fu_1438_p_opcode,grp_fu_1438_p_dout0,grp_fu_1438_p_ce,grp_fu_1442_p_din0,grp_fu_1442_p_din1,grp_fu_1442_p_dout0,grp_fu_1442_p_ce,grp_fu_1446_p_din0,grp_fu_1446_p_din1,grp_fu_1446_p_dout0,grp_fu_1446_p_ce);  
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
input  [31:0] v70_28_reload;
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
input  [31:0] v69_15;
input  [31:0] v70_29_out_i;
output  [31:0] v70_29_out_o;
output   v70_29_out_o_ap_vld;
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
reg[31:0] v70_29_out_o;
reg v70_29_out_o_ap_vld;
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
reg   [0:0] tmp_reg_810;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_364_p3;
reg   [31:0] reg_378;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_371_p3;
reg   [31:0] reg_382;
reg   [31:0] reg_386;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_391;
reg   [6:0] v68_reg_797;
wire   [0:0] icmp_ln115_fu_466_p2;
reg   [0:0] icmp_ln115_reg_834;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] tmp_32_fu_471_p3;
reg   [0:0] tmp_32_reg_839;
wire   [31:0] select_ln119_fu_478_p3;
reg   [31:0] select_ln119_reg_847;
wire   [31:0] select_ln128_fu_486_p3;
reg   [31:0] select_ln128_reg_852;
wire   [31:0] v71_fu_541_p3;
reg   [31:0] v71_reg_877;
wire   [31:0] v75_fu_549_p1;
wire   [31:0] v83_fu_553_p1;
wire   [0:0] tmp_33_fu_557_p3;
reg   [0:0] tmp_33_reg_893;
wire   [1:0] tmp_82_fu_564_p4;
reg   [1:0] tmp_82_reg_898;
wire   [31:0] v91_fu_617_p1;
wire   [31:0] v99_fu_622_p1;
reg   [4:0] v65_0_addr_reg_954;
reg   [4:0] v65_0_addr_reg_954_pp0_iter2_reg;
reg   [4:0] v65_0_addr_reg_954_pp0_iter3_reg;
reg   [4:0] v65_1_addr_reg_959;
reg   [4:0] v65_1_addr_reg_959_pp0_iter2_reg;
reg   [4:0] v65_1_addr_reg_959_pp0_iter3_reg;
reg   [4:0] v65_0_addr_16_reg_964;
reg   [4:0] v65_0_addr_16_reg_964_pp0_iter2_reg;
reg   [4:0] v65_0_addr_16_reg_964_pp0_iter3_reg;
reg   [4:0] v65_1_addr_16_reg_969;
reg   [4:0] v65_1_addr_16_reg_969_pp0_iter2_reg;
reg   [4:0] v65_1_addr_16_reg_969_pp0_iter3_reg;
reg   [2:0] tmp_81_reg_974;
wire   [31:0] v107_fu_716_p1;
wire   [31:0] v115_fu_721_p1;
wire   [31:0] select_ln173_fu_726_p3;
reg   [31:0] select_ln173_reg_990;
wire   [31:0] select_ln183_fu_733_p3;
reg   [31:0] select_ln183_reg_995;
reg   [31:0] v73_reg_1000;
reg   [31:0] v76_reg_1005;
reg   [31:0] v84_reg_1010;
reg   [4:0] v65_0_addr_17_reg_1015;
reg   [4:0] v65_0_addr_17_reg_1015_pp0_iter2_reg;
reg   [4:0] v65_0_addr_17_reg_1015_pp0_iter3_reg;
reg   [4:0] v65_1_addr_17_reg_1020;
reg   [4:0] v65_1_addr_17_reg_1020_pp0_iter2_reg;
reg   [4:0] v65_1_addr_17_reg_1020_pp0_iter3_reg;
reg   [4:0] v65_0_addr_18_reg_1025;
reg   [4:0] v65_0_addr_18_reg_1025_pp0_iter2_reg;
reg   [4:0] v65_0_addr_18_reg_1025_pp0_iter3_reg;
reg   [4:0] v65_0_addr_18_reg_1025_pp0_iter4_reg;
wire   [31:0] v123_fu_767_p1;
reg   [4:0] v65_1_addr_18_reg_1035;
reg   [4:0] v65_1_addr_18_reg_1035_pp0_iter2_reg;
reg   [4:0] v65_1_addr_18_reg_1035_pp0_iter3_reg;
reg   [4:0] v65_1_addr_18_reg_1035_pp0_iter4_reg;
wire   [31:0] v131_fu_771_p1;
reg   [31:0] v81_reg_1045;
reg   [31:0] v89_reg_1050;
reg   [31:0] v97_reg_1055;
reg   [31:0] v92_reg_1060;
reg   [31:0] v100_reg_1065;
reg   [31:0] v105_reg_1070;
reg   [31:0] v113_reg_1075;
reg   [31:0] v121_reg_1080;
reg   [31:0] v129_reg_1085;
reg   [31:0] v108_reg_1090;
reg   [31:0] v116_reg_1095;
reg   [31:0] v124_reg_1100;
reg   [31:0] v132_reg_1105;
reg   [31:0] v93_reg_1110;
reg   [31:0] v101_reg_1115;
reg   [31:0] v125_reg_1120;
reg   [31:0] v133_reg_1125;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln119_fu_432_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln128_fu_460_p1;
wire   [63:0] zext_ln137_fu_514_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln146_fu_531_p1;
wire   [63:0] zext_ln155_fu_584_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln164_fu_605_p1;
wire   [63:0] zext_ln173_fu_637_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln183_fu_653_p1;
wire   [63:0] zext_ln113_fu_678_p1;
wire   [63:0] zext_ln135_fu_701_p1;
wire   [63:0] zext_ln153_fu_748_p1;
wire   [63:0] zext_ln171_fu_761_p1;
wire    ap_loop_init;
reg   [6:0] v126_fu_98;
wire   [6:0] add_ln112_fu_659_p2;
reg   [6:0] ap_sig_allocacmp_v68;
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
reg   [31:0] grp_fu_348_p0;
reg   [31:0] grp_fu_348_p1;
reg   [31:0] grp_fu_352_p0;
reg   [31:0] grp_fu_352_p1;
reg   [31:0] grp_fu_356_p0;
reg   [31:0] grp_fu_356_p1;
reg   [31:0] grp_fu_360_p0;
reg   [31:0] grp_fu_360_p1;
wire   [4:0] trunc_ln112_fu_418_p1;
wire   [10:0] tmp_s_fu_422_p4;
wire   [3:0] tmp_75_fu_438_p4;
wire   [10:0] tmp_76_fu_448_p5;
wire   [2:0] tmp_78_fu_494_p4;
wire   [10:0] tmp_79_fu_503_p5;
wire   [10:0] tmp_80_fu_520_p5;
wire   [10:0] tmp_83_fu_573_p5;
wire   [10:0] tmp_84_fu_590_p7;
wire   [10:0] tmp_85_fu_627_p5;
wire   [10:0] tmp_86_fu_643_p5;
wire   [4:0] lshr_ln113_s_fu_669_p4;
wire   [3:0] tmp_77_fu_684_p4;
wire   [4:0] or_ln135_s_fu_693_p3;
wire   [4:0] or_ln153_s_fu_740_p4;
wire   [4:0] or_ln171_s_fu_754_p3;
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
#0 v126_fu_98 = 7'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v126_fu_98 <= 7'd0;
    end else if (((tmp_reg_810 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v126_fu_98 <= add_ln112_fu_659_p2;
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
        icmp_ln115_reg_834 <= icmp_ln115_fu_466_p2;
        select_ln119_reg_847 <= select_ln119_fu_478_p3;
        select_ln128_reg_852 <= select_ln128_fu_486_p3;
        tmp_32_reg_839 <= v68_reg_797[32'd5];
        v65_0_addr_17_reg_1015[0] <= zext_ln153_fu_748_p1[0];
v65_0_addr_17_reg_1015[4 : 2] <= zext_ln153_fu_748_p1[4 : 2];
        v65_0_addr_17_reg_1015_pp0_iter2_reg[0] <= v65_0_addr_17_reg_1015[0];
v65_0_addr_17_reg_1015_pp0_iter2_reg[4 : 2] <= v65_0_addr_17_reg_1015[4 : 2];
        v65_0_addr_17_reg_1015_pp0_iter3_reg[0] <= v65_0_addr_17_reg_1015_pp0_iter2_reg[0];
v65_0_addr_17_reg_1015_pp0_iter3_reg[4 : 2] <= v65_0_addr_17_reg_1015_pp0_iter2_reg[4 : 2];
        v65_0_addr_18_reg_1025[4 : 2] <= zext_ln171_fu_761_p1[4 : 2];
        v65_0_addr_18_reg_1025_pp0_iter2_reg[4 : 2] <= v65_0_addr_18_reg_1025[4 : 2];
        v65_0_addr_18_reg_1025_pp0_iter3_reg[4 : 2] <= v65_0_addr_18_reg_1025_pp0_iter2_reg[4 : 2];
        v65_0_addr_18_reg_1025_pp0_iter4_reg[4 : 2] <= v65_0_addr_18_reg_1025_pp0_iter3_reg[4 : 2];
        v65_1_addr_17_reg_1020[0] <= zext_ln153_fu_748_p1[0];
v65_1_addr_17_reg_1020[4 : 2] <= zext_ln153_fu_748_p1[4 : 2];
        v65_1_addr_17_reg_1020_pp0_iter2_reg[0] <= v65_1_addr_17_reg_1020[0];
v65_1_addr_17_reg_1020_pp0_iter2_reg[4 : 2] <= v65_1_addr_17_reg_1020[4 : 2];
        v65_1_addr_17_reg_1020_pp0_iter3_reg[0] <= v65_1_addr_17_reg_1020_pp0_iter2_reg[0];
v65_1_addr_17_reg_1020_pp0_iter3_reg[4 : 2] <= v65_1_addr_17_reg_1020_pp0_iter2_reg[4 : 2];
        v65_1_addr_18_reg_1035[4 : 2] <= zext_ln171_fu_761_p1[4 : 2];
        v65_1_addr_18_reg_1035_pp0_iter2_reg[4 : 2] <= v65_1_addr_18_reg_1035[4 : 2];
        v65_1_addr_18_reg_1035_pp0_iter3_reg[4 : 2] <= v65_1_addr_18_reg_1035_pp0_iter2_reg[4 : 2];
        v65_1_addr_18_reg_1035_pp0_iter4_reg[4 : 2] <= v65_1_addr_18_reg_1035_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_378 <= grp_fu_364_p3;
        reg_382 <= grp_fu_371_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_386 <= grp_fu_1434_p_dout0;
        reg_391 <= grp_fu_1438_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln173_reg_990 <= select_ln173_fu_726_p3;
        select_ln183_reg_995 <= select_ln183_fu_733_p3;
        tmp_81_reg_974 <= {{v68_reg_797[5:3]}};
        tmp_reg_810 <= ap_sig_allocacmp_v68[32'd6];
        v65_0_addr_16_reg_964[4 : 1] <= zext_ln135_fu_701_p1[4 : 1];
        v65_0_addr_16_reg_964_pp0_iter2_reg[4 : 1] <= v65_0_addr_16_reg_964[4 : 1];
        v65_0_addr_16_reg_964_pp0_iter3_reg[4 : 1] <= v65_0_addr_16_reg_964_pp0_iter2_reg[4 : 1];
        v65_0_addr_reg_954 <= zext_ln113_fu_678_p1;
        v65_0_addr_reg_954_pp0_iter2_reg <= v65_0_addr_reg_954;
        v65_0_addr_reg_954_pp0_iter3_reg <= v65_0_addr_reg_954_pp0_iter2_reg;
        v65_1_addr_16_reg_969[4 : 1] <= zext_ln135_fu_701_p1[4 : 1];
        v65_1_addr_16_reg_969_pp0_iter2_reg[4 : 1] <= v65_1_addr_16_reg_969[4 : 1];
        v65_1_addr_16_reg_969_pp0_iter3_reg[4 : 1] <= v65_1_addr_16_reg_969_pp0_iter2_reg[4 : 1];
        v65_1_addr_reg_959 <= zext_ln113_fu_678_p1;
        v65_1_addr_reg_959_pp0_iter2_reg <= v65_1_addr_reg_959;
        v65_1_addr_reg_959_pp0_iter3_reg <= v65_1_addr_reg_959_pp0_iter2_reg;
        v68_reg_797 <= ap_sig_allocacmp_v68;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_33_reg_893 <= v68_reg_797[32'd1];
        tmp_82_reg_898 <= {{v68_reg_797[4:3]}};
        v71_reg_877 <= v71_fu_541_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_1065 <= grp_fu_1446_p_dout0;
        v105_reg_1070 <= v65_0_q1;
        v113_reg_1075 <= v65_1_q1;
        v121_reg_1080 <= v65_0_q0;
        v129_reg_1085 <= v65_1_q0;
        v92_reg_1060 <= grp_fu_1442_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v101_reg_1115 <= grp_fu_1438_p_dout0;
        v93_reg_1110 <= grp_fu_1434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v108_reg_1090 <= grp_fu_1442_p_dout0;
        v116_reg_1095 <= grp_fu_1446_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_reg_1100 <= grp_fu_1442_p_dout0;
        v132_reg_1105 <= grp_fu_1446_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v125_reg_1120 <= grp_fu_1434_p_dout0;
        v133_reg_1125 <= grp_fu_1438_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v73_reg_1000 <= v65_0_q1;
        v76_reg_1005 <= grp_fu_1442_p_dout0;
        v81_reg_1045 <= v65_1_q1;
        v84_reg_1010 <= grp_fu_1446_p_dout0;
        v89_reg_1050 <= v65_0_q0;
        v97_reg_1055 <= v65_1_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_810 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v68 = 7'd0;
    end else begin
        ap_sig_allocacmp_v68 = v126_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_348_p0 = v121_reg_1080;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_348_p0 = v105_reg_1070;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_348_p0 = v89_reg_1050;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_348_p0 = v73_reg_1000;
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_348_p1 = v124_reg_1100;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_348_p1 = v108_reg_1090;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_348_p1 = v92_reg_1060;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_348_p1 = v76_reg_1005;
    end else begin
        grp_fu_348_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_352_p0 = v129_reg_1085;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_352_p0 = v113_reg_1075;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_352_p0 = v97_reg_1055;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_352_p0 = v81_reg_1045;
    end else begin
        grp_fu_352_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_352_p1 = v132_reg_1105;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_352_p1 = v116_reg_1095;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_352_p1 = v100_reg_1065;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_352_p1 = v84_reg_1010;
    end else begin
        grp_fu_352_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_356_p0 = v123_fu_767_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_356_p0 = v107_fu_716_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_356_p0 = v91_fu_617_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_356_p0 = v75_fu_549_p1;
    end else begin
        grp_fu_356_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_356_p1 = v71_reg_877;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_356_p1 = v71_fu_541_p3;
    end else begin
        grp_fu_356_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_360_p0 = v131_fu_771_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_360_p0 = v115_fu_721_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_360_p0 = v99_fu_622_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_360_p0 = v83_fu_553_p1;
    end else begin
        grp_fu_360_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_360_p1 = v71_reg_877;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_360_p1 = v71_fu_541_p3;
    end else begin
        grp_fu_360_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_0_address0_local = zext_ln183_fu_653_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_0_address0_local = zext_ln164_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_0_address0_local = zext_ln146_fu_531_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_0_address0_local = zext_ln128_fu_460_p1;
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
            v138_0_address1_local = zext_ln173_fu_637_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_0_address1_local = zext_ln155_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_0_address1_local = zext_ln137_fu_514_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_0_address1_local = zext_ln119_fu_432_p1;
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
            v138_1_address0_local = zext_ln183_fu_653_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_1_address0_local = zext_ln164_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_1_address0_local = zext_ln146_fu_531_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_1_address0_local = zext_ln128_fu_460_p1;
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
            v138_1_address1_local = zext_ln173_fu_637_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_1_address1_local = zext_ln155_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_1_address1_local = zext_ln137_fu_514_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_1_address1_local = zext_ln119_fu_432_p1;
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
        v65_0_address0_local = v65_0_addr_18_reg_1025_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address0_local = v65_0_addr_16_reg_964_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address0_local = zext_ln171_fu_761_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address0_local = zext_ln135_fu_701_p1;
    end else begin
        v65_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address1_local = v65_0_addr_17_reg_1015_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address1_local = v65_0_addr_reg_954_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address1_local = zext_ln153_fu_748_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address1_local = zext_ln113_fu_678_p1;
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
        v65_0_d0_local = v125_reg_1120;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_d0_local = v93_reg_1110;
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
        v65_1_address0_local = v65_1_addr_18_reg_1035_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address0_local = v65_1_addr_16_reg_969_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address0_local = zext_ln171_fu_761_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address0_local = zext_ln135_fu_701_p1;
    end else begin
        v65_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address1_local = v65_1_addr_17_reg_1020_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address1_local = v65_1_addr_reg_959_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address1_local = zext_ln153_fu_748_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address1_local = zext_ln113_fu_678_p1;
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
        v65_1_d0_local = v133_reg_1125;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_d0_local = v101_reg_1115;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v70_29_out_o = v70_28_reload;
    end else if (((tmp_reg_810 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v70_29_out_o = v71_fu_541_p3;
    end else begin
        v70_29_out_o = v70_29_out_i;
    end
end
always @ (*) begin
    if ((((tmp_reg_810 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v70_29_out_o_ap_vld = 1'b1;
    end else begin
        v70_29_out_o_ap_vld = 1'b0;
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
assign add_ln112_fu_659_p2 = (v68_reg_797 + 7'd8);
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
assign grp_fu_1434_p_ce = 1'b1;
assign grp_fu_1434_p_din0 = grp_fu_348_p0;
assign grp_fu_1434_p_din1 = grp_fu_348_p1;
assign grp_fu_1434_p_opcode = 2'd0;
assign grp_fu_1438_p_ce = 1'b1;
assign grp_fu_1438_p_din0 = grp_fu_352_p0;
assign grp_fu_1438_p_din1 = grp_fu_352_p1;
assign grp_fu_1438_p_opcode = 2'd0;
assign grp_fu_1442_p_ce = 1'b1;
assign grp_fu_1442_p_din0 = grp_fu_356_p0;
assign grp_fu_1442_p_din1 = grp_fu_356_p1;
assign grp_fu_1446_p_ce = 1'b1;
assign grp_fu_1446_p_din0 = grp_fu_360_p0;
assign grp_fu_1446_p_din1 = grp_fu_360_p1;
assign grp_fu_364_p3 = ((tmp_32_reg_839[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign grp_fu_371_p3 = ((tmp_32_reg_839[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign icmp_ln115_fu_466_p2 = ((v68_reg_797 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln113_s_fu_669_p4 = {{v68_reg_797[5:1]}};
assign or_ln135_s_fu_693_p3 = {{tmp_77_fu_684_p4}, {1'd1}};
assign or_ln153_s_fu_740_p4 = {{{tmp_81_reg_974}, {1'd1}}, {tmp_33_reg_893}};
assign or_ln171_s_fu_754_p3 = {{tmp_81_reg_974}, {2'd3}};
assign select_ln119_fu_478_p3 = ((tmp_32_fu_471_p3[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign select_ln128_fu_486_p3 = ((tmp_32_fu_471_p3[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign select_ln173_fu_726_p3 = ((tmp_32_reg_839[0:0] == 1'b1) ? v138_1_q1 : v138_0_q1);
assign select_ln183_fu_733_p3 = ((tmp_32_reg_839[0:0] == 1'b1) ? v138_1_q0 : v138_0_q0);
assign tmp_32_fu_471_p3 = v68_reg_797[32'd5];
assign tmp_33_fu_557_p3 = v68_reg_797[32'd1];
assign tmp_75_fu_438_p4 = {{ap_sig_allocacmp_v68[4:1]}};
assign tmp_76_fu_448_p5 = {{{{tmp_195}, {4'd15}}, {tmp_75_fu_438_p4}}, {1'd1}};
assign tmp_77_fu_684_p4 = {{v68_reg_797[5:2]}};
assign tmp_78_fu_494_p4 = {{v68_reg_797[4:2]}};
assign tmp_79_fu_503_p5 = {{{{tmp_195}, {4'd15}}, {tmp_78_fu_494_p4}}, {2'd2}};
assign tmp_80_fu_520_p5 = {{{{tmp_195}, {4'd15}}, {tmp_78_fu_494_p4}}, {2'd3}};
assign tmp_82_fu_564_p4 = {{v68_reg_797[4:3]}};
assign tmp_83_fu_573_p5 = {{{{tmp_195}, {4'd15}}, {tmp_82_fu_564_p4}}, {3'd4}};
assign tmp_84_fu_590_p7 = {{{{{{tmp_195}, {4'd15}}, {tmp_82_fu_564_p4}}, {1'd1}}, {tmp_33_fu_557_p3}}, {1'd1}};
assign tmp_85_fu_627_p5 = {{{{tmp_195}, {4'd15}}, {tmp_82_reg_898}}, {3'd6}};
assign tmp_86_fu_643_p5 = {{{{tmp_195}, {4'd15}}, {tmp_82_reg_898}}, {3'd7}};
assign tmp_s_fu_422_p4 = {{{tmp_195}, {4'd15}}, {trunc_ln112_fu_418_p1}};
assign trunc_ln112_fu_418_p1 = ap_sig_allocacmp_v68[4:0];
assign v107_fu_716_p1 = reg_378;
assign v115_fu_721_p1 = reg_382;
assign v123_fu_767_p1 = select_ln173_reg_990;
assign v131_fu_771_p1 = select_ln183_reg_995;
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
assign v65_0_d1 = reg_386;
assign v65_0_we0 = v65_0_we0_local;
assign v65_0_we1 = v65_0_we1_local;
assign v65_1_address0 = v65_1_address0_local;
assign v65_1_address1 = v65_1_address1_local;
assign v65_1_ce0 = v65_1_ce0_local;
assign v65_1_ce1 = v65_1_ce1_local;
assign v65_1_d0 = v65_1_d0_local;
assign v65_1_d1 = reg_391;
assign v65_1_we0 = v65_1_we0_local;
assign v65_1_we1 = v65_1_we1_local;
assign v71_fu_541_p3 = ((icmp_ln115_reg_834[0:0] == 1'b1) ? v69_15 : v70_29_out_i);
assign v75_fu_549_p1 = select_ln119_reg_847;
assign v83_fu_553_p1 = select_ln128_reg_852;
assign v91_fu_617_p1 = reg_378;
assign v99_fu_622_p1 = reg_382;
assign zext_ln113_fu_678_p1 = lshr_ln113_s_fu_669_p4;
assign zext_ln119_fu_432_p1 = tmp_s_fu_422_p4;
assign zext_ln128_fu_460_p1 = tmp_76_fu_448_p5;
assign zext_ln135_fu_701_p1 = or_ln135_s_fu_693_p3;
assign zext_ln137_fu_514_p1 = tmp_79_fu_503_p5;
assign zext_ln146_fu_531_p1 = tmp_80_fu_520_p5;
assign zext_ln153_fu_748_p1 = or_ln153_s_fu_740_p4;
assign zext_ln155_fu_584_p1 = tmp_83_fu_573_p5;
assign zext_ln164_fu_605_p1 = tmp_84_fu_590_p7;
assign zext_ln171_fu_761_p1 = or_ln171_s_fu_754_p3;
assign zext_ln173_fu_637_p1 = tmp_85_fu_627_p5;
assign zext_ln183_fu_653_p1 = tmp_86_fu_643_p5;
always @ (posedge ap_clk) begin
    v65_0_addr_16_reg_964[0] <= 1'b1;
    v65_0_addr_16_reg_964_pp0_iter2_reg[0] <= 1'b1;
    v65_0_addr_16_reg_964_pp0_iter3_reg[0] <= 1'b1;
    v65_1_addr_16_reg_969[0] <= 1'b1;
    v65_1_addr_16_reg_969_pp0_iter2_reg[0] <= 1'b1;
    v65_1_addr_16_reg_969_pp0_iter3_reg[0] <= 1'b1;
    v65_0_addr_17_reg_1015[1] <= 1'b1;
    v65_0_addr_17_reg_1015_pp0_iter2_reg[1] <= 1'b1;
    v65_0_addr_17_reg_1015_pp0_iter3_reg[1] <= 1'b1;
    v65_1_addr_17_reg_1020[1] <= 1'b1;
    v65_1_addr_17_reg_1020_pp0_iter2_reg[1] <= 1'b1;
    v65_1_addr_17_reg_1020_pp0_iter3_reg[1] <= 1'b1;
    v65_0_addr_18_reg_1025[1:0] <= 2'b11;
    v65_0_addr_18_reg_1025_pp0_iter2_reg[1:0] <= 2'b11;
    v65_0_addr_18_reg_1025_pp0_iter3_reg[1:0] <= 2'b11;
    v65_0_addr_18_reg_1025_pp0_iter4_reg[1:0] <= 2'b11;
    v65_1_addr_18_reg_1035[1:0] <= 2'b11;
    v65_1_addr_18_reg_1035_pp0_iter2_reg[1:0] <= 2'b11;
    v65_1_addr_18_reg_1035_pp0_iter3_reg[1:0] <= 2'b11;
    v65_1_addr_18_reg_1035_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
