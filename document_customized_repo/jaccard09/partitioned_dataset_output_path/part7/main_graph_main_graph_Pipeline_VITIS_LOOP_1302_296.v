
module main_graph_main_graph_Pipeline_VITIS_LOOP_1302_296 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v25_address0,v25_ce0,v25_q0,v25_address1,v25_ce1,v25_we1,v25_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v25_address0;
output   v25_ce0;
input  [7:0] v25_q0;
output  [8:0] v25_address1;
output   v25_ce1;
output   v25_we1;
output  [7:0] v25_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1302_fu_81_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] v25_addr_reg_182;
reg   [8:0] v25_addr_reg_182_pp0_iter1_reg;
wire   [5:0] v687_fu_159_p3;
reg   [5:0] v687_reg_188;
wire   [63:0] zext_ln1302_fu_93_p1;
wire    ap_block_pp0_stage0;
reg   [9:0] v685_fu_52;
wire   [9:0] add_ln1302_fu_87_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_v685_1;
reg    v25_ce0_local;
reg    v25_we1_local;
wire  signed [7:0] sext_ln1304_2_fu_167_p1;
reg    v25_ce1_local;
wire  signed [7:0] sext_ln1304_fu_103_p0;
wire  signed [7:0] tmp_fu_107_p1;
wire  signed [8:0] sext_ln1304_fu_103_p1;
wire   [8:0] sub_ln1304_fu_115_p2;
wire   [4:0] tmp_s_fu_121_p4;
wire  signed [7:0] trunc_ln1304_2_fu_135_p1;
wire   [5:0] zext_ln1304_fu_131_p1;
wire   [3:0] trunc_ln1304_2_fu_135_p4;
wire  signed [4:0] sext_ln1304_1_fu_151_p1;
wire   [0:0] tmp_fu_107_p3;
wire   [5:0] sub_ln1304_1_fu_145_p2;
wire   [5:0] zext_ln1304_1_fu_155_p1;
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
#0 v685_fu_52 = 10'd0;
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
        if (((icmp_ln1302_fu_81_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v685_fu_52 <= add_ln1302_fu_87_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v685_fu_52 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        v25_addr_reg_182 <= zext_ln1302_fu_93_p1;
        v25_addr_reg_182_pp0_iter1_reg <= v25_addr_reg_182;
        v687_reg_188 <= v687_fu_159_p3;
    end
end
always @ (*) begin
    if (((icmp_ln1302_fu_81_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v685_1 = 10'd0;
    end else begin
        ap_sig_allocacmp_v685_1 = v685_fu_52;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v25_ce0_local = 1'b1;
    end else begin
        v25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v25_ce1_local = 1'b1;
    end else begin
        v25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v25_we1_local = 1'b1;
    end else begin
        v25_we1_local = 1'b0;
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
assign add_ln1302_fu_87_p2 = (ap_sig_allocacmp_v685_1 + 10'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln1302_fu_81_p2 = ((ap_sig_allocacmp_v685_1 == 10'd512) ? 1'b1 : 1'b0);
assign sext_ln1304_1_fu_151_p1 = $signed(trunc_ln1304_2_fu_135_p4);
assign sext_ln1304_2_fu_167_p1 = $signed(v687_reg_188);
assign sext_ln1304_fu_103_p0 = v25_q0;
assign sext_ln1304_fu_103_p1 = sext_ln1304_fu_103_p0;
assign sub_ln1304_1_fu_145_p2 = (6'd0 - zext_ln1304_fu_131_p1);
assign sub_ln1304_fu_115_p2 = ($signed(9'd0) - $signed(sext_ln1304_fu_103_p1));
assign tmp_fu_107_p1 = v25_q0;
assign tmp_fu_107_p3 = tmp_fu_107_p1[32'd7];
assign tmp_s_fu_121_p4 = {{sub_ln1304_fu_115_p2[8:4]}};
assign trunc_ln1304_2_fu_135_p1 = v25_q0;
assign trunc_ln1304_2_fu_135_p4 = {{trunc_ln1304_2_fu_135_p1[7:4]}};
assign v25_address0 = zext_ln1302_fu_93_p1;
assign v25_address1 = v25_addr_reg_182_pp0_iter1_reg;
assign v25_ce0 = v25_ce0_local;
assign v25_ce1 = v25_ce1_local;
assign v25_d1 = sext_ln1304_2_fu_167_p1;
assign v25_we1 = v25_we1_local;
assign v687_fu_159_p3 = ((tmp_fu_107_p3[0:0] == 1'b1) ? sub_ln1304_1_fu_145_p2 : zext_ln1304_1_fu_155_p1);
assign zext_ln1302_fu_93_p1 = ap_sig_allocacmp_v685_1;
assign zext_ln1304_1_fu_155_p1 = $unsigned(sext_ln1304_1_fu_151_p1);
assign zext_ln1304_fu_131_p1 = tmp_s_fu_121_p4;
endmodule 
