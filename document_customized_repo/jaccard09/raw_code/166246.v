module forward_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v13712_0_address0,v13712_0_ce0,v13712_0_we0,v13712_0_d0,v13712_1_address0,v13712_1_ce0,v13712_1_we0,v13712_1_d0,rem4,mul9_i,v9714_1_address0,v9714_1_ce0,v9714_1_q0,v9714_address0,v9714_ce0,v9714_q0,zext_ln12442_cast_cast,p_udiv2_cast_cast); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [17:0] v13712_0_address0;
output   v13712_0_ce0;
output   v13712_0_we0;
output  [7:0] v13712_0_d0;
output  [17:0] v13712_1_address0;
output   v13712_1_ce0;
output   v13712_1_we0;
output  [7:0] v13712_1_d0;
input  [5:0] rem4;
input  [7:0] mul9_i;
output  [13:0] v9714_1_address0;
output   v9714_1_ce0;
input  [7:0] v9714_1_q0;
output  [13:0] v9714_address0;
output   v9714_ce0;
input  [7:0] v9714_q0;
input  [3:0] zext_ln12442_cast_cast;
input  [2:0] p_udiv2_cast_cast;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln12384_fu_446_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1238539_reg_212;
reg   [0:0] icmp_ln1238638_reg_223;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] p_udiv2_cast_cast_cast_cast_fu_238_p1;
reg   [4:0] p_udiv2_cast_cast_cast_cast_reg_668;
wire   [5:0] zext_ln12442_cast_cast_cast_cast_fu_246_p1;
reg   [5:0] zext_ln12442_cast_cast_cast_cast_reg_673;
wire   [5:0] v9663_fu_340_p3;
reg   [5:0] v9663_reg_678;
wire   [5:0] empty_fu_360_p2;
reg   [5:0] empty_reg_683;
wire   [11:0] add_ln12388_fu_369_p2;
reg   [11:0] add_ln12388_reg_689;
wire   [9:0] trunc_ln12388_fu_375_p1;
reg   [9:0] trunc_ln12388_reg_694;
reg   [3:0] lshr_ln_reg_699;
reg   [3:0] lshr_ln_reg_699_pp0_iter2_reg;
reg   [4:0] lshr_ln66_reg_705;
reg   [4:0] lshr_ln66_reg_705_pp0_iter2_reg;
wire   [0:0] icmp_ln12386_fu_434_p2;
reg   [0:0] icmp_ln12386_reg_710;
wire   [0:0] icmp_ln12385_fu_440_p2;
reg   [0:0] icmp_ln12385_reg_715;
reg   [0:0] icmp_ln12384_reg_720;
wire   [17:0] sub_ln12386_fu_567_p2;
reg   [17:0] sub_ln12386_reg_724;
reg   [0:0] ap_phi_mux_icmp_ln1238539_phi_fu_216_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1238638_phi_fu_227_p4;
wire   [63:0] zext_ln12388_2_fu_582_p1;
wire   [63:0] zext_ln12389_1_fu_605_p1;
wire   [63:0] zext_ln12391_5_fu_618_p1;
reg   [13:0] indvar_flatten1233_fu_114;
wire   [13:0] add_ln12384_1_fu_428_p2;
reg   [5:0] v966234_fu_118;
wire   [5:0] v9662_fu_318_p3;
reg   [9:0] indvar_flatten35_fu_122;
wire   [9:0] select_ln12385_1_fu_420_p3;
reg   [5:0] v966336_fu_126;
reg   [4:0] v966437_fu_130;
wire   [4:0] v9664_fu_408_p2;
reg    v9714_1_ce0_local;
reg    v9714_ce0_local;
reg    v13712_0_we0_local;
reg    v13712_0_ce0_local;
reg    v13712_1_we0_local;
reg    v13712_1_ce0_local;
wire  signed [3:0] p_udiv2_cast_cast_cast_fu_234_p1;
wire  signed [4:0] zext_ln12442_cast_cast_cast_fu_242_p1;
wire   [5:0] add_ln12384_fu_290_p2;
wire   [5:0] select_ln12384_fu_296_p3;
wire   [0:0] or_ln12384_fu_312_p2;
wire   [4:0] select_ln12384_1_fu_304_p3;
wire   [5:0] add_ln12385_fu_326_p2;
wire   [10:0] tmp_s_fu_348_p3;
wire   [11:0] tmp_427_cast_fu_356_p1;
wire   [11:0] zext_ln12388_fu_365_p1;
wire   [4:0] v9664_mid2_fu_332_p3;
wire   [5:0] zext_ln12386_fu_379_p1;
wire   [5:0] add_ln12389_fu_393_p2;
wire   [9:0] add_ln12385_1_fu_414_p2;
wire   [12:0] tmp_fu_477_p3;
wire   [10:0] tmp_523_fu_488_p3;
wire   [13:0] zext_ln12391_fu_484_p1;
wire   [13:0] zext_ln12391_1_fu_495_p1;
wire   [13:0] tmp_525_fu_512_p3;
wire   [13:0] tmp_524_fu_505_p3;
wire   [7:0] zext_ln12385_fu_525_p1;
wire   [7:0] empty_403_fu_528_p2;
wire   [13:0] add_ln12391_2_fu_499_p2;
wire   [13:0] zext_ln12391_2_fu_533_p1;
wire   [13:0] add_ln12391_fu_537_p2;
wire   [12:0] trunc_ln12391_fu_543_p1;
wire   [16:0] tmp_526_fu_547_p3;
wire   [17:0] tmp_527_fu_555_p3;
wire   [17:0] zext_ln12391_3_fu_563_p1;
wire   [13:0] sub_ln12385_fu_519_p2;
wire   [13:0] zext_ln12388_1_fu_573_p1;
wire   [13:0] add_ln12388_1_fu_576_p2;
wire   [4:0] zext_ln12386_1_fu_588_p1;
wire   [4:0] add_ln12389_1_fu_591_p2;
wire   [17:0] zext_ln12389_fu_596_p1;
wire   [17:0] add_ln12389_2_fu_600_p2;
wire   [17:0] zext_ln12391_4_fu_610_p1;
wire   [17:0] add_ln12391_1_fu_613_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 indvar_flatten1233_fu_114 = 14'd0;
#0 v966234_fu_118 = 6'd0;
#0 indvar_flatten35_fu_122 = 10'd0;
#0 v966336_fu_126 = 6'd0;
#0 v966437_fu_130 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12384_reg_720 == 1'd0))) begin
        icmp_ln1238539_reg_212 <= icmp_ln12385_reg_715;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1238539_reg_212 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12384_reg_720 == 1'd0))) begin
        icmp_ln1238638_reg_223 <= icmp_ln12386_reg_710;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1238638_reg_223 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1233_fu_114 <= 14'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1233_fu_114 <= add_ln12384_1_fu_428_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_122 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten35_fu_122 <= select_ln12385_1_fu_420_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v966234_fu_118 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v966234_fu_118 <= v9662_fu_318_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v966336_fu_126 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v966336_fu_126 <= v9663_fu_340_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v966437_fu_130 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v966437_fu_130 <= v9664_fu_408_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12388_reg_689 <= add_ln12388_fu_369_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        empty_reg_683 <= empty_fu_360_p2;
        icmp_ln12384_reg_720 <= icmp_ln12384_fu_446_p2;
        lshr_ln66_reg_705 <= {{add_ln12389_fu_393_p2[5:1]}};
        lshr_ln_reg_699 <= {{v9664_mid2_fu_332_p3[4:1]}};
        p_udiv2_cast_cast_cast_cast_reg_668[3 : 0] <= p_udiv2_cast_cast_cast_cast_fu_238_p1[3 : 0];
        trunc_ln12388_reg_694 <= trunc_ln12388_fu_375_p1;
        v9663_reg_678 <= v9663_fu_340_p3;
        zext_ln12442_cast_cast_cast_cast_reg_673[4 : 0] <= zext_ln12442_cast_cast_cast_cast_fu_246_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12385_reg_715 <= icmp_ln12385_fu_440_p2;
        icmp_ln12386_reg_710 <= icmp_ln12386_fu_434_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln66_reg_705_pp0_iter2_reg <= lshr_ln66_reg_705;
        lshr_ln_reg_699_pp0_iter2_reg <= lshr_ln_reg_699;
        sub_ln12386_reg_724[17 : 3] <= sub_ln12386_fu_567_p2[17 : 3];
    end
end
always @ (*) begin
    if (((icmp_ln12384_fu_446_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12384_reg_720 == 1'd0))) begin
        ap_phi_mux_icmp_ln1238539_phi_fu_216_p4 = icmp_ln12385_reg_715;
    end else begin
        ap_phi_mux_icmp_ln1238539_phi_fu_216_p4 = icmp_ln1238539_reg_212;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12384_reg_720 == 1'd0))) begin
        ap_phi_mux_icmp_ln1238638_phi_fu_227_p4 = icmp_ln12386_reg_710;
    end else begin
        ap_phi_mux_icmp_ln1238638_phi_fu_227_p4 = icmp_ln1238638_reg_223;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13712_0_ce0_local = 1'b1;
    end else begin
        v13712_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13712_0_we0_local = 1'b1;
    end else begin
        v13712_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13712_1_ce0_local = 1'b1;
    end else begin
        v13712_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13712_1_we0_local = 1'b1;
    end else begin
        v13712_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9714_1_ce0_local = 1'b1;
    end else begin
        v9714_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9714_ce0_local = 1'b1;
    end else begin
        v9714_ce0_local = 1'b0;
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
assign add_ln12384_1_fu_428_p2 = (indvar_flatten1233_fu_114 + 14'd1);
assign add_ln12384_fu_290_p2 = (v966234_fu_118 + 6'd1);
assign add_ln12385_1_fu_414_p2 = (indvar_flatten35_fu_122 + 10'd1);
assign add_ln12385_fu_326_p2 = (select_ln12384_fu_296_p3 + 6'd1);
assign add_ln12388_1_fu_576_p2 = (sub_ln12385_fu_519_p2 + zext_ln12388_1_fu_573_p1);
assign add_ln12388_fu_369_p2 = (tmp_427_cast_fu_356_p1 + zext_ln12388_fu_365_p1);
assign add_ln12389_1_fu_591_p2 = (zext_ln12386_1_fu_588_p1 + p_udiv2_cast_cast_cast_cast_reg_668);
assign add_ln12389_2_fu_600_p2 = (sub_ln12386_reg_724 + zext_ln12389_fu_596_p1);
assign add_ln12389_fu_393_p2 = (zext_ln12442_cast_cast_cast_cast_reg_673 + zext_ln12386_fu_379_p1);
assign add_ln12391_1_fu_613_p2 = (sub_ln12386_reg_724 + zext_ln12391_4_fu_610_p1);
assign add_ln12391_2_fu_499_p2 = (zext_ln12391_fu_484_p1 + zext_ln12391_1_fu_495_p1);
assign add_ln12391_fu_537_p2 = (add_ln12391_2_fu_499_p2 + zext_ln12391_2_fu_533_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_403_fu_528_p2 = (mul9_i + zext_ln12385_fu_525_p1);
assign empty_fu_360_p2 = (v9662_fu_318_p3 + rem4);
assign icmp_ln12384_fu_446_p2 = ((indvar_flatten1233_fu_114 == 14'd12287) ? 1'b1 : 1'b0);
assign icmp_ln12385_fu_440_p2 = ((select_ln12385_1_fu_420_p3 == 10'd384) ? 1'b1 : 1'b0);
assign icmp_ln12386_fu_434_p2 = ((v9664_fu_408_p2 < 5'd24) ? 1'b1 : 1'b0);
assign or_ln12384_fu_312_p2 = (ap_phi_mux_icmp_ln1238638_phi_fu_227_p4 | ap_phi_mux_icmp_ln1238539_phi_fu_216_p4);
assign p_udiv2_cast_cast_cast_cast_fu_238_p1 = $unsigned(p_udiv2_cast_cast_cast_fu_234_p1);
assign p_udiv2_cast_cast_cast_fu_234_p1 = $signed(p_udiv2_cast_cast);
assign select_ln12384_1_fu_304_p3 = ((ap_phi_mux_icmp_ln1238539_phi_fu_216_p4[0:0] == 1'b1) ? 5'd0 : v966437_fu_130);
assign select_ln12384_fu_296_p3 = ((ap_phi_mux_icmp_ln1238539_phi_fu_216_p4[0:0] == 1'b1) ? 6'd0 : v966336_fu_126);
assign select_ln12385_1_fu_420_p3 = ((ap_phi_mux_icmp_ln1238539_phi_fu_216_p4[0:0] == 1'b1) ? 10'd1 : add_ln12385_1_fu_414_p2);
assign sub_ln12385_fu_519_p2 = (tmp_525_fu_512_p3 - tmp_524_fu_505_p3);
assign sub_ln12386_fu_567_p2 = (tmp_527_fu_555_p3 - zext_ln12391_3_fu_563_p1);
assign tmp_427_cast_fu_356_p1 = tmp_s_fu_348_p3;
assign tmp_523_fu_488_p3 = {{empty_reg_683}, {5'd0}};
assign tmp_524_fu_505_p3 = {{add_ln12388_reg_689}, {2'd0}};
assign tmp_525_fu_512_p3 = {{trunc_ln12388_reg_694}, {4'd0}};
assign tmp_526_fu_547_p3 = {{add_ln12391_fu_537_p2}, {3'd0}};
assign tmp_527_fu_555_p3 = {{trunc_ln12391_fu_543_p1}, {5'd0}};
assign tmp_fu_477_p3 = {{empty_reg_683}, {7'd0}};
assign tmp_s_fu_348_p3 = {{v9662_fu_318_p3}, {5'd0}};
assign trunc_ln12388_fu_375_p1 = add_ln12388_fu_369_p2[9:0];
assign trunc_ln12391_fu_543_p1 = add_ln12391_fu_537_p2[12:0];
assign v13712_0_address0 = zext_ln12389_1_fu_605_p1;
assign v13712_0_ce0 = v13712_0_ce0_local;
assign v13712_0_d0 = v9714_1_q0;
assign v13712_0_we0 = v13712_0_we0_local;
assign v13712_1_address0 = zext_ln12391_5_fu_618_p1;
assign v13712_1_ce0 = v13712_1_ce0_local;
assign v13712_1_d0 = v9714_q0;
assign v13712_1_we0 = v13712_1_we0_local;
assign v9662_fu_318_p3 = ((ap_phi_mux_icmp_ln1238539_phi_fu_216_p4[0:0] == 1'b1) ? add_ln12384_fu_290_p2 : v966234_fu_118);
assign v9663_fu_340_p3 = ((or_ln12384_fu_312_p2[0:0] == 1'b1) ? select_ln12384_fu_296_p3 : add_ln12385_fu_326_p2);
assign v9664_fu_408_p2 = (v9664_mid2_fu_332_p3 + 5'd2);
assign v9664_mid2_fu_332_p3 = ((or_ln12384_fu_312_p2[0:0] == 1'b1) ? select_ln12384_1_fu_304_p3 : 5'd0);
assign v9714_1_address0 = zext_ln12388_2_fu_582_p1;
assign v9714_1_ce0 = v9714_1_ce0_local;
assign v9714_address0 = zext_ln12388_2_fu_582_p1;
assign v9714_ce0 = v9714_ce0_local;
assign zext_ln12385_fu_525_p1 = v9663_reg_678;
assign zext_ln12386_1_fu_588_p1 = lshr_ln_reg_699_pp0_iter2_reg;
assign zext_ln12386_fu_379_p1 = v9664_mid2_fu_332_p3;
assign zext_ln12388_1_fu_573_p1 = lshr_ln_reg_699;
assign zext_ln12388_2_fu_582_p1 = add_ln12388_1_fu_576_p2;
assign zext_ln12388_fu_365_p1 = v9663_fu_340_p3;
assign zext_ln12389_1_fu_605_p1 = add_ln12389_2_fu_600_p2;
assign zext_ln12389_fu_596_p1 = add_ln12389_1_fu_591_p2;
assign zext_ln12391_1_fu_495_p1 = tmp_523_fu_488_p3;
assign zext_ln12391_2_fu_533_p1 = empty_403_fu_528_p2;
assign zext_ln12391_3_fu_563_p1 = tmp_526_fu_547_p3;
assign zext_ln12391_4_fu_610_p1 = lshr_ln66_reg_705_pp0_iter2_reg;
assign zext_ln12391_5_fu_618_p1 = add_ln12391_1_fu_613_p2;
assign zext_ln12391_fu_484_p1 = tmp_fu_477_p3;
assign zext_ln12442_cast_cast_cast_cast_fu_246_p1 = $unsigned(zext_ln12442_cast_cast_cast_fu_242_p1);
assign zext_ln12442_cast_cast_cast_fu_242_p1 = $signed(zext_ln12442_cast_cast);
always @ (posedge ap_clk) begin
    p_udiv2_cast_cast_cast_cast_reg_668[4] <= 1'b0;
    zext_ln12442_cast_cast_cast_cast_reg_673[5] <= 1'b0;
    sub_ln12386_reg_724[2:0] <= 3'b000;
end
endmodule 