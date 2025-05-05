module backprop_backprop_Pipeline_label_12 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v18_i,v18_o,v18_o_ap_vld,v18_2_i,v18_2_o,v18_2_o_ap_vld,v18_1_i,v18_1_o,v18_1_o_ap_vld,empty_34,empty_35,empty,grp_fu_1881_p_din0,grp_fu_1881_p_din1,grp_fu_1881_p_opcode,grp_fu_1881_p_dout0,grp_fu_1881_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] v18_i;
output  [63:0] v18_o;
output   v18_o_ap_vld;
input  [63:0] v18_2_i;
output  [63:0] v18_2_o;
output   v18_2_o_ap_vld;
input  [63:0] v18_1_i;
output  [63:0] v18_1_o;
output   v18_1_o_ap_vld;
input  [63:0] empty_34;
input  [63:0] empty_35;
input  [63:0] empty;
output  [63:0] grp_fu_1881_p_din0;
output  [63:0] grp_fu_1881_p_din1;
output  [0:0] grp_fu_1881_p_opcode;
input  [63:0] grp_fu_1881_p_dout0;
output   grp_fu_1881_p_ce;
reg ap_idle;
reg[63:0] v18_o;
reg v18_o_ap_vld;
reg[63:0] v18_2_o;
reg v18_2_o_ap_vld;
reg[63:0] v18_1_o;
reg v18_1_o_ap_vld;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln133_fu_124_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] v68_1_reg_200;
reg   [1:0] v68_1_reg_200_pp0_iter1_reg;
reg   [1:0] v68_1_reg_200_pp0_iter2_reg;
reg   [1:0] v68_1_reg_200_pp0_iter3_reg;
reg   [1:0] v68_1_reg_200_pp0_iter4_reg;
reg   [1:0] v68_1_reg_200_pp0_iter5_reg;
reg   [1:0] v68_1_reg_200_pp0_iter6_reg;
reg   [1:0] v68_1_reg_200_pp0_iter7_reg;
wire   [63:0] v69_fu_136_p9;
reg   [63:0] v69_reg_209;
wire   [63:0] v70_fu_161_p9;
reg   [1:0] v68_fu_48;
wire   [1:0] add_ln133_fu_130_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_v68_1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage0_01001;
wire   [63:0] v69_fu_136_p7;
wire   [63:0] v70_fu_161_p7;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v69_fu_136_p1;
wire   [1:0] v69_fu_136_p3;
wire  signed [1:0] v69_fu_136_p5;
wire   [1:0] v70_fu_161_p1;
wire   [1:0] v70_fu_161_p3;
wire  signed [1:0] v70_fu_161_p5;
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
#0 v68_fu_48 = 2'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U99(.din0(v18_i),.din1(v18_1_i),.din2(v18_2_i),.def(v69_fu_136_p7),.sel(ap_sig_allocacmp_v68_1),.dout(v69_fu_136_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U100(.din0(empty_34),.din1(empty_35),.din2(empty),.def(v70_fu_161_p7),.sel(v68_1_reg_200),.dout(v70_fu_161_p9));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln133_fu_124_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v68_fu_48 <= add_ln133_fu_130_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v68_fu_48 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v68_1_reg_200 <= ap_sig_allocacmp_v68_1;
        v68_1_reg_200_pp0_iter1_reg <= v68_1_reg_200;
        v69_reg_209 <= v69_fu_136_p9;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        v68_1_reg_200_pp0_iter2_reg <= v68_1_reg_200_pp0_iter1_reg;
        v68_1_reg_200_pp0_iter3_reg <= v68_1_reg_200_pp0_iter2_reg;
        v68_1_reg_200_pp0_iter4_reg <= v68_1_reg_200_pp0_iter3_reg;
        v68_1_reg_200_pp0_iter5_reg <= v68_1_reg_200_pp0_iter4_reg;
        v68_1_reg_200_pp0_iter6_reg <= v68_1_reg_200_pp0_iter5_reg;
        v68_1_reg_200_pp0_iter7_reg <= v68_1_reg_200_pp0_iter6_reg;
    end
end
always @ (*) begin
    if (((icmp_ln133_fu_124_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v68_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_v68_1 = v68_fu_48;
    end
end
always @ (*) begin
    if (((v68_1_reg_200_pp0_iter7_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v18_1_o = grp_fu_1881_p_dout0;
    end else begin
        v18_1_o = v18_1_i;
    end
end
always @ (*) begin
    if (((v68_1_reg_200_pp0_iter7_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v18_1_o_ap_vld = 1'b1;
    end else begin
        v18_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((~(v68_1_reg_200_pp0_iter7_reg == 2'd0) & ~(v68_1_reg_200_pp0_iter7_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v18_2_o = grp_fu_1881_p_dout0;
    end else begin
        v18_2_o = v18_2_i;
    end
end
always @ (*) begin
    if ((~(v68_1_reg_200_pp0_iter7_reg == 2'd0) & ~(v68_1_reg_200_pp0_iter7_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v18_2_o_ap_vld = 1'b1;
    end else begin
        v18_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((v68_1_reg_200_pp0_iter7_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v18_o = grp_fu_1881_p_dout0;
    end else begin
        v18_o = v18_i;
    end
end
always @ (*) begin
    if (((v68_1_reg_200_pp0_iter7_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v18_o_ap_vld = 1'b1;
    end else begin
        v18_o_ap_vld = 1'b0;
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
assign add_ln133_fu_130_p2 = (ap_sig_allocacmp_v68_1 + 2'd1);
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
assign grp_fu_1881_p_ce = 1'b1;
assign grp_fu_1881_p_din0 = v69_reg_209;
assign grp_fu_1881_p_din1 = v70_fu_161_p9;
assign grp_fu_1881_p_opcode = 2'd0;
assign icmp_ln133_fu_124_p2 = ((ap_sig_allocacmp_v68_1 == 2'd3) ? 1'b1 : 1'b0);
assign v69_fu_136_p7 = 'bx;
assign v70_fu_161_p7 = 'bx;
endmodule 