module forward_dataflow_in_loop_VITIS_LOOP_10650_1_Loop_VITIS_LOOP_10361_1_proc80_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,p_udiv32_cast,v8415_address0,v8415_ce0,v8415_we0,v8415_d0,v8415_1_address0,v8415_1_ce0,v8415_1_we0,v8415_1_d0,v8415_2_address0,v8415_2_ce0,v8415_2_we0,v8415_2_d0,v8415_3_address0,v8415_3_ce0,v8415_3_we0,v8415_3_d0,mul_i8,shl_ln,zext_ln10395_1,zext_ln10395,v13685_0_0_address0,v13685_0_0_ce0,v13685_0_0_q0,v13685_1_0_address0,v13685_1_0_ce0,v13685_1_0_q0,v13685_0_1_address0,v13685_0_1_ce0,v13685_0_1_q0,v13685_1_1_address0,v13685_1_1_ce0,v13685_1_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i;
input  [6:0] p_udiv32_cast;
output  [7:0] v8415_address0;
output   v8415_ce0;
output   v8415_we0;
output  [7:0] v8415_d0;
output  [7:0] v8415_1_address0;
output   v8415_1_ce0;
output   v8415_1_we0;
output  [7:0] v8415_1_d0;
output  [7:0] v8415_2_address0;
output   v8415_2_ce0;
output   v8415_2_we0;
output  [7:0] v8415_2_d0;
output  [7:0] v8415_3_address0;
output   v8415_3_ce0;
output   v8415_3_we0;
output  [7:0] v8415_3_d0;
input  [6:0] mul_i8;
input  [5:0] shl_ln;
input  [1:0] zext_ln10395_1;
input  [1:0] zext_ln10395;
output  [16:0] v13685_0_0_address0;
output   v13685_0_0_ce0;
input  [7:0] v13685_0_0_q0;
output  [16:0] v13685_1_0_address0;
output   v13685_1_0_ce0;
input  [7:0] v13685_1_0_q0;
output  [16:0] v13685_0_1_address0;
output   v13685_0_1_ce0;
input  [7:0] v13685_0_1_q0;
output  [16:0] v13685_1_1_address0;
output   v13685_1_1_ce0;
input  [7:0] v13685_1_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln10361_fu_313_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1036248_reg_270;
wire    ap_block_pp0_stage0_11001;
wire   [16:0] zext_ln10395_cast_fu_281_p1;
reg   [16:0] zext_ln10395_cast_reg_770;
wire   [14:0] zext_ln10395_1_cast_fu_285_p1;
reg   [14:0] zext_ln10395_1_cast_reg_778;
reg   [0:0] icmp_ln10361_reg_786;
reg   [0:0] icmp_ln10361_reg_786_pp0_iter1_reg;
wire   [7:0] add_ln10371_fu_430_p2;
reg   [7:0] add_ln10371_reg_790;
reg   [7:0] add_ln10371_reg_790_pp0_iter2_reg;
wire   [14:0] add_ln10365_1_fu_474_p2;
reg   [14:0] add_ln10365_1_reg_795;
wire   [14:0] add_ln10369_fu_507_p2;
reg   [14:0] add_ln10369_reg_801;
wire   [14:0] add_ln10367_fu_550_p2;
reg   [14:0] add_ln10367_reg_807;
wire   [14:0] add_ln10371_1_fu_583_p2;
reg   [14:0] add_ln10371_1_reg_813;
wire   [0:0] xor_ln10362_fu_602_p2;
reg   [0:0] xor_ln10362_reg_819;
reg   [0:0] ap_phi_mux_icmp_ln1036248_phi_fu_273_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln10365_2_fu_639_p1;
wire   [63:0] zext_ln10369_2_fu_665_p1;
wire   [63:0] zext_ln10367_2_fu_691_p1;
wire   [63:0] zext_ln10371_4_fu_717_p1;
wire   [63:0] zext_ln10371_1_fu_722_p1;
reg   [7:0] indvar_flatten45_fu_114;
wire   [7:0] add_ln10361_1_fu_307_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten45_load;
reg   [5:0] v828146_fu_118;
wire   [5:0] v8281_fu_344_p3;
reg   [5:0] v828247_fu_122;
wire   [5:0] v8282_fu_588_p2;
reg    v13685_0_0_ce0_local;
reg    v13685_0_1_ce0_local;
reg    v13685_1_0_ce0_local;
reg    v13685_1_1_ce0_local;
reg    v8415_3_we0_local;
reg    v8415_3_ce0_local;
reg    v8415_2_we0_local;
reg    v8415_2_ce0_local;
reg    v8415_1_we0_local;
reg    v8415_1_ce0_local;
reg    v8415_we0_local;
reg    v8415_ce0_local;
wire   [5:0] add_ln10361_fu_330_p2;
wire   [4:0] lshr_ln_fu_356_p4;
wire   [3:0] lshr_ln_cast_fu_366_p4;
wire   [7:0] zext_ln10361_fu_352_p1;
wire   [6:0] zext_ln10361_1_fu_376_p1;
wire   [7:0] empty_fu_388_p2;
wire   [5:0] select_ln10361_fu_336_p3;
wire   [4:0] lshr_ln78_fu_412_p4;
wire   [7:0] tmp_s_fu_380_p3;
wire   [7:0] zext_ln10371_fu_426_p1;
wire   [6:0] zext_ln10362_fu_408_p1;
wire   [5:0] zext_ln10362_1_fu_422_p1;
wire   [6:0] empty_460_fu_393_p2;
wire   [5:0] add_ln10365_fu_441_p2;
wire   [12:0] tmp_154_fu_446_p3;
wire   [14:0] p_shl34_fu_458_p4;
wire   [14:0] zext_ln10365_fu_454_p1;
wire   [14:0] sub_ln10365_fu_468_p2;
wire   [6:0] tmp_153_fu_398_p4;
wire   [12:0] tmp_155_fu_479_p3;
wire   [14:0] p_shl32_fu_491_p4;
wire   [14:0] zext_ln10369_fu_487_p1;
wire   [14:0] sub_ln10369_fu_501_p2;
wire   [6:0] add_ln10364_fu_436_p2;
wire   [5:0] lshr_ln79_fu_512_p4;
wire   [12:0] tmp_156_fu_522_p3;
wire   [14:0] p_shl30_fu_534_p4;
wire   [14:0] zext_ln10367_fu_530_p1;
wire   [14:0] sub_ln10367_fu_544_p2;
wire   [12:0] tmp_157_fu_555_p3;
wire   [14:0] p_shl28_fu_567_p4;
wire   [14:0] zext_ln10371_2_fu_563_p1;
wire   [14:0] sub_ln10371_fu_577_p2;
wire   [0:0] tmp_fu_594_p3;
wire   [16:0] p_shl33_fu_621_p3;
wire   [16:0] zext_ln10365_1_fu_618_p1;
wire   [16:0] sub_ln10365_1_fu_628_p2;
wire   [16:0] add_ln10365_2_fu_634_p2;
wire   [16:0] p_shl31_fu_647_p3;
wire   [16:0] zext_ln10369_1_fu_644_p1;
wire   [16:0] sub_ln10369_1_fu_654_p2;
wire   [16:0] add_ln10369_1_fu_660_p2;
wire   [16:0] p_shl29_fu_673_p3;
wire   [16:0] zext_ln10367_1_fu_670_p1;
wire   [16:0] sub_ln10367_1_fu_680_p2;
wire   [16:0] add_ln10367_1_fu_686_p2;
wire   [16:0] p_shl_fu_699_p3;
wire   [16:0] zext_ln10371_3_fu_696_p1;
wire   [16:0] sub_ln10371_1_fu_706_p2;
wire   [16:0] add_ln10371_2_fu_712_p2;
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
#0 indvar_flatten45_fu_114 = 8'd0;
#0 v828146_fu_118 = 6'd0;
#0 v828247_fu_122 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10361_reg_786_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1036248_reg_270 <= xor_ln10362_reg_819;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1036248_reg_270 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten45_fu_114 <= add_ln10361_1_fu_307_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten45_fu_114 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v828146_fu_118 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v828146_fu_118 <= v8281_fu_344_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v828247_fu_122 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v828247_fu_122 <= v8282_fu_588_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln10365_1_reg_795 <= add_ln10365_1_fu_474_p2;
        add_ln10367_reg_807 <= add_ln10367_fu_550_p2;
        add_ln10369_reg_801 <= add_ln10369_fu_507_p2;
        add_ln10371_1_reg_813 <= add_ln10371_1_fu_583_p2;
        add_ln10371_reg_790 <= add_ln10371_fu_430_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln10361_reg_786 <= icmp_ln10361_fu_313_p2;
        icmp_ln10361_reg_786_pp0_iter1_reg <= icmp_ln10361_reg_786;
        zext_ln10395_1_cast_reg_778[1 : 0] <= zext_ln10395_1_cast_fu_285_p1[1 : 0];
        zext_ln10395_cast_reg_770[1 : 0] <= zext_ln10395_cast_fu_281_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln10371_reg_790_pp0_iter2_reg <= add_ln10371_reg_790;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln10362_reg_819 <= xor_ln10362_fu_602_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10361_fu_313_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10361_reg_786_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1036248_phi_fu_273_p4 = xor_ln10362_reg_819;
    end else begin
        ap_phi_mux_icmp_ln1036248_phi_fu_273_p4 = icmp_ln1036248_reg_270;
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
        ap_sig_allocacmp_indvar_flatten45_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten45_load = indvar_flatten45_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13685_0_0_ce0_local = 1'b1;
    end else begin
        v13685_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13685_0_1_ce0_local = 1'b1;
    end else begin
        v13685_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13685_1_0_ce0_local = 1'b1;
    end else begin
        v13685_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13685_1_1_ce0_local = 1'b1;
    end else begin
        v13685_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8415_1_ce0_local = 1'b1;
    end else begin
        v8415_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8415_1_we0_local = 1'b1;
    end else begin
        v8415_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8415_2_ce0_local = 1'b1;
    end else begin
        v8415_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8415_2_we0_local = 1'b1;
    end else begin
        v8415_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8415_3_ce0_local = 1'b1;
    end else begin
        v8415_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8415_3_we0_local = 1'b1;
    end else begin
        v8415_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8415_ce0_local = 1'b1;
    end else begin
        v8415_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8415_we0_local = 1'b1;
    end else begin
        v8415_we0_local = 1'b0;
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
assign add_ln10361_1_fu_307_p2 = (ap_sig_allocacmp_indvar_flatten45_load + 8'd1);
assign add_ln10361_fu_330_p2 = (v828146_fu_118 + 6'd2);
assign add_ln10364_fu_436_p2 = (mul_i8 + zext_ln10362_fu_408_p1);
assign add_ln10365_1_fu_474_p2 = (sub_ln10365_fu_468_p2 + zext_ln10395_1_cast_reg_778);
assign add_ln10365_2_fu_634_p2 = (sub_ln10365_1_fu_628_p2 + zext_ln10395_cast_reg_770);
assign add_ln10365_fu_441_p2 = (zext_ln10362_1_fu_422_p1 + shl_ln);
assign add_ln10367_1_fu_686_p2 = (sub_ln10367_1_fu_680_p2 + zext_ln10395_cast_reg_770);
assign add_ln10367_fu_550_p2 = (sub_ln10367_fu_544_p2 + zext_ln10395_1_cast_reg_778);
assign add_ln10369_1_fu_660_p2 = (sub_ln10369_1_fu_654_p2 + zext_ln10395_cast_reg_770);
assign add_ln10369_fu_507_p2 = (sub_ln10369_fu_501_p2 + zext_ln10395_1_cast_reg_778);
assign add_ln10371_1_fu_583_p2 = (sub_ln10371_fu_577_p2 + zext_ln10395_1_cast_reg_778);
assign add_ln10371_2_fu_712_p2 = (sub_ln10371_1_fu_706_p2 + zext_ln10395_cast_reg_770);
assign add_ln10371_fu_430_p2 = (tmp_s_fu_380_p3 + zext_ln10371_fu_426_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_460_fu_393_p2 = (p_udiv32_cast + zext_ln10361_1_fu_376_p1);
assign empty_fu_388_p2 = (mul_i + zext_ln10361_fu_352_p1);
assign icmp_ln10361_fu_313_p2 = ((ap_sig_allocacmp_indvar_flatten45_load == 8'd255) ? 1'b1 : 1'b0);
assign lshr_ln78_fu_412_p4 = {{select_ln10361_fu_336_p3[5:1]}};
assign lshr_ln79_fu_512_p4 = {{add_ln10364_fu_436_p2[6:1]}};
assign lshr_ln_cast_fu_366_p4 = {{v8281_fu_344_p3[4:1]}};
assign lshr_ln_fu_356_p4 = {{v8281_fu_344_p3[5:1]}};
assign p_shl28_fu_567_p4 = {{{tmp_153_fu_398_p4}, {lshr_ln79_fu_512_p4}}, {2'd0}};
assign p_shl29_fu_673_p3 = {{add_ln10367_reg_807}, {2'd0}};
assign p_shl30_fu_534_p4 = {{{empty_460_fu_393_p2}, {lshr_ln79_fu_512_p4}}, {2'd0}};
assign p_shl31_fu_647_p3 = {{add_ln10369_reg_801}, {2'd0}};
assign p_shl32_fu_491_p4 = {{{tmp_153_fu_398_p4}, {add_ln10365_fu_441_p2}}, {2'd0}};
assign p_shl33_fu_621_p3 = {{add_ln10365_1_reg_795}, {2'd0}};
assign p_shl34_fu_458_p4 = {{{empty_460_fu_393_p2}, {add_ln10365_fu_441_p2}}, {2'd0}};
assign p_shl_fu_699_p3 = {{add_ln10371_1_reg_813}, {2'd0}};
assign select_ln10361_fu_336_p3 = ((ap_phi_mux_icmp_ln1036248_phi_fu_273_p4[0:0] == 1'b1) ? v828247_fu_122 : 6'd0);
assign sub_ln10365_1_fu_628_p2 = (p_shl33_fu_621_p3 - zext_ln10365_1_fu_618_p1);
assign sub_ln10365_fu_468_p2 = (p_shl34_fu_458_p4 - zext_ln10365_fu_454_p1);
assign sub_ln10367_1_fu_680_p2 = (p_shl29_fu_673_p3 - zext_ln10367_1_fu_670_p1);
assign sub_ln10367_fu_544_p2 = (p_shl30_fu_534_p4 - zext_ln10367_fu_530_p1);
assign sub_ln10369_1_fu_654_p2 = (p_shl31_fu_647_p3 - zext_ln10369_1_fu_644_p1);
assign sub_ln10369_fu_501_p2 = (p_shl32_fu_491_p4 - zext_ln10369_fu_487_p1);
assign sub_ln10371_1_fu_706_p2 = (p_shl_fu_699_p3 - zext_ln10371_3_fu_696_p1);
assign sub_ln10371_fu_577_p2 = (p_shl28_fu_567_p4 - zext_ln10371_2_fu_563_p1);
assign tmp_153_fu_398_p4 = {{empty_fu_388_p2[7:1]}};
assign tmp_154_fu_446_p3 = {{empty_460_fu_393_p2}, {add_ln10365_fu_441_p2}};
assign tmp_155_fu_479_p3 = {{tmp_153_fu_398_p4}, {add_ln10365_fu_441_p2}};
assign tmp_156_fu_522_p3 = {{empty_460_fu_393_p2}, {lshr_ln79_fu_512_p4}};
assign tmp_157_fu_555_p3 = {{tmp_153_fu_398_p4}, {lshr_ln79_fu_512_p4}};
assign tmp_fu_594_p3 = v8282_fu_588_p2[32'd5];
assign tmp_s_fu_380_p3 = {{lshr_ln_cast_fu_366_p4}, {4'd0}};
assign v13685_0_0_address0 = zext_ln10365_2_fu_639_p1;
assign v13685_0_0_ce0 = v13685_0_0_ce0_local;
assign v13685_0_1_address0 = zext_ln10367_2_fu_691_p1;
assign v13685_0_1_ce0 = v13685_0_1_ce0_local;
assign v13685_1_0_address0 = zext_ln10369_2_fu_665_p1;
assign v13685_1_0_ce0 = v13685_1_0_ce0_local;
assign v13685_1_1_address0 = zext_ln10371_4_fu_717_p1;
assign v13685_1_1_ce0 = v13685_1_1_ce0_local;
assign v8281_fu_344_p3 = ((ap_phi_mux_icmp_ln1036248_phi_fu_273_p4[0:0] == 1'b1) ? v828146_fu_118 : add_ln10361_fu_330_p2);
assign v8282_fu_588_p2 = (select_ln10361_fu_336_p3 + 6'd2);
assign v8415_1_address0 = zext_ln10371_1_fu_722_p1;
assign v8415_1_ce0 = v8415_1_ce0_local;
assign v8415_1_d0 = v13685_1_0_q0;
assign v8415_1_we0 = v8415_1_we0_local;
assign v8415_2_address0 = zext_ln10371_1_fu_722_p1;
assign v8415_2_ce0 = v8415_2_ce0_local;
assign v8415_2_d0 = v13685_0_1_q0;
assign v8415_2_we0 = v8415_2_we0_local;
assign v8415_3_address0 = zext_ln10371_1_fu_722_p1;
assign v8415_3_ce0 = v8415_3_ce0_local;
assign v8415_3_d0 = v13685_0_0_q0;
assign v8415_3_we0 = v8415_3_we0_local;
assign v8415_address0 = zext_ln10371_1_fu_722_p1;
assign v8415_ce0 = v8415_ce0_local;
assign v8415_d0 = v13685_1_1_q0;
assign v8415_we0 = v8415_we0_local;
assign xor_ln10362_fu_602_p2 = (tmp_fu_594_p3 ^ 1'd1);
assign zext_ln10361_1_fu_376_p1 = lshr_ln_fu_356_p4;
assign zext_ln10361_fu_352_p1 = v8281_fu_344_p3;
assign zext_ln10362_1_fu_422_p1 = lshr_ln78_fu_412_p4;
assign zext_ln10362_fu_408_p1 = select_ln10361_fu_336_p3;
assign zext_ln10365_1_fu_618_p1 = add_ln10365_1_reg_795;
assign zext_ln10365_2_fu_639_p1 = add_ln10365_2_fu_634_p2;
assign zext_ln10365_fu_454_p1 = tmp_154_fu_446_p3;
assign zext_ln10367_1_fu_670_p1 = add_ln10367_reg_807;
assign zext_ln10367_2_fu_691_p1 = add_ln10367_1_fu_686_p2;
assign zext_ln10367_fu_530_p1 = tmp_156_fu_522_p3;
assign zext_ln10369_1_fu_644_p1 = add_ln10369_reg_801;
assign zext_ln10369_2_fu_665_p1 = add_ln10369_1_fu_660_p2;
assign zext_ln10369_fu_487_p1 = tmp_155_fu_479_p3;
assign zext_ln10371_1_fu_722_p1 = add_ln10371_reg_790_pp0_iter2_reg;
assign zext_ln10371_2_fu_563_p1 = tmp_157_fu_555_p3;
assign zext_ln10371_3_fu_696_p1 = add_ln10371_1_reg_813;
assign zext_ln10371_4_fu_717_p1 = add_ln10371_2_fu_712_p2;
assign zext_ln10371_fu_426_p1 = lshr_ln78_fu_412_p4;
assign zext_ln10395_1_cast_fu_285_p1 = zext_ln10395_1;
assign zext_ln10395_cast_fu_281_p1 = zext_ln10395;
always @ (posedge ap_clk) begin
    zext_ln10395_cast_reg_770[16:2] <= 15'b000000000000000;
    zext_ln10395_1_cast_reg_778[14:2] <= 13'b0000000000000;
end
endmodule 