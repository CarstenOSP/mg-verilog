module forward_dataflow_in_loop_VITIS_LOOP_14359_1_Loop_VITIS_LOOP_14324_1_proc201119 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v11491_address0,v11491_ce0,v11491_we0,v11491_d0,v11491_1_address0,v11491_1_ce0,v11491_1_we0,v11491_1_d0,v11491_2_address0,v11491_2_ce0,v11491_2_we0,v11491_2_d0,v11491_3_address0,v11491_3_ce0,v11491_3_we0,v11491_3_d0,v11484,v15463_0_address0,v15463_0_ce0,v15463_0_q0,v15463_1_address0,v15463_1_ce0,v15463_1_q0,v15463_2_address0,v15463_2_ce0,v15463_2_q0,v15463_3_address0,v15463_3_ce0,v15463_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v11491_address0;
output   v11491_ce0;
output   v11491_we0;
output  [7:0] v11491_d0;
output  [8:0] v11491_1_address0;
output   v11491_1_ce0;
output   v11491_1_we0;
output  [7:0] v11491_1_d0;
output  [8:0] v11491_2_address0;
output   v11491_2_ce0;
output   v11491_2_we0;
output  [7:0] v11491_2_d0;
output  [8:0] v11491_3_address0;
output   v11491_3_ce0;
output   v11491_3_we0;
output  [7:0] v11491_3_d0;
input  [8:0] v11484;
output  [13:0] v15463_0_address0;
output   v15463_0_ce0;
input  [7:0] v15463_0_q0;
output  [13:0] v15463_1_address0;
output   v15463_1_ce0;
input  [7:0] v15463_1_q0;
output  [13:0] v15463_2_address0;
output   v15463_2_ce0;
input  [7:0] v15463_2_q0;
output  [13:0] v15463_3_address0;
output   v15463_3_ce0;
input  [7:0] v15463_3_q0;
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
wire   [0:0] icmp_ln14324_fu_368_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] mul_i213_i_i_fu_290_p3;
reg   [7:0] mul_i213_i_i_reg_802;
wire   [5:0] trunc_ln_i_fu_298_p3;
reg   [5:0] trunc_ln_i_reg_807;
wire   [3:0] zext_ln14324_cast_cast_i_cast_cast_fu_314_p3;
reg   [3:0] zext_ln14324_cast_cast_i_cast_cast_reg_812;
wire   [3:0] zext_ln14324_1_cast_cast_i_cast_cast_fu_326_p3;
reg   [3:0] zext_ln14324_1_cast_cast_i_cast_cast_reg_817;
reg   [3:0] zext_ln14324_1_cast_cast_i_cast_cast_reg_817_pp0_iter1_reg;
reg   [0:0] icmp_ln14324_reg_822;
reg   [0:0] icmp_ln14324_reg_822_pp0_iter1_reg;
wire   [2:0] v11473_mid2_i_fu_437_p3;
reg   [2:0] v11473_mid2_i_reg_826;
wire   [2:0] select_ln14325_fu_445_p3;
reg   [2:0] select_ln14325_reg_832;
wire   [3:0] lshr_ln_i_fu_457_p4;
reg   [3:0] lshr_ln_i_reg_837;
wire   [9:0] add_ln14329_fu_556_p2;
reg   [9:0] add_ln14329_reg_843;
wire   [9:0] add_ln14331_fu_562_p2;
reg   [9:0] add_ln14331_reg_849;
wire   [0:0] icmp_ln14326_fu_588_p2;
reg   [0:0] icmp_ln14326_reg_855;
wire   [0:0] icmp_ln14325_fu_594_p2;
reg   [0:0] icmp_ln14325_reg_860;
wire   [8:0] add_ln14335_1_fu_718_p2;
reg   [8:0] add_ln14335_1_reg_865;
reg   [0:0] ap_phi_mux_icmp_ln1432551_i_phi_fu_258_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1432650_i_phi_fu_269_p4;
wire   [63:0] zext_ln14329_4_fu_742_p1;
wire   [63:0] zext_ln14331_2_fu_753_p1;
wire   [63:0] zext_ln14335_4_fu_760_p1;
reg   [8:0] indvar_flatten1245_i_fu_120;
wire   [8:0] add_ln14324_1_fu_362_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten1245_i_load;
reg   [5:0] v1147146_i_fu_124;
wire   [5:0] select_ln14324_1_fu_417_p3;
reg   [5:0] indvar_flatten47_i_fu_128;
wire   [5:0] select_ln14325_1_fu_580_p3;
reg   [2:0] v1147248_i_fu_132;
reg   [2:0] v1147349_i_fu_136;
wire   [2:0] add_ln14326_fu_568_p2;
reg    v15463_0_ce0_local;
reg    v15463_1_ce0_local;
reg    v15463_2_ce0_local;
reg    v15463_3_ce0_local;
reg    v11491_3_we0_local;
reg    v11491_3_ce0_local;
reg    v11491_2_we0_local;
reg    v11491_2_ce0_local;
reg    v11491_1_we0_local;
reg    v11491_1_ce0_local;
reg    v11491_we0_local;
reg    v11491_ce0_local;
wire   [2:0] tmp_i_fu_280_p4;
wire   [9:0] v11484_cast2_fu_276_p1;
wire   [0:0] tmp_fu_306_p3;
wire   [0:0] empty_fu_322_p1;
wire   [0:0] xor_ln14324_fu_405_p2;
wire   [5:0] add_ln14324_fu_391_p2;
wire   [2:0] select_ln14324_fu_397_p3;
wire   [0:0] and_ln14324_fu_411_p2;
wire   [0:0] empty_372_fu_431_p2;
wire   [2:0] add_ln14325_fu_425_p2;
wire   [7:0] zext_ln14324_fu_453_p1;
wire   [5:0] zext_ln14324_1_fu_467_p1;
wire   [5:0] empty_374_fu_476_p2;
wire   [6:0] tmp_389_fu_489_p3;
wire   [9:0] p_shl34_fu_481_p3;
wire   [9:0] zext_ln14329_fu_497_p1;
wire   [7:0] empty_373_fu_471_p2;
wire   [5:0] tmp_390_fu_507_p4;
wire   [6:0] tmp_391_fu_525_p3;
wire   [9:0] p_shl32_fu_517_p3;
wire   [9:0] zext_ln14331_fu_533_p1;
wire   [3:0] zext_ln14325_fu_543_p1;
wire   [3:0] empty_375_fu_547_p2;
wire   [9:0] sub_ln14329_fu_501_p2;
wire   [9:0] zext_ln14329_1_fu_552_p1;
wire   [9:0] sub_ln14331_fu_537_p2;
wire   [5:0] add_ln14325_1_fu_574_p2;
wire   [6:0] p_shl36_fu_623_p3;
wire   [6:0] zext_ln14335_fu_620_p1;
wire   [6:0] sub_ln14335_fu_630_p2;
wire   [6:0] zext_ln14335_1_fu_636_p1;
wire   [6:0] add_ln14335_fu_639_p2;
wire   [5:0] trunc_ln14335_fu_645_p1;
wire   [8:0] tmp_392_fu_649_p3;
wire   [8:0] zext_ln14335_2_fu_657_p1;
wire   [10:0] tmp_393_fu_674_p3;
wire   [13:0] p_shl29_fu_667_p3;
wire   [13:0] zext_ln14329_2_fu_681_p1;
wire   [10:0] tmp_394_fu_698_p3;
wire   [13:0] p_shl_fu_691_p3;
wire   [13:0] zext_ln14331_1_fu_705_p1;
wire   [8:0] sub_ln14325_fu_661_p2;
wire   [8:0] zext_ln14335_3_fu_715_p1;
wire   [3:0] zext_ln14326_fu_724_p1;
wire   [3:0] add_ln14328_fu_727_p2;
wire   [13:0] sub_ln14329_1_fu_685_p2;
wire   [13:0] zext_ln14329_3_fu_732_p1;
wire   [13:0] add_ln14329_1_fu_736_p2;
wire   [13:0] sub_ln14331_1_fu_709_p2;
wire   [13:0] add_ln14331_1_fu_747_p2;
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
#0 indvar_flatten1245_i_fu_120 = 9'd0;
#0 v1147146_i_fu_124 = 6'd0;
#0 indvar_flatten47_i_fu_128 = 6'd0;
#0 v1147248_i_fu_132 = 3'd0;
#0 v1147349_i_fu_136 = 3'd0;
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
        indvar_flatten1245_i_fu_120 <= add_ln14324_1_fu_362_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten47_i_fu_128 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten47_i_fu_128 <= select_ln14325_1_fu_580_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1147146_i_fu_124 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1147146_i_fu_124 <= select_ln14324_1_fu_417_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1147248_i_fu_132 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1147248_i_fu_132 <= select_ln14325_fu_445_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1147349_i_fu_136 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1147349_i_fu_136 <= add_ln14326_fu_568_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln14329_reg_843 <= add_ln14329_fu_556_p2;
        add_ln14331_reg_849 <= add_ln14331_fu_562_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln14324_reg_822 <= icmp_ln14324_fu_368_p2;
        icmp_ln14324_reg_822_pp0_iter1_reg <= icmp_ln14324_reg_822;
        lshr_ln_i_reg_837 <= {{select_ln14324_1_fu_417_p3[5:2]}};
        mul_i213_i_i_reg_802[7 : 5] <= mul_i213_i_i_fu_290_p3[7 : 5];
        select_ln14325_reg_832 <= select_ln14325_fu_445_p3;
        trunc_ln_i_reg_807[5 : 3] <= trunc_ln_i_fu_298_p3[5 : 3];
        v11473_mid2_i_reg_826 <= v11473_mid2_i_fu_437_p3;
        zext_ln14324_1_cast_cast_i_cast_cast_reg_817[2 : 0] <= zext_ln14324_1_cast_cast_i_cast_cast_fu_326_p3[2 : 0];
        zext_ln14324_1_cast_cast_i_cast_cast_reg_817_pp0_iter1_reg[2 : 0] <= zext_ln14324_1_cast_cast_i_cast_cast_reg_817[2 : 0];
        zext_ln14324_cast_cast_i_cast_cast_reg_812[2 : 0] <= zext_ln14324_cast_cast_i_cast_cast_fu_314_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln14335_1_reg_865 <= add_ln14335_1_fu_718_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln14325_reg_860 <= icmp_ln14325_fu_594_p2;
        icmp_ln14326_reg_855 <= icmp_ln14326_fu_588_p2;
    end
end
always @ (*) begin
    if (((icmp_ln14324_fu_368_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14324_reg_822_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1432551_i_phi_fu_258_p4 = icmp_ln14325_reg_860;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1432551_i_phi_fu_258_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1432551_i_phi_fu_258_p4 = icmp_ln14325_reg_860;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14324_reg_822_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1432650_i_phi_fu_269_p4 = icmp_ln14326_reg_855;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1432650_i_phi_fu_269_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1432650_i_phi_fu_269_p4 = icmp_ln14326_reg_855;
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
        ap_sig_allocacmp_indvar_flatten1245_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1245_i_load = indvar_flatten1245_i_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11491_1_ce0_local = 1'b1;
    end else begin
        v11491_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11491_1_we0_local = 1'b1;
    end else begin
        v11491_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11491_2_ce0_local = 1'b1;
    end else begin
        v11491_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11491_2_we0_local = 1'b1;
    end else begin
        v11491_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11491_3_ce0_local = 1'b1;
    end else begin
        v11491_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11491_3_we0_local = 1'b1;
    end else begin
        v11491_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11491_ce0_local = 1'b1;
    end else begin
        v11491_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11491_we0_local = 1'b1;
    end else begin
        v11491_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15463_0_ce0_local = 1'b1;
    end else begin
        v15463_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15463_1_ce0_local = 1'b1;
    end else begin
        v15463_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15463_2_ce0_local = 1'b1;
    end else begin
        v15463_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15463_3_ce0_local = 1'b1;
    end else begin
        v15463_3_ce0_local = 1'b0;
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
assign add_ln14324_1_fu_362_p2 = (ap_sig_allocacmp_indvar_flatten1245_i_load + 9'd1);
assign add_ln14324_fu_391_p2 = (v1147146_i_fu_124 + 6'd4);
assign add_ln14325_1_fu_574_p2 = (indvar_flatten47_i_fu_128 + 6'd1);
assign add_ln14325_fu_425_p2 = (select_ln14324_fu_397_p3 + 3'd1);
assign add_ln14326_fu_568_p2 = (v11473_mid2_i_fu_437_p3 + 3'd1);
assign add_ln14328_fu_727_p2 = (zext_ln14324_1_cast_cast_i_cast_cast_reg_817_pp0_iter1_reg + zext_ln14326_fu_724_p1);
assign add_ln14329_1_fu_736_p2 = (sub_ln14329_1_fu_685_p2 + zext_ln14329_3_fu_732_p1);
assign add_ln14329_fu_556_p2 = (sub_ln14329_fu_501_p2 + zext_ln14329_1_fu_552_p1);
assign add_ln14331_1_fu_747_p2 = (sub_ln14331_1_fu_709_p2 + zext_ln14329_3_fu_732_p1);
assign add_ln14331_fu_562_p2 = (sub_ln14331_fu_537_p2 + zext_ln14329_1_fu_552_p1);
assign add_ln14335_1_fu_718_p2 = (sub_ln14325_fu_661_p2 + zext_ln14335_3_fu_715_p1);
assign add_ln14335_fu_639_p2 = (sub_ln14335_fu_630_p2 + zext_ln14335_1_fu_636_p1);
assign and_ln14324_fu_411_p2 = (xor_ln14324_fu_405_p2 & ap_phi_mux_icmp_ln1432650_i_phi_fu_269_p4);
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
assign empty_372_fu_431_p2 = (ap_phi_mux_icmp_ln1432551_i_phi_fu_258_p4 | and_ln14324_fu_411_p2);
assign empty_373_fu_471_p2 = (mul_i213_i_i_reg_802 + zext_ln14324_fu_453_p1);
assign empty_374_fu_476_p2 = (zext_ln14324_1_fu_467_p1 + trunc_ln_i_reg_807);
assign empty_375_fu_547_p2 = (zext_ln14324_cast_cast_i_cast_cast_reg_812 + zext_ln14325_fu_543_p1);
assign empty_fu_322_p1 = v11484[0:0];
assign icmp_ln14324_fu_368_p2 = ((ap_sig_allocacmp_indvar_flatten1245_i_load == 9'd391) ? 1'b1 : 1'b0);
assign icmp_ln14325_fu_594_p2 = ((select_ln14325_1_fu_580_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln14326_fu_588_p2 = ((add_ln14326_fu_568_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_i_fu_457_p4 = {{select_ln14324_1_fu_417_p3[5:2]}};
assign mul_i213_i_i_fu_290_p3 = {{tmp_i_fu_280_p4}, {5'd0}};
assign p_shl29_fu_667_p3 = {{add_ln14329_reg_843}, {4'd0}};
assign p_shl32_fu_517_p3 = {{tmp_390_fu_507_p4}, {4'd0}};
assign p_shl34_fu_481_p3 = {{empty_374_fu_476_p2}, {4'd0}};
assign p_shl36_fu_623_p3 = {{lshr_ln_i_reg_837}, {3'd0}};
assign p_shl_fu_691_p3 = {{add_ln14331_reg_849}, {4'd0}};
assign select_ln14324_1_fu_417_p3 = ((ap_phi_mux_icmp_ln1432551_i_phi_fu_258_p4[0:0] == 1'b1) ? add_ln14324_fu_391_p2 : v1147146_i_fu_124);
assign select_ln14324_fu_397_p3 = ((ap_phi_mux_icmp_ln1432551_i_phi_fu_258_p4[0:0] == 1'b1) ? 3'd0 : v1147248_i_fu_132);
assign select_ln14325_1_fu_580_p3 = ((ap_phi_mux_icmp_ln1432551_i_phi_fu_258_p4[0:0] == 1'b1) ? 6'd1 : add_ln14325_1_fu_574_p2);
assign select_ln14325_fu_445_p3 = ((and_ln14324_fu_411_p2[0:0] == 1'b1) ? add_ln14325_fu_425_p2 : select_ln14324_fu_397_p3);
assign sub_ln14325_fu_661_p2 = (tmp_392_fu_649_p3 - zext_ln14335_2_fu_657_p1);
assign sub_ln14329_1_fu_685_p2 = (p_shl29_fu_667_p3 - zext_ln14329_2_fu_681_p1);
assign sub_ln14329_fu_501_p2 = (p_shl34_fu_481_p3 - zext_ln14329_fu_497_p1);
assign sub_ln14331_1_fu_709_p2 = (p_shl_fu_691_p3 - zext_ln14331_1_fu_705_p1);
assign sub_ln14331_fu_537_p2 = (p_shl32_fu_517_p3 - zext_ln14331_fu_533_p1);
assign sub_ln14335_fu_630_p2 = (p_shl36_fu_623_p3 - zext_ln14335_fu_620_p1);
assign tmp_389_fu_489_p3 = {{empty_374_fu_476_p2}, {1'd0}};
assign tmp_390_fu_507_p4 = {{empty_373_fu_471_p2[7:2]}};
assign tmp_391_fu_525_p3 = {{tmp_390_fu_507_p4}, {1'd0}};
assign tmp_392_fu_649_p3 = {{trunc_ln14335_fu_645_p1}, {3'd0}};
assign tmp_393_fu_674_p3 = {{add_ln14329_reg_843}, {1'd0}};
assign tmp_394_fu_698_p3 = {{add_ln14331_reg_849}, {1'd0}};
assign tmp_fu_306_p3 = v11484_cast2_fu_276_p1[32'd1];
assign tmp_i_fu_280_p4 = {{v11484[8:6]}};
assign trunc_ln14335_fu_645_p1 = add_ln14335_fu_639_p2[5:0];
assign trunc_ln_i_fu_298_p3 = {{tmp_i_fu_280_p4}, {3'd0}};
assign v11473_mid2_i_fu_437_p3 = ((empty_372_fu_431_p2[0:0] == 1'b1) ? 3'd0 : v1147349_i_fu_136);
assign v11484_cast2_fu_276_p1 = v11484;
assign v11491_1_address0 = zext_ln14335_4_fu_760_p1;
assign v11491_1_ce0 = v11491_1_ce0_local;
assign v11491_1_d0 = v15463_2_q0;
assign v11491_1_we0 = v11491_1_we0_local;
assign v11491_2_address0 = zext_ln14335_4_fu_760_p1;
assign v11491_2_ce0 = v11491_2_ce0_local;
assign v11491_2_d0 = v15463_1_q0;
assign v11491_2_we0 = v11491_2_we0_local;
assign v11491_3_address0 = zext_ln14335_4_fu_760_p1;
assign v11491_3_ce0 = v11491_3_ce0_local;
assign v11491_3_d0 = v15463_0_q0;
assign v11491_3_we0 = v11491_3_we0_local;
assign v11491_address0 = zext_ln14335_4_fu_760_p1;
assign v11491_ce0 = v11491_ce0_local;
assign v11491_d0 = v15463_3_q0;
assign v11491_we0 = v11491_we0_local;
assign v15463_0_address0 = zext_ln14329_4_fu_742_p1;
assign v15463_0_ce0 = v15463_0_ce0_local;
assign v15463_1_address0 = zext_ln14331_2_fu_753_p1;
assign v15463_1_ce0 = v15463_1_ce0_local;
assign v15463_2_address0 = zext_ln14331_2_fu_753_p1;
assign v15463_2_ce0 = v15463_2_ce0_local;
assign v15463_3_address0 = zext_ln14331_2_fu_753_p1;
assign v15463_3_ce0 = v15463_3_ce0_local;
assign xor_ln14324_fu_405_p2 = (ap_phi_mux_icmp_ln1432551_i_phi_fu_258_p4 ^ 1'd1);
assign zext_ln14324_1_cast_cast_i_cast_cast_fu_326_p3 = ((empty_fu_322_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln14324_1_fu_467_p1 = lshr_ln_i_fu_457_p4;
assign zext_ln14324_cast_cast_i_cast_cast_fu_314_p3 = ((tmp_fu_306_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln14324_fu_453_p1 = select_ln14324_1_fu_417_p3;
assign zext_ln14325_fu_543_p1 = select_ln14325_fu_445_p3;
assign zext_ln14326_fu_724_p1 = v11473_mid2_i_reg_826;
assign zext_ln14329_1_fu_552_p1 = empty_375_fu_547_p2;
assign zext_ln14329_2_fu_681_p1 = tmp_393_fu_674_p3;
assign zext_ln14329_3_fu_732_p1 = add_ln14328_fu_727_p2;
assign zext_ln14329_4_fu_742_p1 = add_ln14329_1_fu_736_p2;
assign zext_ln14329_fu_497_p1 = tmp_389_fu_489_p3;
assign zext_ln14331_1_fu_705_p1 = tmp_394_fu_698_p3;
assign zext_ln14331_2_fu_753_p1 = add_ln14331_1_fu_747_p2;
assign zext_ln14331_fu_533_p1 = tmp_391_fu_525_p3;
assign zext_ln14335_1_fu_636_p1 = select_ln14325_reg_832;
assign zext_ln14335_2_fu_657_p1 = add_ln14335_fu_639_p2;
assign zext_ln14335_3_fu_715_p1 = v11473_mid2_i_reg_826;
assign zext_ln14335_4_fu_760_p1 = add_ln14335_1_reg_865;
assign zext_ln14335_fu_620_p1 = lshr_ln_i_reg_837;
always @ (posedge ap_clk) begin
    mul_i213_i_i_reg_802[4:0] <= 5'b00000;
    trunc_ln_i_reg_807[2:0] <= 3'b000;
    zext_ln14324_cast_cast_i_cast_cast_reg_812[3] <= 1'b0;
    zext_ln14324_1_cast_cast_i_cast_cast_reg_817[3] <= 1'b0;
    zext_ln14324_1_cast_cast_i_cast_cast_reg_817_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 