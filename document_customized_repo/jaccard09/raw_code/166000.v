module main_graph_main_graph_Pipeline_VITIS_LOOP_404_61_VITIS_LOOP_405_62_VITIS_LOOP_406_63 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v45_address1,v45_ce1,v45_we1,v45_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v45_address1;
output   v45_ce1;
output   v45_we1;
output  [6:0] v45_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln404_fu_130_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] v172_mid2_fu_217_p3;
reg   [3:0] v172_mid2_reg_394;
wire   [11:0] add_ln407_fu_267_p2;
reg   [11:0] add_ln407_reg_399;
wire   [10:0] trunc_ln407_fu_273_p1;
reg   [10:0] trunc_ln407_reg_404;
wire   [63:0] zext_ln407_4_fu_350_p1;
wire    ap_block_pp0_stage0;
reg   [3:0] v172_fu_64;
wire   [3:0] add_ln406_fu_277_p2;
wire    ap_loop_init;
reg   [3:0] v171_fu_68;
wire   [3:0] select_ln405_fu_225_p3;
reg   [7:0] indvar_flatten637_fu_72;
wire   [7:0] select_ln405_1_fu_289_p3;
reg   [7:0] v170_fu_76;
wire   [7:0] select_ln404_1_fu_197_p3;
reg   [13:0] indvar_flatten650_fu_80;
wire   [13:0] add_ln404_1_fu_136_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten650_load;
reg    v45_we1_local;
reg    v45_ce1_local;
wire   [0:0] icmp_ln405_fu_165_p2;
wire   [0:0] icmp_ln406_fu_185_p2;
wire   [0:0] xor_ln404_fu_179_p2;
wire   [7:0] add_ln404_fu_159_p2;
wire   [3:0] select_ln404_fu_171_p3;
wire   [0:0] and_ln404_fu_191_p2;
wire   [0:0] empty_fu_211_p2;
wire   [3:0] add_ln405_fu_205_p2;
wire   [10:0] tmp_fu_233_p3;
wire   [8:0] tmp_72_fu_245_p3;
wire   [11:0] zext_ln407_fu_241_p1;
wire   [11:0] zext_ln407_1_fu_253_p1;
wire   [11:0] add_ln407_2_fu_257_p2;
wire   [11:0] zext_ln407_2_fu_263_p1;
wire   [7:0] add_ln405_1_fu_283_p2;
wire   [12:0] tmp_73_fu_324_p3;
wire   [13:0] p_shl_fu_317_p3;
wire   [13:0] zext_ln406_fu_331_p1;
wire   [13:0] add_ln406_1_fu_335_p2;
wire   [13:0] zext_ln407_3_fu_341_p1;
wire   [13:0] add_ln407_1_fu_344_p2;
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
#0 v172_fu_64 = 4'd0;
#0 v171_fu_68 = 4'd0;
#0 indvar_flatten637_fu_72 = 8'd0;
#0 v170_fu_76 = 8'd0;
#0 indvar_flatten650_fu_80 = 14'd0;
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
            indvar_flatten637_fu_72 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten637_fu_72 <= select_ln405_1_fu_289_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln404_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten650_fu_80 <= add_ln404_1_fu_136_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten650_fu_80 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v170_fu_76 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v170_fu_76 <= select_ln404_1_fu_197_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v171_fu_68 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v171_fu_68 <= select_ln405_fu_225_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v172_fu_64 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v172_fu_64 <= add_ln406_fu_277_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln407_reg_399 <= add_ln407_fu_267_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        trunc_ln407_reg_404 <= trunc_ln407_fu_273_p1;
        v172_mid2_reg_394 <= v172_mid2_fu_217_p3;
    end
end
always @ (*) begin
    if (((icmp_ln404_fu_130_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten650_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten650_load = indvar_flatten650_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v45_ce1_local = 1'b1;
    end else begin
        v45_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v45_we1_local = 1'b1;
    end else begin
        v45_we1_local = 1'b0;
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
assign add_ln404_1_fu_136_p2 = (ap_sig_allocacmp_indvar_flatten650_load + 14'd1);
assign add_ln404_fu_159_p2 = (v170_fu_76 + 8'd1);
assign add_ln405_1_fu_283_p2 = (indvar_flatten637_fu_72 + 8'd1);
assign add_ln405_fu_205_p2 = (select_ln404_fu_171_p3 + 4'd1);
assign add_ln406_1_fu_335_p2 = (p_shl_fu_317_p3 + zext_ln406_fu_331_p1);
assign add_ln406_fu_277_p2 = (v172_mid2_fu_217_p3 + 4'd1);
assign add_ln407_1_fu_344_p2 = (add_ln406_1_fu_335_p2 + zext_ln407_3_fu_341_p1);
assign add_ln407_2_fu_257_p2 = (zext_ln407_fu_241_p1 + zext_ln407_1_fu_253_p1);
assign add_ln407_fu_267_p2 = (add_ln407_2_fu_257_p2 + zext_ln407_2_fu_263_p1);
assign and_ln404_fu_191_p2 = (xor_ln404_fu_179_p2 & icmp_ln406_fu_185_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_211_p2 = (icmp_ln405_fu_165_p2 | and_ln404_fu_191_p2);
assign icmp_ln404_fu_130_p2 = ((ap_sig_allocacmp_indvar_flatten650_load == 14'd12800) ? 1'b1 : 1'b0);
assign icmp_ln405_fu_165_p2 = ((indvar_flatten637_fu_72 == 8'd100) ? 1'b1 : 1'b0);
assign icmp_ln406_fu_185_p2 = ((v172_fu_64 == 4'd10) ? 1'b1 : 1'b0);
assign p_shl_fu_317_p3 = {{trunc_ln407_reg_404}, {3'd0}};
assign select_ln404_1_fu_197_p3 = ((icmp_ln405_fu_165_p2[0:0] == 1'b1) ? add_ln404_fu_159_p2 : v170_fu_76);
assign select_ln404_fu_171_p3 = ((icmp_ln405_fu_165_p2[0:0] == 1'b1) ? 4'd0 : v171_fu_68);
assign select_ln405_1_fu_289_p3 = ((icmp_ln405_fu_165_p2[0:0] == 1'b1) ? 8'd1 : add_ln405_1_fu_283_p2);
assign select_ln405_fu_225_p3 = ((and_ln404_fu_191_p2[0:0] == 1'b1) ? add_ln405_fu_205_p2 : select_ln404_fu_171_p3);
assign tmp_72_fu_245_p3 = {{select_ln404_1_fu_197_p3}, {1'd0}};
assign tmp_73_fu_324_p3 = {{add_ln407_reg_399}, {1'd0}};
assign tmp_fu_233_p3 = {{select_ln404_1_fu_197_p3}, {3'd0}};
assign trunc_ln407_fu_273_p1 = add_ln407_fu_267_p2[10:0];
assign v172_mid2_fu_217_p3 = ((empty_fu_211_p2[0:0] == 1'b1) ? 4'd0 : v172_fu_64);
assign v45_address1 = zext_ln407_4_fu_350_p1;
assign v45_ce1 = v45_ce1_local;
assign v45_d1 = 7'd0;
assign v45_we1 = v45_we1_local;
assign xor_ln404_fu_179_p2 = (icmp_ln405_fu_165_p2 ^ 1'd1);
assign zext_ln406_fu_331_p1 = tmp_73_fu_324_p3;
assign zext_ln407_1_fu_253_p1 = tmp_72_fu_245_p3;
assign zext_ln407_2_fu_263_p1 = select_ln405_fu_225_p3;
assign zext_ln407_3_fu_341_p1 = v172_mid2_reg_394;
assign zext_ln407_4_fu_350_p1 = add_ln407_1_fu_344_p2;
assign zext_ln407_fu_241_p1 = tmp_fu_233_p3;
endmodule 