
module backprop_backprop_Pipeline_label_22 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v11_1_address0,v11_1_ce0,v11_1_we0,v11_1_d0,v11_1_address1,v11_1_ce1,v11_1_we1,v11_1_d1,v11_address0,v11_ce0,v11_we0,v11_d0,v11_address1,v11_ce1,v11_we1,v11_d1,v8_address0,v8_ce0,v8_q0,v8_address1,v8_ce1,v8_q1,v126,v125,v8_1_address0,v8_1_ce0,v8_1_q0,v8_1_address1,v8_1_ce1,v8_1_q1,grp_fu_4733_p_din0,grp_fu_4733_p_din1,grp_fu_4733_p_dout0,grp_fu_4733_p_ce,grp_fu_4737_p_din0,grp_fu_4737_p_din1,grp_fu_4737_p_dout0,grp_fu_4737_p_ce,grp_fu_4741_p_din0,grp_fu_4741_p_din1,grp_fu_4741_p_dout0,grp_fu_4741_p_ce,grp_fu_11650_p_din0,grp_fu_11650_p_din1,grp_fu_11650_p_dout0,grp_fu_11650_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] v11_1_address0;
output   v11_1_ce0;
output   v11_1_we0;
output  [63:0] v11_1_d0;
output  [10:0] v11_1_address1;
output   v11_1_ce1;
output   v11_1_we1;
output  [63:0] v11_1_d1;
output  [10:0] v11_address0;
output   v11_ce0;
output   v11_we0;
output  [63:0] v11_d0;
output  [10:0] v11_address1;
output   v11_ce1;
output   v11_we1;
output  [63:0] v11_d1;
output  [4:0] v8_address0;
output   v8_ce0;
input  [63:0] v8_q0;
output  [4:0] v8_address1;
output   v8_ce1;
input  [63:0] v8_q1;
input  [63:0] v126;
input  [5:0] v125;
output  [4:0] v8_1_address0;
output   v8_1_ce0;
input  [63:0] v8_1_q0;
output  [4:0] v8_1_address1;
output   v8_1_ce1;
input  [63:0] v8_1_q1;
output  [63:0] grp_fu_4733_p_din0;
output  [63:0] grp_fu_4733_p_din1;
input  [63:0] grp_fu_4733_p_dout0;
output   grp_fu_4733_p_ce;
output  [63:0] grp_fu_4737_p_din0;
output  [63:0] grp_fu_4737_p_din1;
input  [63:0] grp_fu_4737_p_dout0;
output   grp_fu_4737_p_ce;
output  [63:0] grp_fu_4741_p_din0;
output  [63:0] grp_fu_4741_p_din1;
input  [63:0] grp_fu_4741_p_dout0;
output   grp_fu_4741_p_ce;
output  [63:0] grp_fu_11650_p_din0;
output  [63:0] grp_fu_11650_p_din1;
input  [63:0] grp_fu_11650_p_dout0;
output   grp_fu_11650_p_ce;
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
wire   [0:0] tmp_fu_202_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] lshr_ln7_fu_210_p4;
reg   [4:0] lshr_ln7_reg_326;
reg   [4:0] lshr_ln7_reg_326_pp0_iter1_reg;
reg   [4:0] lshr_ln7_reg_326_pp0_iter2_reg;
reg   [4:0] lshr_ln7_reg_326_pp0_iter3_reg;
reg   [4:0] lshr_ln7_reg_326_pp0_iter4_reg;
reg   [4:0] lshr_ln7_reg_326_pp0_iter5_reg;
reg   [4:0] lshr_ln7_reg_326_pp0_iter6_reg;
reg   [4:0] lshr_ln7_reg_326_pp0_iter7_reg;
reg   [4:0] lshr_ln7_reg_326_pp0_iter8_reg;
wire   [3:0] tmp_s_fu_226_p4;
reg   [3:0] tmp_s_reg_341;
reg   [3:0] tmp_s_reg_341_pp0_iter1_reg;
reg   [3:0] tmp_s_reg_341_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_341_pp0_iter3_reg;
reg   [3:0] tmp_s_reg_341_pp0_iter4_reg;
reg   [3:0] tmp_s_reg_341_pp0_iter5_reg;
reg   [3:0] tmp_s_reg_341_pp0_iter6_reg;
reg   [3:0] tmp_s_reg_341_pp0_iter7_reg;
reg   [3:0] tmp_s_reg_341_pp0_iter8_reg;
reg   [63:0] v128_reg_356;
reg   [63:0] v128_19_reg_361;
reg   [63:0] v128_20_reg_366;
reg   [63:0] v128_18_reg_371;
reg   [63:0] v129_reg_376;
reg   [63:0] v129_1_reg_381;
reg   [63:0] v129_2_reg_386;
reg   [63:0] v129_3_reg_391;
wire   [63:0] zext_ln212_fu_220_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln213_fu_244_p1;
wire   [63:0] zext_ln215_fu_281_p1;
wire   [63:0] zext_ln215_1_fu_295_p1;
reg   [6:0] v127_fu_62;
wire   [6:0] add_ln212_fu_250_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v127_3;
reg    v8_ce1_local;
reg    v8_ce0_local;
reg    v8_1_ce1_local;
reg    v8_1_ce0_local;
reg    v11_we1_local;
reg    v11_ce1_local;
reg    v11_we0_local;
reg    v11_ce0_local;
reg    v11_1_we1_local;
reg    v11_1_ce1_local;
reg    v11_1_we0_local;
reg    v11_1_ce0_local;
wire   [4:0] or_ln3_fu_236_p3;
wire   [4:0] tmp_7_fu_264_p4;
wire   [5:0] zext_ln212_2_fu_261_p1;
wire   [10:0] add_ln_fu_273_p3;
wire   [10:0] add_ln215_1_fu_287_p4;
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
#0 v127_fu_62 = 7'd0;
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
        if (((tmp_fu_202_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v127_fu_62 <= add_ln212_fu_250_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v127_fu_62 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln7_reg_326 <= {{ap_sig_allocacmp_v127_3[5:1]}};
        lshr_ln7_reg_326_pp0_iter1_reg <= lshr_ln7_reg_326;
        tmp_s_reg_341 <= {{ap_sig_allocacmp_v127_3[5:2]}};
        tmp_s_reg_341_pp0_iter1_reg <= tmp_s_reg_341;
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
        lshr_ln7_reg_326_pp0_iter2_reg <= lshr_ln7_reg_326_pp0_iter1_reg;
        lshr_ln7_reg_326_pp0_iter3_reg <= lshr_ln7_reg_326_pp0_iter2_reg;
        lshr_ln7_reg_326_pp0_iter4_reg <= lshr_ln7_reg_326_pp0_iter3_reg;
        lshr_ln7_reg_326_pp0_iter5_reg <= lshr_ln7_reg_326_pp0_iter4_reg;
        lshr_ln7_reg_326_pp0_iter6_reg <= lshr_ln7_reg_326_pp0_iter5_reg;
        lshr_ln7_reg_326_pp0_iter7_reg <= lshr_ln7_reg_326_pp0_iter6_reg;
        lshr_ln7_reg_326_pp0_iter8_reg <= lshr_ln7_reg_326_pp0_iter7_reg;
        tmp_s_reg_341_pp0_iter2_reg <= tmp_s_reg_341_pp0_iter1_reg;
        tmp_s_reg_341_pp0_iter3_reg <= tmp_s_reg_341_pp0_iter2_reg;
        tmp_s_reg_341_pp0_iter4_reg <= tmp_s_reg_341_pp0_iter3_reg;
        tmp_s_reg_341_pp0_iter5_reg <= tmp_s_reg_341_pp0_iter4_reg;
        tmp_s_reg_341_pp0_iter6_reg <= tmp_s_reg_341_pp0_iter5_reg;
        tmp_s_reg_341_pp0_iter7_reg <= tmp_s_reg_341_pp0_iter6_reg;
        tmp_s_reg_341_pp0_iter8_reg <= tmp_s_reg_341_pp0_iter7_reg;
        v129_1_reg_381 <= grp_fu_4737_p_dout0;
        v129_2_reg_386 <= grp_fu_4741_p_dout0;
        v129_3_reg_391 <= grp_fu_11650_p_dout0;
        v129_reg_376 <= grp_fu_4733_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v128_18_reg_371 <= v8_1_q0;
        v128_19_reg_361 <= v8_1_q1;
        v128_20_reg_366 <= v8_q0;
        v128_reg_356 <= v8_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_202_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v127_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_v127_3 = v127_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_ce0_local = 1'b1;
    end else begin
        v11_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_ce1_local = 1'b1;
    end else begin
        v11_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_we0_local = 1'b1;
    end else begin
        v11_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_we1_local = 1'b1;
    end else begin
        v11_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_ce0_local = 1'b1;
    end else begin
        v11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_ce1_local = 1'b1;
    end else begin
        v11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_we0_local = 1'b1;
    end else begin
        v11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_we1_local = 1'b1;
    end else begin
        v11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_1_ce0_local = 1'b1;
    end else begin
        v8_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_1_ce1_local = 1'b1;
    end else begin
        v8_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_ce0_local = 1'b1;
    end else begin
        v8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_ce1_local = 1'b1;
    end else begin
        v8_ce1_local = 1'b0;
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
assign add_ln212_fu_250_p2 = (ap_sig_allocacmp_v127_3 + 7'd4);
assign add_ln215_1_fu_287_p4 = {{{v125}, {tmp_s_reg_341_pp0_iter8_reg}}, {1'd1}};
assign add_ln_fu_273_p3 = {{tmp_7_fu_264_p4}, {zext_ln212_2_fu_261_p1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_11650_p_ce = 1'b1;
assign grp_fu_11650_p_din0 = v126;
assign grp_fu_11650_p_din1 = v128_18_reg_371;
assign grp_fu_4733_p_ce = 1'b1;
assign grp_fu_4733_p_din0 = v126;
assign grp_fu_4733_p_din1 = v128_reg_356;
assign grp_fu_4737_p_ce = 1'b1;
assign grp_fu_4737_p_din0 = v126;
assign grp_fu_4737_p_din1 = v128_19_reg_361;
assign grp_fu_4741_p_ce = 1'b1;
assign grp_fu_4741_p_din0 = v126;
assign grp_fu_4741_p_din1 = v128_20_reg_366;
assign lshr_ln7_fu_210_p4 = {{ap_sig_allocacmp_v127_3[5:1]}};
assign or_ln3_fu_236_p3 = {{tmp_s_fu_226_p4}, {1'd1}};
assign tmp_7_fu_264_p4 = {{v125[5:1]}};
assign tmp_fu_202_p3 = ap_sig_allocacmp_v127_3[32'd6];
assign tmp_s_fu_226_p4 = {{ap_sig_allocacmp_v127_3[5:2]}};
assign v11_1_address0 = zext_ln215_1_fu_295_p1;
assign v11_1_address1 = zext_ln215_fu_281_p1;
assign v11_1_ce0 = v11_1_ce0_local;
assign v11_1_ce1 = v11_1_ce1_local;
assign v11_1_d0 = v129_3_reg_391;
assign v11_1_d1 = v129_1_reg_381;
assign v11_1_we0 = v11_1_we0_local;
assign v11_1_we1 = v11_1_we1_local;
assign v11_address0 = zext_ln215_1_fu_295_p1;
assign v11_address1 = zext_ln215_fu_281_p1;
assign v11_ce0 = v11_ce0_local;
assign v11_ce1 = v11_ce1_local;
assign v11_d0 = v129_2_reg_386;
assign v11_d1 = v129_reg_376;
assign v11_we0 = v11_we0_local;
assign v11_we1 = v11_we1_local;
assign v8_1_address0 = zext_ln213_fu_244_p1;
assign v8_1_address1 = zext_ln212_fu_220_p1;
assign v8_1_ce0 = v8_1_ce0_local;
assign v8_1_ce1 = v8_1_ce1_local;
assign v8_address0 = zext_ln213_fu_244_p1;
assign v8_address1 = zext_ln212_fu_220_p1;
assign v8_ce0 = v8_ce0_local;
assign v8_ce1 = v8_ce1_local;
assign zext_ln212_2_fu_261_p1 = lshr_ln7_reg_326_pp0_iter8_reg;
assign zext_ln212_fu_220_p1 = lshr_ln7_fu_210_p4;
assign zext_ln213_fu_244_p1 = or_ln3_fu_236_p3;
assign zext_ln215_1_fu_295_p1 = add_ln215_1_fu_287_p4;
assign zext_ln215_fu_281_p1 = add_ln_fu_273_p3;
endmodule 
