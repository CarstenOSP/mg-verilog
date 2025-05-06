
module bicg_bicg_node2_Pipeline_label_418 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v70_25_reload,v67,empty,v138_address0,v138_ce0,v138_q0,v138_address1,v138_ce1,v138_q1,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,v69_16,v70_26_out,v70_26_out_ap_vld,grp_fu_3024_p_din0,grp_fu_3024_p_din1,grp_fu_3024_p_opcode,grp_fu_3024_p_dout0,grp_fu_3024_p_ce,grp_fu_3028_p_din0,grp_fu_3028_p_din1,grp_fu_3028_p_opcode,grp_fu_3028_p_dout0,grp_fu_3028_p_ce,grp_fu_3032_p_din0,grp_fu_3032_p_din1,grp_fu_3032_p_dout0,grp_fu_3032_p_ce,grp_fu_3036_p_din0,grp_fu_3036_p_din1,grp_fu_3036_p_dout0,grp_fu_3036_p_ce);  
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
input  [31:0] v70_25_reload;
input  [3:0] v67;
input  [0:0] empty;
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
input  [31:0] v69_16;
output  [31:0] v70_26_out;
output   v70_26_out_ap_vld;
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
reg v70_26_out_ap_vld;
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
reg   [0:0] tmp_56_reg_682;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_310;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_314;
reg   [31:0] reg_318;
reg   [31:0] reg_323;
reg   [6:0] v68_reg_674;
wire   [0:0] tmp_56_fu_341_p3;
reg   [0:0] tmp_56_reg_682_pp0_iter1_reg;
reg   [0:0] tmp_56_reg_682_pp0_iter2_reg;
reg   [0:0] tmp_56_reg_682_pp0_iter3_reg;
wire   [4:0] lshr_ln113_s_fu_376_p4;
reg   [4:0] lshr_ln113_s_reg_691;
wire   [0:0] icmp_ln115_fu_414_p2;
reg   [0:0] icmp_ln115_reg_701;
wire   [3:0] tmp_183_fu_419_p4;
reg   [3:0] tmp_183_reg_706;
reg   [2:0] tmp_186_reg_721;
reg   [0:0] tmp_57_reg_731;
wire   [31:0] v71_fu_479_p3;
reg   [31:0] v71_reg_737;
wire   [31:0] v75_fu_487_p1;
wire   [31:0] v83_fu_492_p1;
wire   [31:0] v91_fu_535_p1;
wire   [31:0] v99_fu_540_p1;
reg   [4:0] v65_0_addr_reg_783;
reg   [4:0] v65_0_addr_reg_783_pp0_iter2_reg;
reg   [4:0] v65_0_addr_reg_783_pp0_iter3_reg;
reg   [4:0] v65_1_addr_reg_788;
reg   [4:0] v65_1_addr_reg_788_pp0_iter2_reg;
reg   [4:0] v65_1_addr_reg_788_pp0_iter3_reg;
reg   [4:0] v65_0_addr_60_reg_793;
reg   [4:0] v65_0_addr_60_reg_793_pp0_iter2_reg;
reg   [4:0] v65_0_addr_60_reg_793_pp0_iter3_reg;
reg   [4:0] v65_1_addr_60_reg_798;
reg   [4:0] v65_1_addr_60_reg_798_pp0_iter2_reg;
reg   [4:0] v65_1_addr_60_reg_798_pp0_iter3_reg;
wire   [31:0] v107_fu_593_p1;
wire   [31:0] v115_fu_598_p1;
reg   [31:0] v73_reg_813;
reg   [31:0] v76_reg_818;
reg   [31:0] v84_reg_823;
reg   [4:0] v65_0_addr_61_reg_828;
reg   [4:0] v65_0_addr_61_reg_828_pp0_iter2_reg;
reg   [4:0] v65_0_addr_61_reg_828_pp0_iter3_reg;
reg   [4:0] v65_1_addr_61_reg_833;
reg   [4:0] v65_1_addr_61_reg_833_pp0_iter2_reg;
reg   [4:0] v65_1_addr_61_reg_833_pp0_iter3_reg;
reg   [4:0] v65_0_addr_62_reg_838;
reg   [4:0] v65_0_addr_62_reg_838_pp0_iter2_reg;
reg   [4:0] v65_0_addr_62_reg_838_pp0_iter3_reg;
reg   [4:0] v65_0_addr_62_reg_838_pp0_iter4_reg;
wire   [31:0] v123_fu_630_p1;
reg   [4:0] v65_1_addr_62_reg_848;
reg   [4:0] v65_1_addr_62_reg_848_pp0_iter2_reg;
reg   [4:0] v65_1_addr_62_reg_848_pp0_iter3_reg;
reg   [4:0] v65_1_addr_62_reg_848_pp0_iter4_reg;
wire   [31:0] v131_fu_635_p1;
reg   [31:0] v81_reg_858;
reg   [31:0] v89_reg_863;
reg   [31:0] v97_reg_868;
reg   [31:0] v92_reg_873;
reg   [31:0] v100_reg_878;
reg   [31:0] v105_reg_883;
reg   [31:0] v113_reg_888;
reg   [31:0] v121_reg_893;
reg   [31:0] v129_reg_898;
reg   [31:0] v108_reg_903;
reg   [31:0] v116_reg_908;
reg   [31:0] v124_reg_913;
reg   [31:0] v132_reg_918;
reg   [31:0] v93_reg_923;
reg   [31:0] v101_reg_928;
reg   [31:0] v125_reg_933;
reg   [31:0] v133_reg_938;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln119_fu_371_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln128_fu_398_p1;
wire   [63:0] zext_ln137_fu_439_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln146_fu_455_p1;
wire   [63:0] zext_ln155_fu_507_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln164_fu_525_p1;
wire   [63:0] zext_ln173_fu_555_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln183_fu_570_p1;
wire   [63:0] zext_ln113_fu_575_p1;
wire   [63:0] zext_ln135_fu_587_p1;
wire   [63:0] zext_ln153_fu_611_p1;
wire   [63:0] zext_ln171_fu_624_p1;
reg   [31:0] v66_fu_100;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v126_fu_104;
wire   [6:0] add_ln112_fu_403_p2;
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
reg   [31:0] grp_fu_294_p0;
reg   [31:0] grp_fu_294_p1;
reg   [31:0] grp_fu_298_p0;
reg   [31:0] grp_fu_298_p1;
reg   [31:0] grp_fu_302_p0;
reg   [31:0] grp_fu_302_p1;
reg   [31:0] grp_fu_306_p0;
reg   [31:0] grp_fu_306_p1;
wire   [2:0] tmp_s_fu_349_p4;
wire   [11:0] tmp_181_fu_359_p5;
wire   [11:0] tmp_182_fu_386_p5;
wire   [11:0] tmp_184_fu_428_p5;
wire   [11:0] tmp_185_fu_444_p5;
wire   [11:0] tmp_187_fu_497_p5;
wire   [11:0] tmp_188_fu_512_p7;
wire   [11:0] tmp_189_fu_545_p5;
wire   [11:0] tmp_190_fu_560_p5;
wire   [4:0] or_ln135_s_fu_580_p3;
wire   [4:0] or_ln153_s_fu_603_p4;
wire   [4:0] or_ln171_s_fu_617_p3;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_56_fu_341_p3 == 1'd0))) begin
            v126_fu_104 <= add_ln112_fu_403_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v126_fu_104 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_fu_100 <= v70_25_reload;
    end else if (((tmp_56_reg_682 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_fu_100 <= v71_fu_479_p3;
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
        icmp_ln115_reg_701 <= icmp_ln115_fu_414_p2;
        tmp_183_reg_706 <= {{v68_reg_674[5:2]}};
        tmp_186_reg_721 <= {{v68_reg_674[5:3]}};
        tmp_57_reg_731 <= v68_reg_674[32'd1];
        v65_0_addr_61_reg_828[0] <= zext_ln153_fu_611_p1[0];
v65_0_addr_61_reg_828[4 : 2] <= zext_ln153_fu_611_p1[4 : 2];
        v65_0_addr_61_reg_828_pp0_iter2_reg[0] <= v65_0_addr_61_reg_828[0];
v65_0_addr_61_reg_828_pp0_iter2_reg[4 : 2] <= v65_0_addr_61_reg_828[4 : 2];
        v65_0_addr_61_reg_828_pp0_iter3_reg[0] <= v65_0_addr_61_reg_828_pp0_iter2_reg[0];
v65_0_addr_61_reg_828_pp0_iter3_reg[4 : 2] <= v65_0_addr_61_reg_828_pp0_iter2_reg[4 : 2];
        v65_0_addr_62_reg_838[4 : 2] <= zext_ln171_fu_624_p1[4 : 2];
        v65_0_addr_62_reg_838_pp0_iter2_reg[4 : 2] <= v65_0_addr_62_reg_838[4 : 2];
        v65_0_addr_62_reg_838_pp0_iter3_reg[4 : 2] <= v65_0_addr_62_reg_838_pp0_iter2_reg[4 : 2];
        v65_0_addr_62_reg_838_pp0_iter4_reg[4 : 2] <= v65_0_addr_62_reg_838_pp0_iter3_reg[4 : 2];
        v65_1_addr_61_reg_833[0] <= zext_ln153_fu_611_p1[0];
v65_1_addr_61_reg_833[4 : 2] <= zext_ln153_fu_611_p1[4 : 2];
        v65_1_addr_61_reg_833_pp0_iter2_reg[0] <= v65_1_addr_61_reg_833[0];
v65_1_addr_61_reg_833_pp0_iter2_reg[4 : 2] <= v65_1_addr_61_reg_833[4 : 2];
        v65_1_addr_61_reg_833_pp0_iter3_reg[0] <= v65_1_addr_61_reg_833_pp0_iter2_reg[0];
v65_1_addr_61_reg_833_pp0_iter3_reg[4 : 2] <= v65_1_addr_61_reg_833_pp0_iter2_reg[4 : 2];
        v65_1_addr_62_reg_848[4 : 2] <= zext_ln171_fu_624_p1[4 : 2];
        v65_1_addr_62_reg_848_pp0_iter2_reg[4 : 2] <= v65_1_addr_62_reg_848[4 : 2];
        v65_1_addr_62_reg_848_pp0_iter3_reg[4 : 2] <= v65_1_addr_62_reg_848_pp0_iter2_reg[4 : 2];
        v65_1_addr_62_reg_848_pp0_iter4_reg[4 : 2] <= v65_1_addr_62_reg_848_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln113_s_reg_691 <= {{ap_sig_allocacmp_v68[5:1]}};
        tmp_56_reg_682 <= ap_sig_allocacmp_v68[32'd6];
        tmp_56_reg_682_pp0_iter1_reg <= tmp_56_reg_682;
        tmp_56_reg_682_pp0_iter2_reg <= tmp_56_reg_682_pp0_iter1_reg;
        tmp_56_reg_682_pp0_iter3_reg <= tmp_56_reg_682_pp0_iter2_reg;
        v65_0_addr_60_reg_793[4 : 1] <= zext_ln135_fu_587_p1[4 : 1];
        v65_0_addr_60_reg_793_pp0_iter2_reg[4 : 1] <= v65_0_addr_60_reg_793[4 : 1];
        v65_0_addr_60_reg_793_pp0_iter3_reg[4 : 1] <= v65_0_addr_60_reg_793_pp0_iter2_reg[4 : 1];
        v65_0_addr_reg_783 <= zext_ln113_fu_575_p1;
        v65_0_addr_reg_783_pp0_iter2_reg <= v65_0_addr_reg_783;
        v65_0_addr_reg_783_pp0_iter3_reg <= v65_0_addr_reg_783_pp0_iter2_reg;
        v65_1_addr_60_reg_798[4 : 1] <= zext_ln135_fu_587_p1[4 : 1];
        v65_1_addr_60_reg_798_pp0_iter2_reg[4 : 1] <= v65_1_addr_60_reg_798[4 : 1];
        v65_1_addr_60_reg_798_pp0_iter3_reg[4 : 1] <= v65_1_addr_60_reg_798_pp0_iter2_reg[4 : 1];
        v65_1_addr_reg_788 <= zext_ln113_fu_575_p1;
        v65_1_addr_reg_788_pp0_iter2_reg <= v65_1_addr_reg_788;
        v65_1_addr_reg_788_pp0_iter3_reg <= v65_1_addr_reg_788_pp0_iter2_reg;
        v68_reg_674 <= ap_sig_allocacmp_v68;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_310 <= v138_q1;
        reg_314 <= v138_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_318 <= grp_fu_3024_p_dout0;
        reg_323 <= grp_fu_3028_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_878 <= grp_fu_3036_p_dout0;
        v105_reg_883 <= v65_0_q1;
        v113_reg_888 <= v65_1_q1;
        v121_reg_893 <= v65_0_q0;
        v129_reg_898 <= v65_1_q0;
        v92_reg_873 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v101_reg_928 <= grp_fu_3028_p_dout0;
        v93_reg_923 <= grp_fu_3024_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v108_reg_903 <= grp_fu_3032_p_dout0;
        v116_reg_908 <= grp_fu_3036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_reg_913 <= grp_fu_3032_p_dout0;
        v132_reg_918 <= grp_fu_3036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v125_reg_933 <= grp_fu_3024_p_dout0;
        v133_reg_938 <= grp_fu_3028_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v71_reg_737 <= v71_fu_479_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v73_reg_813 <= v65_0_q1;
        v76_reg_818 <= grp_fu_3032_p_dout0;
        v81_reg_858 <= v65_1_q1;
        v84_reg_823 <= grp_fu_3036_p_dout0;
        v89_reg_863 <= v65_0_q0;
        v97_reg_868 <= v65_1_q0;
    end
end
always @ (*) begin
    if (((tmp_56_reg_682 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        grp_fu_294_p0 = v121_reg_893;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_294_p0 = v105_reg_883;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_294_p0 = v89_reg_863;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_294_p0 = v73_reg_813;
    end else begin
        grp_fu_294_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_294_p1 = v124_reg_913;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_294_p1 = v108_reg_903;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_294_p1 = v92_reg_873;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_294_p1 = v76_reg_818;
    end else begin
        grp_fu_294_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_298_p0 = v129_reg_898;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_298_p0 = v113_reg_888;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_298_p0 = v97_reg_868;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_298_p0 = v81_reg_858;
    end else begin
        grp_fu_298_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_298_p1 = v132_reg_918;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_298_p1 = v116_reg_908;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_298_p1 = v100_reg_878;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_298_p1 = v84_reg_823;
    end else begin
        grp_fu_298_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_302_p0 = v123_fu_630_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_302_p0 = v107_fu_593_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_302_p0 = v91_fu_535_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_302_p0 = v75_fu_487_p1;
    end else begin
        grp_fu_302_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_302_p1 = v71_reg_737;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_302_p1 = v71_fu_479_p3;
    end else begin
        grp_fu_302_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_306_p0 = v131_fu_635_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_306_p0 = v115_fu_598_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_306_p0 = v99_fu_540_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_306_p0 = v83_fu_492_p1;
    end else begin
        grp_fu_306_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_306_p1 = v71_reg_737;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_306_p1 = v71_fu_479_p3;
    end else begin
        grp_fu_306_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_address0_local = zext_ln183_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_address0_local = zext_ln164_fu_525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_address0_local = zext_ln146_fu_455_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_address0_local = zext_ln128_fu_398_p1;
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
            v138_address1_local = zext_ln173_fu_555_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_address1_local = zext_ln155_fu_507_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_address1_local = zext_ln137_fu_439_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_address1_local = zext_ln119_fu_371_p1;
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
        v65_0_address0_local = v65_0_addr_62_reg_838_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address0_local = v65_0_addr_60_reg_793_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address0_local = zext_ln171_fu_624_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address0_local = zext_ln135_fu_587_p1;
    end else begin
        v65_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address1_local = v65_0_addr_61_reg_828_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address1_local = v65_0_addr_reg_783_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address1_local = zext_ln153_fu_611_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address1_local = zext_ln113_fu_575_p1;
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
        v65_0_d0_local = v125_reg_933;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_d0_local = v93_reg_923;
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
        v65_1_address0_local = v65_1_addr_62_reg_848_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address0_local = v65_1_addr_60_reg_798_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address0_local = zext_ln171_fu_624_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address0_local = zext_ln135_fu_587_p1;
    end else begin
        v65_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address1_local = v65_1_addr_61_reg_833_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address1_local = v65_1_addr_reg_788_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address1_local = zext_ln153_fu_611_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address1_local = zext_ln113_fu_575_p1;
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
        v65_1_d0_local = v133_reg_938;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_d0_local = v101_reg_928;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_56_reg_682_pp0_iter3_reg == 1'd1))) begin
        v70_26_out_ap_vld = 1'b1;
    end else begin
        v70_26_out_ap_vld = 1'b0;
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
assign add_ln112_fu_403_p2 = (ap_sig_allocacmp_v68 + 7'd8);
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
assign grp_fu_3024_p_din0 = grp_fu_294_p0;
assign grp_fu_3024_p_din1 = grp_fu_294_p1;
assign grp_fu_3024_p_opcode = 2'd0;
assign grp_fu_3028_p_ce = 1'b1;
assign grp_fu_3028_p_din0 = grp_fu_298_p0;
assign grp_fu_3028_p_din1 = grp_fu_298_p1;
assign grp_fu_3028_p_opcode = 2'd0;
assign grp_fu_3032_p_ce = 1'b1;
assign grp_fu_3032_p_din0 = grp_fu_302_p0;
assign grp_fu_3032_p_din1 = grp_fu_302_p1;
assign grp_fu_3036_p_ce = 1'b1;
assign grp_fu_3036_p_din0 = grp_fu_306_p0;
assign grp_fu_3036_p_din1 = grp_fu_306_p1;
assign icmp_ln115_fu_414_p2 = ((v68_reg_674 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln113_s_fu_376_p4 = {{ap_sig_allocacmp_v68[5:1]}};
assign or_ln135_s_fu_580_p3 = {{tmp_183_reg_706}, {1'd1}};
assign or_ln153_s_fu_603_p4 = {{{tmp_186_reg_721}, {1'd1}}, {tmp_57_reg_731}};
assign or_ln171_s_fu_617_p3 = {{tmp_186_reg_721}, {2'd3}};
assign tmp_181_fu_359_p5 = {{{{empty}, {1'd1}}, {tmp_s_fu_349_p4}}, {ap_sig_allocacmp_v68}};
assign tmp_182_fu_386_p5 = {{{{empty}, {5'd16}}, {lshr_ln113_s_fu_376_p4}}, {1'd1}};
assign tmp_183_fu_419_p4 = {{v68_reg_674[5:2]}};
assign tmp_184_fu_428_p5 = {{{{empty}, {5'd16}}, {tmp_183_fu_419_p4}}, {2'd2}};
assign tmp_185_fu_444_p5 = {{{{empty}, {5'd16}}, {tmp_183_fu_419_p4}}, {2'd3}};
assign tmp_187_fu_497_p5 = {{{{empty}, {5'd16}}, {tmp_186_reg_721}}, {3'd4}};
assign tmp_188_fu_512_p7 = {{{{{{empty}, {5'd16}}, {tmp_186_reg_721}}, {1'd1}}, {tmp_57_reg_731}}, {1'd1}};
assign tmp_189_fu_545_p5 = {{{{empty}, {5'd16}}, {tmp_186_reg_721}}, {3'd6}};
assign tmp_190_fu_560_p5 = {{{{empty}, {5'd16}}, {tmp_186_reg_721}}, {3'd7}};
assign tmp_56_fu_341_p3 = ap_sig_allocacmp_v68[32'd6];
assign tmp_s_fu_349_p4 = {{v67[3:1]}};
assign v107_fu_593_p1 = reg_310;
assign v115_fu_598_p1 = reg_314;
assign v123_fu_630_p1 = reg_310;
assign v131_fu_635_p1 = reg_314;
assign v138_address0 = v138_address0_local;
assign v138_address1 = v138_address1_local;
assign v138_ce0 = v138_ce0_local;
assign v138_ce1 = v138_ce1_local;
assign v65_0_address0 = v65_0_address0_local;
assign v65_0_address1 = v65_0_address1_local;
assign v65_0_ce0 = v65_0_ce0_local;
assign v65_0_ce1 = v65_0_ce1_local;
assign v65_0_d0 = v65_0_d0_local;
assign v65_0_d1 = reg_318;
assign v65_0_we0 = v65_0_we0_local;
assign v65_0_we1 = v65_0_we1_local;
assign v65_1_address0 = v65_1_address0_local;
assign v65_1_address1 = v65_1_address1_local;
assign v65_1_ce0 = v65_1_ce0_local;
assign v65_1_ce1 = v65_1_ce1_local;
assign v65_1_d0 = v65_1_d0_local;
assign v65_1_d1 = reg_323;
assign v65_1_we0 = v65_1_we0_local;
assign v65_1_we1 = v65_1_we1_local;
assign v70_26_out = v66_fu_100;
assign v71_fu_479_p3 = ((icmp_ln115_reg_701[0:0] == 1'b1) ? v69_16 : v66_fu_100);
assign v75_fu_487_p1 = reg_310;
assign v83_fu_492_p1 = reg_314;
assign v91_fu_535_p1 = reg_310;
assign v99_fu_540_p1 = reg_314;
assign zext_ln113_fu_575_p1 = lshr_ln113_s_reg_691;
assign zext_ln119_fu_371_p1 = tmp_181_fu_359_p5;
assign zext_ln128_fu_398_p1 = tmp_182_fu_386_p5;
assign zext_ln135_fu_587_p1 = or_ln135_s_fu_580_p3;
assign zext_ln137_fu_439_p1 = tmp_184_fu_428_p5;
assign zext_ln146_fu_455_p1 = tmp_185_fu_444_p5;
assign zext_ln153_fu_611_p1 = or_ln153_s_fu_603_p4;
assign zext_ln155_fu_507_p1 = tmp_187_fu_497_p5;
assign zext_ln164_fu_525_p1 = tmp_188_fu_512_p7;
assign zext_ln171_fu_624_p1 = or_ln171_s_fu_617_p3;
assign zext_ln173_fu_555_p1 = tmp_189_fu_545_p5;
assign zext_ln183_fu_570_p1 = tmp_190_fu_560_p5;
always @ (posedge ap_clk) begin
    v65_0_addr_60_reg_793[0] <= 1'b1;
    v65_0_addr_60_reg_793_pp0_iter2_reg[0] <= 1'b1;
    v65_0_addr_60_reg_793_pp0_iter3_reg[0] <= 1'b1;
    v65_1_addr_60_reg_798[0] <= 1'b1;
    v65_1_addr_60_reg_798_pp0_iter2_reg[0] <= 1'b1;
    v65_1_addr_60_reg_798_pp0_iter3_reg[0] <= 1'b1;
    v65_0_addr_61_reg_828[1] <= 1'b1;
    v65_0_addr_61_reg_828_pp0_iter2_reg[1] <= 1'b1;
    v65_0_addr_61_reg_828_pp0_iter3_reg[1] <= 1'b1;
    v65_1_addr_61_reg_833[1] <= 1'b1;
    v65_1_addr_61_reg_833_pp0_iter2_reg[1] <= 1'b1;
    v65_1_addr_61_reg_833_pp0_iter3_reg[1] <= 1'b1;
    v65_0_addr_62_reg_838[1:0] <= 2'b11;
    v65_0_addr_62_reg_838_pp0_iter2_reg[1:0] <= 2'b11;
    v65_0_addr_62_reg_838_pp0_iter3_reg[1:0] <= 2'b11;
    v65_0_addr_62_reg_838_pp0_iter4_reg[1:0] <= 2'b11;
    v65_1_addr_62_reg_848[1:0] <= 2'b11;
    v65_1_addr_62_reg_848_pp0_iter2_reg[1:0] <= 2'b11;
    v65_1_addr_62_reg_848_pp0_iter3_reg[1:0] <= 2'b11;
    v65_1_addr_62_reg_848_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
