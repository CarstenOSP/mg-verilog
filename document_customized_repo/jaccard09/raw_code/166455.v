module forward_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7236_address0,v7236_ce0,v7236_we0,v7236_d0,v7236_1_address0,v7236_1_ce0,v7236_1_we0,v7236_1_d0,v7230,v13725_0_address0,v13725_0_ce0,v13725_0_q0,v13725_1_address0,v13725_1_ce0,v13725_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] v7236_address0;
output   v7236_ce0;
output   v7236_we0;
output  [7:0] v7236_d0;
output  [10:0] v7236_1_address0;
output   v7236_1_ce0;
output   v7236_1_we0;
output  [7:0] v7236_1_d0;
input  [4:0] v7230;
output  [15:0] v13725_0_address0;
output   v13725_0_ce0;
input  [7:0] v13725_0_q0;
output  [15:0] v13725_1_address0;
output   v13725_1_ce0;
input  [7:0] v13725_1_q0;
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
wire   [0:0] icmp_ln9080_fu_446_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] mul_i37_i_i_fu_232_p3;
reg   [7:0] mul_i37_i_i_reg_696;
wire   [5:0] mul9_i66_cast_i_cast_i_cast_fu_248_p3;
reg   [5:0] mul9_i66_cast_i_cast_i_cast_reg_701;
wire   [2:0] p_udiv2_i_cast_cast_i_cast_cast_fu_268_p3;
reg   [2:0] p_udiv2_i_cast_cast_i_cast_cast_reg_706;
reg   [2:0] p_udiv2_i_cast_cast_i_cast_cast_reg_706_pp0_iter1_reg;
wire   [5:0] select_ln9080_1_fu_342_p3;
reg   [5:0] select_ln9080_1_reg_711;
wire   [4:0] select_ln9081_fu_370_p3;
reg   [4:0] select_ln9081_reg_718;
reg   [1:0] lshr_ln_i_reg_724;
reg   [1:0] lshr_ln_i_reg_724_pp0_iter1_reg;
reg   [2:0] lshr_ln2_i_reg_730;
reg   [2:0] lshr_ln2_i_reg_730_pp0_iter1_reg;
wire   [0:0] icmp_ln9082_fu_434_p2;
reg   [0:0] icmp_ln9082_reg_735;
wire   [0:0] icmp_ln9081_fu_440_p2;
reg   [0:0] icmp_ln9081_reg_740;
reg   [0:0] icmp_ln9080_reg_745;
wire   [15:0] sub_ln9082_fu_606_p2;
reg   [15:0] sub_ln9082_reg_749;
wire   [10:0] add_ln9087_2_fu_615_p2;
reg   [10:0] add_ln9087_2_reg_755;
reg   [10:0] add_ln9087_2_reg_755_pp0_iter2_reg;
reg   [0:0] ap_phi_mux_icmp_ln908127_i_phi_fu_201_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln908226_i_phi_fu_211_p4;
wire   [63:0] zext_ln9085_5_fu_638_p1;
wire   [63:0] zext_ln9087_6_fu_651_p1;
wire   [63:0] zext_ln9087_4_fu_656_p1;
reg   [10:0] indvar_flatten1221_i_fu_118;
wire   [10:0] add_ln9080_1_fu_428_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten1221_i_load;
reg   [5:0] v720822_i_fu_122;
reg   [5:0] ap_sig_allocacmp_v720822_i_load;
reg   [6:0] indvar_flatten23_i_fu_126;
wire   [6:0] select_ln9081_1_fu_420_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten23_i_load;
reg   [4:0] v720924_i_fu_130;
reg   [4:0] ap_sig_allocacmp_v720924_i_load;
reg   [2:0] v721025_i_fu_134;
wire   [2:0] add_ln9082_fu_408_p2;
reg   [2:0] ap_sig_allocacmp_v721025_i_load;
reg    v13725_0_ce0_local;
reg    v13725_1_ce0_local;
reg    v7236_1_we0_local;
reg    v7236_1_ce0_local;
reg    v7236_we0_local;
reg    v7236_ce0_local;
wire   [2:0] tmp_i_fu_222_p4;
wire   [7:0] v7230_cast2_fu_218_p1;
wire   [0:0] tmp_fu_240_p3;
wire   [0:0] empty_fu_256_p1;
wire   [0:0] xor_ln9080_fu_330_p2;
wire   [5:0] add_ln9080_fu_316_p2;
wire   [4:0] select_ln9080_fu_322_p3;
wire   [0:0] and_ln9080_fu_336_p2;
wire   [0:0] empty_135_fu_356_p2;
wire   [4:0] add_ln9081_fu_350_p2;
wire   [2:0] v7210_mid2_i_fu_362_p3;
wire   [3:0] zext_ln9080_cast_cast_i_cast_cast_fu_260_p3;
wire   [3:0] zext_ln9082_fu_378_p1;
wire   [3:0] add_ln9084_fu_392_p2;
wire   [6:0] add_ln9081_1_fu_414_p2;
wire   [9:0] tmp_9_fu_480_p3;
wire   [7:0] tmp_10_fu_491_p3;
wire   [10:0] zext_ln9087_fu_487_p1;
wire   [10:0] zext_ln9087_1_fu_498_p1;
wire   [7:0] zext_ln9080_fu_477_p1;
wire   [7:0] empty_136_fu_508_p2;
wire   [12:0] tmp_11_fu_513_p3;
wire   [10:0] tmp_12_fu_525_p3;
wire   [13:0] zext_ln9085_fu_521_p1;
wire   [13:0] zext_ln9085_1_fu_533_p1;
wire   [10:0] add_ln9087_fu_502_p2;
wire   [10:0] zext_ln9087_2_fu_543_p1;
wire   [10:0] add_ln9087_1_fu_546_p2;
wire   [10:0] shl_ln9087_fu_552_p2;
wire   [5:0] zext_ln9081_fu_564_p1;
wire   [5:0] empty_137_fu_567_p2;
wire   [13:0] add_ln9085_fu_537_p2;
wire   [13:0] zext_ln9085_2_fu_572_p1;
wire   [13:0] add_ln9085_1_fu_576_p2;
wire   [12:0] trunc_ln9085_fu_582_p1;
wire   [14:0] tmp_13_fu_586_p3;
wire   [15:0] tmp_14_fu_594_p3;
wire   [15:0] zext_ln9085_3_fu_602_p1;
wire   [10:0] sub_ln9081_fu_558_p2;
wire   [10:0] zext_ln9087_3_fu_612_p1;
wire   [2:0] zext_ln9082_1_fu_621_p1;
wire   [2:0] add_ln9085_2_fu_624_p2;
wire   [15:0] zext_ln9085_4_fu_629_p1;
wire   [15:0] add_ln9085_3_fu_633_p2;
wire   [15:0] zext_ln9087_5_fu_643_p1;
wire   [15:0] add_ln9087_3_fu_646_p2;
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
reg    ap_condition_495;
reg    ap_condition_119;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1221_i_fu_118 = 11'd0;
#0 v720822_i_fu_122 = 6'd0;
#0 indvar_flatten23_i_fu_126 = 7'd0;
#0 v720924_i_fu_130 = 5'd0;
#0 v721025_i_fu_134 = 3'd0;
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
    if ((1'b1 == ap_condition_119)) begin
        indvar_flatten1221_i_fu_118 <= add_ln9080_1_fu_428_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_119)) begin
    indvar_flatten23_i_fu_126 <= select_ln9081_1_fu_420_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_119)) begin
    v720822_i_fu_122 <= select_ln9080_1_fu_342_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_119)) begin
    v720924_i_fu_130 <= select_ln9081_fu_370_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_119)) begin
    v721025_i_fu_134 <= add_ln9082_fu_408_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln9087_2_reg_755 <= add_ln9087_2_fu_615_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln9080_reg_745 <= icmp_ln9080_fu_446_p2;
        lshr_ln2_i_reg_730 <= {{add_ln9084_fu_392_p2[3:1]}};
        lshr_ln2_i_reg_730_pp0_iter1_reg <= lshr_ln2_i_reg_730;
        lshr_ln_i_reg_724 <= {{v7210_mid2_i_fu_362_p3[2:1]}};
        lshr_ln_i_reg_724_pp0_iter1_reg <= lshr_ln_i_reg_724;
        mul9_i66_cast_i_cast_i_cast_reg_701[2] <= mul9_i66_cast_i_cast_i_cast_fu_248_p3[2];
mul9_i66_cast_i_cast_i_cast_reg_701[4] <= mul9_i66_cast_i_cast_i_cast_fu_248_p3[4];
        mul_i37_i_i_reg_696[7 : 5] <= mul_i37_i_i_fu_232_p3[7 : 5];
        p_udiv2_i_cast_cast_i_cast_cast_reg_706[1 : 0] <= p_udiv2_i_cast_cast_i_cast_cast_fu_268_p3[1 : 0];
        p_udiv2_i_cast_cast_i_cast_cast_reg_706_pp0_iter1_reg[1 : 0] <= p_udiv2_i_cast_cast_i_cast_cast_reg_706[1 : 0];
        select_ln9080_1_reg_711 <= select_ln9080_1_fu_342_p3;
        select_ln9081_reg_718 <= select_ln9081_fu_370_p3;
        sub_ln9082_reg_749[15 : 1] <= sub_ln9082_fu_606_p2[15 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln9087_2_reg_755_pp0_iter2_reg <= add_ln9087_2_reg_755;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9081_reg_740 <= icmp_ln9081_fu_440_p2;
        icmp_ln9082_reg_735 <= icmp_ln9082_fu_434_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9080_fu_446_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_495)) begin
            ap_phi_mux_icmp_ln908127_i_phi_fu_201_p4 = icmp_ln9081_reg_740;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln908127_i_phi_fu_201_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln908127_i_phi_fu_201_p4 = icmp_ln9081_reg_740;
        end
    end else begin
        ap_phi_mux_icmp_ln908127_i_phi_fu_201_p4 = icmp_ln9081_reg_740;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_495)) begin
            ap_phi_mux_icmp_ln908226_i_phi_fu_211_p4 = icmp_ln9082_reg_735;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln908226_i_phi_fu_211_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln908226_i_phi_fu_211_p4 = icmp_ln9082_reg_735;
        end
    end else begin
        ap_phi_mux_icmp_ln908226_i_phi_fu_211_p4 = icmp_ln9082_reg_735;
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
        ap_sig_allocacmp_indvar_flatten1221_i_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_i_load = indvar_flatten1221_i_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten23_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten23_i_load = indvar_flatten23_i_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v720822_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v720822_i_load = v720822_i_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v720924_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v720924_i_load = v720924_i_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v721025_i_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v721025_i_load = v721025_i_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13725_0_ce0_local = 1'b1;
    end else begin
        v13725_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13725_1_ce0_local = 1'b1;
    end else begin
        v13725_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7236_1_ce0_local = 1'b1;
    end else begin
        v7236_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7236_1_we0_local = 1'b1;
    end else begin
        v7236_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7236_ce0_local = 1'b1;
    end else begin
        v7236_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7236_we0_local = 1'b1;
    end else begin
        v7236_we0_local = 1'b0;
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
assign add_ln9080_1_fu_428_p2 = (ap_sig_allocacmp_indvar_flatten1221_i_load + 11'd1);
assign add_ln9080_fu_316_p2 = (ap_sig_allocacmp_v720822_i_load + 6'd1);
assign add_ln9081_1_fu_414_p2 = (ap_sig_allocacmp_indvar_flatten23_i_load + 7'd1);
assign add_ln9081_fu_350_p2 = (select_ln9080_fu_322_p3 + 5'd1);
assign add_ln9082_fu_408_p2 = (v7210_mid2_i_fu_362_p3 + 3'd2);
assign add_ln9084_fu_392_p2 = (zext_ln9080_cast_cast_i_cast_cast_fu_260_p3 + zext_ln9082_fu_378_p1);
assign add_ln9085_1_fu_576_p2 = (add_ln9085_fu_537_p2 + zext_ln9085_2_fu_572_p1);
assign add_ln9085_2_fu_624_p2 = (zext_ln9082_1_fu_621_p1 + p_udiv2_i_cast_cast_i_cast_cast_reg_706_pp0_iter1_reg);
assign add_ln9085_3_fu_633_p2 = (sub_ln9082_reg_749 + zext_ln9085_4_fu_629_p1);
assign add_ln9085_fu_537_p2 = (zext_ln9085_fu_521_p1 + zext_ln9085_1_fu_533_p1);
assign add_ln9087_1_fu_546_p2 = (add_ln9087_fu_502_p2 + zext_ln9087_2_fu_543_p1);
assign add_ln9087_2_fu_615_p2 = (sub_ln9081_fu_558_p2 + zext_ln9087_3_fu_612_p1);
assign add_ln9087_3_fu_646_p2 = (sub_ln9082_reg_749 + zext_ln9087_5_fu_643_p1);
assign add_ln9087_fu_502_p2 = (zext_ln9087_fu_487_p1 + zext_ln9087_1_fu_498_p1);
assign and_ln9080_fu_336_p2 = (xor_ln9080_fu_330_p2 & ap_phi_mux_icmp_ln908226_i_phi_fu_211_p4);
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
    ap_condition_119 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_495 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln9080_reg_745 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_135_fu_356_p2 = (ap_phi_mux_icmp_ln908127_i_phi_fu_201_p4 | and_ln9080_fu_336_p2);
assign empty_136_fu_508_p2 = (mul_i37_i_i_reg_696 + zext_ln9080_fu_477_p1);
assign empty_137_fu_567_p2 = (mul9_i66_cast_i_cast_i_cast_reg_701 + zext_ln9081_fu_564_p1);
assign empty_fu_256_p1 = v7230[0:0];
assign icmp_ln9080_fu_446_p2 = ((ap_sig_allocacmp_indvar_flatten1221_i_load == 11'd1919) ? 1'b1 : 1'b0);
assign icmp_ln9081_fu_440_p2 = ((select_ln9081_1_fu_420_p3 == 7'd60) ? 1'b1 : 1'b0);
assign icmp_ln9082_fu_434_p2 = ((add_ln9082_fu_408_p2 == 3'd6) ? 1'b1 : 1'b0);
assign mul9_i66_cast_i_cast_i_cast_fu_248_p3 = ((tmp_fu_240_p3[0:0] == 1'b1) ? 6'd20 : 6'd0);
assign mul_i37_i_i_fu_232_p3 = {{tmp_i_fu_222_p4}, {5'd0}};
assign p_udiv2_i_cast_cast_i_cast_cast_fu_268_p3 = ((empty_fu_256_p1[0:0] == 1'b1) ? 3'd3 : 3'd0);
assign select_ln9080_1_fu_342_p3 = ((ap_phi_mux_icmp_ln908127_i_phi_fu_201_p4[0:0] == 1'b1) ? add_ln9080_fu_316_p2 : ap_sig_allocacmp_v720822_i_load);
assign select_ln9080_fu_322_p3 = ((ap_phi_mux_icmp_ln908127_i_phi_fu_201_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v720924_i_load);
assign select_ln9081_1_fu_420_p3 = ((ap_phi_mux_icmp_ln908127_i_phi_fu_201_p4[0:0] == 1'b1) ? 7'd1 : add_ln9081_1_fu_414_p2);
assign select_ln9081_fu_370_p3 = ((and_ln9080_fu_336_p2[0:0] == 1'b1) ? add_ln9081_fu_350_p2 : select_ln9080_fu_322_p3);
assign shl_ln9087_fu_552_p2 = add_ln9087_1_fu_546_p2 << 11'd2;
assign sub_ln9081_fu_558_p2 = (shl_ln9087_fu_552_p2 - add_ln9087_1_fu_546_p2);
assign sub_ln9082_fu_606_p2 = (tmp_14_fu_594_p3 - zext_ln9085_3_fu_602_p1);
assign tmp_10_fu_491_p3 = {{select_ln9080_1_reg_711}, {2'd0}};
assign tmp_11_fu_513_p3 = {{empty_136_fu_508_p2}, {5'd0}};
assign tmp_12_fu_525_p3 = {{empty_136_fu_508_p2}, {3'd0}};
assign tmp_13_fu_586_p3 = {{add_ln9085_1_fu_576_p2}, {1'd0}};
assign tmp_14_fu_594_p3 = {{trunc_ln9085_fu_582_p1}, {3'd0}};
assign tmp_9_fu_480_p3 = {{select_ln9080_1_reg_711}, {4'd0}};
assign tmp_fu_240_p3 = v7230_cast2_fu_218_p1[32'd1];
assign tmp_i_fu_222_p4 = {{v7230[4:2]}};
assign trunc_ln9085_fu_582_p1 = add_ln9085_1_fu_576_p2[12:0];
assign v13725_0_address0 = zext_ln9085_5_fu_638_p1;
assign v13725_0_ce0 = v13725_0_ce0_local;
assign v13725_1_address0 = zext_ln9087_6_fu_651_p1;
assign v13725_1_ce0 = v13725_1_ce0_local;
assign v7210_mid2_i_fu_362_p3 = ((empty_135_fu_356_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v721025_i_load);
assign v7230_cast2_fu_218_p1 = v7230;
assign v7236_1_address0 = zext_ln9087_4_fu_656_p1;
assign v7236_1_ce0 = v7236_1_ce0_local;
assign v7236_1_d0 = v13725_0_q0;
assign v7236_1_we0 = v7236_1_we0_local;
assign v7236_address0 = zext_ln9087_4_fu_656_p1;
assign v7236_ce0 = v7236_ce0_local;
assign v7236_d0 = v13725_1_q0;
assign v7236_we0 = v7236_we0_local;
assign xor_ln9080_fu_330_p2 = (ap_phi_mux_icmp_ln908127_i_phi_fu_201_p4 ^ 1'd1);
assign zext_ln9080_cast_cast_i_cast_cast_fu_260_p3 = ((empty_fu_256_p1[0:0] == 1'b1) ? 4'd6 : 4'd0);
assign zext_ln9080_fu_477_p1 = select_ln9080_1_reg_711;
assign zext_ln9081_fu_564_p1 = select_ln9081_reg_718;
assign zext_ln9082_1_fu_621_p1 = lshr_ln_i_reg_724_pp0_iter1_reg;
assign zext_ln9082_fu_378_p1 = v7210_mid2_i_fu_362_p3;
assign zext_ln9085_1_fu_533_p1 = tmp_12_fu_525_p3;
assign zext_ln9085_2_fu_572_p1 = empty_137_fu_567_p2;
assign zext_ln9085_3_fu_602_p1 = tmp_13_fu_586_p3;
assign zext_ln9085_4_fu_629_p1 = add_ln9085_2_fu_624_p2;
assign zext_ln9085_5_fu_638_p1 = add_ln9085_3_fu_633_p2;
assign zext_ln9085_fu_521_p1 = tmp_11_fu_513_p3;
assign zext_ln9087_1_fu_498_p1 = tmp_10_fu_491_p3;
assign zext_ln9087_2_fu_543_p1 = select_ln9081_reg_718;
assign zext_ln9087_3_fu_612_p1 = lshr_ln_i_reg_724;
assign zext_ln9087_4_fu_656_p1 = add_ln9087_2_reg_755_pp0_iter2_reg;
assign zext_ln9087_5_fu_643_p1 = lshr_ln2_i_reg_730_pp0_iter1_reg;
assign zext_ln9087_6_fu_651_p1 = add_ln9087_3_fu_646_p2;
assign zext_ln9087_fu_487_p1 = tmp_9_fu_480_p3;
always @ (posedge ap_clk) begin
    mul_i37_i_i_reg_696[4:0] <= 5'b00000;
    mul9_i66_cast_i_cast_i_cast_reg_701[1:0] <= 2'b00;
    mul9_i66_cast_i_cast_i_cast_reg_701[3:3] <= 1'b0;
    mul9_i66_cast_i_cast_i_cast_reg_701[5] <= 1'b0;
    p_udiv2_i_cast_cast_i_cast_cast_reg_706[2] <= 1'b0;
    p_udiv2_i_cast_cast_i_cast_cast_reg_706_pp0_iter1_reg[2] <= 1'b0;
    sub_ln9082_reg_749[0] <= 1'b0;
end
endmodule 