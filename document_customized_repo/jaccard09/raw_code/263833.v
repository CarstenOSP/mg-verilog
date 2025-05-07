module backprop_backprop_Pipeline_label_6_label_7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v1_address0,v1_ce0,v1_q0,v20_address0,v20_ce0,v20_q0,v20_1_address0,v20_1_ce0,v20_1_q0,v19_address0,v19_ce0,v19_we0,v19_d0,v19_1_address0,v19_1_ce0,v19_1_we0,v19_1_d0,grp_fu_6339_p_din0,grp_fu_6339_p_din1,grp_fu_6339_p_opcode,grp_fu_6339_p_dout0,grp_fu_6339_p_ce,grp_fu_6347_p_din0,grp_fu_6347_p_din1,grp_fu_6347_p_dout0,grp_fu_6347_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v1_address0;
output   v1_ce0;
input  [63:0] v1_q0;
output  [4:0] v20_address0;
output   v20_ce0;
input  [63:0] v20_q0;
output  [4:0] v20_1_address0;
output   v20_1_ce0;
input  [63:0] v20_1_q0;
output  [4:0] v19_address0;
output   v19_ce0;
output   v19_we0;
output  [63:0] v19_d0;
output  [4:0] v19_1_address0;
output   v19_1_ce0;
output   v19_1_we0;
output  [63:0] v19_1_d0;
output  [63:0] grp_fu_6339_p_din0;
output  [63:0] grp_fu_6339_p_din1;
output  [0:0] grp_fu_6339_p_opcode;
input  [63:0] grp_fu_6339_p_dout0;
output   grp_fu_6339_p_ce;
output  [63:0] grp_fu_6347_p_din0;
output  [63:0] grp_fu_6347_p_din1;
input  [63:0] grp_fu_6347_p_dout0;
output   grp_fu_6347_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln94_reg_359;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln94_fu_168_p2;
reg   [0:0] icmp_ln94_reg_359_pp0_iter1_reg;
reg   [6:0] v43_load_reg_363;
wire   [0:0] icmp_ln96_fu_186_p2;
reg   [0:0] icmp_ln96_reg_368;
reg   [0:0] icmp_ln96_reg_368_pp0_iter1_reg;
wire   [0:0] trunc_ln94_fu_206_p1;
reg   [0:0] trunc_ln94_reg_374;
reg   [0:0] trunc_ln94_reg_374_pp0_iter1_reg;
reg   [0:0] trunc_ln94_reg_374_pp0_iter2_reg;
wire   [5:0] empty_fu_210_p1;
reg   [5:0] empty_reg_378;
reg   [4:0] lshr_ln5_reg_383;
reg   [4:0] lshr_ln5_reg_383_pp0_iter1_reg;
reg   [4:0] lshr_ln5_reg_383_pp0_iter2_reg;
wire   [0:0] trunc_ln96_fu_251_p1;
reg   [0:0] trunc_ln96_reg_388;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln96_1_fu_288_p2;
reg   [0:0] icmp_ln96_1_reg_408;
reg   [0:0] icmp_ln96_1_reg_408_pp0_iter1_reg;
reg   [0:0] icmp_ln96_1_reg_408_pp0_iter2_reg;
reg   [63:0] v1_load_reg_412;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] v45_fu_299_p3;
reg   [63:0] v45_reg_417;
wire   [63:0] v44_fu_306_p1;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] v46_reg_427;
wire   [63:0] select_ln94_1_fu_313_p3;
reg   [63:0] v48_reg_437;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln97_fu_277_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln96_1_fu_265_p1;
wire   [63:0] zext_ln94_fu_326_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] v47_fu_56;
wire    ap_loop_init;
reg   [6:0] v43_fu_60;
wire   [6:0] add_ln96_fu_282_p2;
reg   [6:0] ap_sig_allocacmp_v43_load;
wire    ap_block_pp0_stage0;
reg   [6:0] v42_fu_64;
wire   [6:0] select_ln94_2_fu_198_p3;
reg   [6:0] ap_sig_allocacmp_v42_load;
reg   [12:0] indvar_flatten_fu_68;
wire   [12:0] add_ln94_fu_174_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v1_ce0_local;
reg    v20_ce0_local;
reg    v20_1_ce0_local;
reg    v19_we0_local;
reg    v19_ce0_local;
reg    v19_1_we0_local;
reg    v19_1_ce0_local;
wire    ap_block_pp0_stage3;
wire   [6:0] add_ln94_1_fu_192_p2;
wire   [6:0] select_ln94_fu_234_p3;
wire   [4:0] lshr_ln4_fu_255_p4;
wire   [11:0] zext_ln96_fu_247_p1;
wire   [11:0] tmp_1_fu_240_p3;
wire   [11:0] add_ln97_fu_271_p2;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage7_11001;
reg    ap_condition_exit_pp0_iter1_stage2;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v47_fu_56 = 64'd0;
#0 v43_fu_60 = 7'd0;
#0 v42_fu_64 = 7'd0;
#0 indvar_flatten_fu_68 = 13'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln94_fu_168_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_68 <= add_ln94_fu_174_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_68 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln94_fu_168_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v42_fu_64 <= select_ln94_2_fu_198_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v42_fu_64 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v43_fu_60 <= 7'd0;
    end else if (((icmp_ln94_reg_359 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v43_fu_60 <= add_ln96_fu_282_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_fu_56 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_fu_56 <= grp_fu_6339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_378 <= empty_fu_210_p1;
        icmp_ln94_reg_359 <= icmp_ln94_fu_168_p2;
        icmp_ln94_reg_359_pp0_iter1_reg <= icmp_ln94_reg_359;
        icmp_ln96_reg_368 <= icmp_ln96_fu_186_p2;
        icmp_ln96_reg_368_pp0_iter1_reg <= icmp_ln96_reg_368;
        lshr_ln5_reg_383 <= {{select_ln94_2_fu_198_p3[5:1]}};
        lshr_ln5_reg_383_pp0_iter1_reg <= lshr_ln5_reg_383;
        lshr_ln5_reg_383_pp0_iter2_reg <= lshr_ln5_reg_383_pp0_iter1_reg;
        trunc_ln94_reg_374 <= trunc_ln94_fu_206_p1;
        trunc_ln94_reg_374_pp0_iter1_reg <= trunc_ln94_reg_374;
        trunc_ln94_reg_374_pp0_iter2_reg <= trunc_ln94_reg_374_pp0_iter1_reg;
        v43_load_reg_363 <= ap_sig_allocacmp_v43_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln96_1_reg_408 <= icmp_ln96_1_fu_288_p2;
        icmp_ln96_1_reg_408_pp0_iter1_reg <= icmp_ln96_1_reg_408;
        icmp_ln96_1_reg_408_pp0_iter2_reg <= icmp_ln96_1_reg_408_pp0_iter1_reg;
        trunc_ln96_reg_388 <= trunc_ln96_fu_251_p1;
        v46_reg_427 <= grp_fu_6347_p_dout0;
        v48_reg_437 <= grp_fu_6339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v1_load_reg_412 <= v1_q0;
        v45_reg_417 <= v45_fu_299_p3;
    end
end
always @ (*) begin
    if (((icmp_ln94_reg_359 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln94_reg_359_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v42_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v42_load = v42_fu_64;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v43_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v43_load = v43_fu_60;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln96_1_reg_408_pp0_iter2_reg == 1'd1) & (trunc_ln94_reg_374_pp0_iter2_reg == 1'd1))) begin
        v19_1_we0_local = 1'b1;
    end else begin
        v19_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln96_1_reg_408_pp0_iter2_reg == 1'd1) & (trunc_ln94_reg_374_pp0_iter2_reg == 1'd0))) begin
        v19_we0_local = 1'b1;
    end else begin
        v19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_ce0_local = 1'b1;
    end else begin
        v1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_1_ce0_local = 1'b1;
    end else begin
        v20_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln94_1_fu_192_p2 = (ap_sig_allocacmp_v42_load + 7'd1);
assign add_ln94_fu_174_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln96_fu_282_p2 = (select_ln94_fu_234_p3 + 7'd1);
assign add_ln97_fu_271_p2 = (zext_ln96_fu_247_p1 + tmp_1_fu_240_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign empty_fu_210_p1 = select_ln94_2_fu_198_p3[5:0];
assign grp_fu_6339_p_ce = 1'b1;
assign grp_fu_6339_p_din0 = select_ln94_1_fu_313_p3;
assign grp_fu_6339_p_din1 = v46_reg_427;
assign grp_fu_6339_p_opcode = 2'd0;
assign grp_fu_6347_p_ce = 1'b1;
assign grp_fu_6347_p_din0 = v44_fu_306_p1;
assign grp_fu_6347_p_din1 = v45_reg_417;
assign icmp_ln94_fu_168_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln96_1_fu_288_p2 = ((add_ln96_fu_282_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln96_fu_186_p2 = ((ap_sig_allocacmp_v43_load == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln4_fu_255_p4 = {{select_ln94_fu_234_p3[5:1]}};
assign select_ln94_1_fu_313_p3 = ((icmp_ln96_reg_368_pp0_iter1_reg[0:0] == 1'b1) ? 64'd0 : v47_fu_56);
assign select_ln94_2_fu_198_p3 = ((icmp_ln96_fu_186_p2[0:0] == 1'b1) ? add_ln94_1_fu_192_p2 : ap_sig_allocacmp_v42_load);
assign select_ln94_fu_234_p3 = ((icmp_ln96_reg_368[0:0] == 1'b1) ? 7'd0 : v43_load_reg_363);
assign tmp_1_fu_240_p3 = {{empty_reg_378}, {6'd0}};
assign trunc_ln94_fu_206_p1 = select_ln94_2_fu_198_p3[0:0];
assign trunc_ln96_fu_251_p1 = select_ln94_fu_234_p3[0:0];
assign v19_1_address0 = zext_ln94_fu_326_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_1_d0 = v48_reg_437;
assign v19_1_we0 = v19_1_we0_local;
assign v19_address0 = zext_ln94_fu_326_p1;
assign v19_ce0 = v19_ce0_local;
assign v19_d0 = v48_reg_437;
assign v19_we0 = v19_we0_local;
assign v1_address0 = zext_ln97_fu_277_p1;
assign v1_ce0 = v1_ce0_local;
assign v20_1_address0 = zext_ln96_1_fu_265_p1;
assign v20_1_ce0 = v20_1_ce0_local;
assign v20_address0 = zext_ln96_1_fu_265_p1;
assign v20_ce0 = v20_ce0_local;
assign v44_fu_306_p1 = v1_load_reg_412;
assign v45_fu_299_p3 = ((trunc_ln96_reg_388[0:0] == 1'b1) ? v20_1_q0 : v20_q0);
assign zext_ln94_fu_326_p1 = lshr_ln5_reg_383_pp0_iter2_reg;
assign zext_ln96_1_fu_265_p1 = lshr_ln4_fu_255_p4;
assign zext_ln96_fu_247_p1 = select_ln94_fu_234_p3;
assign zext_ln97_fu_277_p1 = add_ln97_fu_271_p2;
endmodule 