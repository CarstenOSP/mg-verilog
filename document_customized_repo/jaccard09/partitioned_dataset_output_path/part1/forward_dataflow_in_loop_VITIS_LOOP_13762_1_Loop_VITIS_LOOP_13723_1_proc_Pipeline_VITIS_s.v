
module forward_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,zext_ln13742_2,zext_ln13742,v15422_address0,v15422_ce0,v15422_q0,v11065_address0,v11065_ce0,v11065_we0,v11065_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] mul_i;
input  [1:0] zext_ln13742_2;
input  [1:0] zext_ln13742;
output  [12:0] v15422_address0;
output   v15422_ce0;
input  [7:0] v15422_q0;
output  [4:0] v11065_address0;
output   v11065_ce0;
output   v11065_we0;
output  [7:0] v11065_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln13723_fu_167_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [12:0] zext_ln13742_cast_fu_111_p1;
reg   [12:0] zext_ln13742_cast_reg_215;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] v110399_load_reg_220;
reg   [4:0] v110399_load_reg_220_pp0_iter1_reg;
wire   [10:0] add_ln13726_fu_155_p2;
reg   [10:0] add_ln13726_reg_225;
wire   [63:0] zext_ln13726_2_fu_199_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln13723_1_fu_204_p1;
reg   [4:0] v110399_fu_62;
wire   [4:0] v11039_fu_161_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_v110399_load;
reg    v15422_ce0_local;
reg    v11065_we0_local;
reg    v11065_ce0_local;
wire   [8:0] zext_ln13723_fu_127_p1;
wire   [8:0] add_ln13725_fu_131_p2;
wire   [10:0] p_shl9_fu_141_p3;
wire   [10:0] zext_ln13726_fu_137_p1;
wire   [10:0] sub_ln13726_fu_149_p2;
wire   [10:0] zext_ln13742_2_cast_fu_115_p1;
wire   [12:0] p_shl_fu_181_p3;
wire   [12:0] zext_ln13726_1_fu_178_p1;
wire   [12:0] sub_ln13726_1_fu_188_p2;
wire   [12:0] add_ln13726_1_fu_194_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
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
#0 v110399_fu_62 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v110399_fu_62 <= v11039_fu_161_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v110399_fu_62 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13726_reg_225 <= add_ln13726_fu_155_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        v110399_load_reg_220 <= ap_sig_allocacmp_v110399_load;
        v110399_load_reg_220_pp0_iter1_reg <= v110399_load_reg_220;
        zext_ln13742_cast_reg_215[1 : 0] <= zext_ln13742_cast_fu_111_p1[1 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln13723_fu_167_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        ap_sig_allocacmp_v110399_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v110399_load = v110399_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v11065_ce0_local = 1'b1;
    end else begin
        v11065_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v11065_we0_local = 1'b1;
    end else begin
        v11065_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15422_ce0_local = 1'b1;
    end else begin
        v15422_ce0_local = 1'b0;
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
assign add_ln13725_fu_131_p2 = (mul_i + zext_ln13723_fu_127_p1);
assign add_ln13726_1_fu_194_p2 = (sub_ln13726_1_fu_188_p2 + zext_ln13742_cast_reg_215);
assign add_ln13726_fu_155_p2 = (sub_ln13726_fu_149_p2 + zext_ln13742_2_cast_fu_115_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln13723_fu_167_p2 = ((ap_sig_allocacmp_v110399_load == 5'd31) ? 1'b1 : 1'b0);
assign p_shl9_fu_141_p3 = {{add_ln13725_fu_131_p2}, {2'd0}};
assign p_shl_fu_181_p3 = {{add_ln13726_reg_225}, {2'd0}};
assign sub_ln13726_1_fu_188_p2 = (p_shl_fu_181_p3 - zext_ln13726_1_fu_178_p1);
assign sub_ln13726_fu_149_p2 = (p_shl9_fu_141_p3 - zext_ln13726_fu_137_p1);
assign v11039_fu_161_p2 = (ap_sig_allocacmp_v110399_load + 5'd1);
assign v11065_address0 = zext_ln13723_1_fu_204_p1;
assign v11065_ce0 = v11065_ce0_local;
assign v11065_d0 = v15422_q0;
assign v11065_we0 = v11065_we0_local;
assign v15422_address0 = zext_ln13726_2_fu_199_p1;
assign v15422_ce0 = v15422_ce0_local;
assign zext_ln13723_1_fu_204_p1 = v110399_load_reg_220_pp0_iter1_reg;
assign zext_ln13723_fu_127_p1 = ap_sig_allocacmp_v110399_load;
assign zext_ln13726_1_fu_178_p1 = add_ln13726_reg_225;
assign zext_ln13726_2_fu_199_p1 = add_ln13726_1_fu_194_p2;
assign zext_ln13726_fu_137_p1 = add_ln13725_fu_131_p2;
assign zext_ln13742_2_cast_fu_115_p1 = zext_ln13742_2;
assign zext_ln13742_cast_fu_111_p1 = zext_ln13742;
always @ (posedge ap_clk) begin
    zext_ln13742_cast_reg_215[12:2] <= 11'b00000000000;
end
endmodule 
