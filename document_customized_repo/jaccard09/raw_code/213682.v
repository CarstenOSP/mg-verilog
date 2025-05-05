module SgdLR_sw_SgdLR_sw_Pipeline_label_412 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_address0,v2_ce0,v2_we0,v2_d0,v2_q0,v2_address1,v2_ce1,v2_we1,v2_d1,v2_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v3_1_address0,v3_1_ce0,v3_1_q0,v3_1_address1,v3_1_ce1,v3_1_q1,grp_fu_786_p_din0,grp_fu_786_p_din1,grp_fu_786_p_opcode,grp_fu_786_p_dout0,grp_fu_786_p_ce,grp_fu_2072_p_din0,grp_fu_2072_p_din1,grp_fu_2072_p_dout0,grp_fu_2072_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v2_address0;
output   v2_ce0;
output   v2_we0;
output  [31:0] v2_d0;
input  [31:0] v2_q0;
output  [9:0] v2_address1;
output   v2_ce1;
output   v2_we1;
output  [31:0] v2_d1;
input  [31:0] v2_q1;
output  [8:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [8:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [8:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [8:0] v3_1_address1;
output   v3_1_ce1;
input  [31:0] v3_1_q1;
output  [31:0] grp_fu_786_p_din0;
output  [31:0] grp_fu_786_p_din1;
output  [0:0] grp_fu_786_p_opcode;
input  [31:0] grp_fu_786_p_dout0;
output   grp_fu_786_p_ce;
output  [31:0] grp_fu_2072_p_din0;
output  [31:0] grp_fu_2072_p_din1;
input  [31:0] grp_fu_2072_p_dout0;
output   grp_fu_2072_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_282;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [10:0] v25_reg_274;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] v25_reg_274_pp0_iter1_reg;
wire   [31:0] v26_fu_199_p3;
reg   [31:0] v26_reg_306;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] v26_7_fu_207_p3;
reg   [31:0] v26_7_reg_311;
reg   [9:0] v2_addr_reg_316;
reg   [9:0] v2_addr_reg_316_pp0_iter3_reg;
reg   [9:0] v2_addr_reg_316_pp0_iter4_reg;
reg   [9:0] v2_addr_reg_316_pp0_iter5_reg;
reg   [9:0] v2_addr_reg_316_pp0_iter6_reg;
reg   [9:0] v2_addr_7_reg_321;
reg   [9:0] v2_addr_7_reg_321_pp0_iter3_reg;
reg   [9:0] v2_addr_7_reg_321_pp0_iter4_reg;
reg   [9:0] v2_addr_7_reg_321_pp0_iter5_reg;
reg   [9:0] v2_addr_7_reg_321_pp0_iter6_reg;
reg   [9:0] v2_addr_7_reg_321_pp0_iter7_reg;
reg   [31:0] v27_reg_326;
reg   [31:0] v2_load_reg_331;
reg   [31:0] v2_load_7_reg_336;
wire   [31:0] v28_fu_251_p1;
reg   [31:0] v27_6_reg_346;
wire   [31:0] v28_7_fu_255_p1;
reg   [31:0] v29_reg_356;
reg   [31:0] v29_6_reg_361;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_6_fu_162_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_6_fu_186_p1;
wire   [63:0] zext_ln55_fu_225_p1;
wire   [63:0] zext_ln56_fu_246_p1;
reg   [10:0] v25_4_fu_54;
wire   [10:0] add_ln55_fu_215_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25;
reg    v3_ce1_local;
reg    v3_ce0_local;
reg    v3_1_ce1_local;
reg    v3_1_ce0_local;
reg    v2_ce1_local;
reg   [9:0] v2_address1_local;
reg    v2_ce0_local;
reg   [9:0] v2_address0_local;
reg    v2_we1_local;
wire   [31:0] bitcast_ln60_fu_259_p1;
wire    ap_block_pp0_stage1;
reg    v2_we0_local;
wire   [31:0] bitcast_ln60_6_fu_263_p1;
reg   [31:0] grp_fu_133_p0;
reg   [31:0] grp_fu_133_p1;
reg   [31:0] grp_fu_137_p0;
wire   [8:0] trunc_ln55_fu_158_p1;
wire   [7:0] tmp_8_fu_168_p4;
wire   [8:0] or_ln56_4_fu_178_p3;
wire   [0:0] tmp_7_fu_192_p3;
wire   [8:0] tmp_s_fu_229_p4;
wire   [9:0] or_ln55_4_fu_238_p3;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_4_fu_54 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v25_4_fu_54 <= 11'd0;
    end else if (((tmp_reg_282 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v25_4_fu_54 <= add_ln55_fu_215_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        v26_7_reg_311 <= v26_7_fu_207_p3;
        v26_reg_306 <= v26_fu_199_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_282 <= ap_sig_allocacmp_v25[32'd10];
        v25_reg_274 <= ap_sig_allocacmp_v25;
        v25_reg_274_pp0_iter1_reg <= v25_reg_274;
        v2_addr_7_reg_321[9 : 1] <= zext_ln56_fu_246_p1[9 : 1];
        v2_addr_7_reg_321_pp0_iter3_reg[9 : 1] <= v2_addr_7_reg_321[9 : 1];
        v2_addr_7_reg_321_pp0_iter4_reg[9 : 1] <= v2_addr_7_reg_321_pp0_iter3_reg[9 : 1];
        v2_addr_7_reg_321_pp0_iter5_reg[9 : 1] <= v2_addr_7_reg_321_pp0_iter4_reg[9 : 1];
        v2_addr_7_reg_321_pp0_iter6_reg[9 : 1] <= v2_addr_7_reg_321_pp0_iter5_reg[9 : 1];
        v2_addr_7_reg_321_pp0_iter7_reg[9 : 1] <= v2_addr_7_reg_321_pp0_iter6_reg[9 : 1];
        v2_addr_reg_316 <= zext_ln55_fu_225_p1;
        v2_addr_reg_316_pp0_iter3_reg <= v2_addr_reg_316;
        v2_addr_reg_316_pp0_iter4_reg <= v2_addr_reg_316_pp0_iter3_reg;
        v2_addr_reg_316_pp0_iter5_reg <= v2_addr_reg_316_pp0_iter4_reg;
        v2_addr_reg_316_pp0_iter6_reg <= v2_addr_reg_316_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_6_reg_346 <= grp_fu_2072_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_reg_326 <= grp_fu_2072_p_dout0;
        v2_load_7_reg_336 <= v2_q0;
        v2_load_reg_331 <= v2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_6_reg_361 <= grp_fu_786_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_reg_356 <= grp_fu_786_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_282 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25 = v25_4_fu_54;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_133_p0 = v28_7_fu_255_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_133_p0 = v28_fu_251_p1;
        end else begin
            grp_fu_133_p0 = 'bx;
        end
    end else begin
        grp_fu_133_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_133_p1 = v27_6_reg_346;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_133_p1 = v27_reg_326;
        end else begin
            grp_fu_133_p1 = 'bx;
        end
    end else begin
        grp_fu_133_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_137_p0 = v26_7_reg_311;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_137_p0 = v26_reg_306;
        end else begin
            grp_fu_137_p0 = 'bx;
        end
    end else begin
        grp_fu_137_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_address0_local = v2_addr_7_reg_321_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_address0_local = zext_ln56_fu_246_p1;
    end else begin
        v2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_address1_local = v2_addr_reg_316_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_address1_local = zext_ln55_fu_225_p1;
    end else begin
        v2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_we0_local = 1'b1;
    end else begin
        v2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_we1_local = 1'b1;
    end else begin
        v2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_215_p2 = (v25_reg_274 + 11'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_6_fu_263_p1 = v29_6_reg_361;
assign bitcast_ln60_fu_259_p1 = v29_reg_356;
assign grp_fu_2072_p_ce = 1'b1;
assign grp_fu_2072_p_din0 = grp_fu_137_p0;
assign grp_fu_2072_p_din1 = 32'd3345637376;
assign grp_fu_786_p_ce = 1'b1;
assign grp_fu_786_p_din0 = grp_fu_133_p0;
assign grp_fu_786_p_din1 = grp_fu_133_p1;
assign grp_fu_786_p_opcode = 2'd0;
assign or_ln55_4_fu_238_p3 = {{tmp_s_fu_229_p4}, {1'd1}};
assign or_ln56_4_fu_178_p3 = {{tmp_8_fu_168_p4}, {1'd1}};
assign tmp_7_fu_192_p3 = v25_reg_274[32'd9];
assign tmp_8_fu_168_p4 = {{ap_sig_allocacmp_v25[8:1]}};
assign tmp_s_fu_229_p4 = {{v25_reg_274_pp0_iter1_reg[9:1]}};
assign trunc_ln55_fu_158_p1 = ap_sig_allocacmp_v25[8:0];
assign v26_7_fu_207_p3 = ((tmp_7_fu_192_p3[0:0] == 1'b1) ? v3_1_q0 : v3_q0);
assign v26_fu_199_p3 = ((tmp_7_fu_192_p3[0:0] == 1'b1) ? v3_1_q1 : v3_q1);
assign v28_7_fu_255_p1 = v2_load_7_reg_336;
assign v28_fu_251_p1 = v2_load_reg_331;
assign v2_address0 = v2_address0_local;
assign v2_address1 = v2_address1_local;
assign v2_ce0 = v2_ce0_local;
assign v2_ce1 = v2_ce1_local;
assign v2_d0 = bitcast_ln60_6_fu_263_p1;
assign v2_d1 = bitcast_ln60_fu_259_p1;
assign v2_we0 = v2_we0_local;
assign v2_we1 = v2_we1_local;
assign v3_1_address0 = zext_ln56_6_fu_186_p1;
assign v3_1_address1 = zext_ln55_6_fu_162_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_address0 = zext_ln56_6_fu_186_p1;
assign v3_address1 = zext_ln55_6_fu_162_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_6_fu_162_p1 = trunc_ln55_fu_158_p1;
assign zext_ln55_fu_225_p1 = v25_reg_274_pp0_iter1_reg;
assign zext_ln56_6_fu_186_p1 = or_ln56_4_fu_178_p3;
assign zext_ln56_fu_246_p1 = or_ln55_4_fu_238_p3;
always @ (posedge ap_clk) begin
    v2_addr_7_reg_321[0] <= 1'b1;
    v2_addr_7_reg_321_pp0_iter3_reg[0] <= 1'b1;
    v2_addr_7_reg_321_pp0_iter4_reg[0] <= 1'b1;
    v2_addr_7_reg_321_pp0_iter5_reg[0] <= 1'b1;
    v2_addr_7_reg_321_pp0_iter6_reg[0] <= 1'b1;
    v2_addr_7_reg_321_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 