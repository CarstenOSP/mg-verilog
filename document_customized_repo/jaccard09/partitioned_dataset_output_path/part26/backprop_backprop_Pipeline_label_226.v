
module backprop_backprop_Pipeline_label_226 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v11_1_address0,v11_1_ce0,v11_1_we0,v11_1_d0,v11_1_address1,v11_1_ce1,v11_1_we1,v11_1_d1,v11_address0,v11_ce0,v11_we0,v11_d0,v11_address1,v11_ce1,v11_we1,v11_d1,v8_address0,v8_ce0,v8_q0,v8_4_address0,v8_4_ce0,v8_4_q0,v126_6,tmp_38,v8_1_address0,v8_1_ce0,v8_1_q0,v8_5_address0,v8_5_ce0,v8_5_q0,v8_2_address0,v8_2_ce0,v8_2_q0,v8_6_address0,v8_6_ce0,v8_6_q0,v8_3_address0,v8_3_ce0,v8_3_q0,v8_7_address0,v8_7_ce0,v8_7_q0,grp_fu_3336_p_din0,grp_fu_3336_p_din1,grp_fu_3336_p_dout0,grp_fu_3336_p_ce,grp_fu_3340_p_din0,grp_fu_3340_p_din1,grp_fu_3340_p_dout0,grp_fu_3340_p_ce,grp_fu_3344_p_din0,grp_fu_3344_p_din1,grp_fu_3344_p_dout0,grp_fu_3344_p_ce,grp_fu_6666_p_din0,grp_fu_6666_p_din1,grp_fu_6666_p_dout0,grp_fu_6666_p_ce);  
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
output  [2:0] v8_address0;
output   v8_ce0;
input  [63:0] v8_q0;
output  [2:0] v8_4_address0;
output   v8_4_ce0;
input  [63:0] v8_4_q0;
input  [63:0] v126_6;
input  [2:0] tmp_38;
output  [2:0] v8_1_address0;
output   v8_1_ce0;
input  [63:0] v8_1_q0;
output  [2:0] v8_5_address0;
output   v8_5_ce0;
input  [63:0] v8_5_q0;
output  [2:0] v8_2_address0;
output   v8_2_ce0;
input  [63:0] v8_2_q0;
output  [2:0] v8_6_address0;
output   v8_6_ce0;
input  [63:0] v8_6_q0;
output  [2:0] v8_3_address0;
output   v8_3_ce0;
input  [63:0] v8_3_q0;
output  [2:0] v8_7_address0;
output   v8_7_ce0;
input  [63:0] v8_7_q0;
output  [63:0] grp_fu_3336_p_din0;
output  [63:0] grp_fu_3336_p_din1;
input  [63:0] grp_fu_3336_p_dout0;
output   grp_fu_3336_p_ce;
output  [63:0] grp_fu_3340_p_din0;
output  [63:0] grp_fu_3340_p_din1;
input  [63:0] grp_fu_3340_p_dout0;
output   grp_fu_3340_p_ce;
output  [63:0] grp_fu_3344_p_din0;
output  [63:0] grp_fu_3344_p_din1;
input  [63:0] grp_fu_3344_p_dout0;
output   grp_fu_3344_p_ce;
output  [63:0] grp_fu_6666_p_din0;
output  [63:0] grp_fu_6666_p_din1;
input  [63:0] grp_fu_6666_p_dout0;
output   grp_fu_6666_p_ce;
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
wire   [0:0] tmp_fu_274_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v127_2_reg_431;
reg   [6:0] v127_2_reg_431_pp0_iter1_reg;
reg   [6:0] v127_2_reg_431_pp0_iter2_reg;
reg   [6:0] v127_2_reg_431_pp0_iter3_reg;
reg   [6:0] v127_2_reg_431_pp0_iter4_reg;
reg   [6:0] v127_2_reg_431_pp0_iter5_reg;
reg   [6:0] v127_2_reg_431_pp0_iter6_reg;
reg   [6:0] v127_2_reg_431_pp0_iter7_reg;
reg   [6:0] v127_2_reg_431_pp0_iter8_reg;
wire   [63:0] v128_fu_324_p3;
reg   [63:0] v128_reg_482;
wire   [63:0] v128_9_fu_332_p3;
reg   [63:0] v128_9_reg_487;
wire   [63:0] v128_10_fu_340_p3;
reg   [63:0] v128_10_reg_492;
wire   [63:0] v128_8_fu_348_p3;
reg   [63:0] v128_8_reg_497;
reg   [63:0] v129_reg_502;
reg   [63:0] v129_4_reg_507;
reg   [63:0] v129_5_reg_512;
reg   [63:0] v129_6_reg_517;
wire   [63:0] zext_ln212_fu_292_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln215_2_fu_378_p1;
wire   [63:0] zext_ln215_3_fu_404_p1;
reg   [6:0] v127_fu_80;
wire   [6:0] add_ln212_fu_304_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v127_2;
reg    v8_ce0_local;
reg    v8_4_ce0_local;
reg    v8_1_ce0_local;
reg    v8_5_ce0_local;
reg    v8_2_ce0_local;
reg    v8_6_ce0_local;
reg    v8_3_ce0_local;
reg    v8_7_ce0_local;
reg    v11_we1_local;
reg    v11_ce1_local;
reg    v11_we0_local;
reg    v11_ce0_local;
reg    v11_1_we1_local;
reg    v11_1_ce1_local;
reg    v11_1_we0_local;
reg    v11_1_ce0_local;
wire   [2:0] lshr_ln212_6_fu_282_p4;
wire   [2:0] trunc_ln212_fu_315_p1;
wire   [0:0] icmp_ln213_fu_318_p2;
wire   [4:0] lshr_ln215_6_fu_356_p4;
wire   [5:0] zext_ln215_fu_365_p1;
wire   [10:0] add_ln215_s_fu_369_p4;
wire   [3:0] tmp_s_fu_384_p4;
wire   [10:0] add_ln215_2_fu_393_p5;
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
#0 v127_fu_80 = 7'd0;
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
        if (((tmp_fu_274_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v127_fu_80 <= add_ln212_fu_304_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v127_fu_80 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v127_2_reg_431 <= ap_sig_allocacmp_v127_2;
        v127_2_reg_431_pp0_iter1_reg <= v127_2_reg_431;
        v128_10_reg_492 <= v128_10_fu_340_p3;
        v128_8_reg_497 <= v128_8_fu_348_p3;
        v128_9_reg_487 <= v128_9_fu_332_p3;
        v128_reg_482 <= v128_fu_324_p3;
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
        v127_2_reg_431_pp0_iter2_reg <= v127_2_reg_431_pp0_iter1_reg;
        v127_2_reg_431_pp0_iter3_reg <= v127_2_reg_431_pp0_iter2_reg;
        v127_2_reg_431_pp0_iter4_reg <= v127_2_reg_431_pp0_iter3_reg;
        v127_2_reg_431_pp0_iter5_reg <= v127_2_reg_431_pp0_iter4_reg;
        v127_2_reg_431_pp0_iter6_reg <= v127_2_reg_431_pp0_iter5_reg;
        v127_2_reg_431_pp0_iter7_reg <= v127_2_reg_431_pp0_iter6_reg;
        v127_2_reg_431_pp0_iter8_reg <= v127_2_reg_431_pp0_iter7_reg;
        v129_4_reg_507 <= grp_fu_3340_p_dout0;
        v129_5_reg_512 <= grp_fu_3344_p_dout0;
        v129_6_reg_517 <= grp_fu_6666_p_dout0;
        v129_reg_502 <= grp_fu_3336_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_fu_274_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v127_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_v127_2 = v127_fu_80;
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
        v8_2_ce0_local = 1'b1;
    end else begin
        v8_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_3_ce0_local = 1'b1;
    end else begin
        v8_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_4_ce0_local = 1'b1;
    end else begin
        v8_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_5_ce0_local = 1'b1;
    end else begin
        v8_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_6_ce0_local = 1'b1;
    end else begin
        v8_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_7_ce0_local = 1'b1;
    end else begin
        v8_7_ce0_local = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln212_fu_304_p2 = (ap_sig_allocacmp_v127_2 + 7'd4);
assign add_ln215_2_fu_393_p5 = {{{{tmp_38}, {3'd6}}, {tmp_s_fu_384_p4}}, {1'd1}};
assign add_ln215_s_fu_369_p4 = {{{tmp_38}, {2'd3}}, {zext_ln215_fu_365_p1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_3336_p_ce = 1'b1;
assign grp_fu_3336_p_din0 = v126_6;
assign grp_fu_3336_p_din1 = v128_reg_482;
assign grp_fu_3340_p_ce = 1'b1;
assign grp_fu_3340_p_din0 = v126_6;
assign grp_fu_3340_p_din1 = v128_9_reg_487;
assign grp_fu_3344_p_ce = 1'b1;
assign grp_fu_3344_p_din0 = v126_6;
assign grp_fu_3344_p_din1 = v128_10_reg_492;
assign grp_fu_6666_p_ce = 1'b1;
assign grp_fu_6666_p_din0 = v126_6;
assign grp_fu_6666_p_din1 = v128_8_reg_497;
assign icmp_ln213_fu_318_p2 = ((trunc_ln212_fu_315_p1 != 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln212_6_fu_282_p4 = {{ap_sig_allocacmp_v127_2[5:3]}};
assign lshr_ln215_6_fu_356_p4 = {{v127_2_reg_431_pp0_iter8_reg[5:1]}};
assign tmp_fu_274_p3 = ap_sig_allocacmp_v127_2[32'd6];
assign tmp_s_fu_384_p4 = {{v127_2_reg_431_pp0_iter8_reg[5:2]}};
assign trunc_ln212_fu_315_p1 = v127_2_reg_431[2:0];
assign v11_1_address0 = zext_ln215_3_fu_404_p1;
assign v11_1_address1 = zext_ln215_2_fu_378_p1;
assign v11_1_ce0 = v11_1_ce0_local;
assign v11_1_ce1 = v11_1_ce1_local;
assign v11_1_d0 = v129_6_reg_517;
assign v11_1_d1 = v129_4_reg_507;
assign v11_1_we0 = v11_1_we0_local;
assign v11_1_we1 = v11_1_we1_local;
assign v11_address0 = zext_ln215_3_fu_404_p1;
assign v11_address1 = zext_ln215_2_fu_378_p1;
assign v11_ce0 = v11_ce0_local;
assign v11_ce1 = v11_ce1_local;
assign v11_d0 = v129_5_reg_512;
assign v11_d1 = v129_reg_502;
assign v11_we0 = v11_we0_local;
assign v11_we1 = v11_we1_local;
assign v128_10_fu_340_p3 = ((icmp_ln213_fu_318_p2[0:0] == 1'b1) ? v8_6_q0 : v8_2_q0);
assign v128_8_fu_348_p3 = ((icmp_ln213_fu_318_p2[0:0] == 1'b1) ? v8_7_q0 : v8_3_q0);
assign v128_9_fu_332_p3 = ((icmp_ln213_fu_318_p2[0:0] == 1'b1) ? v8_5_q0 : v8_1_q0);
assign v128_fu_324_p3 = ((icmp_ln213_fu_318_p2[0:0] == 1'b1) ? v8_4_q0 : v8_q0);
assign v8_1_address0 = zext_ln212_fu_292_p1;
assign v8_1_ce0 = v8_1_ce0_local;
assign v8_2_address0 = zext_ln212_fu_292_p1;
assign v8_2_ce0 = v8_2_ce0_local;
assign v8_3_address0 = zext_ln212_fu_292_p1;
assign v8_3_ce0 = v8_3_ce0_local;
assign v8_4_address0 = zext_ln212_fu_292_p1;
assign v8_4_ce0 = v8_4_ce0_local;
assign v8_5_address0 = zext_ln212_fu_292_p1;
assign v8_5_ce0 = v8_5_ce0_local;
assign v8_6_address0 = zext_ln212_fu_292_p1;
assign v8_6_ce0 = v8_6_ce0_local;
assign v8_7_address0 = zext_ln212_fu_292_p1;
assign v8_7_ce0 = v8_7_ce0_local;
assign v8_address0 = zext_ln212_fu_292_p1;
assign v8_ce0 = v8_ce0_local;
assign zext_ln212_fu_292_p1 = lshr_ln212_6_fu_282_p4;
assign zext_ln215_2_fu_378_p1 = add_ln215_s_fu_369_p4;
assign zext_ln215_3_fu_404_p1 = add_ln215_2_fu_393_p5;
assign zext_ln215_fu_365_p1 = lshr_ln215_6_fu_356_p4;
endmodule 
