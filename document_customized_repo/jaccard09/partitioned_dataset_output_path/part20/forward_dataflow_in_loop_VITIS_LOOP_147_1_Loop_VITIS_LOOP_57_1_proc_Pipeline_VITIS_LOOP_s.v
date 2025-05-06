
module forward_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v57_1_address0,v57_1_ce0,v57_1_q0,v57_address0,v57_ce0,v57_q0,mul35_i_i,v56_1_address0,v56_1_ce0,v56_1_q0,v56_address0,v56_ce0,v56_q0,mul_ln99,v55_address0,v55_ce0,v55_we0,v55_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] v57_1_address0;
output   v57_1_ce0;
input  [7:0] v57_1_q0;
output  [3:0] v57_address0;
output   v57_ce0;
input  [7:0] v57_q0;
input  [11:0] mul35_i_i;
output  [8:0] v56_1_address0;
output   v56_1_ce0;
input  [7:0] v56_1_q0;
output  [8:0] v56_address0;
output   v56_ce0;
input  [7:0] v56_q0;
input  [9:0] mul_ln99;
output  [4:0] v55_address0;
output   v55_ce0;
output   v55_we0;
output  [7:0] v55_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln57_fu_304_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [9:0] v16310_address0;
wire   [7:0] v16310_q0;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln57_fu_236_p3;
reg   [4:0] select_ln57_reg_414;
reg   [4:0] select_ln57_reg_414_pp0_iter1_reg;
reg   [4:0] select_ln57_reg_414_pp0_iter2_reg;
reg   [4:0] select_ln57_reg_414_pp0_iter3_reg;
reg   [4:0] select_ln57_reg_414_pp0_iter4_reg;
reg   [4:0] select_ln57_reg_414_pp0_iter5_reg;
reg   [4:0] select_ln57_reg_414_pp0_iter6_reg;
reg   [4:0] select_ln57_reg_414_pp0_iter7_reg;
wire   [3:0] lshr_ln57_fu_256_p4;
reg   [3:0] lshr_ln57_reg_421;
reg   [3:0] lshr_ln57_reg_421_pp0_iter1_reg;
reg   [3:0] lshr_ln57_reg_421_pp0_iter2_reg;
wire   [0:0] cmp38_i_i_fu_280_p2;
reg   [0:0] cmp38_i_i_reg_431;
reg   [0:0] cmp38_i_i_reg_431_pp0_iter1_reg;
reg   [0:0] cmp38_i_i_reg_431_pp0_iter2_reg;
reg   [0:0] cmp38_i_i_reg_431_pp0_iter3_reg;
reg   [0:0] cmp38_i_i_reg_431_pp0_iter4_reg;
reg   [0:0] cmp38_i_i_reg_431_pp0_iter5_reg;
reg   [0:0] cmp38_i_i_reg_431_pp0_iter6_reg;
reg   [0:0] cmp38_i_i_reg_431_pp0_iter7_reg;
wire   [0:0] icmp_ln59_fu_298_p2;
reg   [0:0] icmp_ln59_reg_435;
reg   [0:0] icmp_ln57_reg_440;
wire   [63:0] zext_ln57_fu_328_p1;
reg   [63:0] zext_ln57_reg_449;
wire   [63:0] zext_ln62_2_fu_332_p1;
reg   [63:0] zext_ln62_2_reg_459;
wire   [7:0] mul_ln73_fu_336_p2;
reg   [7:0] mul_ln73_reg_489;
wire   [63:0] zext_ln70_fu_350_p1;
reg   [63:0] zext_ln70_reg_494;
reg   [9:0] v8_addr_reg_499;
(* use_dsp48 = "no" *) wire   [7:0] v26_fu_355_p2;
reg   [7:0] v26_reg_505;
wire   [9:0] v51_address1;
wire   [7:0] v51_q1;
reg   [0:0] ap_phi_mux_icmp_ln5942_phi_fu_199_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln59_fu_361_p1;
reg   [8:0] indvar_flatten39_fu_74;
wire   [8:0] add_ln57_1_fu_286_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten39_load;
reg   [5:0] v1240_fu_78;
wire   [5:0] v12_fu_244_p3;
reg   [5:0] ap_sig_allocacmp_v1240_load;
reg   [4:0] v1341_fu_82;
wire   [4:0] v13_fu_292_p2;
reg   [4:0] ap_sig_allocacmp_v1341_load;
reg    v57_1_ce0_local;
reg    v56_1_ce0_local;
reg    v57_ce0_local;
reg    v56_ce0_local;
reg    v51_ce1_local;
reg    v51_we0_local;
reg    v51_ce0_local;
reg    v16310_ce0_local;
reg    v55_we0_local;
wire   [7:0] v31_fu_365_p2;
reg    v55_ce0_local;
wire   [5:0] add_ln57_fu_230_p2;
wire   [4:0] trunc_ln57_fu_252_p1;
wire   [11:0] v12_cast5_cast_i_fu_270_p1;
wire   [11:0] empty_fu_274_p2;
wire   [8:0] grp_fu_371_p3;
wire   [9:0] zext_ln59_1_fu_342_p1;
wire   [9:0] add_ln70_fu_345_p2;
wire  signed [7:0] v26_fu_355_p0;
wire   [7:0] grp_fu_380_p3;
wire   [4:0] grp_fu_371_p0;
wire   [3:0] grp_fu_371_p1;
wire   [4:0] grp_fu_371_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [8:0] grp_fu_371_p10;
wire   [8:0] grp_fu_371_p20;
reg    ap_condition_433;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 indvar_flatten39_fu_74 = 9'd0;
#0 v1240_fu_78 = 6'd0;
#0 v1341_fu_82 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LObFp #(.DataWidth( 8 ),.AddressRange( 1000 ),.AddressWidth( 10 ))
v16310_U(.clk(ap_clk),.reset(ap_rst),.address0(v16310_address0),.ce0(v16310_ce0_local),.q0(v16310_q0));
forward_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LObGp #(.DataWidth( 8 ),.AddressRange( 1000 ),.AddressWidth( 10 ))
v51_U(.clk(ap_clk),.reset(ap_rst),.address0(v8_addr_reg_499),.ce0(v51_ce0_local),.we0(v51_we0_local),.d0(v26_fu_355_p2),.address1(v51_address1),.ce1(v51_ce1_local),.q1(v51_q1));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U17061(.din0(v56_q0),.din1(v57_q0),.dout(mul_ln73_fu_336_p2));
forward_mac_muladd_5ns_4ns_5ns_9_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 5 ),.din1_WIDTH( 4 ),.din2_WIDTH( 5 ),.dout_WIDTH( 9 ))
mac_muladd_5ns_4ns_5ns_9_4_1_U17062(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_371_p0),.din1(grp_fu_371_p1),.din2(grp_fu_371_p2),.ce(1'b1),.dout(grp_fu_371_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U17063(.clk(ap_clk),.reset(ap_rst),.din0(v56_1_q0),.din1(v57_1_q0),.din2(mul_ln73_reg_489),.ce(1'b1),.dout(grp_fu_380_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten39_fu_74 <= add_ln57_1_fu_286_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten39_fu_74 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1240_fu_78 <= v12_fu_244_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1240_fu_78 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1341_fu_82 <= v13_fu_292_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v1341_fu_82 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp38_i_i_reg_431 <= cmp38_i_i_fu_280_p2;
        cmp38_i_i_reg_431_pp0_iter1_reg <= cmp38_i_i_reg_431;
        icmp_ln57_reg_440 <= icmp_ln57_fu_304_p2;
        lshr_ln57_reg_421 <= {{v12_fu_244_p3[4:1]}};
        lshr_ln57_reg_421_pp0_iter1_reg <= lshr_ln57_reg_421;
        select_ln57_reg_414 <= select_ln57_fu_236_p3;
        select_ln57_reg_414_pp0_iter1_reg <= select_ln57_reg_414;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        cmp38_i_i_reg_431_pp0_iter2_reg <= cmp38_i_i_reg_431_pp0_iter1_reg;
        cmp38_i_i_reg_431_pp0_iter3_reg <= cmp38_i_i_reg_431_pp0_iter2_reg;
        cmp38_i_i_reg_431_pp0_iter4_reg <= cmp38_i_i_reg_431_pp0_iter3_reg;
        cmp38_i_i_reg_431_pp0_iter5_reg <= cmp38_i_i_reg_431_pp0_iter4_reg;
        cmp38_i_i_reg_431_pp0_iter6_reg <= cmp38_i_i_reg_431_pp0_iter5_reg;
        cmp38_i_i_reg_431_pp0_iter7_reg <= cmp38_i_i_reg_431_pp0_iter6_reg;
        lshr_ln57_reg_421_pp0_iter2_reg <= lshr_ln57_reg_421_pp0_iter1_reg;
        mul_ln73_reg_489 <= mul_ln73_fu_336_p2;
        select_ln57_reg_414_pp0_iter2_reg <= select_ln57_reg_414_pp0_iter1_reg;
        select_ln57_reg_414_pp0_iter3_reg <= select_ln57_reg_414_pp0_iter2_reg;
        select_ln57_reg_414_pp0_iter4_reg <= select_ln57_reg_414_pp0_iter3_reg;
        select_ln57_reg_414_pp0_iter5_reg <= select_ln57_reg_414_pp0_iter4_reg;
        select_ln57_reg_414_pp0_iter6_reg <= select_ln57_reg_414_pp0_iter5_reg;
        select_ln57_reg_414_pp0_iter7_reg <= select_ln57_reg_414_pp0_iter6_reg;
        v26_reg_505 <= v26_fu_355_p2;
        v8_addr_reg_499 <= zext_ln70_fu_350_p1;
        zext_ln57_reg_449[3 : 0] <= zext_ln57_fu_328_p1[3 : 0];
        zext_ln62_2_reg_459[8 : 0] <= zext_ln62_2_fu_332_p1[8 : 0];
        zext_ln70_reg_494[9 : 0] <= zext_ln70_fu_350_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln59_reg_435 <= icmp_ln59_fu_298_p2;
    end
end
always @ (*) begin
    if (((icmp_ln57_fu_304_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_433)) begin
            ap_phi_mux_icmp_ln5942_phi_fu_199_p4 = icmp_ln59_reg_435;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln5942_phi_fu_199_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln5942_phi_fu_199_p4 = icmp_ln59_reg_435;
        end
    end else begin
        ap_phi_mux_icmp_ln5942_phi_fu_199_p4 = icmp_ln59_reg_435;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten39_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten39_load = indvar_flatten39_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1240_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1240_load = v1240_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1341_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1341_load = v1341_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v16310_ce0_local = 1'b1;
    end else begin
        v16310_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v51_ce0_local = 1'b1;
    end else begin
        v51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v51_ce1_local = 1'b1;
    end else begin
        v51_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v51_we0_local = 1'b1;
    end else begin
        v51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v55_ce0_local = 1'b1;
    end else begin
        v55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (cmp38_i_i_reg_431_pp0_iter7_reg == 1'd1))) begin
        v55_we0_local = 1'b1;
    end else begin
        v55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v56_1_ce0_local = 1'b1;
    end else begin
        v56_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v56_ce0_local = 1'b1;
    end else begin
        v56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v57_1_ce0_local = 1'b1;
    end else begin
        v57_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v57_ce0_local = 1'b1;
    end else begin
        v57_ce0_local = 1'b0;
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
assign add_ln57_1_fu_286_p2 = (ap_sig_allocacmp_indvar_flatten39_load + 9'd1);
assign add_ln57_fu_230_p2 = (ap_sig_allocacmp_v1240_load + 6'd2);
assign add_ln70_fu_345_p2 = (mul_ln99 + zext_ln59_1_fu_342_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_433 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln57_reg_440 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign cmp38_i_i_fu_280_p2 = ((empty_fu_274_p2 == 12'd2050) ? 1'b1 : 1'b0);
assign empty_fu_274_p2 = (mul35_i_i - v12_cast5_cast_i_fu_270_p1);
assign grp_fu_371_p0 = 9'd25;
assign grp_fu_371_p1 = grp_fu_371_p10;
assign grp_fu_371_p10 = lshr_ln57_fu_256_p4;
assign grp_fu_371_p2 = grp_fu_371_p20;
assign grp_fu_371_p20 = select_ln57_reg_414_pp0_iter1_reg;
assign icmp_ln57_fu_304_p2 = ((ap_sig_allocacmp_indvar_flatten39_load == 9'd399) ? 1'b1 : 1'b0);
assign icmp_ln59_fu_298_p2 = ((v13_fu_292_p2 == 5'd25) ? 1'b1 : 1'b0);
assign lshr_ln57_fu_256_p4 = {{v12_fu_244_p3[4:1]}};
assign select_ln57_fu_236_p3 = ((ap_phi_mux_icmp_ln5942_phi_fu_199_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1341_load);
assign trunc_ln57_fu_252_p1 = v12_fu_244_p3[4:0];
assign v12_cast5_cast_i_fu_270_p1 = trunc_ln57_fu_252_p1;
assign v12_fu_244_p3 = ((ap_phi_mux_icmp_ln5942_phi_fu_199_p4[0:0] == 1'b1) ? add_ln57_fu_230_p2 : ap_sig_allocacmp_v1240_load);
assign v13_fu_292_p2 = (select_ln57_fu_236_p3 + 5'd1);
assign v16310_address0 = zext_ln70_reg_494;
assign v26_fu_355_p0 = grp_fu_380_p3;
assign v26_fu_355_p2 = ($signed(v26_fu_355_p0) + $signed(v51_q1));
assign v31_fu_365_p2 = (v16310_q0 + v26_reg_505);
assign v51_address1 = zext_ln70_fu_350_p1;
assign v55_address0 = zext_ln59_fu_361_p1;
assign v55_ce0 = v55_ce0_local;
assign v55_d0 = v31_fu_365_p2;
assign v55_we0 = v55_we0_local;
assign v56_1_address0 = zext_ln62_2_fu_332_p1;
assign v56_1_ce0 = v56_1_ce0_local;
assign v56_address0 = zext_ln62_2_reg_459;
assign v56_ce0 = v56_ce0_local;
assign v57_1_address0 = zext_ln57_fu_328_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_address0 = zext_ln57_reg_449;
assign v57_ce0 = v57_ce0_local;
assign zext_ln57_fu_328_p1 = lshr_ln57_reg_421_pp0_iter2_reg;
assign zext_ln59_1_fu_342_p1 = select_ln57_reg_414_pp0_iter5_reg;
assign zext_ln59_fu_361_p1 = select_ln57_reg_414_pp0_iter7_reg;
assign zext_ln62_2_fu_332_p1 = grp_fu_371_p3;
assign zext_ln70_fu_350_p1 = add_ln70_fu_345_p2;
always @ (posedge ap_clk) begin
    zext_ln57_reg_449[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln62_2_reg_459[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln70_reg_494[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
