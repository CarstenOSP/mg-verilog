
module forward_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_Pipeline_VITIS_LOOP_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_ln97,v55_address0,v55_ce0,v55_we0,v55_d0,v56_1_address0,v56_1_ce0,v56_1_q0,v56_address0,v56_ce0,v56_q0,v57_1_address0,v57_1_ce0,v57_1_q0,v57_address0,v57_ce0,v57_q0,mul27_i_i);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [9:0] mul_ln97;
output  [4:0] v55_address0;
output   v55_ce0;
output   v55_we0;
output  [7:0] v55_d0;
output  [8:0] v56_1_address0;
output   v56_1_ce0;
input  [7:0] v56_1_q0;
output  [8:0] v56_address0;
output   v56_ce0;
input  [7:0] v56_q0;
output  [3:0] v57_1_address0;
output   v57_1_ce0;
input  [7:0] v57_1_q0;
output  [3:0] v57_address0;
output   v57_ce0;
input  [7:0] v57_q0;
input  [10:0] mul27_i_i;
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
wire   [0:0] icmp_ln55_fu_276_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [9:0] v15624_address0;
wire   [7:0] v15624_q0;
reg   [0:0] icmp_ln5637_reg_180;
reg   [0:0] icmp_ln5637_reg_180_pp0_iter1_reg;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] lshr_ln39_fu_224_p4;
reg   [3:0] lshr_ln39_reg_417;
reg   [3:0] lshr_ln39_reg_417_pp0_iter1_reg;
reg   [3:0] lshr_ln39_reg_417_pp0_iter2_reg;
wire   [0:0] icmp_ln78_fu_244_p2;
reg   [0:0] icmp_ln78_reg_427;
reg   [0:0] icmp_ln78_reg_427_pp0_iter1_reg;
reg   [0:0] icmp_ln78_reg_427_pp0_iter2_reg;
reg   [0:0] icmp_ln78_reg_427_pp0_iter3_reg;
reg   [0:0] icmp_ln78_reg_427_pp0_iter4_reg;
reg   [0:0] icmp_ln78_reg_427_pp0_iter5_reg;
reg   [0:0] icmp_ln78_reg_427_pp0_iter6_reg;
reg   [0:0] icmp_ln78_reg_427_pp0_iter7_reg;
wire   [0:0] xor_ln56_fu_270_p2;
reg   [0:0] xor_ln56_reg_431;
reg   [0:0] icmp_ln55_reg_436;
wire   [4:0] v12_fu_301_p3;
reg   [4:0] v12_reg_440;
reg   [4:0] v12_reg_440_pp0_iter3_reg;
reg   [4:0] v12_reg_440_pp0_iter4_reg;
reg   [4:0] v12_reg_440_pp0_iter5_reg;
reg   [4:0] v12_reg_440_pp0_iter6_reg;
reg   [4:0] v12_reg_440_pp0_iter7_reg;
wire   [63:0] zext_ln39_2_fu_318_p1;
reg   [63:0] zext_ln39_2_reg_451;
wire   [63:0] zext_ln60_1_fu_322_p1;
reg   [63:0] zext_ln60_1_reg_456;
wire   [7:0] mul_ln71_fu_326_p2;
reg   [7:0] mul_ln71_reg_491;
(* use_dsp48 = "no" *) wire   [7:0] v8_fu_348_p2;
reg   [7:0] v8_reg_501;
reg   [0:0] ap_phi_mux_icmp_ln5637_phi_fu_183_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast12_i_fu_343_p1;
wire   [63:0] zext_ln39_1_fu_358_p1;
reg   [8:0] indvar_flatten33_fu_74;
wire   [8:0] add_ln55_1_fu_250_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten33_load;
reg   [4:0] v1234_fu_78;
reg   [5:0] v1335_fu_82;
wire   [5:0] v13_fu_256_p2;
reg   [5:0] ap_sig_allocacmp_v1335_load;
reg   [7:0] v836_fu_86;
reg    v57_1_ce0_local;
reg    v56_1_ce0_local;
reg    v57_ce0_local;
reg    v56_ce0_local;
reg    v15624_ce0_local;
reg    v55_we0_local;
wire   [7:0] v31_fu_362_p2;
reg    v55_ce0_local;
wire   [5:0] select_ln39_fu_212_p3;
wire   [10:0] zext_ln56_fu_220_p1;
wire   [10:0] sub_ln78_fu_238_p2;
wire   [0:0] tmp_fu_262_p3;
wire   [4:0] add_ln55_fu_295_p2;
wire   [8:0] grp_fu_368_p3;
wire   [9:0] zext_ln39_fu_335_p1;
wire   [9:0] empty_fu_338_p2;
wire  signed [7:0] v8_fu_348_p1;
wire   [7:0] grp_fu_377_p3;
wire   [4:0] grp_fu_368_p0;
wire   [3:0] grp_fu_368_p1;
wire   [4:0] grp_fu_368_p2;
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
wire   [8:0] grp_fu_368_p10;
wire   [8:0] grp_fu_368_p20;
reg    ap_condition_428;
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
#0 indvar_flatten33_fu_74 = 9'd0;
#0 v1234_fu_78 = 5'd0;
#0 v1335_fu_82 = 6'd0;
#0 v836_fu_86 = 8'd0;
#0 ap_done_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_Pipeline_VITIS_LOfYi #(.DataWidth( 8 ),.AddressRange( 1000 ),.AddressWidth( 10 ))
v15624_U(.clk(ap_clk),.reset(ap_rst),.address0(v15624_address0),.ce0(v15624_ce0_local),.q0(v15624_q0));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U15022(.din0(v56_q0),.din1(v57_q0),.dout(mul_ln71_fu_326_p2));
forward_mac_muladd_5ns_4ns_5ns_9_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 5 ),.din1_WIDTH( 4 ),.din2_WIDTH( 5 ),.dout_WIDTH( 9 ))
mac_muladd_5ns_4ns_5ns_9_4_1_U15023(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_368_p0),.din1(grp_fu_368_p1),.din2(grp_fu_368_p2),.ce(1'b1),.dout(grp_fu_368_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U15024(.clk(ap_clk),.reset(ap_rst),.din0(v56_1_q0),.din1(v57_1_q0),.din2(mul_ln71_reg_491),.ce(1'b1),.dout(grp_fu_377_p3));
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_433)) begin
            icmp_ln5637_reg_180 <= xor_ln56_reg_431;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln5637_reg_180 <= 1'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten33_fu_74 <= add_ln55_1_fu_250_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten33_fu_74 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v1234_fu_78 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v1234_fu_78 <= v12_fu_301_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1335_fu_82 <= v13_fu_256_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v1335_fu_82 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln55_reg_436 <= icmp_ln55_fu_276_p2;
        icmp_ln5637_reg_180_pp0_iter1_reg <= icmp_ln5637_reg_180;
        icmp_ln78_reg_427 <= icmp_ln78_fu_244_p2;
        icmp_ln78_reg_427_pp0_iter1_reg <= icmp_ln78_reg_427;
        lshr_ln39_reg_417 <= {{select_ln39_fu_212_p3[4:1]}};
        lshr_ln39_reg_417_pp0_iter1_reg <= lshr_ln39_reg_417;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        icmp_ln78_reg_427_pp0_iter2_reg <= icmp_ln78_reg_427_pp0_iter1_reg;
        icmp_ln78_reg_427_pp0_iter3_reg <= icmp_ln78_reg_427_pp0_iter2_reg;
        icmp_ln78_reg_427_pp0_iter4_reg <= icmp_ln78_reg_427_pp0_iter3_reg;
        icmp_ln78_reg_427_pp0_iter5_reg <= icmp_ln78_reg_427_pp0_iter4_reg;
        icmp_ln78_reg_427_pp0_iter6_reg <= icmp_ln78_reg_427_pp0_iter5_reg;
        icmp_ln78_reg_427_pp0_iter7_reg <= icmp_ln78_reg_427_pp0_iter6_reg;
        lshr_ln39_reg_417_pp0_iter2_reg <= lshr_ln39_reg_417_pp0_iter1_reg;
        mul_ln71_reg_491 <= mul_ln71_fu_326_p2;
        v12_reg_440 <= v12_fu_301_p3;
        v12_reg_440_pp0_iter3_reg <= v12_reg_440;
        v12_reg_440_pp0_iter4_reg <= v12_reg_440_pp0_iter3_reg;
        v12_reg_440_pp0_iter5_reg <= v12_reg_440_pp0_iter4_reg;
        v12_reg_440_pp0_iter6_reg <= v12_reg_440_pp0_iter5_reg;
        v12_reg_440_pp0_iter7_reg <= v12_reg_440_pp0_iter6_reg;
        v8_reg_501 <= v8_fu_348_p2;
        zext_ln39_2_reg_451[3 : 0] <= zext_ln39_2_fu_318_p1[3 : 0];
        zext_ln60_1_reg_456[8 : 0] <= zext_ln60_1_fu_322_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v836_fu_86 <= v8_fu_348_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln56_reg_431 <= xor_ln56_fu_270_p2;
    end
end
always @ (*) begin
    if (((icmp_ln55_fu_276_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_428)) begin
            ap_phi_mux_icmp_ln5637_phi_fu_183_p4 = xor_ln56_reg_431;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln5637_phi_fu_183_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln5637_phi_fu_183_p4 = xor_ln56_reg_431;
        end
    end else begin
        ap_phi_mux_icmp_ln5637_phi_fu_183_p4 = xor_ln56_reg_431;
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
        ap_sig_allocacmp_indvar_flatten33_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten33_load = indvar_flatten33_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1335_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1335_load = v1335_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v15624_ce0_local = 1'b1;
    end else begin
        v15624_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln78_reg_427_pp0_iter7_reg == 1'd1))) begin
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
assign add_ln55_1_fu_250_p2 = (ap_sig_allocacmp_indvar_flatten33_load + 9'd1);
assign add_ln55_fu_295_p2 = (v1234_fu_78 + 5'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_428 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln55_reg_436 == 1'd0));
end
always @ (*) begin
    ap_condition_433 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln55_reg_436 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_338_p2 = (mul_ln97 + zext_ln39_fu_335_p1);
assign grp_fu_368_p0 = 9'd25;
assign grp_fu_368_p1 = grp_fu_368_p10;
assign grp_fu_368_p10 = lshr_ln39_fu_224_p4;
assign grp_fu_368_p2 = grp_fu_368_p20;
assign grp_fu_368_p20 = v12_fu_301_p3;
assign icmp_ln55_fu_276_p2 = ((ap_sig_allocacmp_indvar_flatten33_load == 9'd399) ? 1'b1 : 1'b0);
assign icmp_ln78_fu_244_p2 = ((sub_ln78_fu_238_p2 == 11'd1026) ? 1'b1 : 1'b0);
assign lshr_ln39_fu_224_p4 = {{select_ln39_fu_212_p3[4:1]}};
assign p_cast12_i_fu_343_p1 = empty_fu_338_p2;
assign select_ln39_fu_212_p3 = ((ap_phi_mux_icmp_ln5637_phi_fu_183_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1335_load : 6'd0);
assign sub_ln78_fu_238_p2 = (mul27_i_i - zext_ln56_fu_220_p1);
assign tmp_fu_262_p3 = v13_fu_256_p2[32'd5];
assign v12_fu_301_p3 = ((icmp_ln5637_reg_180_pp0_iter1_reg[0:0] == 1'b1) ? v1234_fu_78 : add_ln55_fu_295_p2);
assign v13_fu_256_p2 = (select_ln39_fu_212_p3 + 6'd2);
assign v15624_address0 = p_cast12_i_fu_343_p1;
assign v31_fu_362_p2 = (v15624_q0 + v8_reg_501);
assign v55_address0 = zext_ln39_1_fu_358_p1;
assign v55_ce0 = v55_ce0_local;
assign v55_d0 = v31_fu_362_p2;
assign v55_we0 = v55_we0_local;
assign v56_1_address0 = zext_ln60_1_fu_322_p1;
assign v56_1_ce0 = v56_1_ce0_local;
assign v56_address0 = zext_ln60_1_reg_456;
assign v56_ce0 = v56_ce0_local;
assign v57_1_address0 = zext_ln39_2_fu_318_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_address0 = zext_ln39_2_reg_451;
assign v57_ce0 = v57_ce0_local;
assign v8_fu_348_p1 = grp_fu_377_p3;
assign v8_fu_348_p2 = ($signed(v836_fu_86) + $signed(v8_fu_348_p1));
assign xor_ln56_fu_270_p2 = (tmp_fu_262_p3 ^ 1'd1);
assign zext_ln39_1_fu_358_p1 = v12_reg_440_pp0_iter7_reg;
assign zext_ln39_2_fu_318_p1 = lshr_ln39_reg_417_pp0_iter2_reg;
assign zext_ln39_fu_335_p1 = v12_reg_440_pp0_iter6_reg;
assign zext_ln56_fu_220_p1 = select_ln39_fu_212_p3;
assign zext_ln60_1_fu_322_p1 = grp_fu_368_p3;
always @ (posedge ap_clk) begin
    zext_ln39_2_reg_451[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln60_1_reg_456[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 
