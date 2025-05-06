
module bicg_bicg_node2_Pipeline_label_45 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v70_12_reload,zext_ln119_3,v138_address0,v138_ce0,v138_q0,v138_address1,v138_ce1,v138_q1,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,v69_3,tmp_48,v70_13_out,v70_13_out_ap_vld,grp_fu_3024_p_din0,grp_fu_3024_p_din1,grp_fu_3024_p_opcode,grp_fu_3024_p_dout0,grp_fu_3024_p_ce,grp_fu_3028_p_din0,grp_fu_3028_p_din1,grp_fu_3028_p_opcode,grp_fu_3028_p_dout0,grp_fu_3028_p_ce,grp_fu_3032_p_din0,grp_fu_3032_p_din1,grp_fu_3032_p_dout0,grp_fu_3032_p_ce,grp_fu_3036_p_din0,grp_fu_3036_p_din1,grp_fu_3036_p_dout0,grp_fu_3036_p_ce);  
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
input  [31:0] v70_12_reload;
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
output  [31:0] v70_13_out;
output   v70_13_out_ap_vld;
output  [31:0] grp_fu_3024_p_din0;
output  [31:0] grp_fu_3024_p_din1;
output  [1:0] grp_fu_3024_p_opcode;
input  [31:0] grp_fu_3024_p_dout0;
output   grp_fu_3024_p_ce;
output  [31:0] grp_fu_3028_p_din0;
output  [31:0] grp_fu_3028_p_din1;
output  [1:0] grp_fu_3028_p_opcode;
input  [31:0] grp_fu_3028_p_dout0;
output   grp_fu_3028_p_ce;
output  [31:0] grp_fu_3032_p_din0;
output  [31:0] grp_fu_3032_p_din1;
input  [31:0] grp_fu_3032_p_dout0;
output   grp_fu_3032_p_ce;
output  [31:0] grp_fu_3036_p_din0;
output  [31:0] grp_fu_3036_p_din1;
input  [31:0] grp_fu_3036_p_dout0;
output   grp_fu_3036_p_ce;
reg ap_idle;
reg v70_13_out_ap_vld;
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
reg   [0:0] tmp_reg_667;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_304;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_308;
reg   [31:0] reg_312;
reg   [31:0] reg_317;
reg   [6:0] v68_reg_658;
reg   [0:0] tmp_reg_667_pp0_iter1_reg;
reg   [0:0] tmp_reg_667_pp0_iter2_reg;
reg   [0:0] tmp_reg_667_pp0_iter3_reg;
wire   [4:0] lshr_ln113_3_fu_358_p4;
reg   [4:0] lshr_ln113_3_reg_676;
wire   [0:0] icmp_ln115_fu_385_p2;
reg   [0:0] icmp_ln115_reg_686;
wire   [3:0] tmp_36_fu_390_p4;
reg   [3:0] tmp_36_reg_691;
wire   [31:0] v71_fu_434_p3;
reg   [31:0] v71_reg_706;
wire   [31:0] v75_fu_442_p1;
wire   [31:0] v83_fu_447_p1;
wire   [2:0] tmp_39_fu_452_p4;
reg   [2:0] tmp_39_reg_722;
wire   [0:0] tmp_12_fu_477_p3;
reg   [0:0] tmp_12_reg_735;
wire   [31:0] v91_fu_509_p1;
wire   [31:0] v99_fu_514_p1;
reg   [4:0] v65_0_addr_12_reg_765;
reg   [4:0] v65_0_addr_12_reg_765_pp0_iter2_reg;
reg   [4:0] v65_0_addr_12_reg_765_pp0_iter3_reg;
reg   [4:0] v65_1_addr_12_reg_770;
reg   [4:0] v65_1_addr_12_reg_770_pp0_iter2_reg;
reg   [4:0] v65_1_addr_12_reg_770_pp0_iter3_reg;
reg   [4:0] v65_0_addr_reg_775;
reg   [4:0] v65_0_addr_reg_775_pp0_iter2_reg;
reg   [4:0] v65_0_addr_reg_775_pp0_iter3_reg;
reg   [4:0] v65_1_addr_reg_780;
reg   [4:0] v65_1_addr_reg_780_pp0_iter2_reg;
reg   [4:0] v65_1_addr_reg_780_pp0_iter3_reg;
wire   [31:0] v107_fu_577_p1;
wire   [31:0] v115_fu_582_p1;
reg   [31:0] v73_reg_795;
reg   [31:0] v76_reg_800;
reg   [31:0] v84_reg_805;
reg   [4:0] v65_0_addr_13_reg_810;
reg   [4:0] v65_0_addr_13_reg_810_pp0_iter2_reg;
reg   [4:0] v65_0_addr_13_reg_810_pp0_iter3_reg;
reg   [4:0] v65_1_addr_13_reg_815;
reg   [4:0] v65_1_addr_13_reg_815_pp0_iter2_reg;
reg   [4:0] v65_1_addr_13_reg_815_pp0_iter3_reg;
reg   [4:0] v65_0_addr_14_reg_820;
reg   [4:0] v65_0_addr_14_reg_820_pp0_iter2_reg;
reg   [4:0] v65_0_addr_14_reg_820_pp0_iter3_reg;
reg   [4:0] v65_0_addr_14_reg_820_pp0_iter4_reg;
wire   [31:0] v123_fu_614_p1;
reg   [4:0] v65_1_addr_14_reg_830;
reg   [4:0] v65_1_addr_14_reg_830_pp0_iter2_reg;
reg   [4:0] v65_1_addr_14_reg_830_pp0_iter3_reg;
reg   [4:0] v65_1_addr_14_reg_830_pp0_iter4_reg;
wire   [31:0] v131_fu_619_p1;
reg   [31:0] v81_reg_840;
reg   [31:0] v89_reg_845;
reg   [31:0] v97_reg_850;
reg   [31:0] v92_reg_855;
reg   [31:0] v100_reg_860;
reg   [31:0] v105_reg_865;
reg   [31:0] v113_reg_870;
reg   [31:0] v121_reg_875;
reg   [31:0] v129_reg_880;
reg   [31:0] v108_reg_885;
reg   [31:0] v116_reg_890;
reg   [31:0] v124_reg_895;
reg   [31:0] v132_reg_900;
reg   [31:0] v93_reg_905;
reg   [31:0] v101_reg_910;
reg   [31:0] v125_reg_915;
reg   [31:0] v133_reg_920;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln119_4_fu_353_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln128_fu_380_p1;
wire   [63:0] zext_ln137_fu_410_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln146_fu_426_p1;
wire   [63:0] zext_ln155_fu_472_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln164_fu_499_p1;
wire   [63:0] zext_ln173_fu_529_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln183_fu_544_p1;
wire   [63:0] zext_ln113_fu_559_p1;
wire   [63:0] zext_ln135_fu_571_p1;
wire   [63:0] zext_ln153_fu_595_p1;
wire   [63:0] zext_ln171_fu_608_p1;
reg   [31:0] v66_fu_94;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v126_fu_98;
wire   [6:0] add_ln112_fu_549_p2;
reg   [6:0] ap_sig_allocacmp_v68;
wire    ap_block_pp0_stage3_01001;
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
reg   [31:0] grp_fu_288_p0;
reg   [31:0] grp_fu_288_p1;
reg   [31:0] grp_fu_292_p0;
reg   [31:0] grp_fu_292_p1;
reg   [31:0] grp_fu_296_p0;
reg   [31:0] grp_fu_296_p1;
reg   [31:0] grp_fu_300_p0;
reg   [31:0] grp_fu_300_p1;
wire   [11:0] zext_ln119_fu_343_p1;
wire   [11:0] add_ln119_fu_347_p2;
wire   [11:0] tmp_s_fu_368_p5;
wire   [11:0] tmp_37_fu_399_p5;
wire   [11:0] tmp_38_fu_415_p5;
wire   [11:0] tmp_40_fu_461_p5;
wire   [11:0] tmp_41_fu_484_p7;
wire   [11:0] tmp_42_fu_519_p5;
wire   [11:0] tmp_43_fu_534_p5;
wire   [4:0] or_ln135_5_fu_564_p3;
wire   [4:0] or_ln153_5_fu_587_p4;
wire   [4:0] or_ln171_5_fu_601_p3;
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
#0 v66_fu_94 = 32'd0;
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
        v126_fu_98 <= 7'd0;
    end else if (((tmp_reg_667 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v126_fu_98 <= add_ln112_fu_549_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_fu_94 <= v70_12_reload;
    end else if (((tmp_reg_667 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_fu_94 <= v71_fu_434_p3;
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
        icmp_ln115_reg_686 <= icmp_ln115_fu_385_p2;
        tmp_36_reg_691 <= {{v68_reg_658[5:2]}};
        v65_0_addr_13_reg_810[0] <= zext_ln153_fu_595_p1[0];
v65_0_addr_13_reg_810[4 : 2] <= zext_ln153_fu_595_p1[4 : 2];
        v65_0_addr_13_reg_810_pp0_iter2_reg[0] <= v65_0_addr_13_reg_810[0];
v65_0_addr_13_reg_810_pp0_iter2_reg[4 : 2] <= v65_0_addr_13_reg_810[4 : 2];
        v65_0_addr_13_reg_810_pp0_iter3_reg[0] <= v65_0_addr_13_reg_810_pp0_iter2_reg[0];
v65_0_addr_13_reg_810_pp0_iter3_reg[4 : 2] <= v65_0_addr_13_reg_810_pp0_iter2_reg[4 : 2];
        v65_0_addr_14_reg_820[4 : 2] <= zext_ln171_fu_608_p1[4 : 2];
        v65_0_addr_14_reg_820_pp0_iter2_reg[4 : 2] <= v65_0_addr_14_reg_820[4 : 2];
        v65_0_addr_14_reg_820_pp0_iter3_reg[4 : 2] <= v65_0_addr_14_reg_820_pp0_iter2_reg[4 : 2];
        v65_0_addr_14_reg_820_pp0_iter4_reg[4 : 2] <= v65_0_addr_14_reg_820_pp0_iter3_reg[4 : 2];
        v65_1_addr_13_reg_815[0] <= zext_ln153_fu_595_p1[0];
v65_1_addr_13_reg_815[4 : 2] <= zext_ln153_fu_595_p1[4 : 2];
        v65_1_addr_13_reg_815_pp0_iter2_reg[0] <= v65_1_addr_13_reg_815[0];
v65_1_addr_13_reg_815_pp0_iter2_reg[4 : 2] <= v65_1_addr_13_reg_815[4 : 2];
        v65_1_addr_13_reg_815_pp0_iter3_reg[0] <= v65_1_addr_13_reg_815_pp0_iter2_reg[0];
v65_1_addr_13_reg_815_pp0_iter3_reg[4 : 2] <= v65_1_addr_13_reg_815_pp0_iter2_reg[4 : 2];
        v65_1_addr_14_reg_830[4 : 2] <= zext_ln171_fu_608_p1[4 : 2];
        v65_1_addr_14_reg_830_pp0_iter2_reg[4 : 2] <= v65_1_addr_14_reg_830[4 : 2];
        v65_1_addr_14_reg_830_pp0_iter3_reg[4 : 2] <= v65_1_addr_14_reg_830_pp0_iter2_reg[4 : 2];
        v65_1_addr_14_reg_830_pp0_iter4_reg[4 : 2] <= v65_1_addr_14_reg_830_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln113_3_reg_676 <= {{ap_sig_allocacmp_v68[5:1]}};
        tmp_reg_667 <= ap_sig_allocacmp_v68[32'd6];
        tmp_reg_667_pp0_iter1_reg <= tmp_reg_667;
        tmp_reg_667_pp0_iter2_reg <= tmp_reg_667_pp0_iter1_reg;
        tmp_reg_667_pp0_iter3_reg <= tmp_reg_667_pp0_iter2_reg;
        v65_0_addr_12_reg_765 <= zext_ln113_fu_559_p1;
        v65_0_addr_12_reg_765_pp0_iter2_reg <= v65_0_addr_12_reg_765;
        v65_0_addr_12_reg_765_pp0_iter3_reg <= v65_0_addr_12_reg_765_pp0_iter2_reg;
        v65_0_addr_reg_775[4 : 1] <= zext_ln135_fu_571_p1[4 : 1];
        v65_0_addr_reg_775_pp0_iter2_reg[4 : 1] <= v65_0_addr_reg_775[4 : 1];
        v65_0_addr_reg_775_pp0_iter3_reg[4 : 1] <= v65_0_addr_reg_775_pp0_iter2_reg[4 : 1];
        v65_1_addr_12_reg_770 <= zext_ln113_fu_559_p1;
        v65_1_addr_12_reg_770_pp0_iter2_reg <= v65_1_addr_12_reg_770;
        v65_1_addr_12_reg_770_pp0_iter3_reg <= v65_1_addr_12_reg_770_pp0_iter2_reg;
        v65_1_addr_reg_780[4 : 1] <= zext_ln135_fu_571_p1[4 : 1];
        v65_1_addr_reg_780_pp0_iter2_reg[4 : 1] <= v65_1_addr_reg_780[4 : 1];
        v65_1_addr_reg_780_pp0_iter3_reg[4 : 1] <= v65_1_addr_reg_780_pp0_iter2_reg[4 : 1];
        v68_reg_658 <= ap_sig_allocacmp_v68;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_304 <= v138_q1;
        reg_308 <= v138_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_312 <= grp_fu_3024_p_dout0;
        reg_317 <= grp_fu_3028_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_12_reg_735 <= v68_reg_658[32'd1];
        tmp_39_reg_722 <= {{v68_reg_658[5:3]}};
        v71_reg_706 <= v71_fu_434_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_860 <= grp_fu_3036_p_dout0;
        v105_reg_865 <= v65_0_q1;
        v113_reg_870 <= v65_1_q1;
        v121_reg_875 <= v65_0_q0;
        v129_reg_880 <= v65_1_q0;
        v92_reg_855 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v101_reg_910 <= grp_fu_3028_p_dout0;
        v93_reg_905 <= grp_fu_3024_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v108_reg_885 <= grp_fu_3032_p_dout0;
        v116_reg_890 <= grp_fu_3036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_reg_895 <= grp_fu_3032_p_dout0;
        v132_reg_900 <= grp_fu_3036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v125_reg_915 <= grp_fu_3024_p_dout0;
        v133_reg_920 <= grp_fu_3028_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v73_reg_795 <= v65_0_q1;
        v76_reg_800 <= grp_fu_3032_p_dout0;
        v81_reg_840 <= v65_1_q1;
        v84_reg_805 <= grp_fu_3036_p_dout0;
        v89_reg_845 <= v65_0_q0;
        v97_reg_850 <= v65_1_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v68 = v126_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_288_p0 = v121_reg_875;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_288_p0 = v105_reg_865;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_288_p0 = v89_reg_845;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_288_p0 = v73_reg_795;
    end else begin
        grp_fu_288_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_288_p1 = v124_reg_895;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_288_p1 = v108_reg_885;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_288_p1 = v92_reg_855;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_288_p1 = v76_reg_800;
    end else begin
        grp_fu_288_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_292_p0 = v129_reg_880;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_292_p0 = v113_reg_870;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_292_p0 = v97_reg_850;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_292_p0 = v81_reg_840;
    end else begin
        grp_fu_292_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_292_p1 = v132_reg_900;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_292_p1 = v116_reg_890;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_292_p1 = v100_reg_860;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_292_p1 = v84_reg_805;
    end else begin
        grp_fu_292_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_296_p0 = v123_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_296_p0 = v107_fu_577_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_296_p0 = v91_fu_509_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_296_p0 = v75_fu_442_p1;
    end else begin
        grp_fu_296_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_296_p1 = v71_reg_706;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_296_p1 = v71_fu_434_p3;
    end else begin
        grp_fu_296_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_300_p0 = v131_fu_619_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_300_p0 = v115_fu_582_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_300_p0 = v99_fu_514_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_300_p0 = v83_fu_447_p1;
    end else begin
        grp_fu_300_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_300_p1 = v71_reg_706;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_300_p1 = v71_fu_434_p3;
    end else begin
        grp_fu_300_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_address0_local = zext_ln183_fu_544_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_address0_local = zext_ln164_fu_499_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_address0_local = zext_ln146_fu_426_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_address0_local = zext_ln128_fu_380_p1;
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
            v138_address1_local = zext_ln173_fu_529_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_address1_local = zext_ln155_fu_472_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_address1_local = zext_ln137_fu_410_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_address1_local = zext_ln119_4_fu_353_p1;
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
        v65_0_address0_local = v65_0_addr_14_reg_820_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address0_local = v65_0_addr_reg_775_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address0_local = zext_ln171_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address0_local = zext_ln135_fu_571_p1;
    end else begin
        v65_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address1_local = v65_0_addr_13_reg_810_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address1_local = v65_0_addr_12_reg_765_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address1_local = zext_ln153_fu_595_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address1_local = zext_ln113_fu_559_p1;
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
        v65_0_d0_local = v125_reg_915;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_d0_local = v93_reg_905;
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
        v65_1_address0_local = v65_1_addr_14_reg_830_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address0_local = v65_1_addr_reg_780_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address0_local = zext_ln171_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address0_local = zext_ln135_fu_571_p1;
    end else begin
        v65_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address1_local = v65_1_addr_13_reg_815_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address1_local = v65_1_addr_12_reg_770_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address1_local = zext_ln153_fu_595_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address1_local = zext_ln113_fu_559_p1;
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
        v65_1_d0_local = v133_reg_920;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_d0_local = v101_reg_910;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_667_pp0_iter3_reg == 1'd1))) begin
        v70_13_out_ap_vld = 1'b1;
    end else begin
        v70_13_out_ap_vld = 1'b0;
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
assign add_ln112_fu_549_p2 = (v68_reg_658 + 7'd8);
assign add_ln119_fu_347_p2 = (zext_ln119_3 + zext_ln119_fu_343_p1);
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
assign grp_fu_3024_p_ce = 1'b1;
assign grp_fu_3024_p_din0 = grp_fu_288_p0;
assign grp_fu_3024_p_din1 = grp_fu_288_p1;
assign grp_fu_3024_p_opcode = 2'd0;
assign grp_fu_3028_p_ce = 1'b1;
assign grp_fu_3028_p_din0 = grp_fu_292_p0;
assign grp_fu_3028_p_din1 = grp_fu_292_p1;
assign grp_fu_3028_p_opcode = 2'd0;
assign grp_fu_3032_p_ce = 1'b1;
assign grp_fu_3032_p_din0 = grp_fu_296_p0;
assign grp_fu_3032_p_din1 = grp_fu_296_p1;
assign grp_fu_3036_p_ce = 1'b1;
assign grp_fu_3036_p_din0 = grp_fu_300_p0;
assign grp_fu_3036_p_din1 = grp_fu_300_p1;
assign icmp_ln115_fu_385_p2 = ((v68_reg_658 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln113_3_fu_358_p4 = {{ap_sig_allocacmp_v68[5:1]}};
assign or_ln135_5_fu_564_p3 = {{tmp_36_reg_691}, {1'd1}};
assign or_ln153_5_fu_587_p4 = {{{tmp_39_reg_722}, {1'd1}}, {tmp_12_reg_735}};
assign or_ln171_5_fu_601_p3 = {{tmp_39_reg_722}, {2'd3}};
assign tmp_12_fu_477_p3 = v68_reg_658[32'd1];
assign tmp_36_fu_390_p4 = {{v68_reg_658[5:2]}};
assign tmp_37_fu_399_p5 = {{{{tmp_48}, {2'd3}}, {tmp_36_fu_390_p4}}, {2'd2}};
assign tmp_38_fu_415_p5 = {{{{tmp_48}, {2'd3}}, {tmp_36_fu_390_p4}}, {2'd3}};
assign tmp_39_fu_452_p4 = {{v68_reg_658[5:3]}};
assign tmp_40_fu_461_p5 = {{{{tmp_48}, {2'd3}}, {tmp_39_fu_452_p4}}, {3'd4}};
assign tmp_41_fu_484_p7 = {{{{{{tmp_48}, {2'd3}}, {tmp_39_fu_452_p4}}, {1'd1}}, {tmp_12_fu_477_p3}}, {1'd1}};
assign tmp_42_fu_519_p5 = {{{{tmp_48}, {2'd3}}, {tmp_39_reg_722}}, {3'd6}};
assign tmp_43_fu_534_p5 = {{{{tmp_48}, {2'd3}}, {tmp_39_reg_722}}, {3'd7}};
assign tmp_s_fu_368_p5 = {{{{tmp_48}, {2'd3}}, {lshr_ln113_3_fu_358_p4}}, {1'd1}};
assign v107_fu_577_p1 = reg_304;
assign v115_fu_582_p1 = reg_308;
assign v123_fu_614_p1 = reg_304;
assign v131_fu_619_p1 = reg_308;
assign v138_address0 = v138_address0_local;
assign v138_address1 = v138_address1_local;
assign v138_ce0 = v138_ce0_local;
assign v138_ce1 = v138_ce1_local;
assign v65_0_address0 = v65_0_address0_local;
assign v65_0_address1 = v65_0_address1_local;
assign v65_0_ce0 = v65_0_ce0_local;
assign v65_0_ce1 = v65_0_ce1_local;
assign v65_0_d0 = v65_0_d0_local;
assign v65_0_d1 = reg_312;
assign v65_0_we0 = v65_0_we0_local;
assign v65_0_we1 = v65_0_we1_local;
assign v65_1_address0 = v65_1_address0_local;
assign v65_1_address1 = v65_1_address1_local;
assign v65_1_ce0 = v65_1_ce0_local;
assign v65_1_ce1 = v65_1_ce1_local;
assign v65_1_d0 = v65_1_d0_local;
assign v65_1_d1 = reg_317;
assign v65_1_we0 = v65_1_we0_local;
assign v65_1_we1 = v65_1_we1_local;
assign v70_13_out = v66_fu_94;
assign v71_fu_434_p3 = ((icmp_ln115_reg_686[0:0] == 1'b1) ? v69_3 : v66_fu_94);
assign v75_fu_442_p1 = reg_304;
assign v83_fu_447_p1 = reg_308;
assign v91_fu_509_p1 = reg_304;
assign v99_fu_514_p1 = reg_308;
assign zext_ln113_fu_559_p1 = lshr_ln113_3_reg_676;
assign zext_ln119_4_fu_353_p1 = add_ln119_fu_347_p2;
assign zext_ln119_fu_343_p1 = ap_sig_allocacmp_v68;
assign zext_ln128_fu_380_p1 = tmp_s_fu_368_p5;
assign zext_ln135_fu_571_p1 = or_ln135_5_fu_564_p3;
assign zext_ln137_fu_410_p1 = tmp_37_fu_399_p5;
assign zext_ln146_fu_426_p1 = tmp_38_fu_415_p5;
assign zext_ln153_fu_595_p1 = or_ln153_5_fu_587_p4;
assign zext_ln155_fu_472_p1 = tmp_40_fu_461_p5;
assign zext_ln164_fu_499_p1 = tmp_41_fu_484_p7;
assign zext_ln171_fu_608_p1 = or_ln171_5_fu_601_p3;
assign zext_ln173_fu_529_p1 = tmp_42_fu_519_p5;
assign zext_ln183_fu_544_p1 = tmp_43_fu_534_p5;
always @ (posedge ap_clk) begin
    v65_0_addr_reg_775[0] <= 1'b1;
    v65_0_addr_reg_775_pp0_iter2_reg[0] <= 1'b1;
    v65_0_addr_reg_775_pp0_iter3_reg[0] <= 1'b1;
    v65_1_addr_reg_780[0] <= 1'b1;
    v65_1_addr_reg_780_pp0_iter2_reg[0] <= 1'b1;
    v65_1_addr_reg_780_pp0_iter3_reg[0] <= 1'b1;
    v65_0_addr_13_reg_810[1] <= 1'b1;
    v65_0_addr_13_reg_810_pp0_iter2_reg[1] <= 1'b1;
    v65_0_addr_13_reg_810_pp0_iter3_reg[1] <= 1'b1;
    v65_1_addr_13_reg_815[1] <= 1'b1;
    v65_1_addr_13_reg_815_pp0_iter2_reg[1] <= 1'b1;
    v65_1_addr_13_reg_815_pp0_iter3_reg[1] <= 1'b1;
    v65_0_addr_14_reg_820[1:0] <= 2'b11;
    v65_0_addr_14_reg_820_pp0_iter2_reg[1:0] <= 2'b11;
    v65_0_addr_14_reg_820_pp0_iter3_reg[1:0] <= 2'b11;
    v65_0_addr_14_reg_820_pp0_iter4_reg[1:0] <= 2'b11;
    v65_1_addr_14_reg_830[1:0] <= 2'b11;
    v65_1_addr_14_reg_830_pp0_iter2_reg[1:0] <= 2'b11;
    v65_1_addr_14_reg_830_pp0_iter3_reg[1:0] <= 2'b11;
    v65_1_addr_14_reg_830_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
