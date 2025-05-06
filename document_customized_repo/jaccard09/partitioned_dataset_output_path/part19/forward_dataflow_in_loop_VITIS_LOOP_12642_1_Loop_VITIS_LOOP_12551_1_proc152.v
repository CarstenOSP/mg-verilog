
module forward_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v8019_i_address0,v8019_i_ce0,v8019_i_we0,v8019_i_d0,v8019_1_i_address0,v8019_1_i_ce0,v8019_1_i_we0,v8019_1_i_d0,v8018_1_i_address0,v8018_1_i_ce0,v8018_1_i_q0,v8017_1_i_address0,v8017_1_i_ce0,v8017_1_i_q0,v8018_i_address0,v8018_i_ce0,v8018_i_q0,v8017_i_address0,v8017_i_ce0,v8017_i_q0,ap_return);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [6:0] p_read;
output  [13:0] v8019_i_address0;
output   v8019_i_ce0;
output   v8019_i_we0;
output  [7:0] v8019_i_d0;
output  [13:0] v8019_1_i_address0;
output   v8019_1_i_ce0;
output   v8019_1_i_we0;
output  [7:0] v8019_1_i_d0;
output  [13:0] v8018_1_i_address0;
output   v8018_1_i_ce0;
input  [7:0] v8018_1_i_q0;
output  [13:0] v8017_1_i_address0;
output   v8017_1_i_ce0;
input  [7:0] v8017_1_i_q0;
output  [13:0] v8018_i_address0;
output   v8018_i_ce0;
input  [7:0] v8018_i_q0;
output  [13:0] v8017_i_address0;
output   v8017_i_ce0;
input  [7:0] v8017_i_q0;
output  [4:0] ap_return;
reg ap_idle;
reg[4:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln12551_fu_280_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [4:0] empty_fu_220_p1;
reg   [4:0] empty_reg_609;
reg   [4:0] empty_reg_609_pp0_iter1_reg;
reg   [4:0] empty_reg_609_pp0_iter2_reg;
reg   [4:0] empty_reg_609_pp0_iter3_reg;
wire   [0:0] brmerge_demorgan_i_i_fu_240_p2;
reg   [0:0] brmerge_demorgan_i_i_reg_613;
reg   [0:0] brmerge_demorgan_i_i_reg_613_pp0_iter1_reg;
reg   [0:0] brmerge_demorgan_i_i_reg_613_pp0_iter2_reg;
reg   [0:0] icmp_ln12551_reg_619;
reg   [0:0] icmp_ln12551_reg_619_pp0_iter1_reg;
wire   [10:0] add_ln12568_fu_391_p2;
reg   [10:0] add_ln12568_reg_623;
wire   [9:0] trunc_ln12568_fu_397_p1;
reg   [9:0] trunc_ln12568_reg_628;
reg   [3:0] lshr_ln_reg_633;
wire   [0:0] icmp_ln12553_fu_431_p2;
reg   [0:0] icmp_ln12553_reg_638;
wire   [0:0] icmp_ln12552_fu_437_p2;
reg   [0:0] icmp_ln12552_reg_643;
wire   [63:0] zext_ln12568_4_fu_496_p1;
reg   [63:0] zext_ln12568_4_reg_648;
reg   [63:0] zext_ln12568_4_reg_648_pp0_iter3_reg;
wire   [7:0] select_ln12561_fu_532_p3;
reg   [7:0] select_ln12561_reg_674;
wire   [7:0] select_ln12568_fu_567_p3;
reg   [7:0] select_ln12568_reg_679;
reg   [0:0] ap_phi_mux_icmp_ln1255239_phi_fu_202_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1255338_phi_fu_213_p4;
reg   [13:0] indvar_flatten1233_fu_94;
wire   [13:0] add_ln12551_1_fu_274_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v796934_fu_98;
wire   [5:0] v7969_fu_331_p3;
reg   [8:0] indvar_flatten35_fu_102;
wire   [8:0] select_ln12552_1_fu_423_p3;
reg   [4:0] v797036_fu_106;
wire   [4:0] v7970_fu_353_p3;
reg   [4:0] v797137_fu_110;
wire   [4:0] v7971_fu_411_p2;
reg    v8018_1_i_ce0_local;
reg    v8017_1_i_ce0_local;
reg    v8018_i_ce0_local;
reg    v8017_i_ce0_local;
reg    v8019_1_i_we0_local;
reg    v8019_1_i_ce0_local;
reg    v8019_i_we0_local;
reg    v8019_i_ce0_local;
wire   [0:0] tmp_fu_224_p3;
wire   [0:0] v7968_fu_232_p3;
wire   [5:0] add_ln12551_fu_303_p2;
wire   [4:0] select_ln12551_fu_309_p3;
wire   [0:0] or_ln12551_fu_325_p2;
wire   [4:0] select_ln12551_1_fu_317_p3;
wire   [4:0] add_ln12552_fu_339_p2;
wire   [7:0] tmp_372_fu_369_p3;
wire   [10:0] p_shl49_fu_361_p3;
wire   [10:0] zext_ln12568_fu_377_p1;
wire   [10:0] sub_ln12568_fu_381_p2;
wire   [10:0] zext_ln12568_1_fu_387_p1;
wire   [4:0] v7971_mid2_fu_345_p3;
wire   [8:0] add_ln12552_1_fu_417_p2;
wire   [11:0] tmp_373_fu_463_p3;
wire   [13:0] tmp_374_fu_470_p3;
wire   [13:0] zext_ln12568_2_fu_477_p1;
wire   [13:0] sub_ln12554_fu_481_p2;
wire   [13:0] zext_ln12568_3_fu_487_p1;
wire   [13:0] add_ln12568_1_fu_490_p2;
wire   [0:0] icmp_ln224_fu_504_p2;
wire   [7:0] v7974_fu_510_p3;
wire   [0:0] v7975_fu_518_p2;
wire   [7:0] v7976_1_fu_524_p3;
wire   [0:0] icmp_ln224_1_fu_539_p2;
wire   [7:0] v7980_fu_545_p3;
wire   [0:0] v7981_fu_553_p2;
wire   [7:0] v7982_1_fu_559_p3;
reg   [4:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_115;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_94 = 14'd0;
#0 v796934_fu_98 = 6'd0;
#0 indvar_flatten35_fu_102 = 9'd0;
#0 v797036_fu_106 = 5'd0;
#0 v797137_fu_110 = 5'd0;
#0 ap_return_preg = 5'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 5'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
            ap_return_preg <= empty_reg_609_pp0_iter3_reg;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_115)) begin
        indvar_flatten1233_fu_94 <= add_ln12551_1_fu_274_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten35_fu_102 <= 9'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten35_fu_102 <= select_ln12552_1_fu_423_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v796934_fu_98 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v796934_fu_98 <= v7969_fu_331_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v797036_fu_106 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v797036_fu_106 <= v7970_fu_353_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v797137_fu_110 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v797137_fu_110 <= v7971_fu_411_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12568_reg_623 <= add_ln12568_fu_391_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        brmerge_demorgan_i_i_reg_613 <= brmerge_demorgan_i_i_fu_240_p2;
        brmerge_demorgan_i_i_reg_613_pp0_iter1_reg <= brmerge_demorgan_i_i_reg_613;
        empty_reg_609_pp0_iter1_reg <= empty_reg_609;
        icmp_ln12551_reg_619 <= icmp_ln12551_fu_280_p2;
        icmp_ln12551_reg_619_pp0_iter1_reg <= icmp_ln12551_reg_619;
        lshr_ln_reg_633 <= {{v7971_mid2_fu_345_p3[4:1]}};
        trunc_ln12568_reg_628 <= trunc_ln12568_fu_397_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        brmerge_demorgan_i_i_reg_613_pp0_iter2_reg <= brmerge_demorgan_i_i_reg_613_pp0_iter1_reg;
        empty_reg_609_pp0_iter2_reg <= empty_reg_609_pp0_iter1_reg;
        empty_reg_609_pp0_iter3_reg <= empty_reg_609_pp0_iter2_reg;
        select_ln12561_reg_674 <= select_ln12561_fu_532_p3;
        select_ln12568_reg_679 <= select_ln12568_fu_567_p3;
        zext_ln12568_4_reg_648[13 : 0] <= zext_ln12568_4_fu_496_p1[13 : 0];
        zext_ln12568_4_reg_648_pp0_iter3_reg[13 : 0] <= zext_ln12568_4_reg_648[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_609 <= empty_fu_220_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12552_reg_643 <= icmp_ln12552_fu_437_p2;
        icmp_ln12553_reg_638 <= icmp_ln12553_fu_431_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12551_fu_280_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12551_reg_619_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1255239_phi_fu_202_p4 = icmp_ln12552_reg_643;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1255239_phi_fu_202_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1255239_phi_fu_202_p4 = icmp_ln12552_reg_643;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12551_reg_619_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1255338_phi_fu_213_p4 = icmp_ln12553_reg_638;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1255338_phi_fu_213_p4 = 1'd1;
    end else begin
        ap_phi_mux_icmp_ln1255338_phi_fu_213_p4 = icmp_ln12553_reg_638;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        ap_return = empty_reg_609_pp0_iter3_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1233_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8017_1_i_ce0_local = 1'b1;
    end else begin
        v8017_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8017_i_ce0_local = 1'b1;
    end else begin
        v8017_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8018_1_i_ce0_local = 1'b1;
    end else begin
        v8018_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8018_i_ce0_local = 1'b1;
    end else begin
        v8018_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8019_1_i_ce0_local = 1'b1;
    end else begin
        v8019_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8019_1_i_we0_local = 1'b1;
    end else begin
        v8019_1_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8019_i_ce0_local = 1'b1;
    end else begin
        v8019_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v8019_i_we0_local = 1'b1;
    end else begin
        v8019_i_we0_local = 1'b0;
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
assign add_ln12551_1_fu_274_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 14'd1);
assign add_ln12551_fu_303_p2 = (v796934_fu_98 + 6'd1);
assign add_ln12552_1_fu_417_p2 = (indvar_flatten35_fu_102 + 9'd1);
assign add_ln12552_fu_339_p2 = (select_ln12551_fu_309_p3 + 5'd1);
assign add_ln12568_1_fu_490_p2 = (sub_ln12554_fu_481_p2 + zext_ln12568_3_fu_487_p1);
assign add_ln12568_fu_391_p2 = (sub_ln12568_fu_381_p2 + zext_ln12568_1_fu_387_p1);
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
    ap_condition_115 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge_demorgan_i_i_fu_240_p2 = (v7968_fu_232_p3 & tmp_fu_224_p3);
assign empty_fu_220_p1 = p_read[4:0];
assign icmp_ln12551_fu_280_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln12552_fu_437_p2 = ((select_ln12552_1_fu_423_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln12553_fu_431_p2 = ((v7971_fu_411_p2 < 5'd28) ? 1'b1 : 1'b0);
assign icmp_ln224_1_fu_539_p2 = (($signed(v8017_i_q0) < $signed(v8018_i_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_504_p2 = (($signed(v8017_1_i_q0) < $signed(v8018_1_i_q0)) ? 1'b1 : 1'b0);
assign or_ln12551_fu_325_p2 = (ap_phi_mux_icmp_ln1255338_phi_fu_213_p4 | ap_phi_mux_icmp_ln1255239_phi_fu_202_p4);
assign p_shl49_fu_361_p3 = {{v7969_fu_331_p3}, {5'd0}};
assign select_ln12551_1_fu_317_p3 = ((ap_phi_mux_icmp_ln1255239_phi_fu_202_p4[0:0] == 1'b1) ? 5'd0 : v797137_fu_110);
assign select_ln12551_fu_309_p3 = ((ap_phi_mux_icmp_ln1255239_phi_fu_202_p4[0:0] == 1'b1) ? 5'd0 : v797036_fu_106);
assign select_ln12552_1_fu_423_p3 = ((ap_phi_mux_icmp_ln1255239_phi_fu_202_p4[0:0] == 1'b1) ? 9'd1 : add_ln12552_1_fu_417_p2);
assign select_ln12561_fu_532_p3 = ((brmerge_demorgan_i_i_reg_613_pp0_iter2_reg[0:0] == 1'b1) ? v7976_1_fu_524_p3 : v7974_fu_510_p3);
assign select_ln12568_fu_567_p3 = ((brmerge_demorgan_i_i_reg_613_pp0_iter2_reg[0:0] == 1'b1) ? v7982_1_fu_559_p3 : v7980_fu_545_p3);
assign sub_ln12554_fu_481_p2 = (tmp_374_fu_470_p3 - zext_ln12568_2_fu_477_p1);
assign sub_ln12568_fu_381_p2 = (p_shl49_fu_361_p3 - zext_ln12568_fu_377_p1);
assign tmp_372_fu_369_p3 = {{v7969_fu_331_p3}, {2'd0}};
assign tmp_373_fu_463_p3 = {{add_ln12568_reg_623}, {1'd0}};
assign tmp_374_fu_470_p3 = {{trunc_ln12568_reg_628}, {4'd0}};
assign tmp_fu_224_p3 = p_read[32'd6];
assign trunc_ln12568_fu_397_p1 = add_ln12568_fu_391_p2[9:0];
assign v7968_fu_232_p3 = p_read[32'd5];
assign v7969_fu_331_p3 = ((ap_phi_mux_icmp_ln1255239_phi_fu_202_p4[0:0] == 1'b1) ? add_ln12551_fu_303_p2 : v796934_fu_98);
assign v7970_fu_353_p3 = ((or_ln12551_fu_325_p2[0:0] == 1'b1) ? select_ln12551_fu_309_p3 : add_ln12552_fu_339_p2);
assign v7971_fu_411_p2 = (v7971_mid2_fu_345_p3 + 5'd2);
assign v7971_mid2_fu_345_p3 = ((or_ln12551_fu_325_p2[0:0] == 1'b1) ? select_ln12551_1_fu_317_p3 : 5'd0);
assign v7974_fu_510_p3 = ((icmp_ln224_fu_504_p2[0:0] == 1'b1) ? v8018_1_i_q0 : v8017_1_i_q0);
assign v7975_fu_518_p2 = (($signed(v7974_fu_510_p3) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v7976_1_fu_524_p3 = ((v7975_fu_518_p2[0:0] == 1'b1) ? v7974_fu_510_p3 : 8'd229);
assign v7980_fu_545_p3 = ((icmp_ln224_1_fu_539_p2[0:0] == 1'b1) ? v8018_i_q0 : v8017_i_q0);
assign v7981_fu_553_p2 = (($signed(v7980_fu_545_p3) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v7982_1_fu_559_p3 = ((v7981_fu_553_p2[0:0] == 1'b1) ? v7980_fu_545_p3 : 8'd229);
assign v8017_1_i_address0 = zext_ln12568_4_fu_496_p1;
assign v8017_1_i_ce0 = v8017_1_i_ce0_local;
assign v8017_i_address0 = zext_ln12568_4_fu_496_p1;
assign v8017_i_ce0 = v8017_i_ce0_local;
assign v8018_1_i_address0 = zext_ln12568_4_fu_496_p1;
assign v8018_1_i_ce0 = v8018_1_i_ce0_local;
assign v8018_i_address0 = zext_ln12568_4_fu_496_p1;
assign v8018_i_ce0 = v8018_i_ce0_local;
assign v8019_1_i_address0 = zext_ln12568_4_reg_648_pp0_iter3_reg;
assign v8019_1_i_ce0 = v8019_1_i_ce0_local;
assign v8019_1_i_d0 = select_ln12561_reg_674;
assign v8019_1_i_we0 = v8019_1_i_we0_local;
assign v8019_i_address0 = zext_ln12568_4_reg_648_pp0_iter3_reg;
assign v8019_i_ce0 = v8019_i_ce0_local;
assign v8019_i_d0 = select_ln12568_reg_679;
assign v8019_i_we0 = v8019_i_we0_local;
assign zext_ln12568_1_fu_387_p1 = v7970_fu_353_p3;
assign zext_ln12568_2_fu_477_p1 = tmp_373_fu_463_p3;
assign zext_ln12568_3_fu_487_p1 = lshr_ln_reg_633;
assign zext_ln12568_4_fu_496_p1 = add_ln12568_1_fu_490_p2;
assign zext_ln12568_fu_377_p1 = tmp_372_fu_369_p3;
always @ (posedge ap_clk) begin
    zext_ln12568_4_reg_648[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln12568_4_reg_648_pp0_iter3_reg[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
