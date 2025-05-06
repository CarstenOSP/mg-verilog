
module main_graph_main_graph_Pipeline_VITIS_LOOP_514_48_VITIS_LOOP_515_49_VITIS_LOOP_516_50 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v90_address1,v90_ce1,v90_we1,v90_d1,v90_1_address1,v90_1_ce1,v90_1_we1,v90_1_d1,v91_address0,v91_ce0,v91_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v90_address1;
output   v90_ce1;
output   v90_we1;
output  [6:0] v90_d1;
output  [12:0] v90_1_address1;
output   v90_1_ce1;
output   v90_1_we1;
output  [6:0] v90_1_d1;
output  [13:0] v91_address0;
output   v91_ce0;
input  [7:0] v91_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln514_fu_174_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] trunc_ln515_fu_241_p1;
reg   [5:0] trunc_ln515_reg_469;
wire   [4:0] v198_mid2_fu_257_p3;
reg   [4:0] v198_mid2_reg_474;
wire   [4:0] select_ln515_fu_265_p3;
reg   [4:0] select_ln515_reg_480;
wire   [0:0] trunc_ln514_fu_273_p1;
reg   [0:0] trunc_ln514_reg_486;
reg   [0:0] trunc_ln514_reg_486_pp0_iter2_reg;
reg   [4:0] lshr_ln1_reg_490;
wire   [12:0] add_ln520_1_fu_386_p2;
reg   [12:0] add_ln520_1_reg_495;
wire   [63:0] zext_ln517_fu_398_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln520_4_fu_403_p1;
reg   [4:0] v198_fu_76;
wire   [4:0] add_ln516_fu_287_p2;
wire    ap_loop_init;
reg   [4:0] v197_fu_80;
reg   [9:0] indvar_flatten225_fu_84;
wire   [9:0] select_ln515_1_fu_299_p3;
reg   [6:0] v196_fu_88;
wire   [6:0] select_ln514_1_fu_233_p3;
reg   [14:0] indvar_flatten238_fu_92;
wire   [14:0] add_ln514_1_fu_180_p2;
reg    v91_ce0_local;
reg    v90_we1_local;
wire   [6:0] v201_fu_420_p3;
reg    v90_ce1_local;
reg    v90_1_we1_local;
reg    v90_1_ce1_local;
wire   [0:0] icmp_ln515_fu_201_p2;
wire   [0:0] icmp_ln516_fu_221_p2;
wire   [0:0] xor_ln514_fu_215_p2;
wire   [6:0] add_ln514_fu_195_p2;
wire   [4:0] select_ln514_fu_207_p3;
wire   [0:0] and_ln514_fu_227_p2;
wire   [0:0] empty_fu_251_p2;
wire   [4:0] add_ln515_fu_245_p2;
wire   [9:0] add_ln515_1_fu_293_p2;
wire   [8:0] tmp_74_fu_339_p3;
wire   [8:0] zext_ln520_1_fu_349_p1;
wire   [8:0] add_ln520_fu_352_p2;
wire   [9:0] tmp_73_fu_332_p3;
wire   [9:0] zext_ln520_fu_346_p1;
wire   [9:0] add_ln517_fu_366_p2;
wire   [12:0] tmp_fu_358_p3;
wire   [12:0] zext_ln520_3_fu_383_p1;
wire   [13:0] tmp_62_fu_372_p3;
wire   [13:0] zext_ln520_2_fu_380_p1;
wire   [13:0] add_ln517_1_fu_392_p2;
wire   [0:0] v200_fu_412_p3;
wire   [6:0] trunc_ln517_fu_408_p1;
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
#0 v198_fu_76 = 5'd0;
#0 v197_fu_80 = 5'd0;
#0 indvar_flatten225_fu_84 = 10'd0;
#0 v196_fu_88 = 7'd0;
#0 indvar_flatten238_fu_92 = 15'd0;
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
            indvar_flatten225_fu_84 <= 10'd0;
        end else if (((icmp_ln514_fu_174_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten225_fu_84 <= select_ln515_1_fu_299_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten238_fu_92 <= 15'd0;
        end else if (((icmp_ln514_fu_174_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten238_fu_92 <= add_ln514_1_fu_180_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v196_fu_88 <= 7'd0;
        end else if (((icmp_ln514_fu_174_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v196_fu_88 <= select_ln514_1_fu_233_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v197_fu_80 <= 5'd0;
        end else if (((icmp_ln514_fu_174_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v197_fu_80 <= select_ln515_fu_265_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v198_fu_76 <= 5'd0;
        end else if (((icmp_ln514_fu_174_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v198_fu_76 <= add_ln516_fu_287_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln520_1_reg_495 <= add_ln520_1_fu_386_p2;
        trunc_ln514_reg_486_pp0_iter2_reg <= trunc_ln514_reg_486;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        lshr_ln1_reg_490 <= {{select_ln514_1_fu_233_p3[5:1]}};
        select_ln515_reg_480 <= select_ln515_fu_265_p3;
        trunc_ln514_reg_486 <= trunc_ln514_fu_273_p1;
        trunc_ln515_reg_469 <= trunc_ln515_fu_241_p1;
        v198_mid2_reg_474 <= v198_mid2_fu_257_p3;
    end
end
always @ (*) begin
    if (((icmp_ln514_fu_174_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        v90_1_ce1_local = 1'b1;
    end else begin
        v90_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln514_reg_486_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v90_1_we1_local = 1'b1;
    end else begin
        v90_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v90_ce1_local = 1'b1;
    end else begin
        v90_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln514_reg_486_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v90_we1_local = 1'b1;
    end else begin
        v90_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v91_ce0_local = 1'b1;
    end else begin
        v91_ce0_local = 1'b0;
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
assign add_ln514_1_fu_180_p2 = (indvar_flatten238_fu_92 + 15'd1);
assign add_ln514_fu_195_p2 = (v196_fu_88 + 7'd1);
assign add_ln515_1_fu_293_p2 = (indvar_flatten225_fu_84 + 10'd1);
assign add_ln515_fu_245_p2 = (select_ln514_fu_207_p3 + 5'd1);
assign add_ln516_fu_287_p2 = (v198_mid2_fu_257_p3 + 5'd1);
assign add_ln517_1_fu_392_p2 = (tmp_62_fu_372_p3 + zext_ln520_2_fu_380_p1);
assign add_ln517_fu_366_p2 = (tmp_73_fu_332_p3 + zext_ln520_fu_346_p1);
assign add_ln520_1_fu_386_p2 = (tmp_fu_358_p3 + zext_ln520_3_fu_383_p1);
assign add_ln520_fu_352_p2 = (tmp_74_fu_339_p3 + zext_ln520_1_fu_349_p1);
assign and_ln514_fu_227_p2 = (xor_ln514_fu_215_p2 & icmp_ln516_fu_221_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_251_p2 = (icmp_ln515_fu_201_p2 | and_ln514_fu_227_p2);
assign icmp_ln514_fu_174_p2 = ((indvar_flatten238_fu_92 == 15'd16384) ? 1'b1 : 1'b0);
assign icmp_ln515_fu_201_p2 = ((indvar_flatten225_fu_84 == 10'd256) ? 1'b1 : 1'b0);
assign icmp_ln516_fu_221_p2 = ((v198_fu_76 == 5'd16) ? 1'b1 : 1'b0);
assign select_ln514_1_fu_233_p3 = ((icmp_ln515_fu_201_p2[0:0] == 1'b1) ? add_ln514_fu_195_p2 : v196_fu_88);
assign select_ln514_fu_207_p3 = ((icmp_ln515_fu_201_p2[0:0] == 1'b1) ? 5'd0 : v197_fu_80);
assign select_ln515_1_fu_299_p3 = ((icmp_ln515_fu_201_p2[0:0] == 1'b1) ? 10'd1 : add_ln515_1_fu_293_p2);
assign select_ln515_fu_265_p3 = ((and_ln514_fu_227_p2[0:0] == 1'b1) ? add_ln515_fu_245_p2 : select_ln514_fu_207_p3);
assign tmp_62_fu_372_p3 = {{add_ln517_fu_366_p2}, {4'd0}};
assign tmp_73_fu_332_p3 = {{trunc_ln515_reg_469}, {4'd0}};
assign tmp_74_fu_339_p3 = {{lshr_ln1_reg_490}, {4'd0}};
assign tmp_fu_358_p3 = {{add_ln520_fu_352_p2}, {4'd0}};
assign trunc_ln514_fu_273_p1 = select_ln514_1_fu_233_p3[0:0];
assign trunc_ln515_fu_241_p1 = select_ln514_1_fu_233_p3[5:0];
assign trunc_ln517_fu_408_p1 = v91_q0[6:0];
assign v198_mid2_fu_257_p3 = ((empty_fu_251_p2[0:0] == 1'b1) ? 5'd0 : v198_fu_76);
assign v200_fu_412_p3 = v91_q0[32'd7];
assign v201_fu_420_p3 = ((v200_fu_412_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln517_fu_408_p1);
assign v90_1_address1 = zext_ln520_4_fu_403_p1;
assign v90_1_ce1 = v90_1_ce1_local;
assign v90_1_d1 = v201_fu_420_p3;
assign v90_1_we1 = v90_1_we1_local;
assign v90_address1 = zext_ln520_4_fu_403_p1;
assign v90_ce1 = v90_ce1_local;
assign v90_d1 = v201_fu_420_p3;
assign v90_we1 = v90_we1_local;
assign v91_address0 = zext_ln517_fu_398_p1;
assign v91_ce0 = v91_ce0_local;
assign xor_ln514_fu_215_p2 = (icmp_ln515_fu_201_p2 ^ 1'd1);
assign zext_ln517_fu_398_p1 = add_ln517_1_fu_392_p2;
assign zext_ln520_1_fu_349_p1 = select_ln515_reg_480;
assign zext_ln520_2_fu_380_p1 = v198_mid2_reg_474;
assign zext_ln520_3_fu_383_p1 = v198_mid2_reg_474;
assign zext_ln520_4_fu_403_p1 = add_ln520_1_reg_495;
assign zext_ln520_fu_346_p1 = select_ln515_reg_480;
endmodule 
