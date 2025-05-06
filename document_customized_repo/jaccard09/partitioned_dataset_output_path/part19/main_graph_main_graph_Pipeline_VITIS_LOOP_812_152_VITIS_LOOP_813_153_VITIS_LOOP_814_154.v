
module main_graph_main_graph_Pipeline_VITIS_LOOP_812_152_VITIS_LOOP_813_153_VITIS_LOOP_814_154 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v55_address1,v55_ce1,v55_we1,v55_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln812_fu_134_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln813_fu_149_p2;
reg   [0:0] icmp_ln813_reg_394;
wire   [4:0] v391_mid2_fu_236_p3;
reg   [4:0] v391_mid2_reg_402;
wire   [12:0] add_ln815_fu_286_p2;
reg   [12:0] add_ln815_reg_407;
wire   [11:0] trunc_ln815_fu_292_p1;
reg   [11:0] trunc_ln815_reg_412;
wire   [63:0] zext_ln815_4_fu_350_p1;
wire    ap_block_pp0_stage0;
reg   [4:0] v391_fu_68;
wire   [4:0] add_ln814_fu_296_p2;
wire    ap_loop_init;
reg   [4:0] v390_fu_72;
wire   [4:0] select_ln813_fu_244_p3;
reg   [9:0] indvar_flatten1697_fu_76;
wire   [9:0] select_ln813_1_fu_161_p3;
reg   [9:0] ap_sig_allocacmp_indvar_flatten1697_load;
reg   [7:0] v389_fu_80;
wire   [7:0] select_ln812_1_fu_218_p3;
reg   [15:0] indvar_flatten1710_fu_84;
wire   [15:0] add_ln812_1_fu_140_p2;
reg   [15:0] ap_sig_allocacmp_indvar_flatten1710_load;
reg    v55_we1_local;
reg    v55_ce1_local;
wire   [9:0] add_ln813_1_fu_155_p2;
wire   [0:0] icmp_ln814_fu_206_p2;
wire   [0:0] xor_ln812_fu_201_p2;
wire   [7:0] add_ln812_fu_188_p2;
wire   [4:0] select_ln812_fu_194_p3;
wire   [0:0] and_ln812_fu_212_p2;
wire   [0:0] empty_fu_231_p2;
wire   [4:0] add_ln813_fu_225_p2;
wire   [11:0] tmp_fu_252_p3;
wire   [8:0] tmp_37_fu_264_p3;
wire   [12:0] zext_ln815_fu_260_p1;
wire   [12:0] zext_ln815_1_fu_272_p1;
wire   [12:0] add_ln815_2_fu_276_p2;
wire   [12:0] zext_ln815_2_fu_282_p1;
wire   [13:0] tmp_38_fu_324_p3;
wire   [15:0] p_shl_fu_317_p3;
wire   [15:0] zext_ln814_fu_331_p1;
wire   [15:0] add_ln814_1_fu_335_p2;
wire   [15:0] zext_ln815_3_fu_341_p1;
wire   [15:0] add_ln815_1_fu_344_p2;
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
#0 v391_fu_68 = 5'd0;
#0 v390_fu_72 = 5'd0;
#0 indvar_flatten1697_fu_76 = 10'd0;
#0 v389_fu_80 = 8'd0;
#0 indvar_flatten1710_fu_84 = 16'd0;
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
        if (((icmp_ln812_fu_134_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1697_fu_76 <= select_ln813_1_fu_161_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1697_fu_76 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln812_fu_134_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1710_fu_84 <= add_ln812_1_fu_140_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1710_fu_84 <= 16'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v389_fu_80 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v389_fu_80 <= select_ln812_1_fu_218_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v390_fu_72 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v390_fu_72 <= select_ln813_fu_244_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v391_fu_68 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v391_fu_68 <= add_ln814_fu_296_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln815_reg_407 <= add_ln815_fu_286_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln813_reg_394 <= icmp_ln813_fu_149_p2;
        trunc_ln815_reg_412 <= trunc_ln815_fu_292_p1;
        v391_mid2_reg_402 <= v391_mid2_fu_236_p3;
    end
end
always @ (*) begin
    if (((icmp_ln812_fu_134_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten1697_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1697_load = indvar_flatten1697_fu_76;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1710_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1710_load = indvar_flatten1710_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v55_ce1_local = 1'b1;
    end else begin
        v55_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v55_we1_local = 1'b1;
    end else begin
        v55_we1_local = 1'b0;
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
assign add_ln812_1_fu_140_p2 = (ap_sig_allocacmp_indvar_flatten1710_load + 16'd1);
assign add_ln812_fu_188_p2 = (v389_fu_80 + 8'd1);
assign add_ln813_1_fu_155_p2 = (ap_sig_allocacmp_indvar_flatten1697_load + 10'd1);
assign add_ln813_fu_225_p2 = (select_ln812_fu_194_p3 + 5'd1);
assign add_ln814_1_fu_335_p2 = (p_shl_fu_317_p3 + zext_ln814_fu_331_p1);
assign add_ln814_fu_296_p2 = (v391_mid2_fu_236_p3 + 5'd1);
assign add_ln815_1_fu_344_p2 = (add_ln814_1_fu_335_p2 + zext_ln815_3_fu_341_p1);
assign add_ln815_2_fu_276_p2 = (zext_ln815_fu_260_p1 + zext_ln815_1_fu_272_p1);
assign add_ln815_fu_286_p2 = (add_ln815_2_fu_276_p2 + zext_ln815_2_fu_282_p1);
assign and_ln812_fu_212_p2 = (xor_ln812_fu_201_p2 & icmp_ln814_fu_206_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_231_p2 = (icmp_ln813_reg_394 | and_ln812_fu_212_p2);
assign icmp_ln812_fu_134_p2 = ((ap_sig_allocacmp_indvar_flatten1710_load == 16'd41472) ? 1'b1 : 1'b0);
assign icmp_ln813_fu_149_p2 = ((ap_sig_allocacmp_indvar_flatten1697_load == 10'd324) ? 1'b1 : 1'b0);
assign icmp_ln814_fu_206_p2 = ((v391_fu_68 == 5'd18) ? 1'b1 : 1'b0);
assign p_shl_fu_317_p3 = {{trunc_ln815_reg_412}, {4'd0}};
assign select_ln812_1_fu_218_p3 = ((icmp_ln813_reg_394[0:0] == 1'b1) ? add_ln812_fu_188_p2 : v389_fu_80);
assign select_ln812_fu_194_p3 = ((icmp_ln813_reg_394[0:0] == 1'b1) ? 5'd0 : v390_fu_72);
assign select_ln813_1_fu_161_p3 = ((icmp_ln813_fu_149_p2[0:0] == 1'b1) ? 10'd1 : add_ln813_1_fu_155_p2);
assign select_ln813_fu_244_p3 = ((and_ln812_fu_212_p2[0:0] == 1'b1) ? add_ln813_fu_225_p2 : select_ln812_fu_194_p3);
assign tmp_37_fu_264_p3 = {{select_ln812_1_fu_218_p3}, {1'd0}};
assign tmp_38_fu_324_p3 = {{add_ln815_reg_407}, {1'd0}};
assign tmp_fu_252_p3 = {{select_ln812_1_fu_218_p3}, {4'd0}};
assign trunc_ln815_fu_292_p1 = add_ln815_fu_286_p2[11:0];
assign v391_mid2_fu_236_p3 = ((empty_fu_231_p2[0:0] == 1'b1) ? 5'd0 : v391_fu_68);
assign v55_address1 = zext_ln815_4_fu_350_p1;
assign v55_ce1 = v55_ce1_local;
assign v55_d1 = 7'd0;
assign v55_we1 = v55_we1_local;
assign xor_ln812_fu_201_p2 = (icmp_ln813_reg_394 ^ 1'd1);
assign zext_ln814_fu_331_p1 = tmp_38_fu_324_p3;
assign zext_ln815_1_fu_272_p1 = tmp_37_fu_264_p3;
assign zext_ln815_2_fu_282_p1 = select_ln813_fu_244_p3;
assign zext_ln815_3_fu_341_p1 = v391_mid2_reg_402;
assign zext_ln815_4_fu_350_p1 = add_ln815_1_fu_344_p2;
assign zext_ln815_fu_260_p1 = tmp_fu_252_p3;
endmodule 
