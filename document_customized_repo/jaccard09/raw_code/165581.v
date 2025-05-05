module forward_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v12240_address0,v12240_ce0,v12240_we0,v12240_d0,v12240_1_address0,v12240_1_ce0,v12240_1_we0,v12240_1_d0,v12233,v16176_0_address0,v16176_0_ce0,v16176_0_q0,v16176_1_address0,v16176_1_ce0,v16176_1_q0,v16176_2_address0,v16176_2_ce0,v16176_2_q0,v16176_3_address0,v16176_3_ce0,v16176_3_q0,ap_return); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v12240_address0;
output   v12240_ce0;
output   v12240_we0;
output  [7:0] v12240_d0;
output  [13:0] v12240_1_address0;
output   v12240_1_ce0;
output   v12240_1_we0;
output  [7:0] v12240_1_d0;
input  [4:0] v12233;
output  [17:0] v16176_0_address0;
output   v16176_0_ce0;
input  [7:0] v16176_0_q0;
output  [17:0] v16176_1_address0;
output   v16176_1_ce0;
input  [7:0] v16176_1_q0;
output  [17:0] v16176_2_address0;
output   v16176_2_ce0;
input  [7:0] v16176_2_q0;
output  [17:0] v16176_3_address0;
output   v16176_3_ce0;
input  [7:0] v16176_3_q0;
output  [2:0] ap_return;
reg ap_idle;
reg[2:0] ap_return;
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
wire   [0:0] icmp_ln15707_fu_526_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln1570839_i_reg_232;
wire   [2:0] empty_fu_257_p1;
reg   [2:0] empty_reg_822;
reg   [2:0] empty_reg_822_pp0_iter1_reg;
reg   [2:0] empty_reg_822_pp0_iter2_reg;
wire   [5:0] mul_i37_i_i_fu_269_p3;
reg   [5:0] mul_i37_i_i_reg_826;
wire   [6:0] p_cast3_i_fu_321_p1;
reg   [6:0] p_cast3_i_reg_831;
wire   [4:0] select_ln15739_fu_329_p3;
reg   [4:0] select_ln15739_reg_836;
reg   [4:0] select_ln15739_reg_836_pp0_iter1_reg;
wire   [0:0] tmp_416_fu_337_p3;
reg   [0:0] tmp_416_reg_841;
reg   [0:0] tmp_416_reg_841_pp0_iter1_reg;
reg   [0:0] tmp_416_reg_841_pp0_iter2_reg;
wire   [4:0] select_ln15708_fu_442_p3;
reg   [4:0] select_ln15708_reg_847;
reg   [4:0] select_ln15708_reg_847_pp0_iter1_reg;
reg   [3:0] lshr_ln_i_reg_853;
reg   [3:0] lshr_ln_i_reg_853_pp0_iter1_reg;
reg   [4:0] lshr_ln90_i_reg_859;
reg   [4:0] lshr_ln90_i_reg_859_pp0_iter1_reg;
wire   [0:0] icmp_ln15709_fu_514_p2;
reg   [0:0] icmp_ln15709_reg_864;
wire   [0:0] icmp_ln15708_fu_520_p2;
reg   [0:0] icmp_ln15708_reg_869;
reg   [0:0] icmp_ln15707_reg_874;
wire   [5:0] select_ln15707_2_fu_561_p3;
reg   [5:0] select_ln15707_2_reg_878;
wire   [12:0] add_ln15712_fu_620_p2;
reg   [12:0] add_ln15712_reg_884;
wire   [13:0] add_ln15714_1_fu_724_p2;
reg   [13:0] add_ln15714_1_reg_890;
reg   [0:0] ap_phi_mux_icmp_ln1570839_i_phi_fu_235_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1570938_i_phi_fu_246_p4;
wire   [63:0] zext_ln15712_4_fu_745_p1;
wire   [63:0] zext_ln15714_6_fu_760_p1;
wire   [63:0] zext_ln15714_4_fu_766_p1;
reg   [13:0] indvar_flatten1233_i_fu_128;
wire   [13:0] add_ln15707_1_fu_508_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1233_i_load;
reg   [5:0] v1222334_i_fu_132;
reg   [8:0] indvar_flatten35_i_fu_136;
wire   [8:0] select_ln15708_1_fu_500_p3;
reg   [8:0] ap_sig_allocacmp_indvar_flatten35_i_load;
reg   [4:0] v1222436_i_fu_140;
reg   [4:0] ap_sig_allocacmp_v1222436_i_load;
reg   [4:0] v1222537_i_fu_144;
wire   [4:0] add_ln15709_fu_488_p2;
reg   [4:0] ap_sig_allocacmp_v1222537_i_load;
reg    v16176_0_ce0_local;
reg    v16176_1_ce0_local;
reg    v16176_2_ce0_local;
reg    v16176_3_ce0_local;
reg    v12240_1_we0_local;
wire   [7:0] select_ln15712_fu_771_p3;
reg    v12240_1_ce0_local;
reg    v12240_we0_local;
wire   [7:0] select_ln15714_fu_779_p3;
reg    v12240_ce0_local;
wire   [5:0] v12233_cast3_fu_253_p1;
wire   [0:0] tmp_fu_261_p3;
wire   [0:0] tmp_414_fu_277_p3;
wire   [2:0] empty_372_fu_293_p3;
wire   [0:0] tmp_415_fu_285_p3;
wire   [3:0] tmp_372_i_fu_301_p3;
wire  signed [4:0] p_cast_i_fu_309_p1;
wire   [5:0] tmp_i_fu_313_p3;
wire   [0:0] empty_373_fu_325_p1;
wire   [2:0] empty_374_fu_345_p3;
wire   [3:0] thr_add1_i_i_fu_353_p3;
wire  signed [5:0] thr_add1_cast9_cast_i_cast_cast_i_cast_fu_361_p1;
wire   [4:0] select_ln15707_fu_406_p3;
wire   [0:0] or_ln15707_fu_422_p2;
wire   [4:0] select_ln15707_1_fu_414_p3;
wire   [4:0] add_ln15708_fu_428_p2;
wire   [4:0] v12225_mid2_i_fu_434_p3;
wire   [5:0] shl_ln_i_fu_460_p3;
wire   [6:0] zext_ln15713_fu_468_p1;
wire   [6:0] thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_365_p1;
wire   [6:0] add_ln15713_fu_472_p2;
wire   [8:0] add_ln15708_1_fu_494_p2;
wire   [5:0] add_ln15707_fu_555_p2;
wire   [5:0] empty_375_fu_569_p2;
wire   [9:0] tmp_418_fu_582_p3;
wire   [12:0] p_shl27_fu_574_p3;
wire   [12:0] zext_ln15712_fu_590_p1;
wire   [5:0] tmp_373_i_fu_600_p3;
wire   [6:0] p_cast8_i_i_i_fu_607_p1;
wire   [6:0] empty_376_fu_611_p2;
wire   [12:0] sub_ln15712_fu_594_p2;
wire   [12:0] zext_ln15712_1_fu_616_p1;
wire   [7:0] tmp_417_fu_638_p3;
wire   [10:0] p_shl29_fu_631_p3;
wire   [10:0] zext_ln15714_fu_645_p1;
wire   [10:0] sub_ln15714_fu_649_p2;
wire   [10:0] zext_ln15714_1_fu_655_p1;
wire   [10:0] add_ln15714_fu_658_p2;
wire   [9:0] trunc_ln15714_fu_664_p1;
wire   [11:0] tmp_419_fu_668_p3;
wire   [13:0] tmp_420_fu_676_p3;
wire   [13:0] zext_ln15714_2_fu_684_p1;
wire   [14:0] tmp_421_fu_701_p3;
wire   [17:0] p_shl_fu_694_p3;
wire   [17:0] zext_ln15712_2_fu_708_p1;
wire   [13:0] sub_ln15714_1_fu_688_p2;
wire   [13:0] zext_ln15714_3_fu_721_p1;
wire   [4:0] zext_ln15709_fu_718_p1;
wire   [4:0] add_ln15712_1_fu_730_p2;
wire   [17:0] sub_ln15712_1_fu_712_p2;
wire   [17:0] zext_ln15712_3_fu_735_p1;
wire   [17:0] add_ln15712_2_fu_739_p2;
wire   [17:0] zext_ln15714_5_fu_751_p1;
wire   [17:0] add_ln15714_2_fu_754_p2;
reg   [2:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_579;
reg    ap_condition_584;
reg    ap_condition_112;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_i_fu_128 = 14'd0;
#0 v1222334_i_fu_132 = 6'd0;
#0 indvar_flatten35_i_fu_136 = 9'd0;
#0 v1222436_i_fu_140 = 5'd0;
#0 v1222537_i_fu_144 = 5'd0;
#0 ap_return_preg = 3'd0;
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
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 3'd0;
    end else begin
        if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_return_preg <= empty_reg_822_pp0_iter2_reg;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_584)) begin
            icmp_ln1570839_i_reg_232 <= icmp_ln15708_reg_869;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1570839_i_reg_232 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_112)) begin
        indvar_flatten1233_i_fu_128 <= add_ln15707_1_fu_508_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_112)) begin
    indvar_flatten35_i_fu_136 <= select_ln15708_1_fu_500_p3;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1222334_i_fu_132 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1222334_i_fu_132 <= select_ln15707_2_fu_561_p3;
    end
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_112)) begin
    v1222436_i_fu_140 <= select_ln15708_fu_442_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_112)) begin
    v1222537_i_fu_144 <= add_ln15709_fu_488_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln15712_reg_884 <= add_ln15712_fu_620_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_822_pp0_iter1_reg <= empty_reg_822;
        icmp_ln15707_reg_874 <= icmp_ln15707_fu_526_p2;
        lshr_ln90_i_reg_859 <= {{add_ln15713_fu_472_p2[6:2]}};
        lshr_ln90_i_reg_859_pp0_iter1_reg <= lshr_ln90_i_reg_859;
        lshr_ln_i_reg_853 <= {{v12225_mid2_i_fu_434_p3[4:1]}};
        lshr_ln_i_reg_853_pp0_iter1_reg <= lshr_ln_i_reg_853;
        mul_i37_i_i_reg_826[5] <= mul_i37_i_i_fu_269_p3[5];
        p_cast3_i_reg_831[0] <= p_cast3_i_fu_321_p1[0];
p_cast3_i_reg_831[5 : 3] <= p_cast3_i_fu_321_p1[5 : 3];
        select_ln15707_2_reg_878 <= select_ln15707_2_fu_561_p3;
        select_ln15708_reg_847 <= select_ln15708_fu_442_p3;
        select_ln15708_reg_847_pp0_iter1_reg <= select_ln15708_reg_847;
        select_ln15739_reg_836[3 : 1] <= select_ln15739_fu_329_p3[3 : 1];
        select_ln15739_reg_836_pp0_iter1_reg[3 : 1] <= select_ln15739_reg_836[3 : 1];
        tmp_416_reg_841 <= v12233_cast3_fu_253_p1[32'd3];
        tmp_416_reg_841_pp0_iter1_reg <= tmp_416_reg_841;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln15714_1_reg_890 <= add_ln15714_1_fu_724_p2;
        empty_reg_822_pp0_iter2_reg <= empty_reg_822_pp0_iter1_reg;
        tmp_416_reg_841_pp0_iter2_reg <= tmp_416_reg_841_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_822 <= empty_fu_257_p1;
        icmp_ln15708_reg_869 <= icmp_ln15708_fu_520_p2;
        icmp_ln15709_reg_864 <= icmp_ln15709_fu_514_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15707_fu_526_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_579)) begin
            ap_phi_mux_icmp_ln1570839_i_phi_fu_235_p4 = icmp_ln15708_reg_869;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1570839_i_phi_fu_235_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1570839_i_phi_fu_235_p4 = icmp_ln15708_reg_869;
        end
    end else begin
        ap_phi_mux_icmp_ln1570839_i_phi_fu_235_p4 = icmp_ln15708_reg_869;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_579)) begin
            ap_phi_mux_icmp_ln1570938_i_phi_fu_246_p4 = icmp_ln15709_reg_864;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1570938_i_phi_fu_246_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1570938_i_phi_fu_246_p4 = icmp_ln15709_reg_864;
        end
    end else begin
        ap_phi_mux_icmp_ln1570938_i_phi_fu_246_p4 = icmp_ln15709_reg_864;
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
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_return = empty_reg_822_pp0_iter2_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1233_i_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_i_load = indvar_flatten1233_i_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_i_load = indvar_flatten35_i_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1222436_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1222436_i_load = v1222436_i_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1222537_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1222537_i_load = v1222537_i_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12240_1_ce0_local = 1'b1;
    end else begin
        v12240_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12240_1_we0_local = 1'b1;
    end else begin
        v12240_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12240_ce0_local = 1'b1;
    end else begin
        v12240_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12240_we0_local = 1'b1;
    end else begin
        v12240_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16176_0_ce0_local = 1'b1;
    end else begin
        v16176_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16176_1_ce0_local = 1'b1;
    end else begin
        v16176_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16176_2_ce0_local = 1'b1;
    end else begin
        v16176_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16176_3_ce0_local = 1'b1;
    end else begin
        v16176_3_ce0_local = 1'b0;
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
assign add_ln15707_1_fu_508_p2 = (ap_sig_allocacmp_indvar_flatten1233_i_load + 14'd1);
assign add_ln15707_fu_555_p2 = (v1222334_i_fu_132 + 6'd1);
assign add_ln15708_1_fu_494_p2 = (ap_sig_allocacmp_indvar_flatten35_i_load + 9'd1);
assign add_ln15708_fu_428_p2 = (select_ln15707_fu_406_p3 + 5'd1);
assign add_ln15709_fu_488_p2 = (v12225_mid2_i_fu_434_p3 + 5'd2);
assign add_ln15712_1_fu_730_p2 = (zext_ln15709_fu_718_p1 + select_ln15739_reg_836_pp0_iter1_reg);
assign add_ln15712_2_fu_739_p2 = (sub_ln15712_1_fu_712_p2 + zext_ln15712_3_fu_735_p1);
assign add_ln15712_fu_620_p2 = (sub_ln15712_fu_594_p2 + zext_ln15712_1_fu_616_p1);
assign add_ln15713_fu_472_p2 = (zext_ln15713_fu_468_p1 + thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_365_p1);
assign add_ln15714_1_fu_724_p2 = (sub_ln15714_1_fu_688_p2 + zext_ln15714_3_fu_721_p1);
assign add_ln15714_2_fu_754_p2 = (sub_ln15712_1_fu_712_p2 + zext_ln15714_5_fu_751_p1);
assign add_ln15714_fu_658_p2 = (sub_ln15714_fu_649_p2 + zext_ln15714_1_fu_655_p1);
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
    ap_condition_112 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_579 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15707_reg_874 == 1'd0));
end
always @ (*) begin
    ap_condition_584 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15707_reg_874 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_372_fu_293_p3 = ((tmp_414_fu_277_p3[0:0] == 1'b1) ? 3'd4 : 3'd0);
assign empty_373_fu_325_p1 = v12233[0:0];
assign empty_374_fu_345_p3 = ((empty_373_fu_325_p1[0:0] == 1'b1) ? 3'd4 : 3'd0);
assign empty_375_fu_569_p2 = (select_ln15707_2_fu_561_p3 + mul_i37_i_i_reg_826);
assign empty_376_fu_611_p2 = (p_cast3_i_reg_831 + p_cast8_i_i_i_fu_607_p1);
assign empty_fu_257_p1 = v12233[2:0];
assign icmp_ln15707_fu_526_p2 = ((ap_sig_allocacmp_indvar_flatten1233_i_load == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln15708_fu_520_p2 = ((select_ln15708_1_fu_500_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln15709_fu_514_p2 = ((add_ln15709_fu_488_p2 < 5'd28) ? 1'b1 : 1'b0);
assign mul_i37_i_i_fu_269_p3 = {{tmp_fu_261_p3}, {5'd0}};
assign or_ln15707_fu_422_p2 = (ap_phi_mux_icmp_ln1570938_i_phi_fu_246_p4 | ap_phi_mux_icmp_ln1570839_i_phi_fu_235_p4);
assign p_cast3_i_fu_321_p1 = tmp_i_fu_313_p3;
assign p_cast8_i_i_i_fu_607_p1 = tmp_373_i_fu_600_p3;
assign p_cast_i_fu_309_p1 = $signed(tmp_372_i_fu_301_p3);
assign p_shl27_fu_574_p3 = {{empty_375_fu_569_p2}, {7'd0}};
assign p_shl29_fu_631_p3 = {{select_ln15707_2_reg_878}, {5'd0}};
assign p_shl_fu_694_p3 = {{add_ln15712_reg_884}, {5'd0}};
assign select_ln15707_1_fu_414_p3 = ((ap_phi_mux_icmp_ln1570839_i_phi_fu_235_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1222537_i_load);
assign select_ln15707_2_fu_561_p3 = ((icmp_ln1570839_i_reg_232[0:0] == 1'b1) ? add_ln15707_fu_555_p2 : v1222334_i_fu_132);
assign select_ln15707_fu_406_p3 = ((ap_phi_mux_icmp_ln1570839_i_phi_fu_235_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1222436_i_load);
assign select_ln15708_1_fu_500_p3 = ((ap_phi_mux_icmp_ln1570839_i_phi_fu_235_p4[0:0] == 1'b1) ? 9'd1 : add_ln15708_1_fu_494_p2);
assign select_ln15708_fu_442_p3 = ((or_ln15707_fu_422_p2[0:0] == 1'b1) ? select_ln15707_fu_406_p3 : add_ln15708_fu_428_p2);
assign select_ln15712_fu_771_p3 = ((tmp_416_reg_841_pp0_iter2_reg[0:0] == 1'b1) ? v16176_1_q0 : v16176_0_q0);
assign select_ln15714_fu_779_p3 = ((tmp_416_reg_841_pp0_iter2_reg[0:0] == 1'b1) ? v16176_3_q0 : v16176_2_q0);
assign select_ln15739_fu_329_p3 = ((empty_373_fu_325_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign shl_ln_i_fu_460_p3 = {{v12225_mid2_i_fu_434_p3}, {1'd0}};
assign sub_ln15712_1_fu_712_p2 = (p_shl_fu_694_p3 - zext_ln15712_2_fu_708_p1);
assign sub_ln15712_fu_594_p2 = (p_shl27_fu_574_p3 - zext_ln15712_fu_590_p1);
assign sub_ln15714_1_fu_688_p2 = (tmp_420_fu_676_p3 - zext_ln15714_2_fu_684_p1);
assign sub_ln15714_fu_649_p2 = (p_shl29_fu_631_p3 - zext_ln15714_fu_645_p1);
assign thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_365_p1 = $unsigned(thr_add1_cast9_cast_i_cast_cast_i_cast_fu_361_p1);
assign thr_add1_cast9_cast_i_cast_cast_i_cast_fu_361_p1 = $signed(thr_add1_i_i_fu_353_p3);
assign thr_add1_i_i_fu_353_p3 = {{empty_374_fu_345_p3}, {tmp_416_fu_337_p3}};
assign tmp_372_i_fu_301_p3 = {{empty_372_fu_293_p3}, {tmp_415_fu_285_p3}};
assign tmp_373_i_fu_600_p3 = {{select_ln15708_reg_847}, {1'd0}};
assign tmp_414_fu_277_p3 = v12233_cast3_fu_253_p1[32'd1];
assign tmp_415_fu_285_p3 = v12233_cast3_fu_253_p1[32'd4];
assign tmp_416_fu_337_p3 = v12233_cast3_fu_253_p1[32'd3];
assign tmp_417_fu_638_p3 = {{select_ln15707_2_reg_878}, {2'd0}};
assign tmp_418_fu_582_p3 = {{empty_375_fu_569_p2}, {4'd0}};
assign tmp_419_fu_668_p3 = {{add_ln15714_fu_658_p2}, {1'd0}};
assign tmp_420_fu_676_p3 = {{trunc_ln15714_fu_664_p1}, {4'd0}};
assign tmp_421_fu_701_p3 = {{add_ln15712_reg_884}, {2'd0}};
assign tmp_fu_261_p3 = v12233_cast3_fu_253_p1[32'd2];
assign tmp_i_fu_313_p3 = {{tmp_414_fu_277_p3}, {p_cast_i_fu_309_p1}};
assign trunc_ln15714_fu_664_p1 = add_ln15714_fu_658_p2[9:0];
assign v12225_mid2_i_fu_434_p3 = ((or_ln15707_fu_422_p2[0:0] == 1'b1) ? select_ln15707_1_fu_414_p3 : 5'd0);
assign v12233_cast3_fu_253_p1 = v12233;
assign v12240_1_address0 = zext_ln15714_4_fu_766_p1;
assign v12240_1_ce0 = v12240_1_ce0_local;
assign v12240_1_d0 = select_ln15712_fu_771_p3;
assign v12240_1_we0 = v12240_1_we0_local;
assign v12240_address0 = zext_ln15714_4_fu_766_p1;
assign v12240_ce0 = v12240_ce0_local;
assign v12240_d0 = select_ln15714_fu_779_p3;
assign v12240_we0 = v12240_we0_local;
assign v16176_0_address0 = zext_ln15712_4_fu_745_p1;
assign v16176_0_ce0 = v16176_0_ce0_local;
assign v16176_1_address0 = zext_ln15712_4_fu_745_p1;
assign v16176_1_ce0 = v16176_1_ce0_local;
assign v16176_2_address0 = zext_ln15714_6_fu_760_p1;
assign v16176_2_ce0 = v16176_2_ce0_local;
assign v16176_3_address0 = zext_ln15714_6_fu_760_p1;
assign v16176_3_ce0 = v16176_3_ce0_local;
assign zext_ln15709_fu_718_p1 = lshr_ln_i_reg_853_pp0_iter1_reg;
assign zext_ln15712_1_fu_616_p1 = empty_376_fu_611_p2;
assign zext_ln15712_2_fu_708_p1 = tmp_421_fu_701_p3;
assign zext_ln15712_3_fu_735_p1 = add_ln15712_1_fu_730_p2;
assign zext_ln15712_4_fu_745_p1 = add_ln15712_2_fu_739_p2;
assign zext_ln15712_fu_590_p1 = tmp_418_fu_582_p3;
assign zext_ln15713_fu_468_p1 = shl_ln_i_fu_460_p3;
assign zext_ln15714_1_fu_655_p1 = select_ln15708_reg_847_pp0_iter1_reg;
assign zext_ln15714_2_fu_684_p1 = tmp_419_fu_668_p3;
assign zext_ln15714_3_fu_721_p1 = lshr_ln_i_reg_853_pp0_iter1_reg;
assign zext_ln15714_4_fu_766_p1 = add_ln15714_1_reg_890;
assign zext_ln15714_5_fu_751_p1 = lshr_ln90_i_reg_859_pp0_iter1_reg;
assign zext_ln15714_6_fu_760_p1 = add_ln15714_2_fu_754_p2;
assign zext_ln15714_fu_645_p1 = tmp_417_fu_638_p3;
always @ (posedge ap_clk) begin
    mul_i37_i_i_reg_826[4:0] <= 5'b00000;
    p_cast3_i_reg_831[2:1] <= 2'b00;
    p_cast3_i_reg_831[6] <= 1'b0;
    select_ln15739_reg_836[0] <= 1'b0;
    select_ln15739_reg_836[4] <= 1'b0;
    select_ln15739_reg_836_pp0_iter1_reg[0] <= 1'b0;
    select_ln15739_reg_836_pp0_iter1_reg[4] <= 1'b0;
end
endmodule 