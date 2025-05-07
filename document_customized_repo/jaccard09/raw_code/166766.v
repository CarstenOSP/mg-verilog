module forward_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v4026_address0,v4026_ce0,v4026_we0,v4026_d0,v4026_1_address0,v4026_1_ce0,v4026_1_we0,v4026_1_d0,v4020_0,v9022_0_address0,v9022_0_ce0,v9022_0_q0,v9022_1_address0,v9022_1_ce0,v9022_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] v4026_address0;
output   v4026_ce0;
output   v4026_we0;
output  [7:0] v4026_d0;
output  [9:0] v4026_1_address0;
output   v4026_1_ce0;
output   v4026_1_we0;
output  [7:0] v4026_1_d0;
input  [8:0] v4020_0;
output  [14:0] v9022_0_address0;
output   v9022_0_ce0;
input  [7:0] v9022_0_q0;
output  [14:0] v9022_1_address0;
output   v9022_1_ce0;
input  [7:0] v9022_1_q0;
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
wire   [0:0] icmp_ln5485_fu_302_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] mul_i_fu_224_p3;
reg   [7:0] mul_i_reg_687;
wire   [3:0] mul9_i66_cast_cast_cast_cast_cast_cast_fu_240_p3;
reg   [3:0] mul9_i66_cast_cast_cast_cast_cast_cast_reg_692;
wire   [3:0] zext_ln5485_cast_cast_cast_cast_fu_252_p3;
reg   [3:0] zext_ln5485_cast_cast_cast_cast_reg_697;
wire   [2:0] p_udiv2_cast_cast_cast_cast_fu_260_p3;
reg   [2:0] p_udiv2_cast_cast_cast_cast_reg_702;
reg   [2:0] p_udiv2_cast_cast_cast_cast_reg_702_pp0_iter1_reg;
reg   [0:0] icmp_ln5485_reg_707;
reg   [0:0] icmp_ln5485_reg_707_pp0_iter1_reg;
wire   [5:0] v3998_fu_351_p3;
reg   [5:0] v3998_reg_711;
wire   [2:0] v3999_fu_379_p3;
reg   [2:0] v3999_reg_717;
wire   [11:0] add_ln5490_1_fu_435_p2;
reg   [11:0] add_ln5490_1_reg_722;
reg   [1:0] lshr_ln_reg_728;
reg   [2:0] lshr_ln3_reg_734;
wire   [0:0] icmp_ln5487_fu_490_p2;
reg   [0:0] icmp_ln5487_reg_739;
wire   [0:0] icmp_ln5486_fu_496_p2;
reg   [0:0] icmp_ln5486_reg_744;
wire   [9:0] add_ln5492_1_fu_607_p2;
reg   [9:0] add_ln5492_1_reg_749;
reg   [0:0] ap_phi_mux_icmp_ln548627_phi_fu_196_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln548726_phi_fu_207_p4;
wire   [63:0] zext_ln5490_4_fu_628_p1;
wire   [63:0] zext_ln5492_6_fu_642_p1;
wire   [63:0] zext_ln5492_4_fu_647_p1;
reg   [9:0] indvar_flatten1221_fu_112;
wire   [9:0] add_ln5485_1_fu_296_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten1221_load;
reg   [5:0] v399822_fu_116;
reg   [4:0] indvar_flatten23_fu_120;
wire   [4:0] select_ln5486_1_fu_482_p3;
reg   [2:0] v399924_fu_124;
reg   [2:0] v400025_fu_128;
wire   [2:0] v4000_fu_470_p2;
reg    v9022_0_ce0_local;
reg    v9022_1_ce0_local;
reg    v4026_1_we0_local;
reg    v4026_1_ce0_local;
reg    v4026_we0_local;
reg    v4026_ce0_local;
wire   [2:0] tmp_fu_214_p4;
wire   [0:0] tmp_82_fu_232_p3;
wire   [0:0] empty_fu_248_p1;
wire   [0:0] xor_ln5485_fu_339_p2;
wire   [5:0] add_ln5485_fu_325_p2;
wire   [2:0] select_ln5485_fu_331_p3;
wire   [0:0] and_ln5485_fu_345_p2;
wire   [0:0] empty_131_fu_365_p2;
wire   [2:0] add_ln5486_fu_359_p2;
wire   [7:0] zext_ln5485_fu_387_p1;
wire   [7:0] empty_132_fu_391_p2;
wire   [9:0] tmp_84_fu_404_p3;
wire   [11:0] p_shl55_fu_396_p3;
wire   [11:0] zext_ln5490_fu_412_p1;
wire   [3:0] zext_ln5486_fu_422_p1;
wire   [3:0] empty_133_fu_426_p2;
wire   [11:0] sub_ln5490_fu_416_p2;
wire   [11:0] zext_ln5490_1_fu_431_p1;
wire   [2:0] v4000_mid2_fu_371_p3;
wire   [3:0] zext_ln5487_fu_441_p1;
wire   [3:0] add_ln5489_fu_455_p2;
wire   [4:0] add_ln5486_1_fu_476_p2;
wire   [6:0] tmp_83_fu_529_p3;
wire   [8:0] p_shl57_fu_522_p3;
wire   [8:0] zext_ln5492_fu_536_p1;
wire   [8:0] sub_ln5492_fu_540_p2;
wire   [8:0] zext_ln5492_1_fu_546_p1;
wire   [8:0] add_ln5492_fu_549_p2;
wire   [7:0] trunc_ln5492_fu_555_p1;
wire   [9:0] tmp_85_fu_559_p3;
wire   [9:0] zext_ln5492_2_fu_567_p1;
wire   [12:0] tmp_86_fu_584_p3;
wire   [14:0] p_shl_fu_577_p3;
wire   [14:0] zext_ln5490_2_fu_591_p1;
wire   [9:0] sub_ln5486_fu_571_p2;
wire   [9:0] zext_ln5492_3_fu_604_p1;
wire   [2:0] zext_ln5487_1_fu_601_p1;
wire   [2:0] add_ln5490_fu_613_p2;
wire   [14:0] sub_ln5490_1_fu_595_p2;
wire   [14:0] zext_ln5490_3_fu_618_p1;
wire   [14:0] add_ln5490_2_fu_622_p2;
wire   [14:0] zext_ln5492_5_fu_633_p1;
wire   [14:0] add_ln5492_2_fu_636_p2;
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
reg    ap_condition_164;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1221_fu_112 = 10'd0;
#0 v399822_fu_116 = 6'd0;
#0 indvar_flatten23_fu_120 = 5'd0;
#0 v399924_fu_124 = 3'd0;
#0 v400025_fu_128 = 3'd0;
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
    if ((1'b1 == ap_condition_164)) begin
        indvar_flatten1221_fu_112 <= add_ln5485_1_fu_296_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten23_fu_120 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten23_fu_120 <= select_ln5486_1_fu_482_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v399822_fu_116 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v399822_fu_116 <= v3998_fu_351_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v399924_fu_124 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v399924_fu_124 <= v3999_fu_379_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v400025_fu_128 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v400025_fu_128 <= v4000_fu_470_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln5490_1_reg_722 <= add_ln5490_1_fu_435_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln5485_reg_707 <= icmp_ln5485_fu_302_p2;
        icmp_ln5485_reg_707_pp0_iter1_reg <= icmp_ln5485_reg_707;
        lshr_ln3_reg_734 <= {{add_ln5489_fu_455_p2[3:1]}};
        lshr_ln_reg_728 <= {{v4000_mid2_fu_371_p3[2:1]}};
        mul9_i66_cast_cast_cast_cast_cast_cast_reg_692[2 : 1] <= mul9_i66_cast_cast_cast_cast_cast_cast_fu_240_p3[2 : 1];
        mul_i_reg_687[7 : 5] <= mul_i_fu_224_p3[7 : 5];
        p_udiv2_cast_cast_cast_cast_reg_702[1 : 0] <= p_udiv2_cast_cast_cast_cast_fu_260_p3[1 : 0];
        p_udiv2_cast_cast_cast_cast_reg_702_pp0_iter1_reg[1 : 0] <= p_udiv2_cast_cast_cast_cast_reg_702[1 : 0];
        v3998_reg_711 <= v3998_fu_351_p3;
        v3999_reg_717 <= v3999_fu_379_p3;
        zext_ln5485_cast_cast_cast_cast_reg_697[2 : 1] <= zext_ln5485_cast_cast_cast_cast_fu_252_p3[2 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln5492_1_reg_749 <= add_ln5492_1_fu_607_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5486_reg_744 <= icmp_ln5486_fu_496_p2;
        icmp_ln5487_reg_739 <= icmp_ln5487_fu_490_p2;
    end
end
always @ (*) begin
    if (((icmp_ln5485_fu_302_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln5485_reg_707_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln548627_phi_fu_196_p4 = icmp_ln5486_reg_744;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln548627_phi_fu_196_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln548627_phi_fu_196_p4 = icmp_ln5486_reg_744;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln5485_reg_707_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln548726_phi_fu_207_p4 = icmp_ln5487_reg_739;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln548726_phi_fu_207_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln548726_phi_fu_207_p4 = icmp_ln5487_reg_739;
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
        ap_sig_allocacmp_indvar_flatten1221_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_load = indvar_flatten1221_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4026_1_ce0_local = 1'b1;
    end else begin
        v4026_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4026_1_we0_local = 1'b1;
    end else begin
        v4026_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4026_ce0_local = 1'b1;
    end else begin
        v4026_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4026_we0_local = 1'b1;
    end else begin
        v4026_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9022_0_ce0_local = 1'b1;
    end else begin
        v9022_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9022_1_ce0_local = 1'b1;
    end else begin
        v9022_1_ce0_local = 1'b0;
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
assign add_ln5485_1_fu_296_p2 = (ap_sig_allocacmp_indvar_flatten1221_load + 10'd1);
assign add_ln5485_fu_325_p2 = (v399822_fu_116 + 6'd1);
assign add_ln5486_1_fu_476_p2 = (indvar_flatten23_fu_120 + 5'd1);
assign add_ln5486_fu_359_p2 = (select_ln5485_fu_331_p3 + 3'd1);
assign add_ln5489_fu_455_p2 = (zext_ln5485_cast_cast_cast_cast_reg_697 + zext_ln5487_fu_441_p1);
assign add_ln5490_1_fu_435_p2 = (sub_ln5490_fu_416_p2 + zext_ln5490_1_fu_431_p1);
assign add_ln5490_2_fu_622_p2 = (sub_ln5490_1_fu_595_p2 + zext_ln5490_3_fu_618_p1);
assign add_ln5490_fu_613_p2 = (zext_ln5487_1_fu_601_p1 + p_udiv2_cast_cast_cast_cast_reg_702_pp0_iter1_reg);
assign add_ln5492_1_fu_607_p2 = (sub_ln5486_fu_571_p2 + zext_ln5492_3_fu_604_p1);
assign add_ln5492_2_fu_636_p2 = (sub_ln5490_1_fu_595_p2 + zext_ln5492_5_fu_633_p1);
assign add_ln5492_fu_549_p2 = (sub_ln5492_fu_540_p2 + zext_ln5492_1_fu_546_p1);
assign and_ln5485_fu_345_p2 = (xor_ln5485_fu_339_p2 & ap_phi_mux_icmp_ln548726_phi_fu_207_p4);
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
    ap_condition_164 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_131_fu_365_p2 = (ap_phi_mux_icmp_ln548627_phi_fu_196_p4 | and_ln5485_fu_345_p2);
assign empty_132_fu_391_p2 = (mul_i_reg_687 + zext_ln5485_fu_387_p1);
assign empty_133_fu_426_p2 = (mul9_i66_cast_cast_cast_cast_cast_cast_reg_692 + zext_ln5486_fu_422_p1);
assign empty_fu_248_p1 = v4020_0[0:0];
assign icmp_ln5485_fu_302_p2 = ((ap_sig_allocacmp_indvar_flatten1221_load == 10'd575) ? 1'b1 : 1'b0);
assign icmp_ln5486_fu_496_p2 = ((select_ln5486_1_fu_482_p3 == 5'd18) ? 1'b1 : 1'b0);
assign icmp_ln5487_fu_490_p2 = ((v4000_fu_470_p2 == 3'd6) ? 1'b1 : 1'b0);
assign mul9_i66_cast_cast_cast_cast_cast_cast_fu_240_p3 = ((tmp_82_fu_232_p3[0:0] == 1'b1) ? 4'd6 : 4'd0);
assign mul_i_fu_224_p3 = {{tmp_fu_214_p4}, {5'd0}};
assign p_shl55_fu_396_p3 = {{empty_132_fu_391_p2}, {4'd0}};
assign p_shl57_fu_522_p3 = {{v3998_reg_711}, {3'd0}};
assign p_shl_fu_577_p3 = {{add_ln5490_1_reg_722}, {3'd0}};
assign p_udiv2_cast_cast_cast_cast_fu_260_p3 = ((empty_fu_248_p1[0:0] == 1'b1) ? 3'd3 : 3'd0);
assign select_ln5485_fu_331_p3 = ((ap_phi_mux_icmp_ln548627_phi_fu_196_p4[0:0] == 1'b1) ? 3'd0 : v399924_fu_124);
assign select_ln5486_1_fu_482_p3 = ((ap_phi_mux_icmp_ln548627_phi_fu_196_p4[0:0] == 1'b1) ? 5'd1 : add_ln5486_1_fu_476_p2);
assign sub_ln5486_fu_571_p2 = (tmp_85_fu_559_p3 - zext_ln5492_2_fu_567_p1);
assign sub_ln5490_1_fu_595_p2 = (p_shl_fu_577_p3 - zext_ln5490_2_fu_591_p1);
assign sub_ln5490_fu_416_p2 = (p_shl55_fu_396_p3 - zext_ln5490_fu_412_p1);
assign sub_ln5492_fu_540_p2 = (p_shl57_fu_522_p3 - zext_ln5492_fu_536_p1);
assign tmp_82_fu_232_p3 = v4020_0[32'd1];
assign tmp_83_fu_529_p3 = {{v3998_reg_711}, {1'd0}};
assign tmp_84_fu_404_p3 = {{empty_132_fu_391_p2}, {2'd0}};
assign tmp_85_fu_559_p3 = {{trunc_ln5492_fu_555_p1}, {2'd0}};
assign tmp_86_fu_584_p3 = {{add_ln5490_1_reg_722}, {1'd0}};
assign tmp_fu_214_p4 = {{v4020_0[4:2]}};
assign trunc_ln5492_fu_555_p1 = add_ln5492_fu_549_p2[7:0];
assign v3998_fu_351_p3 = ((ap_phi_mux_icmp_ln548627_phi_fu_196_p4[0:0] == 1'b1) ? add_ln5485_fu_325_p2 : v399822_fu_116);
assign v3999_fu_379_p3 = ((and_ln5485_fu_345_p2[0:0] == 1'b1) ? add_ln5486_fu_359_p2 : select_ln5485_fu_331_p3);
assign v4000_fu_470_p2 = (v4000_mid2_fu_371_p3 + 3'd2);
assign v4000_mid2_fu_371_p3 = ((empty_131_fu_365_p2[0:0] == 1'b1) ? 3'd0 : v400025_fu_128);
assign v4026_1_address0 = zext_ln5492_4_fu_647_p1;
assign v4026_1_ce0 = v4026_1_ce0_local;
assign v4026_1_d0 = v9022_0_q0;
assign v4026_1_we0 = v4026_1_we0_local;
assign v4026_address0 = zext_ln5492_4_fu_647_p1;
assign v4026_ce0 = v4026_ce0_local;
assign v4026_d0 = v9022_1_q0;
assign v4026_we0 = v4026_we0_local;
assign v9022_0_address0 = zext_ln5490_4_fu_628_p1;
assign v9022_0_ce0 = v9022_0_ce0_local;
assign v9022_1_address0 = zext_ln5492_6_fu_642_p1;
assign v9022_1_ce0 = v9022_1_ce0_local;
assign xor_ln5485_fu_339_p2 = (ap_phi_mux_icmp_ln548627_phi_fu_196_p4 ^ 1'd1);
assign zext_ln5485_cast_cast_cast_cast_fu_252_p3 = ((empty_fu_248_p1[0:0] == 1'b1) ? 4'd6 : 4'd0);
assign zext_ln5485_fu_387_p1 = v3998_fu_351_p3;
assign zext_ln5486_fu_422_p1 = v3999_fu_379_p3;
assign zext_ln5487_1_fu_601_p1 = lshr_ln_reg_728;
assign zext_ln5487_fu_441_p1 = v4000_mid2_fu_371_p3;
assign zext_ln5490_1_fu_431_p1 = empty_133_fu_426_p2;
assign zext_ln5490_2_fu_591_p1 = tmp_86_fu_584_p3;
assign zext_ln5490_3_fu_618_p1 = add_ln5490_fu_613_p2;
assign zext_ln5490_4_fu_628_p1 = add_ln5490_2_fu_622_p2;
assign zext_ln5490_fu_412_p1 = tmp_84_fu_404_p3;
assign zext_ln5492_1_fu_546_p1 = v3999_reg_717;
assign zext_ln5492_2_fu_567_p1 = add_ln5492_fu_549_p2;
assign zext_ln5492_3_fu_604_p1 = lshr_ln_reg_728;
assign zext_ln5492_4_fu_647_p1 = add_ln5492_1_reg_749;
assign zext_ln5492_5_fu_633_p1 = lshr_ln3_reg_734;
assign zext_ln5492_6_fu_642_p1 = add_ln5492_2_fu_636_p2;
assign zext_ln5492_fu_536_p1 = tmp_83_fu_529_p3;
always @ (posedge ap_clk) begin
    mul_i_reg_687[4:0] <= 5'b00000;
    mul9_i66_cast_cast_cast_cast_cast_cast_reg_692[0] <= 1'b0;
    mul9_i66_cast_cast_cast_cast_cast_cast_reg_692[3] <= 1'b0;
    zext_ln5485_cast_cast_cast_cast_reg_697[0] <= 1'b0;
    zext_ln5485_cast_cast_cast_cast_reg_697[3] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_702[2] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_702_pp0_iter1_reg[2] <= 1'b0;
end
endmodule 