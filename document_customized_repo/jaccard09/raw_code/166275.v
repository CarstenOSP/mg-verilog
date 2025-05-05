module forward_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v11266_address0,v11266_ce0,v11266_we0,v11266_d0,v11266_1_address0,v11266_1_ce0,v11266_1_we0,v11266_1_d0,v11265_1_address0,v11265_1_ce0,v11265_1_q0,v11264_1_address0,v11264_1_ce0,v11264_1_q0,v11265_address0,v11265_ce0,v11265_q0,v11264_address0,v11264_ce0,v11264_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [12:0] v11266_address0;
output   v11266_ce0;
output   v11266_we0;
output  [7:0] v11266_d0;
output  [12:0] v11266_1_address0;
output   v11266_1_ce0;
output   v11266_1_we0;
output  [7:0] v11266_1_d0;
output  [12:0] v11265_1_address0;
output   v11265_1_ce0;
input  [7:0] v11265_1_q0;
output  [12:0] v11264_1_address0;
output   v11264_1_ce0;
input  [7:0] v11264_1_q0;
output  [12:0] v11265_address0;
output   v11265_ce0;
input  [7:0] v11265_q0;
output  [12:0] v11264_address0;
output   v11264_ce0;
input  [7:0] v11264_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln14443_fu_332_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln1444439_reg_174;
wire   [5:0] v11223_fu_268_p3;
reg   [5:0] v11223_reg_481;
reg   [3:0] lshr_ln_reg_486;
wire   [0:0] xor_ln14445_fu_320_p2;
reg   [0:0] xor_ln14445_reg_491;
wire   [0:0] icmp_ln14444_fu_326_p2;
reg   [0:0] icmp_ln14444_reg_496;
reg   [0:0] icmp_ln14443_reg_501;
wire   [63:0] zext_ln14454_1_fu_403_p1;
reg   [63:0] zext_ln14454_1_reg_505;
reg   [0:0] ap_phi_mux_icmp_ln1444439_phi_fu_177_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1444538_phi_fu_188_p4;
reg   [12:0] indvar_flatten1233_fu_76;
wire   [12:0] add_ln14443_1_fu_306_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [4:0] v1122234_fu_80;
wire   [4:0] v11222_fu_367_p3;
reg   [10:0] indvar_flatten35_fu_84;
wire   [10:0] select_ln14444_1_fu_298_p3;
reg   [10:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [5:0] v1122336_fu_88;
reg   [5:0] ap_sig_allocacmp_v1122336_load;
reg   [5:0] v1122437_fu_92;
wire   [5:0] v11224_fu_286_p2;
reg   [5:0] ap_sig_allocacmp_v1122437_load;
reg    v11265_1_ce0_local;
reg    v11264_1_ce0_local;
reg    v11265_ce0_local;
reg    v11264_ce0_local;
reg    v11266_1_we0_local;
wire   [7:0] select_ln14450_fu_422_p3;
reg    v11266_1_ce0_local;
reg    v11266_we0_local;
wire   [7:0] select_ln14454_fu_437_p3;
reg    v11266_ce0_local;
wire   [5:0] select_ln14443_fu_232_p3;
wire   [0:0] or_ln14443_fu_248_p2;
wire   [5:0] select_ln14443_1_fu_240_p3;
wire   [5:0] add_ln14444_fu_254_p2;
wire   [5:0] v11224_mid2_fu_260_p3;
wire   [10:0] add_ln14444_1_fu_292_p2;
wire   [0:0] tmp_445_fu_312_p3;
wire   [4:0] add_ln14443_fu_361_p2;
wire   [3:0] trunc_ln14444_fu_375_p1;
wire   [8:0] tmp_fu_379_p3;
wire   [8:0] zext_ln14454_fu_387_p1;
wire   [8:0] add_ln14446_fu_390_p2;
wire   [12:0] tmp_s_fu_396_p3;
wire   [0:0] icmp_ln224_fu_416_p2;
wire   [0:0] icmp_ln224_4_fu_431_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_350;
reg    ap_condition_355;
reg    ap_condition_111;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_76 = 13'd0;
#0 v1122234_fu_80 = 5'd0;
#0 indvar_flatten35_fu_84 = 11'd0;
#0 v1122336_fu_88 = 6'd0;
#0 v1122437_fu_92 = 6'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_355)) begin
            icmp_ln1444439_reg_174 <= icmp_ln14444_reg_496;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1444439_reg_174 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_111)) begin
        indvar_flatten1233_fu_76 <= add_ln14443_1_fu_306_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    indvar_flatten35_fu_84 <= select_ln14444_1_fu_298_p3;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1122234_fu_80 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1122234_fu_80 <= v11222_fu_367_p3;
    end
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    v1122336_fu_88 <= v11223_fu_268_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    v1122437_fu_92 <= v11224_fu_286_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln14443_reg_501 <= icmp_ln14443_fu_332_p2;
        lshr_ln_reg_486 <= {{v11224_mid2_fu_260_p3[4:1]}};
        v11223_reg_481 <= v11223_fu_268_p3;
        zext_ln14454_1_reg_505[12 : 0] <= zext_ln14454_1_fu_403_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln14444_reg_496 <= icmp_ln14444_fu_326_p2;
        xor_ln14445_reg_491 <= xor_ln14445_fu_320_p2;
    end
end
always @ (*) begin
    if (((icmp_ln14443_fu_332_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_350)) begin
            ap_phi_mux_icmp_ln1444439_phi_fu_177_p4 = icmp_ln14444_reg_496;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1444439_phi_fu_177_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1444439_phi_fu_177_p4 = icmp_ln14444_reg_496;
        end
    end else begin
        ap_phi_mux_icmp_ln1444439_phi_fu_177_p4 = icmp_ln14444_reg_496;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_350)) begin
            ap_phi_mux_icmp_ln1444538_phi_fu_188_p4 = xor_ln14445_reg_491;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1444538_phi_fu_188_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1444538_phi_fu_188_p4 = xor_ln14445_reg_491;
        end
    end else begin
        ap_phi_mux_icmp_ln1444538_phi_fu_188_p4 = xor_ln14445_reg_491;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1122336_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1122336_load = v1122336_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1122437_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1122437_load = v1122437_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11264_1_ce0_local = 1'b1;
    end else begin
        v11264_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11264_ce0_local = 1'b1;
    end else begin
        v11264_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11265_1_ce0_local = 1'b1;
    end else begin
        v11265_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11265_ce0_local = 1'b1;
    end else begin
        v11265_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v11266_1_ce0_local = 1'b1;
    end else begin
        v11266_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v11266_1_we0_local = 1'b1;
    end else begin
        v11266_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v11266_ce0_local = 1'b1;
    end else begin
        v11266_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v11266_we0_local = 1'b1;
    end else begin
        v11266_we0_local = 1'b0;
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
assign add_ln14443_1_fu_306_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 13'd1);
assign add_ln14443_fu_361_p2 = (v1122234_fu_80 + 5'd1);
assign add_ln14444_1_fu_292_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 11'd1);
assign add_ln14444_fu_254_p2 = (select_ln14443_fu_232_p3 + 6'd1);
assign add_ln14446_fu_390_p2 = (tmp_fu_379_p3 + zext_ln14454_fu_387_p1);
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
    ap_condition_111 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_350 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln14443_reg_501 == 1'd0));
end
always @ (*) begin
    ap_condition_355 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln14443_reg_501 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln14443_fu_332_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 13'd8191) ? 1'b1 : 1'b0);
assign icmp_ln14444_fu_326_p2 = ((select_ln14444_1_fu_298_p3 == 11'd512) ? 1'b1 : 1'b0);
assign icmp_ln224_4_fu_431_p2 = (($signed(v11264_q0) < $signed(v11265_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_416_p2 = (($signed(v11264_1_q0) < $signed(v11265_1_q0)) ? 1'b1 : 1'b0);
assign or_ln14443_fu_248_p2 = (ap_phi_mux_icmp_ln1444538_phi_fu_188_p4 | ap_phi_mux_icmp_ln1444439_phi_fu_177_p4);
assign select_ln14443_1_fu_240_p3 = ((ap_phi_mux_icmp_ln1444439_phi_fu_177_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v1122437_load);
assign select_ln14443_fu_232_p3 = ((ap_phi_mux_icmp_ln1444439_phi_fu_177_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v1122336_load);
assign select_ln14444_1_fu_298_p3 = ((ap_phi_mux_icmp_ln1444439_phi_fu_177_p4[0:0] == 1'b1) ? 11'd1 : add_ln14444_1_fu_292_p2);
assign select_ln14450_fu_422_p3 = ((icmp_ln224_fu_416_p2[0:0] == 1'b1) ? v11265_1_q0 : v11264_1_q0);
assign select_ln14454_fu_437_p3 = ((icmp_ln224_4_fu_431_p2[0:0] == 1'b1) ? v11265_q0 : v11264_q0);
assign tmp_445_fu_312_p3 = v11224_fu_286_p2[32'd5];
assign tmp_fu_379_p3 = {{trunc_ln14444_fu_375_p1}, {5'd0}};
assign tmp_s_fu_396_p3 = {{add_ln14446_fu_390_p2}, {lshr_ln_reg_486}};
assign trunc_ln14444_fu_375_p1 = v11222_fu_367_p3[3:0];
assign v11222_fu_367_p3 = ((icmp_ln1444439_reg_174[0:0] == 1'b1) ? add_ln14443_fu_361_p2 : v1122234_fu_80);
assign v11223_fu_268_p3 = ((or_ln14443_fu_248_p2[0:0] == 1'b1) ? select_ln14443_fu_232_p3 : add_ln14444_fu_254_p2);
assign v11224_fu_286_p2 = (v11224_mid2_fu_260_p3 + 6'd2);
assign v11224_mid2_fu_260_p3 = ((or_ln14443_fu_248_p2[0:0] == 1'b1) ? select_ln14443_1_fu_240_p3 : 6'd0);
assign v11264_1_address0 = zext_ln14454_1_fu_403_p1;
assign v11264_1_ce0 = v11264_1_ce0_local;
assign v11264_address0 = zext_ln14454_1_fu_403_p1;
assign v11264_ce0 = v11264_ce0_local;
assign v11265_1_address0 = zext_ln14454_1_fu_403_p1;
assign v11265_1_ce0 = v11265_1_ce0_local;
assign v11265_address0 = zext_ln14454_1_fu_403_p1;
assign v11265_ce0 = v11265_ce0_local;
assign v11266_1_address0 = zext_ln14454_1_reg_505;
assign v11266_1_ce0 = v11266_1_ce0_local;
assign v11266_1_d0 = select_ln14450_fu_422_p3;
assign v11266_1_we0 = v11266_1_we0_local;
assign v11266_address0 = zext_ln14454_1_reg_505;
assign v11266_ce0 = v11266_ce0_local;
assign v11266_d0 = select_ln14454_fu_437_p3;
assign v11266_we0 = v11266_we0_local;
assign xor_ln14445_fu_320_p2 = (tmp_445_fu_312_p3 ^ 1'd1);
assign zext_ln14454_1_fu_403_p1 = tmp_s_fu_396_p3;
assign zext_ln14454_fu_387_p1 = v11223_reg_481;
always @ (posedge ap_clk) begin
    zext_ln14454_1_reg_505[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 