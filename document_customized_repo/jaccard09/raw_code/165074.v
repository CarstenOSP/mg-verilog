module forward_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6305_1_proc126 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v4361_address0,v4361_ce0,v4361_we0,v4361_d0,v4361_1_address0,v4361_1_ce0,v4361_1_we0,v4361_1_d0,v4361_2_address0,v4361_2_ce0,v4361_2_we0,v4361_2_d0,v4361_3_address0,v4361_3_ce0,v4361_3_we0,v4361_3_d0,v4354_0,v9242_0_address0,v9242_0_ce0,v9242_0_q0,v9242_1_address0,v9242_1_ce0,v9242_1_q0,v9242_2_address0,v9242_2_ce0,v9242_2_q0,v9242_3_address0,v9242_3_ce0,v9242_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v4361_address0;
output   v4361_ce0;
output   v4361_we0;
output  [7:0] v4361_d0;
output  [8:0] v4361_1_address0;
output   v4361_1_ce0;
output   v4361_1_we0;
output  [7:0] v4361_1_d0;
output  [8:0] v4361_2_address0;
output   v4361_2_ce0;
output   v4361_2_we0;
output  [7:0] v4361_2_d0;
output  [8:0] v4361_3_address0;
output   v4361_3_ce0;
output   v4361_3_we0;
output  [7:0] v4361_3_d0;
input  [10:0] v4354_0;
output  [13:0] v9242_0_address0;
output   v9242_0_ce0;
input  [7:0] v9242_0_q0;
output  [13:0] v9242_1_address0;
output   v9242_1_ce0;
input  [7:0] v9242_1_q0;
output  [13:0] v9242_2_address0;
output   v9242_2_ce0;
input  [7:0] v9242_2_q0;
output  [13:0] v9242_3_address0;
output   v9242_3_ce0;
input  [7:0] v9242_3_q0;
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
wire   [0:0] icmp_ln6305_fu_362_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] mul_i_fu_284_p3;
reg   [7:0] mul_i_reg_796;
wire   [5:0] trunc_ln_fu_292_p3;
reg   [5:0] trunc_ln_reg_801;
wire   [3:0] select_ln6305_cast_cast_fu_312_p3;
reg   [3:0] select_ln6305_cast_cast_reg_806;
wire   [3:0] zext_ln6305_1_cast_cast_cast_cast_fu_320_p3;
reg   [3:0] zext_ln6305_1_cast_cast_cast_cast_reg_811;
reg   [3:0] zext_ln6305_1_cast_cast_cast_cast_reg_811_pp0_iter1_reg;
reg   [0:0] icmp_ln6305_reg_816;
reg   [0:0] icmp_ln6305_reg_816_pp0_iter1_reg;
wire   [2:0] v4305_mid2_fu_431_p3;
reg   [2:0] v4305_mid2_reg_820;
wire   [2:0] v4304_fu_439_p3;
reg   [2:0] v4304_reg_826;
wire   [3:0] lshr_ln_fu_451_p4;
reg   [3:0] lshr_ln_reg_831;
wire   [9:0] add_ln6310_fu_550_p2;
reg   [9:0] add_ln6310_reg_837;
wire   [9:0] add_ln6312_fu_556_p2;
reg   [9:0] add_ln6312_reg_843;
wire   [0:0] icmp_ln6307_fu_582_p2;
reg   [0:0] icmp_ln6307_reg_849;
wire   [0:0] icmp_ln6306_fu_588_p2;
reg   [0:0] icmp_ln6306_reg_854;
wire   [8:0] add_ln6316_1_fu_712_p2;
reg   [8:0] add_ln6316_1_reg_859;
reg   [0:0] ap_phi_mux_icmp_ln630651_phi_fu_256_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln630750_phi_fu_267_p4;
wire   [63:0] zext_ln6310_4_fu_736_p1;
wire   [63:0] zext_ln6312_2_fu_747_p1;
wire   [63:0] zext_ln6316_4_fu_754_p1;
reg   [8:0] indvar_flatten1245_fu_118;
wire   [8:0] add_ln6305_1_fu_356_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten1245_load;
reg   [5:0] v430346_fu_122;
wire   [5:0] v4303_fu_411_p3;
reg   [5:0] indvar_flatten47_fu_126;
wire   [5:0] select_ln6306_1_fu_574_p3;
reg   [2:0] v430448_fu_130;
reg   [2:0] v430549_fu_134;
wire   [2:0] v4305_fu_562_p2;
reg    v9242_0_ce0_local;
reg    v9242_1_ce0_local;
reg    v9242_2_ce0_local;
reg    v9242_3_ce0_local;
reg    v4361_3_we0_local;
reg    v4361_3_ce0_local;
reg    v4361_2_we0_local;
reg    v4361_2_ce0_local;
reg    v4361_1_we0_local;
reg    v4361_1_ce0_local;
reg    v4361_we0_local;
reg    v4361_ce0_local;
wire   [2:0] tmp_fu_274_p4;
wire   [0:0] tmp_180_fu_300_p3;
wire   [0:0] empty_fu_308_p1;
wire   [0:0] xor_ln6305_fu_399_p2;
wire   [5:0] add_ln6305_fu_385_p2;
wire   [2:0] select_ln6305_fu_391_p3;
wire   [0:0] and_ln6305_fu_405_p2;
wire   [0:0] empty_259_fu_425_p2;
wire   [2:0] add_ln6306_fu_419_p2;
wire   [7:0] zext_ln6305_fu_447_p1;
wire   [5:0] zext_ln6305_1_fu_461_p1;
wire   [5:0] empty_261_fu_470_p2;
wire   [6:0] tmp_181_fu_483_p3;
wire   [9:0] p_shl83_fu_475_p3;
wire   [9:0] zext_ln6310_fu_491_p1;
wire   [7:0] empty_260_fu_465_p2;
wire   [5:0] tmp_182_fu_501_p4;
wire   [6:0] tmp_183_fu_519_p3;
wire   [9:0] p_shl81_fu_511_p3;
wire   [9:0] zext_ln6312_fu_527_p1;
wire   [3:0] zext_ln6306_fu_537_p1;
wire   [3:0] empty_262_fu_541_p2;
wire   [9:0] sub_ln6310_fu_495_p2;
wire   [9:0] zext_ln6310_1_fu_546_p1;
wire   [9:0] sub_ln6312_fu_531_p2;
wire   [5:0] add_ln6306_1_fu_568_p2;
wire   [6:0] p_shl85_fu_617_p3;
wire   [6:0] zext_ln6316_fu_614_p1;
wire   [6:0] sub_ln6316_fu_624_p2;
wire   [6:0] zext_ln6316_1_fu_630_p1;
wire   [6:0] add_ln6316_fu_633_p2;
wire   [5:0] trunc_ln6316_fu_639_p1;
wire   [8:0] tmp_184_fu_643_p3;
wire   [8:0] zext_ln6316_2_fu_651_p1;
wire   [10:0] tmp_185_fu_668_p3;
wire   [13:0] p_shl78_fu_661_p3;
wire   [13:0] zext_ln6310_2_fu_675_p1;
wire   [10:0] tmp_186_fu_692_p3;
wire   [13:0] p_shl_fu_685_p3;
wire   [13:0] zext_ln6312_1_fu_699_p1;
wire   [8:0] sub_ln6306_fu_655_p2;
wire   [8:0] zext_ln6316_3_fu_709_p1;
wire   [3:0] zext_ln6307_fu_718_p1;
wire   [3:0] add_ln6309_fu_721_p2;
wire   [13:0] sub_ln6310_1_fu_679_p2;
wire   [13:0] zext_ln6310_3_fu_726_p1;
wire   [13:0] add_ln6310_1_fu_730_p2;
wire   [13:0] sub_ln6312_1_fu_703_p2;
wire   [13:0] add_ln6312_1_fu_741_p2;
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
reg    ap_condition_196;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1245_fu_118 = 9'd0;
#0 v430346_fu_122 = 6'd0;
#0 indvar_flatten47_fu_126 = 6'd0;
#0 v430448_fu_130 = 3'd0;
#0 v430549_fu_134 = 3'd0;
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
    if ((1'b1 == ap_condition_196)) begin
        indvar_flatten1245_fu_118 <= add_ln6305_1_fu_356_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten47_fu_126 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten47_fu_126 <= select_ln6306_1_fu_574_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v430346_fu_122 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v430346_fu_122 <= v4303_fu_411_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v430448_fu_130 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v430448_fu_130 <= v4304_fu_439_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v430549_fu_134 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v430549_fu_134 <= v4305_fu_562_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6310_reg_837 <= add_ln6310_fu_550_p2;
        add_ln6312_reg_843 <= add_ln6312_fu_556_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln6305_reg_816 <= icmp_ln6305_fu_362_p2;
        icmp_ln6305_reg_816_pp0_iter1_reg <= icmp_ln6305_reg_816;
        lshr_ln_reg_831 <= {{v4303_fu_411_p3[5:2]}};
        mul_i_reg_796[7 : 5] <= mul_i_fu_284_p3[7 : 5];
        select_ln6305_cast_cast_reg_806[2 : 0] <= select_ln6305_cast_cast_fu_312_p3[2 : 0];
        trunc_ln_reg_801[5 : 3] <= trunc_ln_fu_292_p3[5 : 3];
        v4304_reg_826 <= v4304_fu_439_p3;
        v4305_mid2_reg_820 <= v4305_mid2_fu_431_p3;
        zext_ln6305_1_cast_cast_cast_cast_reg_811[2 : 0] <= zext_ln6305_1_cast_cast_cast_cast_fu_320_p3[2 : 0];
        zext_ln6305_1_cast_cast_cast_cast_reg_811_pp0_iter1_reg[2 : 0] <= zext_ln6305_1_cast_cast_cast_cast_reg_811[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln6316_1_reg_859 <= add_ln6316_1_fu_712_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6306_reg_854 <= icmp_ln6306_fu_588_p2;
        icmp_ln6307_reg_849 <= icmp_ln6307_fu_582_p2;
    end
end
always @ (*) begin
    if (((icmp_ln6305_fu_362_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln6305_reg_816_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln630651_phi_fu_256_p4 = icmp_ln6306_reg_854;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln630651_phi_fu_256_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln630651_phi_fu_256_p4 = icmp_ln6306_reg_854;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln6305_reg_816_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln630750_phi_fu_267_p4 = icmp_ln6307_reg_849;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln630750_phi_fu_267_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln630750_phi_fu_267_p4 = icmp_ln6307_reg_849;
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
        ap_sig_allocacmp_indvar_flatten1245_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1245_load = indvar_flatten1245_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4361_1_ce0_local = 1'b1;
    end else begin
        v4361_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4361_1_we0_local = 1'b1;
    end else begin
        v4361_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4361_2_ce0_local = 1'b1;
    end else begin
        v4361_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4361_2_we0_local = 1'b1;
    end else begin
        v4361_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4361_3_ce0_local = 1'b1;
    end else begin
        v4361_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4361_3_we0_local = 1'b1;
    end else begin
        v4361_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4361_ce0_local = 1'b1;
    end else begin
        v4361_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4361_we0_local = 1'b1;
    end else begin
        v4361_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9242_0_ce0_local = 1'b1;
    end else begin
        v9242_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9242_1_ce0_local = 1'b1;
    end else begin
        v9242_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9242_2_ce0_local = 1'b1;
    end else begin
        v9242_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9242_3_ce0_local = 1'b1;
    end else begin
        v9242_3_ce0_local = 1'b0;
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
assign add_ln6305_1_fu_356_p2 = (ap_sig_allocacmp_indvar_flatten1245_load + 9'd1);
assign add_ln6305_fu_385_p2 = (v430346_fu_122 + 6'd4);
assign add_ln6306_1_fu_568_p2 = (indvar_flatten47_fu_126 + 6'd1);
assign add_ln6306_fu_419_p2 = (select_ln6305_fu_391_p3 + 3'd1);
assign add_ln6309_fu_721_p2 = (zext_ln6305_1_cast_cast_cast_cast_reg_811_pp0_iter1_reg + zext_ln6307_fu_718_p1);
assign add_ln6310_1_fu_730_p2 = (sub_ln6310_1_fu_679_p2 + zext_ln6310_3_fu_726_p1);
assign add_ln6310_fu_550_p2 = (sub_ln6310_fu_495_p2 + zext_ln6310_1_fu_546_p1);
assign add_ln6312_1_fu_741_p2 = (sub_ln6312_1_fu_703_p2 + zext_ln6310_3_fu_726_p1);
assign add_ln6312_fu_556_p2 = (sub_ln6312_fu_531_p2 + zext_ln6310_1_fu_546_p1);
assign add_ln6316_1_fu_712_p2 = (sub_ln6306_fu_655_p2 + zext_ln6316_3_fu_709_p1);
assign add_ln6316_fu_633_p2 = (sub_ln6316_fu_624_p2 + zext_ln6316_1_fu_630_p1);
assign and_ln6305_fu_405_p2 = (xor_ln6305_fu_399_p2 & ap_phi_mux_icmp_ln630750_phi_fu_267_p4);
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
    ap_condition_196 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_259_fu_425_p2 = (ap_phi_mux_icmp_ln630651_phi_fu_256_p4 | and_ln6305_fu_405_p2);
assign empty_260_fu_465_p2 = (mul_i_reg_796 + zext_ln6305_fu_447_p1);
assign empty_261_fu_470_p2 = (zext_ln6305_1_fu_461_p1 + trunc_ln_reg_801);
assign empty_262_fu_541_p2 = (select_ln6305_cast_cast_reg_806 + zext_ln6306_fu_537_p1);
assign empty_fu_308_p1 = v4354_0[0:0];
assign icmp_ln6305_fu_362_p2 = ((ap_sig_allocacmp_indvar_flatten1245_load == 9'd391) ? 1'b1 : 1'b0);
assign icmp_ln6306_fu_588_p2 = ((select_ln6306_1_fu_574_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln6307_fu_582_p2 = ((v4305_fu_562_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_fu_451_p4 = {{v4303_fu_411_p3[5:2]}};
assign mul_i_fu_284_p3 = {{tmp_fu_274_p4}, {5'd0}};
assign p_shl78_fu_661_p3 = {{add_ln6310_reg_837}, {4'd0}};
assign p_shl81_fu_511_p3 = {{tmp_182_fu_501_p4}, {4'd0}};
assign p_shl83_fu_475_p3 = {{empty_261_fu_470_p2}, {4'd0}};
assign p_shl85_fu_617_p3 = {{lshr_ln_reg_831}, {3'd0}};
assign p_shl_fu_685_p3 = {{add_ln6312_reg_843}, {4'd0}};
assign select_ln6305_cast_cast_fu_312_p3 = ((tmp_180_fu_300_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln6305_fu_391_p3 = ((ap_phi_mux_icmp_ln630651_phi_fu_256_p4[0:0] == 1'b1) ? 3'd0 : v430448_fu_130);
assign select_ln6306_1_fu_574_p3 = ((ap_phi_mux_icmp_ln630651_phi_fu_256_p4[0:0] == 1'b1) ? 6'd1 : add_ln6306_1_fu_568_p2);
assign sub_ln6306_fu_655_p2 = (tmp_184_fu_643_p3 - zext_ln6316_2_fu_651_p1);
assign sub_ln6310_1_fu_679_p2 = (p_shl78_fu_661_p3 - zext_ln6310_2_fu_675_p1);
assign sub_ln6310_fu_495_p2 = (p_shl83_fu_475_p3 - zext_ln6310_fu_491_p1);
assign sub_ln6312_1_fu_703_p2 = (p_shl_fu_685_p3 - zext_ln6312_1_fu_699_p1);
assign sub_ln6312_fu_531_p2 = (p_shl81_fu_511_p3 - zext_ln6312_fu_527_p1);
assign sub_ln6316_fu_624_p2 = (p_shl85_fu_617_p3 - zext_ln6316_fu_614_p1);
assign tmp_180_fu_300_p3 = v4354_0[32'd1];
assign tmp_181_fu_483_p3 = {{empty_261_fu_470_p2}, {1'd0}};
assign tmp_182_fu_501_p4 = {{empty_260_fu_465_p2[7:2]}};
assign tmp_183_fu_519_p3 = {{tmp_182_fu_501_p4}, {1'd0}};
assign tmp_184_fu_643_p3 = {{trunc_ln6316_fu_639_p1}, {3'd0}};
assign tmp_185_fu_668_p3 = {{add_ln6310_reg_837}, {1'd0}};
assign tmp_186_fu_692_p3 = {{add_ln6312_reg_843}, {1'd0}};
assign tmp_fu_274_p4 = {{v4354_0[4:2]}};
assign trunc_ln6316_fu_639_p1 = add_ln6316_fu_633_p2[5:0];
assign trunc_ln_fu_292_p3 = {{tmp_fu_274_p4}, {3'd0}};
assign v4303_fu_411_p3 = ((ap_phi_mux_icmp_ln630651_phi_fu_256_p4[0:0] == 1'b1) ? add_ln6305_fu_385_p2 : v430346_fu_122);
assign v4304_fu_439_p3 = ((and_ln6305_fu_405_p2[0:0] == 1'b1) ? add_ln6306_fu_419_p2 : select_ln6305_fu_391_p3);
assign v4305_fu_562_p2 = (v4305_mid2_fu_431_p3 + 3'd1);
assign v4305_mid2_fu_431_p3 = ((empty_259_fu_425_p2[0:0] == 1'b1) ? 3'd0 : v430549_fu_134);
assign v4361_1_address0 = zext_ln6316_4_fu_754_p1;
assign v4361_1_ce0 = v4361_1_ce0_local;
assign v4361_1_d0 = v9242_2_q0;
assign v4361_1_we0 = v4361_1_we0_local;
assign v4361_2_address0 = zext_ln6316_4_fu_754_p1;
assign v4361_2_ce0 = v4361_2_ce0_local;
assign v4361_2_d0 = v9242_1_q0;
assign v4361_2_we0 = v4361_2_we0_local;
assign v4361_3_address0 = zext_ln6316_4_fu_754_p1;
assign v4361_3_ce0 = v4361_3_ce0_local;
assign v4361_3_d0 = v9242_0_q0;
assign v4361_3_we0 = v4361_3_we0_local;
assign v4361_address0 = zext_ln6316_4_fu_754_p1;
assign v4361_ce0 = v4361_ce0_local;
assign v4361_d0 = v9242_3_q0;
assign v4361_we0 = v4361_we0_local;
assign v9242_0_address0 = zext_ln6310_4_fu_736_p1;
assign v9242_0_ce0 = v9242_0_ce0_local;
assign v9242_1_address0 = zext_ln6312_2_fu_747_p1;
assign v9242_1_ce0 = v9242_1_ce0_local;
assign v9242_2_address0 = zext_ln6312_2_fu_747_p1;
assign v9242_2_ce0 = v9242_2_ce0_local;
assign v9242_3_address0 = zext_ln6312_2_fu_747_p1;
assign v9242_3_ce0 = v9242_3_ce0_local;
assign xor_ln6305_fu_399_p2 = (ap_phi_mux_icmp_ln630651_phi_fu_256_p4 ^ 1'd1);
assign zext_ln6305_1_cast_cast_cast_cast_fu_320_p3 = ((empty_fu_308_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln6305_1_fu_461_p1 = lshr_ln_fu_451_p4;
assign zext_ln6305_fu_447_p1 = v4303_fu_411_p3;
assign zext_ln6306_fu_537_p1 = v4304_fu_439_p3;
assign zext_ln6307_fu_718_p1 = v4305_mid2_reg_820;
assign zext_ln6310_1_fu_546_p1 = empty_262_fu_541_p2;
assign zext_ln6310_2_fu_675_p1 = tmp_185_fu_668_p3;
assign zext_ln6310_3_fu_726_p1 = add_ln6309_fu_721_p2;
assign zext_ln6310_4_fu_736_p1 = add_ln6310_1_fu_730_p2;
assign zext_ln6310_fu_491_p1 = tmp_181_fu_483_p3;
assign zext_ln6312_1_fu_699_p1 = tmp_186_fu_692_p3;
assign zext_ln6312_2_fu_747_p1 = add_ln6312_1_fu_741_p2;
assign zext_ln6312_fu_527_p1 = tmp_183_fu_519_p3;
assign zext_ln6316_1_fu_630_p1 = v4304_reg_826;
assign zext_ln6316_2_fu_651_p1 = add_ln6316_fu_633_p2;
assign zext_ln6316_3_fu_709_p1 = v4305_mid2_reg_820;
assign zext_ln6316_4_fu_754_p1 = add_ln6316_1_reg_859;
assign zext_ln6316_fu_614_p1 = lshr_ln_reg_831;
always @ (posedge ap_clk) begin
    mul_i_reg_796[4:0] <= 5'b00000;
    trunc_ln_reg_801[2:0] <= 3'b000;
    select_ln6305_cast_cast_reg_806[3] <= 1'b0;
    zext_ln6305_1_cast_cast_cast_cast_reg_811[3] <= 1'b0;
    zext_ln6305_1_cast_cast_cast_cast_reg_811_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 