
module forward_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v71_3_address0,v71_3_ce0,v71_3_q0,v71_2_address0,v71_2_ce0,v71_2_q0,v71_1_address0,v71_1_ce0,v71_1_q0,v71_address0,v71_ce0,v71_q0,mul59_i_i,v70_3_address0,v70_3_ce0,v70_3_q0,v70_2_address0,v70_2_ce0,v70_2_q0,v70_1_address0,v70_1_ce0,v70_1_q0,v70_address0,v70_ce0,v70_q0,mul_ln109,v69_address0,v69_ce0,v69_we0,v69_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] v71_3_address0;
output   v71_3_ce0;
input  [7:0] v71_3_q0;
output  [2:0] v71_2_address0;
output   v71_2_ce0;
input  [7:0] v71_2_q0;
output  [2:0] v71_1_address0;
output   v71_1_ce0;
input  [7:0] v71_1_q0;
output  [2:0] v71_address0;
output   v71_ce0;
input  [7:0] v71_q0;
input  [12:0] mul59_i_i;
output  [7:0] v70_3_address0;
output   v70_3_ce0;
input  [7:0] v70_3_q0;
output  [7:0] v70_2_address0;
output   v70_2_ce0;
input  [7:0] v70_2_q0;
output  [7:0] v70_1_address0;
output   v70_1_ce0;
input  [7:0] v70_1_q0;
output  [7:0] v70_address0;
output   v70_ce0;
input  [7:0] v70_q0;
input  [9:0] mul_ln109;
output  [4:0] v69_address0;
output   v69_ce0;
output   v69_we0;
output  [7:0] v69_d0;
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
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln57_fu_366_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [9:0] v9090_address0;
wire   [7:0] v9090_q0;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln57_fu_298_p3;
reg   [4:0] select_ln57_reg_492;
reg   [4:0] select_ln57_reg_492_pp0_iter1_reg;
reg   [4:0] select_ln57_reg_492_pp0_iter2_reg;
reg   [4:0] select_ln57_reg_492_pp0_iter3_reg;
reg   [4:0] select_ln57_reg_492_pp0_iter4_reg;
reg   [4:0] select_ln57_reg_492_pp0_iter5_reg;
reg   [4:0] select_ln57_reg_492_pp0_iter6_reg;
reg   [4:0] select_ln57_reg_492_pp0_iter7_reg;
reg   [4:0] select_ln57_reg_492_pp0_iter8_reg;
wire   [2:0] lshr_ln_fu_318_p4;
reg   [2:0] lshr_ln_reg_499;
reg   [2:0] lshr_ln_reg_499_pp0_iter1_reg;
reg   [2:0] lshr_ln_reg_499_pp0_iter2_reg;
wire   [0:0] cmp62_i_i_fu_342_p2;
reg   [0:0] cmp62_i_i_reg_509;
reg   [0:0] cmp62_i_i_reg_509_pp0_iter1_reg;
reg   [0:0] cmp62_i_i_reg_509_pp0_iter2_reg;
reg   [0:0] cmp62_i_i_reg_509_pp0_iter3_reg;
reg   [0:0] cmp62_i_i_reg_509_pp0_iter4_reg;
reg   [0:0] cmp62_i_i_reg_509_pp0_iter5_reg;
reg   [0:0] cmp62_i_i_reg_509_pp0_iter6_reg;
reg   [0:0] cmp62_i_i_reg_509_pp0_iter7_reg;
reg   [0:0] cmp62_i_i_reg_509_pp0_iter8_reg;
wire   [0:0] icmp_ln59_fu_360_p2;
reg   [0:0] icmp_ln59_reg_513;
reg   [0:0] icmp_ln57_reg_518;
wire   [63:0] zext_ln57_fu_390_p1;
reg   [63:0] zext_ln57_reg_527;
wire   [63:0] zext_ln62_2_fu_394_p1;
reg   [63:0] zext_ln62_2_reg_539;
wire   [7:0] mul_ln83_1_fu_398_p2;
reg   [7:0] mul_ln83_1_reg_611;
wire   [63:0] zext_ln80_fu_412_p1;
reg   [63:0] zext_ln80_reg_616;
reg   [63:0] zext_ln80_reg_616_pp0_iter7_reg;
reg   [9:0] v8_addr_reg_621;
reg   [9:0] v8_addr_reg_621_pp0_iter7_reg;
wire   [7:0] grp_fu_441_p3;
(* use_dsp48 = "no" *) wire   [7:0] v36_fu_417_p2;
reg   [7:0] v36_reg_637;
wire   [9:0] v65_address1;
wire   [7:0] v65_q1;
reg   [0:0] ap_phi_mux_icmp_ln5966_phi_fu_261_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln59_fu_422_p1;
reg   [7:0] indvar_flatten63_fu_84;
wire   [7:0] add_ln57_1_fu_348_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten63_load;
reg   [5:0] v1264_fu_88;
wire   [5:0] v12_fu_306_p3;
reg   [5:0] ap_sig_allocacmp_v1264_load;
reg   [4:0] v1365_fu_92;
wire   [4:0] v13_fu_354_p2;
reg   [4:0] ap_sig_allocacmp_v1365_load;
reg    v71_2_ce0_local;
reg    v70_2_ce0_local;
reg    v71_3_ce0_local;
reg    v71_1_ce0_local;
reg    v71_ce0_local;
reg    v70_3_ce0_local;
reg    v70_1_ce0_local;
reg    v70_ce0_local;
reg    v65_ce1_local;
reg    v65_we0_local;
reg    v65_ce0_local;
reg    v9090_ce0_local;
reg    v69_we0_local;
wire   [7:0] v41_fu_426_p2;
reg    v69_ce0_local;
wire   [5:0] add_ln57_fu_292_p2;
wire   [4:0] trunc_ln57_fu_314_p1;
wire   [12:0] v12_cast5_cast_i_fu_332_p1;
wire   [12:0] empty_fu_336_p2;
wire   [7:0] grp_fu_432_p3;
wire   [9:0] zext_ln59_1_fu_404_p1;
wire   [9:0] add_ln80_fu_407_p2;
wire  signed [7:0] v36_fu_417_p0;
wire   [7:0] grp_fu_448_p3;
wire  signed [7:0] v36_fu_417_p1;
wire   [7:0] grp_fu_457_p3;
wire   [4:0] grp_fu_432_p0;
wire   [2:0] grp_fu_432_p1;
wire   [4:0] grp_fu_432_p2;
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
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_432_p10;
wire   [7:0] grp_fu_432_p20;
reg    ap_condition_511;
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
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 indvar_flatten63_fu_84 = 8'd0;
#0 v1264_fu_88 = 6'd0;
#0 v1365_fu_92 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LODeQ #(.DataWidth( 8 ),.AddressRange( 1000 ),.AddressWidth( 10 ))
v9090_U(.clk(ap_clk),.reset(ap_rst),.address0(v9090_address0),.ce0(v9090_ce0_local),.q0(v9090_q0));
forward_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOEe0 #(.DataWidth( 8 ),.AddressRange( 1000 ),.AddressWidth( 10 ))
v65_U(.clk(ap_clk),.reset(ap_rst),.address0(v8_addr_reg_621_pp0_iter7_reg),.ce0(v65_ce0_local),.we0(v65_we0_local),.d0(v36_fu_417_p2),.address1(v65_address1),.ce1(v65_ce1_local),.q1(v65_q1));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U10180(.din0(v70_3_q0),.din1(v71_3_q0),.dout(mul_ln83_1_fu_398_p2));
forward_mac_muladd_5ns_3ns_5ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.din2_WIDTH( 5 ),.dout_WIDTH( 8 ))
mac_muladd_5ns_3ns_5ns_8_4_1_U10181(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_432_p0),.din1(grp_fu_432_p1),.din2(grp_fu_432_p2),.ce(1'b1),.dout(grp_fu_432_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U10182(.clk(ap_clk),.reset(ap_rst),.din0(v70_2_q0),.din1(v71_2_q0),.din2(mul_ln83_1_reg_611),.ce(1'b1),.dout(grp_fu_441_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U10183(.clk(ap_clk),.reset(ap_rst),.din0(v70_q0),.din1(v71_q0),.din2(grp_fu_441_p3),.ce(1'b1),.dout(grp_fu_448_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U10184(.clk(ap_clk),.reset(ap_rst),.din0(v70_1_q0),.din1(v71_1_q0),.din2(v65_q1),.ce(1'b1),.dout(grp_fu_457_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten63_fu_84 <= add_ln57_1_fu_348_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten63_fu_84 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1264_fu_88 <= v12_fu_306_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1264_fu_88 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1365_fu_92 <= v13_fu_354_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v1365_fu_92 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp62_i_i_reg_509 <= cmp62_i_i_fu_342_p2;
        cmp62_i_i_reg_509_pp0_iter1_reg <= cmp62_i_i_reg_509;
        icmp_ln57_reg_518 <= icmp_ln57_fu_366_p2;
        lshr_ln_reg_499 <= {{v12_fu_306_p3[4:2]}};
        lshr_ln_reg_499_pp0_iter1_reg <= lshr_ln_reg_499;
        select_ln57_reg_492 <= select_ln57_fu_298_p3;
        select_ln57_reg_492_pp0_iter1_reg <= select_ln57_reg_492;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        cmp62_i_i_reg_509_pp0_iter2_reg <= cmp62_i_i_reg_509_pp0_iter1_reg;
        cmp62_i_i_reg_509_pp0_iter3_reg <= cmp62_i_i_reg_509_pp0_iter2_reg;
        cmp62_i_i_reg_509_pp0_iter4_reg <= cmp62_i_i_reg_509_pp0_iter3_reg;
        cmp62_i_i_reg_509_pp0_iter5_reg <= cmp62_i_i_reg_509_pp0_iter4_reg;
        cmp62_i_i_reg_509_pp0_iter6_reg <= cmp62_i_i_reg_509_pp0_iter5_reg;
        cmp62_i_i_reg_509_pp0_iter7_reg <= cmp62_i_i_reg_509_pp0_iter6_reg;
        cmp62_i_i_reg_509_pp0_iter8_reg <= cmp62_i_i_reg_509_pp0_iter7_reg;
        lshr_ln_reg_499_pp0_iter2_reg <= lshr_ln_reg_499_pp0_iter1_reg;
        mul_ln83_1_reg_611 <= mul_ln83_1_fu_398_p2;
        select_ln57_reg_492_pp0_iter2_reg <= select_ln57_reg_492_pp0_iter1_reg;
        select_ln57_reg_492_pp0_iter3_reg <= select_ln57_reg_492_pp0_iter2_reg;
        select_ln57_reg_492_pp0_iter4_reg <= select_ln57_reg_492_pp0_iter3_reg;
        select_ln57_reg_492_pp0_iter5_reg <= select_ln57_reg_492_pp0_iter4_reg;
        select_ln57_reg_492_pp0_iter6_reg <= select_ln57_reg_492_pp0_iter5_reg;
        select_ln57_reg_492_pp0_iter7_reg <= select_ln57_reg_492_pp0_iter6_reg;
        select_ln57_reg_492_pp0_iter8_reg <= select_ln57_reg_492_pp0_iter7_reg;
        v36_reg_637 <= v36_fu_417_p2;
        v8_addr_reg_621 <= zext_ln80_fu_412_p1;
        v8_addr_reg_621_pp0_iter7_reg <= v8_addr_reg_621;
        zext_ln57_reg_527[2 : 0] <= zext_ln57_fu_390_p1[2 : 0];
        zext_ln62_2_reg_539[7 : 0] <= zext_ln62_2_fu_394_p1[7 : 0];
        zext_ln80_reg_616[9 : 0] <= zext_ln80_fu_412_p1[9 : 0];
        zext_ln80_reg_616_pp0_iter7_reg[9 : 0] <= zext_ln80_reg_616[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln59_reg_513 <= icmp_ln59_fu_360_p2;
    end
end
always @ (*) begin
    if (((icmp_ln57_fu_366_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_511)) begin
            ap_phi_mux_icmp_ln5966_phi_fu_261_p4 = icmp_ln59_reg_513;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln5966_phi_fu_261_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln5966_phi_fu_261_p4 = icmp_ln59_reg_513;
        end
    end else begin
        ap_phi_mux_icmp_ln5966_phi_fu_261_p4 = icmp_ln59_reg_513;
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
        ap_sig_allocacmp_indvar_flatten63_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten63_load = indvar_flatten63_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1264_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1264_load = v1264_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1365_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1365_load = v1365_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v65_ce0_local = 1'b1;
    end else begin
        v65_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v65_ce1_local = 1'b1;
    end else begin
        v65_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v65_we0_local = 1'b1;
    end else begin
        v65_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v69_ce0_local = 1'b1;
    end else begin
        v69_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (cmp62_i_i_reg_509_pp0_iter8_reg == 1'd1))) begin
        v69_we0_local = 1'b1;
    end else begin
        v69_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v70_1_ce0_local = 1'b1;
    end else begin
        v70_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v70_2_ce0_local = 1'b1;
    end else begin
        v70_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v70_3_ce0_local = 1'b1;
    end else begin
        v70_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v70_ce0_local = 1'b1;
    end else begin
        v70_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v71_1_ce0_local = 1'b1;
    end else begin
        v71_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v71_2_ce0_local = 1'b1;
    end else begin
        v71_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v71_3_ce0_local = 1'b1;
    end else begin
        v71_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v71_ce0_local = 1'b1;
    end else begin
        v71_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v9090_ce0_local = 1'b1;
    end else begin
        v9090_ce0_local = 1'b0;
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
assign add_ln57_1_fu_348_p2 = (ap_sig_allocacmp_indvar_flatten63_load + 8'd1);
assign add_ln57_fu_292_p2 = (ap_sig_allocacmp_v1264_load + 6'd4);
assign add_ln80_fu_407_p2 = (mul_ln109 + zext_ln59_1_fu_404_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_511 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln57_reg_518 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign cmp62_i_i_fu_342_p2 = ((empty_fu_336_p2 == 13'd4100) ? 1'b1 : 1'b0);
assign empty_fu_336_p2 = (mul59_i_i - v12_cast5_cast_i_fu_332_p1);
assign grp_fu_432_p0 = 8'd25;
assign grp_fu_432_p1 = grp_fu_432_p10;
assign grp_fu_432_p10 = lshr_ln_fu_318_p4;
assign grp_fu_432_p2 = grp_fu_432_p20;
assign grp_fu_432_p20 = select_ln57_reg_492_pp0_iter1_reg;
assign icmp_ln57_fu_366_p2 = ((ap_sig_allocacmp_indvar_flatten63_load == 8'd199) ? 1'b1 : 1'b0);
assign icmp_ln59_fu_360_p2 = ((v13_fu_354_p2 == 5'd25) ? 1'b1 : 1'b0);
assign lshr_ln_fu_318_p4 = {{v12_fu_306_p3[4:2]}};
assign select_ln57_fu_298_p3 = ((ap_phi_mux_icmp_ln5966_phi_fu_261_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1365_load);
assign trunc_ln57_fu_314_p1 = v12_fu_306_p3[4:0];
assign v12_cast5_cast_i_fu_332_p1 = trunc_ln57_fu_314_p1;
assign v12_fu_306_p3 = ((ap_phi_mux_icmp_ln5966_phi_fu_261_p4[0:0] == 1'b1) ? add_ln57_fu_292_p2 : ap_sig_allocacmp_v1264_load);
assign v13_fu_354_p2 = (select_ln57_fu_298_p3 + 5'd1);
assign v36_fu_417_p0 = grp_fu_448_p3;
assign v36_fu_417_p1 = grp_fu_457_p3;
assign v36_fu_417_p2 = ($signed(v36_fu_417_p0) + $signed(v36_fu_417_p1));
assign v41_fu_426_p2 = (v9090_q0 + v36_reg_637);
assign v65_address1 = zext_ln80_fu_412_p1;
assign v69_address0 = zext_ln59_fu_422_p1;
assign v69_ce0 = v69_ce0_local;
assign v69_d0 = v41_fu_426_p2;
assign v69_we0 = v69_we0_local;
assign v70_1_address0 = zext_ln62_2_reg_539;
assign v70_1_ce0 = v70_1_ce0_local;
assign v70_2_address0 = zext_ln62_2_fu_394_p1;
assign v70_2_ce0 = v70_2_ce0_local;
assign v70_3_address0 = zext_ln62_2_reg_539;
assign v70_3_ce0 = v70_3_ce0_local;
assign v70_address0 = zext_ln62_2_reg_539;
assign v70_ce0 = v70_ce0_local;
assign v71_1_address0 = zext_ln57_reg_527;
assign v71_1_ce0 = v71_1_ce0_local;
assign v71_2_address0 = zext_ln57_fu_390_p1;
assign v71_2_ce0 = v71_2_ce0_local;
assign v71_3_address0 = zext_ln57_reg_527;
assign v71_3_ce0 = v71_3_ce0_local;
assign v71_address0 = zext_ln57_reg_527;
assign v71_ce0 = v71_ce0_local;
assign v9090_address0 = zext_ln80_reg_616_pp0_iter7_reg;
assign zext_ln57_fu_390_p1 = lshr_ln_reg_499_pp0_iter2_reg;
assign zext_ln59_1_fu_404_p1 = select_ln57_reg_492_pp0_iter5_reg;
assign zext_ln59_fu_422_p1 = select_ln57_reg_492_pp0_iter8_reg;
assign zext_ln62_2_fu_394_p1 = grp_fu_432_p3;
assign zext_ln80_fu_412_p1 = add_ln80_fu_407_p2;
always @ (posedge ap_clk) begin
    zext_ln57_reg_527[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln62_2_reg_539[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln80_reg_616[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln80_reg_616_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
