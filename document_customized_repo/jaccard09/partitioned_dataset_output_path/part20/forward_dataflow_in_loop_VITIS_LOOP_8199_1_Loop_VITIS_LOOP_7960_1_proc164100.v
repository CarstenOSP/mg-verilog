
module forward_dataflow_in_loop_VITIS_LOOP_8199_1_Loop_VITIS_LOOP_7960_1_proc164100 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9228_1_address0,v9228_1_ce0,v9228_1_we0,v9228_1_d0,v9228_0_address0,v9228_0_ce0,v9228_0_we0,v9228_0_d0,p_read,v5399_1_i_address0,v5399_1_i_ce0,v5399_1_i_q0,v5399_i_address0,v5399_i_ce0,v5399_i_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [15:0] v9228_1_address0;
output   v9228_1_ce0;
output   v9228_1_we0;
output  [7:0] v9228_1_d0;
output  [15:0] v9228_0_address0;
output   v9228_0_ce0;
output   v9228_0_we0;
output  [7:0] v9228_0_d0;
input  [5:0] p_read;
output  [11:0] v5399_1_i_address0;
output   v5399_1_i_ce0;
input  [7:0] v5399_1_i_q0;
output  [11:0] v5399_i_address0;
output   v5399_i_ce0;
input  [7:0] v5399_i_q0;
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
wire   [0:0] icmp_ln7960_fu_490_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [4:0] mul9_i109_cast_cast_i_cast_cast_cast_cast_fu_242_p3;
reg   [4:0] mul9_i109_cast_cast_i_cast_cast_cast_cast_reg_690;
wire   [3:0] p_udiv6_i_cast_cast_cast_cast_fu_262_p3;
reg   [3:0] p_udiv6_i_cast_cast_cast_cast_reg_695;
reg   [3:0] p_udiv6_i_cast_cast_cast_cast_reg_695_pp0_iter1_reg;
wire   [3:0] v5289_fu_364_p3;
reg   [3:0] v5289_reg_700;
wire   [6:0] empty_201_fu_402_p2;
reg   [6:0] empty_201_reg_705;
wire   [9:0] add_ln7964_fu_412_p2;
reg   [9:0] add_ln7964_reg_711;
wire   [8:0] trunc_ln7964_fu_418_p1;
reg   [8:0] trunc_ln7964_reg_716;
reg   [2:0] lshr_ln_reg_721;
reg   [2:0] lshr_ln_reg_721_pp0_iter1_reg;
reg   [3:0] lshr_ln20_reg_727;
reg   [3:0] lshr_ln20_reg_727_pp0_iter1_reg;
wire   [0:0] icmp_ln7962_fu_478_p2;
reg   [0:0] icmp_ln7962_reg_732;
wire   [0:0] icmp_ln7961_fu_484_p2;
reg   [0:0] icmp_ln7961_reg_737;
reg   [0:0] icmp_ln7960_reg_742;
wire   [11:0] add_ln7967_fu_573_p2;
reg   [11:0] add_ln7967_reg_746;
reg   [0:0] ap_phi_mux_icmp_ln796139_phi_fu_199_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln796238_phi_fu_209_p4;
wire   [63:0] zext_ln7964_4_fu_588_p1;
wire   [63:0] zext_ln7965_1_fu_636_p1;
wire   [63:0] zext_ln7967_4_fu_650_p1;
reg   [11:0] indvar_flatten1233_fu_116;
wire   [11:0] add_ln7960_1_fu_472_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v528834_fu_120;
wire   [5:0] v5288_fu_336_p3;
reg   [5:0] ap_sig_allocacmp_v528834_load;
reg   [6:0] indvar_flatten35_fu_124;
wire   [6:0] select_ln7961_1_fu_464_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [3:0] v528936_fu_128;
reg   [3:0] ap_sig_allocacmp_v528936_load;
reg   [3:0] v529037_fu_132;
wire   [3:0] v5290_fu_452_p2;
reg   [3:0] ap_sig_allocacmp_v529037_load;
reg    v5399_1_i_ce0_local;
reg    v5399_i_ce0_local;
reg    v9228_0_we0_local;
reg    v9228_0_ce0_local;
reg    v9228_1_we0_local;
reg    v9228_1_ce0_local;
wire   [1:0] tmp_fu_216_p4;
wire   [0:0] tmp_92_fu_234_p3;
wire   [0:0] empty_fu_250_p1;
wire   [0:0] xor_ln7960_fu_324_p2;
wire   [5:0] add_ln7960_fu_310_p2;
wire   [3:0] select_ln7960_fu_316_p3;
wire   [0:0] and_ln7960_fu_330_p2;
wire   [0:0] empty_200_fu_350_p2;
wire   [3:0] add_ln7961_fu_344_p2;
wire   [6:0] tmp_93_fu_384_p3;
wire   [9:0] p_shl51_fu_376_p3;
wire   [9:0] zext_ln7964_fu_392_p1;
wire   [6:0] mul_i146_i_fu_226_p3;
wire   [6:0] zext_ln7960_fu_372_p1;
wire   [9:0] sub_ln7964_fu_396_p2;
wire   [9:0] zext_ln7964_1_fu_408_p1;
wire   [3:0] v5290_mid2_fu_356_p3;
wire   [4:0] zext_ln8118_cast_cast_cast_cast_fu_254_p3;
wire   [4:0] zext_ln7962_fu_422_p1;
wire   [4:0] add_ln7965_fu_436_p2;
wire   [6:0] add_ln7961_1_fu_458_p2;
wire   [8:0] tmp_94_fu_528_p3;
wire   [11:0] p_shl52_fu_521_p3;
wire   [11:0] zext_ln7967_fu_535_p1;
wire   [11:0] tmp_95_fu_545_p3;
wire   [11:0] zext_ln7964_2_fu_552_p1;
wire   [4:0] zext_ln7961_fu_561_p1;
wire   [4:0] empty_202_fu_564_p2;
wire   [11:0] sub_ln7967_fu_539_p2;
wire   [11:0] zext_ln7967_1_fu_569_p1;
wire   [11:0] sub_ln7961_fu_555_p2;
wire   [11:0] zext_ln7964_3_fu_579_p1;
wire   [11:0] add_ln7964_1_fu_582_p2;
wire   [12:0] tmp_96_fu_601_p3;
wire   [15:0] p_shl_fu_594_p3;
wire   [15:0] zext_ln7967_2_fu_608_p1;
wire   [3:0] zext_ln7962_1_fu_618_p1;
wire   [3:0] add_ln7965_1_fu_621_p2;
wire   [15:0] sub_ln7967_1_fu_612_p2;
wire   [15:0] zext_ln7965_fu_626_p1;
wire   [15:0] add_ln7965_2_fu_630_p2;
wire   [15:0] zext_ln7967_3_fu_641_p1;
wire   [15:0] add_ln7967_1_fu_644_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_476;
reg    ap_condition_118;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_116 = 12'd0;
#0 v528834_fu_120 = 6'd0;
#0 indvar_flatten35_fu_124 = 7'd0;
#0 v528936_fu_128 = 4'd0;
#0 v529037_fu_132 = 4'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_118)) begin
        indvar_flatten1233_fu_116 <= add_ln7960_1_fu_472_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_118)) begin
    indvar_flatten35_fu_124 <= select_ln7961_1_fu_464_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_118)) begin
    v528834_fu_120 <= v5288_fu_336_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_118)) begin
    v528936_fu_128 <= v5289_fu_364_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_118)) begin
    v529037_fu_132 <= v5290_fu_452_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7964_reg_711 <= add_ln7964_fu_412_p2;
        add_ln7967_reg_746 <= add_ln7967_fu_573_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_201_reg_705 <= empty_201_fu_402_p2;
        icmp_ln7960_reg_742 <= icmp_ln7960_fu_490_p2;
        lshr_ln20_reg_727 <= {{add_ln7965_fu_436_p2[4:1]}};
        lshr_ln20_reg_727_pp0_iter1_reg <= lshr_ln20_reg_727;
        lshr_ln_reg_721 <= {{v5290_mid2_fu_356_p3[3:1]}};
        lshr_ln_reg_721_pp0_iter1_reg <= lshr_ln_reg_721;
        mul9_i109_cast_cast_i_cast_cast_cast_cast_reg_690[3 : 1] <= mul9_i109_cast_cast_i_cast_cast_cast_cast_fu_242_p3[3 : 1];
        p_udiv6_i_cast_cast_cast_cast_reg_695[2 : 0] <= p_udiv6_i_cast_cast_cast_cast_fu_262_p3[2 : 0];
        p_udiv6_i_cast_cast_cast_cast_reg_695_pp0_iter1_reg[2 : 0] <= p_udiv6_i_cast_cast_cast_cast_reg_695[2 : 0];
        trunc_ln7964_reg_716 <= trunc_ln7964_fu_418_p1;
        v5289_reg_700 <= v5289_fu_364_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7961_reg_737 <= icmp_ln7961_fu_484_p2;
        icmp_ln7962_reg_732 <= icmp_ln7962_fu_478_p2;
    end
end
always @ (*) begin
    if (((icmp_ln7960_fu_490_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if ((1'b1 == ap_condition_476)) begin
            ap_phi_mux_icmp_ln796139_phi_fu_199_p4 = icmp_ln7961_reg_737;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln796139_phi_fu_199_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln796139_phi_fu_199_p4 = icmp_ln7961_reg_737;
        end
    end else begin
        ap_phi_mux_icmp_ln796139_phi_fu_199_p4 = icmp_ln7961_reg_737;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_476)) begin
            ap_phi_mux_icmp_ln796238_phi_fu_209_p4 = icmp_ln7962_reg_732;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln796238_phi_fu_209_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln796238_phi_fu_209_p4 = icmp_ln7962_reg_732;
        end
    end else begin
        ap_phi_mux_icmp_ln796238_phi_fu_209_p4 = icmp_ln7962_reg_732;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v528834_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v528834_load = v528834_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v528936_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v528936_load = v528936_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v529037_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v529037_load = v529037_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5399_1_i_ce0_local = 1'b1;
    end else begin
        v5399_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5399_i_ce0_local = 1'b1;
    end else begin
        v5399_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9228_0_ce0_local = 1'b1;
    end else begin
        v9228_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9228_0_we0_local = 1'b1;
    end else begin
        v9228_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9228_1_ce0_local = 1'b1;
    end else begin
        v9228_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9228_1_we0_local = 1'b1;
    end else begin
        v9228_1_we0_local = 1'b0;
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
assign add_ln7960_1_fu_472_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 12'd1);
assign add_ln7960_fu_310_p2 = (ap_sig_allocacmp_v528834_load + 6'd1);
assign add_ln7961_1_fu_458_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 7'd1);
assign add_ln7961_fu_344_p2 = (select_ln7960_fu_316_p3 + 4'd1);
assign add_ln7964_1_fu_582_p2 = (sub_ln7961_fu_555_p2 + zext_ln7964_3_fu_579_p1);
assign add_ln7964_fu_412_p2 = (sub_ln7964_fu_396_p2 + zext_ln7964_1_fu_408_p1);
assign add_ln7965_1_fu_621_p2 = (zext_ln7962_1_fu_618_p1 + p_udiv6_i_cast_cast_cast_cast_reg_695_pp0_iter1_reg);
assign add_ln7965_2_fu_630_p2 = (sub_ln7967_1_fu_612_p2 + zext_ln7965_fu_626_p1);
assign add_ln7965_fu_436_p2 = (zext_ln8118_cast_cast_cast_cast_fu_254_p3 + zext_ln7962_fu_422_p1);
assign add_ln7967_1_fu_644_p2 = (sub_ln7967_1_fu_612_p2 + zext_ln7967_3_fu_641_p1);
assign add_ln7967_fu_573_p2 = (sub_ln7967_fu_539_p2 + zext_ln7967_1_fu_569_p1);
assign and_ln7960_fu_330_p2 = (xor_ln7960_fu_324_p2 & ap_phi_mux_icmp_ln796238_phi_fu_209_p4);
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
    ap_condition_118 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_476 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln7960_reg_742 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_200_fu_350_p2 = (ap_phi_mux_icmp_ln796139_phi_fu_199_p4 | and_ln7960_fu_330_p2);
assign empty_201_fu_402_p2 = (mul_i146_i_fu_226_p3 + zext_ln7960_fu_372_p1);
assign empty_202_fu_564_p2 = (mul9_i109_cast_cast_i_cast_cast_cast_cast_reg_690 + zext_ln7961_fu_561_p1);
assign empty_fu_250_p1 = p_read[0:0];
assign icmp_ln7960_fu_490_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln7961_fu_484_p2 = ((select_ln7961_1_fu_464_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln7962_fu_478_p2 = ((v5290_fu_452_p2 == 4'd14) ? 1'b1 : 1'b0);
assign mul9_i109_cast_cast_i_cast_cast_cast_cast_fu_242_p3 = ((tmp_92_fu_234_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign mul_i146_i_fu_226_p3 = {{tmp_fu_216_p4}, {5'd0}};
assign p_shl51_fu_376_p3 = {{v5288_fu_336_p3}, {4'd0}};
assign p_shl52_fu_521_p3 = {{empty_201_reg_705}, {5'd0}};
assign p_shl_fu_594_p3 = {{add_ln7967_reg_746}, {4'd0}};
assign p_udiv6_i_cast_cast_cast_cast_fu_262_p3 = ((empty_fu_250_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln7960_fu_316_p3 = ((ap_phi_mux_icmp_ln796139_phi_fu_199_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v528936_load);
assign select_ln7961_1_fu_464_p3 = ((ap_phi_mux_icmp_ln796139_phi_fu_199_p4[0:0] == 1'b1) ? 7'd1 : add_ln7961_1_fu_458_p2);
assign sub_ln7961_fu_555_p2 = (tmp_95_fu_545_p3 - zext_ln7964_2_fu_552_p1);
assign sub_ln7964_fu_396_p2 = (p_shl51_fu_376_p3 - zext_ln7964_fu_392_p1);
assign sub_ln7967_1_fu_612_p2 = (p_shl_fu_594_p3 - zext_ln7967_2_fu_608_p1);
assign sub_ln7967_fu_539_p2 = (p_shl52_fu_521_p3 - zext_ln7967_fu_535_p1);
assign tmp_92_fu_234_p3 = p_read[32'd1];
assign tmp_93_fu_384_p3 = {{v5288_fu_336_p3}, {1'd0}};
assign tmp_94_fu_528_p3 = {{empty_201_reg_705}, {2'd0}};
assign tmp_95_fu_545_p3 = {{trunc_ln7964_reg_716}, {3'd0}};
assign tmp_96_fu_601_p3 = {{add_ln7967_reg_746}, {1'd0}};
assign tmp_fu_216_p4 = {{p_read[3:2]}};
assign trunc_ln7964_fu_418_p1 = add_ln7964_fu_412_p2[8:0];
assign v5288_fu_336_p3 = ((ap_phi_mux_icmp_ln796139_phi_fu_199_p4[0:0] == 1'b1) ? add_ln7960_fu_310_p2 : ap_sig_allocacmp_v528834_load);
assign v5289_fu_364_p3 = ((and_ln7960_fu_330_p2[0:0] == 1'b1) ? add_ln7961_fu_344_p2 : select_ln7960_fu_316_p3);
assign v5290_fu_452_p2 = (v5290_mid2_fu_356_p3 + 4'd2);
assign v5290_mid2_fu_356_p3 = ((empty_200_fu_350_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v529037_load);
assign v5399_1_i_address0 = zext_ln7964_4_fu_588_p1;
assign v5399_1_i_ce0 = v5399_1_i_ce0_local;
assign v5399_i_address0 = zext_ln7964_4_fu_588_p1;
assign v5399_i_ce0 = v5399_i_ce0_local;
assign v9228_0_address0 = zext_ln7965_1_fu_636_p1;
assign v9228_0_ce0 = v9228_0_ce0_local;
assign v9228_0_d0 = v5399_1_i_q0;
assign v9228_0_we0 = v9228_0_we0_local;
assign v9228_1_address0 = zext_ln7967_4_fu_650_p1;
assign v9228_1_ce0 = v9228_1_ce0_local;
assign v9228_1_d0 = v5399_i_q0;
assign v9228_1_we0 = v9228_1_we0_local;
assign xor_ln7960_fu_324_p2 = (ap_phi_mux_icmp_ln796139_phi_fu_199_p4 ^ 1'd1);
assign zext_ln7960_fu_372_p1 = v5288_fu_336_p3;
assign zext_ln7961_fu_561_p1 = v5289_reg_700;
assign zext_ln7962_1_fu_618_p1 = lshr_ln_reg_721_pp0_iter1_reg;
assign zext_ln7962_fu_422_p1 = v5290_mid2_fu_356_p3;
assign zext_ln7964_1_fu_408_p1 = v5289_fu_364_p3;
assign zext_ln7964_2_fu_552_p1 = add_ln7964_reg_711;
assign zext_ln7964_3_fu_579_p1 = lshr_ln_reg_721;
assign zext_ln7964_4_fu_588_p1 = add_ln7964_1_fu_582_p2;
assign zext_ln7964_fu_392_p1 = tmp_93_fu_384_p3;
assign zext_ln7965_1_fu_636_p1 = add_ln7965_2_fu_630_p2;
assign zext_ln7965_fu_626_p1 = add_ln7965_1_fu_621_p2;
assign zext_ln7967_1_fu_569_p1 = empty_202_fu_564_p2;
assign zext_ln7967_2_fu_608_p1 = tmp_96_fu_601_p3;
assign zext_ln7967_3_fu_641_p1 = lshr_ln20_reg_727_pp0_iter1_reg;
assign zext_ln7967_4_fu_650_p1 = add_ln7967_1_fu_644_p2;
assign zext_ln7967_fu_535_p1 = tmp_94_fu_528_p3;
assign zext_ln8118_cast_cast_cast_cast_fu_254_p3 = ((empty_fu_250_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
always @ (posedge ap_clk) begin
    mul9_i109_cast_cast_i_cast_cast_cast_cast_reg_690[0] <= 1'b0;
    mul9_i109_cast_cast_i_cast_cast_cast_cast_reg_690[4] <= 1'b0;
    p_udiv6_i_cast_cast_cast_cast_reg_695[3] <= 1'b0;
    p_udiv6_i_cast_cast_cast_cast_reg_695_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
