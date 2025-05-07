module main_graph_main_graph_Pipeline_VITIS_LOOP_500_91_VITIS_LOOP_501_92_VITIS_LOOP_502_93 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v39_address1,v39_ce1,v39_we1,v39_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v39_address1;
output   v39_ce1;
output   v39_we1;
output  [6:0] v39_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln500_fu_134_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] v228_mid2_fu_221_p3;
reg   [3:0] v228_mid2_reg_398;
wire   [12:0] add_ln503_fu_271_p2;
reg   [12:0] add_ln503_reg_403;
wire   [11:0] trunc_ln503_fu_277_p1;
reg   [11:0] trunc_ln503_reg_408;
wire   [63:0] zext_ln503_4_fu_354_p1;
wire    ap_block_pp0_stage0;
reg   [3:0] v228_fu_68;
wire   [3:0] add_ln502_fu_281_p2;
wire    ap_loop_init;
reg   [3:0] v227_fu_72;
wire   [3:0] select_ln501_fu_229_p3;
reg   [7:0] indvar_flatten1021_fu_76;
wire   [7:0] select_ln501_1_fu_293_p3;
reg   [8:0] v226_fu_80;
wire   [8:0] select_ln500_1_fu_201_p3;
reg   [14:0] indvar_flatten1034_fu_84;
wire   [14:0] add_ln500_1_fu_140_p2;
reg   [14:0] ap_sig_allocacmp_indvar_flatten1034_load;
reg    v39_we1_local;
reg    v39_ce1_local;
wire   [0:0] icmp_ln501_fu_169_p2;
wire   [0:0] icmp_ln502_fu_189_p2;
wire   [0:0] xor_ln500_fu_183_p2;
wire   [8:0] add_ln500_fu_163_p2;
wire   [3:0] select_ln500_fu_175_p3;
wire   [0:0] and_ln500_fu_195_p2;
wire   [0:0] empty_fu_215_p2;
wire   [3:0] add_ln501_fu_209_p2;
wire   [11:0] tmp_fu_237_p3;
wire   [9:0] tmp_50_fu_249_p3;
wire   [12:0] zext_ln503_fu_245_p1;
wire   [12:0] zext_ln503_1_fu_257_p1;
wire   [12:0] add_ln503_2_fu_261_p2;
wire   [12:0] zext_ln503_2_fu_267_p1;
wire   [7:0] add_ln501_1_fu_287_p2;
wire   [13:0] tmp_51_fu_328_p3;
wire   [14:0] p_shl_fu_321_p3;
wire   [14:0] zext_ln502_fu_335_p1;
wire   [14:0] add_ln502_1_fu_339_p2;
wire   [14:0] zext_ln503_3_fu_345_p1;
wire   [14:0] add_ln503_1_fu_348_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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
#0 v228_fu_68 = 4'd0;
#0 v227_fu_72 = 4'd0;
#0 indvar_flatten1021_fu_76 = 8'd0;
#0 v226_fu_80 = 9'd0;
#0 indvar_flatten1034_fu_84 = 15'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1021_fu_76 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1021_fu_76 <= select_ln501_1_fu_293_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln500_fu_134_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1034_fu_84 <= add_ln500_1_fu_140_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1034_fu_84 <= 15'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v226_fu_80 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v226_fu_80 <= select_ln500_1_fu_201_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v227_fu_72 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v227_fu_72 <= select_ln501_fu_229_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v228_fu_68 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v228_fu_68 <= add_ln502_fu_281_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln503_reg_403 <= add_ln503_fu_271_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        trunc_ln503_reg_408 <= trunc_ln503_fu_277_p1;
        v228_mid2_reg_398 <= v228_mid2_fu_221_p3;
    end
end
always @ (*) begin
    if (((icmp_ln500_fu_134_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1034_load = 15'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1034_load = indvar_flatten1034_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v39_ce1_local = 1'b1;
    end else begin
        v39_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v39_we1_local = 1'b1;
    end else begin
        v39_we1_local = 1'b0;
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
assign add_ln500_1_fu_140_p2 = (ap_sig_allocacmp_indvar_flatten1034_load + 15'd1);
assign add_ln500_fu_163_p2 = (v226_fu_80 + 9'd1);
assign add_ln501_1_fu_287_p2 = (indvar_flatten1021_fu_76 + 8'd1);
assign add_ln501_fu_209_p2 = (select_ln500_fu_175_p3 + 4'd1);
assign add_ln502_1_fu_339_p2 = (p_shl_fu_321_p3 + zext_ln502_fu_335_p1);
assign add_ln502_fu_281_p2 = (v228_mid2_fu_221_p3 + 4'd1);
assign add_ln503_1_fu_348_p2 = (add_ln502_1_fu_339_p2 + zext_ln503_3_fu_345_p1);
assign add_ln503_2_fu_261_p2 = (zext_ln503_fu_245_p1 + zext_ln503_1_fu_257_p1);
assign add_ln503_fu_271_p2 = (add_ln503_2_fu_261_p2 + zext_ln503_2_fu_267_p1);
assign and_ln500_fu_195_p2 = (xor_ln500_fu_183_p2 & icmp_ln502_fu_189_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_215_p2 = (icmp_ln501_fu_169_p2 | and_ln500_fu_195_p2);
assign icmp_ln500_fu_134_p2 = ((ap_sig_allocacmp_indvar_flatten1034_load == 15'd25600) ? 1'b1 : 1'b0);
assign icmp_ln501_fu_169_p2 = ((indvar_flatten1021_fu_76 == 8'd100) ? 1'b1 : 1'b0);
assign icmp_ln502_fu_189_p2 = ((v228_fu_68 == 4'd10) ? 1'b1 : 1'b0);
assign p_shl_fu_321_p3 = {{trunc_ln503_reg_408}, {3'd0}};
assign select_ln500_1_fu_201_p3 = ((icmp_ln501_fu_169_p2[0:0] == 1'b1) ? add_ln500_fu_163_p2 : v226_fu_80);
assign select_ln500_fu_175_p3 = ((icmp_ln501_fu_169_p2[0:0] == 1'b1) ? 4'd0 : v227_fu_72);
assign select_ln501_1_fu_293_p3 = ((icmp_ln501_fu_169_p2[0:0] == 1'b1) ? 8'd1 : add_ln501_1_fu_287_p2);
assign select_ln501_fu_229_p3 = ((and_ln500_fu_195_p2[0:0] == 1'b1) ? add_ln501_fu_209_p2 : select_ln500_fu_175_p3);
assign tmp_50_fu_249_p3 = {{select_ln500_1_fu_201_p3}, {1'd0}};
assign tmp_51_fu_328_p3 = {{add_ln503_reg_403}, {1'd0}};
assign tmp_fu_237_p3 = {{select_ln500_1_fu_201_p3}, {3'd0}};
assign trunc_ln503_fu_277_p1 = add_ln503_fu_271_p2[11:0];
assign v228_mid2_fu_221_p3 = ((empty_fu_215_p2[0:0] == 1'b1) ? 4'd0 : v228_fu_68);
assign v39_address1 = zext_ln503_4_fu_354_p1;
assign v39_ce1 = v39_ce1_local;
assign v39_d1 = 7'd0;
assign v39_we1 = v39_we1_local;
assign xor_ln500_fu_183_p2 = (icmp_ln501_fu_169_p2 ^ 1'd1);
assign zext_ln502_fu_335_p1 = tmp_51_fu_328_p3;
assign zext_ln503_1_fu_257_p1 = tmp_50_fu_249_p3;
assign zext_ln503_2_fu_267_p1 = select_ln501_fu_229_p3;
assign zext_ln503_3_fu_345_p1 = v228_mid2_reg_398;
assign zext_ln503_4_fu_354_p1 = add_ln503_1_fu_348_p2;
assign zext_ln503_fu_245_p1 = tmp_fu_237_p3;
endmodule 