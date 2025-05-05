module forward_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i29_i_i,mul9_i57_i_i,v8017_address0,v8017_ce0,v8017_we0,v8017_d0,v8017_1_address0,v8017_1_ce0,v8017_1_we0,v8017_1_d0,mul13_i_i_i,trunc_ln_i,v9198_0_address0,v9198_0_ce0,v9198_0_q0,v9198_1_address0,v9198_1_ce0,v9198_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] mul_i29_i_i;
input  [6:0] mul9_i57_i_i;
output  [13:0] v8017_address0;
output   v8017_ce0;
output   v8017_we0;
output  [7:0] v8017_d0;
output  [13:0] v8017_1_address0;
output   v8017_1_ce0;
output   v8017_1_we0;
output  [7:0] v8017_1_d0;
input  [6:0] mul13_i_i_i;
input  [5:0] trunc_ln_i;
output  [18:0] v9198_0_address0;
output   v9198_0_ce0;
input  [7:0] v9198_0_q0;
output  [18:0] v9198_1_address0;
output   v9198_1_ce0;
input  [7:0] v9198_1_q0;
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
wire   [0:0] icmp_ln12587_fu_385_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1258827_i_reg_214;
reg   [0:0] icmp_ln1258926_i_reg_226;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln12588_fu_310_p3;
reg   [4:0] select_ln12588_reg_675;
reg   [4:0] select_ln12588_reg_675_pp0_iter2_reg;
reg   [3:0] lshr_ln121_i_reg_681;
reg   [3:0] lshr_ln121_i_reg_681_pp0_iter2_reg;
reg   [5:0] lshr_ln122_i_reg_687;
reg   [5:0] lshr_ln122_i_reg_687_pp0_iter2_reg;
wire   [0:0] icmp_ln12589_fu_373_p2;
reg   [0:0] icmp_ln12589_reg_692;
wire   [0:0] icmp_ln12588_fu_379_p2;
reg   [0:0] icmp_ln12588_reg_697;
reg   [0:0] icmp_ln12587_reg_702;
wire   [5:0] select_ln12587_2_fu_420_p3;
reg   [5:0] select_ln12587_2_reg_706;
wire   [12:0] add_ln12592_fu_471_p2;
reg   [12:0] add_ln12592_reg_712;
wire   [13:0] add_ln12594_1_fu_572_p2;
reg   [13:0] add_ln12594_1_reg_718;
reg   [0:0] ap_phi_mux_icmp_ln1258827_i_phi_fu_218_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1258926_i_phi_fu_230_p4;
wire   [63:0] zext_ln12592_4_fu_596_p1;
wire   [63:0] zext_ln12594_6_fu_610_p1;
wire   [63:0] zext_ln12594_4_fu_615_p1;
reg   [13:0] indvar_flatten1221_i_fu_116;
wire   [13:0] add_ln12587_1_fu_367_p2;
reg   [5:0] v798922_i_fu_120;
reg   [8:0] indvar_flatten23_i_fu_124;
wire   [8:0] select_ln12588_1_fu_359_p3;
reg   [4:0] v799024_i_fu_128;
reg   [4:0] v799125_i_fu_132;
wire   [4:0] add_ln12589_fu_347_p2;
reg    v9198_0_ce0_local;
reg    v9198_1_ce0_local;
reg    v8017_1_we0_local;
reg    v8017_1_ce0_local;
reg    v8017_we0_local;
reg    v8017_ce0_local;
wire   [4:0] select_ln12587_fu_274_p3;
wire   [0:0] or_ln12587_fu_290_p2;
wire   [4:0] select_ln12587_1_fu_282_p3;
wire   [4:0] add_ln12588_fu_296_p2;
wire   [4:0] v7991_mid2_i_fu_302_p3;
wire   [6:0] zext_ln12589_fu_318_p1;
wire   [6:0] add_ln12591_fu_332_p2;
wire   [8:0] add_ln12588_1_fu_353_p2;
wire   [5:0] add_ln12587_fu_414_p2;
wire   [5:0] empty_fu_428_p2;
wire   [9:0] tmp_364_fu_441_p3;
wire   [12:0] p_shl26_fu_433_p3;
wire   [12:0] zext_ln12592_fu_449_p1;
wire   [6:0] zext_ln12588_fu_459_p1;
wire   [6:0] empty_375_fu_462_p2;
wire   [12:0] sub_ln12592_fu_453_p2;
wire   [12:0] zext_ln12592_1_fu_467_p1;
wire   [7:0] tmp_fu_489_p3;
wire   [10:0] p_shl28_fu_482_p3;
wire   [10:0] zext_ln12594_fu_496_p1;
wire   [10:0] sub_ln12594_fu_500_p2;
wire   [10:0] zext_ln12594_1_fu_506_p1;
wire   [10:0] add_ln12594_fu_509_p2;
wire   [9:0] trunc_ln12594_fu_515_p1;
wire   [11:0] tmp_365_fu_519_p3;
wire   [13:0] tmp_366_fu_527_p3;
wire   [13:0] zext_ln12594_2_fu_535_p1;
wire   [15:0] tmp_367_fu_552_p3;
wire   [18:0] p_shl_fu_545_p3;
wire   [18:0] zext_ln12592_2_fu_559_p1;
wire   [13:0] sub_ln12588_fu_539_p2;
wire   [13:0] zext_ln12594_3_fu_569_p1;
wire   [5:0] zext_ln12589_1_fu_578_p1;
wire   [5:0] add_ln12592_1_fu_581_p2;
wire   [18:0] sub_ln12592_1_fu_563_p2;
wire   [18:0] zext_ln12592_3_fu_586_p1;
wire   [18:0] add_ln12592_2_fu_590_p2;
wire   [18:0] zext_ln12594_5_fu_601_p1;
wire   [18:0] add_ln12594_2_fu_604_p2;
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
#0 indvar_flatten1221_i_fu_116 = 14'd0;
#0 v798922_i_fu_120 = 6'd0;
#0 indvar_flatten23_i_fu_124 = 9'd0;
#0 v799024_i_fu_128 = 5'd0;
#0 v799125_i_fu_132 = 5'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12587_reg_702 == 1'd0))) begin
        icmp_ln1258827_i_reg_214 <= icmp_ln12588_reg_697;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1258827_i_reg_214 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12587_reg_702 == 1'd0))) begin
        icmp_ln1258926_i_reg_226 <= icmp_ln12589_reg_692;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1258926_i_reg_226 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1221_i_fu_116 <= 14'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1221_i_fu_116 <= add_ln12587_1_fu_367_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_i_fu_124 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten23_i_fu_124 <= select_ln12588_1_fu_359_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v798922_i_fu_120 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v798922_i_fu_120 <= select_ln12587_2_fu_420_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v799024_i_fu_128 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v799024_i_fu_128 <= select_ln12588_fu_310_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v799125_i_fu_132 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v799125_i_fu_132 <= add_ln12589_fu_347_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln12592_reg_712 <= add_ln12592_fu_471_p2;
        add_ln12594_1_reg_718 <= add_ln12594_1_fu_572_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        lshr_ln121_i_reg_681_pp0_iter2_reg <= lshr_ln121_i_reg_681;
        lshr_ln122_i_reg_687_pp0_iter2_reg <= lshr_ln122_i_reg_687;
        select_ln12587_2_reg_706 <= select_ln12587_2_fu_420_p3;
        select_ln12588_reg_675_pp0_iter2_reg <= select_ln12588_reg_675;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln12587_reg_702 <= icmp_ln12587_fu_385_p2;
        lshr_ln121_i_reg_681 <= {{v7991_mid2_i_fu_302_p3[4:1]}};
        lshr_ln122_i_reg_687 <= {{add_ln12591_fu_332_p2[6:1]}};
        select_ln12588_reg_675 <= select_ln12588_fu_310_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12588_reg_697 <= icmp_ln12588_fu_379_p2;
        icmp_ln12589_reg_692 <= icmp_ln12589_fu_373_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12587_fu_385_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12587_reg_702 == 1'd0))) begin
        ap_phi_mux_icmp_ln1258827_i_phi_fu_218_p4 = icmp_ln12588_reg_697;
    end else begin
        ap_phi_mux_icmp_ln1258827_i_phi_fu_218_p4 = icmp_ln1258827_i_reg_214;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12587_reg_702 == 1'd0))) begin
        ap_phi_mux_icmp_ln1258926_i_phi_fu_230_p4 = icmp_ln12589_reg_692;
    end else begin
        ap_phi_mux_icmp_ln1258926_i_phi_fu_230_p4 = icmp_ln1258926_i_reg_226;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8017_1_ce0_local = 1'b1;
    end else begin
        v8017_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8017_1_we0_local = 1'b1;
    end else begin
        v8017_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8017_ce0_local = 1'b1;
    end else begin
        v8017_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8017_we0_local = 1'b1;
    end else begin
        v8017_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9198_0_ce0_local = 1'b1;
    end else begin
        v9198_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9198_1_ce0_local = 1'b1;
    end else begin
        v9198_1_ce0_local = 1'b0;
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
assign add_ln12587_1_fu_367_p2 = (indvar_flatten1221_i_fu_116 + 14'd1);
assign add_ln12587_fu_414_p2 = (v798922_i_fu_120 + 6'd1);
assign add_ln12588_1_fu_353_p2 = (indvar_flatten23_i_fu_124 + 9'd1);
assign add_ln12588_fu_296_p2 = (select_ln12587_fu_274_p3 + 5'd1);
assign add_ln12589_fu_347_p2 = (v7991_mid2_i_fu_302_p3 + 5'd2);
assign add_ln12591_fu_332_p2 = (mul13_i_i_i + zext_ln12589_fu_318_p1);
assign add_ln12592_1_fu_581_p2 = (trunc_ln_i + zext_ln12589_1_fu_578_p1);
assign add_ln12592_2_fu_590_p2 = (sub_ln12592_1_fu_563_p2 + zext_ln12592_3_fu_586_p1);
assign add_ln12592_fu_471_p2 = (sub_ln12592_fu_453_p2 + zext_ln12592_1_fu_467_p1);
assign add_ln12594_1_fu_572_p2 = (sub_ln12588_fu_539_p2 + zext_ln12594_3_fu_569_p1);
assign add_ln12594_2_fu_604_p2 = (sub_ln12592_1_fu_563_p2 + zext_ln12594_5_fu_601_p1);
assign add_ln12594_fu_509_p2 = (sub_ln12594_fu_500_p2 + zext_ln12594_1_fu_506_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_375_fu_462_p2 = (mul9_i57_i_i + zext_ln12588_fu_459_p1);
assign empty_fu_428_p2 = (select_ln12587_2_fu_420_p3 + mul_i29_i_i);
assign icmp_ln12587_fu_385_p2 = ((indvar_flatten1221_i_fu_116 == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln12588_fu_379_p2 = ((select_ln12588_1_fu_359_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln12589_fu_373_p2 = ((add_ln12589_fu_347_p2 < 5'd28) ? 1'b1 : 1'b0);
assign or_ln12587_fu_290_p2 = (ap_phi_mux_icmp_ln1258926_i_phi_fu_230_p4 | ap_phi_mux_icmp_ln1258827_i_phi_fu_218_p4);
assign p_shl26_fu_433_p3 = {{empty_fu_428_p2}, {7'd0}};
assign p_shl28_fu_482_p3 = {{select_ln12587_2_reg_706}, {5'd0}};
assign p_shl_fu_545_p3 = {{add_ln12592_reg_712}, {6'd0}};
assign select_ln12587_1_fu_282_p3 = ((ap_phi_mux_icmp_ln1258827_i_phi_fu_218_p4[0:0] == 1'b1) ? 5'd0 : v799125_i_fu_132);
assign select_ln12587_2_fu_420_p3 = ((icmp_ln1258827_i_reg_214[0:0] == 1'b1) ? add_ln12587_fu_414_p2 : v798922_i_fu_120);
assign select_ln12587_fu_274_p3 = ((ap_phi_mux_icmp_ln1258827_i_phi_fu_218_p4[0:0] == 1'b1) ? 5'd0 : v799024_i_fu_128);
assign select_ln12588_1_fu_359_p3 = ((ap_phi_mux_icmp_ln1258827_i_phi_fu_218_p4[0:0] == 1'b1) ? 9'd1 : add_ln12588_1_fu_353_p2);
assign select_ln12588_fu_310_p3 = ((or_ln12587_fu_290_p2[0:0] == 1'b1) ? select_ln12587_fu_274_p3 : add_ln12588_fu_296_p2);
assign sub_ln12588_fu_539_p2 = (tmp_366_fu_527_p3 - zext_ln12594_2_fu_535_p1);
assign sub_ln12592_1_fu_563_p2 = (p_shl_fu_545_p3 - zext_ln12592_2_fu_559_p1);
assign sub_ln12592_fu_453_p2 = (p_shl26_fu_433_p3 - zext_ln12592_fu_449_p1);
assign sub_ln12594_fu_500_p2 = (p_shl28_fu_482_p3 - zext_ln12594_fu_496_p1);
assign tmp_364_fu_441_p3 = {{empty_fu_428_p2}, {4'd0}};
assign tmp_365_fu_519_p3 = {{add_ln12594_fu_509_p2}, {1'd0}};
assign tmp_366_fu_527_p3 = {{trunc_ln12594_fu_515_p1}, {4'd0}};
assign tmp_367_fu_552_p3 = {{add_ln12592_reg_712}, {3'd0}};
assign tmp_fu_489_p3 = {{select_ln12587_2_reg_706}, {2'd0}};
assign trunc_ln12594_fu_515_p1 = add_ln12594_fu_509_p2[9:0];
assign v7991_mid2_i_fu_302_p3 = ((or_ln12587_fu_290_p2[0:0] == 1'b1) ? select_ln12587_1_fu_282_p3 : 5'd0);
assign v8017_1_address0 = zext_ln12594_4_fu_615_p1;
assign v8017_1_ce0 = v8017_1_ce0_local;
assign v8017_1_d0 = v9198_0_q0;
assign v8017_1_we0 = v8017_1_we0_local;
assign v8017_address0 = zext_ln12594_4_fu_615_p1;
assign v8017_ce0 = v8017_ce0_local;
assign v8017_d0 = v9198_1_q0;
assign v8017_we0 = v8017_we0_local;
assign v9198_0_address0 = zext_ln12592_4_fu_596_p1;
assign v9198_0_ce0 = v9198_0_ce0_local;
assign v9198_1_address0 = zext_ln12594_6_fu_610_p1;
assign v9198_1_ce0 = v9198_1_ce0_local;
assign zext_ln12588_fu_459_p1 = select_ln12588_reg_675;
assign zext_ln12589_1_fu_578_p1 = lshr_ln121_i_reg_681_pp0_iter2_reg;
assign zext_ln12589_fu_318_p1 = v7991_mid2_i_fu_302_p3;
assign zext_ln12592_1_fu_467_p1 = empty_375_fu_462_p2;
assign zext_ln12592_2_fu_559_p1 = tmp_367_fu_552_p3;
assign zext_ln12592_3_fu_586_p1 = add_ln12592_1_fu_581_p2;
assign zext_ln12592_4_fu_596_p1 = add_ln12592_2_fu_590_p2;
assign zext_ln12592_fu_449_p1 = tmp_364_fu_441_p3;
assign zext_ln12594_1_fu_506_p1 = select_ln12588_reg_675_pp0_iter2_reg;
assign zext_ln12594_2_fu_535_p1 = tmp_365_fu_519_p3;
assign zext_ln12594_3_fu_569_p1 = lshr_ln121_i_reg_681_pp0_iter2_reg;
assign zext_ln12594_4_fu_615_p1 = add_ln12594_1_reg_718;
assign zext_ln12594_5_fu_601_p1 = lshr_ln122_i_reg_687_pp0_iter2_reg;
assign zext_ln12594_6_fu_610_p1 = add_ln12594_2_fu_604_p2;
assign zext_ln12594_fu_496_p1 = tmp_fu_489_p3;
endmodule 