
module forward_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v11067_address0,v11067_ce0,v11067_q0,v15467_address0,v15467_ce0,v15467_we0,v15467_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [5:0] p_read;
output  [10:0] v11067_address0;
output   v11067_ce0;
input  [7:0] v11067_q0;
output  [16:0] v15467_address0;
output   v15467_ce0;
output   v15467_we0;
output  [7:0] v15467_d0;
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
wire   [0:0] icmp_ln13643_fu_391_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] zext_ln13742_cast_cast_cast_cast_fu_193_p3;
reg   [3:0] zext_ln13742_cast_cast_cast_cast_reg_576;
wire   [3:0] zext_ln13742_7_cast_cast_cast_cast_fu_205_p3;
reg   [3:0] zext_ln13742_7_cast_cast_cast_cast_reg_581;
reg   [3:0] zext_ln13742_7_cast_cast_cast_cast_reg_581_pp0_iter1_reg;
wire   [2:0] v11003_mid2_fu_299_p3;
reg   [2:0] v11003_mid2_reg_586;
reg   [2:0] v11003_mid2_reg_586_pp0_iter1_reg;
wire   [2:0] v11002_fu_307_p3;
reg   [2:0] v11002_reg_592;
wire   [8:0] empty_397_fu_333_p2;
reg   [8:0] empty_397_reg_597;
wire   [8:0] add_ln13647_fu_343_p2;
reg   [8:0] add_ln13647_reg_603;
wire   [7:0] trunc_ln13647_fu_349_p1;
reg   [7:0] trunc_ln13647_reg_608;
wire   [0:0] icmp_ln13645_fu_379_p2;
reg   [0:0] icmp_ln13645_reg_613;
wire   [0:0] icmp_ln13644_fu_385_p2;
reg   [0:0] icmp_ln13644_reg_618;
reg   [0:0] icmp_ln13643_reg_623;
wire   [12:0] add_ln13648_1_fu_474_p2;
reg   [12:0] add_ln13648_1_reg_627;
reg   [0:0] ap_phi_mux_icmp_ln1364415_phi_fu_150_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1364514_phi_fu_160_p4;
wire   [63:0] zext_ln13647_3_fu_489_p1;
wire   [63:0] zext_ln13648_4_fu_536_p1;
reg   [10:0] indvar_flatten129_fu_94;
wire   [10:0] add_ln13643_1_fu_373_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten129_load;
reg   [5:0] v1100110_fu_98;
wire   [5:0] v11001_fu_279_p3;
reg   [5:0] ap_sig_allocacmp_v1100110_load;
reg   [5:0] indvar_flatten11_fu_102;
wire   [5:0] select_ln13644_1_fu_365_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten11_load;
reg   [2:0] v1100212_fu_106;
reg   [2:0] ap_sig_allocacmp_v1100212_load;
reg   [2:0] v1100313_fu_110;
wire   [2:0] v11003_fu_353_p2;
reg   [2:0] ap_sig_allocacmp_v1100313_load;
reg    v11067_ce0_local;
reg    v15467_we0_local;
reg    v15467_ce0_local;
wire   [3:0] tmp_fu_167_p4;
wire   [0:0] tmp_419_fu_185_p3;
wire   [0:0] empty_fu_201_p1;
wire   [0:0] xor_ln13643_fu_267_p2;
wire   [5:0] add_ln13643_fu_253_p2;
wire   [2:0] select_ln13643_fu_259_p3;
wire   [0:0] and_ln13643_fu_273_p2;
wire   [0:0] empty_396_fu_293_p2;
wire   [2:0] add_ln13644_fu_287_p2;
wire   [8:0] p_shl42_fu_319_p3;
wire   [8:0] zext_ln13643_fu_315_p1;
wire   [8:0] mul_i_fu_177_p3;
wire   [8:0] sub_ln13647_fu_327_p2;
wire   [8:0] zext_ln13647_fu_339_p1;
wire   [5:0] add_ln13644_1_fu_359_p2;
wire   [9:0] tmp_420_fu_429_p3;
wire   [12:0] p_shl40_fu_422_p3;
wire   [12:0] zext_ln13648_fu_436_p1;
wire   [10:0] tmp_421_fu_446_p3;
wire   [10:0] zext_ln13647_1_fu_453_p1;
wire   [3:0] zext_ln13644_fu_462_p1;
wire   [3:0] empty_398_fu_465_p2;
wire   [12:0] sub_ln13648_fu_440_p2;
wire   [12:0] zext_ln13648_1_fu_470_p1;
wire   [10:0] sub_ln13644_fu_456_p2;
wire   [10:0] zext_ln13647_2_fu_480_p1;
wire   [10:0] add_ln13647_1_fu_483_p2;
wire   [13:0] tmp_422_fu_501_p3;
wire   [16:0] p_shl_fu_494_p3;
wire   [16:0] zext_ln13648_2_fu_508_p1;
wire   [3:0] zext_ln13645_fu_518_p1;
wire   [3:0] add_ln13648_fu_521_p2;
wire   [16:0] sub_ln13648_1_fu_512_p2;
wire   [16:0] zext_ln13648_3_fu_526_p1;
wire   [16:0] add_ln13648_2_fu_530_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_405;
reg    ap_condition_101;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten129_fu_94 = 11'd0;
#0 v1100110_fu_98 = 6'd0;
#0 indvar_flatten11_fu_102 = 6'd0;
#0 v1100212_fu_106 = 3'd0;
#0 v1100313_fu_110 = 3'd0;
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
    if ((1'b1 == ap_condition_101)) begin
        indvar_flatten11_fu_102 <= select_ln13644_1_fu_365_p3;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_101)) begin
    indvar_flatten129_fu_94 <= add_ln13643_1_fu_373_p2;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_101)) begin
    v1100110_fu_98 <= v11001_fu_279_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_101)) begin
    v1100212_fu_106 <= v11002_fu_307_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_101)) begin
    v1100313_fu_110 <= v11003_fu_353_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13647_reg_603 <= add_ln13647_fu_343_p2;
        add_ln13648_1_reg_627 <= add_ln13648_1_fu_474_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_397_reg_597 <= empty_397_fu_333_p2;
        icmp_ln13643_reg_623 <= icmp_ln13643_fu_391_p2;
        trunc_ln13647_reg_608 <= trunc_ln13647_fu_349_p1;
        v11002_reg_592 <= v11002_fu_307_p3;
        v11003_mid2_reg_586 <= v11003_mid2_fu_299_p3;
        v11003_mid2_reg_586_pp0_iter1_reg <= v11003_mid2_reg_586;
        zext_ln13742_7_cast_cast_cast_cast_reg_581[2 : 0] <= zext_ln13742_7_cast_cast_cast_cast_fu_205_p3[2 : 0];
        zext_ln13742_7_cast_cast_cast_cast_reg_581_pp0_iter1_reg[2 : 0] <= zext_ln13742_7_cast_cast_cast_cast_reg_581[2 : 0];
        zext_ln13742_cast_cast_cast_cast_reg_576[2 : 0] <= zext_ln13742_cast_cast_cast_cast_fu_193_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln13644_reg_618 <= icmp_ln13644_fu_385_p2;
        icmp_ln13645_reg_613 <= icmp_ln13645_fu_379_p2;
    end
end
always @ (*) begin
    if (((icmp_ln13643_fu_391_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_405)) begin
            ap_phi_mux_icmp_ln1364415_phi_fu_150_p4 = icmp_ln13644_reg_618;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1364415_phi_fu_150_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1364415_phi_fu_150_p4 = icmp_ln13644_reg_618;
        end
    end else begin
        ap_phi_mux_icmp_ln1364415_phi_fu_150_p4 = icmp_ln13644_reg_618;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_405)) begin
            ap_phi_mux_icmp_ln1364514_phi_fu_160_p4 = icmp_ln13645_reg_613;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1364514_phi_fu_160_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1364514_phi_fu_160_p4 = icmp_ln13645_reg_613;
        end
    end else begin
        ap_phi_mux_icmp_ln1364514_phi_fu_160_p4 = icmp_ln13645_reg_613;
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
        ap_sig_allocacmp_v1100110_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1100110_load = v1100110_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1100212_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v1100212_load = v1100212_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1100313_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v1100313_load = v1100313_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11067_ce0_local = 1'b1;
    end else begin
        v11067_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15467_ce0_local = 1'b1;
    end else begin
        v15467_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15467_we0_local = 1'b1;
    end else begin
        v15467_we0_local = 1'b0;
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
assign add_ln13643_1_fu_373_p2 = (ap_sig_allocacmp_indvar_flatten129_load + 11'd1);
assign add_ln13643_fu_253_p2 = (ap_sig_allocacmp_v1100110_load + 6'd1);
assign add_ln13644_1_fu_359_p2 = (ap_sig_allocacmp_indvar_flatten11_load + 6'd1);
assign add_ln13644_fu_287_p2 = (select_ln13643_fu_259_p3 + 3'd1);
assign add_ln13647_1_fu_483_p2 = (sub_ln13644_fu_456_p2 + zext_ln13647_2_fu_480_p1);
assign add_ln13647_fu_343_p2 = (sub_ln13647_fu_327_p2 + zext_ln13647_fu_339_p1);
assign add_ln13648_1_fu_474_p2 = (sub_ln13648_fu_440_p2 + zext_ln13648_1_fu_470_p1);
assign add_ln13648_2_fu_530_p2 = (sub_ln13648_1_fu_512_p2 + zext_ln13648_3_fu_526_p1);
assign add_ln13648_fu_521_p2 = (zext_ln13742_7_cast_cast_cast_cast_reg_581_pp0_iter1_reg + zext_ln13645_fu_518_p1);
assign and_ln13643_fu_273_p2 = (xor_ln13643_fu_267_p2 & ap_phi_mux_icmp_ln1364514_phi_fu_160_p4);
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
    ap_condition_101 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_405 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln13643_reg_623 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_396_fu_293_p2 = (ap_phi_mux_icmp_ln1364415_phi_fu_150_p4 | and_ln13643_fu_273_p2);
assign empty_397_fu_333_p2 = (mul_i_fu_177_p3 + zext_ln13643_fu_315_p1);
assign empty_398_fu_465_p2 = (zext_ln13742_cast_cast_cast_cast_reg_576 + zext_ln13644_fu_462_p1);
assign empty_fu_201_p1 = p_read[0:0];
assign icmp_ln13643_fu_391_p2 = ((ap_sig_allocacmp_indvar_flatten129_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln13644_fu_385_p2 = ((select_ln13644_1_fu_365_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln13645_fu_379_p2 = ((v11003_fu_353_p2 == 3'd7) ? 1'b1 : 1'b0);
assign mul_i_fu_177_p3 = {{tmp_fu_167_p4}, {5'd0}};
assign p_shl40_fu_422_p3 = {{empty_397_reg_597}, {4'd0}};
assign p_shl42_fu_319_p3 = {{v11001_fu_279_p3}, {3'd0}};
assign p_shl_fu_494_p3 = {{add_ln13648_1_reg_627}, {4'd0}};
assign select_ln13643_fu_259_p3 = ((ap_phi_mux_icmp_ln1364415_phi_fu_150_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v1100212_load);
assign select_ln13644_1_fu_365_p3 = ((ap_phi_mux_icmp_ln1364415_phi_fu_150_p4[0:0] == 1'b1) ? 6'd1 : add_ln13644_1_fu_359_p2);
assign sub_ln13644_fu_456_p2 = (tmp_421_fu_446_p3 - zext_ln13647_1_fu_453_p1);
assign sub_ln13647_fu_327_p2 = (p_shl42_fu_319_p3 - zext_ln13643_fu_315_p1);
assign sub_ln13648_1_fu_512_p2 = (p_shl_fu_494_p3 - zext_ln13648_2_fu_508_p1);
assign sub_ln13648_fu_440_p2 = (p_shl40_fu_422_p3 - zext_ln13648_fu_436_p1);
assign tmp_419_fu_185_p3 = p_read[32'd1];
assign tmp_420_fu_429_p3 = {{empty_397_reg_597}, {1'd0}};
assign tmp_421_fu_446_p3 = {{trunc_ln13647_reg_608}, {3'd0}};
assign tmp_422_fu_501_p3 = {{add_ln13648_1_reg_627}, {1'd0}};
assign tmp_fu_167_p4 = {{p_read[5:2]}};
assign trunc_ln13647_fu_349_p1 = add_ln13647_fu_343_p2[7:0];
assign v11001_fu_279_p3 = ((ap_phi_mux_icmp_ln1364415_phi_fu_150_p4[0:0] == 1'b1) ? add_ln13643_fu_253_p2 : ap_sig_allocacmp_v1100110_load);
assign v11002_fu_307_p3 = ((and_ln13643_fu_273_p2[0:0] == 1'b1) ? add_ln13644_fu_287_p2 : select_ln13643_fu_259_p3);
assign v11003_fu_353_p2 = (v11003_mid2_fu_299_p3 + 3'd1);
assign v11003_mid2_fu_299_p3 = ((empty_396_fu_293_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v1100313_load);
assign v11067_address0 = zext_ln13647_3_fu_489_p1;
assign v11067_ce0 = v11067_ce0_local;
assign v15467_address0 = zext_ln13648_4_fu_536_p1;
assign v15467_ce0 = v15467_ce0_local;
assign v15467_d0 = v11067_q0;
assign v15467_we0 = v15467_we0_local;
assign xor_ln13643_fu_267_p2 = (ap_phi_mux_icmp_ln1364415_phi_fu_150_p4 ^ 1'd1);
assign zext_ln13643_fu_315_p1 = v11001_fu_279_p3;
assign zext_ln13644_fu_462_p1 = v11002_reg_592;
assign zext_ln13645_fu_518_p1 = v11003_mid2_reg_586_pp0_iter1_reg;
assign zext_ln13647_1_fu_453_p1 = add_ln13647_reg_603;
assign zext_ln13647_2_fu_480_p1 = v11003_mid2_reg_586;
assign zext_ln13647_3_fu_489_p1 = add_ln13647_1_fu_483_p2;
assign zext_ln13647_fu_339_p1 = v11002_fu_307_p3;
assign zext_ln13648_1_fu_470_p1 = empty_398_fu_465_p2;
assign zext_ln13648_2_fu_508_p1 = tmp_422_fu_501_p3;
assign zext_ln13648_3_fu_526_p1 = add_ln13648_fu_521_p2;
assign zext_ln13648_4_fu_536_p1 = add_ln13648_2_fu_530_p2;
assign zext_ln13648_fu_436_p1 = tmp_420_fu_429_p3;
assign zext_ln13742_7_cast_cast_cast_cast_fu_205_p3 = ((empty_fu_201_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln13742_cast_cast_cast_cast_fu_193_p3 = ((tmp_419_fu_185_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
always @ (posedge ap_clk) begin
    zext_ln13742_cast_cast_cast_cast_reg_576[3] <= 1'b0;
    zext_ln13742_7_cast_cast_cast_cast_reg_581[3] <= 1'b0;
    zext_ln13742_7_cast_cast_cast_cast_reg_581_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
