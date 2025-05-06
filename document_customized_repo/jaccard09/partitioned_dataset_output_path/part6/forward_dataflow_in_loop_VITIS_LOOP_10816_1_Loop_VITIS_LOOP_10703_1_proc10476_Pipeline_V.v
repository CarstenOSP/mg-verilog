
module forward_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v13718_0_address0,v13718_0_ce0,v13718_0_we0,v13718_0_d0,v13718_1_address0,v13718_1_ce0,v13718_1_we0,v13718_1_d0,mul_i37_i,mul9_i66_i,v8476_1_i_address0,v8476_1_i_ce0,v8476_1_i_q0,v8476_i_address0,v8476_i_ce0,v8476_i_q0,zext_ln10761_cast_cast,p_udiv2_i_cast_cast);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [16:0] v13718_0_address0;
output   v13718_0_ce0;
output   v13718_0_we0;
output  [7:0] v13718_0_d0;
output  [16:0] v13718_1_address0;
output   v13718_1_ce0;
output   v13718_1_we0;
output  [7:0] v13718_1_d0;
input  [6:0] mul_i37_i;
input  [5:0] mul9_i66_i;
output  [11:0] v8476_1_i_address0;
output   v8476_1_i_ce0;
input  [7:0] v8476_1_i_q0;
output  [11:0] v8476_i_address0;
output   v8476_i_ce0;
input  [7:0] v8476_i_q0;
input  [2:0] zext_ln10761_cast_cast;
input  [1:0] p_udiv2_i_cast_cast;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln10703_fu_292_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1070439_reg_216;
reg   [0:0] icmp_ln1070538_reg_227;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] p_udiv2_i_cast_cast_cast_cast_fu_242_p1;
reg   [3:0] p_udiv2_i_cast_cast_cast_cast_reg_693;
wire   [4:0] zext_ln10761_cast_cast_cast_cast_fu_250_p1;
reg   [4:0] zext_ln10761_cast_cast_cast_cast_reg_698;
wire   [6:0] mul9_i66_i_cast_fu_254_p1;
reg   [6:0] mul9_i66_i_cast_reg_703;
reg   [0:0] icmp_ln10703_reg_708;
reg   [0:0] icmp_ln10703_reg_708_pp0_iter1_reg;
wire   [4:0] v8425_fu_365_p3;
reg   [4:0] v8425_reg_712;
wire   [6:0] empty_fu_407_p2;
reg   [6:0] empty_reg_717;
wire   [10:0] add_ln10707_fu_416_p2;
reg   [10:0] add_ln10707_reg_723;
wire   [8:0] trunc_ln10707_fu_422_p1;
reg   [8:0] trunc_ln10707_reg_728;
reg   [2:0] lshr_ln_reg_733;
reg   [2:0] lshr_ln_reg_733_pp0_iter2_reg;
reg   [3:0] lshr_ln73_reg_739;
reg   [3:0] lshr_ln73_reg_739_pp0_iter2_reg;
wire   [0:0] icmp_ln10705_fu_475_p2;
reg   [0:0] icmp_ln10705_reg_744;
wire   [0:0] icmp_ln10704_fu_481_p2;
reg   [0:0] icmp_ln10704_reg_749;
wire   [16:0] sub_ln10705_fu_597_p2;
reg   [16:0] sub_ln10705_reg_754;
reg   [0:0] ap_phi_mux_icmp_ln1070439_phi_fu_220_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1070538_phi_fu_231_p4;
wire   [63:0] zext_ln10707_4_fu_612_p1;
wire   [63:0] zext_ln10708_1_fu_635_p1;
wire   [63:0] zext_ln10710_5_fu_648_p1;
reg   [11:0] indvar_flatten1233_fu_118;
wire   [11:0] add_ln10703_1_fu_286_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v842434_fu_122;
wire   [5:0] v8424_fu_343_p3;
reg   [7:0] indvar_flatten35_fu_126;
wire   [7:0] select_ln10704_1_fu_467_p3;
reg   [4:0] v842536_fu_130;
reg   [3:0] v842637_fu_134;
wire   [3:0] v8426_fu_455_p2;
reg    v8476_1_i_ce0_local;
reg    v8476_i_ce0_local;
reg    v13718_0_we0_local;
reg    v13718_0_ce0_local;
reg    v13718_1_we0_local;
reg    v13718_1_ce0_local;
wire  signed [2:0] p_udiv2_i_cast_cast_cast_fu_238_p1;
wire  signed [3:0] zext_ln10761_cast_cast_cast_fu_246_p1;
wire   [5:0] add_ln10703_fu_315_p2;
wire   [4:0] select_ln10703_fu_321_p3;
wire   [0:0] or_ln10703_fu_337_p2;
wire   [3:0] select_ln10703_1_fu_329_p3;
wire   [4:0] add_ln10704_fu_351_p2;
wire   [9:0] tmp_fu_377_p3;
wire   [7:0] tmp_600_fu_389_p3;
wire   [10:0] zext_ln10707_fu_385_p1;
wire   [10:0] zext_ln10707_1_fu_397_p1;
wire   [6:0] zext_ln10703_fu_373_p1;
wire   [10:0] add_ln10707_2_fu_401_p2;
wire   [10:0] zext_ln10707_2_fu_412_p1;
wire   [3:0] v8426_mid2_fu_357_p3;
wire   [4:0] zext_ln10705_fu_426_p1;
wire   [4:0] add_ln10708_fu_440_p2;
wire   [7:0] add_ln10704_1_fu_461_p2;
wire   [12:0] tmp_601_fu_507_p3;
wire   [10:0] tmp_602_fu_518_p3;
wire   [13:0] zext_ln10710_fu_514_p1;
wire   [13:0] zext_ln10710_1_fu_525_p1;
wire   [11:0] tmp_604_fu_542_p3;
wire   [11:0] tmp_603_fu_535_p3;
wire   [6:0] zext_ln10704_fu_555_p1;
wire   [6:0] empty_433_fu_558_p2;
wire   [13:0] add_ln10710_2_fu_529_p2;
wire   [13:0] zext_ln10710_2_fu_563_p1;
wire   [13:0] add_ln10710_fu_567_p2;
wire   [12:0] trunc_ln10710_fu_573_p1;
wire   [15:0] tmp_605_fu_577_p3;
wire   [16:0] tmp_606_fu_585_p3;
wire   [16:0] zext_ln10710_3_fu_593_p1;
wire   [11:0] sub_ln10704_fu_549_p2;
wire   [11:0] zext_ln10707_3_fu_603_p1;
wire   [11:0] add_ln10707_1_fu_606_p2;
wire   [3:0] zext_ln10705_1_fu_618_p1;
wire   [3:0] add_ln10708_1_fu_621_p2;
wire   [16:0] zext_ln10708_fu_626_p1;
wire   [16:0] add_ln10708_2_fu_630_p2;
wire   [16:0] zext_ln10710_4_fu_640_p1;
wire   [16:0] add_ln10710_1_fu_643_p2;
reg    ap_done_reg;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten1233_fu_118 = 12'd0;
#0 v842434_fu_122 = 6'd0;
#0 indvar_flatten35_fu_126 = 8'd0;
#0 v842536_fu_130 = 5'd0;
#0 v842637_fu_134 = 4'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10703_reg_708_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1070439_reg_216 <= icmp_ln10704_reg_749;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1070439_reg_216 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10703_reg_708_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1070538_reg_227 <= icmp_ln10705_reg_744;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1070538_reg_227 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1233_fu_118 <= add_ln10703_1_fu_286_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1233_fu_118 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_126 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten35_fu_126 <= select_ln10704_1_fu_467_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v842434_fu_122 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v842434_fu_122 <= v8424_fu_343_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v842536_fu_130 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v842536_fu_130 <= v8425_fu_365_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v842637_fu_134 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v842637_fu_134 <= v8426_fu_455_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln10707_reg_723 <= add_ln10707_fu_416_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_717 <= empty_fu_407_p2;
        icmp_ln10703_reg_708 <= icmp_ln10703_fu_292_p2;
        icmp_ln10703_reg_708_pp0_iter1_reg <= icmp_ln10703_reg_708;
        lshr_ln73_reg_739 <= {{add_ln10708_fu_440_p2[4:1]}};
        lshr_ln_reg_733 <= {{v8426_mid2_fu_357_p3[3:1]}};
        mul9_i66_i_cast_reg_703[5 : 0] <= mul9_i66_i_cast_fu_254_p1[5 : 0];
        p_udiv2_i_cast_cast_cast_cast_reg_693[2 : 0] <= p_udiv2_i_cast_cast_cast_cast_fu_242_p1[2 : 0];
        trunc_ln10707_reg_728 <= trunc_ln10707_fu_422_p1;
        v8425_reg_712 <= v8425_fu_365_p3;
        zext_ln10761_cast_cast_cast_cast_reg_698[3 : 0] <= zext_ln10761_cast_cast_cast_cast_fu_250_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln10704_reg_749 <= icmp_ln10704_fu_481_p2;
        icmp_ln10705_reg_744 <= icmp_ln10705_fu_475_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln73_reg_739_pp0_iter2_reg <= lshr_ln73_reg_739;
        lshr_ln_reg_733_pp0_iter2_reg <= lshr_ln_reg_733;
        sub_ln10705_reg_754[16 : 2] <= sub_ln10705_fu_597_p2[16 : 2];
    end
end
always @ (*) begin
    if (((icmp_ln10703_fu_292_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10703_reg_708_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1070439_phi_fu_220_p4 = icmp_ln10704_reg_749;
    end else begin
        ap_phi_mux_icmp_ln1070439_phi_fu_220_p4 = icmp_ln1070439_reg_216;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10703_reg_708_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1070538_phi_fu_231_p4 = icmp_ln10705_reg_744;
    end else begin
        ap_phi_mux_icmp_ln1070538_phi_fu_231_p4 = icmp_ln1070538_reg_227;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13718_0_ce0_local = 1'b1;
    end else begin
        v13718_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13718_0_we0_local = 1'b1;
    end else begin
        v13718_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13718_1_ce0_local = 1'b1;
    end else begin
        v13718_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13718_1_we0_local = 1'b1;
    end else begin
        v13718_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8476_1_i_ce0_local = 1'b1;
    end else begin
        v8476_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8476_i_ce0_local = 1'b1;
    end else begin
        v8476_i_ce0_local = 1'b0;
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
assign add_ln10703_1_fu_286_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 12'd1);
assign add_ln10703_fu_315_p2 = (v842434_fu_122 + 6'd1);
assign add_ln10704_1_fu_461_p2 = (indvar_flatten35_fu_126 + 8'd1);
assign add_ln10704_fu_351_p2 = (select_ln10703_fu_321_p3 + 5'd1);
assign add_ln10707_1_fu_606_p2 = (sub_ln10704_fu_549_p2 + zext_ln10707_3_fu_603_p1);
assign add_ln10707_2_fu_401_p2 = (zext_ln10707_fu_385_p1 + zext_ln10707_1_fu_397_p1);
assign add_ln10707_fu_416_p2 = (add_ln10707_2_fu_401_p2 + zext_ln10707_2_fu_412_p1);
assign add_ln10708_1_fu_621_p2 = (zext_ln10705_1_fu_618_p1 + p_udiv2_i_cast_cast_cast_cast_reg_693);
assign add_ln10708_2_fu_630_p2 = (sub_ln10705_reg_754 + zext_ln10708_fu_626_p1);
assign add_ln10708_fu_440_p2 = (zext_ln10761_cast_cast_cast_cast_reg_698 + zext_ln10705_fu_426_p1);
assign add_ln10710_1_fu_643_p2 = (sub_ln10705_reg_754 + zext_ln10710_4_fu_640_p1);
assign add_ln10710_2_fu_529_p2 = (zext_ln10710_fu_514_p1 + zext_ln10710_1_fu_525_p1);
assign add_ln10710_fu_567_p2 = (add_ln10710_2_fu_529_p2 + zext_ln10710_2_fu_563_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_433_fu_558_p2 = (mul9_i66_i_cast_reg_703 + zext_ln10704_fu_555_p1);
assign empty_fu_407_p2 = (mul_i37_i + zext_ln10703_fu_373_p1);
assign icmp_ln10703_fu_292_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 12'd3839) ? 1'b1 : 1'b0);
assign icmp_ln10704_fu_481_p2 = ((select_ln10704_1_fu_467_p3 == 8'd120) ? 1'b1 : 1'b0);
assign icmp_ln10705_fu_475_p2 = ((v8426_fu_455_p2 < 4'd12) ? 1'b1 : 1'b0);
assign mul9_i66_i_cast_fu_254_p1 = mul9_i66_i;
assign or_ln10703_fu_337_p2 = (ap_phi_mux_icmp_ln1070538_phi_fu_231_p4 | ap_phi_mux_icmp_ln1070439_phi_fu_220_p4);
assign p_udiv2_i_cast_cast_cast_cast_fu_242_p1 = $unsigned(p_udiv2_i_cast_cast_cast_fu_238_p1);
assign p_udiv2_i_cast_cast_cast_fu_238_p1 = $signed(p_udiv2_i_cast_cast);
assign select_ln10703_1_fu_329_p3 = ((ap_phi_mux_icmp_ln1070439_phi_fu_220_p4[0:0] == 1'b1) ? 4'd0 : v842637_fu_134);
assign select_ln10703_fu_321_p3 = ((ap_phi_mux_icmp_ln1070439_phi_fu_220_p4[0:0] == 1'b1) ? 5'd0 : v842536_fu_130);
assign select_ln10704_1_fu_467_p3 = ((ap_phi_mux_icmp_ln1070439_phi_fu_220_p4[0:0] == 1'b1) ? 8'd1 : add_ln10704_1_fu_461_p2);
assign sub_ln10704_fu_549_p2 = (tmp_604_fu_542_p3 - tmp_603_fu_535_p3);
assign sub_ln10705_fu_597_p2 = (tmp_606_fu_585_p3 - zext_ln10710_3_fu_593_p1);
assign tmp_600_fu_389_p3 = {{v8424_fu_343_p3}, {2'd0}};
assign tmp_601_fu_507_p3 = {{empty_reg_717}, {6'd0}};
assign tmp_602_fu_518_p3 = {{empty_reg_717}, {4'd0}};
assign tmp_603_fu_535_p3 = {{add_ln10707_reg_723}, {1'd0}};
assign tmp_604_fu_542_p3 = {{trunc_ln10707_reg_728}, {3'd0}};
assign tmp_605_fu_577_p3 = {{add_ln10710_fu_567_p2}, {2'd0}};
assign tmp_606_fu_585_p3 = {{trunc_ln10710_fu_573_p1}, {4'd0}};
assign tmp_fu_377_p3 = {{v8424_fu_343_p3}, {4'd0}};
assign trunc_ln10707_fu_422_p1 = add_ln10707_fu_416_p2[8:0];
assign trunc_ln10710_fu_573_p1 = add_ln10710_fu_567_p2[12:0];
assign v13718_0_address0 = zext_ln10708_1_fu_635_p1;
assign v13718_0_ce0 = v13718_0_ce0_local;
assign v13718_0_d0 = v8476_1_i_q0;
assign v13718_0_we0 = v13718_0_we0_local;
assign v13718_1_address0 = zext_ln10710_5_fu_648_p1;
assign v13718_1_ce0 = v13718_1_ce0_local;
assign v13718_1_d0 = v8476_i_q0;
assign v13718_1_we0 = v13718_1_we0_local;
assign v8424_fu_343_p3 = ((ap_phi_mux_icmp_ln1070439_phi_fu_220_p4[0:0] == 1'b1) ? add_ln10703_fu_315_p2 : v842434_fu_122);
assign v8425_fu_365_p3 = ((or_ln10703_fu_337_p2[0:0] == 1'b1) ? select_ln10703_fu_321_p3 : add_ln10704_fu_351_p2);
assign v8426_fu_455_p2 = (v8426_mid2_fu_357_p3 + 4'd2);
assign v8426_mid2_fu_357_p3 = ((or_ln10703_fu_337_p2[0:0] == 1'b1) ? select_ln10703_1_fu_329_p3 : 4'd0);
assign v8476_1_i_address0 = zext_ln10707_4_fu_612_p1;
assign v8476_1_i_ce0 = v8476_1_i_ce0_local;
assign v8476_i_address0 = zext_ln10707_4_fu_612_p1;
assign v8476_i_ce0 = v8476_i_ce0_local;
assign zext_ln10703_fu_373_p1 = v8424_fu_343_p3;
assign zext_ln10704_fu_555_p1 = v8425_reg_712;
assign zext_ln10705_1_fu_618_p1 = lshr_ln_reg_733_pp0_iter2_reg;
assign zext_ln10705_fu_426_p1 = v8426_mid2_fu_357_p3;
assign zext_ln10707_1_fu_397_p1 = tmp_600_fu_389_p3;
assign zext_ln10707_2_fu_412_p1 = v8425_fu_365_p3;
assign zext_ln10707_3_fu_603_p1 = lshr_ln_reg_733;
assign zext_ln10707_4_fu_612_p1 = add_ln10707_1_fu_606_p2;
assign zext_ln10707_fu_385_p1 = tmp_fu_377_p3;
assign zext_ln10708_1_fu_635_p1 = add_ln10708_2_fu_630_p2;
assign zext_ln10708_fu_626_p1 = add_ln10708_1_fu_621_p2;
assign zext_ln10710_1_fu_525_p1 = tmp_602_fu_518_p3;
assign zext_ln10710_2_fu_563_p1 = empty_433_fu_558_p2;
assign zext_ln10710_3_fu_593_p1 = tmp_605_fu_577_p3;
assign zext_ln10710_4_fu_640_p1 = lshr_ln73_reg_739_pp0_iter2_reg;
assign zext_ln10710_5_fu_648_p1 = add_ln10710_1_fu_643_p2;
assign zext_ln10710_fu_514_p1 = tmp_601_fu_507_p3;
assign zext_ln10761_cast_cast_cast_cast_fu_250_p1 = $unsigned(zext_ln10761_cast_cast_cast_fu_246_p1);
assign zext_ln10761_cast_cast_cast_fu_246_p1 = $signed(zext_ln10761_cast_cast);
always @ (posedge ap_clk) begin
    p_udiv2_i_cast_cast_cast_cast_reg_693[3] <= 1'b0;
    zext_ln10761_cast_cast_cast_cast_reg_698[4] <= 1'b0;
    mul9_i66_i_cast_reg_703[6] <= 1'b0;
    sub_ln10705_reg_754[1:0] <= 2'b00;
end
endmodule 
