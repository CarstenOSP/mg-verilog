
module atax_atax_node1_Pipeline_label_37 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp_105,empty,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v65_5,grp_fu_588_p_din0,grp_fu_588_p_din1,grp_fu_588_p_opcode,grp_fu_588_p_dout0,grp_fu_588_p_ce,grp_fu_592_p_din0,grp_fu_592_p_din1,grp_fu_592_p_opcode,grp_fu_592_p_dout0,grp_fu_592_p_ce,grp_fu_596_p_din0,grp_fu_596_p_din1,grp_fu_596_p_dout0,grp_fu_596_p_ce,grp_fu_600_p_din0,grp_fu_600_p_din1,grp_fu_600_p_dout0,grp_fu_600_p_ce);  
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
input  [2:0] tmp_105;
input  [0:0] empty;
output  [11:0] v114_address0;
output   v114_ce0;
input  [31:0] v114_q0;
output  [11:0] v114_address1;
output   v114_ce1;
input  [31:0] v114_q1;
output  [4:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [4:0] v58_1_address1;
output   v58_1_ce1;
output   v58_1_we1;
output  [31:0] v58_1_d1;
input  [31:0] v58_1_q1;
output  [4:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [4:0] v58_0_address1;
output   v58_0_ce1;
output   v58_0_we1;
output  [31:0] v58_0_d1;
input  [31:0] v58_0_q1;
input  [31:0] v65_5;
output  [31:0] grp_fu_588_p_din0;
output  [31:0] grp_fu_588_p_din1;
output  [1:0] grp_fu_588_p_opcode;
input  [31:0] grp_fu_588_p_dout0;
output   grp_fu_588_p_ce;
output  [31:0] grp_fu_592_p_din0;
output  [31:0] grp_fu_592_p_din1;
output  [1:0] grp_fu_592_p_opcode;
input  [31:0] grp_fu_592_p_dout0;
output   grp_fu_592_p_ce;
output  [31:0] grp_fu_596_p_din0;
output  [31:0] grp_fu_596_p_din1;
input  [31:0] grp_fu_596_p_dout0;
output   grp_fu_596_p_ce;
output  [31:0] grp_fu_600_p_din0;
output  [31:0] grp_fu_600_p_din1;
input  [31:0] grp_fu_600_p_dout0;
output   grp_fu_600_p_ce;
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
reg   [0:0] tmp_9_reg_645;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_283;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_287;
reg   [31:0] reg_291;
reg   [31:0] reg_296;
reg   [6:0] v60_3_reg_638;
wire   [0:0] tmp_9_fu_309_p3;
wire   [4:0] lshr_ln98_6_fu_340_p4;
reg   [4:0] lshr_ln98_6_reg_654;
wire   [3:0] tmp_21_fu_382_p4;
reg   [3:0] tmp_21_reg_664;
reg   [2:0] tmp_24_reg_679;
reg   [0:0] tmp_10_reg_689;
wire   [31:0] v64_fu_445_p1;
wire   [31:0] v71_fu_450_p1;
wire   [31:0] v77_fu_494_p1;
wire   [31:0] v83_fu_499_p1;
reg   [4:0] v58_0_addr_reg_735;
reg   [4:0] v58_0_addr_reg_735_pp0_iter2_reg;
reg   [4:0] v58_0_addr_reg_735_pp0_iter3_reg;
reg   [4:0] v58_1_addr_reg_740;
reg   [4:0] v58_1_addr_reg_740_pp0_iter2_reg;
reg   [4:0] v58_1_addr_reg_740_pp0_iter3_reg;
reg   [4:0] v58_0_addr_7_reg_745;
reg   [4:0] v58_0_addr_7_reg_745_pp0_iter2_reg;
reg   [4:0] v58_0_addr_7_reg_745_pp0_iter3_reg;
reg   [4:0] v58_1_addr_7_reg_750;
reg   [4:0] v58_1_addr_7_reg_750_pp0_iter2_reg;
reg   [4:0] v58_1_addr_7_reg_750_pp0_iter3_reg;
wire   [31:0] v89_fu_558_p1;
wire   [31:0] v95_fu_563_p1;
reg   [31:0] v62_reg_765;
reg   [31:0] v66_reg_770;
reg   [31:0] v72_reg_775;
reg   [4:0] v58_0_addr_8_reg_780;
reg   [4:0] v58_0_addr_8_reg_780_pp0_iter2_reg;
reg   [4:0] v58_0_addr_8_reg_780_pp0_iter3_reg;
reg   [4:0] v58_1_addr_8_reg_785;
reg   [4:0] v58_1_addr_8_reg_785_pp0_iter2_reg;
reg   [4:0] v58_1_addr_8_reg_785_pp0_iter3_reg;
reg   [4:0] v58_0_addr_9_reg_790;
reg   [4:0] v58_0_addr_9_reg_790_pp0_iter2_reg;
reg   [4:0] v58_0_addr_9_reg_790_pp0_iter3_reg;
reg   [4:0] v58_0_addr_9_reg_790_pp0_iter4_reg;
wire   [31:0] v101_fu_595_p1;
reg   [4:0] v58_1_addr_9_reg_800;
reg   [4:0] v58_1_addr_9_reg_800_pp0_iter2_reg;
reg   [4:0] v58_1_addr_9_reg_800_pp0_iter3_reg;
reg   [4:0] v58_1_addr_9_reg_800_pp0_iter4_reg;
wire   [31:0] v107_fu_600_p1;
reg   [31:0] v69_reg_810;
reg   [31:0] v75_reg_815;
reg   [31:0] v81_reg_820;
reg   [31:0] v78_reg_825;
reg   [31:0] v84_reg_830;
reg   [31:0] v87_reg_835;
reg   [31:0] v93_reg_840;
reg   [31:0] v99_reg_845;
reg   [31:0] v105_reg_850;
reg   [31:0] v90_reg_855;
reg   [31:0] v96_reg_860;
reg   [31:0] v102_reg_865;
reg   [31:0] v108_reg_870;
reg   [31:0] v79_reg_875;
reg   [31:0] v85_reg_880;
reg   [31:0] v103_reg_885;
reg   [31:0] v109_reg_890;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln102_fu_335_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_366_p1;
wire   [63:0] zext_ln117_fu_405_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln124_fu_424_p1;
wire   [63:0] zext_ln131_fu_468_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln138_fu_489_p1;
wire   [63:0] zext_ln145_fu_517_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln152_fu_535_p1;
wire   [63:0] zext_ln98_fu_540_p1;
wire   [63:0] zext_ln115_fu_552_p1;
wire   [63:0] zext_ln129_fu_576_p1;
wire   [63:0] zext_ln143_fu_589_p1;
reg   [6:0] v60_fu_90;
wire   [6:0] add_ln98_fu_371_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_3;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v58_0_ce1_local;
reg   [4:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [4:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg   [31:0] v58_0_d0_local;
reg    v58_1_ce1_local;
reg   [4:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [4:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
reg   [31:0] v58_1_d0_local;
reg   [31:0] grp_fu_267_p0;
reg   [31:0] grp_fu_267_p1;
reg   [31:0] grp_fu_271_p0;
reg   [31:0] grp_fu_271_p1;
reg   [31:0] grp_fu_275_p0;
reg   [31:0] grp_fu_279_p0;
wire   [5:0] trunc_ln98_fu_317_p1;
wire   [11:0] tmp_s_fu_321_p6;
wire   [11:0] tmp_20_fu_350_p7;
wire   [11:0] tmp_22_fu_391_p7;
wire   [11:0] tmp_23_fu_410_p7;
wire   [11:0] tmp_25_fu_455_p7;
wire   [11:0] tmp_26_fu_473_p9;
wire   [11:0] tmp_27_fu_504_p7;
wire   [11:0] tmp_28_fu_522_p7;
wire   [4:0] or_ln115_9_fu_545_p3;
wire   [4:0] or_ln129_9_fu_568_p4;
wire   [4:0] or_ln143_9_fu_582_p3;
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
#0 v60_fu_90 = 7'd0;
#0 ap_done_reg = 1'b0;
end
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_9_fu_309_p3 == 1'd0))) begin
            v60_fu_90 <= add_ln98_fu_371_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_fu_90 <= 7'd0;
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
        lshr_ln98_6_reg_654 <= {{ap_sig_allocacmp_v60_3[5:1]}};
        tmp_9_reg_645 <= ap_sig_allocacmp_v60_3[32'd6];
        v58_0_addr_7_reg_745[4 : 1] <= zext_ln115_fu_552_p1[4 : 1];
        v58_0_addr_7_reg_745_pp0_iter2_reg[4 : 1] <= v58_0_addr_7_reg_745[4 : 1];
        v58_0_addr_7_reg_745_pp0_iter3_reg[4 : 1] <= v58_0_addr_7_reg_745_pp0_iter2_reg[4 : 1];
        v58_0_addr_reg_735 <= zext_ln98_fu_540_p1;
        v58_0_addr_reg_735_pp0_iter2_reg <= v58_0_addr_reg_735;
        v58_0_addr_reg_735_pp0_iter3_reg <= v58_0_addr_reg_735_pp0_iter2_reg;
        v58_1_addr_7_reg_750[4 : 1] <= zext_ln115_fu_552_p1[4 : 1];
        v58_1_addr_7_reg_750_pp0_iter2_reg[4 : 1] <= v58_1_addr_7_reg_750[4 : 1];
        v58_1_addr_7_reg_750_pp0_iter3_reg[4 : 1] <= v58_1_addr_7_reg_750_pp0_iter2_reg[4 : 1];
        v58_1_addr_reg_740 <= zext_ln98_fu_540_p1;
        v58_1_addr_reg_740_pp0_iter2_reg <= v58_1_addr_reg_740;
        v58_1_addr_reg_740_pp0_iter3_reg <= v58_1_addr_reg_740_pp0_iter2_reg;
        v60_3_reg_638 <= ap_sig_allocacmp_v60_3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_283 <= v114_q1;
        reg_287 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_291 <= grp_fu_588_p_dout0;
        reg_296 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_10_reg_689 <= v60_3_reg_638[32'd1];
        tmp_21_reg_664 <= {{v60_3_reg_638[5:2]}};
        tmp_24_reg_679 <= {{v60_3_reg_638[5:3]}};
        v58_0_addr_8_reg_780[0] <= zext_ln129_fu_576_p1[0];
v58_0_addr_8_reg_780[4 : 2] <= zext_ln129_fu_576_p1[4 : 2];
        v58_0_addr_8_reg_780_pp0_iter2_reg[0] <= v58_0_addr_8_reg_780[0];
v58_0_addr_8_reg_780_pp0_iter2_reg[4 : 2] <= v58_0_addr_8_reg_780[4 : 2];
        v58_0_addr_8_reg_780_pp0_iter3_reg[0] <= v58_0_addr_8_reg_780_pp0_iter2_reg[0];
v58_0_addr_8_reg_780_pp0_iter3_reg[4 : 2] <= v58_0_addr_8_reg_780_pp0_iter2_reg[4 : 2];
        v58_0_addr_9_reg_790[4 : 2] <= zext_ln143_fu_589_p1[4 : 2];
        v58_0_addr_9_reg_790_pp0_iter2_reg[4 : 2] <= v58_0_addr_9_reg_790[4 : 2];
        v58_0_addr_9_reg_790_pp0_iter3_reg[4 : 2] <= v58_0_addr_9_reg_790_pp0_iter2_reg[4 : 2];
        v58_0_addr_9_reg_790_pp0_iter4_reg[4 : 2] <= v58_0_addr_9_reg_790_pp0_iter3_reg[4 : 2];
        v58_1_addr_8_reg_785[0] <= zext_ln129_fu_576_p1[0];
v58_1_addr_8_reg_785[4 : 2] <= zext_ln129_fu_576_p1[4 : 2];
        v58_1_addr_8_reg_785_pp0_iter2_reg[0] <= v58_1_addr_8_reg_785[0];
v58_1_addr_8_reg_785_pp0_iter2_reg[4 : 2] <= v58_1_addr_8_reg_785[4 : 2];
        v58_1_addr_8_reg_785_pp0_iter3_reg[0] <= v58_1_addr_8_reg_785_pp0_iter2_reg[0];
v58_1_addr_8_reg_785_pp0_iter3_reg[4 : 2] <= v58_1_addr_8_reg_785_pp0_iter2_reg[4 : 2];
        v58_1_addr_9_reg_800[4 : 2] <= zext_ln143_fu_589_p1[4 : 2];
        v58_1_addr_9_reg_800_pp0_iter2_reg[4 : 2] <= v58_1_addr_9_reg_800[4 : 2];
        v58_1_addr_9_reg_800_pp0_iter3_reg[4 : 2] <= v58_1_addr_9_reg_800_pp0_iter2_reg[4 : 2];
        v58_1_addr_9_reg_800_pp0_iter4_reg[4 : 2] <= v58_1_addr_9_reg_800_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_865 <= grp_fu_596_p_dout0;
        v108_reg_870 <= grp_fu_600_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_885 <= grp_fu_588_p_dout0;
        v109_reg_890 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v105_reg_850 <= v58_1_q0;
        v78_reg_825 <= grp_fu_596_p_dout0;
        v84_reg_830 <= grp_fu_600_p_dout0;
        v87_reg_835 <= v58_0_q1;
        v93_reg_840 <= v58_1_q1;
        v99_reg_845 <= v58_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v62_reg_765 <= v58_0_q1;
        v66_reg_770 <= grp_fu_596_p_dout0;
        v69_reg_810 <= v58_1_q1;
        v72_reg_775 <= grp_fu_600_p_dout0;
        v75_reg_815 <= v58_0_q0;
        v81_reg_820 <= v58_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v79_reg_875 <= grp_fu_588_p_dout0;
        v85_reg_880 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v90_reg_855 <= grp_fu_596_p_dout0;
        v96_reg_860 <= grp_fu_600_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_9_reg_645 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v60_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_3 = v60_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_267_p0 = v99_reg_845;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_267_p0 = v87_reg_835;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_267_p0 = v75_reg_815;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_267_p0 = v62_reg_765;
    end else begin
        grp_fu_267_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_267_p1 = v102_reg_865;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_267_p1 = v90_reg_855;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_267_p1 = v78_reg_825;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_267_p1 = v66_reg_770;
    end else begin
        grp_fu_267_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_271_p0 = v105_reg_850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_271_p0 = v93_reg_840;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_271_p0 = v81_reg_820;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_271_p0 = v69_reg_810;
    end else begin
        grp_fu_271_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_271_p1 = v108_reg_870;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_271_p1 = v96_reg_860;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_271_p1 = v84_reg_830;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_271_p1 = v72_reg_775;
    end else begin
        grp_fu_271_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_275_p0 = v101_fu_595_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_275_p0 = v89_fu_558_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_275_p0 = v77_fu_494_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_275_p0 = v64_fu_445_p1;
    end else begin
        grp_fu_275_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_279_p0 = v107_fu_600_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_279_p0 = v95_fu_563_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_279_p0 = v83_fu_499_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_279_p0 = v71_fu_450_p1;
    end else begin
        grp_fu_279_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_address0_local = zext_ln152_fu_535_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_address0_local = zext_ln138_fu_489_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_address0_local = zext_ln124_fu_424_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_address0_local = zext_ln110_fu_366_p1;
        end else begin
            v114_address0_local = 'bx;
        end
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_address1_local = zext_ln145_fu_517_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_address1_local = zext_ln131_fu_468_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_address1_local = zext_ln117_fu_405_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_address1_local = zext_ln102_fu_335_p1;
        end else begin
            v114_address1_local = 'bx;
        end
    end else begin
        v114_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_ce0_local = 1'b1;
    end else begin
        v114_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_ce1_local = 1'b1;
    end else begin
        v114_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address0_local = v58_0_addr_9_reg_790_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_7_reg_745_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = zext_ln143_fu_589_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln115_fu_552_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_8_reg_780_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_735_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address1_local = zext_ln129_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_fu_540_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_d0_local = v103_reg_885;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_d0_local = v79_reg_875;
    end else begin
        v58_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_we1_local = 1'b1;
    end else begin
        v58_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address0_local = v58_1_addr_9_reg_800_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_7_reg_750_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = zext_ln143_fu_589_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln115_fu_552_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_8_reg_785_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_740_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address1_local = zext_ln129_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_fu_540_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_d0_local = v109_reg_890;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_d0_local = v85_reg_880;
    end else begin
        v58_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_we1_local = 1'b1;
    end else begin
        v58_1_we1_local = 1'b0;
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
assign add_ln98_fu_371_p2 = (ap_sig_allocacmp_v60_3 + 7'd8);
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
assign grp_fu_588_p_ce = 1'b1;
assign grp_fu_588_p_din0 = grp_fu_267_p0;
assign grp_fu_588_p_din1 = grp_fu_267_p1;
assign grp_fu_588_p_opcode = 2'd0;
assign grp_fu_592_p_ce = 1'b1;
assign grp_fu_592_p_din0 = grp_fu_271_p0;
assign grp_fu_592_p_din1 = grp_fu_271_p1;
assign grp_fu_592_p_opcode = 2'd0;
assign grp_fu_596_p_ce = 1'b1;
assign grp_fu_596_p_din0 = grp_fu_275_p0;
assign grp_fu_596_p_din1 = v65_5;
assign grp_fu_600_p_ce = 1'b1;
assign grp_fu_600_p_din0 = grp_fu_279_p0;
assign grp_fu_600_p_din1 = v65_5;
assign lshr_ln98_6_fu_340_p4 = {{ap_sig_allocacmp_v60_3[5:1]}};
assign or_ln115_9_fu_545_p3 = {{tmp_21_reg_664}, {1'd1}};
assign or_ln129_9_fu_568_p4 = {{{tmp_24_reg_679}, {1'd1}}, {tmp_10_reg_689}};
assign or_ln143_9_fu_582_p3 = {{tmp_24_reg_679}, {2'd3}};
assign tmp_20_fu_350_p7 = {{{{{{lshr_ln98_6_fu_340_p4}, {1'd1}}, {tmp_105}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_21_fu_382_p4 = {{v60_3_reg_638[5:2]}};
assign tmp_22_fu_391_p7 = {{{{{{tmp_21_fu_382_p4}, {2'd2}}, {tmp_105}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_23_fu_410_p7 = {{{{{{tmp_21_fu_382_p4}, {2'd3}}, {tmp_105}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_25_fu_455_p7 = {{{{{{tmp_24_reg_679}, {3'd4}}, {tmp_105}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_26_fu_473_p9 = {{{{{{{{tmp_24_reg_679}, {1'd1}}, {tmp_10_reg_689}}, {1'd1}}, {tmp_105}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_27_fu_504_p7 = {{{{{{tmp_24_reg_679}, {3'd6}}, {tmp_105}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_28_fu_522_p7 = {{{{{{tmp_24_reg_679}, {3'd7}}, {tmp_105}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_9_fu_309_p3 = ap_sig_allocacmp_v60_3[32'd6];
assign tmp_s_fu_321_p6 = {{{{{trunc_ln98_fu_317_p1}, {tmp_105}}, {1'd1}}, {empty}}, {1'd1}};
assign trunc_ln98_fu_317_p1 = ap_sig_allocacmp_v60_3[5:0];
assign v101_fu_595_p1 = reg_283;
assign v107_fu_600_p1 = reg_287;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = v58_0_d0_local;
assign v58_0_d1 = reg_291;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = v58_1_d0_local;
assign v58_1_d1 = reg_296;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v64_fu_445_p1 = reg_283;
assign v71_fu_450_p1 = reg_287;
assign v77_fu_494_p1 = reg_283;
assign v83_fu_499_p1 = reg_287;
assign v89_fu_558_p1 = reg_283;
assign v95_fu_563_p1 = reg_287;
assign zext_ln102_fu_335_p1 = tmp_s_fu_321_p6;
assign zext_ln110_fu_366_p1 = tmp_20_fu_350_p7;
assign zext_ln115_fu_552_p1 = or_ln115_9_fu_545_p3;
assign zext_ln117_fu_405_p1 = tmp_22_fu_391_p7;
assign zext_ln124_fu_424_p1 = tmp_23_fu_410_p7;
assign zext_ln129_fu_576_p1 = or_ln129_9_fu_568_p4;
assign zext_ln131_fu_468_p1 = tmp_25_fu_455_p7;
assign zext_ln138_fu_489_p1 = tmp_26_fu_473_p9;
assign zext_ln143_fu_589_p1 = or_ln143_9_fu_582_p3;
assign zext_ln145_fu_517_p1 = tmp_27_fu_504_p7;
assign zext_ln152_fu_535_p1 = tmp_28_fu_522_p7;
assign zext_ln98_fu_540_p1 = lshr_ln98_6_reg_654;
always @ (posedge ap_clk) begin
    v58_0_addr_7_reg_745[0] <= 1'b1;
    v58_0_addr_7_reg_745_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_7_reg_745_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_7_reg_750[0] <= 1'b1;
    v58_1_addr_7_reg_750_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_7_reg_750_pp0_iter3_reg[0] <= 1'b1;
    v58_0_addr_8_reg_780[1] <= 1'b1;
    v58_0_addr_8_reg_780_pp0_iter2_reg[1] <= 1'b1;
    v58_0_addr_8_reg_780_pp0_iter3_reg[1] <= 1'b1;
    v58_1_addr_8_reg_785[1] <= 1'b1;
    v58_1_addr_8_reg_785_pp0_iter2_reg[1] <= 1'b1;
    v58_1_addr_8_reg_785_pp0_iter3_reg[1] <= 1'b1;
    v58_0_addr_9_reg_790[1:0] <= 2'b11;
    v58_0_addr_9_reg_790_pp0_iter2_reg[1:0] <= 2'b11;
    v58_0_addr_9_reg_790_pp0_iter3_reg[1:0] <= 2'b11;
    v58_0_addr_9_reg_790_pp0_iter4_reg[1:0] <= 2'b11;
    v58_1_addr_9_reg_800[1:0] <= 2'b11;
    v58_1_addr_9_reg_800_pp0_iter2_reg[1:0] <= 2'b11;
    v58_1_addr_9_reg_800_pp0_iter3_reg[1:0] <= 2'b11;
    v58_1_addr_9_reg_800_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
