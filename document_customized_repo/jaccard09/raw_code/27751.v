module backprop_backprop_Pipeline_VITIS_LOOP_26_12 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations3_i,activations3_o,activations3_o_ap_vld,activations3_2_i,activations3_2_o,activations3_2_o_ap_vld,activations3_1_i,activations3_1_o,activations3_1_o_ap_vld,biases3_address0,biases3_ce0,biases3_q0,grp_fu_3011_p_din0,grp_fu_3011_p_din1,grp_fu_3011_p_opcode,grp_fu_3011_p_dout0,grp_fu_3011_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] activations3_i;
output  [63:0] activations3_o;
output   activations3_o_ap_vld;
input  [63:0] activations3_2_i;
output  [63:0] activations3_2_o;
output   activations3_2_o_ap_vld;
input  [63:0] activations3_1_i;
output  [63:0] activations3_1_o;
output   activations3_1_o_ap_vld;
output  [1:0] biases3_address0;
output   biases3_ce0;
input  [63:0] biases3_q0;
output  [63:0] grp_fu_3011_p_din0;
output  [63:0] grp_fu_3011_p_din1;
output  [0:0] grp_fu_3011_p_opcode;
input  [63:0] grp_fu_3011_p_dout0;
output   grp_fu_3011_p_ce;
reg ap_idle;
reg[63:0] activations3_o;
reg activations3_o_ap_vld;
reg[63:0] activations3_2_o;
reg activations3_2_o_ap_vld;
reg[63:0] activations3_1_o;
reg activations3_1_o_ap_vld;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln26_fu_119_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] i_12_reg_172;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] i_12_reg_172_pp0_iter1_reg;
reg   [1:0] i_12_reg_172_pp0_iter2_reg;
reg   [1:0] i_12_reg_172_pp0_iter3_reg;
reg   [1:0] i_12_reg_172_pp0_iter4_reg;
reg   [1:0] i_12_reg_172_pp0_iter5_reg;
reg   [1:0] i_12_reg_172_pp0_iter6_reg;
reg   [1:0] i_12_reg_172_pp0_iter7_reg;
reg   [1:0] i_12_reg_172_pp0_iter8_reg;
wire   [63:0] tmp_4_fu_136_p9;
reg   [63:0] tmp_4_reg_180;
reg   [63:0] tmp_4_reg_180_pp0_iter1_reg;
reg   [63:0] biases3_load_reg_190;
wire   [63:0] bitcast_ln27_fu_161_p1;
wire   [63:0] zext_ln26_fu_131_p1;
wire    ap_block_pp0_stage0;
reg   [1:0] i_fu_48;
wire   [1:0] add_ln26_fu_125_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_12;
wire    ap_block_pp0_stage0_01001;
reg    biases3_ce0_local;
wire   [63:0] tmp_4_fu_136_p7;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_4_fu_136_p1;
wire   [1:0] tmp_4_fu_136_p3;
wire  signed [1:0] tmp_4_fu_136_p5;
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
#0 i_fu_48 = 2'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U82(.din0(activations3_i),.din1(activations3_1_i),.din2(activations3_2_i),.def(tmp_4_fu_136_p7),.sel(ap_sig_allocacmp_i_12),.dout(tmp_4_fu_136_p9));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
        if (((icmp_ln26_fu_119_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_48 <= add_ln26_fu_125_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_48 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        biases3_load_reg_190 <= biases3_q0;
        i_12_reg_172 <= ap_sig_allocacmp_i_12;
        i_12_reg_172_pp0_iter1_reg <= i_12_reg_172;
        tmp_4_reg_180 <= tmp_4_fu_136_p9;
        tmp_4_reg_180_pp0_iter1_reg <= tmp_4_reg_180;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        i_12_reg_172_pp0_iter2_reg <= i_12_reg_172_pp0_iter1_reg;
        i_12_reg_172_pp0_iter3_reg <= i_12_reg_172_pp0_iter2_reg;
        i_12_reg_172_pp0_iter4_reg <= i_12_reg_172_pp0_iter3_reg;
        i_12_reg_172_pp0_iter5_reg <= i_12_reg_172_pp0_iter4_reg;
        i_12_reg_172_pp0_iter6_reg <= i_12_reg_172_pp0_iter5_reg;
        i_12_reg_172_pp0_iter7_reg <= i_12_reg_172_pp0_iter6_reg;
        i_12_reg_172_pp0_iter8_reg <= i_12_reg_172_pp0_iter7_reg;
    end
end
always @ (*) begin
    if (((i_12_reg_172_pp0_iter8_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        activations3_1_o = grp_fu_3011_p_dout0;
    end else begin
        activations3_1_o = activations3_1_i;
    end
end
always @ (*) begin
    if (((i_12_reg_172_pp0_iter8_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        activations3_1_o_ap_vld = 1'b1;
    end else begin
        activations3_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((~(i_12_reg_172_pp0_iter8_reg == 2'd0) & ~(i_12_reg_172_pp0_iter8_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        activations3_2_o = grp_fu_3011_p_dout0;
    end else begin
        activations3_2_o = activations3_2_i;
    end
end
always @ (*) begin
    if ((~(i_12_reg_172_pp0_iter8_reg == 2'd0) & ~(i_12_reg_172_pp0_iter8_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        activations3_2_o_ap_vld = 1'b1;
    end else begin
        activations3_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_12_reg_172_pp0_iter8_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        activations3_o = grp_fu_3011_p_dout0;
    end else begin
        activations3_o = activations3_i;
    end
end
always @ (*) begin
    if (((i_12_reg_172_pp0_iter8_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        activations3_o_ap_vld = 1'b1;
    end else begin
        activations3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_119_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_12 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_12 = i_fu_48;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases3_ce0_local = 1'b1;
    end else begin
        biases3_ce0_local = 1'b0;
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
assign add_ln26_fu_125_p2 = (ap_sig_allocacmp_i_12 + 2'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign biases3_address0 = zext_ln26_fu_131_p1;
assign biases3_ce0 = biases3_ce0_local;
assign bitcast_ln27_fu_161_p1 = biases3_load_reg_190;
assign grp_fu_3011_p_ce = 1'b1;
assign grp_fu_3011_p_din0 = tmp_4_reg_180_pp0_iter1_reg;
assign grp_fu_3011_p_din1 = bitcast_ln27_fu_161_p1;
assign grp_fu_3011_p_opcode = 2'd0;
assign icmp_ln26_fu_119_p2 = ((ap_sig_allocacmp_i_12 == 2'd3) ? 1'b1 : 1'b0);
assign tmp_4_fu_136_p7 = 'bx;
assign zext_ln26_fu_131_p1 = ap_sig_allocacmp_i_12;
endmodule 