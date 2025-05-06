
module forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,idxprom2_i1,idxprom5_i872,v9257_address0,v9257_ce0,v9257_q0,v1697_address0,v1697_ce0,v1697_we0,v1697_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i;
input  [3:0] idxprom2_i1;
input  [3:0] idxprom5_i872;
output  [15:0] v9257_address0;
output   v9257_ce0;
input  [7:0] v9257_q0;
output  [4:0] v1697_address0;
output   v1697_ce0;
output   v1697_we0;
output  [7:0] v1697_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln2416_fu_181_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [15:0] idxprom5_i872_cast_fu_117_p1;
reg   [15:0] idxprom5_i872_cast_reg_237;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] v16769_load_reg_242;
reg   [4:0] v16769_load_reg_242_pp0_iter1_reg;
wire   [11:0] add_ln2419_fu_169_p2;
reg   [11:0] add_ln2419_reg_247;
wire   [63:0] zext_ln2419_2_fu_221_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln2416_1_fu_226_p1;
reg   [4:0] v16769_fu_68;
wire   [4:0] v1676_fu_175_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_v16769_load;
reg    v9257_ce0_local;
reg    v1697_we0_local;
reg    v1697_ce0_local;
wire   [7:0] zext_ln2416_fu_133_p1;
wire   [7:0] add_ln2418_fu_137_p2;
wire   [8:0] tmp_fu_151_p3;
wire   [11:0] p_shl10_fu_143_p3;
wire   [11:0] zext_ln2419_fu_159_p1;
wire   [11:0] sub_ln2419_fu_163_p2;
wire   [11:0] idxprom2_i1_cast_fu_121_p1;
wire   [12:0] tmp_318_fu_199_p3;
wire   [15:0] p_shl_fu_192_p3;
wire   [15:0] zext_ln2419_1_fu_206_p1;
wire   [15:0] sub_ln2419_1_fu_210_p2;
wire   [15:0] add_ln2419_1_fu_216_p2;
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
#0 v16769_fu_68 = 5'd0;
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
            v16769_fu_68 <= v1676_fu_175_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v16769_fu_68 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln2419_reg_247 <= add_ln2419_fu_169_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        idxprom5_i872_cast_reg_237[3 : 0] <= idxprom5_i872_cast_fu_117_p1[3 : 0];
        v16769_load_reg_242 <= ap_sig_allocacmp_v16769_load;
        v16769_load_reg_242_pp0_iter1_reg <= v16769_load_reg_242;
    end
end
always @ (*) begin
    if (((icmp_ln2416_fu_181_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v16769_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v16769_load = v16769_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1697_ce0_local = 1'b1;
    end else begin
        v1697_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1697_we0_local = 1'b1;
    end else begin
        v1697_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9257_ce0_local = 1'b1;
    end else begin
        v9257_ce0_local = 1'b0;
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
assign add_ln2418_fu_137_p2 = (mul_i + zext_ln2416_fu_133_p1);
assign add_ln2419_1_fu_216_p2 = (sub_ln2419_1_fu_210_p2 + idxprom5_i872_cast_reg_237);
assign add_ln2419_fu_169_p2 = (sub_ln2419_fu_163_p2 + idxprom2_i1_cast_fu_121_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln2416_fu_181_p2 = ((ap_sig_allocacmp_v16769_load == 5'd31) ? 1'b1 : 1'b0);
assign idxprom2_i1_cast_fu_121_p1 = idxprom2_i1;
assign idxprom5_i872_cast_fu_117_p1 = idxprom5_i872;
assign p_shl10_fu_143_p3 = {{add_ln2418_fu_137_p2}, {4'd0}};
assign p_shl_fu_192_p3 = {{add_ln2419_reg_247}, {4'd0}};
assign sub_ln2419_1_fu_210_p2 = (p_shl_fu_192_p3 - zext_ln2419_1_fu_206_p1);
assign sub_ln2419_fu_163_p2 = (p_shl10_fu_143_p3 - zext_ln2419_fu_159_p1);
assign tmp_318_fu_199_p3 = {{add_ln2419_reg_247}, {1'd0}};
assign tmp_fu_151_p3 = {{add_ln2418_fu_137_p2}, {1'd0}};
assign v1676_fu_175_p2 = (ap_sig_allocacmp_v16769_load + 5'd1);
assign v1697_address0 = zext_ln2416_1_fu_226_p1;
assign v1697_ce0 = v1697_ce0_local;
assign v1697_d0 = v9257_q0;
assign v1697_we0 = v1697_we0_local;
assign v9257_address0 = zext_ln2419_2_fu_221_p1;
assign v9257_ce0 = v9257_ce0_local;
assign zext_ln2416_1_fu_226_p1 = v16769_load_reg_242_pp0_iter1_reg;
assign zext_ln2416_fu_133_p1 = ap_sig_allocacmp_v16769_load;
assign zext_ln2419_1_fu_206_p1 = tmp_318_fu_199_p3;
assign zext_ln2419_2_fu_221_p1 = add_ln2419_1_fu_216_p2;
assign zext_ln2419_fu_159_p1 = tmp_fu_151_p3;
always @ (posedge ap_clk) begin
    idxprom5_i872_cast_reg_237[15:4] <= 12'b000000000000;
end
endmodule 
