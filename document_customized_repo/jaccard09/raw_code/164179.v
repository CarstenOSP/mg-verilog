module forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15437_1_address0,v15437_1_ce0,v15437_1_we0,v15437_1_d0,v15437_0_address0,v15437_0_ce0,v15437_0_we0,v15437_0_d0,p_read,v14652_1_address0,v14652_1_ce0,v14652_1_q0,v14652_address0,v14652_ce0,v14652_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [16:0] v15437_1_address0;
output   v15437_1_ce0;
output   v15437_1_we0;
output  [7:0] v15437_1_d0;
output  [16:0] v15437_0_address0;
output   v15437_0_ce0;
output   v15437_0_we0;
output  [7:0] v15437_0_d0;
input  [2:0] p_read;
output  [13:0] v14652_1_address0;
output   v14652_1_ce0;
input  [7:0] v14652_1_q0;
output  [13:0] v14652_address0;
output   v14652_ce0;
input  [7:0] v14652_q0;
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
wire   [0:0] icmp_ln18923_fu_304_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [5:0] mul_i_fu_226_p3;
reg   [5:0] mul_i_reg_688;
wire   [5:0] mul9_i_cast_cast_cast_cast_cast_cast_fu_242_p3;
reg   [5:0] mul9_i_cast_cast_cast_cast_cast_cast_reg_693;
reg   [5:0] mul9_i_cast_cast_cast_cast_cast_cast_reg_693_pp0_iter1_reg;
wire   [5:0] zext_ln19002_cast_cast_cast_cast_fu_254_p3;
reg   [5:0] zext_ln19002_cast_cast_cast_cast_reg_698;
wire   [4:0] p_udiv2_cast_cast_cast_cast_fu_262_p3;
reg   [4:0] p_udiv2_cast_cast_cast_cast_reg_703;
reg   [4:0] p_udiv2_cast_cast_cast_cast_reg_703_pp0_iter1_reg;
reg   [4:0] p_udiv2_cast_cast_cast_cast_reg_703_pp0_iter2_reg;
reg   [0:0] icmp_ln18923_reg_708;
reg   [0:0] icmp_ln18923_reg_708_pp0_iter1_reg;
wire   [4:0] v14581_fu_377_p3;
reg   [4:0] v14581_reg_712;
wire   [5:0] empty_241_fu_411_p2;
reg   [5:0] empty_241_reg_717;
wire   [10:0] add_ln18927_fu_420_p2;
reg   [10:0] add_ln18927_reg_723;
wire   [9:0] trunc_ln18927_fu_426_p1;
reg   [9:0] trunc_ln18927_reg_728;
reg   [3:0] lshr_ln_reg_733;
reg   [3:0] lshr_ln_reg_733_pp0_iter2_reg;
reg   [4:0] lshr_ln28_reg_739;
reg   [4:0] lshr_ln28_reg_739_pp0_iter2_reg;
wire   [0:0] icmp_ln18925_fu_479_p2;
reg   [0:0] icmp_ln18925_reg_744;
wire   [0:0] icmp_ln18924_fu_485_p2;
reg   [0:0] icmp_ln18924_reg_749;
wire   [11:0] add_ln18930_fu_571_p2;
reg   [11:0] add_ln18930_reg_754;
reg   [0:0] ap_phi_mux_icmp_ln1892439_phi_fu_200_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1892538_phi_fu_211_p4;
wire   [63:0] zext_ln18927_4_fu_586_p1;
wire   [63:0] zext_ln18928_1_fu_634_p1;
wire   [63:0] zext_ln18930_4_fu_648_p1;
reg   [13:0] indvar_flatten1233_fu_116;
wire   [13:0] add_ln18923_1_fu_298_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v1458034_fu_120;
wire   [5:0] v14580_fu_355_p3;
reg   [8:0] indvar_flatten35_fu_124;
wire   [8:0] select_ln18924_1_fu_471_p3;
reg   [4:0] v1458136_fu_128;
reg   [4:0] v1458237_fu_132;
wire   [4:0] v14582_fu_459_p2;
reg    v14652_1_ce0_local;
reg    v14652_ce0_local;
reg    v15437_0_we0_local;
reg    v15437_0_ce0_local;
reg    v15437_1_we0_local;
reg    v15437_1_ce0_local;
wire   [0:0] tmp_fu_218_p3;
wire   [0:0] tmp_164_fu_234_p3;
wire   [0:0] empty_fu_250_p1;
wire   [5:0] add_ln18923_fu_327_p2;
wire   [4:0] select_ln18923_fu_333_p3;
wire   [0:0] or_ln18923_fu_349_p2;
wire   [4:0] select_ln18923_1_fu_341_p3;
wire   [4:0] add_ln18924_fu_363_p2;
wire   [7:0] tmp_165_fu_393_p3;
wire   [10:0] p_shl68_fu_385_p3;
wire   [10:0] zext_ln18927_fu_401_p1;
wire   [10:0] sub_ln18927_fu_405_p2;
wire   [10:0] zext_ln18927_1_fu_416_p1;
wire   [4:0] v14582_mid2_fu_369_p3;
wire   [5:0] zext_ln18925_fu_430_p1;
wire   [5:0] add_ln18928_fu_444_p2;
wire   [8:0] add_ln18924_1_fu_465_p2;
wire   [8:0] tmp_166_fu_518_p3;
wire   [11:0] p_shl66_fu_511_p3;
wire   [11:0] zext_ln18930_fu_525_p1;
wire   [11:0] tmp_167_fu_535_p3;
wire   [13:0] tmp_168_fu_542_p3;
wire   [13:0] zext_ln18927_2_fu_549_p1;
wire   [5:0] zext_ln18924_fu_559_p1;
wire   [5:0] empty_242_fu_562_p2;
wire   [11:0] sub_ln18930_fu_529_p2;
wire   [11:0] zext_ln18930_1_fu_567_p1;
wire   [13:0] sub_ln18924_fu_553_p2;
wire   [13:0] zext_ln18927_3_fu_577_p1;
wire   [13:0] add_ln18927_1_fu_580_p2;
wire   [13:0] tmp_169_fu_599_p3;
wire   [16:0] p_shl_fu_592_p3;
wire   [16:0] zext_ln18930_2_fu_606_p1;
wire   [4:0] zext_ln18925_1_fu_616_p1;
wire   [4:0] add_ln18928_1_fu_619_p2;
wire   [16:0] sub_ln18930_1_fu_610_p2;
wire   [16:0] zext_ln18928_fu_624_p1;
wire   [16:0] add_ln18928_2_fu_628_p2;
wire   [16:0] zext_ln18930_3_fu_639_p1;
wire   [16:0] add_ln18930_1_fu_642_p2;
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
reg    ap_condition_173;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_116 = 14'd0;
#0 v1458034_fu_120 = 6'd0;
#0 indvar_flatten35_fu_124 = 9'd0;
#0 v1458136_fu_128 = 5'd0;
#0 v1458237_fu_132 = 5'd0;
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
    if ((1'b1 == ap_condition_173)) begin
        indvar_flatten1233_fu_116 <= add_ln18923_1_fu_298_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten35_fu_124 <= 9'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten35_fu_124 <= select_ln18924_1_fu_471_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1458034_fu_120 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1458034_fu_120 <= v14580_fu_355_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1458136_fu_128 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1458136_fu_128 <= v14581_fu_377_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1458237_fu_132 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1458237_fu_132 <= v14582_fu_459_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18927_reg_723 <= add_ln18927_fu_420_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        empty_241_reg_717 <= empty_241_fu_411_p2;
        icmp_ln18923_reg_708 <= icmp_ln18923_fu_304_p2;
        icmp_ln18923_reg_708_pp0_iter1_reg <= icmp_ln18923_reg_708;
        lshr_ln28_reg_739 <= {{add_ln18928_fu_444_p2[5:1]}};
        lshr_ln_reg_733 <= {{v14582_mid2_fu_369_p3[4:1]}};
        mul9_i_cast_cast_cast_cast_cast_cast_reg_693[4 : 2] <= mul9_i_cast_cast_cast_cast_cast_cast_fu_242_p3[4 : 2];
        mul9_i_cast_cast_cast_cast_cast_cast_reg_693_pp0_iter1_reg[4 : 2] <= mul9_i_cast_cast_cast_cast_cast_cast_reg_693[4 : 2];
        mul_i_reg_688[5] <= mul_i_fu_226_p3[5];
        p_udiv2_cast_cast_cast_cast_reg_703[3 : 1] <= p_udiv2_cast_cast_cast_cast_fu_262_p3[3 : 1];
        p_udiv2_cast_cast_cast_cast_reg_703_pp0_iter1_reg[3 : 1] <= p_udiv2_cast_cast_cast_cast_reg_703[3 : 1];
        trunc_ln18927_reg_728 <= trunc_ln18927_fu_426_p1;
        v14581_reg_712 <= v14581_fu_377_p3;
        zext_ln19002_cast_cast_cast_cast_reg_698[4 : 2] <= zext_ln19002_cast_cast_cast_cast_fu_254_p3[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln18930_reg_754 <= add_ln18930_fu_571_p2;
        lshr_ln28_reg_739_pp0_iter2_reg <= lshr_ln28_reg_739;
        lshr_ln_reg_733_pp0_iter2_reg <= lshr_ln_reg_733;
        p_udiv2_cast_cast_cast_cast_reg_703_pp0_iter2_reg[3 : 1] <= p_udiv2_cast_cast_cast_cast_reg_703_pp0_iter1_reg[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18924_reg_749 <= icmp_ln18924_fu_485_p2;
        icmp_ln18925_reg_744 <= icmp_ln18925_fu_479_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18923_fu_304_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18923_reg_708_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1892439_phi_fu_200_p4 = icmp_ln18924_reg_749;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1892439_phi_fu_200_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1892439_phi_fu_200_p4 = icmp_ln18924_reg_749;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18923_reg_708_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1892538_phi_fu_211_p4 = icmp_ln18925_reg_744;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1892538_phi_fu_211_p4 = 1'd1;
    end else begin
        ap_phi_mux_icmp_ln1892538_phi_fu_211_p4 = icmp_ln18925_reg_744;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14652_1_ce0_local = 1'b1;
    end else begin
        v14652_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14652_ce0_local = 1'b1;
    end else begin
        v14652_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15437_0_ce0_local = 1'b1;
    end else begin
        v15437_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15437_0_we0_local = 1'b1;
    end else begin
        v15437_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15437_1_ce0_local = 1'b1;
    end else begin
        v15437_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15437_1_we0_local = 1'b1;
    end else begin
        v15437_1_we0_local = 1'b0;
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
assign add_ln18923_1_fu_298_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 14'd1);
assign add_ln18923_fu_327_p2 = (v1458034_fu_120 + 6'd1);
assign add_ln18924_1_fu_465_p2 = (indvar_flatten35_fu_124 + 9'd1);
assign add_ln18924_fu_363_p2 = (select_ln18923_fu_333_p3 + 5'd1);
assign add_ln18927_1_fu_580_p2 = (sub_ln18924_fu_553_p2 + zext_ln18927_3_fu_577_p1);
assign add_ln18927_fu_420_p2 = (sub_ln18927_fu_405_p2 + zext_ln18927_1_fu_416_p1);
assign add_ln18928_1_fu_619_p2 = (zext_ln18925_1_fu_616_p1 + p_udiv2_cast_cast_cast_cast_reg_703_pp0_iter2_reg);
assign add_ln18928_2_fu_628_p2 = (sub_ln18930_1_fu_610_p2 + zext_ln18928_fu_624_p1);
assign add_ln18928_fu_444_p2 = (zext_ln19002_cast_cast_cast_cast_reg_698 + zext_ln18925_fu_430_p1);
assign add_ln18930_1_fu_642_p2 = (sub_ln18930_1_fu_610_p2 + zext_ln18930_3_fu_639_p1);
assign add_ln18930_fu_571_p2 = (sub_ln18930_fu_529_p2 + zext_ln18930_1_fu_567_p1);
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
    ap_condition_173 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_241_fu_411_p2 = (v14580_fu_355_p3 + mul_i_reg_688);
assign empty_242_fu_562_p2 = (mul9_i_cast_cast_cast_cast_cast_cast_reg_693_pp0_iter1_reg + zext_ln18924_fu_559_p1);
assign empty_fu_250_p1 = p_read[0:0];
assign icmp_ln18923_fu_304_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln18924_fu_485_p2 = ((select_ln18924_1_fu_471_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln18925_fu_479_p2 = ((v14582_fu_459_p2 < 5'd28) ? 1'b1 : 1'b0);
assign mul9_i_cast_cast_cast_cast_cast_cast_fu_242_p3 = ((tmp_164_fu_234_p3[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign mul_i_fu_226_p3 = {{tmp_fu_218_p3}, {5'd0}};
assign or_ln18923_fu_349_p2 = (ap_phi_mux_icmp_ln1892538_phi_fu_211_p4 | ap_phi_mux_icmp_ln1892439_phi_fu_200_p4);
assign p_shl66_fu_511_p3 = {{empty_241_reg_717}, {6'd0}};
assign p_shl68_fu_385_p3 = {{v14580_fu_355_p3}, {5'd0}};
assign p_shl_fu_592_p3 = {{add_ln18930_reg_754}, {5'd0}};
assign p_udiv2_cast_cast_cast_cast_fu_262_p3 = ((empty_fu_250_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign select_ln18923_1_fu_341_p3 = ((ap_phi_mux_icmp_ln1892439_phi_fu_200_p4[0:0] == 1'b1) ? 5'd0 : v1458237_fu_132);
assign select_ln18923_fu_333_p3 = ((ap_phi_mux_icmp_ln1892439_phi_fu_200_p4[0:0] == 1'b1) ? 5'd0 : v1458136_fu_128);
assign select_ln18924_1_fu_471_p3 = ((ap_phi_mux_icmp_ln1892439_phi_fu_200_p4[0:0] == 1'b1) ? 9'd1 : add_ln18924_1_fu_465_p2);
assign sub_ln18924_fu_553_p2 = (tmp_168_fu_542_p3 - zext_ln18927_2_fu_549_p1);
assign sub_ln18927_fu_405_p2 = (p_shl68_fu_385_p3 - zext_ln18927_fu_401_p1);
assign sub_ln18930_1_fu_610_p2 = (p_shl_fu_592_p3 - zext_ln18930_2_fu_606_p1);
assign sub_ln18930_fu_529_p2 = (p_shl66_fu_511_p3 - zext_ln18930_fu_525_p1);
assign tmp_164_fu_234_p3 = p_read[32'd1];
assign tmp_165_fu_393_p3 = {{v14580_fu_355_p3}, {2'd0}};
assign tmp_166_fu_518_p3 = {{empty_241_reg_717}, {3'd0}};
assign tmp_167_fu_535_p3 = {{add_ln18927_reg_723}, {1'd0}};
assign tmp_168_fu_542_p3 = {{trunc_ln18927_reg_728}, {4'd0}};
assign tmp_169_fu_599_p3 = {{add_ln18930_reg_754}, {2'd0}};
assign tmp_fu_218_p3 = p_read[32'd2];
assign trunc_ln18927_fu_426_p1 = add_ln18927_fu_420_p2[9:0];
assign v14580_fu_355_p3 = ((ap_phi_mux_icmp_ln1892439_phi_fu_200_p4[0:0] == 1'b1) ? add_ln18923_fu_327_p2 : v1458034_fu_120);
assign v14581_fu_377_p3 = ((or_ln18923_fu_349_p2[0:0] == 1'b1) ? select_ln18923_fu_333_p3 : add_ln18924_fu_363_p2);
assign v14582_fu_459_p2 = (v14582_mid2_fu_369_p3 + 5'd2);
assign v14582_mid2_fu_369_p3 = ((or_ln18923_fu_349_p2[0:0] == 1'b1) ? select_ln18923_1_fu_341_p3 : 5'd0);
assign v14652_1_address0 = zext_ln18927_4_fu_586_p1;
assign v14652_1_ce0 = v14652_1_ce0_local;
assign v14652_address0 = zext_ln18927_4_fu_586_p1;
assign v14652_ce0 = v14652_ce0_local;
assign v15437_0_address0 = zext_ln18928_1_fu_634_p1;
assign v15437_0_ce0 = v15437_0_ce0_local;
assign v15437_0_d0 = v14652_1_q0;
assign v15437_0_we0 = v15437_0_we0_local;
assign v15437_1_address0 = zext_ln18930_4_fu_648_p1;
assign v15437_1_ce0 = v15437_1_ce0_local;
assign v15437_1_d0 = v14652_q0;
assign v15437_1_we0 = v15437_1_we0_local;
assign zext_ln18924_fu_559_p1 = v14581_reg_712;
assign zext_ln18925_1_fu_616_p1 = lshr_ln_reg_733_pp0_iter2_reg;
assign zext_ln18925_fu_430_p1 = v14582_mid2_fu_369_p3;
assign zext_ln18927_1_fu_416_p1 = v14581_fu_377_p3;
assign zext_ln18927_2_fu_549_p1 = tmp_167_fu_535_p3;
assign zext_ln18927_3_fu_577_p1 = lshr_ln_reg_733;
assign zext_ln18927_4_fu_586_p1 = add_ln18927_1_fu_580_p2;
assign zext_ln18927_fu_401_p1 = tmp_165_fu_393_p3;
assign zext_ln18928_1_fu_634_p1 = add_ln18928_2_fu_628_p2;
assign zext_ln18928_fu_624_p1 = add_ln18928_1_fu_619_p2;
assign zext_ln18930_1_fu_567_p1 = empty_242_fu_562_p2;
assign zext_ln18930_2_fu_606_p1 = tmp_169_fu_599_p3;
assign zext_ln18930_3_fu_639_p1 = lshr_ln28_reg_739_pp0_iter2_reg;
assign zext_ln18930_4_fu_648_p1 = add_ln18930_1_fu_642_p2;
assign zext_ln18930_fu_525_p1 = tmp_166_fu_518_p3;
assign zext_ln19002_cast_cast_cast_cast_fu_254_p3 = ((empty_fu_250_p1[0:0] == 1'b1) ? 6'd28 : 6'd0);
always @ (posedge ap_clk) begin
    mul_i_reg_688[4:0] <= 5'b00000;
    mul9_i_cast_cast_cast_cast_cast_cast_reg_693[1:0] <= 2'b00;
    mul9_i_cast_cast_cast_cast_cast_cast_reg_693[5] <= 1'b0;
    mul9_i_cast_cast_cast_cast_cast_cast_reg_693_pp0_iter1_reg[1:0] <= 2'b00;
    mul9_i_cast_cast_cast_cast_cast_cast_reg_693_pp0_iter1_reg[5] <= 1'b0;
    zext_ln19002_cast_cast_cast_cast_reg_698[1:0] <= 2'b00;
    zext_ln19002_cast_cast_cast_cast_reg_698[5] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_703[0] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_703[4] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_703_pp0_iter1_reg[0] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_703_pp0_iter1_reg[4] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_703_pp0_iter2_reg[0] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_703_pp0_iter2_reg[4] <= 1'b0;
end
endmodule 