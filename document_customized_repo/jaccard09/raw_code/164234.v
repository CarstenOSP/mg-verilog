module forward_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v99_address0,v99_ce0,v99_q0,v98_address0,v98_ce0,v98_q0,brmerge_i,v100_address0,v100_ce0,v100_we0,v100_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v99_address0;
output   v99_ce0;
input  [7:0] v99_q0;
output  [4:0] v98_address0;
output   v98_ce0;
input  [7:0] v98_q0;
input  [0:0] brmerge_i;
output  [4:0] v100_address0;
output   v100_ce0;
output   v100_we0;
output  [7:0] v100_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln194_fu_131_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln194_fu_119_p1;
reg   [63:0] zext_ln194_reg_241;
reg   [63:0] zext_ln194_reg_241_pp0_iter1_reg;
reg   [63:0] zext_ln194_reg_241_pp0_iter2_reg;
wire  signed [7:0] v74_fu_142_p2;
reg  signed [7:0] v74_reg_260;
reg   [0:0] tmp_reg_266;
wire   [7:0] select_ln204_fu_223_p3;
reg   [7:0] select_ln204_reg_272;
wire    ap_block_pp0_stage0;
reg   [4:0] v6815_fu_62;
wire   [4:0] v68_fu_125_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_v6815_load;
reg    v99_ce0_local;
reg    v98_ce0_local;
reg    v100_we0_local;
reg    v100_ce0_local;
wire   [9:0] mul_ln202_fu_159_p1;
wire   [17:0] mul_ln202_fu_159_p2;
wire   [16:0] trunc_ln202_fu_165_p1;
wire   [16:0] sub_ln202_fu_169_p2;
wire   [1:0] tmp_39_fu_175_p4;
wire   [2:0] tmp_40_fu_189_p4;
wire  signed [7:0] sext_ln202_1_fu_185_p1;
wire  signed [7:0] sext_ln202_2_fu_199_p1;
wire   [7:0] select_ln202_fu_203_p3;
wire   [7:0] sub_ln202_1_fu_210_p2;
wire   [7:0] v75_fu_216_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
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
#0 v6815_fu_62 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_mul_8s_10ns_18_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 18 ))
mul_8s_10ns_18_1_1_U14969(.din0(v74_reg_260),.din1(mul_ln202_fu_159_p1),.dout(mul_ln202_fu_159_p2));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v6815_fu_62 <= v68_fu_125_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v6815_fu_62 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        tmp_reg_266 <= v74_fu_142_p2[32'd7];
        v74_reg_260 <= v74_fu_142_p2;
        zext_ln194_reg_241[4 : 0] <= zext_ln194_fu_119_p1[4 : 0];
        zext_ln194_reg_241_pp0_iter1_reg[4 : 0] <= zext_ln194_reg_241[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        select_ln204_reg_272 <= select_ln204_fu_223_p3;
        zext_ln194_reg_241_pp0_iter2_reg[4 : 0] <= zext_ln194_reg_241_pp0_iter1_reg[4 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln194_fu_131_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v6815_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v6815_load = v6815_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v100_ce0_local = 1'b1;
    end else begin
        v100_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v100_we0_local = 1'b1;
    end else begin
        v100_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v98_ce0_local = 1'b1;
    end else begin
        v98_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v99_ce0_local = 1'b1;
    end else begin
        v99_ce0_local = 1'b0;
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
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln194_fu_131_p2 = ((ap_sig_allocacmp_v6815_load == 5'd31) ? 1'b1 : 1'b0);
assign mul_ln202_fu_159_p1 = 18'd261;
assign select_ln202_fu_203_p3 = ((tmp_reg_266[0:0] == 1'b1) ? sext_ln202_1_fu_185_p1 : sext_ln202_2_fu_199_p1);
assign select_ln204_fu_223_p3 = ((brmerge_i[0:0] == 1'b1) ? v74_reg_260 : v75_fu_216_p3);
assign sext_ln202_1_fu_185_p1 = $signed(tmp_39_fu_175_p4);
assign sext_ln202_2_fu_199_p1 = $signed(tmp_40_fu_189_p4);
assign sub_ln202_1_fu_210_p2 = (8'd0 - select_ln202_fu_203_p3);
assign sub_ln202_fu_169_p2 = (17'd0 - trunc_ln202_fu_165_p1);
assign tmp_39_fu_175_p4 = {{sub_ln202_fu_169_p2[16:15]}};
assign tmp_40_fu_189_p4 = {{mul_ln202_fu_159_p2[17:15]}};
assign trunc_ln202_fu_165_p1 = mul_ln202_fu_159_p2[16:0];
assign v100_address0 = zext_ln194_reg_241_pp0_iter2_reg;
assign v100_ce0 = v100_ce0_local;
assign v100_d0 = select_ln204_reg_272;
assign v100_we0 = v100_we0_local;
assign v68_fu_125_p2 = (ap_sig_allocacmp_v6815_load + 5'd1);
assign v74_fu_142_p2 = (v98_q0 + v99_q0);
assign v75_fu_216_p3 = ((tmp_reg_266[0:0] == 1'b1) ? sub_ln202_1_fu_210_p2 : sext_ln202_2_fu_199_p1);
assign v98_address0 = zext_ln194_fu_119_p1;
assign v98_ce0 = v98_ce0_local;
assign v99_address0 = zext_ln194_fu_119_p1;
assign v99_ce0 = v99_ce0_local;
assign zext_ln194_fu_119_p1 = ap_sig_allocacmp_v6815_load;
always @ (posedge ap_clk) begin
    zext_ln194_reg_241[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln194_reg_241_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln194_reg_241_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 