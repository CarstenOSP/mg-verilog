
module bicg_bicg_node1_Pipeline_label_28 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,lshr_ln,v137_7_address0,v137_7_ce0,v137_7_q0,v137_7_address1,v137_7_ce1,v137_7_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,v17_7,grp_fu_602_p_din0,grp_fu_602_p_din1,grp_fu_602_p_opcode,grp_fu_602_p_dout0,grp_fu_602_p_ce,grp_fu_606_p_din0,grp_fu_606_p_din1,grp_fu_606_p_opcode,grp_fu_606_p_dout0,grp_fu_606_p_ce,grp_fu_610_p_din0,grp_fu_610_p_din1,grp_fu_610_p_dout0,grp_fu_610_p_ce,grp_fu_614_p_din0,grp_fu_614_p_din1,grp_fu_614_p_dout0,grp_fu_614_p_ce);  
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
output  [8:0] v137_7_address0;
output   v137_7_ce0;
input  [31:0] v137_7_q0;
output  [8:0] v137_7_address1;
output   v137_7_ce1;
input  [31:0] v137_7_q1;
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
input  [31:0] v17_7;
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
reg   [0:0] tmp_reg_583;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_273;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_277;
reg   [31:0] reg_281;
reg   [31:0] reg_286;
reg   [6:0] v12_1_reg_576;
wire   [0:0] tmp_fu_299_p3;
wire   [4:0] lshr_ln42_7_fu_324_p4;
reg   [4:0] lshr_ln42_7_reg_592;
wire   [3:0] tmp_11_fu_360_p4;
reg   [3:0] tmp_11_reg_602;
reg   [2:0] tmp_14_reg_617;
reg   [0:0] tmp_16_reg_627;
wire   [31:0] v16_fu_413_p1;
wire   [31:0] v23_fu_418_p1;
wire   [31:0] v29_fu_452_p1;
wire   [31:0] v35_fu_457_p1;
reg   [4:0] v10_0_addr_reg_673;
reg   [4:0] v10_0_addr_reg_673_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_673_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_678;
reg   [4:0] v10_1_addr_reg_678_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_678_pp0_iter3_reg;
reg   [4:0] v10_0_addr_1_reg_683;
reg   [4:0] v10_0_addr_1_reg_683_pp0_iter2_reg;
reg   [4:0] v10_0_addr_1_reg_683_pp0_iter3_reg;
reg   [4:0] v10_1_addr_1_reg_688;
reg   [4:0] v10_1_addr_1_reg_688_pp0_iter2_reg;
reg   [4:0] v10_1_addr_1_reg_688_pp0_iter3_reg;
wire   [31:0] v41_fu_506_p1;
wire   [31:0] v47_fu_511_p1;
reg   [31:0] v14_reg_703;
reg   [31:0] v18_reg_708;
reg   [31:0] v24_reg_713;
reg   [4:0] v10_0_addr_2_reg_718;
reg   [4:0] v10_0_addr_2_reg_718_pp0_iter2_reg;
reg   [4:0] v10_0_addr_2_reg_718_pp0_iter3_reg;
reg   [4:0] v10_1_addr_2_reg_723;
reg   [4:0] v10_1_addr_2_reg_723_pp0_iter2_reg;
reg   [4:0] v10_1_addr_2_reg_723_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_728;
reg   [4:0] v10_0_addr_3_reg_728_pp0_iter2_reg;
reg   [4:0] v10_0_addr_3_reg_728_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_728_pp0_iter4_reg;
wire   [31:0] v53_fu_543_p1;
reg   [4:0] v10_1_addr_3_reg_738;
reg   [4:0] v10_1_addr_3_reg_738_pp0_iter2_reg;
reg   [4:0] v10_1_addr_3_reg_738_pp0_iter3_reg;
reg   [4:0] v10_1_addr_3_reg_738_pp0_iter4_reg;
wire   [31:0] v59_fu_548_p1;
reg   [31:0] v21_reg_748;
reg   [31:0] v27_reg_753;
reg   [31:0] v33_reg_758;
reg   [31:0] v30_reg_763;
reg   [31:0] v36_reg_768;
reg   [31:0] v39_reg_773;
reg   [31:0] v45_reg_778;
reg   [31:0] v51_reg_783;
reg   [31:0] v57_reg_788;
reg   [31:0] v42_reg_793;
reg   [31:0] v48_reg_798;
reg   [31:0] v54_reg_803;
reg   [31:0] v60_reg_808;
reg   [31:0] v31_reg_813;
reg   [31:0] v37_reg_818;
reg   [31:0] v55_reg_823;
reg   [31:0] v61_reg_828;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_319_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_344_p1;
wire   [63:0] zext_ln61_fu_378_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_392_p1;
wire   [63:0] zext_ln75_fu_431_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_447_p1;
wire   [63:0] zext_ln89_fu_470_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_483_p1;
wire   [63:0] zext_ln42_fu_488_p1;
wire   [63:0] zext_ln59_fu_500_p1;
wire   [63:0] zext_ln73_fu_524_p1;
wire   [63:0] zext_ln87_fu_537_p1;
reg   [6:0] v12_fu_86;
wire   [6:0] add_ln42_fu_349_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12_1;
reg    v137_7_ce1_local;
reg   [8:0] v137_7_address1_local;
reg    v137_7_ce0_local;
reg   [8:0] v137_7_address0_local;
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
reg   [31:0] grp_fu_257_p0;
reg   [31:0] grp_fu_257_p1;
reg   [31:0] grp_fu_261_p0;
reg   [31:0] grp_fu_261_p1;
reg   [31:0] grp_fu_265_p0;
reg   [31:0] grp_fu_269_p0;
wire   [5:0] trunc_ln42_fu_307_p1;
wire   [8:0] tmp_s_fu_311_p3;
wire   [8:0] tmp_10_fu_334_p4;
wire   [8:0] tmp_12_fu_369_p4;
wire   [8:0] tmp_13_fu_383_p4;
wire   [8:0] tmp_15_fu_423_p4;
wire   [8:0] tmp_17_fu_436_p6;
wire   [8:0] tmp_18_fu_462_p4;
wire   [8:0] tmp_19_fu_475_p4;
wire   [4:0] or_ln59_2_fu_493_p3;
wire   [4:0] or_ln73_2_fu_516_p4;
wire   [4:0] or_ln87_2_fu_530_p3;
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
#0 v12_fu_86 = 7'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_299_p3 == 1'd0))) begin
            v12_fu_86 <= add_ln42_fu_349_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_fu_86 <= 7'd0;
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
        lshr_ln42_7_reg_592 <= {{ap_sig_allocacmp_v12_1[5:1]}};
        tmp_reg_583 <= ap_sig_allocacmp_v12_1[32'd6];
        v10_0_addr_1_reg_683[4 : 1] <= zext_ln59_fu_500_p1[4 : 1];
        v10_0_addr_1_reg_683_pp0_iter2_reg[4 : 1] <= v10_0_addr_1_reg_683[4 : 1];
        v10_0_addr_1_reg_683_pp0_iter3_reg[4 : 1] <= v10_0_addr_1_reg_683_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_673 <= zext_ln42_fu_488_p1;
        v10_0_addr_reg_673_pp0_iter2_reg <= v10_0_addr_reg_673;
        v10_0_addr_reg_673_pp0_iter3_reg <= v10_0_addr_reg_673_pp0_iter2_reg;
        v10_1_addr_1_reg_688[4 : 1] <= zext_ln59_fu_500_p1[4 : 1];
        v10_1_addr_1_reg_688_pp0_iter2_reg[4 : 1] <= v10_1_addr_1_reg_688[4 : 1];
        v10_1_addr_1_reg_688_pp0_iter3_reg[4 : 1] <= v10_1_addr_1_reg_688_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_678 <= zext_ln42_fu_488_p1;
        v10_1_addr_reg_678_pp0_iter2_reg <= v10_1_addr_reg_678;
        v10_1_addr_reg_678_pp0_iter3_reg <= v10_1_addr_reg_678_pp0_iter2_reg;
        v12_1_reg_576 <= ap_sig_allocacmp_v12_1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_273 <= v137_7_q1;
        reg_277 <= v137_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_281 <= grp_fu_602_p_dout0;
        reg_286 <= grp_fu_606_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_11_reg_602 <= {{v12_1_reg_576[5:2]}};
        tmp_14_reg_617 <= {{v12_1_reg_576[5:3]}};
        tmp_16_reg_627 <= v12_1_reg_576[32'd1];
        v10_0_addr_2_reg_718[0] <= zext_ln73_fu_524_p1[0];
v10_0_addr_2_reg_718[4 : 2] <= zext_ln73_fu_524_p1[4 : 2];
        v10_0_addr_2_reg_718_pp0_iter2_reg[0] <= v10_0_addr_2_reg_718[0];
v10_0_addr_2_reg_718_pp0_iter2_reg[4 : 2] <= v10_0_addr_2_reg_718[4 : 2];
        v10_0_addr_2_reg_718_pp0_iter3_reg[0] <= v10_0_addr_2_reg_718_pp0_iter2_reg[0];
v10_0_addr_2_reg_718_pp0_iter3_reg[4 : 2] <= v10_0_addr_2_reg_718_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_728[4 : 2] <= zext_ln87_fu_537_p1[4 : 2];
        v10_0_addr_3_reg_728_pp0_iter2_reg[4 : 2] <= v10_0_addr_3_reg_728[4 : 2];
        v10_0_addr_3_reg_728_pp0_iter3_reg[4 : 2] <= v10_0_addr_3_reg_728_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_728_pp0_iter4_reg[4 : 2] <= v10_0_addr_3_reg_728_pp0_iter3_reg[4 : 2];
        v10_1_addr_2_reg_723[0] <= zext_ln73_fu_524_p1[0];
v10_1_addr_2_reg_723[4 : 2] <= zext_ln73_fu_524_p1[4 : 2];
        v10_1_addr_2_reg_723_pp0_iter2_reg[0] <= v10_1_addr_2_reg_723[0];
v10_1_addr_2_reg_723_pp0_iter2_reg[4 : 2] <= v10_1_addr_2_reg_723[4 : 2];
        v10_1_addr_2_reg_723_pp0_iter3_reg[0] <= v10_1_addr_2_reg_723_pp0_iter2_reg[0];
v10_1_addr_2_reg_723_pp0_iter3_reg[4 : 2] <= v10_1_addr_2_reg_723_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_738[4 : 2] <= zext_ln87_fu_537_p1[4 : 2];
        v10_1_addr_3_reg_738_pp0_iter2_reg[4 : 2] <= v10_1_addr_3_reg_738[4 : 2];
        v10_1_addr_3_reg_738_pp0_iter3_reg[4 : 2] <= v10_1_addr_3_reg_738_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_738_pp0_iter4_reg[4 : 2] <= v10_1_addr_3_reg_738_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_703 <= v10_0_q1;
        v18_reg_708 <= grp_fu_610_p_dout0;
        v21_reg_748 <= v10_1_q1;
        v24_reg_713 <= grp_fu_614_p_dout0;
        v27_reg_753 <= v10_0_q0;
        v33_reg_758 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_763 <= grp_fu_610_p_dout0;
        v36_reg_768 <= grp_fu_614_p_dout0;
        v39_reg_773 <= v10_0_q1;
        v45_reg_778 <= v10_1_q1;
        v51_reg_783 <= v10_0_q0;
        v57_reg_788 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_813 <= grp_fu_602_p_dout0;
        v37_reg_818 <= grp_fu_606_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_793 <= grp_fu_610_p_dout0;
        v48_reg_798 <= grp_fu_614_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_803 <= grp_fu_610_p_dout0;
        v60_reg_808 <= grp_fu_614_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_823 <= grp_fu_602_p_dout0;
        v61_reg_828 <= grp_fu_606_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_583 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v12_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v12_1 = v12_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_257_p0 = v51_reg_783;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_257_p0 = v39_reg_773;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_257_p0 = v27_reg_753;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_257_p0 = v14_reg_703;
    end else begin
        grp_fu_257_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_257_p1 = v54_reg_803;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_257_p1 = v42_reg_793;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_257_p1 = v30_reg_763;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_257_p1 = v18_reg_708;
    end else begin
        grp_fu_257_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_261_p0 = v57_reg_788;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_261_p0 = v45_reg_778;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_261_p0 = v33_reg_758;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_261_p0 = v21_reg_748;
    end else begin
        grp_fu_261_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_261_p1 = v60_reg_808;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_261_p1 = v48_reg_798;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_261_p1 = v36_reg_768;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_261_p1 = v24_reg_713;
    end else begin
        grp_fu_261_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_265_p0 = v53_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_265_p0 = v41_fu_506_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_265_p0 = v29_fu_452_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_265_p0 = v16_fu_413_p1;
    end else begin
        grp_fu_265_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_269_p0 = v59_fu_548_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_269_p0 = v47_fu_511_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_269_p0 = v35_fu_457_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_269_p0 = v23_fu_418_p1;
    end else begin
        grp_fu_269_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_3_reg_728_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_1_reg_683_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_537_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_500_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_2_reg_718_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_673_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_488_p1;
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
        v10_0_d0_local = v55_reg_823;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_813;
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
        v10_1_address0_local = v10_1_addr_3_reg_738_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_1_reg_688_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_537_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_500_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_2_reg_723_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_678_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_488_p1;
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
        v10_1_d0_local = v61_reg_828;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_reg_818;
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
            v137_7_address0_local = zext_ln96_fu_483_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_7_address0_local = zext_ln82_fu_447_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_7_address0_local = zext_ln68_fu_392_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_7_address0_local = zext_ln54_fu_344_p1;
        end else begin
            v137_7_address0_local = 'bx;
        end
    end else begin
        v137_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_7_address1_local = zext_ln89_fu_470_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_7_address1_local = zext_ln75_fu_431_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_7_address1_local = zext_ln61_fu_378_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_7_address1_local = zext_ln46_fu_319_p1;
        end else begin
            v137_7_address1_local = 'bx;
        end
    end else begin
        v137_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_7_ce0_local = 1'b1;
    end else begin
        v137_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_7_ce1_local = 1'b1;
    end else begin
        v137_7_ce1_local = 1'b0;
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
assign add_ln42_fu_349_p2 = (ap_sig_allocacmp_v12_1 + 7'd8);
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
assign grp_fu_602_p_din0 = grp_fu_257_p0;
assign grp_fu_602_p_din1 = grp_fu_257_p1;
assign grp_fu_602_p_opcode = 2'd0;
assign grp_fu_606_p_ce = 1'b1;
assign grp_fu_606_p_din0 = grp_fu_261_p0;
assign grp_fu_606_p_din1 = grp_fu_261_p1;
assign grp_fu_606_p_opcode = 2'd0;
assign grp_fu_610_p_ce = 1'b1;
assign grp_fu_610_p_din0 = grp_fu_265_p0;
assign grp_fu_610_p_din1 = v17_7;
assign grp_fu_614_p_ce = 1'b1;
assign grp_fu_614_p_din0 = grp_fu_269_p0;
assign grp_fu_614_p_din1 = v17_7;
assign lshr_ln42_7_fu_324_p4 = {{ap_sig_allocacmp_v12_1[5:1]}};
assign or_ln59_2_fu_493_p3 = {{tmp_11_reg_602}, {1'd1}};
assign or_ln73_2_fu_516_p4 = {{{tmp_14_reg_617}, {1'd1}}, {tmp_16_reg_627}};
assign or_ln87_2_fu_530_p3 = {{tmp_14_reg_617}, {2'd3}};
assign tmp_10_fu_334_p4 = {{{lshr_ln42_7_fu_324_p4}, {1'd1}}, {lshr_ln}};
assign tmp_11_fu_360_p4 = {{v12_1_reg_576[5:2]}};
assign tmp_12_fu_369_p4 = {{{tmp_11_fu_360_p4}, {2'd2}}, {lshr_ln}};
assign tmp_13_fu_383_p4 = {{{tmp_11_fu_360_p4}, {2'd3}}, {lshr_ln}};
assign tmp_15_fu_423_p4 = {{{tmp_14_reg_617}, {3'd4}}, {lshr_ln}};
assign tmp_17_fu_436_p6 = {{{{{tmp_14_reg_617}, {1'd1}}, {tmp_16_reg_627}}, {1'd1}}, {lshr_ln}};
assign tmp_18_fu_462_p4 = {{{tmp_14_reg_617}, {3'd6}}, {lshr_ln}};
assign tmp_19_fu_475_p4 = {{{tmp_14_reg_617}, {3'd7}}, {lshr_ln}};
assign tmp_fu_299_p3 = ap_sig_allocacmp_v12_1[32'd6];
assign tmp_s_fu_311_p3 = {{trunc_ln42_fu_307_p1}, {lshr_ln}};
assign trunc_ln42_fu_307_p1 = ap_sig_allocacmp_v12_1[5:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_281;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_286;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_7_address0 = v137_7_address0_local;
assign v137_7_address1 = v137_7_address1_local;
assign v137_7_ce0 = v137_7_ce0_local;
assign v137_7_ce1 = v137_7_ce1_local;
assign v16_fu_413_p1 = reg_273;
assign v23_fu_418_p1 = reg_277;
assign v29_fu_452_p1 = reg_273;
assign v35_fu_457_p1 = reg_277;
assign v41_fu_506_p1 = reg_273;
assign v47_fu_511_p1 = reg_277;
assign v53_fu_543_p1 = reg_273;
assign v59_fu_548_p1 = reg_277;
assign zext_ln42_fu_488_p1 = lshr_ln42_7_reg_592;
assign zext_ln46_fu_319_p1 = tmp_s_fu_311_p3;
assign zext_ln54_fu_344_p1 = tmp_10_fu_334_p4;
assign zext_ln59_fu_500_p1 = or_ln59_2_fu_493_p3;
assign zext_ln61_fu_378_p1 = tmp_12_fu_369_p4;
assign zext_ln68_fu_392_p1 = tmp_13_fu_383_p4;
assign zext_ln73_fu_524_p1 = or_ln73_2_fu_516_p4;
assign zext_ln75_fu_431_p1 = tmp_15_fu_423_p4;
assign zext_ln82_fu_447_p1 = tmp_17_fu_436_p6;
assign zext_ln87_fu_537_p1 = or_ln87_2_fu_530_p3;
assign zext_ln89_fu_470_p1 = tmp_18_fu_462_p4;
assign zext_ln96_fu_483_p1 = tmp_19_fu_475_p4;
always @ (posedge ap_clk) begin
    v10_0_addr_1_reg_683[0] <= 1'b1;
    v10_0_addr_1_reg_683_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_1_reg_683_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_1_reg_688[0] <= 1'b1;
    v10_1_addr_1_reg_688_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_1_reg_688_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_2_reg_718[1] <= 1'b1;
    v10_0_addr_2_reg_718_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_2_reg_718_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_2_reg_723[1] <= 1'b1;
    v10_1_addr_2_reg_723_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_2_reg_723_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_3_reg_728[1:0] <= 2'b11;
    v10_0_addr_3_reg_728_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_728_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_728_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_738[1:0] <= 2'b11;
    v10_1_addr_3_reg_738_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_738_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_738_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
