
module bicg_bicg_node1_Pipeline_label_219 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,tmp_556,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,v17_17,grp_fu_2063_p_din0,grp_fu_2063_p_din1,grp_fu_2063_p_opcode,grp_fu_2063_p_dout0,grp_fu_2063_p_ce,grp_fu_2067_p_din0,grp_fu_2067_p_din1,grp_fu_2067_p_opcode,grp_fu_2067_p_dout0,grp_fu_2067_p_ce,grp_fu_2071_p_din0,grp_fu_2071_p_din1,grp_fu_2071_p_dout0,grp_fu_2071_p_ce,grp_fu_2075_p_din0,grp_fu_2075_p_din1,grp_fu_2075_p_dout0,grp_fu_2075_p_ce);  
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
input  [0:0] empty;
input  [2:0] tmp_556;
output  [11:0] v137_address0;
output   v137_ce0;
input  [31:0] v137_q0;
output  [11:0] v137_address1;
output   v137_ce1;
input  [31:0] v137_q1;
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
input  [31:0] v17_17;
output  [31:0] grp_fu_2063_p_din0;
output  [31:0] grp_fu_2063_p_din1;
output  [1:0] grp_fu_2063_p_opcode;
input  [31:0] grp_fu_2063_p_dout0;
output   grp_fu_2063_p_ce;
output  [31:0] grp_fu_2067_p_din0;
output  [31:0] grp_fu_2067_p_din1;
output  [1:0] grp_fu_2067_p_opcode;
input  [31:0] grp_fu_2067_p_dout0;
output   grp_fu_2067_p_ce;
output  [31:0] grp_fu_2071_p_din0;
output  [31:0] grp_fu_2071_p_din1;
input  [31:0] grp_fu_2071_p_dout0;
output   grp_fu_2071_p_ce;
output  [31:0] grp_fu_2075_p_din0;
output  [31:0] grp_fu_2075_p_din1;
input  [31:0] grp_fu_2075_p_dout0;
output   grp_fu_2075_p_ce;
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
reg   [0:0] tmp_178_reg_645;
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
reg   [6:0] v12_reg_638;
wire   [0:0] tmp_178_fu_309_p3;
wire   [4:0] lshr_ln42_s_fu_340_p4;
reg   [4:0] lshr_ln42_s_reg_654;
wire   [3:0] tmp_311_fu_382_p4;
reg   [3:0] tmp_311_reg_664;
reg   [2:0] tmp_314_reg_679;
reg   [0:0] tmp_179_reg_689;
wire   [31:0] v16_fu_445_p1;
wire   [31:0] v23_fu_450_p1;
wire   [31:0] v29_fu_494_p1;
wire   [31:0] v35_fu_499_p1;
reg   [4:0] v10_0_addr_reg_735;
reg   [4:0] v10_0_addr_reg_735_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_735_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_740;
reg   [4:0] v10_1_addr_reg_740_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_740_pp0_iter3_reg;
reg   [4:0] v10_0_addr_57_reg_745;
reg   [4:0] v10_0_addr_57_reg_745_pp0_iter2_reg;
reg   [4:0] v10_0_addr_57_reg_745_pp0_iter3_reg;
reg   [4:0] v10_1_addr_57_reg_750;
reg   [4:0] v10_1_addr_57_reg_750_pp0_iter2_reg;
reg   [4:0] v10_1_addr_57_reg_750_pp0_iter3_reg;
wire   [31:0] v41_fu_558_p1;
wire   [31:0] v47_fu_563_p1;
reg   [31:0] v14_reg_765;
reg   [31:0] v18_reg_770;
reg   [31:0] v24_reg_775;
reg   [4:0] v10_0_addr_58_reg_780;
reg   [4:0] v10_0_addr_58_reg_780_pp0_iter2_reg;
reg   [4:0] v10_0_addr_58_reg_780_pp0_iter3_reg;
reg   [4:0] v10_1_addr_58_reg_785;
reg   [4:0] v10_1_addr_58_reg_785_pp0_iter2_reg;
reg   [4:0] v10_1_addr_58_reg_785_pp0_iter3_reg;
reg   [4:0] v10_0_addr_59_reg_790;
reg   [4:0] v10_0_addr_59_reg_790_pp0_iter2_reg;
reg   [4:0] v10_0_addr_59_reg_790_pp0_iter3_reg;
reg   [4:0] v10_0_addr_59_reg_790_pp0_iter4_reg;
wire   [31:0] v53_fu_595_p1;
reg   [4:0] v10_1_addr_59_reg_800;
reg   [4:0] v10_1_addr_59_reg_800_pp0_iter2_reg;
reg   [4:0] v10_1_addr_59_reg_800_pp0_iter3_reg;
reg   [4:0] v10_1_addr_59_reg_800_pp0_iter4_reg;
wire   [31:0] v59_fu_600_p1;
reg   [31:0] v21_reg_810;
reg   [31:0] v27_reg_815;
reg   [31:0] v33_reg_820;
reg   [31:0] v30_reg_825;
reg   [31:0] v36_reg_830;
reg   [31:0] v39_reg_835;
reg   [31:0] v45_reg_840;
reg   [31:0] v51_reg_845;
reg   [31:0] v57_reg_850;
reg   [31:0] v42_reg_855;
reg   [31:0] v48_reg_860;
reg   [31:0] v54_reg_865;
reg   [31:0] v60_reg_870;
reg   [31:0] v31_reg_875;
reg   [31:0] v37_reg_880;
reg   [31:0] v55_reg_885;
reg   [31:0] v61_reg_890;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_335_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_366_p1;
wire   [63:0] zext_ln61_fu_405_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_424_p1;
wire   [63:0] zext_ln75_fu_468_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_489_p1;
wire   [63:0] zext_ln89_fu_517_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_535_p1;
wire   [63:0] zext_ln42_fu_540_p1;
wire   [63:0] zext_ln59_fu_552_p1;
wire   [63:0] zext_ln73_fu_576_p1;
wire   [63:0] zext_ln87_fu_589_p1;
reg   [6:0] v12_17_fu_90;
wire   [6:0] add_ln42_fu_371_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12;
reg    v137_ce1_local;
reg   [11:0] v137_address1_local;
reg    v137_ce0_local;
reg   [11:0] v137_address0_local;
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
reg   [31:0] grp_fu_267_p0;
reg   [31:0] grp_fu_267_p1;
reg   [31:0] grp_fu_271_p0;
reg   [31:0] grp_fu_271_p1;
reg   [31:0] grp_fu_275_p0;
reg   [31:0] grp_fu_279_p0;
wire   [5:0] trunc_ln42_fu_317_p1;
wire   [11:0] tmp_s_fu_321_p6;
wire   [11:0] tmp_310_fu_350_p7;
wire   [11:0] tmp_312_fu_391_p7;
wire   [11:0] tmp_313_fu_410_p7;
wire   [11:0] tmp_315_fu_455_p7;
wire   [11:0] tmp_316_fu_473_p9;
wire   [11:0] tmp_317_fu_504_p7;
wire   [11:0] tmp_318_fu_522_p7;
wire   [4:0] or_ln59_s_fu_545_p3;
wire   [4:0] or_ln73_s_fu_568_p4;
wire   [4:0] or_ln87_s_fu_582_p3;
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
#0 v12_17_fu_90 = 7'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_178_fu_309_p3 == 1'd0))) begin
            v12_17_fu_90 <= add_ln42_fu_371_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_17_fu_90 <= 7'd0;
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
        lshr_ln42_s_reg_654 <= {{ap_sig_allocacmp_v12[5:1]}};
        tmp_178_reg_645 <= ap_sig_allocacmp_v12[32'd6];
        v10_0_addr_57_reg_745[4 : 1] <= zext_ln59_fu_552_p1[4 : 1];
        v10_0_addr_57_reg_745_pp0_iter2_reg[4 : 1] <= v10_0_addr_57_reg_745[4 : 1];
        v10_0_addr_57_reg_745_pp0_iter3_reg[4 : 1] <= v10_0_addr_57_reg_745_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_735 <= zext_ln42_fu_540_p1;
        v10_0_addr_reg_735_pp0_iter2_reg <= v10_0_addr_reg_735;
        v10_0_addr_reg_735_pp0_iter3_reg <= v10_0_addr_reg_735_pp0_iter2_reg;
        v10_1_addr_57_reg_750[4 : 1] <= zext_ln59_fu_552_p1[4 : 1];
        v10_1_addr_57_reg_750_pp0_iter2_reg[4 : 1] <= v10_1_addr_57_reg_750[4 : 1];
        v10_1_addr_57_reg_750_pp0_iter3_reg[4 : 1] <= v10_1_addr_57_reg_750_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_740 <= zext_ln42_fu_540_p1;
        v10_1_addr_reg_740_pp0_iter2_reg <= v10_1_addr_reg_740;
        v10_1_addr_reg_740_pp0_iter3_reg <= v10_1_addr_reg_740_pp0_iter2_reg;
        v12_reg_638 <= ap_sig_allocacmp_v12;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_283 <= v137_q1;
        reg_287 <= v137_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_291 <= grp_fu_2063_p_dout0;
        reg_296 <= grp_fu_2067_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_179_reg_689 <= v12_reg_638[32'd1];
        tmp_311_reg_664 <= {{v12_reg_638[5:2]}};
        tmp_314_reg_679 <= {{v12_reg_638[5:3]}};
        v10_0_addr_58_reg_780[0] <= zext_ln73_fu_576_p1[0];
v10_0_addr_58_reg_780[4 : 2] <= zext_ln73_fu_576_p1[4 : 2];
        v10_0_addr_58_reg_780_pp0_iter2_reg[0] <= v10_0_addr_58_reg_780[0];
v10_0_addr_58_reg_780_pp0_iter2_reg[4 : 2] <= v10_0_addr_58_reg_780[4 : 2];
        v10_0_addr_58_reg_780_pp0_iter3_reg[0] <= v10_0_addr_58_reg_780_pp0_iter2_reg[0];
v10_0_addr_58_reg_780_pp0_iter3_reg[4 : 2] <= v10_0_addr_58_reg_780_pp0_iter2_reg[4 : 2];
        v10_0_addr_59_reg_790[4 : 2] <= zext_ln87_fu_589_p1[4 : 2];
        v10_0_addr_59_reg_790_pp0_iter2_reg[4 : 2] <= v10_0_addr_59_reg_790[4 : 2];
        v10_0_addr_59_reg_790_pp0_iter3_reg[4 : 2] <= v10_0_addr_59_reg_790_pp0_iter2_reg[4 : 2];
        v10_0_addr_59_reg_790_pp0_iter4_reg[4 : 2] <= v10_0_addr_59_reg_790_pp0_iter3_reg[4 : 2];
        v10_1_addr_58_reg_785[0] <= zext_ln73_fu_576_p1[0];
v10_1_addr_58_reg_785[4 : 2] <= zext_ln73_fu_576_p1[4 : 2];
        v10_1_addr_58_reg_785_pp0_iter2_reg[0] <= v10_1_addr_58_reg_785[0];
v10_1_addr_58_reg_785_pp0_iter2_reg[4 : 2] <= v10_1_addr_58_reg_785[4 : 2];
        v10_1_addr_58_reg_785_pp0_iter3_reg[0] <= v10_1_addr_58_reg_785_pp0_iter2_reg[0];
v10_1_addr_58_reg_785_pp0_iter3_reg[4 : 2] <= v10_1_addr_58_reg_785_pp0_iter2_reg[4 : 2];
        v10_1_addr_59_reg_800[4 : 2] <= zext_ln87_fu_589_p1[4 : 2];
        v10_1_addr_59_reg_800_pp0_iter2_reg[4 : 2] <= v10_1_addr_59_reg_800[4 : 2];
        v10_1_addr_59_reg_800_pp0_iter3_reg[4 : 2] <= v10_1_addr_59_reg_800_pp0_iter2_reg[4 : 2];
        v10_1_addr_59_reg_800_pp0_iter4_reg[4 : 2] <= v10_1_addr_59_reg_800_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_765 <= v10_0_q1;
        v18_reg_770 <= grp_fu_2071_p_dout0;
        v21_reg_810 <= v10_1_q1;
        v24_reg_775 <= grp_fu_2075_p_dout0;
        v27_reg_815 <= v10_0_q0;
        v33_reg_820 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_825 <= grp_fu_2071_p_dout0;
        v36_reg_830 <= grp_fu_2075_p_dout0;
        v39_reg_835 <= v10_0_q1;
        v45_reg_840 <= v10_1_q1;
        v51_reg_845 <= v10_0_q0;
        v57_reg_850 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_875 <= grp_fu_2063_p_dout0;
        v37_reg_880 <= grp_fu_2067_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_855 <= grp_fu_2071_p_dout0;
        v48_reg_860 <= grp_fu_2075_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_865 <= grp_fu_2071_p_dout0;
        v60_reg_870 <= grp_fu_2075_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_885 <= grp_fu_2063_p_dout0;
        v61_reg_890 <= grp_fu_2067_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_178_reg_645 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v12 = 7'd0;
    end else begin
        ap_sig_allocacmp_v12 = v12_17_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_267_p0 = v51_reg_845;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_267_p0 = v39_reg_835;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_267_p0 = v27_reg_815;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_267_p0 = v14_reg_765;
    end else begin
        grp_fu_267_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_267_p1 = v54_reg_865;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_267_p1 = v42_reg_855;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_267_p1 = v30_reg_825;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_267_p1 = v18_reg_770;
    end else begin
        grp_fu_267_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_271_p0 = v57_reg_850;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_271_p0 = v45_reg_840;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_271_p0 = v33_reg_820;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_271_p0 = v21_reg_810;
    end else begin
        grp_fu_271_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_271_p1 = v60_reg_870;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_271_p1 = v48_reg_860;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_271_p1 = v36_reg_830;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_271_p1 = v24_reg_775;
    end else begin
        grp_fu_271_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_275_p0 = v53_fu_595_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_275_p0 = v41_fu_558_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_275_p0 = v29_fu_494_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_275_p0 = v16_fu_445_p1;
    end else begin
        grp_fu_275_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_279_p0 = v59_fu_600_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_279_p0 = v47_fu_563_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_279_p0 = v35_fu_499_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_279_p0 = v23_fu_450_p1;
    end else begin
        grp_fu_279_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_59_reg_790_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_57_reg_745_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_589_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_552_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_58_reg_780_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_735_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_540_p1;
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
        v10_0_d0_local = v55_reg_885;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_875;
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
        v10_1_address0_local = v10_1_addr_59_reg_800_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_57_reg_750_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_589_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_552_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_58_reg_785_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_740_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_540_p1;
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
        v10_1_d0_local = v61_reg_890;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_reg_880;
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
            v137_address0_local = zext_ln96_fu_535_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_address0_local = zext_ln82_fu_489_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_address0_local = zext_ln68_fu_424_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_address0_local = zext_ln54_fu_366_p1;
        end else begin
            v137_address0_local = 'bx;
        end
    end else begin
        v137_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_address1_local = zext_ln89_fu_517_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_address1_local = zext_ln75_fu_468_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_address1_local = zext_ln61_fu_405_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_address1_local = zext_ln46_fu_335_p1;
        end else begin
            v137_address1_local = 'bx;
        end
    end else begin
        v137_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_ce0_local = 1'b1;
    end else begin
        v137_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_ce1_local = 1'b1;
    end else begin
        v137_ce1_local = 1'b0;
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
assign add_ln42_fu_371_p2 = (ap_sig_allocacmp_v12 + 7'd8);
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
assign grp_fu_2063_p_ce = 1'b1;
assign grp_fu_2063_p_din0 = grp_fu_267_p0;
assign grp_fu_2063_p_din1 = grp_fu_267_p1;
assign grp_fu_2063_p_opcode = 2'd0;
assign grp_fu_2067_p_ce = 1'b1;
assign grp_fu_2067_p_din0 = grp_fu_271_p0;
assign grp_fu_2067_p_din1 = grp_fu_271_p1;
assign grp_fu_2067_p_opcode = 2'd0;
assign grp_fu_2071_p_ce = 1'b1;
assign grp_fu_2071_p_din0 = grp_fu_275_p0;
assign grp_fu_2071_p_din1 = v17_17;
assign grp_fu_2075_p_ce = 1'b1;
assign grp_fu_2075_p_din0 = grp_fu_279_p0;
assign grp_fu_2075_p_din1 = v17_17;
assign lshr_ln42_s_fu_340_p4 = {{ap_sig_allocacmp_v12[5:1]}};
assign or_ln59_s_fu_545_p3 = {{tmp_311_reg_664}, {1'd1}};
assign or_ln73_s_fu_568_p4 = {{{tmp_314_reg_679}, {1'd1}}, {tmp_179_reg_689}};
assign or_ln87_s_fu_582_p3 = {{tmp_314_reg_679}, {2'd3}};
assign tmp_178_fu_309_p3 = ap_sig_allocacmp_v12[32'd6];
assign tmp_310_fu_350_p7 = {{{{{{lshr_ln42_s_fu_340_p4}, {1'd1}}, {empty}}, {1'd1}}, {tmp_556}}, {1'd1}};
assign tmp_311_fu_382_p4 = {{v12_reg_638[5:2]}};
assign tmp_312_fu_391_p7 = {{{{{{tmp_311_fu_382_p4}, {2'd2}}, {empty}}, {1'd1}}, {tmp_556}}, {1'd1}};
assign tmp_313_fu_410_p7 = {{{{{{tmp_311_fu_382_p4}, {2'd3}}, {empty}}, {1'd1}}, {tmp_556}}, {1'd1}};
assign tmp_315_fu_455_p7 = {{{{{{tmp_314_reg_679}, {3'd4}}, {empty}}, {1'd1}}, {tmp_556}}, {1'd1}};
assign tmp_316_fu_473_p9 = {{{{{{{{tmp_314_reg_679}, {1'd1}}, {tmp_179_reg_689}}, {1'd1}}, {empty}}, {1'd1}}, {tmp_556}}, {1'd1}};
assign tmp_317_fu_504_p7 = {{{{{{tmp_314_reg_679}, {3'd6}}, {empty}}, {1'd1}}, {tmp_556}}, {1'd1}};
assign tmp_318_fu_522_p7 = {{{{{{tmp_314_reg_679}, {3'd7}}, {empty}}, {1'd1}}, {tmp_556}}, {1'd1}};
assign tmp_s_fu_321_p6 = {{{{{trunc_ln42_fu_317_p1}, {empty}}, {1'd1}}, {tmp_556}}, {1'd1}};
assign trunc_ln42_fu_317_p1 = ap_sig_allocacmp_v12[5:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_291;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_296;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_address0 = v137_address0_local;
assign v137_address1 = v137_address1_local;
assign v137_ce0 = v137_ce0_local;
assign v137_ce1 = v137_ce1_local;
assign v16_fu_445_p1 = reg_283;
assign v23_fu_450_p1 = reg_287;
assign v29_fu_494_p1 = reg_283;
assign v35_fu_499_p1 = reg_287;
assign v41_fu_558_p1 = reg_283;
assign v47_fu_563_p1 = reg_287;
assign v53_fu_595_p1 = reg_283;
assign v59_fu_600_p1 = reg_287;
assign zext_ln42_fu_540_p1 = lshr_ln42_s_reg_654;
assign zext_ln46_fu_335_p1 = tmp_s_fu_321_p6;
assign zext_ln54_fu_366_p1 = tmp_310_fu_350_p7;
assign zext_ln59_fu_552_p1 = or_ln59_s_fu_545_p3;
assign zext_ln61_fu_405_p1 = tmp_312_fu_391_p7;
assign zext_ln68_fu_424_p1 = tmp_313_fu_410_p7;
assign zext_ln73_fu_576_p1 = or_ln73_s_fu_568_p4;
assign zext_ln75_fu_468_p1 = tmp_315_fu_455_p7;
assign zext_ln82_fu_489_p1 = tmp_316_fu_473_p9;
assign zext_ln87_fu_589_p1 = or_ln87_s_fu_582_p3;
assign zext_ln89_fu_517_p1 = tmp_317_fu_504_p7;
assign zext_ln96_fu_535_p1 = tmp_318_fu_522_p7;
always @ (posedge ap_clk) begin
    v10_0_addr_57_reg_745[0] <= 1'b1;
    v10_0_addr_57_reg_745_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_57_reg_745_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_57_reg_750[0] <= 1'b1;
    v10_1_addr_57_reg_750_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_57_reg_750_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_58_reg_780[1] <= 1'b1;
    v10_0_addr_58_reg_780_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_58_reg_780_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_58_reg_785[1] <= 1'b1;
    v10_1_addr_58_reg_785_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_58_reg_785_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_59_reg_790[1:0] <= 2'b11;
    v10_0_addr_59_reg_790_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_59_reg_790_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_59_reg_790_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_59_reg_800[1:0] <= 2'b11;
    v10_1_addr_59_reg_800_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_59_reg_800_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_59_reg_800_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
