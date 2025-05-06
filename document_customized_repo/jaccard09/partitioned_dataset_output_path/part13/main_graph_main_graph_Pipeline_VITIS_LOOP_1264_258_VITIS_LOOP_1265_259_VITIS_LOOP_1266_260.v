
module main_graph_main_graph_Pipeline_VITIS_LOOP_1264_258_VITIS_LOOP_1265_259_VITIS_LOOP_1266_260 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v40_address1,v40_ce1,v40_we1,v40_d1,v41_address0,v41_ce0,v41_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] v40_address1;
output   v40_ce1;
output   v40_we1;
output  [6:0] v40_d1;
output  [10:0] v41_address0;
output   v41_ce0;
input  [7:0] v41_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1264_fu_144_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] v658_mid2_fu_226_p3;
reg   [1:0] v658_mid2_reg_384;
wire   [9:0] add_ln1270_fu_252_p2;
reg   [9:0] add_ln1270_reg_389;
wire   [63:0] zext_ln1270_2_fu_319_p1;
reg   [63:0] zext_ln1270_2_reg_394;
wire    ap_block_pp0_stage0;
reg   [1:0] v658_fu_66;
wire   [1:0] add_ln1266_fu_258_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_v658_load;
reg   [1:0] v657_fu_70;
wire   [1:0] select_ln1265_fu_234_p3;
reg   [1:0] ap_sig_allocacmp_v657_load;
reg   [3:0] indvar_flatten1530_fu_74;
wire   [3:0] select_ln1265_1_fu_270_p3;
reg   [3:0] ap_sig_allocacmp_indvar_flatten1530_load;
reg   [9:0] v656_fu_78;
wire   [9:0] select_ln1264_1_fu_206_p3;
reg   [9:0] ap_sig_allocacmp_v656_load;
reg   [11:0] indvar_flatten1543_fu_82;
wire   [11:0] add_ln1264_1_fu_150_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1543_load;
reg    v41_ce0_local;
reg    v40_we1_local;
wire   [6:0] v661_fu_336_p3;
reg    v40_ce1_local;
wire   [0:0] icmp_ln1265_fu_174_p2;
wire   [0:0] icmp_ln1266_fu_194_p2;
wire   [0:0] xor_ln1264_fu_188_p2;
wire   [9:0] add_ln1264_fu_168_p2;
wire   [1:0] select_ln1264_fu_180_p3;
wire   [0:0] and_ln1264_fu_200_p2;
wire   [0:0] empty_fu_220_p2;
wire   [1:0] add_ln1265_fu_214_p2;
wire   [9:0] shl_ln1270_fu_242_p2;
wire   [9:0] zext_ln1270_fu_248_p1;
wire   [3:0] add_ln1265_1_fu_264_p2;
wire   [10:0] tmp_fu_303_p3;
wire   [10:0] zext_ln1270_1_fu_310_p1;
wire   [10:0] add_ln1270_1_fu_313_p2;
wire   [0:0] v660_fu_328_p3;
wire   [6:0] trunc_ln1267_fu_324_p1;
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
#0 v658_fu_66 = 2'd0;
#0 v657_fu_70 = 2'd0;
#0 indvar_flatten1530_fu_74 = 4'd0;
#0 v656_fu_78 = 10'd0;
#0 indvar_flatten1543_fu_82 = 12'd0;
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
        if (((icmp_ln1264_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1530_fu_74 <= select_ln1265_1_fu_270_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1530_fu_74 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1264_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1543_fu_82 <= add_ln1264_1_fu_150_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1543_fu_82 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1264_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v656_fu_78 <= select_ln1264_1_fu_206_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v656_fu_78 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1264_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v657_fu_70 <= select_ln1265_fu_234_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v657_fu_70 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1264_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v658_fu_66 <= add_ln1266_fu_258_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v658_fu_66 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1270_reg_389 <= add_ln1270_fu_252_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        v658_mid2_reg_384 <= v658_mid2_fu_226_p3;
        zext_ln1270_2_reg_394[10 : 0] <= zext_ln1270_2_fu_319_p1[10 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln1264_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten1530_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1530_load = indvar_flatten1530_fu_74;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1543_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1543_load = indvar_flatten1543_fu_82;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v656_load = 10'd0;
    end else begin
        ap_sig_allocacmp_v656_load = v656_fu_78;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v657_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v657_load = v657_fu_70;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v658_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v658_load = v658_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v40_ce1_local = 1'b1;
    end else begin
        v40_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v40_we1_local = 1'b1;
    end else begin
        v40_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v41_ce0_local = 1'b1;
    end else begin
        v41_ce0_local = 1'b0;
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
assign add_ln1264_1_fu_150_p2 = (ap_sig_allocacmp_indvar_flatten1543_load + 12'd1);
assign add_ln1264_fu_168_p2 = (ap_sig_allocacmp_v656_load + 10'd1);
assign add_ln1265_1_fu_264_p2 = (ap_sig_allocacmp_indvar_flatten1530_load + 4'd1);
assign add_ln1265_fu_214_p2 = (select_ln1264_fu_180_p3 + 2'd1);
assign add_ln1266_fu_258_p2 = (v658_mid2_fu_226_p3 + 2'd1);
assign add_ln1270_1_fu_313_p2 = (tmp_fu_303_p3 + zext_ln1270_1_fu_310_p1);
assign add_ln1270_fu_252_p2 = (shl_ln1270_fu_242_p2 + zext_ln1270_fu_248_p1);
assign and_ln1264_fu_200_p2 = (xor_ln1264_fu_188_p2 & icmp_ln1266_fu_194_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_220_p2 = (icmp_ln1265_fu_174_p2 | and_ln1264_fu_200_p2);
assign icmp_ln1264_fu_144_p2 = ((ap_sig_allocacmp_indvar_flatten1543_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln1265_fu_174_p2 = ((ap_sig_allocacmp_indvar_flatten1530_load == 4'd4) ? 1'b1 : 1'b0);
assign icmp_ln1266_fu_194_p2 = ((ap_sig_allocacmp_v658_load == 2'd2) ? 1'b1 : 1'b0);
assign select_ln1264_1_fu_206_p3 = ((icmp_ln1265_fu_174_p2[0:0] == 1'b1) ? add_ln1264_fu_168_p2 : ap_sig_allocacmp_v656_load);
assign select_ln1264_fu_180_p3 = ((icmp_ln1265_fu_174_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v657_load);
assign select_ln1265_1_fu_270_p3 = ((icmp_ln1265_fu_174_p2[0:0] == 1'b1) ? 4'd1 : add_ln1265_1_fu_264_p2);
assign select_ln1265_fu_234_p3 = ((and_ln1264_fu_200_p2[0:0] == 1'b1) ? add_ln1265_fu_214_p2 : select_ln1264_fu_180_p3);
assign shl_ln1270_fu_242_p2 = select_ln1264_1_fu_206_p3 << 10'd1;
assign tmp_fu_303_p3 = {{add_ln1270_reg_389}, {1'd0}};
assign trunc_ln1267_fu_324_p1 = v41_q0[6:0];
assign v40_address1 = zext_ln1270_2_reg_394;
assign v40_ce1 = v40_ce1_local;
assign v40_d1 = v661_fu_336_p3;
assign v40_we1 = v40_we1_local;
assign v41_address0 = zext_ln1270_2_fu_319_p1;
assign v41_ce0 = v41_ce0_local;
assign v658_mid2_fu_226_p3 = ((empty_fu_220_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v658_load);
assign v660_fu_328_p3 = v41_q0[32'd7];
assign v661_fu_336_p3 = ((v660_fu_328_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln1267_fu_324_p1);
assign xor_ln1264_fu_188_p2 = (icmp_ln1265_fu_174_p2 ^ 1'd1);
assign zext_ln1270_1_fu_310_p1 = v658_mid2_reg_384;
assign zext_ln1270_2_fu_319_p1 = add_ln1270_1_fu_313_p2;
assign zext_ln1270_fu_248_p1 = select_ln1265_fu_234_p3;
always @ (posedge ap_clk) begin
    zext_ln1270_2_reg_394[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 
