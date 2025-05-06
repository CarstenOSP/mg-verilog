
module bicg_bicg_node1_Pipeline_label_226 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,v17_24,grp_fu_2063_p_din0,grp_fu_2063_p_din1,grp_fu_2063_p_opcode,grp_fu_2063_p_dout0,grp_fu_2063_p_ce,grp_fu_2067_p_din0,grp_fu_2067_p_din1,grp_fu_2067_p_opcode,grp_fu_2067_p_dout0,grp_fu_2067_p_ce,grp_fu_2071_p_din0,grp_fu_2071_p_din1,grp_fu_2071_p_dout0,grp_fu_2071_p_ce,grp_fu_2075_p_din0,grp_fu_2075_p_din1,grp_fu_2075_p_dout0,grp_fu_2075_p_ce);  
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
input  [31:0] v17_24;
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
reg   [0:0] tmp_159_reg_601;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_275;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_279;
reg   [31:0] reg_283;
reg   [31:0] reg_288;
reg   [6:0] v12_12_reg_594;
wire   [0:0] tmp_159_fu_301_p3;
wire   [4:0] lshr_ln42_s_fu_328_p4;
reg   [4:0] lshr_ln42_s_reg_610;
wire   [3:0] tmp_248_fu_366_p4;
reg   [3:0] tmp_248_reg_620;
reg   [2:0] tmp_251_reg_635;
reg   [0:0] tmp_160_reg_645;
wire   [31:0] v16_fu_423_p1;
wire   [31:0] v23_fu_428_p1;
wire   [31:0] v29_fu_466_p1;
wire   [31:0] v35_fu_471_p1;
reg   [4:0] v10_0_addr_reg_691;
reg   [4:0] v10_0_addr_reg_691_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_691_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_696;
reg   [4:0] v10_1_addr_reg_696_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_696_pp0_iter3_reg;
reg   [4:0] v10_0_addr_36_reg_701;
reg   [4:0] v10_0_addr_36_reg_701_pp0_iter2_reg;
reg   [4:0] v10_0_addr_36_reg_701_pp0_iter3_reg;
reg   [4:0] v10_1_addr_36_reg_706;
reg   [4:0] v10_1_addr_36_reg_706_pp0_iter2_reg;
reg   [4:0] v10_1_addr_36_reg_706_pp0_iter3_reg;
wire   [31:0] v41_fu_524_p1;
wire   [31:0] v47_fu_529_p1;
reg   [31:0] v14_reg_721;
reg   [31:0] v18_reg_726;
reg   [31:0] v24_reg_731;
reg   [4:0] v10_0_addr_37_reg_736;
reg   [4:0] v10_0_addr_37_reg_736_pp0_iter2_reg;
reg   [4:0] v10_0_addr_37_reg_736_pp0_iter3_reg;
reg   [4:0] v10_1_addr_37_reg_741;
reg   [4:0] v10_1_addr_37_reg_741_pp0_iter2_reg;
reg   [4:0] v10_1_addr_37_reg_741_pp0_iter3_reg;
reg   [4:0] v10_0_addr_38_reg_746;
reg   [4:0] v10_0_addr_38_reg_746_pp0_iter2_reg;
reg   [4:0] v10_0_addr_38_reg_746_pp0_iter3_reg;
reg   [4:0] v10_0_addr_38_reg_746_pp0_iter4_reg;
wire   [31:0] v53_fu_561_p1;
reg   [4:0] v10_1_addr_38_reg_756;
reg   [4:0] v10_1_addr_38_reg_756_pp0_iter2_reg;
reg   [4:0] v10_1_addr_38_reg_756_pp0_iter3_reg;
reg   [4:0] v10_1_addr_38_reg_756_pp0_iter4_reg;
wire   [31:0] v59_fu_566_p1;
reg   [31:0] v21_reg_766;
reg   [31:0] v27_reg_771;
reg   [31:0] v33_reg_776;
reg   [31:0] v30_reg_781;
reg   [31:0] v36_reg_786;
reg   [31:0] v39_reg_791;
reg   [31:0] v45_reg_796;
reg   [31:0] v51_reg_801;
reg   [31:0] v57_reg_806;
reg   [31:0] v42_reg_811;
reg   [31:0] v48_reg_816;
reg   [31:0] v54_reg_821;
reg   [31:0] v60_reg_826;
reg   [31:0] v31_reg_831;
reg   [31:0] v37_reg_836;
reg   [31:0] v55_reg_841;
reg   [31:0] v61_reg_846;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_323_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_350_p1;
wire   [63:0] zext_ln61_fu_386_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_402_p1;
wire   [63:0] zext_ln75_fu_443_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_461_p1;
wire   [63:0] zext_ln89_fu_486_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_501_p1;
wire   [63:0] zext_ln42_fu_506_p1;
wire   [63:0] zext_ln59_fu_518_p1;
wire   [63:0] zext_ln73_fu_542_p1;
wire   [63:0] zext_ln87_fu_555_p1;
reg   [6:0] v12_fu_88;
wire   [6:0] add_ln42_fu_355_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12_12;
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
reg   [31:0] grp_fu_259_p0;
reg   [31:0] grp_fu_259_p1;
reg   [31:0] grp_fu_263_p0;
reg   [31:0] grp_fu_263_p1;
reg   [31:0] grp_fu_267_p0;
reg   [31:0] grp_fu_271_p0;
wire   [5:0] trunc_ln42_fu_309_p1;
wire   [11:0] tmp_s_fu_313_p4;
wire   [11:0] tmp_247_fu_338_p5;
wire   [11:0] tmp_249_fu_375_p5;
wire   [11:0] tmp_250_fu_391_p5;
wire   [11:0] tmp_252_fu_433_p5;
wire   [11:0] tmp_253_fu_448_p7;
wire   [11:0] tmp_254_fu_476_p5;
wire   [11:0] tmp_255_fu_491_p5;
wire   [4:0] or_ln59_s_fu_511_p3;
wire   [4:0] or_ln73_s_fu_534_p4;
wire   [4:0] or_ln87_s_fu_548_p3;
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
#0 v12_fu_88 = 7'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_159_fu_301_p3 == 1'd0))) begin
            v12_fu_88 <= add_ln42_fu_355_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_fu_88 <= 7'd0;
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
        lshr_ln42_s_reg_610 <= {{ap_sig_allocacmp_v12_12[5:1]}};
        tmp_159_reg_601 <= ap_sig_allocacmp_v12_12[32'd6];
        v10_0_addr_36_reg_701[4 : 1] <= zext_ln59_fu_518_p1[4 : 1];
        v10_0_addr_36_reg_701_pp0_iter2_reg[4 : 1] <= v10_0_addr_36_reg_701[4 : 1];
        v10_0_addr_36_reg_701_pp0_iter3_reg[4 : 1] <= v10_0_addr_36_reg_701_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_691 <= zext_ln42_fu_506_p1;
        v10_0_addr_reg_691_pp0_iter2_reg <= v10_0_addr_reg_691;
        v10_0_addr_reg_691_pp0_iter3_reg <= v10_0_addr_reg_691_pp0_iter2_reg;
        v10_1_addr_36_reg_706[4 : 1] <= zext_ln59_fu_518_p1[4 : 1];
        v10_1_addr_36_reg_706_pp0_iter2_reg[4 : 1] <= v10_1_addr_36_reg_706[4 : 1];
        v10_1_addr_36_reg_706_pp0_iter3_reg[4 : 1] <= v10_1_addr_36_reg_706_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_696 <= zext_ln42_fu_506_p1;
        v10_1_addr_reg_696_pp0_iter2_reg <= v10_1_addr_reg_696;
        v10_1_addr_reg_696_pp0_iter3_reg <= v10_1_addr_reg_696_pp0_iter2_reg;
        v12_12_reg_594 <= ap_sig_allocacmp_v12_12;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_275 <= v137_q1;
        reg_279 <= v137_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_283 <= grp_fu_2063_p_dout0;
        reg_288 <= grp_fu_2067_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_160_reg_645 <= v12_12_reg_594[32'd1];
        tmp_248_reg_620 <= {{v12_12_reg_594[5:2]}};
        tmp_251_reg_635 <= {{v12_12_reg_594[5:3]}};
        v10_0_addr_37_reg_736[0] <= zext_ln73_fu_542_p1[0];
v10_0_addr_37_reg_736[4 : 2] <= zext_ln73_fu_542_p1[4 : 2];
        v10_0_addr_37_reg_736_pp0_iter2_reg[0] <= v10_0_addr_37_reg_736[0];
v10_0_addr_37_reg_736_pp0_iter2_reg[4 : 2] <= v10_0_addr_37_reg_736[4 : 2];
        v10_0_addr_37_reg_736_pp0_iter3_reg[0] <= v10_0_addr_37_reg_736_pp0_iter2_reg[0];
v10_0_addr_37_reg_736_pp0_iter3_reg[4 : 2] <= v10_0_addr_37_reg_736_pp0_iter2_reg[4 : 2];
        v10_0_addr_38_reg_746[4 : 2] <= zext_ln87_fu_555_p1[4 : 2];
        v10_0_addr_38_reg_746_pp0_iter2_reg[4 : 2] <= v10_0_addr_38_reg_746[4 : 2];
        v10_0_addr_38_reg_746_pp0_iter3_reg[4 : 2] <= v10_0_addr_38_reg_746_pp0_iter2_reg[4 : 2];
        v10_0_addr_38_reg_746_pp0_iter4_reg[4 : 2] <= v10_0_addr_38_reg_746_pp0_iter3_reg[4 : 2];
        v10_1_addr_37_reg_741[0] <= zext_ln73_fu_542_p1[0];
v10_1_addr_37_reg_741[4 : 2] <= zext_ln73_fu_542_p1[4 : 2];
        v10_1_addr_37_reg_741_pp0_iter2_reg[0] <= v10_1_addr_37_reg_741[0];
v10_1_addr_37_reg_741_pp0_iter2_reg[4 : 2] <= v10_1_addr_37_reg_741[4 : 2];
        v10_1_addr_37_reg_741_pp0_iter3_reg[0] <= v10_1_addr_37_reg_741_pp0_iter2_reg[0];
v10_1_addr_37_reg_741_pp0_iter3_reg[4 : 2] <= v10_1_addr_37_reg_741_pp0_iter2_reg[4 : 2];
        v10_1_addr_38_reg_756[4 : 2] <= zext_ln87_fu_555_p1[4 : 2];
        v10_1_addr_38_reg_756_pp0_iter2_reg[4 : 2] <= v10_1_addr_38_reg_756[4 : 2];
        v10_1_addr_38_reg_756_pp0_iter3_reg[4 : 2] <= v10_1_addr_38_reg_756_pp0_iter2_reg[4 : 2];
        v10_1_addr_38_reg_756_pp0_iter4_reg[4 : 2] <= v10_1_addr_38_reg_756_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_721 <= v10_0_q1;
        v18_reg_726 <= grp_fu_2071_p_dout0;
        v21_reg_766 <= v10_1_q1;
        v24_reg_731 <= grp_fu_2075_p_dout0;
        v27_reg_771 <= v10_0_q0;
        v33_reg_776 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_781 <= grp_fu_2071_p_dout0;
        v36_reg_786 <= grp_fu_2075_p_dout0;
        v39_reg_791 <= v10_0_q1;
        v45_reg_796 <= v10_1_q1;
        v51_reg_801 <= v10_0_q0;
        v57_reg_806 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_831 <= grp_fu_2063_p_dout0;
        v37_reg_836 <= grp_fu_2067_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_811 <= grp_fu_2071_p_dout0;
        v48_reg_816 <= grp_fu_2075_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_821 <= grp_fu_2071_p_dout0;
        v60_reg_826 <= grp_fu_2075_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_841 <= grp_fu_2063_p_dout0;
        v61_reg_846 <= grp_fu_2067_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_159_reg_601 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v12_12 = 7'd0;
    end else begin
        ap_sig_allocacmp_v12_12 = v12_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_259_p0 = v51_reg_801;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_259_p0 = v39_reg_791;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_259_p0 = v27_reg_771;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_259_p0 = v14_reg_721;
    end else begin
        grp_fu_259_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_259_p1 = v54_reg_821;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_259_p1 = v42_reg_811;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_259_p1 = v30_reg_781;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_259_p1 = v18_reg_726;
    end else begin
        grp_fu_259_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_263_p0 = v57_reg_806;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_263_p0 = v45_reg_796;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_263_p0 = v33_reg_776;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_263_p0 = v21_reg_766;
    end else begin
        grp_fu_263_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_263_p1 = v60_reg_826;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_263_p1 = v48_reg_816;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_263_p1 = v36_reg_786;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_263_p1 = v24_reg_731;
    end else begin
        grp_fu_263_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_267_p0 = v53_fu_561_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_267_p0 = v41_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_267_p0 = v29_fu_466_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_267_p0 = v16_fu_423_p1;
    end else begin
        grp_fu_267_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_271_p0 = v59_fu_566_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_271_p0 = v47_fu_529_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_271_p0 = v35_fu_471_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_271_p0 = v23_fu_428_p1;
    end else begin
        grp_fu_271_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_38_reg_746_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_36_reg_701_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_555_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_518_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_37_reg_736_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_691_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_542_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_506_p1;
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
        v10_0_d0_local = v55_reg_841;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_831;
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
        v10_1_address0_local = v10_1_addr_38_reg_756_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_36_reg_706_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_555_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_518_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_37_reg_741_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_696_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_542_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_506_p1;
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
        v10_1_d0_local = v61_reg_846;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_reg_836;
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
            v137_address0_local = zext_ln96_fu_501_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_address0_local = zext_ln82_fu_461_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_address0_local = zext_ln68_fu_402_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_address0_local = zext_ln54_fu_350_p1;
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
            v137_address1_local = zext_ln89_fu_486_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_address1_local = zext_ln75_fu_443_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_address1_local = zext_ln61_fu_386_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_address1_local = zext_ln46_fu_323_p1;
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
assign add_ln42_fu_355_p2 = (ap_sig_allocacmp_v12_12 + 7'd8);
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
assign grp_fu_2063_p_din0 = grp_fu_259_p0;
assign grp_fu_2063_p_din1 = grp_fu_259_p1;
assign grp_fu_2063_p_opcode = 2'd0;
assign grp_fu_2067_p_ce = 1'b1;
assign grp_fu_2067_p_din0 = grp_fu_263_p0;
assign grp_fu_2067_p_din1 = grp_fu_263_p1;
assign grp_fu_2067_p_opcode = 2'd0;
assign grp_fu_2071_p_ce = 1'b1;
assign grp_fu_2071_p_din0 = grp_fu_267_p0;
assign grp_fu_2071_p_din1 = v17_24;
assign grp_fu_2075_p_ce = 1'b1;
assign grp_fu_2075_p_din0 = grp_fu_271_p0;
assign grp_fu_2075_p_din1 = v17_24;
assign lshr_ln42_s_fu_328_p4 = {{ap_sig_allocacmp_v12_12[5:1]}};
assign or_ln59_s_fu_511_p3 = {{tmp_248_reg_620}, {1'd1}};
assign or_ln73_s_fu_534_p4 = {{{tmp_251_reg_635}, {1'd1}}, {tmp_160_reg_645}};
assign or_ln87_s_fu_548_p3 = {{tmp_251_reg_635}, {2'd3}};
assign tmp_159_fu_301_p3 = ap_sig_allocacmp_v12_12[32'd6];
assign tmp_247_fu_338_p5 = {{{{lshr_ln42_s_fu_328_p4}, {1'd1}}, {empty}}, {5'd24}};
assign tmp_248_fu_366_p4 = {{v12_12_reg_594[5:2]}};
assign tmp_249_fu_375_p5 = {{{{tmp_248_fu_366_p4}, {2'd2}}, {empty}}, {5'd24}};
assign tmp_250_fu_391_p5 = {{{{tmp_248_fu_366_p4}, {2'd3}}, {empty}}, {5'd24}};
assign tmp_252_fu_433_p5 = {{{{tmp_251_reg_635}, {3'd4}}, {empty}}, {5'd24}};
assign tmp_253_fu_448_p7 = {{{{{{tmp_251_reg_635}, {1'd1}}, {tmp_160_reg_645}}, {1'd1}}, {empty}}, {5'd24}};
assign tmp_254_fu_476_p5 = {{{{tmp_251_reg_635}, {3'd6}}, {empty}}, {5'd24}};
assign tmp_255_fu_491_p5 = {{{{tmp_251_reg_635}, {3'd7}}, {empty}}, {5'd24}};
assign tmp_s_fu_313_p4 = {{{trunc_ln42_fu_309_p1}, {empty}}, {5'd24}};
assign trunc_ln42_fu_309_p1 = ap_sig_allocacmp_v12_12[5:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_283;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_288;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_address0 = v137_address0_local;
assign v137_address1 = v137_address1_local;
assign v137_ce0 = v137_ce0_local;
assign v137_ce1 = v137_ce1_local;
assign v16_fu_423_p1 = reg_275;
assign v23_fu_428_p1 = reg_279;
assign v29_fu_466_p1 = reg_275;
assign v35_fu_471_p1 = reg_279;
assign v41_fu_524_p1 = reg_275;
assign v47_fu_529_p1 = reg_279;
assign v53_fu_561_p1 = reg_275;
assign v59_fu_566_p1 = reg_279;
assign zext_ln42_fu_506_p1 = lshr_ln42_s_reg_610;
assign zext_ln46_fu_323_p1 = tmp_s_fu_313_p4;
assign zext_ln54_fu_350_p1 = tmp_247_fu_338_p5;
assign zext_ln59_fu_518_p1 = or_ln59_s_fu_511_p3;
assign zext_ln61_fu_386_p1 = tmp_249_fu_375_p5;
assign zext_ln68_fu_402_p1 = tmp_250_fu_391_p5;
assign zext_ln73_fu_542_p1 = or_ln73_s_fu_534_p4;
assign zext_ln75_fu_443_p1 = tmp_252_fu_433_p5;
assign zext_ln82_fu_461_p1 = tmp_253_fu_448_p7;
assign zext_ln87_fu_555_p1 = or_ln87_s_fu_548_p3;
assign zext_ln89_fu_486_p1 = tmp_254_fu_476_p5;
assign zext_ln96_fu_501_p1 = tmp_255_fu_491_p5;
always @ (posedge ap_clk) begin
    v10_0_addr_36_reg_701[0] <= 1'b1;
    v10_0_addr_36_reg_701_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_36_reg_701_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_36_reg_706[0] <= 1'b1;
    v10_1_addr_36_reg_706_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_36_reg_706_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_37_reg_736[1] <= 1'b1;
    v10_0_addr_37_reg_736_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_37_reg_736_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_37_reg_741[1] <= 1'b1;
    v10_1_addr_37_reg_741_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_37_reg_741_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_38_reg_746[1:0] <= 2'b11;
    v10_0_addr_38_reg_746_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_38_reg_746_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_38_reg_746_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_38_reg_756[1:0] <= 2'b11;
    v10_1_addr_38_reg_756_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_38_reg_756_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_38_reg_756_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
