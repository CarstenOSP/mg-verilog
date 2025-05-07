module backprop_backprop_Pipeline_label_21_label_22 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v20_address0,v20_ce0,v20_q0,v8_address0,v8_ce0,v8_q0,v8_2_address0,v8_2_ce0,v8_2_q0,v11_address0,v11_ce0,v11_we0,v11_d0,v11_address1,v11_ce1,v11_we1,v11_d1,v8_1_address0,v8_1_ce0,v8_1_q0,v8_3_address0,v8_3_ce0,v8_3_q0,grp_fu_20889_p_din0,grp_fu_20889_p_din1,grp_fu_20889_p_dout0,grp_fu_20889_p_ce,grp_fu_20893_p_din0,grp_fu_20893_p_din1,grp_fu_20893_p_dout0,grp_fu_20893_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v20_address0;
output   v20_ce0;
input  [63:0] v20_q0;
output  [3:0] v8_address0;
output   v8_ce0;
input  [63:0] v8_q0;
output  [3:0] v8_2_address0;
output   v8_2_ce0;
input  [63:0] v8_2_q0;
output  [11:0] v11_address0;
output   v11_ce0;
output   v11_we0;
output  [63:0] v11_d0;
output  [11:0] v11_address1;
output   v11_ce1;
output   v11_we1;
output  [63:0] v11_d1;
output  [3:0] v8_1_address0;
output   v8_1_ce0;
input  [63:0] v8_1_q0;
output  [3:0] v8_3_address0;
output   v8_3_ce0;
input  [63:0] v8_3_q0;
output  [63:0] grp_fu_20889_p_din0;
output  [63:0] grp_fu_20889_p_din1;
input  [63:0] grp_fu_20889_p_dout0;
output   grp_fu_20889_p_ce;
output  [63:0] grp_fu_20893_p_din0;
output  [63:0] grp_fu_20893_p_din1;
input  [63:0] grp_fu_20893_p_dout0;
output   grp_fu_20893_p_ce;
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
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln210_fu_194_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln210_fu_225_p3;
reg   [6:0] select_ln210_reg_383;
reg   [6:0] select_ln210_reg_383_pp0_iter2_reg;
reg   [6:0] select_ln210_reg_383_pp0_iter3_reg;
reg   [6:0] select_ln210_reg_383_pp0_iter4_reg;
reg   [6:0] select_ln210_reg_383_pp0_iter5_reg;
reg   [6:0] select_ln210_reg_383_pp0_iter6_reg;
reg   [6:0] select_ln210_reg_383_pp0_iter7_reg;
reg   [6:0] select_ln210_reg_383_pp0_iter8_reg;
reg   [6:0] select_ln210_reg_383_pp0_iter9_reg;
wire   [5:0] empty_fu_252_p1;
reg   [5:0] empty_reg_393;
reg   [5:0] empty_reg_393_pp0_iter2_reg;
reg   [5:0] empty_reg_393_pp0_iter3_reg;
reg   [5:0] empty_reg_393_pp0_iter4_reg;
reg   [5:0] empty_reg_393_pp0_iter5_reg;
reg   [5:0] empty_reg_393_pp0_iter6_reg;
reg   [5:0] empty_reg_393_pp0_iter7_reg;
reg   [5:0] empty_reg_393_pp0_iter8_reg;
reg   [5:0] empty_reg_393_pp0_iter9_reg;
wire   [0:0] icmp_ln213_fu_278_p2;
reg   [0:0] icmp_ln213_reg_409;
reg   [4:0] tmp_s_reg_425;
reg   [4:0] tmp_s_reg_425_pp0_iter2_reg;
reg   [4:0] tmp_s_reg_425_pp0_iter3_reg;
reg   [4:0] tmp_s_reg_425_pp0_iter4_reg;
reg   [4:0] tmp_s_reg_425_pp0_iter5_reg;
reg   [4:0] tmp_s_reg_425_pp0_iter6_reg;
reg   [4:0] tmp_s_reg_425_pp0_iter7_reg;
reg   [4:0] tmp_s_reg_425_pp0_iter8_reg;
reg   [4:0] tmp_s_reg_425_pp0_iter9_reg;
reg   [63:0] v126_reg_430;
wire   [63:0] v128_fu_310_p3;
reg   [63:0] v128_reg_436;
wire   [63:0] v128_1_fu_317_p3;
reg   [63:0] v128_1_reg_441;
reg   [63:0] v129_reg_446;
reg   [63:0] v129_1_reg_451;
wire   [63:0] zext_ln210_fu_247_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln212_1_fu_270_p1;
wire   [63:0] zext_ln215_fu_340_p1;
wire   [63:0] zext_ln215_1_fu_353_p1;
reg   [6:0] v127_fu_66;
wire   [6:0] add_ln212_fu_294_p2;
wire    ap_loop_init;
reg   [6:0] v125_fu_70;
wire   [6:0] select_ln210_1_fu_239_p3;
reg   [11:0] indvar_flatten19_fu_74;
wire   [11:0] add_ln210_fu_200_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten19_load;
reg    v20_ce0_local;
reg    v8_ce0_local;
reg    v8_2_ce0_local;
reg    v8_1_ce0_local;
reg    v8_3_ce0_local;
reg    v11_we1_local;
reg    v11_ce1_local;
reg    v11_we0_local;
reg    v11_ce0_local;
wire   [0:0] tmp_fu_217_p3;
wire   [6:0] add_ln210_1_fu_233_p2;
wire   [3:0] lshr_ln_fu_260_p4;
wire   [1:0] trunc_ln212_fu_256_p1;
wire   [11:0] zext_ln212_fu_331_p1;
wire   [11:0] tmp_9_fu_324_p3;
wire   [11:0] add_ln215_fu_334_p2;
wire   [11:0] add_ln215_1_fu_345_p4;
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
reg    ap_loop_exit_ready_pp0_iter9_reg;
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
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 v127_fu_66 = 7'd0;
#0 v125_fu_70 = 7'd0;
#0 indvar_flatten19_fu_74 = 12'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
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
        if (((icmp_ln210_fu_194_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten19_fu_74 <= add_ln210_fu_200_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten19_fu_74 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v125_fu_70 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v125_fu_70 <= select_ln210_1_fu_239_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v127_fu_66 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v127_fu_66 <= add_ln212_fu_294_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_393 <= empty_fu_252_p1;
        icmp_ln213_reg_409 <= icmp_ln213_fu_278_p2;
        select_ln210_reg_383 <= select_ln210_fu_225_p3;
        tmp_s_reg_425 <= {{select_ln210_fu_225_p3[5:1]}};
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
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        empty_reg_393_pp0_iter2_reg <= empty_reg_393;
        empty_reg_393_pp0_iter3_reg <= empty_reg_393_pp0_iter2_reg;
        empty_reg_393_pp0_iter4_reg <= empty_reg_393_pp0_iter3_reg;
        empty_reg_393_pp0_iter5_reg <= empty_reg_393_pp0_iter4_reg;
        empty_reg_393_pp0_iter6_reg <= empty_reg_393_pp0_iter5_reg;
        empty_reg_393_pp0_iter7_reg <= empty_reg_393_pp0_iter6_reg;
        empty_reg_393_pp0_iter8_reg <= empty_reg_393_pp0_iter7_reg;
        empty_reg_393_pp0_iter9_reg <= empty_reg_393_pp0_iter8_reg;
        select_ln210_reg_383_pp0_iter2_reg <= select_ln210_reg_383;
        select_ln210_reg_383_pp0_iter3_reg <= select_ln210_reg_383_pp0_iter2_reg;
        select_ln210_reg_383_pp0_iter4_reg <= select_ln210_reg_383_pp0_iter3_reg;
        select_ln210_reg_383_pp0_iter5_reg <= select_ln210_reg_383_pp0_iter4_reg;
        select_ln210_reg_383_pp0_iter6_reg <= select_ln210_reg_383_pp0_iter5_reg;
        select_ln210_reg_383_pp0_iter7_reg <= select_ln210_reg_383_pp0_iter6_reg;
        select_ln210_reg_383_pp0_iter8_reg <= select_ln210_reg_383_pp0_iter7_reg;
        select_ln210_reg_383_pp0_iter9_reg <= select_ln210_reg_383_pp0_iter8_reg;
        tmp_s_reg_425_pp0_iter2_reg <= tmp_s_reg_425;
        tmp_s_reg_425_pp0_iter3_reg <= tmp_s_reg_425_pp0_iter2_reg;
        tmp_s_reg_425_pp0_iter4_reg <= tmp_s_reg_425_pp0_iter3_reg;
        tmp_s_reg_425_pp0_iter5_reg <= tmp_s_reg_425_pp0_iter4_reg;
        tmp_s_reg_425_pp0_iter6_reg <= tmp_s_reg_425_pp0_iter5_reg;
        tmp_s_reg_425_pp0_iter7_reg <= tmp_s_reg_425_pp0_iter6_reg;
        tmp_s_reg_425_pp0_iter8_reg <= tmp_s_reg_425_pp0_iter7_reg;
        tmp_s_reg_425_pp0_iter9_reg <= tmp_s_reg_425_pp0_iter8_reg;
        v126_reg_430 <= v20_q0;
        v128_1_reg_441 <= v128_1_fu_317_p3;
        v128_reg_436 <= v128_fu_310_p3;
        v129_1_reg_451 <= grp_fu_20893_p_dout0;
        v129_reg_446 <= grp_fu_20889_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln210_fu_194_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten19_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten19_load = indvar_flatten19_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_ce0_local = 1'b1;
    end else begin
        v11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_ce1_local = 1'b1;
    end else begin
        v11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_we0_local = 1'b1;
    end else begin
        v11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_we1_local = 1'b1;
    end else begin
        v11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_1_ce0_local = 1'b1;
    end else begin
        v8_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_2_ce0_local = 1'b1;
    end else begin
        v8_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_3_ce0_local = 1'b1;
    end else begin
        v8_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln210_1_fu_233_p2 = (v125_fu_70 + 7'd1);
assign add_ln210_fu_200_p2 = (ap_sig_allocacmp_indvar_flatten19_load + 12'd1);
assign add_ln212_fu_294_p2 = (select_ln210_fu_225_p3 + 7'd2);
assign add_ln215_1_fu_345_p4 = {{{empty_reg_393_pp0_iter9_reg}, {tmp_s_reg_425_pp0_iter9_reg}}, {1'd1}};
assign add_ln215_fu_334_p2 = (zext_ln212_fu_331_p1 + tmp_9_fu_324_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_252_p1 = select_ln210_1_fu_239_p3[5:0];
assign grp_fu_20889_p_ce = 1'b1;
assign grp_fu_20889_p_din0 = v126_reg_430;
assign grp_fu_20889_p_din1 = v128_reg_436;
assign grp_fu_20893_p_ce = 1'b1;
assign grp_fu_20893_p_din0 = v126_reg_430;
assign grp_fu_20893_p_din1 = v128_1_reg_441;
assign icmp_ln210_fu_194_p2 = ((ap_sig_allocacmp_indvar_flatten19_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln213_fu_278_p2 = ((trunc_ln212_fu_256_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_260_p4 = {{select_ln210_fu_225_p3[5:2]}};
assign select_ln210_1_fu_239_p3 = ((tmp_fu_217_p3[0:0] == 1'b1) ? add_ln210_1_fu_233_p2 : v125_fu_70);
assign select_ln210_fu_225_p3 = ((tmp_fu_217_p3[0:0] == 1'b1) ? 7'd0 : v127_fu_66);
assign tmp_9_fu_324_p3 = {{empty_reg_393_pp0_iter9_reg}, {6'd0}};
assign tmp_fu_217_p3 = v127_fu_66[32'd6];
assign trunc_ln212_fu_256_p1 = select_ln210_fu_225_p3[1:0];
assign v11_address0 = zext_ln215_1_fu_353_p1;
assign v11_address1 = zext_ln215_fu_340_p1;
assign v11_ce0 = v11_ce0_local;
assign v11_ce1 = v11_ce1_local;
assign v11_d0 = v129_1_reg_451;
assign v11_d1 = v129_reg_446;
assign v11_we0 = v11_we0_local;
assign v11_we1 = v11_we1_local;
assign v128_1_fu_317_p3 = ((icmp_ln213_reg_409[0:0] == 1'b1) ? v8_3_q0 : v8_1_q0);
assign v128_fu_310_p3 = ((icmp_ln213_reg_409[0:0] == 1'b1) ? v8_2_q0 : v8_q0);
assign v20_address0 = zext_ln210_fu_247_p1;
assign v20_ce0 = v20_ce0_local;
assign v8_1_address0 = zext_ln212_1_fu_270_p1;
assign v8_1_ce0 = v8_1_ce0_local;
assign v8_2_address0 = zext_ln212_1_fu_270_p1;
assign v8_2_ce0 = v8_2_ce0_local;
assign v8_3_address0 = zext_ln212_1_fu_270_p1;
assign v8_3_ce0 = v8_3_ce0_local;
assign v8_address0 = zext_ln212_1_fu_270_p1;
assign v8_ce0 = v8_ce0_local;
assign zext_ln210_fu_247_p1 = select_ln210_1_fu_239_p3;
assign zext_ln212_1_fu_270_p1 = lshr_ln_fu_260_p4;
assign zext_ln212_fu_331_p1 = select_ln210_reg_383_pp0_iter9_reg;
assign zext_ln215_1_fu_353_p1 = add_ln215_1_fu_345_p4;
assign zext_ln215_fu_340_p1 = add_ln215_fu_334_p2;
endmodule 