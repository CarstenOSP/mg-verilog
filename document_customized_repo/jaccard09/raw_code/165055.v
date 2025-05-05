module forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v3743,v9238_address0,v9238_ce0,v9238_q0,v3752_address0,v3752_ce0,v3752_we0,v3752_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [6:0] v3743;
output  [16:0] v9238_address0;
output   v9238_ce0;
input  [7:0] v9238_q0;
output  [10:0] v3752_address0;
output   v3752_ce0;
output   v3752_we0;
output  [7:0] v3752_d0;
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
wire   [0:0] icmp_ln5450_fu_255_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [6:0] mul_i167_i_i_fu_185_p3;
reg   [6:0] mul_i167_i_i_reg_604;
wire   [4:0] zext_ln5450_cast_cast_i_cast_cast_fu_201_p3;
reg   [4:0] zext_ln5450_cast_cast_i_cast_cast_reg_609;
wire   [4:0] zext_ln5450_1_cast_cast_i_cast_cast_fu_213_p3;
reg   [4:0] zext_ln5450_1_cast_cast_i_cast_cast_reg_614;
reg   [4:0] zext_ln5450_1_cast_cast_i_cast_cast_reg_614_pp0_iter1_reg;
reg   [0:0] icmp_ln5450_reg_619;
reg   [0:0] icmp_ln5450_reg_619_pp0_iter1_reg;
wire   [5:0] select_ln5450_1_fu_304_p3;
reg   [5:0] select_ln5450_1_reg_623;
wire   [2:0] v3731_mid2_i_fu_324_p3;
reg   [2:0] v3731_mid2_i_reg_629;
wire   [2:0] select_ln5451_fu_332_p3;
reg   [2:0] select_ln5451_reg_635;
wire   [11:0] add_ln5455_1_fu_396_p2;
reg   [11:0] add_ln5455_1_reg_640;
wire   [0:0] icmp_ln5452_fu_422_p2;
reg   [0:0] icmp_ln5452_reg_646;
wire   [0:0] icmp_ln5451_fu_428_p2;
reg   [0:0] icmp_ln5451_reg_651;
wire   [10:0] add_ln5455_2_fu_528_p2;
reg   [10:0] add_ln5455_2_reg_656;
reg   [0:0] ap_phi_mux_icmp_ln545115_i_phi_fu_153_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln545214_i_phi_fu_164_p4;
wire   [63:0] zext_ln5455_9_fu_560_p1;
wire   [63:0] zext_ln5455_7_fu_565_p1;
reg   [10:0] indvar_flatten129_i_fu_96;
wire   [10:0] add_ln5450_1_fu_249_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten129_i_load;
reg   [5:0] v372910_i_fu_100;
reg   [5:0] indvar_flatten11_i_fu_104;
wire   [5:0] select_ln5451_1_fu_414_p3;
reg   [2:0] v373012_i_fu_108;
reg   [2:0] v373113_i_fu_112;
wire   [2:0] add_ln5452_fu_402_p2;
reg    v9238_ce0_local;
reg    v3752_we0_local;
reg    v3752_ce0_local;
wire   [1:0] tmp_i_fu_175_p4;
wire   [7:0] v3743_cast2_fu_171_p1;
wire   [0:0] tmp_fu_193_p3;
wire   [0:0] empty_fu_209_p1;
wire   [0:0] xor_ln5450_fu_292_p2;
wire   [5:0] add_ln5450_fu_278_p2;
wire   [2:0] select_ln5450_fu_284_p3;
wire   [0:0] and_ln5450_fu_298_p2;
wire   [0:0] empty_286_fu_318_p2;
wire   [2:0] add_ln5451_fu_312_p2;
wire   [6:0] zext_ln5450_fu_340_p1;
wire   [6:0] empty_287_fu_344_p2;
wire   [8:0] tmp_218_fu_357_p3;
wire   [11:0] p_shl23_fu_349_p3;
wire   [11:0] zext_ln5455_1_fu_365_p1;
wire   [3:0] tmp_124_i_fu_375_p3;
wire   [4:0] p_cast8_i_i_i_fu_383_p1;
wire   [4:0] empty_288_fu_387_p2;
wire   [11:0] sub_ln5455_1_fu_369_p2;
wire   [11:0] zext_ln5455_4_fu_392_p1;
wire   [5:0] add_ln5451_1_fu_408_p2;
wire   [8:0] p_shl25_fu_457_p3;
wire   [8:0] zext_ln5455_fu_454_p1;
wire   [8:0] sub_ln5455_fu_464_p2;
wire   [8:0] zext_ln5455_2_fu_470_p1;
wire   [8:0] add_ln5455_fu_473_p2;
wire   [7:0] trunc_ln5455_fu_479_p1;
wire   [10:0] tmp_219_fu_483_p3;
wire   [10:0] zext_ln5455_3_fu_491_p1;
wire   [13:0] tmp_220_fu_508_p3;
wire   [16:0] p_shl_fu_501_p3;
wire   [16:0] zext_ln5455_5_fu_515_p1;
wire   [10:0] sub_ln5455_2_fu_495_p2;
wire   [10:0] zext_ln5455_6_fu_525_p1;
wire   [3:0] shl_ln_i_fu_534_p3;
wire   [4:0] zext_ln5454_fu_541_p1;
wire   [4:0] add_ln5454_fu_545_p2;
wire   [16:0] sub_ln5455_3_fu_519_p2;
wire   [16:0] zext_ln5455_8_fu_550_p1;
wire   [16:0] add_ln5455_3_fu_554_p2;
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
#0 indvar_flatten129_i_fu_96 = 11'd0;
#0 v372910_i_fu_100 = 6'd0;
#0 indvar_flatten11_i_fu_104 = 6'd0;
#0 v373012_i_fu_108 = 3'd0;
#0 v373113_i_fu_112 = 3'd0;
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
            indvar_flatten11_i_fu_104 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten11_i_fu_104 <= select_ln5451_1_fu_414_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        indvar_flatten129_i_fu_96 <= add_ln5450_1_fu_249_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v372910_i_fu_100 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v372910_i_fu_100 <= select_ln5450_1_fu_304_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v373012_i_fu_108 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v373012_i_fu_108 <= select_ln5451_fu_332_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v373113_i_fu_112 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v373113_i_fu_112 <= add_ln5452_fu_402_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln5455_1_reg_640[11 : 1] <= add_ln5455_1_fu_396_p2[11 : 1];
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln5450_reg_619 <= icmp_ln5450_fu_255_p2;
        icmp_ln5450_reg_619_pp0_iter1_reg <= icmp_ln5450_reg_619;
        mul_i167_i_i_reg_604[6 : 5] <= mul_i167_i_i_fu_185_p3[6 : 5];
        select_ln5450_1_reg_623 <= select_ln5450_1_fu_304_p3;
        select_ln5451_reg_635 <= select_ln5451_fu_332_p3;
        v3731_mid2_i_reg_629 <= v3731_mid2_i_fu_324_p3;
        zext_ln5450_1_cast_cast_i_cast_cast_reg_614[3 : 1] <= zext_ln5450_1_cast_cast_i_cast_cast_fu_213_p3[3 : 1];
        zext_ln5450_1_cast_cast_i_cast_cast_reg_614_pp0_iter1_reg[3 : 1] <= zext_ln5450_1_cast_cast_i_cast_cast_reg_614[3 : 1];
        zext_ln5450_cast_cast_i_cast_cast_reg_609[3 : 1] <= zext_ln5450_cast_cast_i_cast_cast_fu_201_p3[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln5455_2_reg_656 <= add_ln5455_2_fu_528_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5451_reg_651 <= icmp_ln5451_fu_428_p2;
        icmp_ln5452_reg_646 <= icmp_ln5452_fu_422_p2;
    end
end
always @ (*) begin
    if (((icmp_ln5450_fu_255_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln5450_reg_619_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln545115_i_phi_fu_153_p4 = icmp_ln5451_reg_651;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln545115_i_phi_fu_153_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln545115_i_phi_fu_153_p4 = icmp_ln5451_reg_651;
    end
end
always @ (*) begin
    if (((icmp_ln5450_reg_619_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln545214_i_phi_fu_164_p4 = icmp_ln5452_reg_646;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln545214_i_phi_fu_164_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln545214_i_phi_fu_164_p4 = icmp_ln5452_reg_646;
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
        ap_sig_allocacmp_indvar_flatten129_i_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten129_i_load = indvar_flatten129_i_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3752_ce0_local = 1'b1;
    end else begin
        v3752_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3752_we0_local = 1'b1;
    end else begin
        v3752_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9238_ce0_local = 1'b1;
    end else begin
        v9238_ce0_local = 1'b0;
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
assign add_ln5450_1_fu_249_p2 = (ap_sig_allocacmp_indvar_flatten129_i_load + 11'd1);
assign add_ln5450_fu_278_p2 = (v372910_i_fu_100 + 6'd1);
assign add_ln5451_1_fu_408_p2 = (indvar_flatten11_i_fu_104 + 6'd1);
assign add_ln5451_fu_312_p2 = (select_ln5450_fu_284_p3 + 3'd1);
assign add_ln5452_fu_402_p2 = (v3731_mid2_i_fu_324_p3 + 3'd1);
assign add_ln5454_fu_545_p2 = (zext_ln5450_1_cast_cast_i_cast_cast_reg_614_pp0_iter1_reg + zext_ln5454_fu_541_p1);
assign add_ln5455_1_fu_396_p2 = (sub_ln5455_1_fu_369_p2 + zext_ln5455_4_fu_392_p1);
assign add_ln5455_2_fu_528_p2 = (sub_ln5455_2_fu_495_p2 + zext_ln5455_6_fu_525_p1);
assign add_ln5455_3_fu_554_p2 = (sub_ln5455_3_fu_519_p2 + zext_ln5455_8_fu_550_p1);
assign add_ln5455_fu_473_p2 = (sub_ln5455_fu_464_p2 + zext_ln5455_2_fu_470_p1);
assign and_ln5450_fu_298_p2 = (xor_ln5450_fu_292_p2 & ap_phi_mux_icmp_ln545214_i_phi_fu_164_p4);
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
assign empty_286_fu_318_p2 = (ap_phi_mux_icmp_ln545115_i_phi_fu_153_p4 | and_ln5450_fu_298_p2);
assign empty_287_fu_344_p2 = (mul_i167_i_i_reg_604 + zext_ln5450_fu_340_p1);
assign empty_288_fu_387_p2 = (zext_ln5450_cast_cast_i_cast_cast_reg_609 + p_cast8_i_i_i_fu_383_p1);
assign empty_fu_209_p1 = v3743[0:0];
assign icmp_ln5450_fu_255_p2 = ((ap_sig_allocacmp_indvar_flatten129_i_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln5451_fu_428_p2 = ((select_ln5451_1_fu_414_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln5452_fu_422_p2 = ((add_ln5452_fu_402_p2 == 3'd7) ? 1'b1 : 1'b0);
assign mul_i167_i_i_fu_185_p3 = {{tmp_i_fu_175_p4}, {5'd0}};
assign p_cast8_i_i_i_fu_383_p1 = tmp_124_i_fu_375_p3;
assign p_shl23_fu_349_p3 = {{empty_287_fu_344_p2}, {5'd0}};
assign p_shl25_fu_457_p3 = {{select_ln5450_1_reg_623}, {3'd0}};
assign p_shl_fu_501_p3 = {{add_ln5455_1_reg_640}, {5'd0}};
assign select_ln5450_1_fu_304_p3 = ((ap_phi_mux_icmp_ln545115_i_phi_fu_153_p4[0:0] == 1'b1) ? add_ln5450_fu_278_p2 : v372910_i_fu_100);
assign select_ln5450_fu_284_p3 = ((ap_phi_mux_icmp_ln545115_i_phi_fu_153_p4[0:0] == 1'b1) ? 3'd0 : v373012_i_fu_108);
assign select_ln5451_1_fu_414_p3 = ((ap_phi_mux_icmp_ln545115_i_phi_fu_153_p4[0:0] == 1'b1) ? 6'd1 : add_ln5451_1_fu_408_p2);
assign select_ln5451_fu_332_p3 = ((and_ln5450_fu_298_p2[0:0] == 1'b1) ? add_ln5451_fu_312_p2 : select_ln5450_fu_284_p3);
assign shl_ln_i_fu_534_p3 = {{v3731_mid2_i_reg_629}, {1'd0}};
assign sub_ln5455_1_fu_369_p2 = (p_shl23_fu_349_p3 - zext_ln5455_1_fu_365_p1);
assign sub_ln5455_2_fu_495_p2 = (tmp_219_fu_483_p3 - zext_ln5455_3_fu_491_p1);
assign sub_ln5455_3_fu_519_p2 = (p_shl_fu_501_p3 - zext_ln5455_5_fu_515_p1);
assign sub_ln5455_fu_464_p2 = (p_shl25_fu_457_p3 - zext_ln5455_fu_454_p1);
assign tmp_124_i_fu_375_p3 = {{select_ln5451_fu_332_p3}, {1'd0}};
assign tmp_218_fu_357_p3 = {{empty_287_fu_344_p2}, {2'd0}};
assign tmp_219_fu_483_p3 = {{trunc_ln5455_fu_479_p1}, {3'd0}};
assign tmp_220_fu_508_p3 = {{add_ln5455_1_reg_640}, {2'd0}};
assign tmp_fu_193_p3 = v3743_cast2_fu_171_p1[32'd1];
assign tmp_i_fu_175_p4 = {{v3743[6:5]}};
assign trunc_ln5455_fu_479_p1 = add_ln5455_fu_473_p2[7:0];
assign v3731_mid2_i_fu_324_p3 = ((empty_286_fu_318_p2[0:0] == 1'b1) ? 3'd0 : v373113_i_fu_112);
assign v3743_cast2_fu_171_p1 = v3743;
assign v3752_address0 = zext_ln5455_7_fu_565_p1;
assign v3752_ce0 = v3752_ce0_local;
assign v3752_d0 = v9238_q0;
assign v3752_we0 = v3752_we0_local;
assign v9238_address0 = zext_ln5455_9_fu_560_p1;
assign v9238_ce0 = v9238_ce0_local;
assign xor_ln5450_fu_292_p2 = (ap_phi_mux_icmp_ln545115_i_phi_fu_153_p4 ^ 1'd1);
assign zext_ln5450_1_cast_cast_i_cast_cast_fu_213_p3 = ((empty_fu_209_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln5450_cast_cast_i_cast_cast_fu_201_p3 = ((tmp_fu_193_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln5450_fu_340_p1 = select_ln5450_1_fu_304_p3;
assign zext_ln5454_fu_541_p1 = shl_ln_i_fu_534_p3;
assign zext_ln5455_1_fu_365_p1 = tmp_218_fu_357_p3;
assign zext_ln5455_2_fu_470_p1 = select_ln5451_reg_635;
assign zext_ln5455_3_fu_491_p1 = add_ln5455_fu_473_p2;
assign zext_ln5455_4_fu_392_p1 = empty_288_fu_387_p2;
assign zext_ln5455_5_fu_515_p1 = tmp_220_fu_508_p3;
assign zext_ln5455_6_fu_525_p1 = v3731_mid2_i_reg_629;
assign zext_ln5455_7_fu_565_p1 = add_ln5455_2_reg_656;
assign zext_ln5455_8_fu_550_p1 = add_ln5454_fu_545_p2;
assign zext_ln5455_9_fu_560_p1 = add_ln5455_3_fu_554_p2;
assign zext_ln5455_fu_454_p1 = select_ln5450_1_reg_623;
always @ (posedge ap_clk) begin
    mul_i167_i_i_reg_604[4:0] <= 5'b00000;
    zext_ln5450_cast_cast_i_cast_cast_reg_609[0] <= 1'b0;
    zext_ln5450_cast_cast_i_cast_cast_reg_609[4] <= 1'b0;
    zext_ln5450_1_cast_cast_i_cast_cast_reg_614[0] <= 1'b0;
    zext_ln5450_1_cast_cast_i_cast_cast_reg_614[4] <= 1'b0;
    zext_ln5450_1_cast_cast_i_cast_cast_reg_614_pp0_iter1_reg[0] <= 1'b0;
    zext_ln5450_1_cast_cast_i_cast_cast_reg_614_pp0_iter1_reg[4] <= 1'b0;
    add_ln5455_1_reg_640[0] <= 1'b0;
end
endmodule 