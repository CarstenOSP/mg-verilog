module forward_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,udiv_ln14526_cast,select_ln14525,v11563_address0,v11563_ce0,v11563_we0,v11563_d0,urem_ln14525_cast,select_ln14525_1,v15460_address0,v15460_ce0,v15460_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i;
input  [1:0] udiv_ln14526_cast;
input  [4:0] select_ln14525;
output  [10:0] v11563_address0;
output   v11563_ce0;
output   v11563_we0;
output  [7:0] v11563_d0;
input  [1:0] urem_ln14525_cast;
input  [4:0] select_ln14525_1;
output  [17:0] v15460_address0;
output   v15460_ce0;
input  [7:0] v15460_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln14500_fu_245_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1450115_reg_173;
reg   [0:0] icmp_ln1450214_reg_184;
wire    ap_block_pp0_stage0_11001;
wire  signed [5:0] select_ln14525_1_cast_fu_195_p1;
reg  signed [5:0] select_ln14525_1_cast_reg_625;
wire   [4:0] urem_ln14525_cast_cast_fu_199_p1;
reg   [4:0] urem_ln14525_cast_cast_reg_630;
wire  signed [5:0] select_ln14525_cast_fu_203_p1;
reg  signed [5:0] select_ln14525_cast_reg_635;
wire   [4:0] udiv_ln14526_cast_cast_fu_207_p1;
reg   [4:0] udiv_ln14526_cast_cast_reg_640;
reg   [0:0] icmp_ln14500_reg_645;
reg   [0:0] icmp_ln14500_reg_645_pp0_iter1_reg;
wire   [5:0] v11545_fu_294_p3;
reg   [5:0] v11545_reg_649;
wire   [2:0] v11547_mid2_fu_314_p3;
reg   [2:0] v11547_mid2_reg_655;
wire   [2:0] v11546_fu_322_p3;
reg   [2:0] v11546_reg_660;
wire   [13:0] add_ln14505_1_fu_399_p2;
reg   [13:0] add_ln14505_1_reg_665;
wire   [12:0] trunc_ln14505_1_fu_405_p1;
reg   [12:0] trunc_ln14505_1_reg_670;
wire   [4:0] add_ln14504_1_fu_421_p2;
reg   [4:0] add_ln14504_1_reg_675;
wire   [0:0] icmp_ln14502_fu_446_p2;
reg   [0:0] icmp_ln14502_reg_680;
wire   [0:0] icmp_ln14501_fu_452_p2;
reg   [0:0] icmp_ln14501_reg_685;
wire   [10:0] add_ln14505_2_fu_552_p2;
reg   [10:0] add_ln14505_2_reg_690;
reg   [0:0] ap_phi_mux_icmp_ln1450115_phi_fu_177_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1450214_phi_fu_188_p4;
wire   [63:0] zext_ln14505_6_fu_576_p1;
wire   [63:0] zext_ln14505_5_fu_581_p1;
reg   [10:0] indvar_flatten129_fu_96;
wire   [10:0] add_ln14500_1_fu_239_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten129_load;
reg   [5:0] v1154510_fu_100;
reg   [5:0] indvar_flatten11_fu_104;
wire   [5:0] select_ln14501_1_fu_438_p3;
reg   [2:0] v1154612_fu_108;
reg   [2:0] v1154713_fu_112;
wire   [2:0] v11547_fu_426_p2;
reg    v15460_ce0_local;
reg    v11563_we0_local;
reg    v11563_ce0_local;
wire   [0:0] xor_ln14500_fu_282_p2;
wire   [5:0] add_ln14500_fu_268_p2;
wire   [2:0] select_ln14500_fu_274_p3;
wire   [0:0] and_ln14500_fu_288_p2;
wire   [0:0] empty_fu_308_p2;
wire   [2:0] add_ln14501_fu_302_p2;
wire   [7:0] zext_ln14500_fu_330_p1;
wire   [7:0] empty_362_fu_334_p2;
wire   [9:0] tmp_377_fu_347_p3;
wire   [12:0] p_shl31_fu_339_p3;
wire   [12:0] zext_ln14505_1_fu_355_p1;
wire   [12:0] sub_ln14505_1_fu_359_p2;
wire   [3:0] tmp_s_fu_369_p3;
wire   [4:0] p_cast_fu_377_p1;
wire   [4:0] tmp_fu_381_p2;
wire   [5:0] tmp_cast_fu_386_p1;
wire   [5:0] empty_363_fu_390_p2;
wire   [13:0] zext_ln14501_fu_365_p1;
wire  signed [13:0] sext_ln14505_fu_395_p1;
wire   [3:0] shl_ln_fu_409_p3;
wire   [4:0] zext_ln14504_fu_417_p1;
wire   [5:0] add_ln14501_1_fu_432_p2;
wire   [8:0] p_shl33_fu_481_p3;
wire   [8:0] zext_ln14505_fu_478_p1;
wire   [8:0] sub_ln14505_fu_488_p2;
wire   [8:0] zext_ln14505_2_fu_494_p1;
wire   [8:0] add_ln14505_fu_497_p2;
wire   [7:0] trunc_ln14505_fu_503_p1;
wire   [10:0] tmp_378_fu_507_p3;
wire   [10:0] zext_ln14505_3_fu_515_p1;
wire   [15:0] tmp_379_fu_532_p3;
wire   [17:0] p_shl34_fu_525_p3;
wire  signed [17:0] sext_ln14502_fu_539_p1;
wire   [10:0] sub_ln14505_2_fu_519_p2;
wire   [10:0] zext_ln14505_4_fu_549_p1;
wire   [5:0] zext_ln14504_1_fu_558_p1;
wire   [5:0] add_ln14504_fu_561_p2;
wire   [17:0] sub_ln14502_fu_543_p2;
wire  signed [17:0] sext_ln14505_1_fu_566_p1;
wire   [17:0] add_ln14505_3_fu_570_p2;
reg    ap_done_reg;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten129_fu_96 = 11'd0;
#0 v1154510_fu_100 = 6'd0;
#0 indvar_flatten11_fu_104 = 6'd0;
#0 v1154612_fu_108 = 3'd0;
#0 v1154713_fu_112 = 3'd0;
#0 ap_done_reg = 1'b0;
end
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
    if (((icmp_ln14500_reg_645_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln1450115_reg_173 <= icmp_ln14501_reg_685;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1450115_reg_173 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln14500_reg_645_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln1450214_reg_184 <= icmp_ln14502_reg_680;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1450214_reg_184 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten11_fu_104 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten11_fu_104 <= select_ln14501_1_fu_438_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten129_fu_96 <= add_ln14500_1_fu_239_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten129_fu_96 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1154510_fu_100 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1154510_fu_100 <= v11545_fu_294_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1154612_fu_108 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1154612_fu_108 <= v11546_fu_322_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1154713_fu_112 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1154713_fu_112 <= v11547_fu_426_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln14504_1_reg_675 <= add_ln14504_1_fu_421_p2;
        add_ln14505_1_reg_665 <= add_ln14505_1_fu_399_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln14500_reg_645 <= icmp_ln14500_fu_245_p2;
        icmp_ln14500_reg_645_pp0_iter1_reg <= icmp_ln14500_reg_645;
        select_ln14525_1_cast_reg_625 <= select_ln14525_1_cast_fu_195_p1;
        select_ln14525_cast_reg_635 <= select_ln14525_cast_fu_203_p1;
        trunc_ln14505_1_reg_670 <= trunc_ln14505_1_fu_405_p1;
        udiv_ln14526_cast_cast_reg_640[1 : 0] <= udiv_ln14526_cast_cast_fu_207_p1[1 : 0];
        urem_ln14525_cast_cast_reg_630[1 : 0] <= urem_ln14525_cast_cast_fu_199_p1[1 : 0];
        v11545_reg_649 <= v11545_fu_294_p3;
        v11546_reg_660 <= v11546_fu_322_p3;
        v11547_mid2_reg_655 <= v11547_mid2_fu_314_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln14505_2_reg_690 <= add_ln14505_2_fu_552_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln14501_reg_685 <= icmp_ln14501_fu_452_p2;
        icmp_ln14502_reg_680 <= icmp_ln14502_fu_446_p2;
    end
end
always @ (*) begin
    if (((icmp_ln14500_fu_245_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln14500_reg_645_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1450115_phi_fu_177_p4 = icmp_ln14501_reg_685;
    end else begin
        ap_phi_mux_icmp_ln1450115_phi_fu_177_p4 = icmp_ln1450115_reg_173;
    end
end
always @ (*) begin
    if (((icmp_ln14500_reg_645_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1450214_phi_fu_188_p4 = icmp_ln14502_reg_680;
    end else begin
        ap_phi_mux_icmp_ln1450214_phi_fu_188_p4 = icmp_ln1450214_reg_184;
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
        ap_sig_allocacmp_indvar_flatten129_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten129_load = indvar_flatten129_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11563_ce0_local = 1'b1;
    end else begin
        v11563_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11563_we0_local = 1'b1;
    end else begin
        v11563_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15460_ce0_local = 1'b1;
    end else begin
        v15460_ce0_local = 1'b0;
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
assign add_ln14500_1_fu_239_p2 = (ap_sig_allocacmp_indvar_flatten129_load + 11'd1);
assign add_ln14500_fu_268_p2 = (v1154510_fu_100 + 6'd1);
assign add_ln14501_1_fu_432_p2 = (indvar_flatten11_fu_104 + 6'd1);
assign add_ln14501_fu_302_p2 = (select_ln14500_fu_274_p3 + 3'd1);
assign add_ln14504_1_fu_421_p2 = (urem_ln14525_cast_cast_reg_630 + zext_ln14504_fu_417_p1);
assign add_ln14504_fu_561_p2 = ($signed(zext_ln14504_1_fu_558_p1) + $signed(select_ln14525_1_cast_reg_625));
assign add_ln14505_1_fu_399_p2 = ($signed(zext_ln14501_fu_365_p1) + $signed(sext_ln14505_fu_395_p1));
assign add_ln14505_2_fu_552_p2 = (sub_ln14505_2_fu_519_p2 + zext_ln14505_4_fu_549_p1);
assign add_ln14505_3_fu_570_p2 = ($signed(sub_ln14502_fu_543_p2) + $signed(sext_ln14505_1_fu_566_p1));
assign add_ln14505_fu_497_p2 = (sub_ln14505_fu_488_p2 + zext_ln14505_2_fu_494_p1);
assign and_ln14500_fu_288_p2 = (xor_ln14500_fu_282_p2 & ap_phi_mux_icmp_ln1450214_phi_fu_188_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_362_fu_334_p2 = (mul_i + zext_ln14500_fu_330_p1);
assign empty_363_fu_390_p2 = ($signed(tmp_cast_fu_386_p1) + $signed(select_ln14525_cast_reg_635));
assign empty_fu_308_p2 = (ap_phi_mux_icmp_ln1450115_phi_fu_177_p4 | and_ln14500_fu_288_p2);
assign icmp_ln14500_fu_245_p2 = ((ap_sig_allocacmp_indvar_flatten129_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln14501_fu_452_p2 = ((select_ln14501_1_fu_438_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln14502_fu_446_p2 = ((v11547_fu_426_p2 == 3'd7) ? 1'b1 : 1'b0);
assign p_cast_fu_377_p1 = tmp_s_fu_369_p3;
assign p_shl31_fu_339_p3 = {{empty_362_fu_334_p2}, {5'd0}};
assign p_shl33_fu_481_p3 = {{v11545_reg_649}, {3'd0}};
assign p_shl34_fu_525_p3 = {{trunc_ln14505_1_reg_670}, {5'd0}};
assign select_ln14500_fu_274_p3 = ((ap_phi_mux_icmp_ln1450115_phi_fu_177_p4[0:0] == 1'b1) ? 3'd0 : v1154612_fu_108);
assign select_ln14501_1_fu_438_p3 = ((ap_phi_mux_icmp_ln1450115_phi_fu_177_p4[0:0] == 1'b1) ? 6'd1 : add_ln14501_1_fu_432_p2);
assign select_ln14525_1_cast_fu_195_p1 = $signed(select_ln14525_1);
assign select_ln14525_cast_fu_203_p1 = $signed(select_ln14525);
assign sext_ln14502_fu_539_p1 = $signed(tmp_379_fu_532_p3);
assign sext_ln14505_1_fu_566_p1 = $signed(add_ln14504_fu_561_p2);
assign sext_ln14505_fu_395_p1 = $signed(empty_363_fu_390_p2);
assign shl_ln_fu_409_p3 = {{v11547_mid2_fu_314_p3}, {1'd0}};
assign sub_ln14502_fu_543_p2 = ($signed(p_shl34_fu_525_p3) - $signed(sext_ln14502_fu_539_p1));
assign sub_ln14505_1_fu_359_p2 = (p_shl31_fu_339_p3 - zext_ln14505_1_fu_355_p1);
assign sub_ln14505_2_fu_519_p2 = (tmp_378_fu_507_p3 - zext_ln14505_3_fu_515_p1);
assign sub_ln14505_fu_488_p2 = (p_shl33_fu_481_p3 - zext_ln14505_fu_478_p1);
assign tmp_377_fu_347_p3 = {{empty_362_fu_334_p2}, {2'd0}};
assign tmp_378_fu_507_p3 = {{trunc_ln14505_fu_503_p1}, {3'd0}};
assign tmp_379_fu_532_p3 = {{add_ln14505_1_reg_665}, {2'd0}};
assign tmp_cast_fu_386_p1 = tmp_fu_381_p2;
assign tmp_fu_381_p2 = (udiv_ln14526_cast_cast_reg_640 + p_cast_fu_377_p1);
assign tmp_s_fu_369_p3 = {{v11546_fu_322_p3}, {1'd0}};
assign trunc_ln14505_1_fu_405_p1 = add_ln14505_1_fu_399_p2[12:0];
assign trunc_ln14505_fu_503_p1 = add_ln14505_fu_497_p2[7:0];
assign udiv_ln14526_cast_cast_fu_207_p1 = udiv_ln14526_cast;
assign urem_ln14525_cast_cast_fu_199_p1 = urem_ln14525_cast;
assign v11545_fu_294_p3 = ((ap_phi_mux_icmp_ln1450115_phi_fu_177_p4[0:0] == 1'b1) ? add_ln14500_fu_268_p2 : v1154510_fu_100);
assign v11546_fu_322_p3 = ((and_ln14500_fu_288_p2[0:0] == 1'b1) ? add_ln14501_fu_302_p2 : select_ln14500_fu_274_p3);
assign v11547_fu_426_p2 = (v11547_mid2_fu_314_p3 + 3'd1);
assign v11547_mid2_fu_314_p3 = ((empty_fu_308_p2[0:0] == 1'b1) ? 3'd0 : v1154713_fu_112);
assign v11563_address0 = zext_ln14505_5_fu_581_p1;
assign v11563_ce0 = v11563_ce0_local;
assign v11563_d0 = v15460_q0;
assign v11563_we0 = v11563_we0_local;
assign v15460_address0 = zext_ln14505_6_fu_576_p1;
assign v15460_ce0 = v15460_ce0_local;
assign xor_ln14500_fu_282_p2 = (ap_phi_mux_icmp_ln1450115_phi_fu_177_p4 ^ 1'd1);
assign zext_ln14500_fu_330_p1 = v11545_fu_294_p3;
assign zext_ln14501_fu_365_p1 = sub_ln14505_1_fu_359_p2;
assign zext_ln14504_1_fu_558_p1 = add_ln14504_1_reg_675;
assign zext_ln14504_fu_417_p1 = shl_ln_fu_409_p3;
assign zext_ln14505_1_fu_355_p1 = tmp_377_fu_347_p3;
assign zext_ln14505_2_fu_494_p1 = v11546_reg_660;
assign zext_ln14505_3_fu_515_p1 = add_ln14505_fu_497_p2;
assign zext_ln14505_4_fu_549_p1 = v11547_mid2_reg_655;
assign zext_ln14505_5_fu_581_p1 = add_ln14505_2_reg_690;
assign zext_ln14505_6_fu_576_p1 = add_ln14505_3_fu_570_p2;
assign zext_ln14505_fu_478_p1 = v11545_reg_649;
always @ (posedge ap_clk) begin
    urem_ln14525_cast_cast_reg_630[4:2] <= 3'b000;
    udiv_ln14526_cast_cast_reg_640[4:2] <= 3'b000;
end
endmodule 