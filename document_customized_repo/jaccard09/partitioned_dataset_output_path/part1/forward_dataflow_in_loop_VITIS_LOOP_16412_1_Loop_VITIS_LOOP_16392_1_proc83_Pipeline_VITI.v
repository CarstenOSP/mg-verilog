
module forward_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,udiv_ln16418_cast,select_ln16417,v12824_address0,v12824_ce0,v12824_we0,v12824_d0,urem_ln16417_cast,select_ln16417_1,v15448_address0,v15448_ce0,v15448_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i;
input  [1:0] udiv_ln16418_cast;
input  [5:0] select_ln16417;
output  [12:0] v12824_address0;
output   v12824_ce0;
output   v12824_we0;
output  [7:0] v12824_d0;
input  [1:0] urem_ln16417_cast;
input  [5:0] select_ln16417_1;
output  [18:0] v15448_address0;
output   v15448_ce0;
input  [7:0] v15448_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln16392_fu_251_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1639315_reg_179;
reg   [0:0] icmp_ln1639414_reg_190;
wire    ap_block_pp0_stage0_11001;
wire  signed [6:0] select_ln16417_1_cast_fu_201_p1;
reg  signed [6:0] select_ln16417_1_cast_reg_639;
wire   [4:0] urem_ln16417_cast_cast_fu_205_p1;
reg   [4:0] urem_ln16417_cast_cast_reg_644;
wire  signed [6:0] select_ln16417_cast_fu_209_p1;
reg  signed [6:0] select_ln16417_cast_reg_649;
wire   [4:0] udiv_ln16418_cast_cast_fu_213_p1;
reg   [4:0] udiv_ln16418_cast_cast_reg_654;
reg   [0:0] icmp_ln16392_reg_659;
reg   [0:0] icmp_ln16392_reg_659_pp0_iter1_reg;
wire   [5:0] v12806_fu_300_p3;
reg   [5:0] v12806_reg_663;
wire   [3:0] v12808_mid2_fu_320_p3;
reg   [3:0] v12808_mid2_reg_669;
wire   [3:0] v12807_fu_328_p3;
reg   [3:0] v12807_reg_674;
wire   [13:0] add_ln16397_1_fu_401_p2;
reg   [13:0] add_ln16397_1_reg_679;
wire   [12:0] trunc_ln16397_1_fu_407_p1;
reg   [12:0] trunc_ln16397_1_reg_684;
wire   [6:0] add_ln16396_fu_428_p2;
reg   [6:0] add_ln16396_reg_689;
wire   [0:0] icmp_ln16394_fu_453_p2;
reg   [0:0] icmp_ln16394_reg_694;
wire   [0:0] icmp_ln16393_fu_459_p2;
reg   [0:0] icmp_ln16393_reg_699;
wire   [12:0] add_ln16397_2_fu_575_p2;
reg   [12:0] add_ln16397_2_reg_704;
reg   [0:0] ap_phi_mux_icmp_ln1639315_phi_fu_183_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1639414_phi_fu_194_p4;
wire   [63:0] zext_ln16397_6_fu_590_p1;
wire   [63:0] zext_ln16397_5_fu_595_p1;
reg   [12:0] indvar_flatten129_fu_102;
wire   [12:0] add_ln16392_1_fu_245_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten129_load;
reg   [5:0] v1280610_fu_106;
reg   [7:0] indvar_flatten11_fu_110;
wire   [7:0] select_ln16393_1_fu_445_p3;
reg   [3:0] v1280712_fu_114;
reg   [3:0] v1280813_fu_118;
wire   [3:0] v12808_fu_433_p2;
reg    v15448_ce0_local;
reg    v12824_we0_local;
reg    v12824_ce0_local;
wire   [0:0] xor_ln16392_fu_288_p2;
wire   [5:0] add_ln16392_fu_274_p2;
wire   [3:0] select_ln16392_fu_280_p3;
wire   [0:0] and_ln16392_fu_294_p2;
wire   [0:0] empty_fu_314_p2;
wire   [3:0] add_ln16393_fu_308_p2;
wire   [6:0] zext_ln16392_fu_336_p1;
wire   [6:0] empty_297_fu_340_p2;
wire   [9:0] tmp_288_fu_353_p3;
wire   [12:0] p_shl31_fu_345_p3;
wire   [12:0] zext_ln16397_1_fu_361_p1;
wire   [12:0] sub_ln16397_1_fu_365_p2;
wire   [4:0] tmp_s_fu_375_p3;
wire   [4:0] tmp_fu_383_p2;
wire   [6:0] tmp_cast_fu_388_p1;
wire   [6:0] empty_298_fu_392_p2;
wire   [13:0] zext_ln16393_fu_371_p1;
wire  signed [13:0] sext_ln16397_fu_397_p1;
wire   [4:0] shl_ln_fu_411_p3;
wire   [4:0] add_ln16396_1_fu_419_p2;
wire   [6:0] zext_ln16396_fu_424_p1;
wire   [7:0] add_ln16393_1_fu_439_p2;
wire   [6:0] tmp_287_fu_492_p3;
wire   [9:0] p_shl33_fu_485_p3;
wire   [9:0] zext_ln16397_fu_499_p1;
wire   [9:0] sub_ln16397_fu_503_p2;
wire   [9:0] zext_ln16397_2_fu_509_p1;
wire   [9:0] add_ln16397_fu_512_p2;
wire   [8:0] trunc_ln16397_fu_518_p1;
wire   [10:0] tmp_289_fu_522_p3;
wire   [12:0] tmp_290_fu_530_p3;
wire   [12:0] zext_ln16397_3_fu_538_p1;
wire   [16:0] tmp_291_fu_555_p3;
wire   [18:0] p_shl35_fu_548_p3;
wire  signed [18:0] sext_ln16394_fu_562_p1;
wire   [12:0] sub_ln16397_2_fu_542_p2;
wire   [12:0] zext_ln16397_4_fu_572_p1;
wire   [18:0] sub_ln16394_fu_566_p2;
wire  signed [18:0] sext_ln16397_1_fu_581_p1;
wire   [18:0] add_ln16397_3_fu_584_p2;
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
#0 indvar_flatten129_fu_102 = 13'd0;
#0 v1280610_fu_106 = 6'd0;
#0 indvar_flatten11_fu_110 = 8'd0;
#0 v1280712_fu_114 = 4'd0;
#0 v1280813_fu_118 = 4'd0;
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
    if (((icmp_ln16392_reg_659_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln1639315_reg_179 <= icmp_ln16393_reg_699;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1639315_reg_179 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16392_reg_659_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln1639414_reg_190 <= icmp_ln16394_reg_694;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1639414_reg_190 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten11_fu_110 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten11_fu_110 <= select_ln16393_1_fu_445_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten129_fu_102 <= add_ln16392_1_fu_245_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten129_fu_102 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1280610_fu_106 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1280610_fu_106 <= v12806_fu_300_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1280712_fu_114 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1280712_fu_114 <= v12807_fu_328_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1280813_fu_118 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1280813_fu_118 <= v12808_fu_433_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln16396_reg_689 <= add_ln16396_fu_428_p2;
        add_ln16397_1_reg_679 <= add_ln16397_1_fu_401_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln16392_reg_659 <= icmp_ln16392_fu_251_p2;
        icmp_ln16392_reg_659_pp0_iter1_reg <= icmp_ln16392_reg_659;
        select_ln16417_1_cast_reg_639 <= select_ln16417_1_cast_fu_201_p1;
        select_ln16417_cast_reg_649 <= select_ln16417_cast_fu_209_p1;
        trunc_ln16397_1_reg_684 <= trunc_ln16397_1_fu_407_p1;
        udiv_ln16418_cast_cast_reg_654[1 : 0] <= udiv_ln16418_cast_cast_fu_213_p1[1 : 0];
        urem_ln16417_cast_cast_reg_644[1 : 0] <= urem_ln16417_cast_cast_fu_205_p1[1 : 0];
        v12806_reg_663 <= v12806_fu_300_p3;
        v12807_reg_674 <= v12807_fu_328_p3;
        v12808_mid2_reg_669 <= v12808_mid2_fu_320_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln16397_2_reg_704 <= add_ln16397_2_fu_575_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln16393_reg_699 <= icmp_ln16393_fu_459_p2;
        icmp_ln16394_reg_694 <= icmp_ln16394_fu_453_p2;
    end
end
always @ (*) begin
    if (((icmp_ln16392_fu_251_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln16392_reg_659_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1639315_phi_fu_183_p4 = icmp_ln16393_reg_699;
    end else begin
        ap_phi_mux_icmp_ln1639315_phi_fu_183_p4 = icmp_ln1639315_reg_179;
    end
end
always @ (*) begin
    if (((icmp_ln16392_reg_659_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1639414_phi_fu_194_p4 = icmp_ln16394_reg_694;
    end else begin
        ap_phi_mux_icmp_ln1639414_phi_fu_194_p4 = icmp_ln1639414_reg_190;
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
        ap_sig_allocacmp_indvar_flatten129_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten129_load = indvar_flatten129_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12824_ce0_local = 1'b1;
    end else begin
        v12824_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12824_we0_local = 1'b1;
    end else begin
        v12824_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15448_ce0_local = 1'b1;
    end else begin
        v15448_ce0_local = 1'b0;
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
assign add_ln16392_1_fu_245_p2 = (ap_sig_allocacmp_indvar_flatten129_load + 13'd1);
assign add_ln16392_fu_274_p2 = (v1280610_fu_106 + 6'd1);
assign add_ln16393_1_fu_439_p2 = (indvar_flatten11_fu_110 + 8'd1);
assign add_ln16393_fu_308_p2 = (select_ln16392_fu_280_p3 + 4'd1);
assign add_ln16396_1_fu_419_p2 = (shl_ln_fu_411_p3 + urem_ln16417_cast_cast_reg_644);
assign add_ln16396_fu_428_p2 = ($signed(zext_ln16396_fu_424_p1) + $signed(select_ln16417_1_cast_reg_639));
assign add_ln16397_1_fu_401_p2 = ($signed(zext_ln16393_fu_371_p1) + $signed(sext_ln16397_fu_397_p1));
assign add_ln16397_2_fu_575_p2 = (sub_ln16397_2_fu_542_p2 + zext_ln16397_4_fu_572_p1);
assign add_ln16397_3_fu_584_p2 = ($signed(sub_ln16394_fu_566_p2) + $signed(sext_ln16397_1_fu_581_p1));
assign add_ln16397_fu_512_p2 = (sub_ln16397_fu_503_p2 + zext_ln16397_2_fu_509_p1);
assign and_ln16392_fu_294_p2 = (xor_ln16392_fu_288_p2 & ap_phi_mux_icmp_ln1639414_phi_fu_194_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_297_fu_340_p2 = (mul_i + zext_ln16392_fu_336_p1);
assign empty_298_fu_392_p2 = ($signed(tmp_cast_fu_388_p1) + $signed(select_ln16417_cast_reg_649));
assign empty_fu_314_p2 = (ap_phi_mux_icmp_ln1639315_phi_fu_183_p4 | and_ln16392_fu_294_p2);
assign icmp_ln16392_fu_251_p2 = ((ap_sig_allocacmp_indvar_flatten129_load == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln16393_fu_459_p2 = ((select_ln16393_1_fu_445_p3 == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln16394_fu_453_p2 = ((v12808_fu_433_p2 == 4'd14) ? 1'b1 : 1'b0);
assign p_shl31_fu_345_p3 = {{empty_297_fu_340_p2}, {6'd0}};
assign p_shl33_fu_485_p3 = {{v12806_reg_663}, {4'd0}};
assign p_shl35_fu_548_p3 = {{trunc_ln16397_1_reg_684}, {6'd0}};
assign select_ln16392_fu_280_p3 = ((ap_phi_mux_icmp_ln1639315_phi_fu_183_p4[0:0] == 1'b1) ? 4'd0 : v1280712_fu_114);
assign select_ln16393_1_fu_445_p3 = ((ap_phi_mux_icmp_ln1639315_phi_fu_183_p4[0:0] == 1'b1) ? 8'd1 : add_ln16393_1_fu_439_p2);
assign select_ln16417_1_cast_fu_201_p1 = $signed(select_ln16417_1);
assign select_ln16417_cast_fu_209_p1 = $signed(select_ln16417);
assign sext_ln16394_fu_562_p1 = $signed(tmp_291_fu_555_p3);
assign sext_ln16397_1_fu_581_p1 = $signed(add_ln16396_reg_689);
assign sext_ln16397_fu_397_p1 = $signed(empty_298_fu_392_p2);
assign shl_ln_fu_411_p3 = {{v12808_mid2_fu_320_p3}, {1'd0}};
assign sub_ln16394_fu_566_p2 = ($signed(p_shl35_fu_548_p3) - $signed(sext_ln16394_fu_562_p1));
assign sub_ln16397_1_fu_365_p2 = (p_shl31_fu_345_p3 - zext_ln16397_1_fu_361_p1);
assign sub_ln16397_2_fu_542_p2 = (tmp_290_fu_530_p3 - zext_ln16397_3_fu_538_p1);
assign sub_ln16397_fu_503_p2 = (p_shl33_fu_485_p3 - zext_ln16397_fu_499_p1);
assign tmp_287_fu_492_p3 = {{v12806_reg_663}, {1'd0}};
assign tmp_288_fu_353_p3 = {{empty_297_fu_340_p2}, {3'd0}};
assign tmp_289_fu_522_p3 = {{add_ln16397_fu_512_p2}, {1'd0}};
assign tmp_290_fu_530_p3 = {{trunc_ln16397_fu_518_p1}, {4'd0}};
assign tmp_291_fu_555_p3 = {{add_ln16397_1_reg_679}, {3'd0}};
assign tmp_cast_fu_388_p1 = tmp_fu_383_p2;
assign tmp_fu_383_p2 = (tmp_s_fu_375_p3 + udiv_ln16418_cast_cast_reg_654);
assign tmp_s_fu_375_p3 = {{v12807_fu_328_p3}, {1'd0}};
assign trunc_ln16397_1_fu_407_p1 = add_ln16397_1_fu_401_p2[12:0];
assign trunc_ln16397_fu_518_p1 = add_ln16397_fu_512_p2[8:0];
assign udiv_ln16418_cast_cast_fu_213_p1 = udiv_ln16418_cast;
assign urem_ln16417_cast_cast_fu_205_p1 = urem_ln16417_cast;
assign v12806_fu_300_p3 = ((ap_phi_mux_icmp_ln1639315_phi_fu_183_p4[0:0] == 1'b1) ? add_ln16392_fu_274_p2 : v1280610_fu_106);
assign v12807_fu_328_p3 = ((and_ln16392_fu_294_p2[0:0] == 1'b1) ? add_ln16393_fu_308_p2 : select_ln16392_fu_280_p3);
assign v12808_fu_433_p2 = (v12808_mid2_fu_320_p3 + 4'd1);
assign v12808_mid2_fu_320_p3 = ((empty_fu_314_p2[0:0] == 1'b1) ? 4'd0 : v1280813_fu_118);
assign v12824_address0 = zext_ln16397_5_fu_595_p1;
assign v12824_ce0 = v12824_ce0_local;
assign v12824_d0 = v15448_q0;
assign v12824_we0 = v12824_we0_local;
assign v15448_address0 = zext_ln16397_6_fu_590_p1;
assign v15448_ce0 = v15448_ce0_local;
assign xor_ln16392_fu_288_p2 = (ap_phi_mux_icmp_ln1639315_phi_fu_183_p4 ^ 1'd1);
assign zext_ln16392_fu_336_p1 = v12806_fu_300_p3;
assign zext_ln16393_fu_371_p1 = sub_ln16397_1_fu_365_p2;
assign zext_ln16396_fu_424_p1 = add_ln16396_1_fu_419_p2;
assign zext_ln16397_1_fu_361_p1 = tmp_288_fu_353_p3;
assign zext_ln16397_2_fu_509_p1 = v12807_reg_674;
assign zext_ln16397_3_fu_538_p1 = tmp_289_fu_522_p3;
assign zext_ln16397_4_fu_572_p1 = v12808_mid2_reg_669;
assign zext_ln16397_5_fu_595_p1 = add_ln16397_2_reg_704;
assign zext_ln16397_6_fu_590_p1 = add_ln16397_3_fu_584_p2;
assign zext_ln16397_fu_499_p1 = tmp_287_fu_492_p3;
always @ (posedge ap_clk) begin
    urem_ln16417_cast_cast_reg_644[4:2] <= 3'b000;
    udiv_ln16418_cast_cast_reg_654[4:2] <= 3'b000;
end
endmodule 
