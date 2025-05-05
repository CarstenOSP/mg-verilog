module forward_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v12816_0,v15450_address0,v15450_ce0,v15450_q0,v12822_address0,v12822_ce0,v12822_we0,v12822_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] v12816_0;
output  [16:0] v15450_address0;
output   v15450_ce0;
input  [7:0] v15450_q0;
output  [12:0] v12822_address0;
output   v12822_ce0;
output   v12822_we0;
output  [7:0] v12822_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln16352_fu_257_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [6:0] mul_i_fu_187_p3;
reg   [6:0] mul_i_reg_606;
wire   [4:0] zext_ln16352_cast_cast_cast_cast_fu_203_p3;
reg   [4:0] zext_ln16352_cast_cast_cast_cast_reg_611;
wire   [4:0] zext_ln16352_1_cast_cast_cast_cast_fu_215_p3;
reg   [4:0] zext_ln16352_1_cast_cast_cast_cast_reg_616;
reg   [4:0] zext_ln16352_1_cast_cast_cast_cast_reg_616_pp0_iter1_reg;
reg   [0:0] icmp_ln16352_reg_621;
reg   [0:0] icmp_ln16352_reg_621_pp0_iter1_reg;
wire   [5:0] v12788_fu_306_p3;
reg   [5:0] v12788_reg_625;
wire   [3:0] v12790_mid2_fu_326_p3;
reg   [3:0] v12790_mid2_reg_631;
wire   [3:0] v12789_fu_334_p3;
reg   [3:0] v12789_reg_637;
wire   [11:0] add_ln16357_1_fu_390_p2;
reg   [11:0] add_ln16357_1_reg_642;
wire   [0:0] icmp_ln16354_fu_416_p2;
reg   [0:0] icmp_ln16354_reg_648;
wire   [0:0] icmp_ln16353_fu_422_p2;
reg   [0:0] icmp_ln16353_reg_653;
wire   [12:0] add_ln16357_2_fu_538_p2;
reg   [12:0] add_ln16357_2_reg_658;
reg   [0:0] ap_phi_mux_icmp_ln1635315_phi_fu_159_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1635414_phi_fu_170_p4;
wire   [63:0] zext_ln16357_9_fu_562_p1;
wire   [63:0] zext_ln16357_7_fu_567_p1;
reg   [12:0] indvar_flatten129_fu_102;
wire   [12:0] add_ln16352_1_fu_251_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten129_load;
reg   [5:0] v1278810_fu_106;
reg   [7:0] indvar_flatten11_fu_110;
wire   [7:0] select_ln16353_1_fu_408_p3;
reg   [3:0] v1278912_fu_114;
reg   [3:0] v1279013_fu_118;
wire   [3:0] v12790_fu_396_p2;
reg    v15450_ce0_local;
reg    v12822_we0_local;
reg    v12822_ce0_local;
wire   [1:0] tmp_fu_177_p4;
wire   [0:0] tmp_292_fu_195_p3;
wire   [0:0] empty_fu_211_p1;
wire   [0:0] xor_ln16352_fu_294_p2;
wire   [5:0] add_ln16352_fu_280_p2;
wire   [3:0] select_ln16352_fu_286_p3;
wire   [0:0] and_ln16352_fu_300_p2;
wire   [0:0] empty_300_fu_320_p2;
wire   [3:0] add_ln16353_fu_314_p2;
wire   [6:0] zext_ln16352_fu_342_p1;
wire   [6:0] empty_301_fu_346_p2;
wire   [8:0] tmp_294_fu_359_p3;
wire   [11:0] p_shl41_fu_351_p3;
wire   [11:0] zext_ln16357_1_fu_367_p1;
wire   [4:0] zext_ln16353_fu_377_p1;
wire   [4:0] empty_302_fu_381_p2;
wire   [11:0] sub_ln16357_1_fu_371_p2;
wire   [11:0] zext_ln16357_4_fu_386_p1;
wire   [7:0] add_ln16353_1_fu_402_p2;
wire   [6:0] tmp_293_fu_455_p3;
wire   [9:0] p_shl43_fu_448_p3;
wire   [9:0] zext_ln16357_fu_462_p1;
wire   [9:0] sub_ln16357_fu_466_p2;
wire   [9:0] zext_ln16357_2_fu_472_p1;
wire   [9:0] add_ln16357_fu_475_p2;
wire   [8:0] trunc_ln16357_fu_481_p1;
wire   [10:0] tmp_295_fu_485_p3;
wire   [12:0] tmp_296_fu_493_p3;
wire   [12:0] zext_ln16357_3_fu_501_p1;
wire   [13:0] tmp_297_fu_518_p3;
wire   [16:0] p_shl_fu_511_p3;
wire   [16:0] zext_ln16357_5_fu_525_p1;
wire   [12:0] sub_ln16353_fu_505_p2;
wire   [12:0] zext_ln16357_6_fu_535_p1;
wire   [4:0] zext_ln16354_fu_544_p1;
wire   [4:0] add_ln16356_fu_547_p2;
wire   [16:0] sub_ln16357_2_fu_529_p2;
wire   [16:0] zext_ln16357_8_fu_552_p1;
wire   [16:0] add_ln16357_3_fu_556_p2;
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
reg    ap_condition_143;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten129_fu_102 = 13'd0;
#0 v1278810_fu_106 = 6'd0;
#0 indvar_flatten11_fu_110 = 8'd0;
#0 v1278912_fu_114 = 4'd0;
#0 v1279013_fu_118 = 4'd0;
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
        if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
            indvar_flatten11_fu_110 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten11_fu_110 <= select_ln16353_1_fu_408_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        indvar_flatten129_fu_102 <= add_ln16352_1_fu_251_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1278810_fu_106 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1278810_fu_106 <= v12788_fu_306_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1278912_fu_114 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1278912_fu_114 <= v12789_fu_334_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1279013_fu_118 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1279013_fu_118 <= v12790_fu_396_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln16357_1_reg_642 <= add_ln16357_1_fu_390_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln16352_reg_621 <= icmp_ln16352_fu_257_p2;
        icmp_ln16352_reg_621_pp0_iter1_reg <= icmp_ln16352_reg_621;
        mul_i_reg_606[6 : 5] <= mul_i_fu_187_p3[6 : 5];
        v12788_reg_625 <= v12788_fu_306_p3;
        v12789_reg_637 <= v12789_fu_334_p3;
        v12790_mid2_reg_631 <= v12790_mid2_fu_326_p3;
        zext_ln16352_1_cast_cast_cast_cast_reg_616[3 : 1] <= zext_ln16352_1_cast_cast_cast_cast_fu_215_p3[3 : 1];
        zext_ln16352_1_cast_cast_cast_cast_reg_616_pp0_iter1_reg[3 : 1] <= zext_ln16352_1_cast_cast_cast_cast_reg_616[3 : 1];
        zext_ln16352_cast_cast_cast_cast_reg_611[3 : 1] <= zext_ln16352_cast_cast_cast_cast_fu_203_p3[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln16357_2_reg_658 <= add_ln16357_2_fu_538_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln16353_reg_653 <= icmp_ln16353_fu_422_p2;
        icmp_ln16354_reg_648 <= icmp_ln16354_fu_416_p2;
    end
end
always @ (*) begin
    if (((icmp_ln16352_fu_257_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16352_reg_621_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1635315_phi_fu_159_p4 = icmp_ln16353_reg_653;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1635315_phi_fu_159_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1635315_phi_fu_159_p4 = icmp_ln16353_reg_653;
    end
end
always @ (*) begin
    if (((icmp_ln16352_reg_621_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1635414_phi_fu_170_p4 = icmp_ln16354_reg_648;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1635414_phi_fu_170_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1635414_phi_fu_170_p4 = icmp_ln16354_reg_648;
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
        ap_sig_allocacmp_indvar_flatten129_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten129_load = indvar_flatten129_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12822_ce0_local = 1'b1;
    end else begin
        v12822_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12822_we0_local = 1'b1;
    end else begin
        v12822_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15450_ce0_local = 1'b1;
    end else begin
        v15450_ce0_local = 1'b0;
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
assign add_ln16352_1_fu_251_p2 = (ap_sig_allocacmp_indvar_flatten129_load + 13'd1);
assign add_ln16352_fu_280_p2 = (v1278810_fu_106 + 6'd1);
assign add_ln16353_1_fu_402_p2 = (indvar_flatten11_fu_110 + 8'd1);
assign add_ln16353_fu_314_p2 = (select_ln16352_fu_286_p3 + 4'd1);
assign add_ln16356_fu_547_p2 = (zext_ln16352_1_cast_cast_cast_cast_reg_616_pp0_iter1_reg + zext_ln16354_fu_544_p1);
assign add_ln16357_1_fu_390_p2 = (sub_ln16357_1_fu_371_p2 + zext_ln16357_4_fu_386_p1);
assign add_ln16357_2_fu_538_p2 = (sub_ln16353_fu_505_p2 + zext_ln16357_6_fu_535_p1);
assign add_ln16357_3_fu_556_p2 = (sub_ln16357_2_fu_529_p2 + zext_ln16357_8_fu_552_p1);
assign add_ln16357_fu_475_p2 = (sub_ln16357_fu_466_p2 + zext_ln16357_2_fu_472_p1);
assign and_ln16352_fu_300_p2 = (xor_ln16352_fu_294_p2 & ap_phi_mux_icmp_ln1635414_phi_fu_170_p4);
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
    ap_condition_143 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_300_fu_320_p2 = (ap_phi_mux_icmp_ln1635315_phi_fu_159_p4 | and_ln16352_fu_300_p2);
assign empty_301_fu_346_p2 = (mul_i_reg_606 + zext_ln16352_fu_342_p1);
assign empty_302_fu_381_p2 = (zext_ln16352_cast_cast_cast_cast_reg_611 + zext_ln16353_fu_377_p1);
assign empty_fu_211_p1 = v12816_0[0:0];
assign icmp_ln16352_fu_257_p2 = ((ap_sig_allocacmp_indvar_flatten129_load == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln16353_fu_422_p2 = ((select_ln16353_1_fu_408_p3 == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln16354_fu_416_p2 = ((v12790_fu_396_p2 == 4'd14) ? 1'b1 : 1'b0);
assign mul_i_fu_187_p3 = {{tmp_fu_177_p4}, {5'd0}};
assign p_shl41_fu_351_p3 = {{empty_301_fu_346_p2}, {5'd0}};
assign p_shl43_fu_448_p3 = {{v12788_reg_625}, {4'd0}};
assign p_shl_fu_511_p3 = {{add_ln16357_1_reg_642}, {5'd0}};
assign select_ln16352_fu_286_p3 = ((ap_phi_mux_icmp_ln1635315_phi_fu_159_p4[0:0] == 1'b1) ? 4'd0 : v1278912_fu_114);
assign select_ln16353_1_fu_408_p3 = ((ap_phi_mux_icmp_ln1635315_phi_fu_159_p4[0:0] == 1'b1) ? 8'd1 : add_ln16353_1_fu_402_p2);
assign sub_ln16353_fu_505_p2 = (tmp_296_fu_493_p3 - zext_ln16357_3_fu_501_p1);
assign sub_ln16357_1_fu_371_p2 = (p_shl41_fu_351_p3 - zext_ln16357_1_fu_367_p1);
assign sub_ln16357_2_fu_529_p2 = (p_shl_fu_511_p3 - zext_ln16357_5_fu_525_p1);
assign sub_ln16357_fu_466_p2 = (p_shl43_fu_448_p3 - zext_ln16357_fu_462_p1);
assign tmp_292_fu_195_p3 = v12816_0[32'd1];
assign tmp_293_fu_455_p3 = {{v12788_reg_625}, {1'd0}};
assign tmp_294_fu_359_p3 = {{empty_301_fu_346_p2}, {2'd0}};
assign tmp_295_fu_485_p3 = {{add_ln16357_fu_475_p2}, {1'd0}};
assign tmp_296_fu_493_p3 = {{trunc_ln16357_fu_481_p1}, {4'd0}};
assign tmp_297_fu_518_p3 = {{add_ln16357_1_reg_642}, {2'd0}};
assign tmp_fu_177_p4 = {{v12816_0[3:2]}};
assign trunc_ln16357_fu_481_p1 = add_ln16357_fu_475_p2[8:0];
assign v12788_fu_306_p3 = ((ap_phi_mux_icmp_ln1635315_phi_fu_159_p4[0:0] == 1'b1) ? add_ln16352_fu_280_p2 : v1278810_fu_106);
assign v12789_fu_334_p3 = ((and_ln16352_fu_300_p2[0:0] == 1'b1) ? add_ln16353_fu_314_p2 : select_ln16352_fu_286_p3);
assign v12790_fu_396_p2 = (v12790_mid2_fu_326_p3 + 4'd1);
assign v12790_mid2_fu_326_p3 = ((empty_300_fu_320_p2[0:0] == 1'b1) ? 4'd0 : v1279013_fu_118);
assign v12822_address0 = zext_ln16357_7_fu_567_p1;
assign v12822_ce0 = v12822_ce0_local;
assign v12822_d0 = v15450_q0;
assign v12822_we0 = v12822_we0_local;
assign v15450_address0 = zext_ln16357_9_fu_562_p1;
assign v15450_ce0 = v15450_ce0_local;
assign xor_ln16352_fu_294_p2 = (ap_phi_mux_icmp_ln1635315_phi_fu_159_p4 ^ 1'd1);
assign zext_ln16352_1_cast_cast_cast_cast_fu_215_p3 = ((empty_fu_211_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln16352_cast_cast_cast_cast_fu_203_p3 = ((tmp_292_fu_195_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln16352_fu_342_p1 = v12788_fu_306_p3;
assign zext_ln16353_fu_377_p1 = v12789_fu_334_p3;
assign zext_ln16354_fu_544_p1 = v12790_mid2_reg_631;
assign zext_ln16357_1_fu_367_p1 = tmp_294_fu_359_p3;
assign zext_ln16357_2_fu_472_p1 = v12789_reg_637;
assign zext_ln16357_3_fu_501_p1 = tmp_295_fu_485_p3;
assign zext_ln16357_4_fu_386_p1 = empty_302_fu_381_p2;
assign zext_ln16357_5_fu_525_p1 = tmp_297_fu_518_p3;
assign zext_ln16357_6_fu_535_p1 = v12790_mid2_reg_631;
assign zext_ln16357_7_fu_567_p1 = add_ln16357_2_reg_658;
assign zext_ln16357_8_fu_552_p1 = add_ln16356_fu_547_p2;
assign zext_ln16357_9_fu_562_p1 = add_ln16357_3_fu_556_p2;
assign zext_ln16357_fu_462_p1 = tmp_293_fu_455_p3;
always @ (posedge ap_clk) begin
    mul_i_reg_606[4:0] <= 5'b00000;
    zext_ln16352_cast_cast_cast_cast_reg_611[0] <= 1'b0;
    zext_ln16352_cast_cast_cast_cast_reg_611[4] <= 1'b0;
    zext_ln16352_1_cast_cast_cast_cast_reg_616[0] <= 1'b0;
    zext_ln16352_1_cast_cast_cast_cast_reg_616[4] <= 1'b0;
    zext_ln16352_1_cast_cast_cast_cast_reg_616_pp0_iter1_reg[0] <= 1'b0;
    zext_ln16352_1_cast_cast_cast_cast_reg_616_pp0_iter1_reg[4] <= 1'b0;
end
endmodule 