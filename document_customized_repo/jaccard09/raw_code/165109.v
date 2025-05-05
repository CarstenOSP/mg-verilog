module forward_dataflow_in_loop_VITIS_LOOP_8199_1_Loop_VITIS_LOOP_8162_1_proc158105 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5403_address0,v5403_ce0,v5403_we0,v5403_d0,v5403_1_address0,v5403_1_ce0,v5403_1_we0,v5403_1_d0,v5394,v9219_0_address0,v9219_0_ce0,v9219_0_q0,v9219_2_address0,v9219_2_ce0,v9219_2_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] v5403_address0;
output   v5403_ce0;
output   v5403_we0;
output  [7:0] v5403_d0;
output  [11:0] v5403_1_address0;
output   v5403_1_ce0;
output   v5403_1_we0;
output  [7:0] v5403_1_d0;
input  [4:0] v5394;
output  [15:0] v9219_0_address0;
output   v9219_0_ce0;
input  [7:0] v9219_0_q0;
output  [15:0] v9219_2_address0;
output   v9219_2_ce0;
input  [7:0] v9219_2_q0;
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
wire   [0:0] icmp_ln8162_fu_294_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [5:0] mul_i163_i_i_fu_224_p3;
reg   [5:0] mul_i163_i_i_reg_651;
wire   [5:0] zext_ln8162_cast_cast_i_cast_cast_fu_240_p3;
reg   [5:0] zext_ln8162_cast_cast_i_cast_cast_reg_656;
wire   [3:0] trunc_ln8162_cast_cast_i_cast_cast_fu_252_p3;
reg   [3:0] trunc_ln8162_cast_cast_i_cast_cast_reg_661;
reg   [3:0] trunc_ln8162_cast_cast_i_cast_cast_reg_661_pp0_iter1_reg;
reg   [0:0] icmp_ln8162_reg_666;
reg   [0:0] icmp_ln8162_reg_666_pp0_iter1_reg;
wire   [5:0] select_ln8162_1_fu_343_p3;
reg   [5:0] select_ln8162_1_reg_670;
wire   [3:0] select_ln8163_fu_371_p3;
reg   [3:0] select_ln8163_reg_676;
wire   [11:0] add_ln8167_fu_431_p2;
reg   [11:0] add_ln8167_reg_681;
reg   [2:0] lshr_ln_i_reg_687;
wire   [0:0] icmp_ln8164_fu_467_p2;
reg   [0:0] icmp_ln8164_reg_693;
wire   [0:0] icmp_ln8163_fu_473_p2;
reg   [0:0] icmp_ln8163_reg_698;
wire   [11:0] add_ln8169_1_fu_584_p2;
reg   [11:0] add_ln8169_1_reg_703;
reg   [0:0] ap_phi_mux_icmp_ln816327_i_phi_fu_194_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln816426_i_phi_fu_205_p4;
wire   [63:0] zext_ln8167_4_fu_605_p1;
wire   [63:0] zext_ln8169_4_fu_611_p1;
reg   [11:0] indvar_flatten1221_i_fu_110;
wire   [11:0] add_ln8162_1_fu_288_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1221_i_load;
reg   [5:0] v537922_i_fu_114;
reg   [6:0] indvar_flatten23_i_fu_118;
wire   [6:0] select_ln8163_1_fu_459_p3;
reg   [3:0] v538024_i_fu_122;
reg   [3:0] v538125_i_fu_126;
wire   [3:0] add_ln8164_fu_447_p2;
reg    v9219_0_ce0_local;
reg    v9219_2_ce0_local;
reg    v5403_1_we0_local;
reg    v5403_1_ce0_local;
reg    v5403_we0_local;
reg    v5403_ce0_local;
wire   [5:0] v5394_cast2_fu_212_p1;
wire   [0:0] tmp_fu_216_p3;
wire   [0:0] tmp_69_fu_232_p3;
wire   [0:0] empty_fu_248_p1;
wire   [0:0] xor_ln8162_fu_331_p2;
wire   [5:0] add_ln8162_fu_317_p2;
wire   [3:0] select_ln8162_fu_323_p3;
wire   [0:0] and_ln8162_fu_337_p2;
wire   [0:0] empty_183_fu_357_p2;
wire   [3:0] add_ln8163_fu_351_p2;
wire   [5:0] empty_184_fu_379_p2;
wire   [8:0] tmp_71_fu_392_p3;
wire   [11:0] p_shl23_fu_384_p3;
wire   [11:0] zext_ln8167_fu_400_p1;
wire   [4:0] tmp_41_i_fu_410_p3;
wire   [5:0] p_cast7_i_i_i_fu_418_p1;
wire   [5:0] empty_185_fu_422_p2;
wire   [11:0] sub_ln8167_fu_404_p2;
wire   [11:0] zext_ln8167_1_fu_427_p1;
wire   [3:0] v5381_mid2_i_fu_363_p3;
wire   [6:0] add_ln8163_1_fu_453_p2;
wire   [6:0] tmp_70_fu_506_p3;
wire   [9:0] p_shl25_fu_499_p3;
wire   [9:0] zext_ln8169_fu_513_p1;
wire   [9:0] sub_ln8169_fu_517_p2;
wire   [9:0] zext_ln8169_1_fu_523_p1;
wire   [9:0] add_ln8169_fu_526_p2;
wire   [8:0] trunc_ln8169_fu_532_p1;
wire   [11:0] tmp_72_fu_536_p3;
wire   [11:0] zext_ln8169_2_fu_544_p1;
wire   [12:0] tmp_73_fu_561_p3;
wire   [15:0] p_shl_fu_554_p3;
wire   [15:0] zext_ln8167_2_fu_568_p1;
wire   [11:0] sub_ln8169_1_fu_548_p2;
wire   [11:0] zext_ln8169_3_fu_581_p1;
wire   [3:0] zext_ln8164_fu_578_p1;
wire   [3:0] add_ln8167_1_fu_590_p2;
wire   [15:0] sub_ln8167_1_fu_572_p2;
wire   [15:0] zext_ln8167_3_fu_595_p1;
wire   [15:0] add_ln8167_2_fu_599_p2;
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
reg    ap_condition_159;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1221_i_fu_110 = 12'd0;
#0 v537922_i_fu_114 = 6'd0;
#0 indvar_flatten23_i_fu_118 = 7'd0;
#0 v538024_i_fu_122 = 4'd0;
#0 v538125_i_fu_126 = 4'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_159)) begin
        indvar_flatten1221_i_fu_110 <= add_ln8162_1_fu_288_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten23_i_fu_118 <= 7'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten23_i_fu_118 <= select_ln8163_1_fu_459_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v537922_i_fu_114 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v537922_i_fu_114 <= select_ln8162_1_fu_343_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v538024_i_fu_122 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v538024_i_fu_122 <= select_ln8163_fu_371_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v538125_i_fu_126 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v538125_i_fu_126 <= add_ln8164_fu_447_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln8167_reg_681[11 : 1] <= add_ln8167_fu_431_p2[11 : 1];
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln8162_reg_666 <= icmp_ln8162_fu_294_p2;
        icmp_ln8162_reg_666_pp0_iter1_reg <= icmp_ln8162_reg_666;
        lshr_ln_i_reg_687 <= {{v5381_mid2_i_fu_363_p3[3:1]}};
        mul_i163_i_i_reg_651[5] <= mul_i163_i_i_fu_224_p3[5];
        select_ln8162_1_reg_670 <= select_ln8162_1_fu_343_p3;
        select_ln8163_reg_676 <= select_ln8163_fu_371_p3;
        trunc_ln8162_cast_cast_i_cast_cast_reg_661[2 : 0] <= trunc_ln8162_cast_cast_i_cast_cast_fu_252_p3[2 : 0];
        trunc_ln8162_cast_cast_i_cast_cast_reg_661_pp0_iter1_reg[2 : 0] <= trunc_ln8162_cast_cast_i_cast_cast_reg_661[2 : 0];
        zext_ln8162_cast_cast_i_cast_cast_reg_656[4 : 2] <= zext_ln8162_cast_cast_i_cast_cast_fu_240_p3[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln8169_1_reg_703 <= add_ln8169_1_fu_584_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8163_reg_698 <= icmp_ln8163_fu_473_p2;
        icmp_ln8164_reg_693 <= icmp_ln8164_fu_467_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8162_fu_294_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln8162_reg_666_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln816327_i_phi_fu_194_p4 = icmp_ln8163_reg_698;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln816327_i_phi_fu_194_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln816327_i_phi_fu_194_p4 = icmp_ln8163_reg_698;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln8162_reg_666_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln816426_i_phi_fu_205_p4 = icmp_ln8164_reg_693;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln816426_i_phi_fu_205_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln816426_i_phi_fu_205_p4 = icmp_ln8164_reg_693;
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
        ap_sig_allocacmp_indvar_flatten1221_i_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_i_load = indvar_flatten1221_i_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5403_1_ce0_local = 1'b1;
    end else begin
        v5403_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5403_1_we0_local = 1'b1;
    end else begin
        v5403_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5403_ce0_local = 1'b1;
    end else begin
        v5403_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5403_we0_local = 1'b1;
    end else begin
        v5403_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9219_0_ce0_local = 1'b1;
    end else begin
        v9219_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9219_2_ce0_local = 1'b1;
    end else begin
        v9219_2_ce0_local = 1'b0;
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
assign add_ln8162_1_fu_288_p2 = (ap_sig_allocacmp_indvar_flatten1221_i_load + 12'd1);
assign add_ln8162_fu_317_p2 = (v537922_i_fu_114 + 6'd1);
assign add_ln8163_1_fu_453_p2 = (indvar_flatten23_i_fu_118 + 7'd1);
assign add_ln8163_fu_351_p2 = (select_ln8162_fu_323_p3 + 4'd1);
assign add_ln8164_fu_447_p2 = (v5381_mid2_i_fu_363_p3 + 4'd2);
assign add_ln8167_1_fu_590_p2 = (zext_ln8164_fu_578_p1 + trunc_ln8162_cast_cast_i_cast_cast_reg_661_pp0_iter1_reg);
assign add_ln8167_2_fu_599_p2 = (sub_ln8167_1_fu_572_p2 + zext_ln8167_3_fu_595_p1);
assign add_ln8167_fu_431_p2 = (sub_ln8167_fu_404_p2 + zext_ln8167_1_fu_427_p1);
assign add_ln8169_1_fu_584_p2 = (sub_ln8169_1_fu_548_p2 + zext_ln8169_3_fu_581_p1);
assign add_ln8169_fu_526_p2 = (sub_ln8169_fu_517_p2 + zext_ln8169_1_fu_523_p1);
assign and_ln8162_fu_337_p2 = (xor_ln8162_fu_331_p2 & ap_phi_mux_icmp_ln816426_i_phi_fu_205_p4);
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
    ap_condition_159 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_183_fu_357_p2 = (ap_phi_mux_icmp_ln816327_i_phi_fu_194_p4 | and_ln8162_fu_337_p2);
assign empty_184_fu_379_p2 = (select_ln8162_1_fu_343_p3 + mul_i163_i_i_reg_651);
assign empty_185_fu_422_p2 = (zext_ln8162_cast_cast_i_cast_cast_reg_656 + p_cast7_i_i_i_fu_418_p1);
assign empty_fu_248_p1 = v5394[0:0];
assign icmp_ln8162_fu_294_p2 = ((ap_sig_allocacmp_indvar_flatten1221_i_load == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln8163_fu_473_p2 = ((select_ln8163_1_fu_459_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln8164_fu_467_p2 = ((add_ln8164_fu_447_p2 == 4'd14) ? 1'b1 : 1'b0);
assign mul_i163_i_i_fu_224_p3 = {{tmp_fu_216_p3}, {5'd0}};
assign p_cast7_i_i_i_fu_418_p1 = tmp_41_i_fu_410_p3;
assign p_shl23_fu_384_p3 = {{empty_184_fu_379_p2}, {6'd0}};
assign p_shl25_fu_499_p3 = {{select_ln8162_1_reg_670}, {4'd0}};
assign p_shl_fu_554_p3 = {{add_ln8167_reg_681}, {4'd0}};
assign select_ln8162_1_fu_343_p3 = ((ap_phi_mux_icmp_ln816327_i_phi_fu_194_p4[0:0] == 1'b1) ? add_ln8162_fu_317_p2 : v537922_i_fu_114);
assign select_ln8162_fu_323_p3 = ((ap_phi_mux_icmp_ln816327_i_phi_fu_194_p4[0:0] == 1'b1) ? 4'd0 : v538024_i_fu_122);
assign select_ln8163_1_fu_459_p3 = ((ap_phi_mux_icmp_ln816327_i_phi_fu_194_p4[0:0] == 1'b1) ? 7'd1 : add_ln8163_1_fu_453_p2);
assign select_ln8163_fu_371_p3 = ((and_ln8162_fu_337_p2[0:0] == 1'b1) ? add_ln8163_fu_351_p2 : select_ln8162_fu_323_p3);
assign sub_ln8167_1_fu_572_p2 = (p_shl_fu_554_p3 - zext_ln8167_2_fu_568_p1);
assign sub_ln8167_fu_404_p2 = (p_shl23_fu_384_p3 - zext_ln8167_fu_400_p1);
assign sub_ln8169_1_fu_548_p2 = (tmp_72_fu_536_p3 - zext_ln8169_2_fu_544_p1);
assign sub_ln8169_fu_517_p2 = (p_shl25_fu_499_p3 - zext_ln8169_fu_513_p1);
assign tmp_41_i_fu_410_p3 = {{select_ln8163_fu_371_p3}, {1'd0}};
assign tmp_69_fu_232_p3 = v5394_cast2_fu_212_p1[32'd1];
assign tmp_70_fu_506_p3 = {{select_ln8162_1_reg_670}, {1'd0}};
assign tmp_71_fu_392_p3 = {{empty_184_fu_379_p2}, {3'd0}};
assign tmp_72_fu_536_p3 = {{trunc_ln8169_fu_532_p1}, {3'd0}};
assign tmp_73_fu_561_p3 = {{add_ln8167_reg_681}, {1'd0}};
assign tmp_fu_216_p3 = v5394_cast2_fu_212_p1[32'd4];
assign trunc_ln8162_cast_cast_i_cast_cast_fu_252_p3 = ((empty_fu_248_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign trunc_ln8169_fu_532_p1 = add_ln8169_fu_526_p2[8:0];
assign v5381_mid2_i_fu_363_p3 = ((empty_183_fu_357_p2[0:0] == 1'b1) ? 4'd0 : v538125_i_fu_126);
assign v5394_cast2_fu_212_p1 = v5394;
assign v5403_1_address0 = zext_ln8169_4_fu_611_p1;
assign v5403_1_ce0 = v5403_1_ce0_local;
assign v5403_1_d0 = v9219_0_q0;
assign v5403_1_we0 = v5403_1_we0_local;
assign v5403_address0 = zext_ln8169_4_fu_611_p1;
assign v5403_ce0 = v5403_ce0_local;
assign v5403_d0 = v9219_2_q0;
assign v5403_we0 = v5403_we0_local;
assign v9219_0_address0 = zext_ln8167_4_fu_605_p1;
assign v9219_0_ce0 = v9219_0_ce0_local;
assign v9219_2_address0 = zext_ln8167_4_fu_605_p1;
assign v9219_2_ce0 = v9219_2_ce0_local;
assign xor_ln8162_fu_331_p2 = (ap_phi_mux_icmp_ln816327_i_phi_fu_194_p4 ^ 1'd1);
assign zext_ln8162_cast_cast_i_cast_cast_fu_240_p3 = ((tmp_69_fu_232_p3[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign zext_ln8164_fu_578_p1 = lshr_ln_i_reg_687;
assign zext_ln8167_1_fu_427_p1 = empty_185_fu_422_p2;
assign zext_ln8167_2_fu_568_p1 = tmp_73_fu_561_p3;
assign zext_ln8167_3_fu_595_p1 = add_ln8167_1_fu_590_p2;
assign zext_ln8167_4_fu_605_p1 = add_ln8167_2_fu_599_p2;
assign zext_ln8167_fu_400_p1 = tmp_71_fu_392_p3;
assign zext_ln8169_1_fu_523_p1 = select_ln8163_reg_676;
assign zext_ln8169_2_fu_544_p1 = add_ln8169_fu_526_p2;
assign zext_ln8169_3_fu_581_p1 = lshr_ln_i_reg_687;
assign zext_ln8169_4_fu_611_p1 = add_ln8169_1_reg_703;
assign zext_ln8169_fu_513_p1 = tmp_70_fu_506_p3;
always @ (posedge ap_clk) begin
    mul_i163_i_i_reg_651[4:0] <= 5'b00000;
    zext_ln8162_cast_cast_i_cast_cast_reg_656[1:0] <= 2'b00;
    zext_ln8162_cast_cast_i_cast_cast_reg_656[5] <= 1'b0;
    trunc_ln8162_cast_cast_i_cast_cast_reg_661[3] <= 1'b0;
    trunc_ln8162_cast_cast_i_cast_cast_reg_661_pp0_iter1_reg[3] <= 1'b0;
    add_ln8167_reg_681[0] <= 1'b0;
end
endmodule 