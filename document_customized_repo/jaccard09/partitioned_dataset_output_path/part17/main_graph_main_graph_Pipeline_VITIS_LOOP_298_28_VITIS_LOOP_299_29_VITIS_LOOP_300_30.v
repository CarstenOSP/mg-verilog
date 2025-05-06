
module main_graph_main_graph_Pipeline_VITIS_LOOP_298_28_VITIS_LOOP_299_29_VITIS_LOOP_300_30 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v52_address1,v52_ce1,v52_we1,v52_d1,v53_address0,v53_ce0,v53_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v52_address1;
output   v52_ce1;
output   v52_we1;
output  [6:0] v52_d1;
output  [13:0] v53_address0;
output   v53_ce0;
input  [7:0] v53_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln298_fu_144_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] v110_mid2_fu_230_p3;
reg   [4:0] v110_mid2_reg_390;
wire   [9:0] add_ln304_fu_258_p2;
reg   [9:0] add_ln304_reg_395;
wire   [63:0] zext_ln304_2_fu_325_p1;
reg   [63:0] zext_ln304_2_reg_400;
wire    ap_block_pp0_stage0;
reg   [4:0] v110_fu_66;
wire   [4:0] add_ln300_fu_264_p2;
wire    ap_loop_init;
reg   [4:0] v109_fu_70;
wire   [4:0] select_ln299_fu_238_p3;
reg   [9:0] indvar_flatten233_fu_74;
wire   [9:0] select_ln299_1_fu_276_p3;
reg   [6:0] v108_fu_78;
wire   [6:0] select_ln298_1_fu_206_p3;
reg   [14:0] indvar_flatten246_fu_82;
wire   [14:0] add_ln298_1_fu_150_p2;
reg    v53_ce0_local;
reg    v52_we1_local;
wire   [6:0] v113_fu_342_p3;
reg    v52_ce1_local;
wire   [0:0] icmp_ln299_fu_174_p2;
wire   [0:0] icmp_ln300_fu_194_p2;
wire   [0:0] xor_ln298_fu_188_p2;
wire   [6:0] add_ln298_fu_168_p2;
wire   [4:0] select_ln298_fu_180_p3;
wire   [0:0] and_ln298_fu_200_p2;
wire   [0:0] empty_fu_224_p2;
wire   [4:0] add_ln299_fu_218_p2;
wire   [5:0] trunc_ln299_fu_214_p1;
wire   [9:0] tmp_s_fu_246_p3;
wire   [9:0] zext_ln304_fu_254_p1;
wire   [9:0] add_ln299_1_fu_270_p2;
wire   [13:0] tmp_fu_309_p3;
wire   [13:0] zext_ln304_1_fu_316_p1;
wire   [13:0] add_ln304_1_fu_319_p2;
wire   [0:0] v112_fu_334_p3;
wire   [6:0] trunc_ln301_fu_330_p1;
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
#0 v110_fu_66 = 5'd0;
#0 v109_fu_70 = 5'd0;
#0 indvar_flatten233_fu_74 = 10'd0;
#0 v108_fu_78 = 7'd0;
#0 indvar_flatten246_fu_82 = 15'd0;
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
            indvar_flatten233_fu_74 <= 10'd0;
        end else if (((icmp_ln298_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten233_fu_74 <= select_ln299_1_fu_276_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten246_fu_82 <= 15'd0;
        end else if (((icmp_ln298_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten246_fu_82 <= add_ln298_1_fu_150_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v108_fu_78 <= 7'd0;
        end else if (((icmp_ln298_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v108_fu_78 <= select_ln298_1_fu_206_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v109_fu_70 <= 5'd0;
        end else if (((icmp_ln298_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v109_fu_70 <= select_ln299_fu_238_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v110_fu_66 <= 5'd0;
        end else if (((icmp_ln298_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v110_fu_66 <= add_ln300_fu_264_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln304_reg_395 <= add_ln304_fu_258_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        v110_mid2_reg_390 <= v110_mid2_fu_230_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln304_2_reg_400[13 : 0] <= zext_ln304_2_fu_325_p1[13 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln298_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v52_ce1_local = 1'b1;
    end else begin
        v52_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v52_we1_local = 1'b1;
    end else begin
        v52_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v53_ce0_local = 1'b1;
    end else begin
        v53_ce0_local = 1'b0;
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
assign add_ln298_1_fu_150_p2 = (indvar_flatten246_fu_82 + 15'd1);
assign add_ln298_fu_168_p2 = (v108_fu_78 + 7'd1);
assign add_ln299_1_fu_270_p2 = (indvar_flatten233_fu_74 + 10'd1);
assign add_ln299_fu_218_p2 = (select_ln298_fu_180_p3 + 5'd1);
assign add_ln300_fu_264_p2 = (v110_mid2_fu_230_p3 + 5'd1);
assign add_ln304_1_fu_319_p2 = (tmp_fu_309_p3 + zext_ln304_1_fu_316_p1);
assign add_ln304_fu_258_p2 = (tmp_s_fu_246_p3 + zext_ln304_fu_254_p1);
assign and_ln298_fu_200_p2 = (xor_ln298_fu_188_p2 & icmp_ln300_fu_194_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_224_p2 = (icmp_ln299_fu_174_p2 | and_ln298_fu_200_p2);
assign icmp_ln298_fu_144_p2 = ((indvar_flatten246_fu_82 == 15'd16384) ? 1'b1 : 1'b0);
assign icmp_ln299_fu_174_p2 = ((indvar_flatten233_fu_74 == 10'd256) ? 1'b1 : 1'b0);
assign icmp_ln300_fu_194_p2 = ((v110_fu_66 == 5'd16) ? 1'b1 : 1'b0);
assign select_ln298_1_fu_206_p3 = ((icmp_ln299_fu_174_p2[0:0] == 1'b1) ? add_ln298_fu_168_p2 : v108_fu_78);
assign select_ln298_fu_180_p3 = ((icmp_ln299_fu_174_p2[0:0] == 1'b1) ? 5'd0 : v109_fu_70);
assign select_ln299_1_fu_276_p3 = ((icmp_ln299_fu_174_p2[0:0] == 1'b1) ? 10'd1 : add_ln299_1_fu_270_p2);
assign select_ln299_fu_238_p3 = ((and_ln298_fu_200_p2[0:0] == 1'b1) ? add_ln299_fu_218_p2 : select_ln298_fu_180_p3);
assign tmp_fu_309_p3 = {{add_ln304_reg_395}, {4'd0}};
assign tmp_s_fu_246_p3 = {{trunc_ln299_fu_214_p1}, {4'd0}};
assign trunc_ln299_fu_214_p1 = select_ln298_1_fu_206_p3[5:0];
assign trunc_ln301_fu_330_p1 = v53_q0[6:0];
assign v110_mid2_fu_230_p3 = ((empty_fu_224_p2[0:0] == 1'b1) ? 5'd0 : v110_fu_66);
assign v112_fu_334_p3 = v53_q0[32'd7];
assign v113_fu_342_p3 = ((v112_fu_334_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln301_fu_330_p1);
assign v52_address1 = zext_ln304_2_reg_400;
assign v52_ce1 = v52_ce1_local;
assign v52_d1 = v113_fu_342_p3;
assign v52_we1 = v52_we1_local;
assign v53_address0 = zext_ln304_2_fu_325_p1;
assign v53_ce0 = v53_ce0_local;
assign xor_ln298_fu_188_p2 = (icmp_ln299_fu_174_p2 ^ 1'd1);
assign zext_ln304_1_fu_316_p1 = v110_mid2_reg_390;
assign zext_ln304_2_fu_325_p1 = add_ln304_1_fu_319_p2;
assign zext_ln304_fu_254_p1 = select_ln299_fu_238_p3;
always @ (posedge ap_clk) begin
    zext_ln304_2_reg_400[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
