
module main_graph_main_graph_Pipeline_VITIS_LOOP_1381_290 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v32_address0,v32_ce0,v32_q0,v32_address1,v32_ce1,v32_we1,v32_d1,v33_address0,v33_ce0,v33_q0,v33_1_address0,v33_1_ce0,v33_1_q0,v33_2_address0,v33_2_ce0,v33_2_q0,v33_3_address0,v33_3_ce0,v33_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v32_address0;
output   v32_ce0;
input  [7:0] v32_q0;
output  [9:0] v32_address1;
output   v32_ce1;
output   v32_we1;
output  [7:0] v32_d1;
output  [9:0] v33_address0;
output   v33_ce0;
input  [6:0] v33_q0;
output  [9:0] v33_1_address0;
output   v33_1_ce0;
input  [6:0] v33_1_q0;
output  [9:0] v33_2_address0;
output   v33_2_ce0;
input  [6:0] v33_2_q0;
output  [9:0] v33_3_address0;
output   v33_3_ce0;
input  [6:0] v33_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1381_fu_125_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] v32_addr_reg_200;
reg   [9:0] v32_addr_reg_200_pp0_iter1_reg;
reg   [7:0] v732_reg_226;
reg   [6:0] v731_reg_231;
wire   [7:0] add_ln1388_2_fu_169_p2;
reg   [7:0] add_ln1388_2_reg_236;
wire   [63:0] zext_ln1381_fu_137_p1;
wire    ap_block_pp0_stage0;
reg   [10:0] v728_fu_44;
wire   [10:0] add_ln1381_fu_131_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v728_1;
reg    v32_ce0_local;
reg    v32_we1_local;
wire   [7:0] v736_fu_183_p2;
reg    v32_ce1_local;
reg    v33_ce0_local;
reg    v33_1_ce0_local;
reg    v33_2_ce0_local;
reg    v33_3_ce0_local;
wire   [7:0] zext_ln1384_2_fu_155_p1;
wire   [7:0] zext_ln1384_3_fu_159_p1;
wire   [7:0] add_ln1388_1_fu_163_p2;
wire   [7:0] zext_ln1384_1_fu_151_p1;
wire   [7:0] zext_ln1384_fu_175_p1;
wire   [7:0] add_ln1388_fu_178_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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
#0 v728_fu_44 = 11'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1381_fu_125_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v728_fu_44 <= add_ln1381_fu_131_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v728_fu_44 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1388_2_reg_236 <= add_ln1388_2_fu_169_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        v32_addr_reg_200 <= zext_ln1381_fu_137_p1;
        v32_addr_reg_200_pp0_iter1_reg <= v32_addr_reg_200;
        v731_reg_231 <= v33_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v732_reg_226 <= v32_q0;
    end
end
always @ (*) begin
    if (((icmp_ln1381_fu_125_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v728_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v728_1 = v728_fu_44;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v32_ce0_local = 1'b1;
    end else begin
        v32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v32_ce1_local = 1'b1;
    end else begin
        v32_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v32_we1_local = 1'b1;
    end else begin
        v32_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v33_1_ce0_local = 1'b1;
    end else begin
        v33_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v33_2_ce0_local = 1'b1;
    end else begin
        v33_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v33_3_ce0_local = 1'b1;
    end else begin
        v33_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v33_ce0_local = 1'b1;
    end else begin
        v33_ce0_local = 1'b0;
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
assign add_ln1381_fu_131_p2 = (ap_sig_allocacmp_v728_1 + 11'd1);
assign add_ln1388_1_fu_163_p2 = (zext_ln1384_2_fu_155_p1 + zext_ln1384_3_fu_159_p1);
assign add_ln1388_2_fu_169_p2 = (add_ln1388_1_fu_163_p2 + zext_ln1384_1_fu_151_p1);
assign add_ln1388_fu_178_p2 = (zext_ln1384_fu_175_p1 + v732_reg_226);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln1381_fu_125_p2 = ((ap_sig_allocacmp_v728_1 == 11'd1024) ? 1'b1 : 1'b0);
assign v32_address0 = zext_ln1381_fu_137_p1;
assign v32_address1 = v32_addr_reg_200_pp0_iter1_reg;
assign v32_ce0 = v32_ce0_local;
assign v32_ce1 = v32_ce1_local;
assign v32_d1 = v736_fu_183_p2;
assign v32_we1 = v32_we1_local;
assign v33_1_address0 = zext_ln1381_fu_137_p1;
assign v33_1_ce0 = v33_1_ce0_local;
assign v33_2_address0 = zext_ln1381_fu_137_p1;
assign v33_2_ce0 = v33_2_ce0_local;
assign v33_3_address0 = zext_ln1381_fu_137_p1;
assign v33_3_ce0 = v33_3_ce0_local;
assign v33_address0 = zext_ln1381_fu_137_p1;
assign v33_ce0 = v33_ce0_local;
assign v736_fu_183_p2 = (add_ln1388_2_reg_236 + add_ln1388_fu_178_p2);
assign zext_ln1381_fu_137_p1 = ap_sig_allocacmp_v728_1;
assign zext_ln1384_1_fu_151_p1 = v33_1_q0;
assign zext_ln1384_2_fu_155_p1 = v33_2_q0;
assign zext_ln1384_3_fu_159_p1 = v33_3_q0;
assign zext_ln1384_fu_175_p1 = v731_reg_231;
endmodule 
