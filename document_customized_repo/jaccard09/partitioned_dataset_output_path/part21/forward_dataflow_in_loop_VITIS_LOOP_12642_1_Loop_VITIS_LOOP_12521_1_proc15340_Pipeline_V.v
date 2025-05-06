
module forward_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v9197_0_address0,v9197_0_ce0,v9197_0_we0,v9197_0_d0,v9197_1_address0,v9197_1_ce0,v9197_1_we0,v9197_1_d0,mul_i29_i,mul9_i57_i,v8019_1_i_address0,v8019_1_i_ce0,v8019_1_i_q0,v8019_i_address0,v8019_i_ce0,v8019_i_q0,mul13_i_i,trunc_ln);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [18:0] v9197_0_address0;
output   v9197_0_ce0;
output   v9197_0_we0;
output  [7:0] v9197_0_d0;
output  [18:0] v9197_1_address0;
output   v9197_1_ce0;
output   v9197_1_we0;
output  [7:0] v9197_1_d0;
input  [5:0] mul_i29_i;
input  [6:0] mul9_i57_i;
output  [13:0] v8019_1_i_address0;
output   v8019_1_i_ce0;
input  [7:0] v8019_1_i_q0;
output  [13:0] v8019_i_address0;
output   v8019_i_ce0;
input  [7:0] v8019_i_q0;
input  [6:0] mul13_i_i;
input  [5:0] trunc_ln;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln12521_fu_270_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1252239_reg_214;
reg   [0:0] icmp_ln1252338_reg_225;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln12521_reg_674;
reg   [0:0] icmp_ln12521_reg_674_pp0_iter1_reg;
wire   [4:0] v7960_fu_343_p3;
reg   [4:0] v7960_reg_678;
wire   [5:0] empty_fu_377_p2;
reg   [5:0] empty_reg_683;
wire   [10:0] add_ln12525_fu_386_p2;
reg   [10:0] add_ln12525_reg_689;
wire   [9:0] trunc_ln12525_fu_392_p1;
reg   [9:0] trunc_ln12525_reg_694;
reg   [3:0] lshr_ln_reg_699;
reg   [3:0] lshr_ln_reg_699_pp0_iter2_reg;
reg   [5:0] lshr_ln99_reg_705;
reg   [5:0] lshr_ln99_reg_705_pp0_iter2_reg;
wire   [0:0] icmp_ln12523_fu_445_p2;
reg   [0:0] icmp_ln12523_reg_710;
wire   [0:0] icmp_ln12522_fu_451_p2;
reg   [0:0] icmp_ln12522_reg_715;
wire   [12:0] add_ln12528_fu_537_p2;
reg   [12:0] add_ln12528_reg_720;
reg   [0:0] ap_phi_mux_icmp_ln1252239_phi_fu_218_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1252338_phi_fu_229_p4;
wire   [63:0] zext_ln12525_4_fu_552_p1;
wire   [63:0] zext_ln12526_1_fu_600_p1;
wire   [63:0] zext_ln12528_4_fu_614_p1;
reg   [13:0] indvar_flatten1233_fu_116;
wire   [13:0] add_ln12521_1_fu_264_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v795934_fu_120;
wire   [5:0] v7959_fu_321_p3;
reg   [8:0] indvar_flatten35_fu_124;
wire   [8:0] select_ln12522_1_fu_437_p3;
reg   [4:0] v796036_fu_128;
reg   [4:0] v796137_fu_132;
wire   [4:0] v7961_fu_425_p2;
reg    v8019_1_i_ce0_local;
reg    v8019_i_ce0_local;
reg    v9197_0_we0_local;
reg    v9197_0_ce0_local;
reg    v9197_1_we0_local;
reg    v9197_1_ce0_local;
wire   [5:0] add_ln12521_fu_293_p2;
wire   [4:0] select_ln12521_fu_299_p3;
wire   [0:0] or_ln12521_fu_315_p2;
wire   [4:0] select_ln12521_1_fu_307_p3;
wire   [4:0] add_ln12522_fu_329_p2;
wire   [7:0] tmp_fu_359_p3;
wire   [10:0] p_shl28_fu_351_p3;
wire   [10:0] zext_ln12525_fu_367_p1;
wire   [10:0] sub_ln12525_fu_371_p2;
wire   [10:0] zext_ln12525_1_fu_382_p1;
wire   [4:0] v7961_mid2_fu_335_p3;
wire   [6:0] zext_ln12523_fu_396_p1;
wire   [6:0] add_ln12526_fu_410_p2;
wire   [8:0] add_ln12522_1_fu_431_p2;
wire   [9:0] tmp_375_fu_484_p3;
wire   [12:0] p_shl26_fu_477_p3;
wire   [12:0] zext_ln12528_fu_491_p1;
wire   [11:0] tmp_376_fu_501_p3;
wire   [13:0] tmp_377_fu_508_p3;
wire   [13:0] zext_ln12525_2_fu_515_p1;
wire   [6:0] zext_ln12522_fu_525_p1;
wire   [6:0] empty_376_fu_528_p2;
wire   [12:0] sub_ln12528_fu_495_p2;
wire   [12:0] zext_ln12528_1_fu_533_p1;
wire   [13:0] sub_ln12522_fu_519_p2;
wire   [13:0] zext_ln12525_3_fu_543_p1;
wire   [13:0] add_ln12525_1_fu_546_p2;
wire   [15:0] tmp_378_fu_565_p3;
wire   [18:0] p_shl_fu_558_p3;
wire   [18:0] zext_ln12528_2_fu_572_p1;
wire   [5:0] zext_ln12523_1_fu_582_p1;
wire   [5:0] add_ln12526_1_fu_585_p2;
wire   [18:0] sub_ln12528_1_fu_576_p2;
wire   [18:0] zext_ln12526_fu_590_p1;
wire   [18:0] add_ln12526_2_fu_594_p2;
wire   [18:0] zext_ln12528_3_fu_605_p1;
wire   [18:0] add_ln12528_1_fu_608_p2;
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
#0 indvar_flatten1233_fu_116 = 14'd0;
#0 v795934_fu_120 = 6'd0;
#0 indvar_flatten35_fu_124 = 9'd0;
#0 v796036_fu_128 = 5'd0;
#0 v796137_fu_132 = 5'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12521_reg_674_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1252239_reg_214 <= icmp_ln12522_reg_715;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1252239_reg_214 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12521_reg_674_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1252338_reg_225 <= icmp_ln12523_reg_710;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1252338_reg_225 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1233_fu_116 <= add_ln12521_1_fu_264_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1233_fu_116 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_124 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten35_fu_124 <= select_ln12522_1_fu_437_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v795934_fu_120 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v795934_fu_120 <= v7959_fu_321_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v796036_fu_128 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v796036_fu_128 <= v7960_fu_343_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v796137_fu_132 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v796137_fu_132 <= v7961_fu_425_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12525_reg_689 <= add_ln12525_fu_386_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_683 <= empty_fu_377_p2;
        icmp_ln12521_reg_674 <= icmp_ln12521_fu_270_p2;
        icmp_ln12521_reg_674_pp0_iter1_reg <= icmp_ln12521_reg_674;
        lshr_ln99_reg_705 <= {{add_ln12526_fu_410_p2[6:1]}};
        lshr_ln_reg_699 <= {{v7961_mid2_fu_335_p3[4:1]}};
        trunc_ln12525_reg_694 <= trunc_ln12525_fu_392_p1;
        v7960_reg_678 <= v7960_fu_343_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln12528_reg_720 <= add_ln12528_fu_537_p2;
        lshr_ln99_reg_705_pp0_iter2_reg <= lshr_ln99_reg_705;
        lshr_ln_reg_699_pp0_iter2_reg <= lshr_ln_reg_699;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12522_reg_715 <= icmp_ln12522_fu_451_p2;
        icmp_ln12523_reg_710 <= icmp_ln12523_fu_445_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12521_fu_270_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12521_reg_674_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1252239_phi_fu_218_p4 = icmp_ln12522_reg_715;
    end else begin
        ap_phi_mux_icmp_ln1252239_phi_fu_218_p4 = icmp_ln1252239_reg_214;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12521_reg_674_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1252338_phi_fu_229_p4 = icmp_ln12523_reg_710;
    end else begin
        ap_phi_mux_icmp_ln1252338_phi_fu_229_p4 = icmp_ln1252338_reg_225;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8019_1_i_ce0_local = 1'b1;
    end else begin
        v8019_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8019_i_ce0_local = 1'b1;
    end else begin
        v8019_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9197_0_ce0_local = 1'b1;
    end else begin
        v9197_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9197_0_we0_local = 1'b1;
    end else begin
        v9197_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9197_1_ce0_local = 1'b1;
    end else begin
        v9197_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9197_1_we0_local = 1'b1;
    end else begin
        v9197_1_we0_local = 1'b0;
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
assign add_ln12521_1_fu_264_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 14'd1);
assign add_ln12521_fu_293_p2 = (v795934_fu_120 + 6'd1);
assign add_ln12522_1_fu_431_p2 = (indvar_flatten35_fu_124 + 9'd1);
assign add_ln12522_fu_329_p2 = (select_ln12521_fu_299_p3 + 5'd1);
assign add_ln12525_1_fu_546_p2 = (sub_ln12522_fu_519_p2 + zext_ln12525_3_fu_543_p1);
assign add_ln12525_fu_386_p2 = (sub_ln12525_fu_371_p2 + zext_ln12525_1_fu_382_p1);
assign add_ln12526_1_fu_585_p2 = (trunc_ln + zext_ln12523_1_fu_582_p1);
assign add_ln12526_2_fu_594_p2 = (sub_ln12528_1_fu_576_p2 + zext_ln12526_fu_590_p1);
assign add_ln12526_fu_410_p2 = (mul13_i_i + zext_ln12523_fu_396_p1);
assign add_ln12528_1_fu_608_p2 = (sub_ln12528_1_fu_576_p2 + zext_ln12528_3_fu_605_p1);
assign add_ln12528_fu_537_p2 = (sub_ln12528_fu_495_p2 + zext_ln12528_1_fu_533_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_376_fu_528_p2 = (mul9_i57_i + zext_ln12522_fu_525_p1);
assign empty_fu_377_p2 = (v7959_fu_321_p3 + mul_i29_i);
assign icmp_ln12521_fu_270_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln12522_fu_451_p2 = ((select_ln12522_1_fu_437_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln12523_fu_445_p2 = ((v7961_fu_425_p2 < 5'd28) ? 1'b1 : 1'b0);
assign or_ln12521_fu_315_p2 = (ap_phi_mux_icmp_ln1252338_phi_fu_229_p4 | ap_phi_mux_icmp_ln1252239_phi_fu_218_p4);
assign p_shl26_fu_477_p3 = {{empty_reg_683}, {7'd0}};
assign p_shl28_fu_351_p3 = {{v7959_fu_321_p3}, {5'd0}};
assign p_shl_fu_558_p3 = {{add_ln12528_reg_720}, {6'd0}};
assign select_ln12521_1_fu_307_p3 = ((ap_phi_mux_icmp_ln1252239_phi_fu_218_p4[0:0] == 1'b1) ? 5'd0 : v796137_fu_132);
assign select_ln12521_fu_299_p3 = ((ap_phi_mux_icmp_ln1252239_phi_fu_218_p4[0:0] == 1'b1) ? 5'd0 : v796036_fu_128);
assign select_ln12522_1_fu_437_p3 = ((ap_phi_mux_icmp_ln1252239_phi_fu_218_p4[0:0] == 1'b1) ? 9'd1 : add_ln12522_1_fu_431_p2);
assign sub_ln12522_fu_519_p2 = (tmp_377_fu_508_p3 - zext_ln12525_2_fu_515_p1);
assign sub_ln12525_fu_371_p2 = (p_shl28_fu_351_p3 - zext_ln12525_fu_367_p1);
assign sub_ln12528_1_fu_576_p2 = (p_shl_fu_558_p3 - zext_ln12528_2_fu_572_p1);
assign sub_ln12528_fu_495_p2 = (p_shl26_fu_477_p3 - zext_ln12528_fu_491_p1);
assign tmp_375_fu_484_p3 = {{empty_reg_683}, {4'd0}};
assign tmp_376_fu_501_p3 = {{add_ln12525_reg_689}, {1'd0}};
assign tmp_377_fu_508_p3 = {{trunc_ln12525_reg_694}, {4'd0}};
assign tmp_378_fu_565_p3 = {{add_ln12528_reg_720}, {3'd0}};
assign tmp_fu_359_p3 = {{v7959_fu_321_p3}, {2'd0}};
assign trunc_ln12525_fu_392_p1 = add_ln12525_fu_386_p2[9:0];
assign v7959_fu_321_p3 = ((ap_phi_mux_icmp_ln1252239_phi_fu_218_p4[0:0] == 1'b1) ? add_ln12521_fu_293_p2 : v795934_fu_120);
assign v7960_fu_343_p3 = ((or_ln12521_fu_315_p2[0:0] == 1'b1) ? select_ln12521_fu_299_p3 : add_ln12522_fu_329_p2);
assign v7961_fu_425_p2 = (v7961_mid2_fu_335_p3 + 5'd2);
assign v7961_mid2_fu_335_p3 = ((or_ln12521_fu_315_p2[0:0] == 1'b1) ? select_ln12521_1_fu_307_p3 : 5'd0);
assign v8019_1_i_address0 = zext_ln12525_4_fu_552_p1;
assign v8019_1_i_ce0 = v8019_1_i_ce0_local;
assign v8019_i_address0 = zext_ln12525_4_fu_552_p1;
assign v8019_i_ce0 = v8019_i_ce0_local;
assign v9197_0_address0 = zext_ln12526_1_fu_600_p1;
assign v9197_0_ce0 = v9197_0_ce0_local;
assign v9197_0_d0 = v8019_1_i_q0;
assign v9197_0_we0 = v9197_0_we0_local;
assign v9197_1_address0 = zext_ln12528_4_fu_614_p1;
assign v9197_1_ce0 = v9197_1_ce0_local;
assign v9197_1_d0 = v8019_i_q0;
assign v9197_1_we0 = v9197_1_we0_local;
assign zext_ln12522_fu_525_p1 = v7960_reg_678;
assign zext_ln12523_1_fu_582_p1 = lshr_ln_reg_699_pp0_iter2_reg;
assign zext_ln12523_fu_396_p1 = v7961_mid2_fu_335_p3;
assign zext_ln12525_1_fu_382_p1 = v7960_fu_343_p3;
assign zext_ln12525_2_fu_515_p1 = tmp_376_fu_501_p3;
assign zext_ln12525_3_fu_543_p1 = lshr_ln_reg_699;
assign zext_ln12525_4_fu_552_p1 = add_ln12525_1_fu_546_p2;
assign zext_ln12525_fu_367_p1 = tmp_fu_359_p3;
assign zext_ln12526_1_fu_600_p1 = add_ln12526_2_fu_594_p2;
assign zext_ln12526_fu_590_p1 = add_ln12526_1_fu_585_p2;
assign zext_ln12528_1_fu_533_p1 = empty_376_fu_528_p2;
assign zext_ln12528_2_fu_572_p1 = tmp_378_fu_565_p3;
assign zext_ln12528_3_fu_605_p1 = lshr_ln99_reg_705_pp0_iter2_reg;
assign zext_ln12528_4_fu_614_p1 = add_ln12528_1_fu_608_p2;
assign zext_ln12528_fu_491_p1 = tmp_375_fu_484_p3;
endmodule 
