
module main_graph_main_graph_Pipeline_VITIS_LOOP_219_4_VITIS_LOOP_220_5_VITIS_LOOP_221_6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_Addr_A,v0_EN_A,v0_WEN_A,v0_Din_A,v0_Dout_A,v57_address1,v57_ce1,v57_we1,v57_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] v0_Addr_A;
output   v0_EN_A;
output  [0:0] v0_WEN_A;
output  [7:0] v0_Din_A;
input  [7:0] v0_Dout_A;
output  [11:0] v57_address1;
output   v57_ce1;
output   v57_we1;
output  [7:0] v57_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln219_fu_149_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln220_fu_167_p2;
reg   [0:0] icmp_ln220_reg_460;
wire   [0:0] and_ln219_fu_185_p2;
reg   [0:0] and_ln219_reg_467;
wire   [5:0] v63_mid2_fu_197_p3;
reg   [5:0] v63_mid2_reg_473;
wire   [5:0] add_ln223_fu_205_p2;
reg   [5:0] add_ln223_reg_478;
wire   [11:0] add_ln222_1_fu_388_p2;
reg   [11:0] add_ln222_1_reg_483;
wire   [11:0] add_ln223_2_fu_397_p2;
reg   [11:0] add_ln223_2_reg_488;
reg   [11:0] add_ln223_2_reg_488_pp0_iter2_reg;
wire   [63:0] zext_ln222_2_fu_413_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln223_2_fu_417_p1;
reg   [5:0] v63_fu_70;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v63_load;
reg   [5:0] v62_fu_74;
wire   [5:0] select_ln220_fu_298_p3;
reg   [11:0] indvar_flatten19_fu_78;
wire   [11:0] select_ln220_1_fu_217_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten19_load;
reg   [1:0] v61_fu_82;
wire   [1:0] select_ln219_2_fu_272_p3;
reg   [11:0] indvar_flatten34_fu_86;
wire   [11:0] add_ln219_1_fu_155_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten34_load;
reg    v0_EN_A_local;
wire   [31:0] v0_Addr_A_orig;
reg    v57_we1_local;
reg    v57_ce1_local;
wire   [0:0] icmp_ln221_fu_179_p2;
wire   [0:0] xor_ln219_fu_173_p2;
wire   [0:0] empty_fu_191_p2;
wire   [11:0] add_ln220_fu_211_p2;
wire   [5:0] indvars_iv_next1275152_fu_259_p2;
wire   [1:0] add_ln219_fu_246_p2;
wire   [5:0] select_ln219_fu_252_p3;
wire   [5:0] indvars_iv_next1275_mid1_fu_285_p2;
wire   [5:0] select_ln219_1_fu_265_p3;
wire   [5:0] indvars_iv_next1275_dup_fu_279_p2;
wire   [6:0] tmp_fu_305_p3;
wire   [6:0] zext_ln222_fu_327_p1;
wire   [6:0] add_ln222_fu_331_p2;
wire   [5:0] indvars_iv_next1275_mid2_fu_291_p3;
wire   [7:0] mul_ln_fu_313_p6;
wire   [7:0] zext_ln223_fu_345_p1;
wire   [7:0] add_ln223_1_fu_349_p2;
wire   [6:0] trunc_ln223_fu_355_p1;
wire   [8:0] tmp_109_fu_367_p3;
wire   [11:0] p_shl_fu_359_p3;
wire   [11:0] zext_ln221_fu_375_p1;
wire   [11:0] tmp_108_fu_337_p3;
wire   [11:0] zext_ln222_1_fu_385_p1;
wire   [11:0] add_ln221_fu_379_p2;
wire   [11:0] zext_ln223_1_fu_394_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
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
#0 v63_fu_70 = 6'd0;
#0 v62_fu_74 = 6'd0;
#0 indvar_flatten19_fu_78 = 12'd0;
#0 v61_fu_82 = 2'd0;
#0 indvar_flatten34_fu_86 = 12'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln219_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten19_fu_78 <= select_ln220_1_fu_217_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten19_fu_78 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln219_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten34_fu_86 <= add_ln219_1_fu_155_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten34_fu_86 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v61_fu_82 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v61_fu_82 <= select_ln219_2_fu_272_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v62_fu_74 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v62_fu_74 <= select_ln220_fu_298_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln219_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v63_fu_70 <= add_ln223_fu_205_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v63_fu_70 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln222_1_reg_483 <= add_ln222_1_fu_388_p2;
        add_ln223_2_reg_488 <= add_ln223_2_fu_397_p2;
        add_ln223_reg_478 <= add_ln223_fu_205_p2;
        and_ln219_reg_467 <= and_ln219_fu_185_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln220_reg_460 <= icmp_ln220_fu_167_p2;
        v63_mid2_reg_473 <= v63_mid2_fu_197_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln223_2_reg_488_pp0_iter2_reg <= add_ln223_2_reg_488;
    end
end
always @ (*) begin
    if (((icmp_ln219_fu_149_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten19_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten19_load = indvar_flatten19_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten34_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten34_load = indvar_flatten34_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v63_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v63_load = v63_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v0_EN_A_local = 1'b1;
    end else begin
        v0_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v57_ce1_local = 1'b1;
    end else begin
        v57_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v57_we1_local = 1'b1;
    end else begin
        v57_we1_local = 1'b0;
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
assign add_ln219_1_fu_155_p2 = (ap_sig_allocacmp_indvar_flatten34_load + 12'd1);
assign add_ln219_fu_246_p2 = (v61_fu_82 + 2'd1);
assign add_ln220_fu_211_p2 = (ap_sig_allocacmp_indvar_flatten19_load + 12'd1);
assign add_ln221_fu_379_p2 = (p_shl_fu_359_p3 + zext_ln221_fu_375_p1);
assign add_ln222_1_fu_388_p2 = (tmp_108_fu_337_p3 + zext_ln222_1_fu_385_p1);
assign add_ln222_fu_331_p2 = (tmp_fu_305_p3 + zext_ln222_fu_327_p1);
assign add_ln223_1_fu_349_p2 = (mul_ln_fu_313_p6 + zext_ln223_fu_345_p1);
assign add_ln223_2_fu_397_p2 = (add_ln221_fu_379_p2 + zext_ln223_1_fu_394_p1);
assign add_ln223_fu_205_p2 = (v63_mid2_fu_197_p3 + 6'd1);
assign and_ln219_fu_185_p2 = (xor_ln219_fu_173_p2 & icmp_ln221_fu_179_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_191_p2 = (icmp_ln220_fu_167_p2 | and_ln219_fu_185_p2);
assign icmp_ln219_fu_149_p2 = ((ap_sig_allocacmp_indvar_flatten34_load == 12'd3072) ? 1'b1 : 1'b0);
assign icmp_ln220_fu_167_p2 = ((ap_sig_allocacmp_indvar_flatten19_load == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln221_fu_179_p2 = ((ap_sig_allocacmp_v63_load == 6'd32) ? 1'b1 : 1'b0);
assign indvars_iv_next1275152_fu_259_p2 = (v62_fu_74 + 6'd1);
assign indvars_iv_next1275_dup_fu_279_p2 = (select_ln219_fu_252_p3 + 6'd1);
assign indvars_iv_next1275_mid1_fu_285_p2 = (select_ln219_fu_252_p3 + 6'd2);
assign indvars_iv_next1275_mid2_fu_291_p3 = ((and_ln219_reg_467[0:0] == 1'b1) ? indvars_iv_next1275_mid1_fu_285_p2 : select_ln219_1_fu_265_p3);
assign mul_ln_fu_313_p6 = {{{{{{{{1'd0}, {select_ln219_2_fu_272_p3}}}, {2'd0}}}, {select_ln219_2_fu_272_p3}}}, {1'd0}};
assign p_shl_fu_359_p3 = {{trunc_ln223_fu_355_p1}, {5'd0}};
assign select_ln219_1_fu_265_p3 = ((icmp_ln220_reg_460[0:0] == 1'b1) ? 6'd1 : indvars_iv_next1275152_fu_259_p2);
assign select_ln219_2_fu_272_p3 = ((icmp_ln220_reg_460[0:0] == 1'b1) ? add_ln219_fu_246_p2 : v61_fu_82);
assign select_ln219_fu_252_p3 = ((icmp_ln220_reg_460[0:0] == 1'b1) ? 6'd0 : v62_fu_74);
assign select_ln220_1_fu_217_p3 = ((icmp_ln220_fu_167_p2[0:0] == 1'b1) ? 12'd1 : add_ln220_fu_211_p2);
assign select_ln220_fu_298_p3 = ((and_ln219_reg_467[0:0] == 1'b1) ? indvars_iv_next1275_dup_fu_279_p2 : select_ln219_fu_252_p3);
assign tmp_108_fu_337_p3 = {{add_ln222_fu_331_p2}, {5'd0}};
assign tmp_109_fu_367_p3 = {{add_ln223_1_fu_349_p2}, {1'd0}};
assign tmp_fu_305_p3 = {{select_ln219_2_fu_272_p3}, {5'd0}};
assign trunc_ln223_fu_355_p1 = add_ln223_1_fu_349_p2[6:0];
assign v0_Addr_A = v0_Addr_A_orig << 32'd0;
assign v0_Addr_A_orig = zext_ln222_2_fu_413_p1;
assign v0_Din_A = 8'd0;
assign v0_EN_A = v0_EN_A_local;
assign v0_WEN_A = 1'd0;
assign v57_address1 = zext_ln223_2_fu_417_p1;
assign v57_ce1 = v57_ce1_local;
assign v57_d1 = v0_Dout_A;
assign v57_we1 = v57_we1_local;
assign v63_mid2_fu_197_p3 = ((empty_fu_191_p2[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v63_load);
assign xor_ln219_fu_173_p2 = (icmp_ln220_fu_167_p2 ^ 1'd1);
assign zext_ln221_fu_375_p1 = tmp_109_fu_367_p3;
assign zext_ln222_1_fu_385_p1 = v63_mid2_reg_473;
assign zext_ln222_2_fu_413_p1 = add_ln222_1_reg_483;
assign zext_ln222_fu_327_p1 = select_ln220_fu_298_p3;
assign zext_ln223_1_fu_394_p1 = add_ln223_reg_478;
assign zext_ln223_2_fu_417_p1 = add_ln223_2_reg_488_pp0_iter2_reg;
assign zext_ln223_fu_345_p1 = indvars_iv_next1275_mid2_fu_291_p3;
endmodule 
