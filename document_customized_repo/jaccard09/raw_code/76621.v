module ms_mergesort_merge_Pipeline_merge_label1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,start_r,m,a_0_address0,a_0_ce0,a_0_q0,a_0_address1,a_0_ce1,a_0_q1,a_1_address0,a_1_ce0,a_1_q0,a_1_address1,a_1_ce1,a_1_q1,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] start_r;
input  [31:0] m;
output  [9:0] a_0_address0;
output   a_0_ce0;
input  [31:0] a_0_q0;
output  [9:0] a_0_address1;
output   a_0_ce1;
input  [31:0] a_0_q1;
output  [9:0] a_1_address0;
output   a_1_ce0;
input  [31:0] a_1_q0;
output  [9:0] a_1_address1;
output   a_1_ce1;
input  [31:0] a_1_q1;
output  [10:0] temp_address0;
output   temp_ce0;
output   temp_we0;
output  [31:0] temp_d0;
output  [10:0] temp_address1;
output   temp_ce1;
output   temp_we1;
output  [31:0] temp_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln7_1_fu_189_p2;
wire   [0:0] icmp_ln7_fu_141_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] i_7_reg_240;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] i_7_reg_240_pp0_iter1_reg;
reg   [0:0] icmp_ln7_reg_246;
reg   [0:0] icmp_ln7_reg_246_pp0_iter1_reg;
wire   [10:0] add_ln7_fu_167_p2;
reg   [10:0] add_ln7_reg_260;
reg   [10:0] add_ln7_reg_260_pp0_iter1_reg;
reg   [0:0] icmp_ln7_1_reg_265;
reg   [0:0] icmp_ln7_1_reg_265_pp0_iter1_reg;
wire   [31:0] select_ln8_fu_209_p3;
reg   [31:0] select_ln8_reg_279;
wire   [31:0] select_ln8_1_fu_217_p3;
reg   [31:0] select_ln8_1_reg_284;
wire   [63:0] zext_ln5_fu_161_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln7_2_fu_183_p1;
wire   [63:0] zext_ln7_fu_225_p1;
wire   [63:0] zext_ln7_1_fu_229_p1;
reg   [31:0] i_fu_42;
wire   [31:0] add_ln7_1_fu_195_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_i_7;
reg    a_0_ce1_local;
reg    a_0_ce0_local;
reg    a_1_ce1_local;
reg    a_1_ce0_local;
reg    temp_we1_local;
reg    temp_ce1_local;
reg    temp_we0_local;
reg    temp_ce0_local;
wire   [9:0] lshr_ln5_fu_151_p4;
wire   [10:0] trunc_ln7_1_fu_147_p1;
wire   [9:0] lshr_ln7_fu_173_p4;
wire   [0:0] trunc_ln7_fu_206_p1;
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
reg    ap_condition_259;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_42 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_259)) begin
            i_fu_42 <= add_ln7_1_fu_195_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_42 <= start_r;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7_reg_260 <= add_ln7_fu_167_p2;
        add_ln7_reg_260_pp0_iter1_reg <= add_ln7_reg_260;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        i_7_reg_240 <= ap_sig_allocacmp_i_7;
        i_7_reg_240_pp0_iter1_reg <= i_7_reg_240;
        icmp_ln7_1_reg_265 <= icmp_ln7_1_fu_189_p2;
        icmp_ln7_1_reg_265_pp0_iter1_reg <= icmp_ln7_1_reg_265;
        icmp_ln7_reg_246 <= icmp_ln7_fu_141_p2;
        icmp_ln7_reg_246_pp0_iter1_reg <= icmp_ln7_reg_246;
        select_ln8_1_reg_284 <= select_ln8_1_fu_217_p3;
        select_ln8_reg_279 <= select_ln8_fu_209_p3;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_0_ce1_local = 1'b1;
    end else begin
        a_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_1_ce1_local = 1'b1;
    end else begin
        a_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln7_fu_141_p2 == 1'd1) | (icmp_ln7_1_fu_189_p2 == 1'd0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_7 = start_r;
    end else begin
        ap_sig_allocacmp_i_7 = i_fu_42;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln7_reg_246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_1_reg_265_pp0_iter1_reg == 1'd1))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln7_reg_246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        temp_we1_local = 1'b1;
    end else begin
        temp_we1_local = 1'b0;
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
assign a_0_address0 = zext_ln7_2_fu_183_p1;
assign a_0_address1 = zext_ln5_fu_161_p1;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_ce1 = a_0_ce1_local;
assign a_1_address0 = zext_ln7_2_fu_183_p1;
assign a_1_address1 = zext_ln5_fu_161_p1;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_ce1 = a_1_ce1_local;
assign add_ln7_1_fu_195_p2 = (ap_sig_allocacmp_i_7 + 32'd2);
assign add_ln7_fu_167_p2 = (trunc_ln7_1_fu_147_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_259 = ((icmp_ln7_fu_141_p2 == 1'd0) & (icmp_ln7_1_fu_189_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln7_1_fu_189_p2 = (($signed(ap_sig_allocacmp_i_7) < $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_141_p2 = (($signed(ap_sig_allocacmp_i_7) > $signed(m)) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_151_p4 = {{ap_sig_allocacmp_i_7[10:1]}};
assign lshr_ln7_fu_173_p4 = {{add_ln7_fu_167_p2[10:1]}};
assign select_ln8_1_fu_217_p3 = ((trunc_ln7_fu_206_p1[0:0] == 1'b1) ? a_0_q0 : a_1_q0);
assign select_ln8_fu_209_p3 = ((trunc_ln7_fu_206_p1[0:0] == 1'b1) ? a_1_q1 : a_0_q1);
assign temp_address0 = zext_ln7_1_fu_229_p1;
assign temp_address1 = zext_ln7_fu_225_p1;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign temp_d0 = select_ln8_1_reg_284;
assign temp_d1 = select_ln8_reg_279;
assign temp_we0 = temp_we0_local;
assign temp_we1 = temp_we1_local;
assign trunc_ln7_1_fu_147_p1 = ap_sig_allocacmp_i_7[10:0];
assign trunc_ln7_fu_206_p1 = i_7_reg_240[0:0];
assign zext_ln5_fu_161_p1 = lshr_ln5_fu_151_p4;
assign zext_ln7_1_fu_229_p1 = add_ln7_reg_260_pp0_iter1_reg;
assign zext_ln7_2_fu_183_p1 = lshr_ln7_fu_173_p4;
assign zext_ln7_fu_225_p1 = i_7_reg_240_pp0_iter1_reg;
endmodule 