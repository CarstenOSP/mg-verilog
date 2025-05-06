
module forward_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7614_0,v15492_address0,v15492_ce0,v15492_q0,v7620_address0,v7620_ce0,v7620_we0,v7620_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [9:0] v7614_0;
output  [16:0] v15492_address0;
output   v15492_ce0;
input  [7:0] v15492_q0;
output  [10:0] v7620_address0;
output   v7620_ce0;
output   v7620_we0;
output  [7:0] v7620_d0;
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
wire   [0:0] icmp_ln9070_fu_249_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [8:0] mul_i_fu_179_p3;
reg   [8:0] mul_i_reg_579;
wire   [3:0] zext_ln9110_cast_cast_cast_cast_fu_195_p3;
reg   [3:0] zext_ln9110_cast_cast_cast_cast_reg_584;
wire   [3:0] zext_ln9110_6_cast_cast_cast_cast_fu_207_p3;
reg   [3:0] zext_ln9110_6_cast_cast_cast_cast_reg_589;
reg   [3:0] zext_ln9110_6_cast_cast_cast_cast_reg_589_pp0_iter1_reg;
reg   [0:0] icmp_ln9070_reg_594;
reg   [0:0] icmp_ln9070_reg_594_pp0_iter1_reg;
wire   [2:0] v7588_mid2_fu_318_p3;
reg   [2:0] v7588_mid2_reg_598;
wire   [8:0] add_ln9075_fu_387_p2;
reg   [8:0] add_ln9075_reg_604;
wire   [7:0] trunc_ln9075_fu_393_p1;
reg   [7:0] trunc_ln9075_reg_609;
wire   [12:0] add_ln9075_1_fu_410_p2;
reg   [12:0] add_ln9075_1_reg_614;
wire   [0:0] icmp_ln9072_fu_436_p2;
reg   [0:0] icmp_ln9072_reg_620;
wire   [0:0] icmp_ln9071_fu_442_p2;
reg   [0:0] icmp_ln9071_reg_625;
wire   [10:0] add_ln9075_2_fu_511_p2;
reg   [10:0] add_ln9075_2_reg_630;
reg   [0:0] ap_phi_mux_icmp_ln907115_phi_fu_151_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln907214_phi_fu_162_p4;
wire   [63:0] zext_ln9075_8_fu_535_p1;
wire   [63:0] zext_ln9075_6_fu_540_p1;
reg   [10:0] indvar_flatten129_fu_94;
wire   [10:0] add_ln9070_1_fu_243_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten129_load;
reg   [5:0] v758610_fu_98;
wire   [5:0] v7586_fu_298_p3;
reg   [5:0] indvar_flatten11_fu_102;
wire   [5:0] select_ln9071_1_fu_428_p3;
reg   [2:0] v758712_fu_106;
wire   [2:0] v7587_fu_326_p3;
reg   [2:0] v758813_fu_110;
wire   [2:0] v7588_fu_416_p2;
reg    v15492_ce0_local;
reg    v7620_we0_local;
reg    v7620_ce0_local;
wire   [3:0] tmp_fu_169_p4;
wire   [0:0] tmp_5_fu_187_p3;
wire   [0:0] empty_fu_203_p1;
wire   [0:0] xor_ln9070_fu_286_p2;
wire   [5:0] add_ln9070_fu_272_p2;
wire   [2:0] select_ln9070_fu_278_p3;
wire   [0:0] and_ln9070_fu_292_p2;
wire   [0:0] empty_138_fu_312_p2;
wire   [2:0] add_ln9071_fu_306_p2;
wire   [8:0] p_shl42_fu_338_p3;
wire   [8:0] zext_ln9070_fu_334_p1;
wire   [8:0] empty_139_fu_352_p2;
wire   [9:0] tmp_6_fu_365_p3;
wire   [12:0] p_shl40_fu_357_p3;
wire   [12:0] zext_ln9075_fu_373_p1;
wire   [8:0] sub_ln9075_fu_346_p2;
wire   [8:0] zext_ln9075_1_fu_383_p1;
wire   [3:0] zext_ln9071_fu_397_p1;
wire   [3:0] empty_140_fu_401_p2;
wire   [12:0] sub_ln9075_1_fu_377_p2;
wire   [12:0] zext_ln9075_3_fu_406_p1;
wire   [5:0] add_ln9071_1_fu_422_p2;
wire   [10:0] tmp_7_fu_468_p3;
wire   [10:0] zext_ln9075_2_fu_475_p1;
wire   [13:0] tmp_8_fu_491_p3;
wire   [16:0] p_shl_fu_484_p3;
wire   [16:0] zext_ln9075_4_fu_498_p1;
wire   [10:0] sub_ln9071_fu_478_p2;
wire   [10:0] zext_ln9075_5_fu_508_p1;
wire   [3:0] zext_ln9072_fu_517_p1;
wire   [3:0] add_ln9074_fu_520_p2;
wire   [16:0] sub_ln9075_2_fu_502_p2;
wire   [16:0] zext_ln9075_7_fu_525_p1;
wire   [16:0] add_ln9075_3_fu_529_p2;
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
#0 indvar_flatten129_fu_94 = 11'd0;
#0 v758610_fu_98 = 6'd0;
#0 indvar_flatten11_fu_102 = 6'd0;
#0 v758712_fu_106 = 3'd0;
#0 v758813_fu_110 = 3'd0;
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
            indvar_flatten11_fu_102 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten11_fu_102 <= select_ln9071_1_fu_428_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        indvar_flatten129_fu_94 <= add_ln9070_1_fu_243_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v758610_fu_98 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v758610_fu_98 <= v7586_fu_298_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v758712_fu_106 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v758712_fu_106 <= v7587_fu_326_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v758813_fu_110 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v758813_fu_110 <= v7588_fu_416_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln9075_1_reg_614 <= add_ln9075_1_fu_410_p2;
        add_ln9075_reg_604 <= add_ln9075_fu_387_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln9070_reg_594 <= icmp_ln9070_fu_249_p2;
        icmp_ln9070_reg_594_pp0_iter1_reg <= icmp_ln9070_reg_594;
        mul_i_reg_579[8 : 5] <= mul_i_fu_179_p3[8 : 5];
        trunc_ln9075_reg_609 <= trunc_ln9075_fu_393_p1;
        v7588_mid2_reg_598 <= v7588_mid2_fu_318_p3;
        zext_ln9110_6_cast_cast_cast_cast_reg_589[2 : 0] <= zext_ln9110_6_cast_cast_cast_cast_fu_207_p3[2 : 0];
        zext_ln9110_6_cast_cast_cast_cast_reg_589_pp0_iter1_reg[2 : 0] <= zext_ln9110_6_cast_cast_cast_cast_reg_589[2 : 0];
        zext_ln9110_cast_cast_cast_cast_reg_584[2 : 0] <= zext_ln9110_cast_cast_cast_cast_fu_195_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln9075_2_reg_630 <= add_ln9075_2_fu_511_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9071_reg_625 <= icmp_ln9071_fu_442_p2;
        icmp_ln9072_reg_620 <= icmp_ln9072_fu_436_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9070_fu_249_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln9070_reg_594_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln907115_phi_fu_151_p4 = icmp_ln9071_reg_625;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln907115_phi_fu_151_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln907115_phi_fu_151_p4 = icmp_ln9071_reg_625;
    end
end
always @ (*) begin
    if (((icmp_ln9070_reg_594_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln907214_phi_fu_162_p4 = icmp_ln9072_reg_620;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln907214_phi_fu_162_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln907214_phi_fu_162_p4 = icmp_ln9072_reg_620;
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
        ap_sig_allocacmp_indvar_flatten129_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten129_load = indvar_flatten129_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15492_ce0_local = 1'b1;
    end else begin
        v15492_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7620_ce0_local = 1'b1;
    end else begin
        v7620_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7620_we0_local = 1'b1;
    end else begin
        v7620_we0_local = 1'b0;
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
assign add_ln9070_1_fu_243_p2 = (ap_sig_allocacmp_indvar_flatten129_load + 11'd1);
assign add_ln9070_fu_272_p2 = (v758610_fu_98 + 6'd1);
assign add_ln9071_1_fu_422_p2 = (indvar_flatten11_fu_102 + 6'd1);
assign add_ln9071_fu_306_p2 = (select_ln9070_fu_278_p3 + 3'd1);
assign add_ln9074_fu_520_p2 = (zext_ln9110_6_cast_cast_cast_cast_reg_589_pp0_iter1_reg + zext_ln9072_fu_517_p1);
assign add_ln9075_1_fu_410_p2 = (sub_ln9075_1_fu_377_p2 + zext_ln9075_3_fu_406_p1);
assign add_ln9075_2_fu_511_p2 = (sub_ln9071_fu_478_p2 + zext_ln9075_5_fu_508_p1);
assign add_ln9075_3_fu_529_p2 = (sub_ln9075_2_fu_502_p2 + zext_ln9075_7_fu_525_p1);
assign add_ln9075_fu_387_p2 = (sub_ln9075_fu_346_p2 + zext_ln9075_1_fu_383_p1);
assign and_ln9070_fu_292_p2 = (xor_ln9070_fu_286_p2 & ap_phi_mux_icmp_ln907214_phi_fu_162_p4);
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
assign empty_138_fu_312_p2 = (ap_phi_mux_icmp_ln907115_phi_fu_151_p4 | and_ln9070_fu_292_p2);
assign empty_139_fu_352_p2 = (mul_i_reg_579 + zext_ln9070_fu_334_p1);
assign empty_140_fu_401_p2 = (zext_ln9110_cast_cast_cast_cast_reg_584 + zext_ln9071_fu_397_p1);
assign empty_fu_203_p1 = v7614_0[0:0];
assign icmp_ln9070_fu_249_p2 = ((ap_sig_allocacmp_indvar_flatten129_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln9071_fu_442_p2 = ((select_ln9071_1_fu_428_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln9072_fu_436_p2 = ((v7588_fu_416_p2 == 3'd7) ? 1'b1 : 1'b0);
assign mul_i_fu_179_p3 = {{tmp_fu_169_p4}, {5'd0}};
assign p_shl40_fu_357_p3 = {{empty_139_fu_352_p2}, {4'd0}};
assign p_shl42_fu_338_p3 = {{v7586_fu_298_p3}, {3'd0}};
assign p_shl_fu_484_p3 = {{add_ln9075_1_reg_614}, {4'd0}};
assign select_ln9070_fu_278_p3 = ((ap_phi_mux_icmp_ln907115_phi_fu_151_p4[0:0] == 1'b1) ? 3'd0 : v758712_fu_106);
assign select_ln9071_1_fu_428_p3 = ((ap_phi_mux_icmp_ln907115_phi_fu_151_p4[0:0] == 1'b1) ? 6'd1 : add_ln9071_1_fu_422_p2);
assign sub_ln9071_fu_478_p2 = (tmp_7_fu_468_p3 - zext_ln9075_2_fu_475_p1);
assign sub_ln9075_1_fu_377_p2 = (p_shl40_fu_357_p3 - zext_ln9075_fu_373_p1);
assign sub_ln9075_2_fu_502_p2 = (p_shl_fu_484_p3 - zext_ln9075_4_fu_498_p1);
assign sub_ln9075_fu_346_p2 = (p_shl42_fu_338_p3 - zext_ln9070_fu_334_p1);
assign tmp_5_fu_187_p3 = v7614_0[32'd1];
assign tmp_6_fu_365_p3 = {{empty_139_fu_352_p2}, {1'd0}};
assign tmp_7_fu_468_p3 = {{trunc_ln9075_reg_609}, {3'd0}};
assign tmp_8_fu_491_p3 = {{add_ln9075_1_reg_614}, {1'd0}};
assign tmp_fu_169_p4 = {{v7614_0[5:2]}};
assign trunc_ln9075_fu_393_p1 = add_ln9075_fu_387_p2[7:0];
assign v15492_address0 = zext_ln9075_8_fu_535_p1;
assign v15492_ce0 = v15492_ce0_local;
assign v7586_fu_298_p3 = ((ap_phi_mux_icmp_ln907115_phi_fu_151_p4[0:0] == 1'b1) ? add_ln9070_fu_272_p2 : v758610_fu_98);
assign v7587_fu_326_p3 = ((and_ln9070_fu_292_p2[0:0] == 1'b1) ? add_ln9071_fu_306_p2 : select_ln9070_fu_278_p3);
assign v7588_fu_416_p2 = (v7588_mid2_fu_318_p3 + 3'd1);
assign v7588_mid2_fu_318_p3 = ((empty_138_fu_312_p2[0:0] == 1'b1) ? 3'd0 : v758813_fu_110);
assign v7620_address0 = zext_ln9075_6_fu_540_p1;
assign v7620_ce0 = v7620_ce0_local;
assign v7620_d0 = v15492_q0;
assign v7620_we0 = v7620_we0_local;
assign xor_ln9070_fu_286_p2 = (ap_phi_mux_icmp_ln907115_phi_fu_151_p4 ^ 1'd1);
assign zext_ln9070_fu_334_p1 = v7586_fu_298_p3;
assign zext_ln9071_fu_397_p1 = v7587_fu_326_p3;
assign zext_ln9072_fu_517_p1 = v7588_mid2_reg_598;
assign zext_ln9075_1_fu_383_p1 = v7587_fu_326_p3;
assign zext_ln9075_2_fu_475_p1 = add_ln9075_reg_604;
assign zext_ln9075_3_fu_406_p1 = empty_140_fu_401_p2;
assign zext_ln9075_4_fu_498_p1 = tmp_8_fu_491_p3;
assign zext_ln9075_5_fu_508_p1 = v7588_mid2_reg_598;
assign zext_ln9075_6_fu_540_p1 = add_ln9075_2_reg_630;
assign zext_ln9075_7_fu_525_p1 = add_ln9074_fu_520_p2;
assign zext_ln9075_8_fu_535_p1 = add_ln9075_3_fu_529_p2;
assign zext_ln9075_fu_373_p1 = tmp_6_fu_365_p3;
assign zext_ln9110_6_cast_cast_cast_cast_fu_207_p3 = ((empty_fu_203_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln9110_cast_cast_cast_cast_fu_195_p3 = ((tmp_5_fu_187_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
always @ (posedge ap_clk) begin
    mul_i_reg_579[4:0] <= 5'b00000;
    zext_ln9110_cast_cast_cast_cast_reg_584[3] <= 1'b0;
    zext_ln9110_6_cast_cast_cast_cast_reg_589[3] <= 1'b0;
    zext_ln9110_6_cast_cast_cast_cast_reg_589_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
