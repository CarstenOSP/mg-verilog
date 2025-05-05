module forward_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i37_i_i,mul9_i66_i_i,v8474_address0,v8474_ce0,v8474_we0,v8474_d0,v8474_1_address0,v8474_1_ce0,v8474_1_we0,v8474_1_d0,zext_ln10761_cast_cast_i,p_udiv2_i_cast_cast_i,v13719_0_address0,v13719_0_ce0,v13719_0_q0,v13719_1_address0,v13719_1_ce0,v13719_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i37_i_i;
input  [5:0] mul9_i66_i_i;
output  [11:0] v8474_address0;
output   v8474_ce0;
output   v8474_we0;
output  [7:0] v8474_d0;
output  [11:0] v8474_1_address0;
output   v8474_1_ce0;
output   v8474_1_we0;
output  [7:0] v8474_1_d0;
input  [2:0] zext_ln10761_cast_cast_i;
input  [1:0] p_udiv2_i_cast_cast_i;
output  [16:0] v13719_0_address0;
output   v13719_0_ce0;
input  [7:0] v13719_0_q0;
output  [16:0] v13719_1_address0;
output   v13719_1_ce0;
input  [7:0] v13719_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln10761_fu_423_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1076227_i_reg_216;
reg   [0:0] icmp_ln1076326_i_reg_227;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] p_udiv2_i_cast_cast_i_cast_cast_fu_242_p1;
reg   [3:0] p_udiv2_i_cast_cast_i_cast_cast_reg_692;
wire   [4:0] zext_ln10761_cast_cast_i_cast_cast_fu_250_p1;
reg   [4:0] zext_ln10761_cast_cast_i_cast_cast_reg_697;
wire   [6:0] mul9_i66_i_i_cast_fu_254_p1;
reg   [6:0] mul9_i66_i_i_cast_reg_702;
wire   [5:0] select_ln10761_2_fu_326_p3;
reg   [5:0] select_ln10761_2_reg_707;
reg   [5:0] select_ln10761_2_reg_707_pp0_iter2_reg;
wire   [4:0] select_ln10762_fu_348_p3;
reg   [4:0] select_ln10762_reg_714;
reg   [4:0] select_ln10762_reg_714_pp0_iter2_reg;
reg   [2:0] lshr_ln91_i_reg_720;
reg   [2:0] lshr_ln91_i_reg_720_pp0_iter2_reg;
reg   [3:0] lshr_ln92_i_reg_726;
reg   [3:0] lshr_ln92_i_reg_726_pp0_iter2_reg;
wire   [0:0] icmp_ln10763_fu_411_p2;
reg   [0:0] icmp_ln10763_reg_731;
wire   [0:0] icmp_ln10762_fu_417_p2;
reg   [0:0] icmp_ln10762_reg_736;
reg   [0:0] icmp_ln10761_reg_741;
wire   [16:0] sub_ln10763_fu_534_p2;
reg   [16:0] sub_ln10763_reg_745;
wire   [11:0] add_ln10768_2_fu_609_p2;
reg   [11:0] add_ln10768_2_reg_751;
reg   [0:0] ap_phi_mux_icmp_ln1076227_i_phi_fu_220_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1076326_i_phi_fu_231_p4;
wire   [63:0] zext_ln10766_5_fu_629_p1;
wire   [63:0] zext_ln10768_6_fu_642_p1;
wire   [63:0] zext_ln10768_4_fu_647_p1;
reg   [11:0] indvar_flatten1221_i_fu_118;
wire   [11:0] add_ln10761_1_fu_405_p2;
reg   [5:0] v844622_i_fu_122;
reg   [7:0] indvar_flatten23_i_fu_126;
wire   [7:0] select_ln10762_1_fu_397_p3;
reg   [4:0] v844724_i_fu_130;
reg   [3:0] v844825_i_fu_134;
wire   [3:0] add_ln10763_fu_385_p2;
reg    v13719_0_ce0_local;
reg    v13719_1_ce0_local;
reg    v8474_1_we0_local;
reg    v8474_1_ce0_local;
reg    v8474_we0_local;
reg    v8474_ce0_local;
wire  signed [2:0] p_udiv2_i_cast_cast_i_cast_fu_238_p1;
wire  signed [3:0] zext_ln10761_cast_cast_i_cast_fu_246_p1;
wire   [5:0] add_ln10761_fu_298_p2;
wire   [4:0] select_ln10761_fu_304_p3;
wire   [0:0] or_ln10761_fu_320_p2;
wire   [3:0] select_ln10761_1_fu_312_p3;
wire   [4:0] add_ln10762_fu_334_p2;
wire   [3:0] v8448_mid2_i_fu_340_p3;
wire   [4:0] zext_ln10763_fu_356_p1;
wire   [4:0] add_ln10765_fu_370_p2;
wire   [7:0] add_ln10762_1_fu_391_p2;
wire   [6:0] zext_ln10761_fu_454_p1;
wire   [6:0] empty_fu_457_p2;
wire   [12:0] tmp_591_fu_462_p3;
wire   [10:0] tmp_592_fu_474_p3;
wire   [13:0] zext_ln10766_fu_470_p1;
wire   [13:0] zext_ln10766_1_fu_482_p1;
wire   [6:0] zext_ln10762_fu_492_p1;
wire   [6:0] empty_432_fu_495_p2;
wire   [13:0] add_ln10766_fu_486_p2;
wire   [13:0] zext_ln10766_2_fu_500_p1;
wire   [13:0] add_ln10766_1_fu_504_p2;
wire   [12:0] trunc_ln10766_fu_510_p1;
wire   [15:0] tmp_595_fu_514_p3;
wire   [16:0] tmp_596_fu_522_p3;
wire   [16:0] zext_ln10766_3_fu_530_p1;
wire   [9:0] tmp_fu_540_p3;
wire   [7:0] tmp_590_fu_551_p3;
wire   [10:0] zext_ln10768_fu_547_p1;
wire   [10:0] zext_ln10768_1_fu_558_p1;
wire   [10:0] add_ln10768_fu_562_p2;
wire   [10:0] zext_ln10768_2_fu_568_p1;
wire   [10:0] add_ln10768_1_fu_571_p2;
wire   [8:0] trunc_ln10768_fu_577_p1;
wire   [11:0] tmp_594_fu_589_p3;
wire   [11:0] tmp_593_fu_581_p3;
wire   [11:0] sub_ln10762_fu_597_p2;
wire   [11:0] zext_ln10768_3_fu_606_p1;
wire   [3:0] zext_ln10763_1_fu_603_p1;
wire   [3:0] add_ln10766_2_fu_615_p2;
wire   [16:0] zext_ln10766_4_fu_620_p1;
wire   [16:0] add_ln10766_3_fu_624_p2;
wire   [16:0] zext_ln10768_5_fu_634_p1;
wire   [16:0] add_ln10768_3_fu_637_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
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
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 indvar_flatten1221_i_fu_118 = 12'd0;
#0 v844622_i_fu_122 = 6'd0;
#0 indvar_flatten23_i_fu_126 = 8'd0;
#0 v844724_i_fu_130 = 5'd0;
#0 v844825_i_fu_134 = 4'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10761_reg_741 == 1'd0))) begin
        icmp_ln1076227_i_reg_216 <= icmp_ln10762_reg_736;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1076227_i_reg_216 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10761_reg_741 == 1'd0))) begin
        icmp_ln1076326_i_reg_227 <= icmp_ln10763_reg_731;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1076326_i_reg_227 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1221_i_fu_118 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1221_i_fu_118 <= add_ln10761_1_fu_405_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_i_fu_126 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten23_i_fu_126 <= select_ln10762_1_fu_397_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v844622_i_fu_122 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v844622_i_fu_122 <= select_ln10761_2_fu_326_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v844724_i_fu_130 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v844724_i_fu_130 <= select_ln10762_fu_348_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v844825_i_fu_134 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v844825_i_fu_134 <= add_ln10763_fu_385_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln10768_2_reg_751 <= add_ln10768_2_fu_609_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        lshr_ln91_i_reg_720_pp0_iter2_reg <= lshr_ln91_i_reg_720;
        lshr_ln92_i_reg_726_pp0_iter2_reg <= lshr_ln92_i_reg_726;
        select_ln10761_2_reg_707_pp0_iter2_reg <= select_ln10761_2_reg_707;
        select_ln10762_reg_714_pp0_iter2_reg <= select_ln10762_reg_714;
        sub_ln10763_reg_745[16 : 2] <= sub_ln10763_fu_534_p2[16 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln10761_reg_741 <= icmp_ln10761_fu_423_p2;
        lshr_ln91_i_reg_720 <= {{v8448_mid2_i_fu_340_p3[3:1]}};
        lshr_ln92_i_reg_726 <= {{add_ln10765_fu_370_p2[4:1]}};
        mul9_i66_i_i_cast_reg_702[5 : 0] <= mul9_i66_i_i_cast_fu_254_p1[5 : 0];
        p_udiv2_i_cast_cast_i_cast_cast_reg_692[2 : 0] <= p_udiv2_i_cast_cast_i_cast_cast_fu_242_p1[2 : 0];
        select_ln10761_2_reg_707 <= select_ln10761_2_fu_326_p3;
        select_ln10762_reg_714 <= select_ln10762_fu_348_p3;
        zext_ln10761_cast_cast_i_cast_cast_reg_697[3 : 0] <= zext_ln10761_cast_cast_i_cast_cast_fu_250_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln10762_reg_736 <= icmp_ln10762_fu_417_p2;
        icmp_ln10763_reg_731 <= icmp_ln10763_fu_411_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10761_fu_423_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10761_reg_741 == 1'd0))) begin
        ap_phi_mux_icmp_ln1076227_i_phi_fu_220_p4 = icmp_ln10762_reg_736;
    end else begin
        ap_phi_mux_icmp_ln1076227_i_phi_fu_220_p4 = icmp_ln1076227_i_reg_216;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10761_reg_741 == 1'd0))) begin
        ap_phi_mux_icmp_ln1076326_i_phi_fu_231_p4 = icmp_ln10763_reg_731;
    end else begin
        ap_phi_mux_icmp_ln1076326_i_phi_fu_231_p4 = icmp_ln1076326_i_reg_227;
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
        v13719_0_ce0_local = 1'b1;
    end else begin
        v13719_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13719_1_ce0_local = 1'b1;
    end else begin
        v13719_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8474_1_ce0_local = 1'b1;
    end else begin
        v8474_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8474_1_we0_local = 1'b1;
    end else begin
        v8474_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8474_ce0_local = 1'b1;
    end else begin
        v8474_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8474_we0_local = 1'b1;
    end else begin
        v8474_we0_local = 1'b0;
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
assign add_ln10761_1_fu_405_p2 = (indvar_flatten1221_i_fu_118 + 12'd1);
assign add_ln10761_fu_298_p2 = (v844622_i_fu_122 + 6'd1);
assign add_ln10762_1_fu_391_p2 = (indvar_flatten23_i_fu_126 + 8'd1);
assign add_ln10762_fu_334_p2 = (select_ln10761_fu_304_p3 + 5'd1);
assign add_ln10763_fu_385_p2 = (v8448_mid2_i_fu_340_p3 + 4'd2);
assign add_ln10765_fu_370_p2 = (zext_ln10761_cast_cast_i_cast_cast_reg_697 + zext_ln10763_fu_356_p1);
assign add_ln10766_1_fu_504_p2 = (add_ln10766_fu_486_p2 + zext_ln10766_2_fu_500_p1);
assign add_ln10766_2_fu_615_p2 = (zext_ln10763_1_fu_603_p1 + p_udiv2_i_cast_cast_i_cast_cast_reg_692);
assign add_ln10766_3_fu_624_p2 = (sub_ln10763_reg_745 + zext_ln10766_4_fu_620_p1);
assign add_ln10766_fu_486_p2 = (zext_ln10766_fu_470_p1 + zext_ln10766_1_fu_482_p1);
assign add_ln10768_1_fu_571_p2 = (add_ln10768_fu_562_p2 + zext_ln10768_2_fu_568_p1);
assign add_ln10768_2_fu_609_p2 = (sub_ln10762_fu_597_p2 + zext_ln10768_3_fu_606_p1);
assign add_ln10768_3_fu_637_p2 = (sub_ln10763_reg_745 + zext_ln10768_5_fu_634_p1);
assign add_ln10768_fu_562_p2 = (zext_ln10768_fu_547_p1 + zext_ln10768_1_fu_558_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_432_fu_495_p2 = (mul9_i66_i_i_cast_reg_702 + zext_ln10762_fu_492_p1);
assign empty_fu_457_p2 = (mul_i37_i_i + zext_ln10761_fu_454_p1);
assign icmp_ln10761_fu_423_p2 = ((indvar_flatten1221_i_fu_118 == 12'd3839) ? 1'b1 : 1'b0);
assign icmp_ln10762_fu_417_p2 = ((select_ln10762_1_fu_397_p3 == 8'd120) ? 1'b1 : 1'b0);
assign icmp_ln10763_fu_411_p2 = ((add_ln10763_fu_385_p2 < 4'd12) ? 1'b1 : 1'b0);
assign mul9_i66_i_i_cast_fu_254_p1 = mul9_i66_i_i;
assign or_ln10761_fu_320_p2 = (ap_phi_mux_icmp_ln1076326_i_phi_fu_231_p4 | ap_phi_mux_icmp_ln1076227_i_phi_fu_220_p4);
assign p_udiv2_i_cast_cast_i_cast_cast_fu_242_p1 = $unsigned(p_udiv2_i_cast_cast_i_cast_fu_238_p1);
assign p_udiv2_i_cast_cast_i_cast_fu_238_p1 = $signed(p_udiv2_i_cast_cast_i);
assign select_ln10761_1_fu_312_p3 = ((ap_phi_mux_icmp_ln1076227_i_phi_fu_220_p4[0:0] == 1'b1) ? 4'd0 : v844825_i_fu_134);
assign select_ln10761_2_fu_326_p3 = ((ap_phi_mux_icmp_ln1076227_i_phi_fu_220_p4[0:0] == 1'b1) ? add_ln10761_fu_298_p2 : v844622_i_fu_122);
assign select_ln10761_fu_304_p3 = ((ap_phi_mux_icmp_ln1076227_i_phi_fu_220_p4[0:0] == 1'b1) ? 5'd0 : v844724_i_fu_130);
assign select_ln10762_1_fu_397_p3 = ((ap_phi_mux_icmp_ln1076227_i_phi_fu_220_p4[0:0] == 1'b1) ? 8'd1 : add_ln10762_1_fu_391_p2);
assign select_ln10762_fu_348_p3 = ((or_ln10761_fu_320_p2[0:0] == 1'b1) ? select_ln10761_fu_304_p3 : add_ln10762_fu_334_p2);
assign sub_ln10762_fu_597_p2 = (tmp_594_fu_589_p3 - tmp_593_fu_581_p3);
assign sub_ln10763_fu_534_p2 = (tmp_596_fu_522_p3 - zext_ln10766_3_fu_530_p1);
assign tmp_590_fu_551_p3 = {{select_ln10761_2_reg_707_pp0_iter2_reg}, {2'd0}};
assign tmp_591_fu_462_p3 = {{empty_fu_457_p2}, {6'd0}};
assign tmp_592_fu_474_p3 = {{empty_fu_457_p2}, {4'd0}};
assign tmp_593_fu_581_p3 = {{add_ln10768_1_fu_571_p2}, {1'd0}};
assign tmp_594_fu_589_p3 = {{trunc_ln10768_fu_577_p1}, {3'd0}};
assign tmp_595_fu_514_p3 = {{add_ln10766_1_fu_504_p2}, {2'd0}};
assign tmp_596_fu_522_p3 = {{trunc_ln10766_fu_510_p1}, {4'd0}};
assign tmp_fu_540_p3 = {{select_ln10761_2_reg_707_pp0_iter2_reg}, {4'd0}};
assign trunc_ln10766_fu_510_p1 = add_ln10766_1_fu_504_p2[12:0];
assign trunc_ln10768_fu_577_p1 = add_ln10768_1_fu_571_p2[8:0];
assign v13719_0_address0 = zext_ln10766_5_fu_629_p1;
assign v13719_0_ce0 = v13719_0_ce0_local;
assign v13719_1_address0 = zext_ln10768_6_fu_642_p1;
assign v13719_1_ce0 = v13719_1_ce0_local;
assign v8448_mid2_i_fu_340_p3 = ((or_ln10761_fu_320_p2[0:0] == 1'b1) ? select_ln10761_1_fu_312_p3 : 4'd0);
assign v8474_1_address0 = zext_ln10768_4_fu_647_p1;
assign v8474_1_ce0 = v8474_1_ce0_local;
assign v8474_1_d0 = v13719_0_q0;
assign v8474_1_we0 = v8474_1_we0_local;
assign v8474_address0 = zext_ln10768_4_fu_647_p1;
assign v8474_ce0 = v8474_ce0_local;
assign v8474_d0 = v13719_1_q0;
assign v8474_we0 = v8474_we0_local;
assign zext_ln10761_cast_cast_i_cast_cast_fu_250_p1 = $unsigned(zext_ln10761_cast_cast_i_cast_fu_246_p1);
assign zext_ln10761_cast_cast_i_cast_fu_246_p1 = $signed(zext_ln10761_cast_cast_i);
assign zext_ln10761_fu_454_p1 = select_ln10761_2_reg_707;
assign zext_ln10762_fu_492_p1 = select_ln10762_reg_714;
assign zext_ln10763_1_fu_603_p1 = lshr_ln91_i_reg_720_pp0_iter2_reg;
assign zext_ln10763_fu_356_p1 = v8448_mid2_i_fu_340_p3;
assign zext_ln10766_1_fu_482_p1 = tmp_592_fu_474_p3;
assign zext_ln10766_2_fu_500_p1 = empty_432_fu_495_p2;
assign zext_ln10766_3_fu_530_p1 = tmp_595_fu_514_p3;
assign zext_ln10766_4_fu_620_p1 = add_ln10766_2_fu_615_p2;
assign zext_ln10766_5_fu_629_p1 = add_ln10766_3_fu_624_p2;
assign zext_ln10766_fu_470_p1 = tmp_591_fu_462_p3;
assign zext_ln10768_1_fu_558_p1 = tmp_590_fu_551_p3;
assign zext_ln10768_2_fu_568_p1 = select_ln10762_reg_714_pp0_iter2_reg;
assign zext_ln10768_3_fu_606_p1 = lshr_ln91_i_reg_720_pp0_iter2_reg;
assign zext_ln10768_4_fu_647_p1 = add_ln10768_2_reg_751;
assign zext_ln10768_5_fu_634_p1 = lshr_ln92_i_reg_726_pp0_iter2_reg;
assign zext_ln10768_6_fu_642_p1 = add_ln10768_3_fu_637_p2;
assign zext_ln10768_fu_547_p1 = tmp_fu_540_p3;
always @ (posedge ap_clk) begin
    p_udiv2_i_cast_cast_i_cast_cast_reg_692[3] <= 1'b0;
    zext_ln10761_cast_cast_i_cast_cast_reg_697[4] <= 1'b0;
    mul9_i66_i_i_cast_reg_702[6] <= 1'b0;
    sub_ln10763_reg_745[1:0] <= 2'b00;
end
endmodule 