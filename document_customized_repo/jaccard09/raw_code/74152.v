module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,zext_ln13,grp_fu_387_p_din0,grp_fu_387_p_din1,grp_fu_387_p_opcode,grp_fu_387_p_dout0,grp_fu_387_p_ce,grp_fu_672_p_din0,grp_fu_672_p_din1,grp_fu_672_p_opcode,grp_fu_672_p_dout0,grp_fu_672_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [5:0] init_address1;
output   init_ce1;
input  [63:0] init_q1;
input  [7:0] obs_load;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
input  [7:0] zext_ln13;
output  [63:0] grp_fu_387_p_din0;
output  [63:0] grp_fu_387_p_din1;
output  [1:0] grp_fu_387_p_opcode;
input  [63:0] grp_fu_387_p_dout0;
output   grp_fu_387_p_ce;
output  [63:0] grp_fu_672_p_din0;
output  [63:0] grp_fu_672_p_din1;
output  [1:0] grp_fu_672_p_opcode;
input  [63:0] grp_fu_672_p_dout0;
output   grp_fu_672_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_577;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_298;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_302;
reg   [63:0] reg_306;
reg   [63:0] reg_310;
reg   [63:0] reg_314;
reg   [63:0] reg_322;
wire   [11:0] zext_ln13_cast_fu_330_p1;
reg   [11:0] zext_ln13_cast_reg_565;
reg   [6:0] s_1_reg_571;
wire   [0:0] tmp_fu_342_p3;
wire   [3:0] tmp_4_cast_fu_359_p4;
reg   [3:0] tmp_4_cast_reg_586;
wire   [0:0] icmp_ln14_fu_424_p2;
reg   [0:0] icmp_ln14_reg_609;
reg   [0:0] icmp_ln14_reg_609_pp0_iter1_reg;
reg   [0:0] icmp_ln14_reg_609_pp0_iter2_reg;
reg   [0:0] icmp_ln14_reg_609_pp0_iter3_reg;
reg   [0:0] icmp_ln14_reg_609_pp0_iter4_reg;
reg   [0:0] icmp_ln14_reg_609_pp0_iter5_reg;
reg   [2:0] lshr_ln9_reg_613;
reg   [2:0] lshr_ln9_reg_613_pp0_iter1_reg;
reg   [2:0] lshr_ln9_reg_613_pp0_iter2_reg;
reg   [2:0] lshr_ln9_reg_613_pp0_iter3_reg;
reg   [2:0] lshr_ln9_reg_613_pp0_iter4_reg;
wire   [63:0] bitcast_ln14_fu_507_p1;
wire   [63:0] bitcast_ln14_1_fu_512_p1;
wire   [63:0] bitcast_ln14_2_fu_517_p1;
wire   [63:0] bitcast_ln14_3_fu_522_p1;
wire   [63:0] bitcast_ln14_4_fu_527_p1;
wire   [63:0] bitcast_ln14_5_fu_532_p1;
wire   [63:0] bitcast_ln14_6_fu_537_p1;
wire   [63:0] bitcast_ln14_7_fu_542_p1;
reg   [10:0] llike_2_addr_reg_678;
reg   [10:0] llike_3_addr_reg_683;
reg   [10:0] llike_6_addr_reg_688;
reg   [10:0] llike_7_addr_reg_693;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln13_1_fu_350_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_377_p1;
wire   [63:0] zext_ln14_1_fu_400_p1;
wire   [63:0] zext_ln14_2_fu_419_p1;
wire   [63:0] zext_ln14_3_fu_446_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_463_p1;
wire   [63:0] zext_ln14_5_fu_475_p1;
wire   [63:0] zext_ln14_6_fu_492_p1;
wire   [63:0] zext_ln9_fu_547_p1;
reg   [6:0] s_fu_92;
wire   [6:0] add_ln13_fu_497_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_ce1_local;
reg   [5:0] init_address1_local;
reg    init_ce0_local;
reg   [5:0] init_address0_local;
reg    emission_ce1_local;
reg   [11:0] emission_address1_local;
reg    emission_ce0_local;
reg   [11:0] emission_address0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg   [63:0] grp_fu_290_p0;
reg   [63:0] grp_fu_290_p1;
reg   [63:0] grp_fu_294_p0;
reg   [63:0] grp_fu_294_p1;
wire   [11:0] or_ln_fu_369_p3;
wire   [4:0] tmp_s_fu_382_p4;
wire   [5:0] or_ln1_fu_392_p3;
wire   [11:0] shl_ln_fu_405_p3;
wire   [11:0] add_ln14_fu_413_p2;
wire   [2:0] trunc_ln13_fu_355_p1;
wire   [5:0] or_ln13_1_fu_439_p3;
wire   [11:0] shl_ln14_1_fu_451_p3;
wire   [11:0] add_ln14_1_fu_458_p2;
wire   [5:0] or_ln13_2_fu_468_p3;
wire   [11:0] shl_ln14_2_fu_480_p3;
wire   [11:0] add_ln14_2_fu_487_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_92 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_92 <= 7'd0;
    end else if (((tmp_reg_577 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        s_fu_92 <= add_ln13_fu_497_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        lshr_ln9_reg_613 <= {{s_1_reg_571[5:3]}};
        lshr_ln9_reg_613_pp0_iter1_reg <= lshr_ln9_reg_613;
        lshr_ln9_reg_613_pp0_iter2_reg <= lshr_ln9_reg_613_pp0_iter1_reg;
        lshr_ln9_reg_613_pp0_iter3_reg <= lshr_ln9_reg_613_pp0_iter2_reg;
        lshr_ln9_reg_613_pp0_iter4_reg <= lshr_ln9_reg_613_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln14_reg_609 <= icmp_ln14_fu_424_p2;
        icmp_ln14_reg_609_pp0_iter1_reg <= icmp_ln14_reg_609;
        icmp_ln14_reg_609_pp0_iter2_reg <= icmp_ln14_reg_609_pp0_iter1_reg;
        icmp_ln14_reg_609_pp0_iter3_reg <= icmp_ln14_reg_609_pp0_iter2_reg;
        icmp_ln14_reg_609_pp0_iter4_reg <= icmp_ln14_reg_609_pp0_iter3_reg;
        icmp_ln14_reg_609_pp0_iter5_reg <= icmp_ln14_reg_609_pp0_iter4_reg;
        llike_2_addr_reg_678[2 : 0] <= zext_ln9_fu_547_p1[2 : 0];
        llike_3_addr_reg_683[2 : 0] <= zext_ln9_fu_547_p1[2 : 0];
        llike_6_addr_reg_688[2 : 0] <= zext_ln9_fu_547_p1[2 : 0];
        llike_7_addr_reg_693[2 : 0] <= zext_ln9_fu_547_p1[2 : 0];
        s_1_reg_571 <= ap_sig_allocacmp_s_1;
        tmp_4_cast_reg_586 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_577 <= ap_sig_allocacmp_s_1[32'd6];
        zext_ln13_cast_reg_565[7 : 0] <= zext_ln13_cast_fu_330_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_298 <= init_q1;
        reg_302 <= emission_q1;
        reg_306 <= init_q0;
        reg_310 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_314 <= grp_fu_387_p_dout0;
        reg_322 <= grp_fu_672_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_577 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_92;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_492_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_419_p1;
        end else begin
            emission_address0_local = 'bx;
        end
    end else begin
        emission_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_463_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_377_p1;
        end else begin
            emission_address1_local = 'bx;
        end
    end else begin
        emission_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_290_p0 = bitcast_ln14_4_fu_527_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_290_p0 = bitcast_ln14_fu_507_p1;
        end else begin
            grp_fu_290_p0 = 'bx;
        end
    end else begin
        grp_fu_290_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_290_p1 = bitcast_ln14_5_fu_532_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_290_p1 = bitcast_ln14_1_fu_512_p1;
        end else begin
            grp_fu_290_p1 = 'bx;
        end
    end else begin
        grp_fu_290_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_294_p0 = bitcast_ln14_6_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_294_p0 = bitcast_ln14_2_fu_517_p1;
        end else begin
            grp_fu_294_p0 = 'bx;
        end
    end else begin
        grp_fu_294_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_294_p1 = bitcast_ln14_7_fu_542_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_294_p1 = bitcast_ln14_3_fu_522_p1;
        end else begin
            grp_fu_294_p1 = 'bx;
        end
    end else begin
        grp_fu_294_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_475_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_400_p1;
        end else begin
            init_address0_local = 'bx;
        end
    end else begin
        init_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_446_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_1_fu_350_p1;
        end else begin
            init_address1_local = 'bx;
        end
    end else begin
        init_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_609_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_609_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_609_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_609_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_609_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_609_pp0_iter5_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_609_pp0_iter5_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_609_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_497_p2 = (s_1_reg_571 + 7'd4);
assign add_ln14_1_fu_458_p2 = (shl_ln14_1_fu_451_p3 + zext_ln13_cast_reg_565);
assign add_ln14_2_fu_487_p2 = (shl_ln14_2_fu_480_p3 + zext_ln13_cast_reg_565);
assign add_ln14_fu_413_p2 = (shl_ln_fu_405_p3 + zext_ln13_cast_fu_330_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_1_fu_512_p1 = reg_302;
assign bitcast_ln14_2_fu_517_p1 = reg_306;
assign bitcast_ln14_3_fu_522_p1 = reg_310;
assign bitcast_ln14_4_fu_527_p1 = reg_298;
assign bitcast_ln14_5_fu_532_p1 = reg_302;
assign bitcast_ln14_6_fu_537_p1 = reg_306;
assign bitcast_ln14_7_fu_542_p1 = reg_310;
assign bitcast_ln14_fu_507_p1 = reg_298;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_387_p_ce = 1'b1;
assign grp_fu_387_p_din0 = grp_fu_290_p0;
assign grp_fu_387_p_din1 = grp_fu_290_p1;
assign grp_fu_387_p_opcode = 2'd0;
assign grp_fu_672_p_ce = 1'b1;
assign grp_fu_672_p_din0 = grp_fu_294_p0;
assign grp_fu_672_p_din1 = grp_fu_294_p1;
assign grp_fu_672_p_opcode = 2'd0;
assign icmp_ln14_fu_424_p2 = ((trunc_ln13_fu_355_p1 == 3'd0) ? 1'b1 : 1'b0);
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign llike_1_address0 = zext_ln9_fu_547_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_322;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = llike_2_addr_reg_678;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_314;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = llike_3_addr_reg_683;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_322;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_fu_547_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_314;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_fu_547_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_322;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = llike_6_addr_reg_688;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_314;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = llike_7_addr_reg_693;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_322;
assign llike_7_we0 = llike_7_we0_local;
assign llike_address0 = zext_ln9_fu_547_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_314;
assign llike_we0 = llike_we0_local;
assign or_ln13_1_fu_439_p3 = {{tmp_4_cast_reg_586}, {2'd2}};
assign or_ln13_2_fu_468_p3 = {{tmp_4_cast_reg_586}, {2'd3}};
assign or_ln1_fu_392_p3 = {{tmp_s_fu_382_p4}, {1'd1}};
assign or_ln_fu_369_p3 = {{tmp_4_cast_fu_359_p4}, {obs_load}};
assign shl_ln14_1_fu_451_p3 = {{tmp_4_cast_reg_586}, {8'd128}};
assign shl_ln14_2_fu_480_p3 = {{tmp_4_cast_reg_586}, {8'd192}};
assign shl_ln_fu_405_p3 = {{tmp_s_fu_382_p4}, {7'd64}};
assign tmp_4_cast_fu_359_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_fu_342_p3 = ap_sig_allocacmp_s_1[32'd6];
assign tmp_s_fu_382_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign trunc_ln13_fu_355_p1 = ap_sig_allocacmp_s_1[2:0];
assign zext_ln13_1_fu_350_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_330_p1 = zext_ln13;
assign zext_ln14_1_fu_400_p1 = or_ln1_fu_392_p3;
assign zext_ln14_2_fu_419_p1 = add_ln14_fu_413_p2;
assign zext_ln14_3_fu_446_p1 = or_ln13_1_fu_439_p3;
assign zext_ln14_4_fu_463_p1 = add_ln14_1_fu_458_p2;
assign zext_ln14_5_fu_475_p1 = or_ln13_2_fu_468_p3;
assign zext_ln14_6_fu_492_p1 = add_ln14_2_fu_487_p2;
assign zext_ln14_fu_377_p1 = or_ln_fu_369_p3;
assign zext_ln9_fu_547_p1 = lshr_ln9_reg_613_pp0_iter4_reg;
always @ (posedge ap_clk) begin
    zext_ln13_cast_reg_565[11:8] <= 4'b0000;
    llike_2_addr_reg_678[10:3] <= 8'b00000000;
    llike_3_addr_reg_683[10:3] <= 8'b00000000;
    llike_6_addr_reg_688[10:3] <= 8'b00000000;
    llike_7_addr_reg_693[10:3] <= 8'b00000000;
end
endmodule 