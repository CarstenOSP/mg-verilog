module backprop_backprop_Pipeline_label_26 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v9_address0,v9_ce0,v9_q0,v9_address1,v9_ce1,v9_q1,v141,v140,v12_address0,v12_ce0,v12_we0,v12_d0,v12_address1,v12_ce1,v12_we1,v12_d1,grp_fu_3710_p_din0,grp_fu_3710_p_din1,grp_fu_3710_p_dout0,grp_fu_3710_p_ce,grp_fu_3714_p_din0,grp_fu_3714_p_din1,grp_fu_3714_p_dout0,grp_fu_3714_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v9_address0;
output   v9_ce0;
input  [63:0] v9_q0;
output  [5:0] v9_address1;
output   v9_ce1;
input  [63:0] v9_q1;
input  [63:0] v141;
input  [3:0] v140;
output  [9:0] v12_address0;
output   v12_ce0;
output   v12_we0;
output  [63:0] v12_d0;
output  [9:0] v12_address1;
output   v12_ce1;
output   v12_we1;
output  [63:0] v12_d1;
output  [63:0] grp_fu_3710_p_din0;
output  [63:0] grp_fu_3710_p_din1;
input  [63:0] grp_fu_3710_p_dout0;
output   grp_fu_3710_p_ce;
output  [63:0] grp_fu_3714_p_din0;
output  [63:0] grp_fu_3714_p_din1;
input  [63:0] grp_fu_3714_p_dout0;
output   grp_fu_3714_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_138_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v142_5_reg_238;
reg   [6:0] v142_5_reg_238_pp0_iter1_reg;
reg   [6:0] v142_5_reg_238_pp0_iter2_reg;
reg   [6:0] v142_5_reg_238_pp0_iter3_reg;
reg   [6:0] v142_5_reg_238_pp0_iter4_reg;
reg   [6:0] v142_5_reg_238_pp0_iter5_reg;
reg   [6:0] v142_5_reg_238_pp0_iter6_reg;
reg   [6:0] v142_5_reg_238_pp0_iter7_reg;
reg   [6:0] v142_5_reg_238_pp0_iter8_reg;
wire   [4:0] tmp_s_fu_151_p4;
reg   [4:0] tmp_s_reg_252;
reg   [4:0] tmp_s_reg_252_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_252_pp0_iter2_reg;
reg   [4:0] tmp_s_reg_252_pp0_iter3_reg;
reg   [4:0] tmp_s_reg_252_pp0_iter4_reg;
reg   [4:0] tmp_s_reg_252_pp0_iter5_reg;
reg   [4:0] tmp_s_reg_252_pp0_iter6_reg;
reg   [4:0] tmp_s_reg_252_pp0_iter7_reg;
reg   [4:0] tmp_s_reg_252_pp0_iter8_reg;
reg   [63:0] v143_reg_262;
reg   [63:0] v143_8_reg_267;
reg   [63:0] v144_reg_272;
reg   [63:0] v144_1_reg_277;
wire   [63:0] zext_ln235_fu_146_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln236_fu_169_p1;
wire   [63:0] zext_ln238_fu_201_p1;
wire   [63:0] zext_ln238_1_fu_214_p1;
reg   [6:0] v142_fu_56;
wire   [6:0] add_ln235_fu_174_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v142_5;
reg    v9_ce1_local;
reg    v9_ce0_local;
reg    v12_we1_local;
reg    v12_ce1_local;
reg    v12_we0_local;
reg    v12_ce0_local;
wire   [5:0] or_ln5_fu_161_p3;
wire   [2:0] tmp_2_fu_185_p4;
wire   [9:0] add_ln1_fu_194_p3;
wire   [9:0] add_ln238_1_fu_206_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
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
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 v142_fu_56 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_138_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v142_fu_56 <= add_ln235_fu_174_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v142_fu_56 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        tmp_s_reg_252 <= {{ap_sig_allocacmp_v142_5[5:1]}};
        tmp_s_reg_252_pp0_iter1_reg <= tmp_s_reg_252;
        v142_5_reg_238 <= ap_sig_allocacmp_v142_5;
        v142_5_reg_238_pp0_iter1_reg <= v142_5_reg_238;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        tmp_s_reg_252_pp0_iter2_reg <= tmp_s_reg_252_pp0_iter1_reg;
        tmp_s_reg_252_pp0_iter3_reg <= tmp_s_reg_252_pp0_iter2_reg;
        tmp_s_reg_252_pp0_iter4_reg <= tmp_s_reg_252_pp0_iter3_reg;
        tmp_s_reg_252_pp0_iter5_reg <= tmp_s_reg_252_pp0_iter4_reg;
        tmp_s_reg_252_pp0_iter6_reg <= tmp_s_reg_252_pp0_iter5_reg;
        tmp_s_reg_252_pp0_iter7_reg <= tmp_s_reg_252_pp0_iter6_reg;
        tmp_s_reg_252_pp0_iter8_reg <= tmp_s_reg_252_pp0_iter7_reg;
        v142_5_reg_238_pp0_iter2_reg <= v142_5_reg_238_pp0_iter1_reg;
        v142_5_reg_238_pp0_iter3_reg <= v142_5_reg_238_pp0_iter2_reg;
        v142_5_reg_238_pp0_iter4_reg <= v142_5_reg_238_pp0_iter3_reg;
        v142_5_reg_238_pp0_iter5_reg <= v142_5_reg_238_pp0_iter4_reg;
        v142_5_reg_238_pp0_iter6_reg <= v142_5_reg_238_pp0_iter5_reg;
        v142_5_reg_238_pp0_iter7_reg <= v142_5_reg_238_pp0_iter6_reg;
        v142_5_reg_238_pp0_iter8_reg <= v142_5_reg_238_pp0_iter7_reg;
        v144_1_reg_277 <= grp_fu_3714_p_dout0;
        v144_reg_272 <= grp_fu_3710_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v143_8_reg_267 <= v9_q0;
        v143_reg_262 <= v9_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_138_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v142_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v142_5 = v142_fu_56;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_ce0_local = 1'b1;
    end else begin
        v12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_ce1_local = 1'b1;
    end else begin
        v12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_we0_local = 1'b1;
    end else begin
        v12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v12_we1_local = 1'b1;
    end else begin
        v12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_ce0_local = 1'b1;
    end else begin
        v9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_ce1_local = 1'b1;
    end else begin
        v9_ce1_local = 1'b0;
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
assign add_ln1_fu_194_p3 = {{tmp_2_fu_185_p4}, {v142_5_reg_238_pp0_iter8_reg}};
assign add_ln235_fu_174_p2 = (ap_sig_allocacmp_v142_5 + 7'd2);
assign add_ln238_1_fu_206_p4 = {{{v140}, {tmp_s_reg_252_pp0_iter8_reg}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_3710_p_ce = 1'b1;
assign grp_fu_3710_p_din0 = v141;
assign grp_fu_3710_p_din1 = v143_reg_262;
assign grp_fu_3714_p_ce = 1'b1;
assign grp_fu_3714_p_din0 = v141;
assign grp_fu_3714_p_din1 = v143_8_reg_267;
assign or_ln5_fu_161_p3 = {{tmp_s_fu_151_p4}, {1'd1}};
assign tmp_2_fu_185_p4 = {{v140[3:1]}};
assign tmp_fu_138_p3 = ap_sig_allocacmp_v142_5[32'd6];
assign tmp_s_fu_151_p4 = {{ap_sig_allocacmp_v142_5[5:1]}};
assign v12_address0 = zext_ln238_1_fu_214_p1;
assign v12_address1 = zext_ln238_fu_201_p1;
assign v12_ce0 = v12_ce0_local;
assign v12_ce1 = v12_ce1_local;
assign v12_d0 = v144_1_reg_277;
assign v12_d1 = v144_reg_272;
assign v12_we0 = v12_we0_local;
assign v12_we1 = v12_we1_local;
assign v9_address0 = zext_ln236_fu_169_p1;
assign v9_address1 = zext_ln235_fu_146_p1;
assign v9_ce0 = v9_ce0_local;
assign v9_ce1 = v9_ce1_local;
assign zext_ln235_fu_146_p1 = ap_sig_allocacmp_v142_5;
assign zext_ln236_fu_169_p1 = or_ln5_fu_161_p3;
assign zext_ln238_1_fu_214_p1 = add_ln238_1_fu_206_p4;
assign zext_ln238_fu_201_p1 = add_ln1_fu_194_p3;
endmodule 