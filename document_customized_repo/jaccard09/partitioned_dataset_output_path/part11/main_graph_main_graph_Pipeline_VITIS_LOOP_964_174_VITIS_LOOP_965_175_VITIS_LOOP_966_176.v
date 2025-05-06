
module main_graph_main_graph_Pipeline_VITIS_LOOP_964_174_VITIS_LOOP_965_175_VITIS_LOOP_966_176 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v60_address1,v60_ce1,v60_we1,v60_d1,v61_address0,v61_ce0,v61_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v60_address1;
output   v60_ce1;
output   v60_we1;
output  [6:0] v60_d1;
output  [12:0] v61_address0;
output   v61_ce0;
input  [7:0] v61_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln964_fu_146_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] v474_mid2_fu_232_p3;
reg   [2:0] v474_mid2_reg_392;
wire   [10:0] add_ln970_fu_260_p2;
reg   [10:0] add_ln970_reg_397;
wire   [63:0] zext_ln970_2_fu_327_p1;
reg   [63:0] zext_ln970_2_reg_402;
wire    ap_block_pp0_stage0;
reg   [2:0] v474_fu_68;
wire   [2:0] add_ln966_fu_266_p2;
wire    ap_loop_init;
reg   [2:0] v473_fu_72;
wire   [2:0] select_ln965_fu_240_p3;
reg   [5:0] indvar_flatten1002_fu_76;
wire   [5:0] select_ln965_1_fu_278_p3;
reg   [9:0] v472_fu_80;
wire   [9:0] select_ln964_1_fu_208_p3;
reg   [13:0] indvar_flatten1015_fu_84;
wire   [13:0] add_ln964_1_fu_152_p2;
reg    v61_ce0_local;
reg    v60_we1_local;
wire   [6:0] v477_fu_344_p3;
reg    v60_ce1_local;
wire   [0:0] icmp_ln965_fu_176_p2;
wire   [0:0] icmp_ln966_fu_196_p2;
wire   [0:0] xor_ln964_fu_190_p2;
wire   [9:0] add_ln964_fu_170_p2;
wire   [2:0] select_ln964_fu_182_p3;
wire   [0:0] and_ln964_fu_202_p2;
wire   [0:0] empty_fu_226_p2;
wire   [2:0] add_ln965_fu_220_p2;
wire   [8:0] trunc_ln965_fu_216_p1;
wire   [10:0] tmp_s_fu_248_p3;
wire   [10:0] zext_ln970_fu_256_p1;
wire   [5:0] add_ln965_1_fu_272_p2;
wire   [12:0] tmp_fu_311_p3;
wire   [12:0] zext_ln970_1_fu_318_p1;
wire   [12:0] add_ln970_1_fu_321_p2;
wire   [0:0] v476_fu_336_p3;
wire   [6:0] trunc_ln967_fu_332_p1;
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
#0 v474_fu_68 = 3'd0;
#0 v473_fu_72 = 3'd0;
#0 indvar_flatten1002_fu_76 = 6'd0;
#0 v472_fu_80 = 10'd0;
#0 indvar_flatten1015_fu_84 = 14'd0;
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
            indvar_flatten1002_fu_76 <= 6'd0;
        end else if (((icmp_ln964_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1002_fu_76 <= select_ln965_1_fu_278_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1015_fu_84 <= 14'd0;
        end else if (((icmp_ln964_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1015_fu_84 <= add_ln964_1_fu_152_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v472_fu_80 <= 10'd0;
        end else if (((icmp_ln964_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v472_fu_80 <= select_ln964_1_fu_208_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v473_fu_72 <= 3'd0;
        end else if (((icmp_ln964_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v473_fu_72 <= select_ln965_fu_240_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v474_fu_68 <= 3'd0;
        end else if (((icmp_ln964_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v474_fu_68 <= add_ln966_fu_266_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln970_reg_397 <= add_ln970_fu_260_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        v474_mid2_reg_392 <= v474_mid2_fu_232_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln970_2_reg_402[12 : 0] <= zext_ln970_2_fu_327_p1[12 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln964_fu_146_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        v60_ce1_local = 1'b1;
    end else begin
        v60_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v60_we1_local = 1'b1;
    end else begin
        v60_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v61_ce0_local = 1'b1;
    end else begin
        v61_ce0_local = 1'b0;
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
assign add_ln964_1_fu_152_p2 = (indvar_flatten1015_fu_84 + 14'd1);
assign add_ln964_fu_170_p2 = (v472_fu_80 + 10'd1);
assign add_ln965_1_fu_272_p2 = (indvar_flatten1002_fu_76 + 6'd1);
assign add_ln965_fu_220_p2 = (select_ln964_fu_182_p3 + 3'd1);
assign add_ln966_fu_266_p2 = (v474_mid2_fu_232_p3 + 3'd1);
assign add_ln970_1_fu_321_p2 = (tmp_fu_311_p3 + zext_ln970_1_fu_318_p1);
assign add_ln970_fu_260_p2 = (tmp_s_fu_248_p3 + zext_ln970_fu_256_p1);
assign and_ln964_fu_202_p2 = (xor_ln964_fu_190_p2 & icmp_ln966_fu_196_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_226_p2 = (icmp_ln965_fu_176_p2 | and_ln964_fu_202_p2);
assign icmp_ln964_fu_146_p2 = ((indvar_flatten1015_fu_84 == 14'd8192) ? 1'b1 : 1'b0);
assign icmp_ln965_fu_176_p2 = ((indvar_flatten1002_fu_76 == 6'd16) ? 1'b1 : 1'b0);
assign icmp_ln966_fu_196_p2 = ((v474_fu_68 == 3'd4) ? 1'b1 : 1'b0);
assign select_ln964_1_fu_208_p3 = ((icmp_ln965_fu_176_p2[0:0] == 1'b1) ? add_ln964_fu_170_p2 : v472_fu_80);
assign select_ln964_fu_182_p3 = ((icmp_ln965_fu_176_p2[0:0] == 1'b1) ? 3'd0 : v473_fu_72);
assign select_ln965_1_fu_278_p3 = ((icmp_ln965_fu_176_p2[0:0] == 1'b1) ? 6'd1 : add_ln965_1_fu_272_p2);
assign select_ln965_fu_240_p3 = ((and_ln964_fu_202_p2[0:0] == 1'b1) ? add_ln965_fu_220_p2 : select_ln964_fu_182_p3);
assign tmp_fu_311_p3 = {{add_ln970_reg_397}, {2'd0}};
assign tmp_s_fu_248_p3 = {{trunc_ln965_fu_216_p1}, {2'd0}};
assign trunc_ln965_fu_216_p1 = select_ln964_1_fu_208_p3[8:0];
assign trunc_ln967_fu_332_p1 = v61_q0[6:0];
assign v474_mid2_fu_232_p3 = ((empty_fu_226_p2[0:0] == 1'b1) ? 3'd0 : v474_fu_68);
assign v476_fu_336_p3 = v61_q0[32'd7];
assign v477_fu_344_p3 = ((v476_fu_336_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln967_fu_332_p1);
assign v60_address1 = zext_ln970_2_reg_402;
assign v60_ce1 = v60_ce1_local;
assign v60_d1 = v477_fu_344_p3;
assign v60_we1 = v60_we1_local;
assign v61_address0 = zext_ln970_2_fu_327_p1;
assign v61_ce0 = v61_ce0_local;
assign xor_ln964_fu_190_p2 = (icmp_ln965_fu_176_p2 ^ 1'd1);
assign zext_ln970_1_fu_318_p1 = v474_mid2_reg_392;
assign zext_ln970_2_fu_327_p1 = add_ln970_1_fu_321_p2;
assign zext_ln970_fu_256_p1 = select_ln965_fu_240_p3;
always @ (posedge ap_clk) begin
    zext_ln970_2_reg_402[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 
