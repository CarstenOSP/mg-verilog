module bicg_bicg_node2_Pipeline_label_45 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v70_2_reload,zext_ln119_3,v138_address0,v138_ce0,v138_q0,v138_address1,v138_ce1,v138_q1,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,v69_3,tmp_48,v70_3_out_i,v70_3_out_o,v70_3_out_o_ap_vld,grp_fu_472_p_din0,grp_fu_472_p_din1,grp_fu_472_p_opcode,grp_fu_472_p_dout0,grp_fu_472_p_ce,grp_fu_476_p_din0,grp_fu_476_p_din1,grp_fu_476_p_opcode,grp_fu_476_p_dout0,grp_fu_476_p_ce,grp_fu_480_p_din0,grp_fu_480_p_din1,grp_fu_480_p_dout0,grp_fu_480_p_ce,grp_fu_484_p_din0,grp_fu_484_p_din1,grp_fu_484_p_dout0,grp_fu_484_p_ce); 
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
input  [31:0] v70_2_reload;
input  [11:0] zext_ln119_3;
output  [11:0] v138_address0;
output   v138_ce0;
input  [31:0] v138_q0;
output  [11:0] v138_address1;
output   v138_ce1;
input  [31:0] v138_q1;
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
input  [31:0] v69_3;
input  [3:0] tmp_48;
input  [31:0] v70_3_out_i;
output  [31:0] v70_3_out_o;
output   v70_3_out_o_ap_vld;
output  [31:0] grp_fu_472_p_din0;
output  [31:0] grp_fu_472_p_din1;
output  [1:0] grp_fu_472_p_opcode;
input  [31:0] grp_fu_472_p_dout0;
output   grp_fu_472_p_ce;
output  [31:0] grp_fu_476_p_din0;
output  [31:0] grp_fu_476_p_din1;
output  [1:0] grp_fu_476_p_opcode;
input  [31:0] grp_fu_476_p_dout0;
output   grp_fu_476_p_ce;
output  [31:0] grp_fu_480_p_din0;
output  [31:0] grp_fu_480_p_din1;
input  [31:0] grp_fu_480_p_dout0;
output   grp_fu_480_p_ce;
output  [31:0] grp_fu_484_p_din0;
output  [31:0] grp_fu_484_p_din1;
input  [31:0] grp_fu_484_p_dout0;
output   grp_fu_484_p_ce;
reg ap_idle;
reg[31:0] v70_3_out_o;
reg v70_3_out_o_ap_vld;
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
reg   [0:0] tmp_reg_645;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_291;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_295;
reg   [31:0] reg_299;
reg   [31:0] reg_304;
reg   [6:0] v68_reg_636;
wire   [4:0] lshr_ln113_3_fu_346_p4;
reg   [4:0] lshr_ln113_3_reg_654;
wire   [0:0] icmp_ln115_fu_373_p2;
reg   [0:0] icmp_ln115_reg_664;
wire   [3:0] tmp_1_fu_378_p4;
reg   [3:0] tmp_1_reg_669;
wire   [31:0] v71_fu_423_p3;
reg   [31:0] v71_reg_684;
wire   [31:0] v75_fu_431_p1;
wire   [31:0] v83_fu_436_p1;
wire   [2:0] tmp_4_fu_441_p4;
reg   [2:0] tmp_4_reg_700;
wire   [0:0] tmp_6_fu_466_p3;
reg   [0:0] tmp_6_reg_713;
wire   [31:0] v91_fu_499_p1;
wire   [31:0] v99_fu_504_p1;
reg   [4:0] v65_0_addr_reg_743;
reg   [4:0] v65_0_addr_reg_743_pp0_iter2_reg;
reg   [4:0] v65_0_addr_reg_743_pp0_iter3_reg;
reg   [4:0] v65_1_addr_reg_748;
reg   [4:0] v65_1_addr_reg_748_pp0_iter2_reg;
reg   [4:0] v65_1_addr_reg_748_pp0_iter3_reg;
reg   [4:0] v65_0_addr_1_reg_753;
reg   [4:0] v65_0_addr_1_reg_753_pp0_iter2_reg;
reg   [4:0] v65_0_addr_1_reg_753_pp0_iter3_reg;
reg   [4:0] v65_1_addr_1_reg_758;
reg   [4:0] v65_1_addr_1_reg_758_pp0_iter2_reg;
reg   [4:0] v65_1_addr_1_reg_758_pp0_iter3_reg;
wire   [31:0] v107_fu_567_p1;
wire   [31:0] v115_fu_572_p1;
reg   [31:0] v73_reg_773;
reg   [31:0] v76_reg_778;
reg   [31:0] v84_reg_783;
reg   [4:0] v65_0_addr_2_reg_788;
reg   [4:0] v65_0_addr_2_reg_788_pp0_iter2_reg;
reg   [4:0] v65_0_addr_2_reg_788_pp0_iter3_reg;
reg   [4:0] v65_1_addr_2_reg_793;
reg   [4:0] v65_1_addr_2_reg_793_pp0_iter2_reg;
reg   [4:0] v65_1_addr_2_reg_793_pp0_iter3_reg;
reg   [4:0] v65_0_addr_3_reg_798;
reg   [4:0] v65_0_addr_3_reg_798_pp0_iter2_reg;
reg   [4:0] v65_0_addr_3_reg_798_pp0_iter3_reg;
reg   [4:0] v65_0_addr_3_reg_798_pp0_iter4_reg;
wire   [31:0] v123_fu_604_p1;
reg   [4:0] v65_1_addr_3_reg_808;
reg   [4:0] v65_1_addr_3_reg_808_pp0_iter2_reg;
reg   [4:0] v65_1_addr_3_reg_808_pp0_iter3_reg;
reg   [4:0] v65_1_addr_3_reg_808_pp0_iter4_reg;
wire   [31:0] v131_fu_609_p1;
reg   [31:0] v81_reg_818;
reg   [31:0] v89_reg_823;
reg   [31:0] v97_reg_828;
reg   [31:0] v92_reg_833;
reg   [31:0] v100_reg_838;
reg   [31:0] v105_reg_843;
reg   [31:0] v113_reg_848;
reg   [31:0] v121_reg_853;
reg   [31:0] v129_reg_858;
reg   [31:0] v108_reg_863;
reg   [31:0] v116_reg_868;
reg   [31:0] v124_reg_873;
reg   [31:0] v132_reg_878;
reg   [31:0] v93_reg_883;
reg   [31:0] v101_reg_888;
reg   [31:0] v125_reg_893;
reg   [31:0] v133_reg_898;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln119_1_fu_341_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln128_fu_368_p1;
wire   [63:0] zext_ln137_fu_398_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln146_fu_414_p1;
wire   [63:0] zext_ln155_fu_461_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln164_fu_488_p1;
wire   [63:0] zext_ln173_fu_519_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln183_fu_534_p1;
wire   [63:0] zext_ln113_fu_549_p1;
wire   [63:0] zext_ln135_fu_561_p1;
wire   [63:0] zext_ln153_fu_585_p1;
wire   [63:0] zext_ln171_fu_598_p1;
wire    ap_loop_init;
reg   [6:0] v126_fu_92;
wire   [6:0] add_ln112_fu_539_p2;
reg   [6:0] ap_sig_allocacmp_v68;
reg    v138_ce1_local;
reg   [11:0] v138_address1_local;
reg    v138_ce0_local;
reg   [11:0] v138_address0_local;
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
reg   [31:0] grp_fu_275_p0;
reg   [31:0] grp_fu_275_p1;
reg   [31:0] grp_fu_279_p0;
reg   [31:0] grp_fu_279_p1;
reg   [31:0] grp_fu_283_p0;
reg   [31:0] grp_fu_283_p1;
reg   [31:0] grp_fu_287_p0;
reg   [31:0] grp_fu_287_p1;
wire   [11:0] zext_ln119_fu_331_p1;
wire   [11:0] add_ln119_fu_335_p2;
wire   [11:0] tmp_s_fu_356_p5;
wire   [11:0] tmp_2_fu_387_p5;
wire   [11:0] tmp_3_fu_403_p5;
wire   [11:0] tmp_5_fu_450_p5;
wire   [11:0] tmp_7_fu_473_p7;
wire   [11:0] tmp_8_fu_509_p5;
wire   [11:0] tmp_9_fu_524_p5;
wire   [4:0] or_ln135_5_fu_554_p3;
wire   [4:0] or_ln153_5_fu_577_p4;
wire   [4:0] or_ln171_5_fu_591_p3;
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
#0 v126_fu_92 = 7'd0;
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
        v126_fu_92 <= 7'd0;
    end else if (((tmp_reg_645 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v126_fu_92 <= add_ln112_fu_539_p2;
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
        icmp_ln115_reg_664 <= icmp_ln115_fu_373_p2;
        tmp_1_reg_669 <= {{v68_reg_636[5:2]}};
        v65_0_addr_2_reg_788[0] <= zext_ln153_fu_585_p1[0];
v65_0_addr_2_reg_788[4 : 2] <= zext_ln153_fu_585_p1[4 : 2];
        v65_0_addr_2_reg_788_pp0_iter2_reg[0] <= v65_0_addr_2_reg_788[0];
v65_0_addr_2_reg_788_pp0_iter2_reg[4 : 2] <= v65_0_addr_2_reg_788[4 : 2];
        v65_0_addr_2_reg_788_pp0_iter3_reg[0] <= v65_0_addr_2_reg_788_pp0_iter2_reg[0];
v65_0_addr_2_reg_788_pp0_iter3_reg[4 : 2] <= v65_0_addr_2_reg_788_pp0_iter2_reg[4 : 2];
        v65_0_addr_3_reg_798[4 : 2] <= zext_ln171_fu_598_p1[4 : 2];
        v65_0_addr_3_reg_798_pp0_iter2_reg[4 : 2] <= v65_0_addr_3_reg_798[4 : 2];
        v65_0_addr_3_reg_798_pp0_iter3_reg[4 : 2] <= v65_0_addr_3_reg_798_pp0_iter2_reg[4 : 2];
        v65_0_addr_3_reg_798_pp0_iter4_reg[4 : 2] <= v65_0_addr_3_reg_798_pp0_iter3_reg[4 : 2];
        v65_1_addr_2_reg_793[0] <= zext_ln153_fu_585_p1[0];
v65_1_addr_2_reg_793[4 : 2] <= zext_ln153_fu_585_p1[4 : 2];
        v65_1_addr_2_reg_793_pp0_iter2_reg[0] <= v65_1_addr_2_reg_793[0];
v65_1_addr_2_reg_793_pp0_iter2_reg[4 : 2] <= v65_1_addr_2_reg_793[4 : 2];
        v65_1_addr_2_reg_793_pp0_iter3_reg[0] <= v65_1_addr_2_reg_793_pp0_iter2_reg[0];
v65_1_addr_2_reg_793_pp0_iter3_reg[4 : 2] <= v65_1_addr_2_reg_793_pp0_iter2_reg[4 : 2];
        v65_1_addr_3_reg_808[4 : 2] <= zext_ln171_fu_598_p1[4 : 2];
        v65_1_addr_3_reg_808_pp0_iter2_reg[4 : 2] <= v65_1_addr_3_reg_808[4 : 2];
        v65_1_addr_3_reg_808_pp0_iter3_reg[4 : 2] <= v65_1_addr_3_reg_808_pp0_iter2_reg[4 : 2];
        v65_1_addr_3_reg_808_pp0_iter4_reg[4 : 2] <= v65_1_addr_3_reg_808_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln113_3_reg_654 <= {{ap_sig_allocacmp_v68[5:1]}};
        tmp_reg_645 <= ap_sig_allocacmp_v68[32'd6];
        v65_0_addr_1_reg_753[4 : 1] <= zext_ln135_fu_561_p1[4 : 1];
        v65_0_addr_1_reg_753_pp0_iter2_reg[4 : 1] <= v65_0_addr_1_reg_753[4 : 1];
        v65_0_addr_1_reg_753_pp0_iter3_reg[4 : 1] <= v65_0_addr_1_reg_753_pp0_iter2_reg[4 : 1];
        v65_0_addr_reg_743 <= zext_ln113_fu_549_p1;
        v65_0_addr_reg_743_pp0_iter2_reg <= v65_0_addr_reg_743;
        v65_0_addr_reg_743_pp0_iter3_reg <= v65_0_addr_reg_743_pp0_iter2_reg;
        v65_1_addr_1_reg_758[4 : 1] <= zext_ln135_fu_561_p1[4 : 1];
        v65_1_addr_1_reg_758_pp0_iter2_reg[4 : 1] <= v65_1_addr_1_reg_758[4 : 1];
        v65_1_addr_1_reg_758_pp0_iter3_reg[4 : 1] <= v65_1_addr_1_reg_758_pp0_iter2_reg[4 : 1];
        v65_1_addr_reg_748 <= zext_ln113_fu_549_p1;
        v65_1_addr_reg_748_pp0_iter2_reg <= v65_1_addr_reg_748;
        v65_1_addr_reg_748_pp0_iter3_reg <= v65_1_addr_reg_748_pp0_iter2_reg;
        v68_reg_636 <= ap_sig_allocacmp_v68;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_291 <= v138_q1;
        reg_295 <= v138_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_299 <= grp_fu_472_p_dout0;
        reg_304 <= grp_fu_476_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_4_reg_700 <= {{v68_reg_636[5:3]}};
        tmp_6_reg_713 <= v68_reg_636[32'd1];
        v71_reg_684 <= v71_fu_423_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_838 <= grp_fu_484_p_dout0;
        v105_reg_843 <= v65_0_q1;
        v113_reg_848 <= v65_1_q1;
        v121_reg_853 <= v65_0_q0;
        v129_reg_858 <= v65_1_q0;
        v92_reg_833 <= grp_fu_480_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v101_reg_888 <= grp_fu_476_p_dout0;
        v93_reg_883 <= grp_fu_472_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v108_reg_863 <= grp_fu_480_p_dout0;
        v116_reg_868 <= grp_fu_484_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_reg_873 <= grp_fu_480_p_dout0;
        v132_reg_878 <= grp_fu_484_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v125_reg_893 <= grp_fu_472_p_dout0;
        v133_reg_898 <= grp_fu_476_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v73_reg_773 <= v65_0_q1;
        v76_reg_778 <= grp_fu_480_p_dout0;
        v81_reg_818 <= v65_1_q1;
        v84_reg_783 <= grp_fu_484_p_dout0;
        v89_reg_823 <= v65_0_q0;
        v97_reg_828 <= v65_1_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_645 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v68 = v126_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_275_p0 = v121_reg_853;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_275_p0 = v105_reg_843;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_275_p0 = v89_reg_823;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_275_p0 = v73_reg_773;
    end else begin
        grp_fu_275_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_275_p1 = v124_reg_873;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_275_p1 = v108_reg_863;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_275_p1 = v92_reg_833;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_275_p1 = v76_reg_778;
    end else begin
        grp_fu_275_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_279_p0 = v129_reg_858;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_279_p0 = v113_reg_848;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_279_p0 = v97_reg_828;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_279_p0 = v81_reg_818;
    end else begin
        grp_fu_279_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_279_p1 = v132_reg_878;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_279_p1 = v116_reg_868;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_279_p1 = v100_reg_838;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_279_p1 = v84_reg_783;
    end else begin
        grp_fu_279_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_283_p0 = v123_fu_604_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_283_p0 = v107_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_283_p0 = v91_fu_499_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_283_p0 = v75_fu_431_p1;
    end else begin
        grp_fu_283_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_283_p1 = v71_reg_684;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_283_p1 = v71_fu_423_p3;
    end else begin
        grp_fu_283_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_287_p0 = v131_fu_609_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_287_p0 = v115_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_287_p0 = v99_fu_504_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_287_p0 = v83_fu_436_p1;
    end else begin
        grp_fu_287_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_287_p1 = v71_reg_684;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_287_p1 = v71_fu_423_p3;
    end else begin
        grp_fu_287_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_address0_local = zext_ln183_fu_534_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_address0_local = zext_ln164_fu_488_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_address0_local = zext_ln146_fu_414_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_address0_local = zext_ln128_fu_368_p1;
        end else begin
            v138_address0_local = 'bx;
        end
    end else begin
        v138_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_address1_local = zext_ln173_fu_519_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_address1_local = zext_ln155_fu_461_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_address1_local = zext_ln137_fu_398_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_address1_local = zext_ln119_1_fu_341_p1;
        end else begin
            v138_address1_local = 'bx;
        end
    end else begin
        v138_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v138_ce0_local = 1'b1;
    end else begin
        v138_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v138_ce1_local = 1'b1;
    end else begin
        v138_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address0_local = v65_0_addr_3_reg_798_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address0_local = v65_0_addr_1_reg_753_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address0_local = zext_ln171_fu_598_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address0_local = zext_ln135_fu_561_p1;
    end else begin
        v65_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address1_local = v65_0_addr_2_reg_788_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address1_local = v65_0_addr_reg_743_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address1_local = zext_ln153_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address1_local = zext_ln113_fu_549_p1;
    end else begin
        v65_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_0_ce0_local = 1'b1;
    end else begin
        v65_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_0_ce1_local = 1'b1;
    end else begin
        v65_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_d0_local = v125_reg_893;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_d0_local = v93_reg_883;
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
        v65_1_address0_local = v65_1_addr_3_reg_808_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address0_local = v65_1_addr_1_reg_758_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address0_local = zext_ln171_fu_598_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address0_local = zext_ln135_fu_561_p1;
    end else begin
        v65_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address1_local = v65_1_addr_2_reg_793_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address1_local = v65_1_addr_reg_748_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address1_local = zext_ln153_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address1_local = zext_ln113_fu_549_p1;
    end else begin
        v65_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_1_ce0_local = 1'b1;
    end else begin
        v65_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_1_ce1_local = 1'b1;
    end else begin
        v65_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_d0_local = v133_reg_898;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_d0_local = v101_reg_888;
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
        v70_3_out_o = v70_2_reload;
    end else if (((tmp_reg_645 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v70_3_out_o = v71_fu_423_p3;
    end else begin
        v70_3_out_o = v70_3_out_i;
    end
end
always @ (*) begin
    if ((((tmp_reg_645 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v70_3_out_o_ap_vld = 1'b1;
    end else begin
        v70_3_out_o_ap_vld = 1'b0;
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
assign add_ln112_fu_539_p2 = (v68_reg_636 + 7'd8);
assign add_ln119_fu_335_p2 = (zext_ln119_3 + zext_ln119_fu_331_p1);
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
assign grp_fu_472_p_ce = 1'b1;
assign grp_fu_472_p_din0 = grp_fu_275_p0;
assign grp_fu_472_p_din1 = grp_fu_275_p1;
assign grp_fu_472_p_opcode = 2'd0;
assign grp_fu_476_p_ce = 1'b1;
assign grp_fu_476_p_din0 = grp_fu_279_p0;
assign grp_fu_476_p_din1 = grp_fu_279_p1;
assign grp_fu_476_p_opcode = 2'd0;
assign grp_fu_480_p_ce = 1'b1;
assign grp_fu_480_p_din0 = grp_fu_283_p0;
assign grp_fu_480_p_din1 = grp_fu_283_p1;
assign grp_fu_484_p_ce = 1'b1;
assign grp_fu_484_p_din0 = grp_fu_287_p0;
assign grp_fu_484_p_din1 = grp_fu_287_p1;
assign icmp_ln115_fu_373_p2 = ((v68_reg_636 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln113_3_fu_346_p4 = {{ap_sig_allocacmp_v68[5:1]}};
assign or_ln135_5_fu_554_p3 = {{tmp_1_reg_669}, {1'd1}};
assign or_ln153_5_fu_577_p4 = {{{tmp_4_reg_700}, {1'd1}}, {tmp_6_reg_713}};
assign or_ln171_5_fu_591_p3 = {{tmp_4_reg_700}, {2'd3}};
assign tmp_1_fu_378_p4 = {{v68_reg_636[5:2]}};
assign tmp_2_fu_387_p5 = {{{{tmp_48}, {2'd3}}, {tmp_1_fu_378_p4}}, {2'd2}};
assign tmp_3_fu_403_p5 = {{{{tmp_48}, {2'd3}}, {tmp_1_fu_378_p4}}, {2'd3}};
assign tmp_4_fu_441_p4 = {{v68_reg_636[5:3]}};
assign tmp_5_fu_450_p5 = {{{{tmp_48}, {2'd3}}, {tmp_4_fu_441_p4}}, {3'd4}};
assign tmp_6_fu_466_p3 = v68_reg_636[32'd1];
assign tmp_7_fu_473_p7 = {{{{{{tmp_48}, {2'd3}}, {tmp_4_fu_441_p4}}, {1'd1}}, {tmp_6_fu_466_p3}}, {1'd1}};
assign tmp_8_fu_509_p5 = {{{{tmp_48}, {2'd3}}, {tmp_4_reg_700}}, {3'd6}};
assign tmp_9_fu_524_p5 = {{{{tmp_48}, {2'd3}}, {tmp_4_reg_700}}, {3'd7}};
assign tmp_s_fu_356_p5 = {{{{tmp_48}, {2'd3}}, {lshr_ln113_3_fu_346_p4}}, {1'd1}};
assign v107_fu_567_p1 = reg_291;
assign v115_fu_572_p1 = reg_295;
assign v123_fu_604_p1 = reg_291;
assign v131_fu_609_p1 = reg_295;
assign v138_address0 = v138_address0_local;
assign v138_address1 = v138_address1_local;
assign v138_ce0 = v138_ce0_local;
assign v138_ce1 = v138_ce1_local;
assign v65_0_address0 = v65_0_address0_local;
assign v65_0_address1 = v65_0_address1_local;
assign v65_0_ce0 = v65_0_ce0_local;
assign v65_0_ce1 = v65_0_ce1_local;
assign v65_0_d0 = v65_0_d0_local;
assign v65_0_d1 = reg_299;
assign v65_0_we0 = v65_0_we0_local;
assign v65_0_we1 = v65_0_we1_local;
assign v65_1_address0 = v65_1_address0_local;
assign v65_1_address1 = v65_1_address1_local;
assign v65_1_ce0 = v65_1_ce0_local;
assign v65_1_ce1 = v65_1_ce1_local;
assign v65_1_d0 = v65_1_d0_local;
assign v65_1_d1 = reg_304;
assign v65_1_we0 = v65_1_we0_local;
assign v65_1_we1 = v65_1_we1_local;
assign v71_fu_423_p3 = ((icmp_ln115_reg_664[0:0] == 1'b1) ? v69_3 : v70_3_out_i);
assign v75_fu_431_p1 = reg_291;
assign v83_fu_436_p1 = reg_295;
assign v91_fu_499_p1 = reg_291;
assign v99_fu_504_p1 = reg_295;
assign zext_ln113_fu_549_p1 = lshr_ln113_3_reg_654;
assign zext_ln119_1_fu_341_p1 = add_ln119_fu_335_p2;
assign zext_ln119_fu_331_p1 = ap_sig_allocacmp_v68;
assign zext_ln128_fu_368_p1 = tmp_s_fu_356_p5;
assign zext_ln135_fu_561_p1 = or_ln135_5_fu_554_p3;
assign zext_ln137_fu_398_p1 = tmp_2_fu_387_p5;
assign zext_ln146_fu_414_p1 = tmp_3_fu_403_p5;
assign zext_ln153_fu_585_p1 = or_ln153_5_fu_577_p4;
assign zext_ln155_fu_461_p1 = tmp_5_fu_450_p5;
assign zext_ln164_fu_488_p1 = tmp_7_fu_473_p7;
assign zext_ln171_fu_598_p1 = or_ln171_5_fu_591_p3;
assign zext_ln173_fu_519_p1 = tmp_8_fu_509_p5;
assign zext_ln183_fu_534_p1 = tmp_9_fu_524_p5;
always @ (posedge ap_clk) begin
    v65_0_addr_1_reg_753[0] <= 1'b1;
    v65_0_addr_1_reg_753_pp0_iter2_reg[0] <= 1'b1;
    v65_0_addr_1_reg_753_pp0_iter3_reg[0] <= 1'b1;
    v65_1_addr_1_reg_758[0] <= 1'b1;
    v65_1_addr_1_reg_758_pp0_iter2_reg[0] <= 1'b1;
    v65_1_addr_1_reg_758_pp0_iter3_reg[0] <= 1'b1;
    v65_0_addr_2_reg_788[1] <= 1'b1;
    v65_0_addr_2_reg_788_pp0_iter2_reg[1] <= 1'b1;
    v65_0_addr_2_reg_788_pp0_iter3_reg[1] <= 1'b1;
    v65_1_addr_2_reg_793[1] <= 1'b1;
    v65_1_addr_2_reg_793_pp0_iter2_reg[1] <= 1'b1;
    v65_1_addr_2_reg_793_pp0_iter3_reg[1] <= 1'b1;
    v65_0_addr_3_reg_798[1:0] <= 2'b11;
    v65_0_addr_3_reg_798_pp0_iter2_reg[1:0] <= 2'b11;
    v65_0_addr_3_reg_798_pp0_iter3_reg[1:0] <= 2'b11;
    v65_0_addr_3_reg_798_pp0_iter4_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_808[1:0] <= 2'b11;
    v65_1_addr_3_reg_808_pp0_iter2_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_808_pp0_iter3_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_808_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 