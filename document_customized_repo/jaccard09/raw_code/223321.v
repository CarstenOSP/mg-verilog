module SgdLR_sw_SgdLR_sw_Pipeline_label_49 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_address1,v2_1_ce1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_address1,v2_0_ce1,v2_0_q1,v3_address0,v3_ce0,v3_q0,grp_fu_313_p_din0,grp_fu_313_p_din1,grp_fu_313_p_opcode,grp_fu_313_p_dout0,grp_fu_313_p_ce,grp_fu_783_p_din0,grp_fu_783_p_din1,grp_fu_783_p_dout0,grp_fu_783_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
output  [8:0] v2_1_address1;
output   v2_1_ce1;
input  [31:0] v2_1_q1;
output  [8:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
output  [8:0] v2_0_address1;
output   v2_0_ce1;
input  [31:0] v2_0_q1;
output  [9:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [31:0] grp_fu_313_p_din0;
output  [31:0] grp_fu_313_p_din1;
output  [0:0] grp_fu_313_p_opcode;
input  [31:0] grp_fu_313_p_dout0;
output   grp_fu_313_p_ce;
output  [31:0] grp_fu_783_p_din0;
output  [31:0] grp_fu_783_p_din1;
input  [31:0] grp_fu_783_p_dout0;
output   grp_fu_783_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln55_fu_110_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln55_fu_127_p1;
reg   [0:0] trunc_ln55_reg_177;
reg   [0:0] trunc_ln55_reg_177_pp0_iter1_reg;
reg   [0:0] trunc_ln55_reg_177_pp0_iter2_reg;
reg   [0:0] trunc_ln55_reg_177_pp0_iter3_reg;
reg   [0:0] trunc_ln55_reg_177_pp0_iter4_reg;
reg   [0:0] trunc_ln55_reg_177_pp0_iter5_reg;
reg   [0:0] trunc_ln55_reg_177_pp0_iter6_reg;
reg   [0:0] trunc_ln55_reg_177_pp0_iter7_reg;
reg   [0:0] trunc_ln55_reg_177_pp0_iter8_reg;
reg   [0:0] trunc_ln55_reg_177_pp0_iter9_reg;
reg   [0:0] trunc_ln55_reg_177_pp0_iter10_reg;
reg   [0:0] trunc_ln55_reg_177_pp0_iter11_reg;
reg   [0:0] trunc_ln55_reg_177_pp0_iter12_reg;
reg   [8:0] lshr_ln55_3_reg_182;
reg   [8:0] lshr_ln55_3_reg_182_pp0_iter1_reg;
reg   [8:0] lshr_ln55_3_reg_182_pp0_iter2_reg;
reg   [8:0] lshr_ln55_3_reg_182_pp0_iter3_reg;
reg   [31:0] v26_reg_192;
reg   [8:0] v2_0_addr_reg_197;
reg   [8:0] v2_0_addr_reg_197_pp0_iter5_reg;
reg   [8:0] v2_0_addr_reg_197_pp0_iter6_reg;
reg   [8:0] v2_0_addr_reg_197_pp0_iter7_reg;
reg   [8:0] v2_0_addr_reg_197_pp0_iter8_reg;
reg   [8:0] v2_0_addr_reg_197_pp0_iter9_reg;
reg   [8:0] v2_0_addr_reg_197_pp0_iter10_reg;
reg   [8:0] v2_0_addr_reg_197_pp0_iter11_reg;
reg   [8:0] v2_0_addr_reg_197_pp0_iter12_reg;
reg   [8:0] v2_1_addr_reg_203;
reg   [8:0] v2_1_addr_reg_203_pp0_iter5_reg;
reg   [8:0] v2_1_addr_reg_203_pp0_iter6_reg;
reg   [8:0] v2_1_addr_reg_203_pp0_iter7_reg;
reg   [8:0] v2_1_addr_reg_203_pp0_iter8_reg;
reg   [8:0] v2_1_addr_reg_203_pp0_iter9_reg;
reg   [8:0] v2_1_addr_reg_203_pp0_iter10_reg;
reg   [8:0] v2_1_addr_reg_203_pp0_iter11_reg;
reg   [8:0] v2_1_addr_reg_203_pp0_iter12_reg;
reg   [31:0] v27_reg_209;
wire   [31:0] select_ln58_fu_151_p3;
reg   [31:0] select_ln58_reg_214;
wire   [31:0] v28_fu_158_p1;
wire   [31:0] bitcast_ln60_fu_162_p1;
reg   [31:0] bitcast_ln60_reg_224;
wire   [63:0] zext_ln55_fu_122_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_1_fu_146_p1;
reg   [10:0] v25_fu_42;
wire   [10:0] add_ln55_fu_116_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_1;
reg    v3_ce0_local;
reg    v2_0_ce1_local;
reg    v2_0_we0_local;
reg    v2_0_ce0_local;
reg    v2_1_ce1_local;
reg    v2_1_we0_local;
reg    v2_1_ce0_local;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
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
#0 v25_fu_42 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln55_fu_110_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v25_fu_42 <= add_ln55_fu_116_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_42 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        bitcast_ln60_reg_224 <= bitcast_ln60_fu_162_p1;
        lshr_ln55_3_reg_182_pp0_iter2_reg <= lshr_ln55_3_reg_182_pp0_iter1_reg;
        lshr_ln55_3_reg_182_pp0_iter3_reg <= lshr_ln55_3_reg_182_pp0_iter2_reg;
        select_ln58_reg_214 <= select_ln58_fu_151_p3;
        trunc_ln55_reg_177_pp0_iter10_reg <= trunc_ln55_reg_177_pp0_iter9_reg;
        trunc_ln55_reg_177_pp0_iter11_reg <= trunc_ln55_reg_177_pp0_iter10_reg;
        trunc_ln55_reg_177_pp0_iter12_reg <= trunc_ln55_reg_177_pp0_iter11_reg;
        trunc_ln55_reg_177_pp0_iter2_reg <= trunc_ln55_reg_177_pp0_iter1_reg;
        trunc_ln55_reg_177_pp0_iter3_reg <= trunc_ln55_reg_177_pp0_iter2_reg;
        trunc_ln55_reg_177_pp0_iter4_reg <= trunc_ln55_reg_177_pp0_iter3_reg;
        trunc_ln55_reg_177_pp0_iter5_reg <= trunc_ln55_reg_177_pp0_iter4_reg;
        trunc_ln55_reg_177_pp0_iter6_reg <= trunc_ln55_reg_177_pp0_iter5_reg;
        trunc_ln55_reg_177_pp0_iter7_reg <= trunc_ln55_reg_177_pp0_iter6_reg;
        trunc_ln55_reg_177_pp0_iter8_reg <= trunc_ln55_reg_177_pp0_iter7_reg;
        trunc_ln55_reg_177_pp0_iter9_reg <= trunc_ln55_reg_177_pp0_iter8_reg;
        v27_reg_209 <= grp_fu_783_p_dout0;
        v2_0_addr_reg_197 <= zext_ln55_1_fu_146_p1;
        v2_0_addr_reg_197_pp0_iter10_reg <= v2_0_addr_reg_197_pp0_iter9_reg;
        v2_0_addr_reg_197_pp0_iter11_reg <= v2_0_addr_reg_197_pp0_iter10_reg;
        v2_0_addr_reg_197_pp0_iter12_reg <= v2_0_addr_reg_197_pp0_iter11_reg;
        v2_0_addr_reg_197_pp0_iter5_reg <= v2_0_addr_reg_197;
        v2_0_addr_reg_197_pp0_iter6_reg <= v2_0_addr_reg_197_pp0_iter5_reg;
        v2_0_addr_reg_197_pp0_iter7_reg <= v2_0_addr_reg_197_pp0_iter6_reg;
        v2_0_addr_reg_197_pp0_iter8_reg <= v2_0_addr_reg_197_pp0_iter7_reg;
        v2_0_addr_reg_197_pp0_iter9_reg <= v2_0_addr_reg_197_pp0_iter8_reg;
        v2_1_addr_reg_203 <= zext_ln55_1_fu_146_p1;
        v2_1_addr_reg_203_pp0_iter10_reg <= v2_1_addr_reg_203_pp0_iter9_reg;
        v2_1_addr_reg_203_pp0_iter11_reg <= v2_1_addr_reg_203_pp0_iter10_reg;
        v2_1_addr_reg_203_pp0_iter12_reg <= v2_1_addr_reg_203_pp0_iter11_reg;
        v2_1_addr_reg_203_pp0_iter5_reg <= v2_1_addr_reg_203;
        v2_1_addr_reg_203_pp0_iter6_reg <= v2_1_addr_reg_203_pp0_iter5_reg;
        v2_1_addr_reg_203_pp0_iter7_reg <= v2_1_addr_reg_203_pp0_iter6_reg;
        v2_1_addr_reg_203_pp0_iter8_reg <= v2_1_addr_reg_203_pp0_iter7_reg;
        v2_1_addr_reg_203_pp0_iter9_reg <= v2_1_addr_reg_203_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln55_3_reg_182 <= {{ap_sig_allocacmp_v25_1[9:1]}};
        lshr_ln55_3_reg_182_pp0_iter1_reg <= lshr_ln55_3_reg_182;
        trunc_ln55_reg_177 <= trunc_ln55_fu_127_p1;
        trunc_ln55_reg_177_pp0_iter1_reg <= trunc_ln55_reg_177;
        v26_reg_192 <= v3_q0;
    end
end
always @ (*) begin
    if (((icmp_ln55_fu_110_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_1 = v25_fu_42;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_reg_177_pp0_iter12_reg == 1'd0))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_reg_177_pp0_iter12_reg == 1'd1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_116_p2 = (ap_sig_allocacmp_v25_1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_fu_162_p1 = grp_fu_313_p_dout0;
assign grp_fu_313_p_ce = 1'b1;
assign grp_fu_313_p_din0 = v28_fu_158_p1;
assign grp_fu_313_p_din1 = v27_reg_209;
assign grp_fu_313_p_opcode = 2'd0;
assign grp_fu_783_p_ce = 1'b1;
assign grp_fu_783_p_din0 = v26_reg_192;
assign grp_fu_783_p_din1 = 32'd3345637376;
assign icmp_ln55_fu_110_p2 = ((ap_sig_allocacmp_v25_1 == 11'd1024) ? 1'b1 : 1'b0);
assign select_ln58_fu_151_p3 = ((trunc_ln55_reg_177_pp0_iter4_reg[0:0] == 1'b1) ? v2_1_q1 : v2_0_q1);
assign trunc_ln55_fu_127_p1 = ap_sig_allocacmp_v25_1[0:0];
assign v28_fu_158_p1 = select_ln58_reg_214;
assign v2_0_address0 = v2_0_addr_reg_197_pp0_iter12_reg;
assign v2_0_address1 = zext_ln55_1_fu_146_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_reg_224;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_addr_reg_203_pp0_iter12_reg;
assign v2_1_address1 = zext_ln55_1_fu_146_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_reg_224;
assign v2_1_we0 = v2_1_we0_local;
assign v3_address0 = zext_ln55_fu_122_p1;
assign v3_ce0 = v3_ce0_local;
assign zext_ln55_1_fu_146_p1 = lshr_ln55_3_reg_182_pp0_iter3_reg;
assign zext_ln55_fu_122_p1 = ap_sig_allocacmp_v25_1;
endmodule 