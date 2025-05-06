
module main_graph_main_graph_Pipeline_VITIS_LOOP_850_164_VITIS_LOOP_851_165_VITIS_LOOP_852_166 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v53_address1,v53_ce1,v53_we1,v53_d1,v54_address0,v54_ce0,v54_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v53_address1;
output   v53_ce1;
output   v53_we1;
output  [6:0] v53_d1;
output  [13:0] v54_address0;
output   v54_ce0;
input  [7:0] v54_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln850_fu_146_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] v413_mid2_fu_232_p3;
reg   [3:0] v413_mid2_reg_392;
wire   [10:0] add_ln856_fu_260_p2;
reg   [10:0] add_ln856_reg_397;
wire   [63:0] zext_ln856_2_fu_327_p1;
reg   [63:0] zext_ln856_2_reg_402;
wire    ap_block_pp0_stage0;
reg   [3:0] v413_fu_68;
wire   [3:0] add_ln852_fu_266_p2;
wire    ap_loop_init;
reg   [3:0] v412_fu_72;
wire   [3:0] select_ln851_fu_240_p3;
reg   [7:0] indvar_flatten1869_fu_76;
wire   [7:0] select_ln851_1_fu_278_p3;
reg   [8:0] v411_fu_80;
wire   [8:0] select_ln850_1_fu_208_p3;
reg   [14:0] indvar_flatten1882_fu_84;
wire   [14:0] add_ln850_1_fu_152_p2;
reg    v54_ce0_local;
reg    v53_we1_local;
wire   [6:0] v416_fu_344_p3;
reg    v53_ce1_local;
wire   [0:0] icmp_ln851_fu_176_p2;
wire   [0:0] icmp_ln852_fu_196_p2;
wire   [0:0] xor_ln850_fu_190_p2;
wire   [8:0] add_ln850_fu_170_p2;
wire   [3:0] select_ln850_fu_182_p3;
wire   [0:0] and_ln850_fu_202_p2;
wire   [0:0] empty_fu_226_p2;
wire   [3:0] add_ln851_fu_220_p2;
wire   [7:0] trunc_ln851_fu_216_p1;
wire   [10:0] tmp_s_fu_248_p3;
wire   [10:0] zext_ln856_fu_256_p1;
wire   [7:0] add_ln851_1_fu_272_p2;
wire   [13:0] tmp_fu_311_p3;
wire   [13:0] zext_ln856_1_fu_318_p1;
wire   [13:0] add_ln856_1_fu_321_p2;
wire   [0:0] v415_fu_336_p3;
wire   [6:0] trunc_ln853_fu_332_p1;
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
#0 v413_fu_68 = 4'd0;
#0 v412_fu_72 = 4'd0;
#0 indvar_flatten1869_fu_76 = 8'd0;
#0 v411_fu_80 = 9'd0;
#0 indvar_flatten1882_fu_84 = 15'd0;
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
            indvar_flatten1869_fu_76 <= 8'd0;
        end else if (((icmp_ln850_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1869_fu_76 <= select_ln851_1_fu_278_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1882_fu_84 <= 15'd0;
        end else if (((icmp_ln850_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1882_fu_84 <= add_ln850_1_fu_152_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v411_fu_80 <= 9'd0;
        end else if (((icmp_ln850_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v411_fu_80 <= select_ln850_1_fu_208_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v412_fu_72 <= 4'd0;
        end else if (((icmp_ln850_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v412_fu_72 <= select_ln851_fu_240_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v413_fu_68 <= 4'd0;
        end else if (((icmp_ln850_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v413_fu_68 <= add_ln852_fu_266_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln856_reg_397 <= add_ln856_fu_260_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        v413_mid2_reg_392 <= v413_mid2_fu_232_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln856_2_reg_402[13 : 0] <= zext_ln856_2_fu_327_p1[13 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln850_fu_146_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        v53_ce1_local = 1'b1;
    end else begin
        v53_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v53_we1_local = 1'b1;
    end else begin
        v53_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v54_ce0_local = 1'b1;
    end else begin
        v54_ce0_local = 1'b0;
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
assign add_ln850_1_fu_152_p2 = (indvar_flatten1882_fu_84 + 15'd1);
assign add_ln850_fu_170_p2 = (v411_fu_80 + 9'd1);
assign add_ln851_1_fu_272_p2 = (indvar_flatten1869_fu_76 + 8'd1);
assign add_ln851_fu_220_p2 = (select_ln850_fu_182_p3 + 4'd1);
assign add_ln852_fu_266_p2 = (v413_mid2_fu_232_p3 + 4'd1);
assign add_ln856_1_fu_321_p2 = (tmp_fu_311_p3 + zext_ln856_1_fu_318_p1);
assign add_ln856_fu_260_p2 = (tmp_s_fu_248_p3 + zext_ln856_fu_256_p1);
assign and_ln850_fu_202_p2 = (xor_ln850_fu_190_p2 & icmp_ln852_fu_196_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_226_p2 = (icmp_ln851_fu_176_p2 | and_ln850_fu_202_p2);
assign icmp_ln850_fu_146_p2 = ((indvar_flatten1882_fu_84 == 15'd16384) ? 1'b1 : 1'b0);
assign icmp_ln851_fu_176_p2 = ((indvar_flatten1869_fu_76 == 8'd64) ? 1'b1 : 1'b0);
assign icmp_ln852_fu_196_p2 = ((v413_fu_68 == 4'd8) ? 1'b1 : 1'b0);
assign select_ln850_1_fu_208_p3 = ((icmp_ln851_fu_176_p2[0:0] == 1'b1) ? add_ln850_fu_170_p2 : v411_fu_80);
assign select_ln850_fu_182_p3 = ((icmp_ln851_fu_176_p2[0:0] == 1'b1) ? 4'd0 : v412_fu_72);
assign select_ln851_1_fu_278_p3 = ((icmp_ln851_fu_176_p2[0:0] == 1'b1) ? 8'd1 : add_ln851_1_fu_272_p2);
assign select_ln851_fu_240_p3 = ((and_ln850_fu_202_p2[0:0] == 1'b1) ? add_ln851_fu_220_p2 : select_ln850_fu_182_p3);
assign tmp_fu_311_p3 = {{add_ln856_reg_397}, {3'd0}};
assign tmp_s_fu_248_p3 = {{trunc_ln851_fu_216_p1}, {3'd0}};
assign trunc_ln851_fu_216_p1 = select_ln850_1_fu_208_p3[7:0];
assign trunc_ln853_fu_332_p1 = v54_q0[6:0];
assign v413_mid2_fu_232_p3 = ((empty_fu_226_p2[0:0] == 1'b1) ? 4'd0 : v413_fu_68);
assign v415_fu_336_p3 = v54_q0[32'd7];
assign v416_fu_344_p3 = ((v415_fu_336_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln853_fu_332_p1);
assign v53_address1 = zext_ln856_2_reg_402;
assign v53_ce1 = v53_ce1_local;
assign v53_d1 = v416_fu_344_p3;
assign v53_we1 = v53_we1_local;
assign v54_address0 = zext_ln856_2_fu_327_p1;
assign v54_ce0 = v54_ce0_local;
assign xor_ln850_fu_190_p2 = (icmp_ln851_fu_176_p2 ^ 1'd1);
assign zext_ln856_1_fu_318_p1 = v413_mid2_reg_392;
assign zext_ln856_2_fu_327_p1 = add_ln856_1_fu_321_p2;
assign zext_ln856_fu_256_p1 = select_ln851_fu_240_p3;
always @ (posedge ap_clk) begin
    zext_ln856_2_reg_402[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
