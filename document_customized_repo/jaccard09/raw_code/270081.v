module backprop_backprop_Pipeline_label_33_label_34 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v1_1_address0,v1_1_ce0,v1_1_we0,v1_1_d0,v1_1_q0,v1_0_address0,v1_0_ce0,v1_0_we0,v1_0_d0,v1_0_q0,v11_address0,v11_ce0,v11_q0,v183_out,v183_out_ap_vld,grp_fu_28788_p_din0,grp_fu_28788_p_din1,grp_fu_28788_p_opcode,grp_fu_28788_p_dout0,grp_fu_28788_p_ce,grp_fu_28804_p_din0,grp_fu_28804_p_din1,grp_fu_28804_p_dout0,grp_fu_28804_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] v1_1_address0;
output   v1_1_ce0;
output   v1_1_we0;
output  [63:0] v1_1_d0;
input  [63:0] v1_1_q0;
output  [10:0] v1_0_address0;
output   v1_0_ce0;
output   v1_0_we0;
output  [63:0] v1_0_d0;
input  [63:0] v1_0_q0;
output  [11:0] v11_address0;
output   v11_ce0;
input  [63:0] v11_q0;
output  [63:0] v183_out;
output   v183_out_ap_vld;
output  [63:0] grp_fu_28788_p_din0;
output  [63:0] grp_fu_28788_p_din1;
output  [1:0] grp_fu_28788_p_opcode;
input  [63:0] grp_fu_28788_p_dout0;
output   grp_fu_28788_p_ce;
output  [63:0] grp_fu_28804_p_din0;
output  [63:0] grp_fu_28804_p_din1;
input  [63:0] grp_fu_28804_p_dout0;
output   grp_fu_28804_p_ce;
reg ap_idle;
reg v183_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln292_reg_329;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln292_fu_154_p2;
reg   [0:0] icmp_ln292_reg_329_pp0_iter1_reg;
reg   [0:0] icmp_ln292_reg_329_pp0_iter2_reg;
reg   [0:0] icmp_ln292_reg_329_pp0_iter3_reg;
reg   [6:0] v182_load_reg_333;
wire   [0:0] icmp_ln296_fu_172_p2;
reg   [0:0] icmp_ln296_reg_338;
wire   [5:0] empty_fu_192_p1;
reg   [5:0] empty_reg_343;
reg   [5:0] empty_reg_343_pp0_iter1_reg;
wire   [0:0] trunc_ln296_fu_223_p1;
reg   [0:0] trunc_ln296_reg_349;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] trunc_ln296_reg_349_pp0_iter1_reg;
reg   [0:0] trunc_ln296_reg_349_pp0_iter2_reg;
reg   [4:0] lshr_ln_reg_354;
reg   [63:0] v184_reg_364;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [10:0] v1_0_addr_reg_369;
reg   [10:0] v1_0_addr_reg_369_pp0_iter2_reg;
reg   [10:0] v1_1_addr_reg_374;
reg   [10:0] v1_1_addr_reg_374_pp0_iter2_reg;
reg   [63:0] v185_reg_379;
wire   [63:0] select_ln300_fu_271_p3;
reg   [63:0] select_ln300_reg_384;
wire   [63:0] v186_fu_278_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] v187_reg_394;
reg   [63:0] v188_reg_401;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln298_fu_233_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln298_1_fu_265_p1;
reg   [63:0] v181_fu_60;
reg   [63:0] ap_sig_allocacmp_v181_load_1;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage4;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v182_fu_64;
wire   [6:0] add_ln296_fu_248_p2;
reg   [6:0] ap_sig_allocacmp_v182_load;
wire    ap_block_pp0_stage0;
reg   [6:0] v179_fu_68;
wire   [6:0] select_ln292_fu_184_p3;
reg   [6:0] ap_sig_allocacmp_v179_load;
reg   [12:0] indvar_flatten26_fu_72;
wire   [12:0] add_ln292_fu_160_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten26_load;
wire    ap_block_pp0_stage4_01001;
reg    v11_ce0_local;
reg    v1_0_ce0_local;
reg   [10:0] v1_0_address0_local;
reg    v1_0_we0_local;
wire   [63:0] bitcast_ln302_fu_282_p1;
reg    v1_1_ce0_local;
reg   [10:0] v1_1_address0_local;
reg    v1_1_we0_local;
reg   [63:0] grp_fu_122_p0;
reg   [63:0] grp_fu_122_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_126_p0;
reg   [63:0] grp_fu_126_p1;
wire   [6:0] add_ln292_1_fu_178_p2;
wire   [6:0] select_ln293_fu_206_p3;
wire   [11:0] zext_ln296_fu_219_p1;
wire   [11:0] tmp_s_fu_212_p3;
wire   [11:0] add_ln298_fu_227_p2;
wire   [10:0] add_ln298_1_fu_259_p3;
wire    ap_block_pp0_stage2;
reg   [1:0] grp_fu_122_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v181_fu_60 = 64'd0;
#0 v182_fu_64 = 7'd0;
#0 v179_fu_68 = 7'd0;
#0 indvar_flatten26_fu_72 = 13'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln292_fu_154_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten26_fu_72 <= add_ln292_fu_160_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten26_fu_72 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln292_fu_154_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v179_fu_68 <= select_ln292_fu_184_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v179_fu_68 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v181_fu_60 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v181_fu_60 <= grp_fu_28788_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v182_fu_64 <= 7'd0;
    end else if (((icmp_ln292_reg_329 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v182_fu_64 <= add_ln296_fu_248_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_343 <= empty_fu_192_p1;
        empty_reg_343_pp0_iter1_reg <= empty_reg_343;
        icmp_ln292_reg_329 <= icmp_ln292_fu_154_p2;
        icmp_ln292_reg_329_pp0_iter1_reg <= icmp_ln292_reg_329;
        icmp_ln292_reg_329_pp0_iter2_reg <= icmp_ln292_reg_329_pp0_iter1_reg;
        icmp_ln292_reg_329_pp0_iter3_reg <= icmp_ln292_reg_329_pp0_iter2_reg;
        icmp_ln296_reg_338 <= icmp_ln296_fu_172_p2;
        v182_load_reg_333 <= ap_sig_allocacmp_v182_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln_reg_354 <= {{select_ln293_fu_206_p3[5:1]}};
        trunc_ln296_reg_349 <= trunc_ln296_fu_223_p1;
        trunc_ln296_reg_349_pp0_iter1_reg <= trunc_ln296_reg_349;
        trunc_ln296_reg_349_pp0_iter2_reg <= trunc_ln296_reg_349_pp0_iter1_reg;
        v1_0_addr_reg_369 <= zext_ln298_1_fu_265_p1;
        v1_0_addr_reg_369_pp0_iter2_reg <= v1_0_addr_reg_369;
        v1_1_addr_reg_374 <= zext_ln298_1_fu_265_p1;
        v1_1_addr_reg_374_pp0_iter2_reg <= v1_1_addr_reg_374;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln300_reg_384 <= select_ln300_fu_271_p3;
        v184_reg_364 <= v11_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v185_reg_379 <= grp_fu_28804_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v187_reg_394 <= grp_fu_28788_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v188_reg_401 <= grp_fu_28804_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln292_reg_329 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln292_reg_329_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten26_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten26_load = indvar_flatten26_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v179_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v179_load = v179_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_sig_allocacmp_v181_load_1 = grp_fu_28788_p_dout0;
    end else begin
        ap_sig_allocacmp_v181_load_1 = v181_fu_60;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v182_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v182_load = v182_fu_64;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_122_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_122_opcode = 2'd0;
    end else begin
        grp_fu_122_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_122_p0 = ap_sig_allocacmp_v181_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_122_p0 = v186_fu_278_p1;
    end else begin
        grp_fu_122_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_122_p1 = v188_reg_401;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_122_p1 = v185_reg_379;
    end else begin
        grp_fu_122_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_126_p0 = v187_reg_394;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_126_p0 = v184_reg_364;
    end else begin
        grp_fu_126_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_126_p1 = v187_reg_394;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_126_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_126_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v11_ce0_local = 1'b1;
    end else begin
        v11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln292_reg_329_pp0_iter3_reg == 1'd1))) begin
        v183_out_ap_vld = 1'b1;
    end else begin
        v183_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v1_0_address0_local = v1_0_addr_reg_369_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_0_address0_local = zext_ln298_1_fu_265_p1;
    end else begin
        v1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v1_0_ce0_local = 1'b1;
    end else begin
        v1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln296_reg_349_pp0_iter2_reg == 1'd0))) begin
        v1_0_we0_local = 1'b1;
    end else begin
        v1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v1_1_address0_local = v1_1_addr_reg_374_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_1_address0_local = zext_ln298_1_fu_265_p1;
    end else begin
        v1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v1_1_ce0_local = 1'b1;
    end else begin
        v1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln296_reg_349_pp0_iter2_reg == 1'd1))) begin
        v1_1_we0_local = 1'b1;
    end else begin
        v1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln292_1_fu_178_p2 = (ap_sig_allocacmp_v179_load + 7'd1);
assign add_ln292_fu_160_p2 = (ap_sig_allocacmp_indvar_flatten26_load + 13'd1);
assign add_ln296_fu_248_p2 = (select_ln293_fu_206_p3 + 7'd1);
assign add_ln298_1_fu_259_p3 = {{empty_reg_343_pp0_iter1_reg}, {lshr_ln_reg_354}};
assign add_ln298_fu_227_p2 = (zext_ln296_fu_219_p1 + tmp_s_fu_212_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln302_fu_282_p1 = v187_reg_394;
assign empty_fu_192_p1 = select_ln292_fu_184_p3[5:0];
assign grp_fu_28788_p_ce = 1'b1;
assign grp_fu_28788_p_din0 = grp_fu_122_p0;
assign grp_fu_28788_p_din1 = grp_fu_122_p1;
assign grp_fu_28788_p_opcode = grp_fu_122_opcode;
assign grp_fu_28804_p_ce = 1'b1;
assign grp_fu_28804_p_din0 = grp_fu_126_p0;
assign grp_fu_28804_p_din1 = grp_fu_126_p1;
assign icmp_ln292_fu_154_p2 = ((ap_sig_allocacmp_indvar_flatten26_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln296_fu_172_p2 = ((ap_sig_allocacmp_v182_load == 7'd64) ? 1'b1 : 1'b0);
assign select_ln292_fu_184_p3 = ((icmp_ln296_fu_172_p2[0:0] == 1'b1) ? add_ln292_1_fu_178_p2 : ap_sig_allocacmp_v179_load);
assign select_ln293_fu_206_p3 = ((icmp_ln296_reg_338[0:0] == 1'b1) ? 7'd0 : v182_load_reg_333);
assign select_ln300_fu_271_p3 = ((trunc_ln296_reg_349_pp0_iter1_reg[0:0] == 1'b1) ? v1_1_q0 : v1_0_q0);
assign tmp_s_fu_212_p3 = {{empty_reg_343}, {6'd0}};
assign trunc_ln296_fu_223_p1 = select_ln293_fu_206_p3[0:0];
assign v11_address0 = zext_ln298_fu_233_p1;
assign v11_ce0 = v11_ce0_local;
assign v183_out = v181_fu_60;
assign v186_fu_278_p1 = select_ln300_reg_384;
assign v1_0_address0 = v1_0_address0_local;
assign v1_0_ce0 = v1_0_ce0_local;
assign v1_0_d0 = bitcast_ln302_fu_282_p1;
assign v1_0_we0 = v1_0_we0_local;
assign v1_1_address0 = v1_1_address0_local;
assign v1_1_ce0 = v1_1_ce0_local;
assign v1_1_d0 = bitcast_ln302_fu_282_p1;
assign v1_1_we0 = v1_1_we0_local;
assign zext_ln296_fu_219_p1 = select_ln293_fu_206_p3;
assign zext_ln298_1_fu_265_p1 = add_ln298_1_fu_259_p3;
assign zext_ln298_fu_233_p1 = add_ln298_fu_227_p2;
endmodule 