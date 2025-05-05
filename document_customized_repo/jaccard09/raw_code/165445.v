module main_graph_main_graph_Pipeline_VITIS_LOOP_819_155_VITIS_LOOP_820_156_VITIS_LOOP_821_157 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v56_address0,v56_ce0,v56_q0,v55_address1,v55_ce1,v55_we1,v55_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v56_address0;
output   v56_ce0;
input  [6:0] v56_q0;
output  [15:0] v55_address1;
output   v55_ce1;
output   v55_we1;
output  [6:0] v55_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln819_fu_153_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] select_ln819_2_fu_229_p3;
reg   [7:0] select_ln819_2_reg_485;
wire   [6:0] empty_fu_237_p1;
reg   [6:0] empty_reg_491;
wire   [4:0] v394_mid2_fu_253_p3;
reg   [4:0] v394_mid2_reg_496;
wire   [4:0] indvars_iv_next1499_mid2_fu_267_p3;
reg   [4:0] indvars_iv_next1499_mid2_reg_501;
wire   [4:0] select_ln820_fu_275_p3;
reg   [4:0] select_ln820_reg_506;
wire   [4:0] add_ln823_fu_283_p2;
reg   [4:0] add_ln823_reg_511;
wire   [15:0] add_ln823_2_fu_436_p2;
reg   [15:0] add_ln823_2_reg_521;
wire   [63:0] zext_ln822_2_fu_428_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln823_4_fu_442_p1;
reg   [4:0] v394_fu_74;
wire    ap_loop_init;
reg   [4:0] v393_fu_78;
reg   [9:0] indvar_flatten1717_fu_82;
wire   [9:0] select_ln820_1_fu_295_p3;
reg   [7:0] v392_fu_86;
reg   [15:0] indvar_flatten1732_fu_90;
wire   [15:0] add_ln819_1_fu_159_p2;
reg    v56_ce0_local;
reg    v55_we1_local;
reg    v55_ce1_local;
wire   [0:0] icmp_ln820_fu_183_p2;
wire   [4:0] indvars_iv_next1499561_fu_197_p2;
wire   [0:0] icmp_ln821_fu_217_p2;
wire   [0:0] xor_ln819_fu_211_p2;
wire   [7:0] add_ln819_fu_177_p2;
wire   [4:0] select_ln819_fu_189_p3;
wire   [0:0] and_ln819_fu_223_p2;
wire   [0:0] empty_54_fu_247_p2;
wire   [4:0] indvars_iv_next1499_mid1_fu_261_p2;
wire   [4:0] select_ln819_1_fu_203_p3;
wire   [4:0] indvars_iv_next1499_dup_fu_241_p2;
wire   [9:0] add_ln820_fu_289_p2;
wire   [11:0] tmp_fu_328_p3;
wire   [8:0] tmp_34_fu_339_p3;
wire   [12:0] zext_ln823_fu_335_p1;
wire   [12:0] zext_ln823_1_fu_346_p1;
wire   [10:0] tmp_s_fu_356_p3;
wire   [10:0] zext_ln822_fu_363_p1;
wire   [10:0] add_ln822_fu_366_p2;
wire   [12:0] add_ln823_3_fu_350_p2;
wire   [12:0] zext_ln823_2_fu_380_p1;
wire   [12:0] add_ln823_1_fu_383_p2;
wire   [11:0] trunc_ln823_fu_389_p1;
wire   [13:0] tmp_36_fu_401_p3;
wire   [15:0] p_shl_fu_393_p3;
wire   [15:0] zext_ln821_fu_409_p1;
wire   [14:0] tmp_35_fu_372_p3;
wire   [14:0] zext_ln822_1_fu_419_p1;
wire   [14:0] add_ln822_1_fu_422_p2;
wire   [15:0] add_ln821_fu_413_p2;
wire   [15:0] zext_ln823_3_fu_433_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 v394_fu_74 = 5'd0;
#0 v393_fu_78 = 5'd0;
#0 indvar_flatten1717_fu_82 = 10'd0;
#0 v392_fu_86 = 8'd0;
#0 indvar_flatten1732_fu_90 = 16'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1717_fu_82 <= 10'd0;
        end else if (((icmp_ln819_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1717_fu_82 <= select_ln820_1_fu_295_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1732_fu_90 <= 16'd0;
        end else if (((icmp_ln819_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1732_fu_90 <= add_ln819_1_fu_159_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v392_fu_86 <= 8'd0;
        end else if (((icmp_ln819_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v392_fu_86 <= select_ln819_2_fu_229_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v393_fu_78 <= 5'd0;
        end else if (((icmp_ln819_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v393_fu_78 <= select_ln820_fu_275_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v394_fu_74 <= 5'd0;
        end else if (((icmp_ln819_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v394_fu_74 <= add_ln823_fu_283_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln823_2_reg_521 <= add_ln823_2_fu_436_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln823_reg_511 <= add_ln823_fu_283_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        empty_reg_491 <= empty_fu_237_p1;
        indvars_iv_next1499_mid2_reg_501 <= indvars_iv_next1499_mid2_fu_267_p3;
        select_ln819_2_reg_485 <= select_ln819_2_fu_229_p3;
        select_ln820_reg_506 <= select_ln820_fu_275_p3;
        v394_mid2_reg_496 <= v394_mid2_fu_253_p3;
    end
end
always @ (*) begin
    if (((icmp_ln819_fu_153_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v55_ce1_local = 1'b1;
    end else begin
        v55_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v55_we1_local = 1'b1;
    end else begin
        v55_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v56_ce0_local = 1'b1;
    end else begin
        v56_ce0_local = 1'b0;
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
assign add_ln819_1_fu_159_p2 = (indvar_flatten1732_fu_90 + 16'd1);
assign add_ln819_fu_177_p2 = (v392_fu_86 + 8'd1);
assign add_ln820_fu_289_p2 = (indvar_flatten1717_fu_82 + 10'd1);
assign add_ln821_fu_413_p2 = (p_shl_fu_393_p3 + zext_ln821_fu_409_p1);
assign add_ln822_1_fu_422_p2 = (tmp_35_fu_372_p3 + zext_ln822_1_fu_419_p1);
assign add_ln822_fu_366_p2 = (tmp_s_fu_356_p3 + zext_ln822_fu_363_p1);
assign add_ln823_1_fu_383_p2 = (add_ln823_3_fu_350_p2 + zext_ln823_2_fu_380_p1);
assign add_ln823_2_fu_436_p2 = (add_ln821_fu_413_p2 + zext_ln823_3_fu_433_p1);
assign add_ln823_3_fu_350_p2 = (zext_ln823_fu_335_p1 + zext_ln823_1_fu_346_p1);
assign add_ln823_fu_283_p2 = (v394_mid2_fu_253_p3 + 5'd1);
assign and_ln819_fu_223_p2 = (xor_ln819_fu_211_p2 & icmp_ln821_fu_217_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_54_fu_247_p2 = (icmp_ln820_fu_183_p2 | and_ln819_fu_223_p2);
assign empty_fu_237_p1 = select_ln819_2_fu_229_p3[6:0];
assign icmp_ln819_fu_153_p2 = ((indvar_flatten1732_fu_90 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln820_fu_183_p2 = ((indvar_flatten1717_fu_82 == 10'd256) ? 1'b1 : 1'b0);
assign icmp_ln821_fu_217_p2 = ((v394_fu_74 == 5'd16) ? 1'b1 : 1'b0);
assign indvars_iv_next1499561_fu_197_p2 = (v393_fu_78 + 5'd1);
assign indvars_iv_next1499_dup_fu_241_p2 = (select_ln819_fu_189_p3 + 5'd1);
assign indvars_iv_next1499_mid1_fu_261_p2 = (select_ln819_fu_189_p3 + 5'd2);
assign indvars_iv_next1499_mid2_fu_267_p3 = ((and_ln819_fu_223_p2[0:0] == 1'b1) ? indvars_iv_next1499_mid1_fu_261_p2 : select_ln819_1_fu_203_p3);
assign p_shl_fu_393_p3 = {{trunc_ln823_fu_389_p1}, {4'd0}};
assign select_ln819_1_fu_203_p3 = ((icmp_ln820_fu_183_p2[0:0] == 1'b1) ? 5'd1 : indvars_iv_next1499561_fu_197_p2);
assign select_ln819_2_fu_229_p3 = ((icmp_ln820_fu_183_p2[0:0] == 1'b1) ? add_ln819_fu_177_p2 : v392_fu_86);
assign select_ln819_fu_189_p3 = ((icmp_ln820_fu_183_p2[0:0] == 1'b1) ? 5'd0 : v393_fu_78);
assign select_ln820_1_fu_295_p3 = ((icmp_ln820_fu_183_p2[0:0] == 1'b1) ? 10'd1 : add_ln820_fu_289_p2);
assign select_ln820_fu_275_p3 = ((and_ln819_fu_223_p2[0:0] == 1'b1) ? indvars_iv_next1499_dup_fu_241_p2 : select_ln819_fu_189_p3);
assign tmp_34_fu_339_p3 = {{select_ln819_2_reg_485}, {1'd0}};
assign tmp_35_fu_372_p3 = {{add_ln822_fu_366_p2}, {4'd0}};
assign tmp_36_fu_401_p3 = {{add_ln823_1_fu_383_p2}, {1'd0}};
assign tmp_fu_328_p3 = {{select_ln819_2_reg_485}, {4'd0}};
assign tmp_s_fu_356_p3 = {{empty_reg_491}, {4'd0}};
assign trunc_ln823_fu_389_p1 = add_ln823_1_fu_383_p2[11:0];
assign v394_mid2_fu_253_p3 = ((empty_54_fu_247_p2[0:0] == 1'b1) ? 5'd0 : v394_fu_74);
assign v55_address1 = zext_ln823_4_fu_442_p1;
assign v55_ce1 = v55_ce1_local;
assign v55_d1 = v56_q0;
assign v55_we1 = v55_we1_local;
assign v56_address0 = zext_ln822_2_fu_428_p1;
assign v56_ce0 = v56_ce0_local;
assign xor_ln819_fu_211_p2 = (icmp_ln820_fu_183_p2 ^ 1'd1);
assign zext_ln821_fu_409_p1 = tmp_36_fu_401_p3;
assign zext_ln822_1_fu_419_p1 = v394_mid2_reg_496;
assign zext_ln822_2_fu_428_p1 = add_ln822_1_fu_422_p2;
assign zext_ln822_fu_363_p1 = select_ln820_reg_506;
assign zext_ln823_1_fu_346_p1 = tmp_34_fu_339_p3;
assign zext_ln823_2_fu_380_p1 = indvars_iv_next1499_mid2_reg_501;
assign zext_ln823_3_fu_433_p1 = add_ln823_reg_511;
assign zext_ln823_4_fu_442_p1 = add_ln823_2_reg_521;
assign zext_ln823_fu_335_p1 = tmp_fu_328_p3;
endmodule 