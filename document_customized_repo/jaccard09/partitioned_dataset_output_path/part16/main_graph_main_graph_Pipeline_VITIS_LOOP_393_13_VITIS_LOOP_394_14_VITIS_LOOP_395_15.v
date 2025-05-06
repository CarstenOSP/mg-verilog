
module main_graph_main_graph_Pipeline_VITIS_LOOP_393_13_VITIS_LOOP_394_14_VITIS_LOOP_395_15 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v98_address1,v98_ce1,v98_we1,v98_d1,v99_address0,v99_ce0,v99_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v98_address1;
output   v98_ce1;
output   v98_we1;
output  [6:0] v98_d1;
output  [14:0] v99_address0;
output   v99_ce0;
input  [7:0] v99_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln393_fu_142_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln394_fu_157_p2;
reg   [0:0] icmp_ln394_reg_385;
wire   [14:0] add_ln399_1_fu_294_p2;
reg   [14:0] add_ln399_1_reg_393;
wire   [63:0] zext_ln399_2_fu_321_p1;
reg   [63:0] zext_ln399_2_reg_398;
wire    ap_block_pp0_stage0;
reg   [5:0] v125_fu_64;
wire   [5:0] add_ln395_fu_300_p2;
wire    ap_loop_init;
reg   [5:0] v124_fu_68;
wire   [5:0] select_ln394_fu_256_p3;
reg   [11:0] indvar_flatten41_fu_72;
wire   [11:0] select_ln394_1_fu_169_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten41_load;
reg   [5:0] v123_fu_76;
wire   [5:0] select_ln393_1_fu_226_p3;
reg   [15:0] indvar_flatten54_fu_80;
wire   [15:0] add_ln393_1_fu_148_p2;
reg   [15:0] ap_sig_allocacmp_indvar_flatten54_load;
reg    v99_ce0_local;
reg    v98_we1_local;
wire   [6:0] v128_fu_337_p3;
reg    v98_ce1_local;
wire   [11:0] add_ln394_1_fu_163_p2;
wire   [0:0] icmp_ln395_fu_214_p2;
wire   [0:0] xor_ln393_fu_209_p2;
wire   [5:0] add_ln393_fu_196_p2;
wire   [5:0] select_ln393_fu_202_p3;
wire   [0:0] and_ln393_fu_220_p2;
wire   [0:0] empty_fu_243_p2;
wire   [5:0] add_ln394_fu_237_p2;
wire   [4:0] trunc_ln394_fu_233_p1;
wire   [9:0] tmp_4_fu_264_p3;
wire   [9:0] zext_ln399_fu_272_p1;
wire   [9:0] add_ln399_fu_276_p2;
wire   [5:0] v125_mid2_fu_248_p3;
wire   [14:0] tmp_fu_282_p3;
wire   [14:0] zext_ln399_1_fu_290_p1;
wire   [0:0] v127_fu_329_p3;
wire   [6:0] trunc_ln396_fu_325_p1;
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
#0 v125_fu_64 = 6'd0;
#0 v124_fu_68 = 6'd0;
#0 indvar_flatten41_fu_72 = 12'd0;
#0 v123_fu_76 = 6'd0;
#0 indvar_flatten54_fu_80 = 16'd0;
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
        if (((icmp_ln393_fu_142_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten41_fu_72 <= select_ln394_1_fu_169_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten41_fu_72 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln393_fu_142_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten54_fu_80 <= add_ln393_1_fu_148_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten54_fu_80 <= 16'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v123_fu_76 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v123_fu_76 <= select_ln393_1_fu_226_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v124_fu_68 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v124_fu_68 <= select_ln394_fu_256_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v125_fu_64 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v125_fu_64 <= add_ln395_fu_300_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln399_1_reg_393 <= add_ln399_1_fu_294_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln394_reg_385 <= icmp_ln394_fu_157_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln399_2_reg_398[14 : 0] <= zext_ln399_2_fu_321_p1[14 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln393_fu_142_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten41_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten41_load = indvar_flatten41_fu_72;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten54_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten54_load = indvar_flatten54_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v98_ce1_local = 1'b1;
    end else begin
        v98_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v98_we1_local = 1'b1;
    end else begin
        v98_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v99_ce0_local = 1'b1;
    end else begin
        v99_ce0_local = 1'b0;
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
assign add_ln393_1_fu_148_p2 = (ap_sig_allocacmp_indvar_flatten54_load + 16'd1);
assign add_ln393_fu_196_p2 = (v123_fu_76 + 6'd1);
assign add_ln394_1_fu_163_p2 = (ap_sig_allocacmp_indvar_flatten41_load + 12'd1);
assign add_ln394_fu_237_p2 = (select_ln393_fu_202_p3 + 6'd1);
assign add_ln395_fu_300_p2 = (v125_mid2_fu_248_p3 + 6'd1);
assign add_ln399_1_fu_294_p2 = (tmp_fu_282_p3 + zext_ln399_1_fu_290_p1);
assign add_ln399_fu_276_p2 = (tmp_4_fu_264_p3 + zext_ln399_fu_272_p1);
assign and_ln393_fu_220_p2 = (xor_ln393_fu_209_p2 & icmp_ln395_fu_214_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_243_p2 = (icmp_ln394_reg_385 | and_ln393_fu_220_p2);
assign icmp_ln393_fu_142_p2 = ((ap_sig_allocacmp_indvar_flatten54_load == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln394_fu_157_p2 = ((ap_sig_allocacmp_indvar_flatten41_load == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln395_fu_214_p2 = ((v125_fu_64 == 6'd32) ? 1'b1 : 1'b0);
assign select_ln393_1_fu_226_p3 = ((icmp_ln394_reg_385[0:0] == 1'b1) ? add_ln393_fu_196_p2 : v123_fu_76);
assign select_ln393_fu_202_p3 = ((icmp_ln394_reg_385[0:0] == 1'b1) ? 6'd0 : v124_fu_68);
assign select_ln394_1_fu_169_p3 = ((icmp_ln394_fu_157_p2[0:0] == 1'b1) ? 12'd1 : add_ln394_1_fu_163_p2);
assign select_ln394_fu_256_p3 = ((and_ln393_fu_220_p2[0:0] == 1'b1) ? add_ln394_fu_237_p2 : select_ln393_fu_202_p3);
assign tmp_4_fu_264_p3 = {{trunc_ln394_fu_233_p1}, {5'd0}};
assign tmp_fu_282_p3 = {{add_ln399_fu_276_p2}, {5'd0}};
assign trunc_ln394_fu_233_p1 = select_ln393_1_fu_226_p3[4:0];
assign trunc_ln396_fu_325_p1 = v99_q0[6:0];
assign v125_mid2_fu_248_p3 = ((empty_fu_243_p2[0:0] == 1'b1) ? 6'd0 : v125_fu_64);
assign v127_fu_329_p3 = v99_q0[32'd7];
assign v128_fu_337_p3 = ((v127_fu_329_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln396_fu_325_p1);
assign v98_address1 = zext_ln399_2_reg_398;
assign v98_ce1 = v98_ce1_local;
assign v98_d1 = v128_fu_337_p3;
assign v98_we1 = v98_we1_local;
assign v99_address0 = zext_ln399_2_fu_321_p1;
assign v99_ce0 = v99_ce0_local;
assign xor_ln393_fu_209_p2 = (icmp_ln394_reg_385 ^ 1'd1);
assign zext_ln399_1_fu_290_p1 = v125_mid2_fu_248_p3;
assign zext_ln399_2_fu_321_p1 = add_ln399_1_reg_393;
assign zext_ln399_fu_272_p1 = select_ln394_fu_256_p3;
always @ (posedge ap_clk) begin
    zext_ln399_2_reg_398[63:15] <= 49'b0000000000000000000000000000000000000000000000000;
end
endmodule 
