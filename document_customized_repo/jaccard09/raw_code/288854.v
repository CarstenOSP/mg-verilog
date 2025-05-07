module backprop_backprop_Pipeline_label_19 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_address0,v2_ce0,v2_q0,v2_address1,v2_ce1,v2_q1,v117,v117_1,v117_2,v8_address0,v8_ce0,v8_we0,v8_d0,v16_address0,v16_ce0,v16_q0,grp_fu_2500_p_din0,grp_fu_2500_p_din1,grp_fu_2500_p_opcode,grp_fu_2500_p_dout0,grp_fu_2500_p_ce,grp_fu_2504_p_din0,grp_fu_2504_p_din1,grp_fu_2504_p_opcode,grp_fu_2504_p_dout0,grp_fu_2504_p_ce,grp_fu_2508_p_din0,grp_fu_2508_p_din1,grp_fu_2508_p_dout0,grp_fu_2508_p_ce,grp_fu_2512_p_din0,grp_fu_2512_p_din1,grp_fu_2512_p_dout0,grp_fu_2512_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v2_address0;
output   v2_ce0;
input  [63:0] v2_q0;
output  [7:0] v2_address1;
output   v2_ce1;
input  [63:0] v2_q1;
input  [63:0] v117;
input  [63:0] v117_1;
input  [63:0] v117_2;
output  [5:0] v8_address0;
output   v8_ce0;
output   v8_we0;
output  [63:0] v8_d0;
output  [5:0] v16_address0;
output   v16_ce0;
input  [63:0] v16_q0;
output  [63:0] grp_fu_2500_p_din0;
output  [63:0] grp_fu_2500_p_din1;
output  [0:0] grp_fu_2500_p_opcode;
input  [63:0] grp_fu_2500_p_dout0;
output   grp_fu_2500_p_ce;
output  [63:0] grp_fu_2504_p_din0;
output  [63:0] grp_fu_2504_p_din1;
output  [0:0] grp_fu_2504_p_opcode;
input  [63:0] grp_fu_2504_p_dout0;
output   grp_fu_2504_p_ce;
output  [63:0] grp_fu_2508_p_din0;
output  [63:0] grp_fu_2508_p_din1;
input  [63:0] grp_fu_2508_p_dout0;
output   grp_fu_2508_p_ce;
output  [63:0] grp_fu_2512_p_din0;
output  [63:0] grp_fu_2512_p_din1;
input  [63:0] grp_fu_2512_p_dout0;
output   grp_fu_2512_p_ce;
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
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln190_reg_274;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_152;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v110_1_reg_268;
reg   [6:0] v110_1_reg_268_pp0_iter1_reg;
reg   [6:0] v110_1_reg_268_pp0_iter2_reg;
reg   [6:0] v110_1_reg_268_pp0_iter3_reg;
reg   [6:0] v110_1_reg_268_pp0_iter4_reg;
reg   [6:0] v110_1_reg_268_pp0_iter5_reg;
reg   [6:0] v110_1_reg_268_pp0_iter6_reg;
reg   [6:0] v110_1_reg_268_pp0_iter7_reg;
reg   [6:0] v110_1_reg_268_pp0_iter8_reg;
reg   [6:0] v110_1_reg_268_pp0_iter9_reg;
reg   [6:0] v110_1_reg_268_pp0_iter10_reg;
reg   [6:0] v110_1_reg_268_pp0_iter11_reg;
reg   [6:0] v110_1_reg_268_pp0_iter12_reg;
reg   [6:0] v110_1_reg_268_pp0_iter13_reg;
reg   [6:0] v110_1_reg_268_pp0_iter14_reg;
reg   [6:0] v110_1_reg_268_pp0_iter15_reg;
wire   [0:0] icmp_ln190_fu_165_p2;
wire   [7:0] sub_ln193_fu_187_p2;
reg   [7:0] sub_ln193_reg_278;
wire   [63:0] v118_fu_228_p1;
reg   [63:0] v2_load_2_reg_304;
wire   [63:0] v118_1_fu_233_p1;
wire   [63:0] v118_2_fu_238_p1;
reg   [63:0] v119_reg_319;
reg   [63:0] v119_1_reg_324;
reg   [63:0] v119_1_reg_324_pp0_iter5_reg;
reg   [63:0] v119_1_reg_324_pp0_iter6_reg;
reg   [63:0] v119_1_reg_324_pp0_iter7_reg;
reg   [63:0] v119_2_reg_329;
reg   [63:0] v119_2_reg_329_pp0_iter5_reg;
reg   [63:0] v119_2_reg_329_pp0_iter6_reg;
reg   [63:0] v119_2_reg_329_pp0_iter7_reg;
reg   [63:0] v119_2_reg_329_pp0_iter8_reg;
reg   [63:0] v119_2_reg_329_pp0_iter9_reg;
reg   [63:0] v119_2_reg_329_pp0_iter10_reg;
reg   [63:0] v119_2_reg_329_pp0_iter11_reg;
reg   [63:0] v119_2_reg_329_pp0_iter12_reg;
reg   [63:0] v121_3_reg_334;
reg   [63:0] v121_4_reg_339;
wire   [63:0] zext_ln190_fu_242_p1;
reg   [63:0] zext_ln190_reg_344;
reg   [63:0] zext_ln190_reg_344_pp0_iter17_reg;
reg   [63:0] zext_ln190_reg_344_pp0_iter18_reg;
reg   [63:0] zext_ln190_reg_344_pp0_iter19_reg;
reg   [63:0] zext_ln190_reg_344_pp0_iter20_reg;
reg   [63:0] v121_reg_354;
reg   [63:0] v123_reg_359;
reg   [63:0] v124_reg_364;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln193_fu_193_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln199_fu_208_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln199_1_fu_218_p1;
reg   [6:0] v110_fu_54;
wire   [6:0] add_ln190_fu_198_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v110_1;
reg    v2_ce0_local;
reg   [7:0] v2_address0_local;
reg    v2_ce1_local;
reg    v16_ce0_local;
reg    v8_we0_local;
reg    v8_ce0_local;
reg   [63:0] grp_fu_135_p0;
reg   [63:0] grp_fu_135_p1;
reg   [63:0] grp_fu_144_p0;
reg   [63:0] grp_fu_144_p1;
reg   [63:0] grp_fu_148_p0;
reg   [63:0] grp_fu_148_p1;
wire   [5:0] trunc_ln193_fu_175_p1;
wire   [7:0] p_shl_fu_179_p3;
wire   [7:0] zext_ln190_1_fu_171_p1;
wire   [7:0] add_ln199_fu_203_p2;
wire   [7:0] add_ln199_1_fu_213_p2;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to20;
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
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v110_fu_54 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter19_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
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
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_152 <= v2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_152 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v110_fu_54 <= 7'd0;
    end else if (((icmp_ln190_reg_274 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v110_fu_54 <= add_ln190_fu_198_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        v119_1_reg_324_pp0_iter5_reg <= v119_1_reg_324;
        v119_1_reg_324_pp0_iter6_reg <= v119_1_reg_324_pp0_iter5_reg;
        v119_1_reg_324_pp0_iter7_reg <= v119_1_reg_324_pp0_iter6_reg;
        v119_2_reg_329_pp0_iter10_reg <= v119_2_reg_329_pp0_iter9_reg;
        v119_2_reg_329_pp0_iter11_reg <= v119_2_reg_329_pp0_iter10_reg;
        v119_2_reg_329_pp0_iter12_reg <= v119_2_reg_329_pp0_iter11_reg;
        v119_2_reg_329_pp0_iter5_reg <= v119_2_reg_329;
        v119_2_reg_329_pp0_iter6_reg <= v119_2_reg_329_pp0_iter5_reg;
        v119_2_reg_329_pp0_iter7_reg <= v119_2_reg_329_pp0_iter6_reg;
        v119_2_reg_329_pp0_iter8_reg <= v119_2_reg_329_pp0_iter7_reg;
        v119_2_reg_329_pp0_iter9_reg <= v119_2_reg_329_pp0_iter8_reg;
        v123_reg_359 <= v16_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln190_reg_274 <= icmp_ln190_fu_165_p2;
        sub_ln193_reg_278 <= sub_ln193_fu_187_p2;
        v110_1_reg_268 <= ap_sig_allocacmp_v110_1;
        v110_1_reg_268_pp0_iter10_reg <= v110_1_reg_268_pp0_iter9_reg;
        v110_1_reg_268_pp0_iter11_reg <= v110_1_reg_268_pp0_iter10_reg;
        v110_1_reg_268_pp0_iter12_reg <= v110_1_reg_268_pp0_iter11_reg;
        v110_1_reg_268_pp0_iter13_reg <= v110_1_reg_268_pp0_iter12_reg;
        v110_1_reg_268_pp0_iter14_reg <= v110_1_reg_268_pp0_iter13_reg;
        v110_1_reg_268_pp0_iter15_reg <= v110_1_reg_268_pp0_iter14_reg;
        v110_1_reg_268_pp0_iter1_reg <= v110_1_reg_268;
        v110_1_reg_268_pp0_iter2_reg <= v110_1_reg_268_pp0_iter1_reg;
        v110_1_reg_268_pp0_iter3_reg <= v110_1_reg_268_pp0_iter2_reg;
        v110_1_reg_268_pp0_iter4_reg <= v110_1_reg_268_pp0_iter3_reg;
        v110_1_reg_268_pp0_iter5_reg <= v110_1_reg_268_pp0_iter4_reg;
        v110_1_reg_268_pp0_iter6_reg <= v110_1_reg_268_pp0_iter5_reg;
        v110_1_reg_268_pp0_iter7_reg <= v110_1_reg_268_pp0_iter6_reg;
        v110_1_reg_268_pp0_iter8_reg <= v110_1_reg_268_pp0_iter7_reg;
        v110_1_reg_268_pp0_iter9_reg <= v110_1_reg_268_pp0_iter8_reg;
        v121_4_reg_339 <= grp_fu_2504_p_dout0;
        zext_ln190_reg_344[6 : 0] <= zext_ln190_fu_242_p1[6 : 0];
        zext_ln190_reg_344_pp0_iter17_reg[6 : 0] <= zext_ln190_reg_344[6 : 0];
        zext_ln190_reg_344_pp0_iter18_reg[6 : 0] <= zext_ln190_reg_344_pp0_iter17_reg[6 : 0];
        zext_ln190_reg_344_pp0_iter19_reg[6 : 0] <= zext_ln190_reg_344_pp0_iter18_reg[6 : 0];
        zext_ln190_reg_344_pp0_iter20_reg[6 : 0] <= zext_ln190_reg_344_pp0_iter19_reg[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v119_1_reg_324 <= grp_fu_2508_p_dout0;
        v119_2_reg_329 <= grp_fu_2512_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v119_reg_319 <= grp_fu_2508_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v121_3_reg_334 <= grp_fu_2500_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v121_reg_354 <= grp_fu_2500_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_reg_364 <= grp_fu_2512_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_load_2_reg_304 <= v2_q0;
    end
end
always @ (*) begin
    if (((icmp_ln190_reg_274 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter19_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to20 = 1'b1;
    end else begin
        ap_idle_pp0_1to20 = 1'b0;
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
        ap_sig_allocacmp_v110_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v110_1 = v110_fu_54;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_135_p0 = v121_4_reg_339;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_135_p0 = v119_reg_319;
    end else begin
        grp_fu_135_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_135_p1 = v119_2_reg_329_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_135_p1 = 64'd0;
    end else begin
        grp_fu_135_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_144_p0 = v117_1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_144_p0 = v117;
        end else begin
            grp_fu_144_p0 = 'bx;
        end
    end else begin
        grp_fu_144_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_144_p1 = v118_1_fu_233_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_144_p1 = v118_fu_228_p1;
        end else begin
            grp_fu_144_p1 = 'bx;
        end
    end else begin
        grp_fu_144_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_148_p0 = v121_reg_354;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_148_p0 = v117_2;
    end else begin
        grp_fu_148_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_148_p1 = v123_reg_359;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_148_p1 = v118_2_fu_238_p1;
    end else begin
        grp_fu_148_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16_ce0_local = 1'b1;
    end else begin
        v16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v2_address0_local = zext_ln199_1_fu_218_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v2_address0_local = zext_ln193_fu_193_p1;
        end else begin
            v2_address0_local = 'bx;
        end
    end else begin
        v2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v8_ce0_local = 1'b1;
    end else begin
        v8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v8_we0_local = 1'b1;
    end else begin
        v8_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to20 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln190_fu_198_p2 = (v110_1_reg_268 + 7'd1);
assign add_ln199_1_fu_213_p2 = (sub_ln193_reg_278 + 8'd2);
assign add_ln199_fu_203_p2 = (sub_ln193_reg_278 + 8'd1);
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
assign grp_fu_2500_p_ce = 1'b1;
assign grp_fu_2500_p_din0 = grp_fu_135_p0;
assign grp_fu_2500_p_din1 = grp_fu_135_p1;
assign grp_fu_2500_p_opcode = 2'd0;
assign grp_fu_2504_p_ce = 1'b1;
assign grp_fu_2504_p_din0 = v121_3_reg_334;
assign grp_fu_2504_p_din1 = v119_1_reg_324_pp0_iter7_reg;
assign grp_fu_2504_p_opcode = 2'd0;
assign grp_fu_2508_p_ce = 1'b1;
assign grp_fu_2508_p_din0 = grp_fu_144_p0;
assign grp_fu_2508_p_din1 = grp_fu_144_p1;
assign grp_fu_2512_p_ce = 1'b1;
assign grp_fu_2512_p_din0 = grp_fu_148_p0;
assign grp_fu_2512_p_din1 = grp_fu_148_p1;
assign icmp_ln190_fu_165_p2 = ((ap_sig_allocacmp_v110_1 == 7'd64) ? 1'b1 : 1'b0);
assign p_shl_fu_179_p3 = {{trunc_ln193_fu_175_p1}, {2'd0}};
assign sub_ln193_fu_187_p2 = (p_shl_fu_179_p3 - zext_ln190_1_fu_171_p1);
assign trunc_ln193_fu_175_p1 = ap_sig_allocacmp_v110_1[5:0];
assign v118_1_fu_233_p1 = reg_152;
assign v118_2_fu_238_p1 = v2_load_2_reg_304;
assign v118_fu_228_p1 = reg_152;
assign v16_address0 = zext_ln190_fu_242_p1;
assign v16_ce0 = v16_ce0_local;
assign v2_address0 = v2_address0_local;
assign v2_address1 = zext_ln199_fu_208_p1;
assign v2_ce0 = v2_ce0_local;
assign v2_ce1 = v2_ce1_local;
assign v8_address0 = zext_ln190_reg_344_pp0_iter20_reg;
assign v8_ce0 = v8_ce0_local;
assign v8_d0 = v124_reg_364;
assign v8_we0 = v8_we0_local;
assign zext_ln190_1_fu_171_p1 = ap_sig_allocacmp_v110_1;
assign zext_ln190_fu_242_p1 = v110_1_reg_268_pp0_iter15_reg;
assign zext_ln193_fu_193_p1 = sub_ln193_fu_187_p2;
assign zext_ln199_1_fu_218_p1 = add_ln199_1_fu_213_p2;
assign zext_ln199_fu_208_p1 = add_ln199_fu_203_p2;
always @ (posedge ap_clk) begin
    zext_ln190_reg_344[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln190_reg_344_pp0_iter17_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln190_reg_344_pp0_iter18_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln190_reg_344_pp0_iter19_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln190_reg_344_pp0_iter20_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 