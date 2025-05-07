module forward_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9021_1_address0,v9021_1_ce0,v9021_1_we0,v9021_1_d0,v9021_0_address0,v9021_0_ce0,v9021_0_we0,v9021_0_d0,p_read,v4028_1_address0,v4028_1_ce0,v4028_1_q0,v4028_address0,v4028_ce0,v4028_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [14:0] v9021_1_address0;
output   v9021_1_ce0;
output   v9021_1_we0;
output  [7:0] v9021_1_d0;
output  [14:0] v9021_0_address0;
output   v9021_0_ce0;
output   v9021_0_we0;
output  [7:0] v9021_0_d0;
input  [4:0] p_read;
output  [9:0] v4028_1_address0;
output   v4028_1_ce0;
input  [7:0] v4028_1_q0;
output  [9:0] v4028_address0;
output   v4028_ce0;
input  [7:0] v4028_q0;
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
wire   [0:0] icmp_ln5427_fu_476_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] mul_i_fu_222_p3;
reg   [7:0] mul_i_reg_686;
wire   [3:0] mul9_i66_cast_cast_cast_cast_cast_cast_fu_238_p3;
reg   [3:0] mul9_i66_cast_cast_cast_cast_cast_cast_reg_691;
wire   [2:0] p_udiv2_cast_cast_cast_cast_fu_258_p3;
reg   [2:0] p_udiv2_cast_cast_cast_cast_reg_696;
reg   [2:0] p_udiv2_cast_cast_cast_cast_reg_696_pp0_iter1_reg;
wire   [5:0] v3976_fu_332_p3;
reg   [5:0] v3976_reg_701;
wire   [2:0] v3977_fu_360_p3;
reg   [2:0] v3977_reg_706;
wire   [8:0] add_ln5431_fu_398_p2;
reg   [8:0] add_ln5431_reg_711;
wire   [7:0] trunc_ln5431_fu_404_p1;
reg   [7:0] trunc_ln5431_reg_716;
reg   [1:0] lshr_ln_reg_721;
reg   [1:0] lshr_ln_reg_721_pp0_iter1_reg;
reg   [2:0] lshr_ln4_reg_727;
reg   [2:0] lshr_ln4_reg_727_pp0_iter1_reg;
wire   [0:0] icmp_ln5429_fu_464_p2;
reg   [0:0] icmp_ln5429_reg_732;
wire   [0:0] icmp_ln5428_fu_470_p2;
reg   [0:0] icmp_ln5428_reg_737;
reg   [0:0] icmp_ln5427_reg_742;
wire   [11:0] add_ln5434_fu_569_p2;
reg   [11:0] add_ln5434_reg_746;
reg   [0:0] ap_phi_mux_icmp_ln542839_phi_fu_195_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln542938_phi_fu_205_p4;
wire   [63:0] zext_ln5431_4_fu_584_p1;
wire   [63:0] zext_ln5432_1_fu_632_p1;
wire   [63:0] zext_ln5434_4_fu_646_p1;
reg   [9:0] indvar_flatten1233_fu_112;
wire   [9:0] add_ln5427_1_fu_458_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v397634_fu_116;
reg   [5:0] ap_sig_allocacmp_v397634_load;
reg   [4:0] indvar_flatten35_fu_120;
wire   [4:0] select_ln5428_1_fu_450_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [2:0] v397736_fu_124;
reg   [2:0] ap_sig_allocacmp_v397736_load;
reg   [2:0] v397837_fu_128;
wire   [2:0] v3978_fu_438_p2;
reg   [2:0] ap_sig_allocacmp_v397837_load;
reg    v4028_1_ce0_local;
reg    v4028_ce0_local;
reg    v9021_0_we0_local;
reg    v9021_0_ce0_local;
reg    v9021_1_we0_local;
reg    v9021_1_ce0_local;
wire   [2:0] tmp_fu_212_p4;
wire   [0:0] tmp_88_fu_230_p3;
wire   [0:0] empty_fu_246_p1;
wire   [0:0] xor_ln5427_fu_320_p2;
wire   [5:0] add_ln5427_fu_306_p2;
wire   [2:0] select_ln5427_fu_312_p3;
wire   [0:0] and_ln5427_fu_326_p2;
wire   [0:0] empty_134_fu_346_p2;
wire   [2:0] add_ln5428_fu_340_p2;
wire   [6:0] tmp_89_fu_376_p3;
wire   [8:0] p_shl69_fu_368_p3;
wire   [8:0] zext_ln5431_fu_384_p1;
wire   [8:0] sub_ln5431_fu_388_p2;
wire   [8:0] zext_ln5431_1_fu_394_p1;
wire   [2:0] v3978_mid2_fu_352_p3;
wire   [3:0] zext_ln5485_cast_cast_cast_cast_fu_250_p3;
wire   [3:0] zext_ln5429_fu_408_p1;
wire   [3:0] add_ln5432_fu_422_p2;
wire   [4:0] add_ln5428_1_fu_444_p2;
wire   [7:0] zext_ln5427_fu_507_p1;
wire   [7:0] empty_135_fu_510_p2;
wire   [9:0] tmp_90_fu_523_p3;
wire   [11:0] p_shl67_fu_515_p3;
wire   [11:0] zext_ln5434_fu_531_p1;
wire   [9:0] tmp_91_fu_541_p3;
wire   [9:0] zext_ln5431_2_fu_548_p1;
wire   [3:0] zext_ln5428_fu_557_p1;
wire   [3:0] empty_136_fu_560_p2;
wire   [11:0] sub_ln5434_fu_535_p2;
wire   [11:0] zext_ln5434_1_fu_565_p1;
wire   [9:0] sub_ln5428_fu_551_p2;
wire   [9:0] zext_ln5431_3_fu_575_p1;
wire   [9:0] add_ln5431_1_fu_578_p2;
wire   [12:0] tmp_92_fu_597_p3;
wire   [14:0] p_shl_fu_590_p3;
wire   [14:0] zext_ln5434_2_fu_604_p1;
wire   [2:0] zext_ln5429_1_fu_614_p1;
wire   [2:0] add_ln5432_1_fu_617_p2;
wire   [14:0] sub_ln5434_1_fu_608_p2;
wire   [14:0] zext_ln5432_fu_622_p1;
wire   [14:0] add_ln5432_2_fu_626_p2;
wire   [14:0] zext_ln5434_3_fu_637_p1;
wire   [14:0] add_ln5434_1_fu_640_p2;
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
reg    ap_condition_120;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_112 = 10'd0;
#0 v397634_fu_116 = 6'd0;
#0 indvar_flatten35_fu_120 = 5'd0;
#0 v397736_fu_124 = 3'd0;
#0 v397837_fu_128 = 3'd0;
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
    if ((1'b1 == ap_condition_120)) begin
        indvar_flatten1233_fu_112 <= add_ln5427_1_fu_458_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_120)) begin
    indvar_flatten35_fu_120 <= select_ln5428_1_fu_450_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_120)) begin
    v397634_fu_116 <= v3976_fu_332_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_120)) begin
    v397736_fu_124 <= v3977_fu_360_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_120)) begin
    v397837_fu_128 <= v3978_fu_438_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln5431_reg_711 <= add_ln5431_fu_398_p2;
        add_ln5434_reg_746 <= add_ln5434_fu_569_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln5427_reg_742 <= icmp_ln5427_fu_476_p2;
        lshr_ln4_reg_727 <= {{add_ln5432_fu_422_p2[3:1]}};
        lshr_ln4_reg_727_pp0_iter1_reg <= lshr_ln4_reg_727;
        lshr_ln_reg_721 <= {{v3978_mid2_fu_352_p3[2:1]}};
        lshr_ln_reg_721_pp0_iter1_reg <= lshr_ln_reg_721;
        mul9_i66_cast_cast_cast_cast_cast_cast_reg_691[2 : 1] <= mul9_i66_cast_cast_cast_cast_cast_cast_fu_238_p3[2 : 1];
        mul_i_reg_686[7 : 5] <= mul_i_fu_222_p3[7 : 5];
        p_udiv2_cast_cast_cast_cast_reg_696[1 : 0] <= p_udiv2_cast_cast_cast_cast_fu_258_p3[1 : 0];
        p_udiv2_cast_cast_cast_cast_reg_696_pp0_iter1_reg[1 : 0] <= p_udiv2_cast_cast_cast_cast_reg_696[1 : 0];
        trunc_ln5431_reg_716 <= trunc_ln5431_fu_404_p1;
        v3976_reg_701 <= v3976_fu_332_p3;
        v3977_reg_706 <= v3977_fu_360_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5428_reg_737 <= icmp_ln5428_fu_470_p2;
        icmp_ln5429_reg_732 <= icmp_ln5429_fu_464_p2;
    end
end
always @ (*) begin
    if (((icmp_ln5427_fu_476_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            ap_phi_mux_icmp_ln542839_phi_fu_195_p4 = icmp_ln5428_reg_737;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln542839_phi_fu_195_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln542839_phi_fu_195_p4 = icmp_ln5428_reg_737;
        end
    end else begin
        ap_phi_mux_icmp_ln542839_phi_fu_195_p4 = icmp_ln5428_reg_737;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_476)) begin
            ap_phi_mux_icmp_ln542938_phi_fu_205_p4 = icmp_ln5429_reg_732;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln542938_phi_fu_205_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln542938_phi_fu_205_p4 = icmp_ln5429_reg_732;
        end
    end else begin
        ap_phi_mux_icmp_ln542938_phi_fu_205_p4 = icmp_ln5429_reg_732;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v397634_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v397634_load = v397634_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v397736_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v397736_load = v397736_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v397837_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v397837_load = v397837_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4028_1_ce0_local = 1'b1;
    end else begin
        v4028_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4028_ce0_local = 1'b1;
    end else begin
        v4028_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9021_0_ce0_local = 1'b1;
    end else begin
        v9021_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9021_0_we0_local = 1'b1;
    end else begin
        v9021_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9021_1_ce0_local = 1'b1;
    end else begin
        v9021_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9021_1_we0_local = 1'b1;
    end else begin
        v9021_1_we0_local = 1'b0;
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
assign add_ln5427_1_fu_458_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 10'd1);
assign add_ln5427_fu_306_p2 = (ap_sig_allocacmp_v397634_load + 6'd1);
assign add_ln5428_1_fu_444_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 5'd1);
assign add_ln5428_fu_340_p2 = (select_ln5427_fu_312_p3 + 3'd1);
assign add_ln5431_1_fu_578_p2 = (sub_ln5428_fu_551_p2 + zext_ln5431_3_fu_575_p1);
assign add_ln5431_fu_398_p2 = (sub_ln5431_fu_388_p2 + zext_ln5431_1_fu_394_p1);
assign add_ln5432_1_fu_617_p2 = (zext_ln5429_1_fu_614_p1 + p_udiv2_cast_cast_cast_cast_reg_696_pp0_iter1_reg);
assign add_ln5432_2_fu_626_p2 = (sub_ln5434_1_fu_608_p2 + zext_ln5432_fu_622_p1);
assign add_ln5432_fu_422_p2 = (zext_ln5485_cast_cast_cast_cast_fu_250_p3 + zext_ln5429_fu_408_p1);
assign add_ln5434_1_fu_640_p2 = (sub_ln5434_1_fu_608_p2 + zext_ln5434_3_fu_637_p1);
assign add_ln5434_fu_569_p2 = (sub_ln5434_fu_535_p2 + zext_ln5434_1_fu_565_p1);
assign and_ln5427_fu_326_p2 = (xor_ln5427_fu_320_p2 & ap_phi_mux_icmp_ln542938_phi_fu_205_p4);
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
    ap_condition_120 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_476 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln5427_reg_742 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_134_fu_346_p2 = (ap_phi_mux_icmp_ln542839_phi_fu_195_p4 | and_ln5427_fu_326_p2);
assign empty_135_fu_510_p2 = (mul_i_reg_686 + zext_ln5427_fu_507_p1);
assign empty_136_fu_560_p2 = (mul9_i66_cast_cast_cast_cast_cast_cast_reg_691 + zext_ln5428_fu_557_p1);
assign empty_fu_246_p1 = p_read[0:0];
assign icmp_ln5427_fu_476_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 10'd575) ? 1'b1 : 1'b0);
assign icmp_ln5428_fu_470_p2 = ((select_ln5428_1_fu_450_p3 == 5'd18) ? 1'b1 : 1'b0);
assign icmp_ln5429_fu_464_p2 = ((v3978_fu_438_p2 == 3'd6) ? 1'b1 : 1'b0);
assign mul9_i66_cast_cast_cast_cast_cast_cast_fu_238_p3 = ((tmp_88_fu_230_p3[0:0] == 1'b1) ? 4'd6 : 4'd0);
assign mul_i_fu_222_p3 = {{tmp_fu_212_p4}, {5'd0}};
assign p_shl67_fu_515_p3 = {{empty_135_fu_510_p2}, {4'd0}};
assign p_shl69_fu_368_p3 = {{v3976_fu_332_p3}, {3'd0}};
assign p_shl_fu_590_p3 = {{add_ln5434_reg_746}, {3'd0}};
assign p_udiv2_cast_cast_cast_cast_fu_258_p3 = ((empty_fu_246_p1[0:0] == 1'b1) ? 3'd3 : 3'd0);
assign select_ln5427_fu_312_p3 = ((ap_phi_mux_icmp_ln542839_phi_fu_195_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v397736_load);
assign select_ln5428_1_fu_450_p3 = ((ap_phi_mux_icmp_ln542839_phi_fu_195_p4[0:0] == 1'b1) ? 5'd1 : add_ln5428_1_fu_444_p2);
assign sub_ln5428_fu_551_p2 = (tmp_91_fu_541_p3 - zext_ln5431_2_fu_548_p1);
assign sub_ln5431_fu_388_p2 = (p_shl69_fu_368_p3 - zext_ln5431_fu_384_p1);
assign sub_ln5434_1_fu_608_p2 = (p_shl_fu_590_p3 - zext_ln5434_2_fu_604_p1);
assign sub_ln5434_fu_535_p2 = (p_shl67_fu_515_p3 - zext_ln5434_fu_531_p1);
assign tmp_88_fu_230_p3 = p_read[32'd1];
assign tmp_89_fu_376_p3 = {{v3976_fu_332_p3}, {1'd0}};
assign tmp_90_fu_523_p3 = {{empty_135_fu_510_p2}, {2'd0}};
assign tmp_91_fu_541_p3 = {{trunc_ln5431_reg_716}, {2'd0}};
assign tmp_92_fu_597_p3 = {{add_ln5434_reg_746}, {1'd0}};
assign tmp_fu_212_p4 = {{p_read[4:2]}};
assign trunc_ln5431_fu_404_p1 = add_ln5431_fu_398_p2[7:0];
assign v3976_fu_332_p3 = ((ap_phi_mux_icmp_ln542839_phi_fu_195_p4[0:0] == 1'b1) ? add_ln5427_fu_306_p2 : ap_sig_allocacmp_v397634_load);
assign v3977_fu_360_p3 = ((and_ln5427_fu_326_p2[0:0] == 1'b1) ? add_ln5428_fu_340_p2 : select_ln5427_fu_312_p3);
assign v3978_fu_438_p2 = (v3978_mid2_fu_352_p3 + 3'd2);
assign v3978_mid2_fu_352_p3 = ((empty_134_fu_346_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v397837_load);
assign v4028_1_address0 = zext_ln5431_4_fu_584_p1;
assign v4028_1_ce0 = v4028_1_ce0_local;
assign v4028_address0 = zext_ln5431_4_fu_584_p1;
assign v4028_ce0 = v4028_ce0_local;
assign v9021_0_address0 = zext_ln5432_1_fu_632_p1;
assign v9021_0_ce0 = v9021_0_ce0_local;
assign v9021_0_d0 = v4028_1_q0;
assign v9021_0_we0 = v9021_0_we0_local;
assign v9021_1_address0 = zext_ln5434_4_fu_646_p1;
assign v9021_1_ce0 = v9021_1_ce0_local;
assign v9021_1_d0 = v4028_q0;
assign v9021_1_we0 = v9021_1_we0_local;
assign xor_ln5427_fu_320_p2 = (ap_phi_mux_icmp_ln542839_phi_fu_195_p4 ^ 1'd1);
assign zext_ln5427_fu_507_p1 = v3976_reg_701;
assign zext_ln5428_fu_557_p1 = v3977_reg_706;
assign zext_ln5429_1_fu_614_p1 = lshr_ln_reg_721_pp0_iter1_reg;
assign zext_ln5429_fu_408_p1 = v3978_mid2_fu_352_p3;
assign zext_ln5431_1_fu_394_p1 = v3977_fu_360_p3;
assign zext_ln5431_2_fu_548_p1 = add_ln5431_reg_711;
assign zext_ln5431_3_fu_575_p1 = lshr_ln_reg_721;
assign zext_ln5431_4_fu_584_p1 = add_ln5431_1_fu_578_p2;
assign zext_ln5431_fu_384_p1 = tmp_89_fu_376_p3;
assign zext_ln5432_1_fu_632_p1 = add_ln5432_2_fu_626_p2;
assign zext_ln5432_fu_622_p1 = add_ln5432_1_fu_617_p2;
assign zext_ln5434_1_fu_565_p1 = empty_136_fu_560_p2;
assign zext_ln5434_2_fu_604_p1 = tmp_92_fu_597_p3;
assign zext_ln5434_3_fu_637_p1 = lshr_ln4_reg_727_pp0_iter1_reg;
assign zext_ln5434_4_fu_646_p1 = add_ln5434_1_fu_640_p2;
assign zext_ln5434_fu_531_p1 = tmp_90_fu_523_p3;
assign zext_ln5485_cast_cast_cast_cast_fu_250_p3 = ((empty_fu_246_p1[0:0] == 1'b1) ? 4'd6 : 4'd0);
always @ (posedge ap_clk) begin
    mul_i_reg_686[4:0] <= 5'b00000;
    mul9_i66_cast_cast_cast_cast_cast_cast_reg_691[0] <= 1'b0;
    mul9_i66_cast_cast_cast_cast_cast_cast_reg_691[3] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_696[2] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_696_pp0_iter1_reg[2] <= 1'b0;
end
endmodule 