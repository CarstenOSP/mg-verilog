module bicg_bicg_node1_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,lshr_ln,v137_0_address0,v137_0_ce0,v137_0_q0,v137_0_address1,v137_0_ce1,v137_0_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,cmp7,v17,grp_fu_602_p_din0,grp_fu_602_p_din1,grp_fu_602_p_opcode,grp_fu_602_p_dout0,grp_fu_602_p_ce,grp_fu_606_p_din0,grp_fu_606_p_din1,grp_fu_606_p_opcode,grp_fu_606_p_dout0,grp_fu_606_p_ce,grp_fu_610_p_din0,grp_fu_610_p_din1,grp_fu_610_p_dout0,grp_fu_610_p_ce,grp_fu_614_p_din0,grp_fu_614_p_din1,grp_fu_614_p_dout0,grp_fu_614_p_ce); 
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
input  [2:0] lshr_ln;
output  [8:0] v137_0_address0;
output   v137_0_ce0;
input  [31:0] v137_0_q0;
output  [8:0] v137_0_address1;
output   v137_0_ce1;
input  [31:0] v137_0_q1;
output  [4:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [31:0] v10_1_d0;
input  [31:0] v10_1_q0;
output  [4:0] v10_1_address1;
output   v10_1_ce1;
output   v10_1_we1;
output  [31:0] v10_1_d1;
input  [31:0] v10_1_q1;
output  [4:0] v10_0_address0;
output   v10_0_ce0;
output   v10_0_we0;
output  [31:0] v10_0_d0;
input  [31:0] v10_0_q0;
output  [4:0] v10_0_address1;
output   v10_0_ce1;
output   v10_0_we1;
output  [31:0] v10_0_d1;
input  [31:0] v10_0_q1;
input  [0:0] cmp7;
input  [31:0] v17;
output  [31:0] grp_fu_602_p_din0;
output  [31:0] grp_fu_602_p_din1;
output  [1:0] grp_fu_602_p_opcode;
input  [31:0] grp_fu_602_p_dout0;
output   grp_fu_602_p_ce;
output  [31:0] grp_fu_606_p_din0;
output  [31:0] grp_fu_606_p_din1;
output  [1:0] grp_fu_606_p_opcode;
input  [31:0] grp_fu_606_p_dout0;
output   grp_fu_606_p_ce;
output  [31:0] grp_fu_610_p_din0;
output  [31:0] grp_fu_610_p_din1;
input  [31:0] grp_fu_610_p_dout0;
output   grp_fu_610_p_ce;
output  [31:0] grp_fu_614_p_din0;
output  [31:0] grp_fu_614_p_din1;
input  [31:0] grp_fu_614_p_dout0;
output   grp_fu_614_p_ce;
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
reg   [0:0] tmp_23_reg_661;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_285;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_289;
reg   [31:0] reg_293;
reg   [31:0] reg_298;
reg   [6:0] v12_5_reg_654;
wire   [0:0] tmp_23_fu_311_p3;
wire   [4:0] lshr_ln1_fu_336_p4;
reg   [4:0] lshr_ln1_reg_670;
wire   [3:0] tmp_65_fu_372_p4;
reg   [3:0] tmp_65_reg_680;
reg   [2:0] tmp_71_reg_695;
reg   [0:0] tmp_24_reg_705;
wire   [31:0] v16_fu_425_p1;
wire   [31:0] v23_fu_430_p1;
wire   [31:0] v29_fu_464_p1;
wire   [31:0] v35_fu_469_p1;
reg   [4:0] v10_0_addr_reg_751;
reg   [4:0] v10_0_addr_reg_751_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_751_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_756;
reg   [4:0] v10_1_addr_reg_756_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_756_pp0_iter3_reg;
reg   [4:0] v10_0_addr_1_reg_761;
reg   [4:0] v10_0_addr_1_reg_761_pp0_iter2_reg;
reg   [4:0] v10_0_addr_1_reg_761_pp0_iter3_reg;
reg   [4:0] v10_1_addr_1_reg_766;
reg   [4:0] v10_1_addr_1_reg_766_pp0_iter2_reg;
reg   [4:0] v10_1_addr_1_reg_766_pp0_iter3_reg;
wire   [31:0] v41_fu_518_p1;
wire   [31:0] v47_fu_523_p1;
reg   [31:0] v14_reg_781;
reg   [31:0] v18_reg_786;
reg   [31:0] v24_reg_791;
reg   [4:0] v10_0_addr_2_reg_796;
reg   [4:0] v10_0_addr_2_reg_796_pp0_iter2_reg;
reg   [4:0] v10_0_addr_2_reg_796_pp0_iter3_reg;
reg   [4:0] v10_1_addr_2_reg_801;
reg   [4:0] v10_1_addr_2_reg_801_pp0_iter2_reg;
reg   [4:0] v10_1_addr_2_reg_801_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_806;
reg   [4:0] v10_0_addr_3_reg_806_pp0_iter2_reg;
reg   [4:0] v10_0_addr_3_reg_806_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_806_pp0_iter4_reg;
wire   [31:0] v53_fu_555_p1;
reg   [4:0] v10_1_addr_3_reg_816;
reg   [4:0] v10_1_addr_3_reg_816_pp0_iter2_reg;
reg   [4:0] v10_1_addr_3_reg_816_pp0_iter3_reg;
reg   [4:0] v10_1_addr_3_reg_816_pp0_iter4_reg;
wire   [31:0] v59_fu_560_p1;
reg   [31:0] v21_reg_826;
reg   [31:0] v27_reg_831;
reg   [31:0] v33_reg_836;
wire   [31:0] v15_fu_565_p3;
reg   [31:0] v30_reg_846;
reg   [31:0] v36_reg_851;
wire   [31:0] v22_fu_572_p3;
wire   [31:0] v28_fu_579_p3;
reg   [31:0] v28_reg_861;
wire   [31:0] v34_fu_585_p3;
reg   [31:0] v34_reg_866;
wire   [31:0] v40_fu_591_p3;
reg   [31:0] v40_reg_871;
wire   [31:0] v46_1_fu_598_p3;
reg   [31:0] v46_1_reg_876;
wire   [31:0] v52_fu_605_p3;
reg   [31:0] v52_reg_881;
wire   [31:0] v58_fu_612_p3;
reg   [31:0] v58_reg_886;
reg   [31:0] v42_reg_891;
reg   [31:0] v48_reg_896;
reg   [31:0] v54_reg_901;
reg   [31:0] v60_reg_906;
reg   [31:0] v31_reg_911;
reg   [31:0] v37_reg_916;
reg   [31:0] v55_reg_921;
reg   [31:0] v61_reg_926;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_331_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_356_p1;
wire   [63:0] zext_ln61_fu_390_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_404_p1;
wire   [63:0] zext_ln75_fu_443_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_459_p1;
wire   [63:0] zext_ln89_fu_482_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_495_p1;
wire   [63:0] zext_ln42_fu_500_p1;
wire   [63:0] zext_ln59_fu_512_p1;
wire   [63:0] zext_ln73_fu_536_p1;
wire   [63:0] zext_ln87_fu_549_p1;
reg   [6:0] v12_fu_92;
wire   [6:0] add_ln42_fu_361_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12_5;
reg    v137_0_ce1_local;
reg   [8:0] v137_0_address1_local;
reg    v137_0_ce0_local;
reg   [8:0] v137_0_address0_local;
reg    v10_0_ce1_local;
reg   [4:0] v10_0_address1_local;
reg    v10_0_ce0_local;
reg   [4:0] v10_0_address0_local;
reg    v10_0_we1_local;
reg    v10_0_we0_local;
reg   [31:0] v10_0_d0_local;
reg    v10_1_ce1_local;
reg   [4:0] v10_1_address1_local;
reg    v10_1_ce0_local;
reg   [4:0] v10_1_address0_local;
reg    v10_1_we1_local;
reg    v10_1_we0_local;
reg   [31:0] v10_1_d0_local;
reg   [31:0] grp_fu_269_p0;
reg   [31:0] grp_fu_269_p1;
reg   [31:0] grp_fu_273_p0;
reg   [31:0] grp_fu_273_p1;
reg   [31:0] grp_fu_277_p0;
reg   [31:0] grp_fu_281_p0;
wire   [5:0] trunc_ln42_fu_319_p1;
wire   [8:0] tmp_fu_323_p3;
wire   [8:0] tmp_64_fu_346_p4;
wire   [8:0] tmp_67_fu_381_p4;
wire   [8:0] tmp_70_fu_395_p4;
wire   [8:0] tmp_73_fu_435_p4;
wire   [8:0] tmp_s_fu_448_p6;
wire   [8:0] tmp_74_fu_474_p4;
wire   [8:0] tmp_75_fu_487_p4;
wire   [4:0] or_ln58_1_fu_505_p3;
wire   [4:0] or_ln72_1_fu_528_p4;
wire   [4:0] or_ln86_1_fu_542_p3;
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
#0 v12_fu_92 = 7'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_23_fu_311_p3 == 1'd0))) begin
            v12_fu_92 <= add_ln42_fu_361_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_fu_92 <= 7'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln1_reg_670 <= {{ap_sig_allocacmp_v12_5[5:1]}};
        tmp_23_reg_661 <= ap_sig_allocacmp_v12_5[32'd6];
        v10_0_addr_1_reg_761[4 : 1] <= zext_ln59_fu_512_p1[4 : 1];
        v10_0_addr_1_reg_761_pp0_iter2_reg[4 : 1] <= v10_0_addr_1_reg_761[4 : 1];
        v10_0_addr_1_reg_761_pp0_iter3_reg[4 : 1] <= v10_0_addr_1_reg_761_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_751 <= zext_ln42_fu_500_p1;
        v10_0_addr_reg_751_pp0_iter2_reg <= v10_0_addr_reg_751;
        v10_0_addr_reg_751_pp0_iter3_reg <= v10_0_addr_reg_751_pp0_iter2_reg;
        v10_1_addr_1_reg_766[4 : 1] <= zext_ln59_fu_512_p1[4 : 1];
        v10_1_addr_1_reg_766_pp0_iter2_reg[4 : 1] <= v10_1_addr_1_reg_766[4 : 1];
        v10_1_addr_1_reg_766_pp0_iter3_reg[4 : 1] <= v10_1_addr_1_reg_766_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_756 <= zext_ln42_fu_500_p1;
        v10_1_addr_reg_756_pp0_iter2_reg <= v10_1_addr_reg_756;
        v10_1_addr_reg_756_pp0_iter3_reg <= v10_1_addr_reg_756_pp0_iter2_reg;
        v12_5_reg_654 <= ap_sig_allocacmp_v12_5;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_285 <= v137_0_q1;
        reg_289 <= v137_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_293 <= grp_fu_602_p_dout0;
        reg_298 <= grp_fu_606_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_24_reg_705 <= v12_5_reg_654[32'd1];
        tmp_65_reg_680 <= {{v12_5_reg_654[5:2]}};
        tmp_71_reg_695 <= {{v12_5_reg_654[5:3]}};
        v10_0_addr_2_reg_796[0] <= zext_ln73_fu_536_p1[0];
v10_0_addr_2_reg_796[4 : 2] <= zext_ln73_fu_536_p1[4 : 2];
        v10_0_addr_2_reg_796_pp0_iter2_reg[0] <= v10_0_addr_2_reg_796[0];
v10_0_addr_2_reg_796_pp0_iter2_reg[4 : 2] <= v10_0_addr_2_reg_796[4 : 2];
        v10_0_addr_2_reg_796_pp0_iter3_reg[0] <= v10_0_addr_2_reg_796_pp0_iter2_reg[0];
v10_0_addr_2_reg_796_pp0_iter3_reg[4 : 2] <= v10_0_addr_2_reg_796_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_806[4 : 2] <= zext_ln87_fu_549_p1[4 : 2];
        v10_0_addr_3_reg_806_pp0_iter2_reg[4 : 2] <= v10_0_addr_3_reg_806[4 : 2];
        v10_0_addr_3_reg_806_pp0_iter3_reg[4 : 2] <= v10_0_addr_3_reg_806_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_806_pp0_iter4_reg[4 : 2] <= v10_0_addr_3_reg_806_pp0_iter3_reg[4 : 2];
        v10_1_addr_2_reg_801[0] <= zext_ln73_fu_536_p1[0];
v10_1_addr_2_reg_801[4 : 2] <= zext_ln73_fu_536_p1[4 : 2];
        v10_1_addr_2_reg_801_pp0_iter2_reg[0] <= v10_1_addr_2_reg_801[0];
v10_1_addr_2_reg_801_pp0_iter2_reg[4 : 2] <= v10_1_addr_2_reg_801[4 : 2];
        v10_1_addr_2_reg_801_pp0_iter3_reg[0] <= v10_1_addr_2_reg_801_pp0_iter2_reg[0];
v10_1_addr_2_reg_801_pp0_iter3_reg[4 : 2] <= v10_1_addr_2_reg_801_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_816[4 : 2] <= zext_ln87_fu_549_p1[4 : 2];
        v10_1_addr_3_reg_816_pp0_iter2_reg[4 : 2] <= v10_1_addr_3_reg_816[4 : 2];
        v10_1_addr_3_reg_816_pp0_iter3_reg[4 : 2] <= v10_1_addr_3_reg_816_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_816_pp0_iter4_reg[4 : 2] <= v10_1_addr_3_reg_816_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_781 <= v10_0_q1;
        v18_reg_786 <= grp_fu_610_p_dout0;
        v21_reg_826 <= v10_1_q1;
        v24_reg_791 <= grp_fu_614_p_dout0;
        v27_reg_831 <= v10_0_q0;
        v33_reg_836 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v28_reg_861 <= v28_fu_579_p3;
        v34_reg_866 <= v34_fu_585_p3;
        v40_reg_871 <= v40_fu_591_p3;
        v46_1_reg_876 <= v46_1_fu_598_p3;
        v52_reg_881 <= v52_fu_605_p3;
        v58_reg_886 <= v58_fu_612_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_846 <= grp_fu_610_p_dout0;
        v36_reg_851 <= grp_fu_614_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_911 <= grp_fu_602_p_dout0;
        v37_reg_916 <= grp_fu_606_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_891 <= grp_fu_610_p_dout0;
        v48_reg_896 <= grp_fu_614_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_901 <= grp_fu_610_p_dout0;
        v60_reg_906 <= grp_fu_614_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_921 <= grp_fu_602_p_dout0;
        v61_reg_926 <= grp_fu_606_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_23_reg_661 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v12_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v12_5 = v12_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_269_p0 = v52_reg_881;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_269_p0 = v40_reg_871;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_269_p0 = v28_reg_861;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_269_p0 = v15_fu_565_p3;
    end else begin
        grp_fu_269_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_269_p1 = v54_reg_901;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_269_p1 = v42_reg_891;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_269_p1 = v30_reg_846;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_269_p1 = v18_reg_786;
    end else begin
        grp_fu_269_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_273_p0 = v58_reg_886;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_273_p0 = v46_1_reg_876;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_273_p0 = v34_reg_866;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_273_p0 = v22_fu_572_p3;
    end else begin
        grp_fu_273_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_273_p1 = v60_reg_906;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_273_p1 = v48_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_273_p1 = v36_reg_851;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_273_p1 = v24_reg_791;
    end else begin
        grp_fu_273_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_277_p0 = v53_fu_555_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_277_p0 = v41_fu_518_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_277_p0 = v29_fu_464_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_277_p0 = v16_fu_425_p1;
    end else begin
        grp_fu_277_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_281_p0 = v59_fu_560_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_281_p0 = v47_fu_523_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_281_p0 = v35_fu_469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_281_p0 = v23_fu_430_p1;
    end else begin
        grp_fu_281_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_3_reg_806_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_1_reg_761_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_549_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_512_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_2_reg_796_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_751_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_536_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_500_p1;
    end else begin
        v10_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce0_local = 1'b1;
    end else begin
        v10_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce1_local = 1'b1;
    end else begin
        v10_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_d0_local = v55_reg_921;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_911;
    end else begin
        v10_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we0_local = 1'b1;
    end else begin
        v10_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we1_local = 1'b1;
    end else begin
        v10_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address0_local = v10_1_addr_3_reg_816_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_1_reg_766_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_549_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_512_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_2_reg_801_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_756_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_536_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_500_p1;
    end else begin
        v10_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce1_local = 1'b1;
    end else begin
        v10_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_d0_local = v61_reg_926;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_reg_916;
    end else begin
        v10_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we0_local = 1'b1;
    end else begin
        v10_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we1_local = 1'b1;
    end else begin
        v10_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_0_address0_local = zext_ln96_fu_495_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_0_address0_local = zext_ln82_fu_459_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_0_address0_local = zext_ln68_fu_404_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_0_address0_local = zext_ln54_fu_356_p1;
        end else begin
            v137_0_address0_local = 'bx;
        end
    end else begin
        v137_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_0_address1_local = zext_ln89_fu_482_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_0_address1_local = zext_ln75_fu_443_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_0_address1_local = zext_ln61_fu_390_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_0_address1_local = zext_ln46_fu_331_p1;
        end else begin
            v137_0_address1_local = 'bx;
        end
    end else begin
        v137_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_0_ce0_local = 1'b1;
    end else begin
        v137_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_0_ce1_local = 1'b1;
    end else begin
        v137_0_ce1_local = 1'b0;
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
assign add_ln42_fu_361_p2 = (ap_sig_allocacmp_v12_5 + 7'd8);
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
assign grp_fu_602_p_ce = 1'b1;
assign grp_fu_602_p_din0 = grp_fu_269_p0;
assign grp_fu_602_p_din1 = grp_fu_269_p1;
assign grp_fu_602_p_opcode = 2'd0;
assign grp_fu_606_p_ce = 1'b1;
assign grp_fu_606_p_din0 = grp_fu_273_p0;
assign grp_fu_606_p_din1 = grp_fu_273_p1;
assign grp_fu_606_p_opcode = 2'd0;
assign grp_fu_610_p_ce = 1'b1;
assign grp_fu_610_p_din0 = grp_fu_277_p0;
assign grp_fu_610_p_din1 = v17;
assign grp_fu_614_p_ce = 1'b1;
assign grp_fu_614_p_din0 = grp_fu_281_p0;
assign grp_fu_614_p_din1 = v17;
assign lshr_ln1_fu_336_p4 = {{ap_sig_allocacmp_v12_5[5:1]}};
assign or_ln58_1_fu_505_p3 = {{tmp_65_reg_680}, {1'd1}};
assign or_ln72_1_fu_528_p4 = {{{tmp_71_reg_695}, {1'd1}}, {tmp_24_reg_705}};
assign or_ln86_1_fu_542_p3 = {{tmp_71_reg_695}, {2'd3}};
assign tmp_23_fu_311_p3 = ap_sig_allocacmp_v12_5[32'd6];
assign tmp_64_fu_346_p4 = {{{lshr_ln1_fu_336_p4}, {1'd1}}, {lshr_ln}};
assign tmp_65_fu_372_p4 = {{v12_5_reg_654[5:2]}};
assign tmp_67_fu_381_p4 = {{{tmp_65_fu_372_p4}, {2'd2}}, {lshr_ln}};
assign tmp_70_fu_395_p4 = {{{tmp_65_fu_372_p4}, {2'd3}}, {lshr_ln}};
assign tmp_73_fu_435_p4 = {{{tmp_71_reg_695}, {3'd4}}, {lshr_ln}};
assign tmp_74_fu_474_p4 = {{{tmp_71_reg_695}, {3'd6}}, {lshr_ln}};
assign tmp_75_fu_487_p4 = {{{tmp_71_reg_695}, {3'd7}}, {lshr_ln}};
assign tmp_fu_323_p3 = {{trunc_ln42_fu_319_p1}, {lshr_ln}};
assign tmp_s_fu_448_p6 = {{{{{tmp_71_reg_695}, {1'd1}}, {tmp_24_reg_705}}, {1'd1}}, {lshr_ln}};
assign trunc_ln42_fu_319_p1 = ap_sig_allocacmp_v12_5[5:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_293;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_298;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_0_address0 = v137_0_address0_local;
assign v137_0_address1 = v137_0_address1_local;
assign v137_0_ce0 = v137_0_ce0_local;
assign v137_0_ce1 = v137_0_ce1_local;
assign v15_fu_565_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v14_reg_781);
assign v16_fu_425_p1 = reg_285;
assign v22_fu_572_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v21_reg_826);
assign v23_fu_430_p1 = reg_289;
assign v28_fu_579_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v27_reg_831);
assign v29_fu_464_p1 = reg_285;
assign v34_fu_585_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v33_reg_836);
assign v35_fu_469_p1 = reg_289;
assign v40_fu_591_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v10_0_q1);
assign v41_fu_518_p1 = reg_285;
assign v46_1_fu_598_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v10_1_q1);
assign v47_fu_523_p1 = reg_289;
assign v52_fu_605_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v10_0_q0);
assign v53_fu_555_p1 = reg_285;
assign v58_fu_612_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v10_1_q0);
assign v59_fu_560_p1 = reg_289;
assign zext_ln42_fu_500_p1 = lshr_ln1_reg_670;
assign zext_ln46_fu_331_p1 = tmp_fu_323_p3;
assign zext_ln54_fu_356_p1 = tmp_64_fu_346_p4;
assign zext_ln59_fu_512_p1 = or_ln58_1_fu_505_p3;
assign zext_ln61_fu_390_p1 = tmp_67_fu_381_p4;
assign zext_ln68_fu_404_p1 = tmp_70_fu_395_p4;
assign zext_ln73_fu_536_p1 = or_ln72_1_fu_528_p4;
assign zext_ln75_fu_443_p1 = tmp_73_fu_435_p4;
assign zext_ln82_fu_459_p1 = tmp_s_fu_448_p6;
assign zext_ln87_fu_549_p1 = or_ln86_1_fu_542_p3;
assign zext_ln89_fu_482_p1 = tmp_74_fu_474_p4;
assign zext_ln96_fu_495_p1 = tmp_75_fu_487_p4;
always @ (posedge ap_clk) begin
    v10_0_addr_1_reg_761[0] <= 1'b1;
    v10_0_addr_1_reg_761_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_1_reg_761_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_1_reg_766[0] <= 1'b1;
    v10_1_addr_1_reg_766_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_1_reg_766_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_2_reg_796[1] <= 1'b1;
    v10_0_addr_2_reg_796_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_2_reg_796_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_2_reg_801[1] <= 1'b1;
    v10_1_addr_2_reg_801_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_2_reg_801_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_3_reg_806[1:0] <= 2'b11;
    v10_0_addr_3_reg_806_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_806_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_806_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_816[1:0] <= 2'b11;
    v10_1_addr_3_reg_816_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_816_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_816_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 