module forward_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v562_address0,v562_ce0,v562_we0,v562_d0,v562_1_address0,v562_1_ce0,v562_1_we0,v562_1_d0,v561_1_address0,v561_1_ce0,v561_1_q0,v560_1_address0,v560_1_ce0,v560_1_q0,v561_address0,v561_ce0,v561_q0,v560_address0,v560_ce0,v560_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [3:0] v562_address0;
output   v562_ce0;
output   v562_we0;
output  [7:0] v562_d0;
output  [3:0] v562_1_address0;
output   v562_1_ce0;
output   v562_1_we0;
output  [7:0] v562_1_d0;
output  [3:0] v561_1_address0;
output   v561_1_ce0;
input  [7:0] v561_1_q0;
output  [3:0] v560_1_address0;
output   v560_1_ce0;
input  [7:0] v560_1_q0;
output  [3:0] v561_address0;
output   v561_ce0;
input  [7:0] v561_q0;
output  [3:0] v560_address0;
output   v560_ce0;
input  [7:0] v560_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_164_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln1022_fu_150_p1;
reg   [63:0] zext_ln1022_reg_214;
reg    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage0;
reg   [5:0] v52433_fu_50;
wire   [5:0] v524_fu_158_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v52433_load;
reg    v561_1_ce0_local;
reg    v560_1_ce0_local;
reg    v561_ce0_local;
reg    v560_ce0_local;
reg    v562_1_we0_local;
wire   [7:0] select_ln1027_fu_183_p3;
reg    v562_1_ce0_local;
reg    v562_we0_local;
wire   [7:0] select_ln1031_fu_198_p3;
reg    v562_ce0_local;
wire   [3:0] lshr_ln_fu_140_p4;
wire   [0:0] icmp_ln224_fu_177_p2;
wire   [0:0] icmp_ln224_3_fu_192_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_120;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 v52433_fu_50 = 6'd0;
end
forward_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue));
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_120)) begin
        v52433_fu_50 <= v524_fu_158_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln1022_reg_214[3 : 0] <= zext_ln1022_fu_150_p1[3 : 0];
    end
end
always @ (*) begin
    if (((tmp_fu_164_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v52433_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v52433_load = v52433_fu_50;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v560_1_ce0_local = 1'b1;
    end else begin
        v560_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v560_ce0_local = 1'b1;
    end else begin
        v560_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v561_1_ce0_local = 1'b1;
    end else begin
        v561_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v561_ce0_local = 1'b1;
    end else begin
        v561_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v562_1_ce0_local = 1'b1;
    end else begin
        v562_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v562_1_we0_local = 1'b1;
    end else begin
        v562_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v562_ce0_local = 1'b1;
    end else begin
        v562_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v562_we0_local = 1'b1;
    end else begin
        v562_we0_local = 1'b0;
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
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_120 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln224_3_fu_192_p2 = (($signed(v560_q0) < $signed(v561_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_177_p2 = (($signed(v560_1_q0) < $signed(v561_1_q0)) ? 1'b1 : 1'b0);
assign lshr_ln_fu_140_p4 = {{ap_sig_allocacmp_v52433_load[4:1]}};
assign select_ln1027_fu_183_p3 = ((icmp_ln224_fu_177_p2[0:0] == 1'b1) ? v561_1_q0 : v560_1_q0);
assign select_ln1031_fu_198_p3 = ((icmp_ln224_3_fu_192_p2[0:0] == 1'b1) ? v561_q0 : v560_q0);
assign tmp_fu_164_p3 = v524_fu_158_p2[32'd5];
assign v524_fu_158_p2 = (ap_sig_allocacmp_v52433_load + 6'd2);
assign v560_1_address0 = zext_ln1022_fu_150_p1;
assign v560_1_ce0 = v560_1_ce0_local;
assign v560_address0 = zext_ln1022_fu_150_p1;
assign v560_ce0 = v560_ce0_local;
assign v561_1_address0 = zext_ln1022_fu_150_p1;
assign v561_1_ce0 = v561_1_ce0_local;
assign v561_address0 = zext_ln1022_fu_150_p1;
assign v561_ce0 = v561_ce0_local;
assign v562_1_address0 = zext_ln1022_reg_214;
assign v562_1_ce0 = v562_1_ce0_local;
assign v562_1_d0 = select_ln1027_fu_183_p3;
assign v562_1_we0 = v562_1_we0_local;
assign v562_address0 = zext_ln1022_reg_214;
assign v562_ce0 = v562_ce0_local;
assign v562_d0 = select_ln1031_fu_198_p3;
assign v562_we0 = v562_we0_local;
assign zext_ln1022_fu_150_p1 = lshr_ln_fu_140_p4;
always @ (posedge ap_clk) begin
    zext_ln1022_reg_214[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 