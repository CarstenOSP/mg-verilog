
module forward_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v11564_address0,v11564_ce0,v11564_q0,v15461_address0,v15461_ce0,v15461_we0,v15461_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [4:0] p_read;
output  [10:0] v11564_address0;
output   v11564_ce0;
input  [7:0] v11564_q0;
output  [15:0] v15461_address0;
output   v15461_ce0;
output   v15461_we0;
output  [7:0] v15461_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln14401_fu_385_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] mul_i_fu_177_p3;
reg   [7:0] mul_i_reg_580;
wire   [3:0] select_ln14460_cast_cast_fu_197_p3;
reg   [3:0] select_ln14460_cast_cast_reg_585;
wire   [3:0] zext_ln14460_4_cast_cast_cast_cast_fu_205_p3;
reg   [3:0] zext_ln14460_4_cast_cast_cast_cast_reg_590;
reg   [3:0] zext_ln14460_4_cast_cast_cast_cast_reg_590_pp0_iter1_reg;
wire   [5:0] v11498_fu_279_p3;
reg   [5:0] v11498_reg_595;
wire   [2:0] v11500_mid2_fu_299_p3;
reg   [2:0] v11500_mid2_reg_600;
reg   [2:0] v11500_mid2_reg_600_pp0_iter1_reg;
wire   [2:0] v11499_fu_307_p3;
reg   [2:0] v11499_reg_606;
wire   [8:0] add_ln14405_fu_337_p2;
reg   [8:0] add_ln14405_reg_611;
wire   [7:0] trunc_ln14405_fu_343_p1;
reg   [7:0] trunc_ln14405_reg_616;
wire   [0:0] icmp_ln14403_fu_373_p2;
reg   [0:0] icmp_ln14403_reg_621;
wire   [0:0] icmp_ln14402_fu_379_p2;
reg   [0:0] icmp_ln14402_reg_626;
reg   [0:0] icmp_ln14401_reg_631;
wire   [11:0] add_ln14406_1_fu_478_p2;
reg   [11:0] add_ln14406_1_reg_635;
reg   [0:0] ap_phi_mux_icmp_ln1440215_phi_fu_150_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1440314_phi_fu_160_p4;
wire   [63:0] zext_ln14405_4_fu_493_p1;
wire   [63:0] zext_ln14406_4_fu_540_p1;
reg   [10:0] indvar_flatten129_fu_94;
wire   [10:0] add_ln14401_1_fu_367_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten129_load;
reg   [5:0] v1149810_fu_98;
reg   [5:0] ap_sig_allocacmp_v1149810_load;
reg   [5:0] indvar_flatten11_fu_102;
wire   [5:0] select_ln14402_1_fu_359_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten11_load;
reg   [2:0] v1149912_fu_106;
reg   [2:0] ap_sig_allocacmp_v1149912_load;
reg   [2:0] v1150013_fu_110;
wire   [2:0] v11500_fu_347_p2;
reg   [2:0] ap_sig_allocacmp_v1150013_load;
reg    v11564_ce0_local;
reg    v15461_we0_local;
reg    v15461_ce0_local;
wire   [2:0] tmp_fu_167_p4;
wire   [0:0] tmp_384_fu_185_p3;
wire   [0:0] empty_fu_193_p1;
wire   [0:0] xor_ln14401_fu_267_p2;
wire   [5:0] add_ln14401_fu_253_p2;
wire   [2:0] select_ln14401_fu_259_p3;
wire   [0:0] and_ln14401_fu_273_p2;
wire   [0:0] empty_368_fu_293_p2;
wire   [2:0] add_ln14402_fu_287_p2;
wire   [8:0] p_shl42_fu_319_p3;
wire   [8:0] zext_ln14405_fu_315_p1;
wire   [8:0] sub_ln14405_fu_327_p2;
wire   [8:0] zext_ln14405_1_fu_333_p1;
wire   [5:0] add_ln14402_1_fu_353_p2;
wire   [7:0] zext_ln14401_fu_416_p1;
wire   [7:0] empty_369_fu_419_p2;
wire   [8:0] tmp_385_fu_432_p3;
wire   [11:0] p_shl40_fu_424_p3;
wire   [11:0] zext_ln14406_fu_440_p1;
wire   [10:0] tmp_386_fu_450_p3;
wire   [10:0] zext_ln14405_2_fu_457_p1;
wire   [3:0] zext_ln14402_fu_466_p1;
wire   [3:0] empty_370_fu_469_p2;
wire   [11:0] sub_ln14406_fu_444_p2;
wire   [11:0] zext_ln14406_1_fu_474_p1;
wire   [10:0] sub_ln14402_fu_460_p2;
wire   [10:0] zext_ln14405_3_fu_484_p1;
wire   [10:0] add_ln14405_1_fu_487_p2;
wire   [12:0] tmp_387_fu_505_p3;
wire   [15:0] p_shl_fu_498_p3;
wire   [15:0] zext_ln14406_2_fu_512_p1;
wire   [3:0] zext_ln14403_fu_522_p1;
wire   [3:0] add_ln14406_fu_525_p2;
wire   [15:0] sub_ln14406_1_fu_516_p2;
wire   [15:0] zext_ln14406_3_fu_530_p1;
wire   [15:0] add_ln14406_2_fu_534_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_409;
reg    ap_condition_103;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten129_fu_94 = 11'd0;
#0 v1149810_fu_98 = 6'd0;
#0 indvar_flatten11_fu_102 = 6'd0;
#0 v1149912_fu_106 = 3'd0;
#0 v1150013_fu_110 = 3'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_103)) begin
        indvar_flatten11_fu_102 <= select_ln14402_1_fu_359_p3;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_103)) begin
    indvar_flatten129_fu_94 <= add_ln14401_1_fu_367_p2;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_103)) begin
    v1149810_fu_98 <= v11498_fu_279_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_103)) begin
    v1149912_fu_106 <= v11499_fu_307_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_103)) begin
    v1150013_fu_110 <= v11500_fu_347_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln14405_reg_611 <= add_ln14405_fu_337_p2;
        add_ln14406_1_reg_635 <= add_ln14406_1_fu_478_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln14401_reg_631 <= icmp_ln14401_fu_385_p2;
        mul_i_reg_580[7 : 5] <= mul_i_fu_177_p3[7 : 5];
        select_ln14460_cast_cast_reg_585[2 : 0] <= select_ln14460_cast_cast_fu_197_p3[2 : 0];
        trunc_ln14405_reg_616 <= trunc_ln14405_fu_343_p1;
        v11498_reg_595 <= v11498_fu_279_p3;
        v11499_reg_606 <= v11499_fu_307_p3;
        v11500_mid2_reg_600 <= v11500_mid2_fu_299_p3;
        v11500_mid2_reg_600_pp0_iter1_reg <= v11500_mid2_reg_600;
        zext_ln14460_4_cast_cast_cast_cast_reg_590[2 : 0] <= zext_ln14460_4_cast_cast_cast_cast_fu_205_p3[2 : 0];
        zext_ln14460_4_cast_cast_cast_cast_reg_590_pp0_iter1_reg[2 : 0] <= zext_ln14460_4_cast_cast_cast_cast_reg_590[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln14402_reg_626 <= icmp_ln14402_fu_379_p2;
        icmp_ln14403_reg_621 <= icmp_ln14403_fu_373_p2;
    end
end
always @ (*) begin
    if (((icmp_ln14401_fu_385_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_409)) begin
            ap_phi_mux_icmp_ln1440215_phi_fu_150_p4 = icmp_ln14402_reg_626;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1440215_phi_fu_150_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1440215_phi_fu_150_p4 = icmp_ln14402_reg_626;
        end
    end else begin
        ap_phi_mux_icmp_ln1440215_phi_fu_150_p4 = icmp_ln14402_reg_626;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_409)) begin
            ap_phi_mux_icmp_ln1440314_phi_fu_160_p4 = icmp_ln14403_reg_621;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1440314_phi_fu_160_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1440314_phi_fu_160_p4 = icmp_ln14403_reg_621;
        end
    end else begin
        ap_phi_mux_icmp_ln1440314_phi_fu_160_p4 = icmp_ln14403_reg_621;
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
        ap_sig_allocacmp_indvar_flatten11_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten11_load = indvar_flatten11_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten129_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten129_load = indvar_flatten129_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1149810_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1149810_load = v1149810_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1149912_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v1149912_load = v1149912_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1150013_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v1150013_load = v1150013_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11564_ce0_local = 1'b1;
    end else begin
        v11564_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15461_ce0_local = 1'b1;
    end else begin
        v15461_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15461_we0_local = 1'b1;
    end else begin
        v15461_we0_local = 1'b0;
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
assign add_ln14401_1_fu_367_p2 = (ap_sig_allocacmp_indvar_flatten129_load + 11'd1);
assign add_ln14401_fu_253_p2 = (ap_sig_allocacmp_v1149810_load + 6'd1);
assign add_ln14402_1_fu_353_p2 = (ap_sig_allocacmp_indvar_flatten11_load + 6'd1);
assign add_ln14402_fu_287_p2 = (select_ln14401_fu_259_p3 + 3'd1);
assign add_ln14405_1_fu_487_p2 = (sub_ln14402_fu_460_p2 + zext_ln14405_3_fu_484_p1);
assign add_ln14405_fu_337_p2 = (sub_ln14405_fu_327_p2 + zext_ln14405_1_fu_333_p1);
assign add_ln14406_1_fu_478_p2 = (sub_ln14406_fu_444_p2 + zext_ln14406_1_fu_474_p1);
assign add_ln14406_2_fu_534_p2 = (sub_ln14406_1_fu_516_p2 + zext_ln14406_3_fu_530_p1);
assign add_ln14406_fu_525_p2 = (zext_ln14460_4_cast_cast_cast_cast_reg_590_pp0_iter1_reg + zext_ln14403_fu_522_p1);
assign and_ln14401_fu_273_p2 = (xor_ln14401_fu_267_p2 & ap_phi_mux_icmp_ln1440314_phi_fu_160_p4);
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
    ap_condition_103 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_409 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln14401_reg_631 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_368_fu_293_p2 = (ap_phi_mux_icmp_ln1440215_phi_fu_150_p4 | and_ln14401_fu_273_p2);
assign empty_369_fu_419_p2 = (mul_i_reg_580 + zext_ln14401_fu_416_p1);
assign empty_370_fu_469_p2 = (select_ln14460_cast_cast_reg_585 + zext_ln14402_fu_466_p1);
assign empty_fu_193_p1 = p_read[0:0];
assign icmp_ln14401_fu_385_p2 = ((ap_sig_allocacmp_indvar_flatten129_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln14402_fu_379_p2 = ((select_ln14402_1_fu_359_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln14403_fu_373_p2 = ((v11500_fu_347_p2 == 3'd7) ? 1'b1 : 1'b0);
assign mul_i_fu_177_p3 = {{tmp_fu_167_p4}, {5'd0}};
assign p_shl40_fu_424_p3 = {{empty_369_fu_419_p2}, {4'd0}};
assign p_shl42_fu_319_p3 = {{v11498_fu_279_p3}, {3'd0}};
assign p_shl_fu_498_p3 = {{add_ln14406_1_reg_635}, {4'd0}};
assign select_ln14401_fu_259_p3 = ((ap_phi_mux_icmp_ln1440215_phi_fu_150_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v1149912_load);
assign select_ln14402_1_fu_359_p3 = ((ap_phi_mux_icmp_ln1440215_phi_fu_150_p4[0:0] == 1'b1) ? 6'd1 : add_ln14402_1_fu_353_p2);
assign select_ln14460_cast_cast_fu_197_p3 = ((tmp_384_fu_185_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign sub_ln14402_fu_460_p2 = (tmp_386_fu_450_p3 - zext_ln14405_2_fu_457_p1);
assign sub_ln14405_fu_327_p2 = (p_shl42_fu_319_p3 - zext_ln14405_fu_315_p1);
assign sub_ln14406_1_fu_516_p2 = (p_shl_fu_498_p3 - zext_ln14406_2_fu_512_p1);
assign sub_ln14406_fu_444_p2 = (p_shl40_fu_424_p3 - zext_ln14406_fu_440_p1);
assign tmp_384_fu_185_p3 = p_read[32'd1];
assign tmp_385_fu_432_p3 = {{empty_369_fu_419_p2}, {1'd0}};
assign tmp_386_fu_450_p3 = {{trunc_ln14405_reg_616}, {3'd0}};
assign tmp_387_fu_505_p3 = {{add_ln14406_1_reg_635}, {1'd0}};
assign tmp_fu_167_p4 = {{p_read[4:2]}};
assign trunc_ln14405_fu_343_p1 = add_ln14405_fu_337_p2[7:0];
assign v11498_fu_279_p3 = ((ap_phi_mux_icmp_ln1440215_phi_fu_150_p4[0:0] == 1'b1) ? add_ln14401_fu_253_p2 : ap_sig_allocacmp_v1149810_load);
assign v11499_fu_307_p3 = ((and_ln14401_fu_273_p2[0:0] == 1'b1) ? add_ln14402_fu_287_p2 : select_ln14401_fu_259_p3);
assign v11500_fu_347_p2 = (v11500_mid2_fu_299_p3 + 3'd1);
assign v11500_mid2_fu_299_p3 = ((empty_368_fu_293_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v1150013_load);
assign v11564_address0 = zext_ln14405_4_fu_493_p1;
assign v11564_ce0 = v11564_ce0_local;
assign v15461_address0 = zext_ln14406_4_fu_540_p1;
assign v15461_ce0 = v15461_ce0_local;
assign v15461_d0 = v11564_q0;
assign v15461_we0 = v15461_we0_local;
assign xor_ln14401_fu_267_p2 = (ap_phi_mux_icmp_ln1440215_phi_fu_150_p4 ^ 1'd1);
assign zext_ln14401_fu_416_p1 = v11498_reg_595;
assign zext_ln14402_fu_466_p1 = v11499_reg_606;
assign zext_ln14403_fu_522_p1 = v11500_mid2_reg_600_pp0_iter1_reg;
assign zext_ln14405_1_fu_333_p1 = v11499_fu_307_p3;
assign zext_ln14405_2_fu_457_p1 = add_ln14405_reg_611;
assign zext_ln14405_3_fu_484_p1 = v11500_mid2_reg_600;
assign zext_ln14405_4_fu_493_p1 = add_ln14405_1_fu_487_p2;
assign zext_ln14405_fu_315_p1 = v11498_fu_279_p3;
assign zext_ln14406_1_fu_474_p1 = empty_370_fu_469_p2;
assign zext_ln14406_2_fu_512_p1 = tmp_387_fu_505_p3;
assign zext_ln14406_3_fu_530_p1 = add_ln14406_fu_525_p2;
assign zext_ln14406_4_fu_540_p1 = add_ln14406_2_fu_534_p2;
assign zext_ln14406_fu_440_p1 = tmp_385_fu_432_p3;
assign zext_ln14460_4_cast_cast_cast_cast_fu_205_p3 = ((empty_fu_193_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
always @ (posedge ap_clk) begin
    mul_i_reg_580[4:0] <= 5'b00000;
    select_ln14460_cast_cast_reg_585[3] <= 1'b0;
    zext_ln14460_4_cast_cast_cast_cast_reg_590[3] <= 1'b0;
    zext_ln14460_4_cast_cast_cast_cast_reg_590_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
