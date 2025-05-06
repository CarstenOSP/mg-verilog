
module forward_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,idxprom2_i,idxprom6_i,v15502_address0,v15502_ce0,v15502_q0,v5916_address0,v5916_ce0,v5916_we0,v5916_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [9:0] rem4;
input  [3:0] idxprom2_i;
input  [3:0] idxprom6_i;
output  [15:0] v15502_address0;
output   v15502_ce0;
input  [7:0] v15502_q0;
output  [4:0] v5916_address0;
output   v5916_ce0;
output   v5916_we0;
output  [7:0] v5916_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6830_fu_175_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire  signed [15:0] idxprom6_i_cast_fu_111_p1;
reg  signed [15:0] idxprom6_i_cast_reg_223;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] v59009_load_reg_228;
reg   [4:0] v59009_load_reg_228_pp0_iter1_reg;
wire  signed [13:0] add_ln6833_fu_159_p2;
reg  signed [13:0] add_ln6833_reg_233;
wire   [12:0] trunc_ln6833_fu_165_p1;
reg   [12:0] trunc_ln6833_reg_238;
wire   [63:0] zext_ln6833_2_fu_207_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln6830_1_fu_212_p1;
reg   [4:0] v59009_fu_62;
wire   [4:0] v5900_fu_169_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_v59009_load;
reg    v15502_ce0_local;
reg    v5916_we0_local;
reg    v5916_ce0_local;
wire   [9:0] zext_ln6830_fu_127_p1;
wire   [9:0] add_ln6832_fu_131_p2;
wire   [12:0] p_shl11_fu_141_p3;
wire   [12:0] zext_ln6833_fu_137_p1;
wire   [12:0] sub_ln6833_fu_149_p2;
wire   [13:0] zext_ln6833_1_fu_155_p1;
wire  signed [13:0] idxprom2_i_cast_fu_115_p1;
wire   [15:0] p_shl12_fu_189_p3;
wire  signed [15:0] sext_ln6833_fu_186_p1;
wire   [15:0] sub_ln6833_1_fu_196_p2;
wire   [15:0] add_ln6833_1_fu_202_p2;
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
#0 v59009_fu_62 = 5'd0;
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
            v59009_fu_62 <= v5900_fu_169_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v59009_fu_62 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6833_reg_233 <= add_ln6833_fu_159_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        idxprom6_i_cast_reg_223 <= idxprom6_i_cast_fu_111_p1;
        trunc_ln6833_reg_238 <= trunc_ln6833_fu_165_p1;
        v59009_load_reg_228 <= ap_sig_allocacmp_v59009_load;
        v59009_load_reg_228_pp0_iter1_reg <= v59009_load_reg_228;
    end
end
always @ (*) begin
    if (((icmp_ln6830_fu_175_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59009_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v59009_load = v59009_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15502_ce0_local = 1'b1;
    end else begin
        v15502_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5916_ce0_local = 1'b1;
    end else begin
        v5916_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5916_we0_local = 1'b1;
    end else begin
        v5916_we0_local = 1'b0;
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
assign add_ln6832_fu_131_p2 = (rem4 + zext_ln6830_fu_127_p1);
assign add_ln6833_1_fu_202_p2 = ($signed(sub_ln6833_1_fu_196_p2) + $signed(idxprom6_i_cast_reg_223));
assign add_ln6833_fu_159_p2 = ($signed(zext_ln6833_1_fu_155_p1) + $signed(idxprom2_i_cast_fu_115_p1));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln6830_fu_175_p2 = ((ap_sig_allocacmp_v59009_load == 5'd31) ? 1'b1 : 1'b0);
assign idxprom2_i_cast_fu_115_p1 = $signed(idxprom2_i);
assign idxprom6_i_cast_fu_111_p1 = $signed(idxprom6_i);
assign p_shl11_fu_141_p3 = {{add_ln6832_fu_131_p2}, {3'd0}};
assign p_shl12_fu_189_p3 = {{trunc_ln6833_reg_238}, {3'd0}};
assign sext_ln6833_fu_186_p1 = add_ln6833_reg_233;
assign sub_ln6833_1_fu_196_p2 = ($signed(p_shl12_fu_189_p3) - $signed(sext_ln6833_fu_186_p1));
assign sub_ln6833_fu_149_p2 = (p_shl11_fu_141_p3 - zext_ln6833_fu_137_p1);
assign trunc_ln6833_fu_165_p1 = add_ln6833_fu_159_p2[12:0];
assign v15502_address0 = zext_ln6833_2_fu_207_p1;
assign v15502_ce0 = v15502_ce0_local;
assign v5900_fu_169_p2 = (ap_sig_allocacmp_v59009_load + 5'd1);
assign v5916_address0 = zext_ln6830_1_fu_212_p1;
assign v5916_ce0 = v5916_ce0_local;
assign v5916_d0 = v15502_q0;
assign v5916_we0 = v5916_we0_local;
assign zext_ln6830_1_fu_212_p1 = v59009_load_reg_228_pp0_iter1_reg;
assign zext_ln6830_fu_127_p1 = ap_sig_allocacmp_v59009_load;
assign zext_ln6833_1_fu_155_p1 = sub_ln6833_fu_149_p2;
assign zext_ln6833_2_fu_207_p1 = add_ln6833_1_fu_202_p2;
assign zext_ln6833_fu_137_p1 = add_ln6832_fu_131_p2;
endmodule 
