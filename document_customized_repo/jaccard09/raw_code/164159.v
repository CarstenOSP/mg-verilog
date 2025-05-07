module forward_dataflow_in_loop_VITIS_LOOP_18263_1_Loop_VITIS_LOOP_18177_1_proc68 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v14172_address0,v14172_ce0,v14172_we0,v14172_d0,v14172_1_address0,v14172_1_ce0,v14172_1_we0,v14172_1_d0,v14172_2_address0,v14172_2_ce0,v14172_2_we0,v14172_2_d0,v14172_3_address0,v14172_3_ce0,v14172_3_we0,v14172_3_d0,v14166_0,v15444_0_0_address0,v15444_0_0_ce0,v15444_0_0_q0,v15444_0_1_address0,v15444_0_1_ce0,v15444_0_1_q0,v15444_1_0_address0,v15444_1_0_ce0,v15444_1_0_q0,v15444_1_1_address0,v15444_1_1_ce0,v15444_1_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [12:0] v14172_address0;
output   v14172_ce0;
output   v14172_we0;
output  [7:0] v14172_d0;
output  [12:0] v14172_1_address0;
output   v14172_1_ce0;
output   v14172_1_we0;
output  [7:0] v14172_1_d0;
output  [12:0] v14172_2_address0;
output   v14172_2_ce0;
output   v14172_2_we0;
output  [7:0] v14172_2_d0;
output  [12:0] v14172_3_address0;
output   v14172_3_ce0;
output   v14172_3_we0;
output  [7:0] v14172_3_d0;
input  [7:0] v14166_0;
output  [16:0] v15444_0_0_address0;
output   v15444_0_0_ce0;
input  [7:0] v15444_0_0_q0;
output  [16:0] v15444_0_1_address0;
output   v15444_0_1_ce0;
input  [7:0] v15444_0_1_q0;
output  [16:0] v15444_1_0_address0;
output   v15444_1_0_ce0;
input  [7:0] v15444_1_0_q0;
output  [16:0] v15444_1_1_address0;
output   v15444_1_1_ce0;
input  [7:0] v15444_1_1_q0;
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
wire   [0:0] icmp_ln18177_fu_376_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [6:0] mul_i_fu_290_p3;
reg   [6:0] mul_i_reg_852;
wire   [5:0] zext_ln18228_cast_cast_cast_cast_fu_306_p3;
reg   [5:0] zext_ln18228_cast_cast_cast_cast_reg_857;
wire   [4:0] p_udiv4_cast_cast_cast_cast_fu_314_p3;
reg   [4:0] p_udiv4_cast_cast_cast_cast_reg_862;
wire   [5:0] zext_ln18228_4_cast_cast_cast_cast_fu_326_p3;
reg   [5:0] zext_ln18228_4_cast_cast_cast_cast_reg_867;
wire   [4:0] p_udiv6_cast_cast_cast_cast_fu_334_p3;
reg   [4:0] p_udiv6_cast_cast_cast_cast_reg_872;
reg   [4:0] p_udiv6_cast_cast_cast_cast_reg_872_pp0_iter1_reg;
reg   [0:0] icmp_ln18177_reg_877;
reg   [0:0] icmp_ln18177_reg_877_pp0_iter1_reg;
wire   [5:0] v14132_fu_427_p3;
reg   [5:0] v14132_reg_881;
wire   [3:0] lshr_ln_fu_496_p4;
reg   [3:0] lshr_ln_reg_887;
wire   [11:0] add_ln18182_1_fu_524_p2;
reg   [11:0] add_ln18182_1_reg_892;
wire   [11:0] add_ln18186_fu_544_p2;
reg   [11:0] add_ln18186_reg_898;
reg   [3:0] lshr_ln36_reg_904;
reg   [4:0] lshr_ln37_reg_910;
wire   [0:0] icmp_ln18179_fu_599_p2;
reg   [0:0] icmp_ln18179_reg_915;
wire   [0:0] icmp_ln18178_fu_605_p2;
reg   [0:0] icmp_ln18178_reg_920;
wire   [12:0] add_ln18188_1_fu_748_p2;
reg   [12:0] add_ln18188_1_reg_925;
reg   [0:0] ap_phi_mux_icmp_ln1817851_phi_fu_262_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1817950_phi_fu_273_p4;
wire   [63:0] zext_ln18182_4_fu_769_p1;
wire   [63:0] zext_ln18186_2_fu_780_p1;
wire   [63:0] zext_ln18184_1_fu_794_p1;
wire   [63:0] zext_ln18188_5_fu_805_p1;
wire   [63:0] zext_ln18188_4_fu_810_p1;
reg   [12:0] indvar_flatten1245_fu_124;
wire   [12:0] add_ln18177_1_fu_370_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten1245_load;
reg   [5:0] v1413246_fu_128;
reg   [7:0] indvar_flatten47_fu_132;
wire   [7:0] select_ln18178_1_fu_591_p3;
reg   [4:0] v1413348_fu_136;
wire   [4:0] v14133_fu_449_p3;
reg   [4:0] v1413449_fu_140;
wire   [4:0] v14134_fu_579_p2;
reg    v15444_0_0_ce0_local;
reg    v15444_0_1_ce0_local;
reg    v15444_1_0_ce0_local;
reg    v15444_1_1_ce0_local;
reg    v14172_3_we0_local;
reg    v14172_3_ce0_local;
reg    v14172_2_we0_local;
reg    v14172_2_ce0_local;
reg    v14172_1_we0_local;
reg    v14172_1_ce0_local;
reg    v14172_we0_local;
reg    v14172_ce0_local;
wire   [1:0] tmp_fu_280_p4;
wire   [0:0] tmp_212_fu_298_p3;
wire   [0:0] empty_fu_322_p1;
wire   [5:0] add_ln18177_fu_399_p2;
wire   [4:0] select_ln18177_fu_405_p3;
wire   [0:0] or_ln18177_fu_421_p2;
wire   [4:0] select_ln18177_1_fu_413_p3;
wire   [4:0] add_ln18178_fu_435_p2;
wire   [6:0] zext_ln18177_fu_457_p1;
wire   [6:0] empty_273_fu_461_p2;
wire   [8:0] tmp_214_fu_474_p3;
wire   [11:0] p_shl87_fu_466_p3;
wire   [11:0] zext_ln18182_fu_482_p1;
wire   [5:0] zext_ln18178_fu_492_p1;
wire   [4:0] zext_ln18178_1_fu_506_p1;
wire   [4:0] empty_275_fu_515_p2;
wire   [11:0] sub_ln18182_fu_486_p2;
wire   [11:0] zext_ln18182_1_fu_520_p1;
wire   [5:0] empty_274_fu_510_p2;
wire   [4:0] tmp_s_fu_530_p4;
wire   [11:0] zext_ln18186_fu_540_p1;
wire   [4:0] v14134_mid2_fu_441_p3;
wire   [5:0] zext_ln18179_fu_550_p1;
wire   [5:0] add_ln18181_fu_564_p2;
wire   [7:0] add_ln18178_1_fu_585_p2;
wire   [6:0] tmp_213_fu_638_p3;
wire   [9:0] p_shl89_fu_631_p3;
wire   [9:0] zext_ln18188_fu_645_p1;
wire   [9:0] sub_ln18188_fu_649_p2;
wire   [9:0] zext_ln18188_1_fu_655_p1;
wire   [9:0] add_ln18188_fu_658_p2;
wire   [8:0] trunc_ln18188_fu_664_p1;
wire   [10:0] tmp_215_fu_668_p3;
wire   [12:0] tmp_216_fu_676_p3;
wire   [12:0] zext_ln18188_2_fu_684_p1;
wire   [13:0] tmp_217_fu_701_p3;
wire   [16:0] p_shl83_fu_694_p3;
wire   [16:0] zext_ln18182_2_fu_708_p1;
wire   [13:0] tmp_218_fu_725_p3;
wire   [16:0] p_shl_fu_718_p3;
wire   [16:0] zext_ln18186_1_fu_732_p1;
wire   [12:0] sub_ln18188_1_fu_688_p2;
wire   [12:0] zext_ln18188_3_fu_745_p1;
wire   [4:0] zext_ln18179_1_fu_742_p1;
wire   [4:0] add_ln18182_fu_754_p2;
wire   [16:0] sub_ln18182_1_fu_712_p2;
wire   [16:0] zext_ln18182_3_fu_759_p1;
wire   [16:0] add_ln18182_2_fu_763_p2;
wire   [16:0] sub_ln18186_fu_736_p2;
wire   [16:0] add_ln18186_1_fu_774_p2;
wire   [16:0] zext_ln18184_fu_785_p1;
wire   [16:0] add_ln18184_fu_788_p2;
wire   [16:0] add_ln18188_2_fu_799_p2;
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
reg    ap_condition_202;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1245_fu_124 = 13'd0;
#0 v1413246_fu_128 = 6'd0;
#0 indvar_flatten47_fu_132 = 8'd0;
#0 v1413348_fu_136 = 5'd0;
#0 v1413449_fu_140 = 5'd0;
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
    if ((1'b1 == ap_condition_202)) begin
        indvar_flatten1245_fu_124 <= add_ln18177_1_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten47_fu_132 <= 8'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten47_fu_132 <= select_ln18178_1_fu_591_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1413246_fu_128 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1413246_fu_128 <= v14132_fu_427_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1413348_fu_136 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1413348_fu_136 <= v14133_fu_449_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1413449_fu_140 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1413449_fu_140 <= v14134_fu_579_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18182_1_reg_892 <= add_ln18182_1_fu_524_p2;
        add_ln18186_reg_898 <= add_ln18186_fu_544_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln18177_reg_877 <= icmp_ln18177_fu_376_p2;
        icmp_ln18177_reg_877_pp0_iter1_reg <= icmp_ln18177_reg_877;
        lshr_ln36_reg_904 <= {{v14134_mid2_fu_441_p3[4:1]}};
        lshr_ln37_reg_910 <= {{add_ln18181_fu_564_p2[5:1]}};
        lshr_ln_reg_887 <= {{v14133_fu_449_p3[4:1]}};
        mul_i_reg_852[6 : 5] <= mul_i_fu_290_p3[6 : 5];
        p_udiv4_cast_cast_cast_cast_reg_862[3 : 1] <= p_udiv4_cast_cast_cast_cast_fu_314_p3[3 : 1];
        p_udiv6_cast_cast_cast_cast_reg_872[3 : 1] <= p_udiv6_cast_cast_cast_cast_fu_334_p3[3 : 1];
        p_udiv6_cast_cast_cast_cast_reg_872_pp0_iter1_reg[3 : 1] <= p_udiv6_cast_cast_cast_cast_reg_872[3 : 1];
        v14132_reg_881 <= v14132_fu_427_p3;
        zext_ln18228_4_cast_cast_cast_cast_reg_867[4 : 2] <= zext_ln18228_4_cast_cast_cast_cast_fu_326_p3[4 : 2];
        zext_ln18228_cast_cast_cast_cast_reg_857[4 : 2] <= zext_ln18228_cast_cast_cast_cast_fu_306_p3[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln18188_1_reg_925 <= add_ln18188_1_fu_748_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18178_reg_920 <= icmp_ln18178_fu_605_p2;
        icmp_ln18179_reg_915 <= icmp_ln18179_fu_599_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18177_fu_376_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18177_reg_877_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1817851_phi_fu_262_p4 = icmp_ln18178_reg_920;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1817851_phi_fu_262_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1817851_phi_fu_262_p4 = icmp_ln18178_reg_920;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18177_reg_877_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1817950_phi_fu_273_p4 = icmp_ln18179_reg_915;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1817950_phi_fu_273_p4 = 1'd1;
    end else begin
        ap_phi_mux_icmp_ln1817950_phi_fu_273_p4 = icmp_ln18179_reg_915;
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
        ap_sig_allocacmp_indvar_flatten1245_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1245_load = indvar_flatten1245_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14172_1_ce0_local = 1'b1;
    end else begin
        v14172_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14172_1_we0_local = 1'b1;
    end else begin
        v14172_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14172_2_ce0_local = 1'b1;
    end else begin
        v14172_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14172_2_we0_local = 1'b1;
    end else begin
        v14172_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14172_3_ce0_local = 1'b1;
    end else begin
        v14172_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14172_3_we0_local = 1'b1;
    end else begin
        v14172_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14172_ce0_local = 1'b1;
    end else begin
        v14172_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14172_we0_local = 1'b1;
    end else begin
        v14172_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15444_0_0_ce0_local = 1'b1;
    end else begin
        v15444_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15444_0_1_ce0_local = 1'b1;
    end else begin
        v15444_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15444_1_0_ce0_local = 1'b1;
    end else begin
        v15444_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15444_1_1_ce0_local = 1'b1;
    end else begin
        v15444_1_1_ce0_local = 1'b0;
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
assign add_ln18177_1_fu_370_p2 = (ap_sig_allocacmp_indvar_flatten1245_load + 13'd1);
assign add_ln18177_fu_399_p2 = (v1413246_fu_128 + 6'd1);
assign add_ln18178_1_fu_585_p2 = (indvar_flatten47_fu_132 + 8'd1);
assign add_ln18178_fu_435_p2 = (select_ln18177_fu_405_p3 + 5'd2);
assign add_ln18181_fu_564_p2 = (zext_ln18228_4_cast_cast_cast_cast_reg_867 + zext_ln18179_fu_550_p1);
assign add_ln18182_1_fu_524_p2 = (sub_ln18182_fu_486_p2 + zext_ln18182_1_fu_520_p1);
assign add_ln18182_2_fu_763_p2 = (sub_ln18182_1_fu_712_p2 + zext_ln18182_3_fu_759_p1);
assign add_ln18182_fu_754_p2 = (zext_ln18179_1_fu_742_p1 + p_udiv6_cast_cast_cast_cast_reg_872_pp0_iter1_reg);
assign add_ln18184_fu_788_p2 = (sub_ln18182_1_fu_712_p2 + zext_ln18184_fu_785_p1);
assign add_ln18186_1_fu_774_p2 = (sub_ln18186_fu_736_p2 + zext_ln18182_3_fu_759_p1);
assign add_ln18186_fu_544_p2 = (sub_ln18182_fu_486_p2 + zext_ln18186_fu_540_p1);
assign add_ln18188_1_fu_748_p2 = (sub_ln18188_1_fu_688_p2 + zext_ln18188_3_fu_745_p1);
assign add_ln18188_2_fu_799_p2 = (sub_ln18186_fu_736_p2 + zext_ln18184_fu_785_p1);
assign add_ln18188_fu_658_p2 = (sub_ln18188_fu_649_p2 + zext_ln18188_1_fu_655_p1);
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
    ap_condition_202 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_273_fu_461_p2 = (mul_i_reg_852 + zext_ln18177_fu_457_p1);
assign empty_274_fu_510_p2 = (zext_ln18228_cast_cast_cast_cast_reg_857 + zext_ln18178_fu_492_p1);
assign empty_275_fu_515_p2 = (zext_ln18178_1_fu_506_p1 + p_udiv4_cast_cast_cast_cast_reg_862);
assign empty_fu_322_p1 = v14166_0[0:0];
assign icmp_ln18177_fu_376_p2 = ((ap_sig_allocacmp_indvar_flatten1245_load == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln18178_fu_605_p2 = ((select_ln18178_1_fu_591_p3 == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln18179_fu_599_p2 = ((v14134_fu_579_p2 < 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln_fu_496_p4 = {{v14133_fu_449_p3[4:1]}};
assign mul_i_fu_290_p3 = {{tmp_fu_280_p4}, {5'd0}};
assign or_ln18177_fu_421_p2 = (ap_phi_mux_icmp_ln1817950_phi_fu_273_p4 | ap_phi_mux_icmp_ln1817851_phi_fu_262_p4);
assign p_shl83_fu_694_p3 = {{add_ln18182_1_reg_892}, {5'd0}};
assign p_shl87_fu_466_p3 = {{empty_273_fu_461_p2}, {5'd0}};
assign p_shl89_fu_631_p3 = {{v14132_reg_881}, {4'd0}};
assign p_shl_fu_718_p3 = {{add_ln18186_reg_898}, {5'd0}};
assign p_udiv4_cast_cast_cast_cast_fu_314_p3 = ((tmp_212_fu_298_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign p_udiv6_cast_cast_cast_cast_fu_334_p3 = ((empty_fu_322_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign select_ln18177_1_fu_413_p3 = ((ap_phi_mux_icmp_ln1817851_phi_fu_262_p4[0:0] == 1'b1) ? 5'd0 : v1413449_fu_140);
assign select_ln18177_fu_405_p3 = ((ap_phi_mux_icmp_ln1817851_phi_fu_262_p4[0:0] == 1'b1) ? 5'd0 : v1413348_fu_136);
assign select_ln18178_1_fu_591_p3 = ((ap_phi_mux_icmp_ln1817851_phi_fu_262_p4[0:0] == 1'b1) ? 8'd1 : add_ln18178_1_fu_585_p2);
assign sub_ln18182_1_fu_712_p2 = (p_shl83_fu_694_p3 - zext_ln18182_2_fu_708_p1);
assign sub_ln18182_fu_486_p2 = (p_shl87_fu_466_p3 - zext_ln18182_fu_482_p1);
assign sub_ln18186_fu_736_p2 = (p_shl_fu_718_p3 - zext_ln18186_1_fu_732_p1);
assign sub_ln18188_1_fu_688_p2 = (tmp_216_fu_676_p3 - zext_ln18188_2_fu_684_p1);
assign sub_ln18188_fu_649_p2 = (p_shl89_fu_631_p3 - zext_ln18188_fu_645_p1);
assign tmp_212_fu_298_p3 = v14166_0[32'd1];
assign tmp_213_fu_638_p3 = {{v14132_reg_881}, {1'd0}};
assign tmp_214_fu_474_p3 = {{empty_273_fu_461_p2}, {2'd0}};
assign tmp_215_fu_668_p3 = {{add_ln18188_fu_658_p2}, {1'd0}};
assign tmp_216_fu_676_p3 = {{trunc_ln18188_fu_664_p1}, {4'd0}};
assign tmp_217_fu_701_p3 = {{add_ln18182_1_reg_892}, {2'd0}};
assign tmp_218_fu_725_p3 = {{add_ln18186_reg_898}, {2'd0}};
assign tmp_fu_280_p4 = {{v14166_0[3:2]}};
assign tmp_s_fu_530_p4 = {{empty_274_fu_510_p2[5:1]}};
assign trunc_ln18188_fu_664_p1 = add_ln18188_fu_658_p2[8:0];
assign v14132_fu_427_p3 = ((ap_phi_mux_icmp_ln1817851_phi_fu_262_p4[0:0] == 1'b1) ? add_ln18177_fu_399_p2 : v1413246_fu_128);
assign v14133_fu_449_p3 = ((or_ln18177_fu_421_p2[0:0] == 1'b1) ? select_ln18177_fu_405_p3 : add_ln18178_fu_435_p2);
assign v14134_fu_579_p2 = (v14134_mid2_fu_441_p3 + 5'd2);
assign v14134_mid2_fu_441_p3 = ((or_ln18177_fu_421_p2[0:0] == 1'b1) ? select_ln18177_1_fu_413_p3 : 5'd0);
assign v14172_1_address0 = zext_ln18188_4_fu_810_p1;
assign v14172_1_ce0 = v14172_1_ce0_local;
assign v14172_1_d0 = v15444_1_0_q0;
assign v14172_1_we0 = v14172_1_we0_local;
assign v14172_2_address0 = zext_ln18188_4_fu_810_p1;
assign v14172_2_ce0 = v14172_2_ce0_local;
assign v14172_2_d0 = v15444_0_1_q0;
assign v14172_2_we0 = v14172_2_we0_local;
assign v14172_3_address0 = zext_ln18188_4_fu_810_p1;
assign v14172_3_ce0 = v14172_3_ce0_local;
assign v14172_3_d0 = v15444_0_0_q0;
assign v14172_3_we0 = v14172_3_we0_local;
assign v14172_address0 = zext_ln18188_4_fu_810_p1;
assign v14172_ce0 = v14172_ce0_local;
assign v14172_d0 = v15444_1_1_q0;
assign v14172_we0 = v14172_we0_local;
assign v15444_0_0_address0 = zext_ln18182_4_fu_769_p1;
assign v15444_0_0_ce0 = v15444_0_0_ce0_local;
assign v15444_0_1_address0 = zext_ln18184_1_fu_794_p1;
assign v15444_0_1_ce0 = v15444_0_1_ce0_local;
assign v15444_1_0_address0 = zext_ln18186_2_fu_780_p1;
assign v15444_1_0_ce0 = v15444_1_0_ce0_local;
assign v15444_1_1_address0 = zext_ln18188_5_fu_805_p1;
assign v15444_1_1_ce0 = v15444_1_1_ce0_local;
assign zext_ln18177_fu_457_p1 = v14132_fu_427_p3;
assign zext_ln18178_1_fu_506_p1 = lshr_ln_fu_496_p4;
assign zext_ln18178_fu_492_p1 = v14133_fu_449_p3;
assign zext_ln18179_1_fu_742_p1 = lshr_ln36_reg_904;
assign zext_ln18179_fu_550_p1 = v14134_mid2_fu_441_p3;
assign zext_ln18182_1_fu_520_p1 = empty_275_fu_515_p2;
assign zext_ln18182_2_fu_708_p1 = tmp_217_fu_701_p3;
assign zext_ln18182_3_fu_759_p1 = add_ln18182_fu_754_p2;
assign zext_ln18182_4_fu_769_p1 = add_ln18182_2_fu_763_p2;
assign zext_ln18182_fu_482_p1 = tmp_214_fu_474_p3;
assign zext_ln18184_1_fu_794_p1 = add_ln18184_fu_788_p2;
assign zext_ln18184_fu_785_p1 = lshr_ln37_reg_910;
assign zext_ln18186_1_fu_732_p1 = tmp_218_fu_725_p3;
assign zext_ln18186_2_fu_780_p1 = add_ln18186_1_fu_774_p2;
assign zext_ln18186_fu_540_p1 = tmp_s_fu_530_p4;
assign zext_ln18188_1_fu_655_p1 = lshr_ln_reg_887;
assign zext_ln18188_2_fu_684_p1 = tmp_215_fu_668_p3;
assign zext_ln18188_3_fu_745_p1 = lshr_ln36_reg_904;
assign zext_ln18188_4_fu_810_p1 = add_ln18188_1_reg_925;
assign zext_ln18188_5_fu_805_p1 = add_ln18188_2_fu_799_p2;
assign zext_ln18188_fu_645_p1 = tmp_213_fu_638_p3;
assign zext_ln18228_4_cast_cast_cast_cast_fu_326_p3 = ((empty_fu_322_p1[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign zext_ln18228_cast_cast_cast_cast_fu_306_p3 = ((tmp_212_fu_298_p3[0:0] == 1'b1) ? 6'd28 : 6'd0);
always @ (posedge ap_clk) begin
    mul_i_reg_852[4:0] <= 5'b00000;
    zext_ln18228_cast_cast_cast_cast_reg_857[1:0] <= 2'b00;
    zext_ln18228_cast_cast_cast_cast_reg_857[5] <= 1'b0;
    p_udiv4_cast_cast_cast_cast_reg_862[0] <= 1'b0;
    p_udiv4_cast_cast_cast_cast_reg_862[4] <= 1'b0;
    zext_ln18228_4_cast_cast_cast_cast_reg_867[1:0] <= 2'b00;
    zext_ln18228_4_cast_cast_cast_cast_reg_867[5] <= 1'b0;
    p_udiv6_cast_cast_cast_cast_reg_872[0] <= 1'b0;
    p_udiv6_cast_cast_cast_cast_reg_872[4] <= 1'b0;
    p_udiv6_cast_cast_cast_cast_reg_872_pp0_iter1_reg[0] <= 1'b0;
    p_udiv6_cast_cast_cast_cast_reg_872_pp0_iter1_reg[4] <= 1'b0;
end
endmodule 