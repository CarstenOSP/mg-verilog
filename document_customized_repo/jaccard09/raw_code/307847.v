module bicg_bicg_node2_Pipeline_label_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v66,v67,v138_address0,v138_ce0,v138_q0,v138_address1,v138_ce1,v138_q1,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,v69,cmp10,v70_out,v70_out_ap_vld,grp_fu_3024_p_din0,grp_fu_3024_p_din1,grp_fu_3024_p_opcode,grp_fu_3024_p_dout0,grp_fu_3024_p_ce,grp_fu_3028_p_din0,grp_fu_3028_p_din1,grp_fu_3028_p_opcode,grp_fu_3028_p_dout0,grp_fu_3028_p_ce,grp_fu_3032_p_din0,grp_fu_3032_p_din1,grp_fu_3032_p_dout0,grp_fu_3032_p_ce,grp_fu_3036_p_din0,grp_fu_3036_p_din1,grp_fu_3036_p_dout0,grp_fu_3036_p_ce); 
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
input  [5:0] v67;
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
input  [31:0] v69;
input  [0:0] cmp10;
output  [31:0] v70_out;
output   v70_out_ap_vld;
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
reg v70_out_ap_vld;
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
reg   [0:0] tmp_reg_730;
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
reg   [6:0] v68_reg_722;
wire   [0:0] tmp_fu_341_p3;
reg   [0:0] tmp_reg_730_pp0_iter1_reg;
reg   [0:0] tmp_reg_730_pp0_iter2_reg;
reg   [0:0] tmp_reg_730_pp0_iter3_reg;
wire   [4:0] lshr_ln_fu_372_p4;
reg   [4:0] lshr_ln_reg_739;
wire   [0:0] icmp_ln115_fu_408_p2;
reg   [0:0] icmp_ln115_reg_749;
wire   [3:0] tmp_4_fu_413_p4;
reg   [3:0] tmp_4_reg_754;
reg   [2:0] tmp_10_reg_769;
reg   [0:0] tmp_70_reg_779;
wire   [31:0] v71_fu_469_p3;
reg   [31:0] v71_reg_785;
wire   [31:0] v75_fu_477_p1;
wire   [31:0] v83_fu_482_p1;
wire   [31:0] v91_fu_521_p1;
wire   [31:0] v99_fu_526_p1;
reg   [4:0] v65_0_addr_reg_831;
reg   [4:0] v65_0_addr_reg_831_pp0_iter2_reg;
reg   [4:0] v65_0_addr_reg_831_pp0_iter3_reg;
reg   [4:0] v65_1_addr_reg_836;
reg   [4:0] v65_1_addr_reg_836_pp0_iter2_reg;
reg   [4:0] v65_1_addr_reg_836_pp0_iter3_reg;
reg   [4:0] v65_0_addr_1_reg_841;
reg   [4:0] v65_0_addr_1_reg_841_pp0_iter2_reg;
reg   [4:0] v65_0_addr_1_reg_841_pp0_iter3_reg;
reg   [4:0] v65_1_addr_1_reg_846;
reg   [4:0] v65_1_addr_1_reg_846_pp0_iter2_reg;
reg   [4:0] v65_1_addr_1_reg_846_pp0_iter3_reg;
wire   [31:0] v107_fu_575_p1;
wire   [31:0] v115_fu_580_p1;
reg   [31:0] v73_reg_861;
reg   [31:0] v76_reg_866;
reg   [31:0] v84_reg_871;
reg   [4:0] v65_0_addr_2_reg_876;
reg   [4:0] v65_0_addr_2_reg_876_pp0_iter2_reg;
reg   [4:0] v65_0_addr_2_reg_876_pp0_iter3_reg;
reg   [4:0] v65_1_addr_2_reg_881;
reg   [4:0] v65_1_addr_2_reg_881_pp0_iter2_reg;
reg   [4:0] v65_1_addr_2_reg_881_pp0_iter3_reg;
reg   [4:0] v65_0_addr_3_reg_886;
reg   [4:0] v65_0_addr_3_reg_886_pp0_iter2_reg;
reg   [4:0] v65_0_addr_3_reg_886_pp0_iter3_reg;
reg   [4:0] v65_0_addr_3_reg_886_pp0_iter4_reg;
wire   [31:0] v123_fu_612_p1;
reg   [4:0] v65_1_addr_3_reg_896;
reg   [4:0] v65_1_addr_3_reg_896_pp0_iter2_reg;
reg   [4:0] v65_1_addr_3_reg_896_pp0_iter3_reg;
reg   [4:0] v65_1_addr_3_reg_896_pp0_iter4_reg;
wire   [31:0] v131_fu_617_p1;
reg   [31:0] v81_reg_906;
reg   [31:0] v89_reg_911;
reg   [31:0] v97_reg_916;
wire   [31:0] v74_fu_622_p3;
reg   [31:0] v92_reg_926;
reg   [31:0] v100_reg_931;
wire   [31:0] v82_fu_629_p3;
wire   [31:0] v90_fu_636_p3;
reg   [31:0] v90_reg_941;
wire   [31:0] v98_fu_642_p3;
reg   [31:0] v98_reg_946;
wire   [31:0] v106_fu_648_p3;
reg   [31:0] v106_reg_951;
wire   [31:0] v114_fu_655_p3;
reg   [31:0] v114_reg_956;
wire   [31:0] v122_fu_662_p3;
reg   [31:0] v122_reg_961;
wire   [31:0] v130_fu_669_p3;
reg   [31:0] v130_reg_966;
reg   [31:0] v108_reg_971;
reg   [31:0] v116_reg_976;
reg   [31:0] v124_reg_981;
reg   [31:0] v132_reg_986;
reg   [31:0] v93_reg_991;
reg   [31:0] v101_reg_996;
reg   [31:0] v125_reg_1001;
reg   [31:0] v133_reg_1006;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln119_fu_367_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln128_fu_392_p1;
wire   [63:0] zext_ln137_fu_431_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln146_fu_445_p1;
wire   [63:0] zext_ln155_fu_495_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln164_fu_511_p1;
wire   [63:0] zext_ln173_fu_539_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln183_fu_552_p1;
wire   [63:0] zext_ln113_fu_557_p1;
wire   [63:0] zext_ln135_fu_569_p1;
wire   [63:0] zext_ln153_fu_593_p1;
wire   [63:0] zext_ln171_fu_606_p1;
reg   [31:0] v66_31_fu_100;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v126_fu_104;
wire   [6:0] add_ln112_fu_397_p2;
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
wire   [4:0] tmp_cast_fu_349_p4;
wire   [11:0] tmp_1_fu_359_p3;
wire   [11:0] tmp_3_fu_382_p4;
wire   [11:0] tmp_6_fu_422_p4;
wire   [11:0] tmp_9_fu_436_p4;
wire   [11:0] tmp_12_fu_487_p4;
wire   [11:0] tmp_17_fu_500_p6;
wire   [11:0] tmp_20_fu_531_p4;
wire   [11:0] tmp_23_fu_544_p4;
wire   [4:0] or_ln134_1_fu_562_p3;
wire   [4:0] or_ln152_1_fu_585_p4;
wire   [4:0] or_ln170_1_fu_599_p3;
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
#0 v66_31_fu_100 = 32'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_341_p3 == 1'd0))) begin
            v126_fu_104 <= add_ln112_fu_397_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v126_fu_104 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_31_fu_100 <= v66;
    end else if (((tmp_reg_730 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_31_fu_100 <= v71_fu_469_p3;
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
        icmp_ln115_reg_749 <= icmp_ln115_fu_408_p2;
        tmp_10_reg_769 <= {{v68_reg_722[5:3]}};
        tmp_4_reg_754 <= {{v68_reg_722[5:2]}};
        tmp_70_reg_779 <= v68_reg_722[32'd1];
        v65_0_addr_2_reg_876[0] <= zext_ln153_fu_593_p1[0];
v65_0_addr_2_reg_876[4 : 2] <= zext_ln153_fu_593_p1[4 : 2];
        v65_0_addr_2_reg_876_pp0_iter2_reg[0] <= v65_0_addr_2_reg_876[0];
v65_0_addr_2_reg_876_pp0_iter2_reg[4 : 2] <= v65_0_addr_2_reg_876[4 : 2];
        v65_0_addr_2_reg_876_pp0_iter3_reg[0] <= v65_0_addr_2_reg_876_pp0_iter2_reg[0];
v65_0_addr_2_reg_876_pp0_iter3_reg[4 : 2] <= v65_0_addr_2_reg_876_pp0_iter2_reg[4 : 2];
        v65_0_addr_3_reg_886[4 : 2] <= zext_ln171_fu_606_p1[4 : 2];
        v65_0_addr_3_reg_886_pp0_iter2_reg[4 : 2] <= v65_0_addr_3_reg_886[4 : 2];
        v65_0_addr_3_reg_886_pp0_iter3_reg[4 : 2] <= v65_0_addr_3_reg_886_pp0_iter2_reg[4 : 2];
        v65_0_addr_3_reg_886_pp0_iter4_reg[4 : 2] <= v65_0_addr_3_reg_886_pp0_iter3_reg[4 : 2];
        v65_1_addr_2_reg_881[0] <= zext_ln153_fu_593_p1[0];
v65_1_addr_2_reg_881[4 : 2] <= zext_ln153_fu_593_p1[4 : 2];
        v65_1_addr_2_reg_881_pp0_iter2_reg[0] <= v65_1_addr_2_reg_881[0];
v65_1_addr_2_reg_881_pp0_iter2_reg[4 : 2] <= v65_1_addr_2_reg_881[4 : 2];
        v65_1_addr_2_reg_881_pp0_iter3_reg[0] <= v65_1_addr_2_reg_881_pp0_iter2_reg[0];
v65_1_addr_2_reg_881_pp0_iter3_reg[4 : 2] <= v65_1_addr_2_reg_881_pp0_iter2_reg[4 : 2];
        v65_1_addr_3_reg_896[4 : 2] <= zext_ln171_fu_606_p1[4 : 2];
        v65_1_addr_3_reg_896_pp0_iter2_reg[4 : 2] <= v65_1_addr_3_reg_896[4 : 2];
        v65_1_addr_3_reg_896_pp0_iter3_reg[4 : 2] <= v65_1_addr_3_reg_896_pp0_iter2_reg[4 : 2];
        v65_1_addr_3_reg_896_pp0_iter4_reg[4 : 2] <= v65_1_addr_3_reg_896_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_739 <= {{ap_sig_allocacmp_v68[5:1]}};
        tmp_reg_730 <= ap_sig_allocacmp_v68[32'd6];
        tmp_reg_730_pp0_iter1_reg <= tmp_reg_730;
        tmp_reg_730_pp0_iter2_reg <= tmp_reg_730_pp0_iter1_reg;
        tmp_reg_730_pp0_iter3_reg <= tmp_reg_730_pp0_iter2_reg;
        v65_0_addr_1_reg_841[4 : 1] <= zext_ln135_fu_569_p1[4 : 1];
        v65_0_addr_1_reg_841_pp0_iter2_reg[4 : 1] <= v65_0_addr_1_reg_841[4 : 1];
        v65_0_addr_1_reg_841_pp0_iter3_reg[4 : 1] <= v65_0_addr_1_reg_841_pp0_iter2_reg[4 : 1];
        v65_0_addr_reg_831 <= zext_ln113_fu_557_p1;
        v65_0_addr_reg_831_pp0_iter2_reg <= v65_0_addr_reg_831;
        v65_0_addr_reg_831_pp0_iter3_reg <= v65_0_addr_reg_831_pp0_iter2_reg;
        v65_1_addr_1_reg_846[4 : 1] <= zext_ln135_fu_569_p1[4 : 1];
        v65_1_addr_1_reg_846_pp0_iter2_reg[4 : 1] <= v65_1_addr_1_reg_846[4 : 1];
        v65_1_addr_1_reg_846_pp0_iter3_reg[4 : 1] <= v65_1_addr_1_reg_846_pp0_iter2_reg[4 : 1];
        v65_1_addr_reg_836 <= zext_ln113_fu_557_p1;
        v65_1_addr_reg_836_pp0_iter2_reg <= v65_1_addr_reg_836;
        v65_1_addr_reg_836_pp0_iter3_reg <= v65_1_addr_reg_836_pp0_iter2_reg;
        v68_reg_722 <= ap_sig_allocacmp_v68;
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
        v100_reg_931 <= grp_fu_3036_p_dout0;
        v92_reg_926 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v101_reg_996 <= grp_fu_3028_p_dout0;
        v93_reg_991 <= grp_fu_3024_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v106_reg_951 <= v106_fu_648_p3;
        v114_reg_956 <= v114_fu_655_p3;
        v122_reg_961 <= v122_fu_662_p3;
        v130_reg_966 <= v130_fu_669_p3;
        v71_reg_785 <= v71_fu_469_p3;
        v90_reg_941 <= v90_fu_636_p3;
        v98_reg_946 <= v98_fu_642_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v108_reg_971 <= grp_fu_3032_p_dout0;
        v116_reg_976 <= grp_fu_3036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_reg_981 <= grp_fu_3032_p_dout0;
        v132_reg_986 <= grp_fu_3036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v125_reg_1001 <= grp_fu_3024_p_dout0;
        v133_reg_1006 <= grp_fu_3028_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v73_reg_861 <= v65_0_q1;
        v76_reg_866 <= grp_fu_3032_p_dout0;
        v81_reg_906 <= v65_1_q1;
        v84_reg_871 <= grp_fu_3036_p_dout0;
        v89_reg_911 <= v65_0_q0;
        v97_reg_916 <= v65_1_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_730 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        grp_fu_294_p0 = v122_reg_961;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_294_p0 = v106_reg_951;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_294_p0 = v90_reg_941;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_294_p0 = v74_fu_622_p3;
    end else begin
        grp_fu_294_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_294_p1 = v124_reg_981;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_294_p1 = v108_reg_971;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_294_p1 = v92_reg_926;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_294_p1 = v76_reg_866;
    end else begin
        grp_fu_294_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_298_p0 = v130_reg_966;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_298_p0 = v114_reg_956;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_298_p0 = v98_reg_946;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_298_p0 = v82_fu_629_p3;
    end else begin
        grp_fu_298_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_298_p1 = v132_reg_986;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_298_p1 = v116_reg_976;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_298_p1 = v100_reg_931;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_298_p1 = v84_reg_871;
    end else begin
        grp_fu_298_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_302_p0 = v123_fu_612_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_302_p0 = v107_fu_575_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_302_p0 = v91_fu_521_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_302_p0 = v75_fu_477_p1;
    end else begin
        grp_fu_302_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_302_p1 = v71_reg_785;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_302_p1 = v71_fu_469_p3;
    end else begin
        grp_fu_302_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_306_p0 = v131_fu_617_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_306_p0 = v115_fu_580_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_306_p0 = v99_fu_526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_306_p0 = v83_fu_482_p1;
    end else begin
        grp_fu_306_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_306_p1 = v71_reg_785;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_306_p1 = v71_fu_469_p3;
    end else begin
        grp_fu_306_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_address0_local = zext_ln183_fu_552_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_address0_local = zext_ln164_fu_511_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_address0_local = zext_ln146_fu_445_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_address0_local = zext_ln128_fu_392_p1;
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
            v138_address1_local = zext_ln173_fu_539_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_address1_local = zext_ln155_fu_495_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_address1_local = zext_ln137_fu_431_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_address1_local = zext_ln119_fu_367_p1;
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
        v65_0_address0_local = v65_0_addr_3_reg_886_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address0_local = v65_0_addr_1_reg_841_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address0_local = zext_ln171_fu_606_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address0_local = zext_ln135_fu_569_p1;
    end else begin
        v65_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address1_local = v65_0_addr_2_reg_876_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address1_local = v65_0_addr_reg_831_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address1_local = zext_ln153_fu_593_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address1_local = zext_ln113_fu_557_p1;
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
        v65_0_d0_local = v125_reg_1001;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_d0_local = v93_reg_991;
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
        v65_1_address0_local = v65_1_addr_3_reg_896_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address0_local = v65_1_addr_1_reg_846_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address0_local = zext_ln171_fu_606_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address0_local = zext_ln135_fu_569_p1;
    end else begin
        v65_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address1_local = v65_1_addr_2_reg_881_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address1_local = v65_1_addr_reg_836_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address1_local = zext_ln153_fu_593_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address1_local = zext_ln113_fu_557_p1;
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
        v65_1_d0_local = v133_reg_1006;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_d0_local = v101_reg_996;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_730_pp0_iter3_reg == 1'd1))) begin
        v70_out_ap_vld = 1'b1;
    end else begin
        v70_out_ap_vld = 1'b0;
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
assign add_ln112_fu_397_p2 = (ap_sig_allocacmp_v68 + 7'd8);
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
assign icmp_ln115_fu_408_p2 = ((v68_reg_722 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_372_p4 = {{ap_sig_allocacmp_v68[5:1]}};
assign or_ln134_1_fu_562_p3 = {{tmp_4_reg_754}, {1'd1}};
assign or_ln152_1_fu_585_p4 = {{{tmp_10_reg_769}, {1'd1}}, {tmp_70_reg_779}};
assign or_ln170_1_fu_599_p3 = {{tmp_10_reg_769}, {2'd3}};
assign tmp_12_fu_487_p4 = {{{v67}, {tmp_10_reg_769}}, {3'd4}};
assign tmp_17_fu_500_p6 = {{{{{v67}, {tmp_10_reg_769}}, {1'd1}}, {tmp_70_reg_779}}, {1'd1}};
assign tmp_1_fu_359_p3 = {{tmp_cast_fu_349_p4}, {ap_sig_allocacmp_v68}};
assign tmp_20_fu_531_p4 = {{{v67}, {tmp_10_reg_769}}, {3'd6}};
assign tmp_23_fu_544_p4 = {{{v67}, {tmp_10_reg_769}}, {3'd7}};
assign tmp_3_fu_382_p4 = {{{v67}, {lshr_ln_fu_372_p4}}, {1'd1}};
assign tmp_4_fu_413_p4 = {{v68_reg_722[5:2]}};
assign tmp_6_fu_422_p4 = {{{v67}, {tmp_4_fu_413_p4}}, {2'd2}};
assign tmp_9_fu_436_p4 = {{{v67}, {tmp_4_fu_413_p4}}, {2'd3}};
assign tmp_cast_fu_349_p4 = {{v67[5:1]}};
assign tmp_fu_341_p3 = ap_sig_allocacmp_v68[32'd6];
assign v106_fu_648_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_0_q1);
assign v107_fu_575_p1 = reg_310;
assign v114_fu_655_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_1_q1);
assign v115_fu_580_p1 = reg_314;
assign v122_fu_662_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_0_q0);
assign v123_fu_612_p1 = reg_310;
assign v130_fu_669_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_1_q0);
assign v131_fu_617_p1 = reg_314;
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
assign v70_out = v66_31_fu_100;
assign v71_fu_469_p3 = ((icmp_ln115_reg_749[0:0] == 1'b1) ? v69 : v66_31_fu_100);
assign v74_fu_622_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v73_reg_861);
assign v75_fu_477_p1 = reg_310;
assign v82_fu_629_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v81_reg_906);
assign v83_fu_482_p1 = reg_314;
assign v90_fu_636_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v89_reg_911);
assign v91_fu_521_p1 = reg_310;
assign v98_fu_642_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v97_reg_916);
assign v99_fu_526_p1 = reg_314;
assign zext_ln113_fu_557_p1 = lshr_ln_reg_739;
assign zext_ln119_fu_367_p1 = tmp_1_fu_359_p3;
assign zext_ln128_fu_392_p1 = tmp_3_fu_382_p4;
assign zext_ln135_fu_569_p1 = or_ln134_1_fu_562_p3;
assign zext_ln137_fu_431_p1 = tmp_6_fu_422_p4;
assign zext_ln146_fu_445_p1 = tmp_9_fu_436_p4;
assign zext_ln153_fu_593_p1 = or_ln152_1_fu_585_p4;
assign zext_ln155_fu_495_p1 = tmp_12_fu_487_p4;
assign zext_ln164_fu_511_p1 = tmp_17_fu_500_p6;
assign zext_ln171_fu_606_p1 = or_ln170_1_fu_599_p3;
assign zext_ln173_fu_539_p1 = tmp_20_fu_531_p4;
assign zext_ln183_fu_552_p1 = tmp_23_fu_544_p4;
always @ (posedge ap_clk) begin
    v65_0_addr_1_reg_841[0] <= 1'b1;
    v65_0_addr_1_reg_841_pp0_iter2_reg[0] <= 1'b1;
    v65_0_addr_1_reg_841_pp0_iter3_reg[0] <= 1'b1;
    v65_1_addr_1_reg_846[0] <= 1'b1;
    v65_1_addr_1_reg_846_pp0_iter2_reg[0] <= 1'b1;
    v65_1_addr_1_reg_846_pp0_iter3_reg[0] <= 1'b1;
    v65_0_addr_2_reg_876[1] <= 1'b1;
    v65_0_addr_2_reg_876_pp0_iter2_reg[1] <= 1'b1;
    v65_0_addr_2_reg_876_pp0_iter3_reg[1] <= 1'b1;
    v65_1_addr_2_reg_881[1] <= 1'b1;
    v65_1_addr_2_reg_881_pp0_iter2_reg[1] <= 1'b1;
    v65_1_addr_2_reg_881_pp0_iter3_reg[1] <= 1'b1;
    v65_0_addr_3_reg_886[1:0] <= 2'b11;
    v65_0_addr_3_reg_886_pp0_iter2_reg[1:0] <= 2'b11;
    v65_0_addr_3_reg_886_pp0_iter3_reg[1:0] <= 2'b11;
    v65_0_addr_3_reg_886_pp0_iter4_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_896[1:0] <= 2'b11;
    v65_1_addr_3_reg_896_pp0_iter2_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_896_pp0_iter3_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_896_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 