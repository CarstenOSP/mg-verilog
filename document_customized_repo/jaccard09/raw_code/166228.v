module forward_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i37_i_i,zext_ln10789_i,v8475_address0,v8475_ce0,v8475_we0,v8475_d0,v8475_1_address0,v8475_1_ce0,v8475_1_we0,v8475_1_d0,thr_add_udiv_cast_i_cast_cast_i,v13717_0_address0,v13717_0_ce0,v13717_0_q0,v13717_1_address0,v13717_1_ce0,v13717_1_q0,empty,thr_add1_cast9_cast_i_cast_cast_i,v13717_2_address0,v13717_2_ce0,v13717_2_q0,v13717_3_address0,v13717_3_ce0,v13717_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i37_i_i;
input  [6:0] zext_ln10789_i;
output  [11:0] v8475_address0;
output   v8475_ce0;
output   v8475_we0;
output  [7:0] v8475_d0;
output  [11:0] v8475_1_address0;
output   v8475_1_ce0;
output   v8475_1_we0;
output  [7:0] v8475_1_d0;
input  [1:0] thr_add_udiv_cast_i_cast_cast_i;
output  [17:0] v13717_0_address0;
output   v13717_0_ce0;
input  [7:0] v13717_0_q0;
output  [17:0] v13717_1_address0;
output   v13717_1_ce0;
input  [7:0] v13717_1_q0;
input  [0:0] empty;
input  [3:0] thr_add1_cast9_cast_i_cast_cast_i;
output  [17:0] v13717_2_address0;
output   v13717_2_ce0;
input  [7:0] v13717_2_q0;
output  [17:0] v13717_3_address0;
output   v13717_3_ce0;
input  [7:0] v13717_3_q0;
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
wire   [0:0] icmp_ln10789_fu_475_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1079039_i_reg_260;
reg   [0:0] icmp_ln1079138_i_reg_271;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_286_p1;
reg   [5:0] thr_add1_cast9_cast_i_cast_cast_i_cast_cast_reg_776;
wire   [3:0] thr_add_udiv_cast_i_cast_cast_i_cast_cast_fu_294_p1;
reg   [3:0] thr_add_udiv_cast_i_cast_cast_i_cast_cast_reg_781;
wire   [7:0] zext_ln10789_i_cast_fu_298_p1;
reg   [7:0] zext_ln10789_i_cast_reg_786;
wire   [5:0] select_ln10789_2_fu_370_p3;
reg   [5:0] select_ln10789_2_reg_791;
reg   [5:0] select_ln10789_2_reg_791_pp0_iter2_reg;
wire   [4:0] select_ln10790_fu_392_p3;
reg   [4:0] select_ln10790_reg_798;
reg   [4:0] select_ln10790_reg_798_pp0_iter2_reg;
reg   [2:0] lshr_ln89_i_reg_804;
reg   [2:0] lshr_ln89_i_reg_804_pp0_iter2_reg;
reg   [3:0] lshr_ln90_i_reg_810;
reg   [3:0] lshr_ln90_i_reg_810_pp0_iter2_reg;
wire   [0:0] icmp_ln10791_fu_463_p2;
reg   [0:0] icmp_ln10791_reg_815;
wire   [0:0] icmp_ln10790_fu_469_p2;
reg   [0:0] icmp_ln10790_reg_820;
reg   [0:0] icmp_ln10789_reg_825;
wire   [17:0] sub_ln10792_fu_594_p2;
reg   [17:0] sub_ln10792_reg_829;
wire   [11:0] add_ln10796_2_fu_669_p2;
reg   [11:0] add_ln10796_2_reg_835;
reg   [0:0] ap_phi_mux_icmp_ln1079039_i_phi_fu_264_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1079138_i_phi_fu_275_p4;
wire   [63:0] zext_ln10794_5_fu_689_p1;
wire   [63:0] zext_ln10796_6_fu_703_p1;
wire   [63:0] zext_ln10796_4_fu_709_p1;
reg   [11:0] indvar_flatten1233_i_fu_132;
wire   [11:0] add_ln10789_1_fu_457_p2;
reg   [5:0] v845834_i_fu_136;
reg   [7:0] indvar_flatten35_i_fu_140;
wire   [7:0] select_ln10790_1_fu_449_p3;
reg   [4:0] v845936_i_fu_144;
reg   [3:0] v846037_i_fu_148;
wire   [3:0] add_ln10791_fu_437_p2;
reg    v13717_0_ce0_local;
reg    v13717_1_ce0_local;
reg    v13717_2_ce0_local;
reg    v13717_3_ce0_local;
reg    v8475_1_we0_local;
wire   [7:0] select_ln10794_fu_714_p3;
reg    v8475_1_ce0_local;
reg    v8475_we0_local;
wire   [7:0] select_ln10796_fu_722_p3;
reg    v8475_ce0_local;
wire  signed [4:0] thr_add1_cast9_cast_i_cast_cast_i_cast_fu_282_p1;
wire  signed [2:0] thr_add_udiv_cast_i_cast_cast_i_cast_fu_290_p1;
wire   [5:0] add_ln10789_fu_342_p2;
wire   [4:0] select_ln10789_fu_348_p3;
wire   [0:0] or_ln10789_fu_364_p2;
wire   [3:0] select_ln10789_1_fu_356_p3;
wire   [4:0] add_ln10790_fu_378_p2;
wire   [3:0] v8460_mid2_i_fu_384_p3;
wire   [4:0] shl_ln_i_fu_410_p3;
wire   [5:0] zext_ln10795_fu_418_p1;
wire   [5:0] add_ln10795_fu_422_p2;
wire   [7:0] add_ln10790_1_fu_443_p2;
wire   [6:0] zext_ln10789_fu_506_p1;
wire   [6:0] empty_428_fu_509_p2;
wire   [13:0] tmp_582_fu_514_p3;
wire   [11:0] tmp_583_fu_526_p3;
wire   [14:0] zext_ln10794_fu_522_p1;
wire   [14:0] zext_ln10794_1_fu_534_p1;
wire   [5:0] tmp_496_i_fu_544_p3;
wire   [7:0] p_cast8_i_i_i_fu_551_p1;
wire   [7:0] empty_429_fu_555_p2;
wire   [14:0] add_ln10794_fu_538_p2;
wire   [14:0] zext_ln10794_2_fu_560_p1;
wire   [14:0] add_ln10794_1_fu_564_p2;
wire   [13:0] trunc_ln10794_fu_570_p1;
wire   [16:0] tmp_586_fu_574_p3;
wire   [17:0] tmp_587_fu_582_p3;
wire   [17:0] zext_ln10794_3_fu_590_p1;
wire   [9:0] tmp_580_fu_600_p3;
wire   [7:0] tmp_581_fu_611_p3;
wire   [10:0] zext_ln10796_fu_607_p1;
wire   [10:0] zext_ln10796_1_fu_618_p1;
wire   [10:0] add_ln10796_fu_622_p2;
wire   [10:0] zext_ln10796_2_fu_628_p1;
wire   [10:0] add_ln10796_1_fu_631_p2;
wire   [8:0] trunc_ln10796_fu_637_p1;
wire   [11:0] tmp_585_fu_649_p3;
wire   [11:0] tmp_584_fu_641_p3;
wire   [11:0] sub_ln10796_fu_657_p2;
wire   [11:0] zext_ln10796_3_fu_666_p1;
wire   [3:0] zext_ln10791_fu_663_p1;
wire   [3:0] add_ln10794_2_fu_675_p2;
wire   [17:0] zext_ln10794_4_fu_680_p1;
wire   [17:0] add_ln10794_3_fu_684_p2;
wire   [17:0] zext_ln10796_5_fu_695_p1;
wire   [17:0] add_ln10796_3_fu_698_p2;
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
#0 indvar_flatten1233_i_fu_132 = 12'd0;
#0 v845834_i_fu_136 = 6'd0;
#0 indvar_flatten35_i_fu_140 = 8'd0;
#0 v845936_i_fu_144 = 5'd0;
#0 v846037_i_fu_148 = 4'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10789_reg_825 == 1'd0))) begin
        icmp_ln1079039_i_reg_260 <= icmp_ln10790_reg_820;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1079039_i_reg_260 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10789_reg_825 == 1'd0))) begin
        icmp_ln1079138_i_reg_271 <= icmp_ln10791_reg_815;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1079138_i_reg_271 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1233_i_fu_132 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1233_i_fu_132 <= add_ln10789_1_fu_457_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_i_fu_140 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten35_i_fu_140 <= select_ln10790_1_fu_449_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v845834_i_fu_136 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v845834_i_fu_136 <= select_ln10789_2_fu_370_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v845936_i_fu_144 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v845936_i_fu_144 <= select_ln10790_fu_392_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v846037_i_fu_148 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v846037_i_fu_148 <= add_ln10791_fu_437_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln10796_2_reg_835 <= add_ln10796_2_fu_669_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        lshr_ln89_i_reg_804_pp0_iter2_reg <= lshr_ln89_i_reg_804;
        lshr_ln90_i_reg_810_pp0_iter2_reg <= lshr_ln90_i_reg_810;
        select_ln10789_2_reg_791_pp0_iter2_reg <= select_ln10789_2_reg_791;
        select_ln10790_reg_798_pp0_iter2_reg <= select_ln10790_reg_798;
        sub_ln10792_reg_829[17 : 2] <= sub_ln10792_fu_594_p2[17 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln10789_reg_825 <= icmp_ln10789_fu_475_p2;
        lshr_ln89_i_reg_804 <= {{v8460_mid2_i_fu_384_p3[3:1]}};
        lshr_ln90_i_reg_810 <= {{add_ln10795_fu_422_p2[5:2]}};
        select_ln10789_2_reg_791 <= select_ln10789_2_fu_370_p3;
        select_ln10790_reg_798 <= select_ln10790_fu_392_p3;
        thr_add1_cast9_cast_i_cast_cast_i_cast_cast_reg_776[4 : 0] <= thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_286_p1[4 : 0];
        thr_add_udiv_cast_i_cast_cast_i_cast_cast_reg_781[2 : 0] <= thr_add_udiv_cast_i_cast_cast_i_cast_cast_fu_294_p1[2 : 0];
        zext_ln10789_i_cast_reg_786[6 : 0] <= zext_ln10789_i_cast_fu_298_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln10790_reg_820 <= icmp_ln10790_fu_469_p2;
        icmp_ln10791_reg_815 <= icmp_ln10791_fu_463_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10789_fu_475_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10789_reg_825 == 1'd0))) begin
        ap_phi_mux_icmp_ln1079039_i_phi_fu_264_p4 = icmp_ln10790_reg_820;
    end else begin
        ap_phi_mux_icmp_ln1079039_i_phi_fu_264_p4 = icmp_ln1079039_i_reg_260;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10789_reg_825 == 1'd0))) begin
        ap_phi_mux_icmp_ln1079138_i_phi_fu_275_p4 = icmp_ln10791_reg_815;
    end else begin
        ap_phi_mux_icmp_ln1079138_i_phi_fu_275_p4 = icmp_ln1079138_i_reg_271;
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
        v13717_0_ce0_local = 1'b1;
    end else begin
        v13717_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13717_1_ce0_local = 1'b1;
    end else begin
        v13717_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13717_2_ce0_local = 1'b1;
    end else begin
        v13717_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13717_3_ce0_local = 1'b1;
    end else begin
        v13717_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8475_1_ce0_local = 1'b1;
    end else begin
        v8475_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8475_1_we0_local = 1'b1;
    end else begin
        v8475_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8475_ce0_local = 1'b1;
    end else begin
        v8475_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8475_we0_local = 1'b1;
    end else begin
        v8475_we0_local = 1'b0;
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
assign add_ln10789_1_fu_457_p2 = (indvar_flatten1233_i_fu_132 + 12'd1);
assign add_ln10789_fu_342_p2 = (v845834_i_fu_136 + 6'd1);
assign add_ln10790_1_fu_443_p2 = (indvar_flatten35_i_fu_140 + 8'd1);
assign add_ln10790_fu_378_p2 = (select_ln10789_fu_348_p3 + 5'd1);
assign add_ln10791_fu_437_p2 = (v8460_mid2_i_fu_384_p3 + 4'd2);
assign add_ln10794_1_fu_564_p2 = (add_ln10794_fu_538_p2 + zext_ln10794_2_fu_560_p1);
assign add_ln10794_2_fu_675_p2 = (zext_ln10791_fu_663_p1 + thr_add_udiv_cast_i_cast_cast_i_cast_cast_reg_781);
assign add_ln10794_3_fu_684_p2 = (sub_ln10792_reg_829 + zext_ln10794_4_fu_680_p1);
assign add_ln10794_fu_538_p2 = (zext_ln10794_fu_522_p1 + zext_ln10794_1_fu_534_p1);
assign add_ln10795_fu_422_p2 = (zext_ln10795_fu_418_p1 + thr_add1_cast9_cast_i_cast_cast_i_cast_cast_reg_776);
assign add_ln10796_1_fu_631_p2 = (add_ln10796_fu_622_p2 + zext_ln10796_2_fu_628_p1);
assign add_ln10796_2_fu_669_p2 = (sub_ln10796_fu_657_p2 + zext_ln10796_3_fu_666_p1);
assign add_ln10796_3_fu_698_p2 = (sub_ln10792_reg_829 + zext_ln10796_5_fu_695_p1);
assign add_ln10796_fu_622_p2 = (zext_ln10796_fu_607_p1 + zext_ln10796_1_fu_618_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_428_fu_509_p2 = (mul_i37_i_i + zext_ln10789_fu_506_p1);
assign empty_429_fu_555_p2 = (zext_ln10789_i_cast_reg_786 + p_cast8_i_i_i_fu_551_p1);
assign icmp_ln10789_fu_475_p2 = ((indvar_flatten1233_i_fu_132 == 12'd3839) ? 1'b1 : 1'b0);
assign icmp_ln10790_fu_469_p2 = ((select_ln10790_1_fu_449_p3 == 8'd120) ? 1'b1 : 1'b0);
assign icmp_ln10791_fu_463_p2 = ((add_ln10791_fu_437_p2 < 4'd12) ? 1'b1 : 1'b0);
assign or_ln10789_fu_364_p2 = (ap_phi_mux_icmp_ln1079138_i_phi_fu_275_p4 | ap_phi_mux_icmp_ln1079039_i_phi_fu_264_p4);
assign p_cast8_i_i_i_fu_551_p1 = tmp_496_i_fu_544_p3;
assign select_ln10789_1_fu_356_p3 = ((ap_phi_mux_icmp_ln1079039_i_phi_fu_264_p4[0:0] == 1'b1) ? 4'd0 : v846037_i_fu_148);
assign select_ln10789_2_fu_370_p3 = ((ap_phi_mux_icmp_ln1079039_i_phi_fu_264_p4[0:0] == 1'b1) ? add_ln10789_fu_342_p2 : v845834_i_fu_136);
assign select_ln10789_fu_348_p3 = ((ap_phi_mux_icmp_ln1079039_i_phi_fu_264_p4[0:0] == 1'b1) ? 5'd0 : v845936_i_fu_144);
assign select_ln10790_1_fu_449_p3 = ((ap_phi_mux_icmp_ln1079039_i_phi_fu_264_p4[0:0] == 1'b1) ? 8'd1 : add_ln10790_1_fu_443_p2);
assign select_ln10790_fu_392_p3 = ((or_ln10789_fu_364_p2[0:0] == 1'b1) ? select_ln10789_fu_348_p3 : add_ln10790_fu_378_p2);
assign select_ln10794_fu_714_p3 = ((empty[0:0] == 1'b1) ? v13717_1_q0 : v13717_0_q0);
assign select_ln10796_fu_722_p3 = ((empty[0:0] == 1'b1) ? v13717_3_q0 : v13717_2_q0);
assign shl_ln_i_fu_410_p3 = {{v8460_mid2_i_fu_384_p3}, {1'd0}};
assign sub_ln10792_fu_594_p2 = (tmp_587_fu_582_p3 - zext_ln10794_3_fu_590_p1);
assign sub_ln10796_fu_657_p2 = (tmp_585_fu_649_p3 - tmp_584_fu_641_p3);
assign thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_286_p1 = $unsigned(thr_add1_cast9_cast_i_cast_cast_i_cast_fu_282_p1);
assign thr_add1_cast9_cast_i_cast_cast_i_cast_fu_282_p1 = $signed(thr_add1_cast9_cast_i_cast_cast_i);
assign thr_add_udiv_cast_i_cast_cast_i_cast_cast_fu_294_p1 = $unsigned(thr_add_udiv_cast_i_cast_cast_i_cast_fu_290_p1);
assign thr_add_udiv_cast_i_cast_cast_i_cast_fu_290_p1 = $signed(thr_add_udiv_cast_i_cast_cast_i);
assign tmp_496_i_fu_544_p3 = {{select_ln10790_reg_798}, {1'd0}};
assign tmp_580_fu_600_p3 = {{select_ln10789_2_reg_791_pp0_iter2_reg}, {4'd0}};
assign tmp_581_fu_611_p3 = {{select_ln10789_2_reg_791_pp0_iter2_reg}, {2'd0}};
assign tmp_582_fu_514_p3 = {{empty_428_fu_509_p2}, {7'd0}};
assign tmp_583_fu_526_p3 = {{empty_428_fu_509_p2}, {5'd0}};
assign tmp_584_fu_641_p3 = {{add_ln10796_1_fu_631_p2}, {1'd0}};
assign tmp_585_fu_649_p3 = {{trunc_ln10796_fu_637_p1}, {3'd0}};
assign tmp_586_fu_574_p3 = {{add_ln10794_1_fu_564_p2}, {2'd0}};
assign tmp_587_fu_582_p3 = {{trunc_ln10794_fu_570_p1}, {4'd0}};
assign trunc_ln10794_fu_570_p1 = add_ln10794_1_fu_564_p2[13:0];
assign trunc_ln10796_fu_637_p1 = add_ln10796_1_fu_631_p2[8:0];
assign v13717_0_address0 = zext_ln10794_5_fu_689_p1;
assign v13717_0_ce0 = v13717_0_ce0_local;
assign v13717_1_address0 = zext_ln10794_5_fu_689_p1;
assign v13717_1_ce0 = v13717_1_ce0_local;
assign v13717_2_address0 = zext_ln10796_6_fu_703_p1;
assign v13717_2_ce0 = v13717_2_ce0_local;
assign v13717_3_address0 = zext_ln10796_6_fu_703_p1;
assign v13717_3_ce0 = v13717_3_ce0_local;
assign v8460_mid2_i_fu_384_p3 = ((or_ln10789_fu_364_p2[0:0] == 1'b1) ? select_ln10789_1_fu_356_p3 : 4'd0);
assign v8475_1_address0 = zext_ln10796_4_fu_709_p1;
assign v8475_1_ce0 = v8475_1_ce0_local;
assign v8475_1_d0 = select_ln10794_fu_714_p3;
assign v8475_1_we0 = v8475_1_we0_local;
assign v8475_address0 = zext_ln10796_4_fu_709_p1;
assign v8475_ce0 = v8475_ce0_local;
assign v8475_d0 = select_ln10796_fu_722_p3;
assign v8475_we0 = v8475_we0_local;
assign zext_ln10789_fu_506_p1 = select_ln10789_2_reg_791;
assign zext_ln10789_i_cast_fu_298_p1 = zext_ln10789_i;
assign zext_ln10791_fu_663_p1 = lshr_ln89_i_reg_804_pp0_iter2_reg;
assign zext_ln10794_1_fu_534_p1 = tmp_583_fu_526_p3;
assign zext_ln10794_2_fu_560_p1 = empty_429_fu_555_p2;
assign zext_ln10794_3_fu_590_p1 = tmp_586_fu_574_p3;
assign zext_ln10794_4_fu_680_p1 = add_ln10794_2_fu_675_p2;
assign zext_ln10794_5_fu_689_p1 = add_ln10794_3_fu_684_p2;
assign zext_ln10794_fu_522_p1 = tmp_582_fu_514_p3;
assign zext_ln10795_fu_418_p1 = shl_ln_i_fu_410_p3;
assign zext_ln10796_1_fu_618_p1 = tmp_581_fu_611_p3;
assign zext_ln10796_2_fu_628_p1 = select_ln10790_reg_798_pp0_iter2_reg;
assign zext_ln10796_3_fu_666_p1 = lshr_ln89_i_reg_804_pp0_iter2_reg;
assign zext_ln10796_4_fu_709_p1 = add_ln10796_2_reg_835;
assign zext_ln10796_5_fu_695_p1 = lshr_ln90_i_reg_810_pp0_iter2_reg;
assign zext_ln10796_6_fu_703_p1 = add_ln10796_3_fu_698_p2;
assign zext_ln10796_fu_607_p1 = tmp_580_fu_600_p3;
always @ (posedge ap_clk) begin
    thr_add1_cast9_cast_i_cast_cast_i_cast_cast_reg_776[5] <= 1'b0;
    thr_add_udiv_cast_i_cast_cast_i_cast_cast_reg_781[3] <= 1'b0;
    zext_ln10789_i_cast_reg_786[7] <= 1'b0;
    sub_ln10792_reg_829[1:0] <= 2'b00;
end
endmodule 