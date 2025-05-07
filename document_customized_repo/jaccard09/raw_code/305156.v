module backprop_backprop_Pipeline_label_6_label_7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v1_0_address0,v1_0_ce0,v1_0_q0,v1_1_address0,v1_1_ce0,v1_1_q0,v20_address0,v20_ce0,v20_q0,v19_address0,v19_ce0,v19_we0,v19_d0,v19_1_address0,v19_1_ce0,v19_1_we0,v19_1_d0,v19_2_address0,v19_2_ce0,v19_2_we0,v19_2_d0,v19_3_address0,v19_3_ce0,v19_3_we0,v19_3_d0,grp_fu_4533_p_din0,grp_fu_4533_p_din1,grp_fu_4533_p_opcode,grp_fu_4533_p_dout0,grp_fu_4533_p_ce,grp_fu_4545_p_din0,grp_fu_4545_p_din1,grp_fu_4545_p_dout0,grp_fu_4545_p_ce); 
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
output  [10:0] v1_0_address0;
output   v1_0_ce0;
input  [63:0] v1_0_q0;
output  [10:0] v1_1_address0;
output   v1_1_ce0;
input  [63:0] v1_1_q0;
output  [5:0] v20_address0;
output   v20_ce0;
input  [63:0] v20_q0;
output  [3:0] v19_address0;
output   v19_ce0;
output   v19_we0;
output  [63:0] v19_d0;
output  [3:0] v19_1_address0;
output   v19_1_ce0;
output   v19_1_we0;
output  [63:0] v19_1_d0;
output  [3:0] v19_2_address0;
output   v19_2_ce0;
output   v19_2_we0;
output  [63:0] v19_2_d0;
output  [3:0] v19_3_address0;
output   v19_3_ce0;
output   v19_3_we0;
output  [63:0] v19_3_d0;
output  [63:0] grp_fu_4533_p_din0;
output  [63:0] grp_fu_4533_p_din1;
output  [0:0] grp_fu_4533_p_opcode;
input  [63:0] grp_fu_4533_p_dout0;
output   grp_fu_4533_p_ce;
output  [63:0] grp_fu_4545_p_din0;
output  [63:0] grp_fu_4545_p_din1;
input  [63:0] grp_fu_4545_p_dout0;
output   grp_fu_4545_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln94_reg_392;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln94_fu_206_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln94_reg_392_pp0_iter1_reg;
wire   [0:0] icmp_ln96_fu_224_p2;
reg   [0:0] icmp_ln96_reg_396;
reg   [0:0] icmp_ln96_reg_396_pp0_iter1_reg;
wire   [1:0] trunc_ln94_fu_252_p1;
reg   [1:0] trunc_ln94_reg_401;
reg   [1:0] trunc_ln94_reg_401_pp0_iter1_reg;
reg   [1:0] trunc_ln94_reg_401_pp0_iter2_reg;
wire   [0:0] trunc_ln96_fu_261_p1;
reg   [0:0] trunc_ln96_reg_405;
wire   [0:0] icmp_ln96_1_fu_299_p2;
reg   [0:0] icmp_ln96_1_reg_425;
reg   [0:0] icmp_ln96_1_reg_425_pp0_iter1_reg;
reg   [0:0] icmp_ln96_1_reg_425_pp0_iter2_reg;
reg   [3:0] lshr_ln2_reg_429;
reg   [3:0] lshr_ln2_reg_429_pp0_iter1_reg;
reg   [3:0] lshr_ln2_reg_429_pp0_iter2_reg;
wire   [63:0] select_ln97_fu_330_p3;
reg   [63:0] select_ln97_reg_434;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] v45_reg_439;
wire   [63:0] v44_fu_337_p1;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] v46_reg_449;
wire   [63:0] select_ln94_1_fu_344_p3;
reg   [63:0] v48_reg_459;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln97_fu_287_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln96_fu_256_p1;
wire   [63:0] zext_ln94_fu_357_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] v47_fu_68;
wire    ap_loop_init;
reg   [6:0] v43_fu_72;
wire   [6:0] add_ln96_fu_293_p2;
reg   [6:0] v42_fu_76;
wire   [6:0] select_ln94_2_fu_244_p3;
reg   [12:0] indvar_flatten_fu_80;
wire   [12:0] add_ln94_fu_212_p2;
reg    v1_0_ce0_local;
reg    v1_1_ce0_local;
reg    v20_ce0_local;
reg    v19_2_we0_local;
reg    v19_2_ce0_local;
reg    v19_1_we0_local;
reg    v19_1_ce0_local;
reg    v19_we0_local;
reg    v19_ce0_local;
reg    v19_3_we0_local;
reg    v19_3_ce0_local;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage3;
wire   [6:0] add_ln94_1_fu_238_p2;
wire   [6:0] select_ln94_fu_230_p3;
wire   [5:0] trunc_ln97_fu_275_p1;
wire   [4:0] lshr_ln1_fu_265_p4;
wire   [10:0] add_ln_fu_279_p3;
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
#0 v47_fu_68 = 64'd0;
#0 v43_fu_72 = 7'd0;
#0 v42_fu_76 = 7'd0;
#0 indvar_flatten_fu_80 = 13'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_80 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln94_fu_206_p2 == 1'd0))) begin
        indvar_flatten_fu_80 <= add_ln94_fu_212_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v42_fu_76 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln94_fu_206_p2 == 1'd0))) begin
        v42_fu_76 <= select_ln94_2_fu_244_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v43_fu_72 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln94_fu_206_p2 == 1'd0))) begin
        v43_fu_72 <= add_ln96_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_fu_68 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_fu_68 <= grp_fu_4533_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln94_reg_392 <= icmp_ln94_fu_206_p2;
        icmp_ln94_reg_392_pp0_iter1_reg <= icmp_ln94_reg_392;
        icmp_ln96_1_reg_425 <= icmp_ln96_1_fu_299_p2;
        icmp_ln96_1_reg_425_pp0_iter1_reg <= icmp_ln96_1_reg_425;
        icmp_ln96_1_reg_425_pp0_iter2_reg <= icmp_ln96_1_reg_425_pp0_iter1_reg;
        icmp_ln96_reg_396 <= icmp_ln96_fu_224_p2;
        icmp_ln96_reg_396_pp0_iter1_reg <= icmp_ln96_reg_396;
        lshr_ln2_reg_429 <= {{select_ln94_2_fu_244_p3[5:2]}};
        lshr_ln2_reg_429_pp0_iter1_reg <= lshr_ln2_reg_429;
        lshr_ln2_reg_429_pp0_iter2_reg <= lshr_ln2_reg_429_pp0_iter1_reg;
        trunc_ln94_reg_401 <= trunc_ln94_fu_252_p1;
        trunc_ln94_reg_401_pp0_iter1_reg <= trunc_ln94_reg_401;
        trunc_ln94_reg_401_pp0_iter2_reg <= trunc_ln94_reg_401_pp0_iter1_reg;
        trunc_ln96_reg_405 <= trunc_ln96_fu_261_p1;
        v46_reg_449 <= grp_fu_4545_p_dout0;
        v48_reg_459 <= grp_fu_4533_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln97_reg_434 <= select_ln97_fu_330_p3;
        v45_reg_439 <= v20_q0;
    end
end
always @ (*) begin
    if (((icmp_ln94_reg_392 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln94_reg_392_pp0_iter1_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln96_1_reg_425_pp0_iter2_reg == 1'd1) & (trunc_ln94_reg_401_pp0_iter2_reg == 2'd1))) begin
        v19_1_we0_local = 1'b1;
    end else begin
        v19_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v19_2_ce0_local = 1'b1;
    end else begin
        v19_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln96_1_reg_425_pp0_iter2_reg == 1'd1) & (trunc_ln94_reg_401_pp0_iter2_reg == 2'd2))) begin
        v19_2_we0_local = 1'b1;
    end else begin
        v19_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v19_3_ce0_local = 1'b1;
    end else begin
        v19_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln96_1_reg_425_pp0_iter2_reg == 1'd1) & (trunc_ln94_reg_401_pp0_iter2_reg == 2'd3))) begin
        v19_3_we0_local = 1'b1;
    end else begin
        v19_3_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln96_1_reg_425_pp0_iter2_reg == 1'd1) & (trunc_ln94_reg_401_pp0_iter2_reg == 2'd0))) begin
        v19_we0_local = 1'b1;
    end else begin
        v19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_0_ce0_local = 1'b1;
    end else begin
        v1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_1_ce0_local = 1'b1;
    end else begin
        v1_1_ce0_local = 1'b0;
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
assign add_ln94_1_fu_238_p2 = (v42_fu_76 + 7'd1);
assign add_ln94_fu_212_p2 = (indvar_flatten_fu_80 + 13'd1);
assign add_ln96_fu_293_p2 = (select_ln94_fu_230_p3 + 7'd1);
assign add_ln_fu_279_p3 = {{trunc_ln97_fu_275_p1}, {lshr_ln1_fu_265_p4}};
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
assign grp_fu_4533_p_ce = 1'b1;
assign grp_fu_4533_p_din0 = select_ln94_1_fu_344_p3;
assign grp_fu_4533_p_din1 = v46_reg_449;
assign grp_fu_4533_p_opcode = 2'd0;
assign grp_fu_4545_p_ce = 1'b1;
assign grp_fu_4545_p_din0 = v44_fu_337_p1;
assign grp_fu_4545_p_din1 = v45_reg_439;
assign icmp_ln94_fu_206_p2 = ((indvar_flatten_fu_80 == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln96_1_fu_299_p2 = ((add_ln96_fu_293_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln96_fu_224_p2 = ((v43_fu_72 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_265_p4 = {{select_ln94_fu_230_p3[5:1]}};
assign select_ln94_1_fu_344_p3 = ((icmp_ln96_reg_396_pp0_iter1_reg[0:0] == 1'b1) ? 64'd0 : v47_fu_68);
assign select_ln94_2_fu_244_p3 = ((icmp_ln96_fu_224_p2[0:0] == 1'b1) ? add_ln94_1_fu_238_p2 : v42_fu_76);
assign select_ln94_fu_230_p3 = ((icmp_ln96_fu_224_p2[0:0] == 1'b1) ? 7'd0 : v43_fu_72);
assign select_ln97_fu_330_p3 = ((trunc_ln96_reg_405[0:0] == 1'b1) ? v1_1_q0 : v1_0_q0);
assign trunc_ln94_fu_252_p1 = select_ln94_2_fu_244_p3[1:0];
assign trunc_ln96_fu_261_p1 = select_ln94_fu_230_p3[0:0];
assign trunc_ln97_fu_275_p1 = select_ln94_2_fu_244_p3[5:0];
assign v19_1_address0 = zext_ln94_fu_357_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_1_d0 = v48_reg_459;
assign v19_1_we0 = v19_1_we0_local;
assign v19_2_address0 = zext_ln94_fu_357_p1;
assign v19_2_ce0 = v19_2_ce0_local;
assign v19_2_d0 = v48_reg_459;
assign v19_2_we0 = v19_2_we0_local;
assign v19_3_address0 = zext_ln94_fu_357_p1;
assign v19_3_ce0 = v19_3_ce0_local;
assign v19_3_d0 = v48_reg_459;
assign v19_3_we0 = v19_3_we0_local;
assign v19_address0 = zext_ln94_fu_357_p1;
assign v19_ce0 = v19_ce0_local;
assign v19_d0 = v48_reg_459;
assign v19_we0 = v19_we0_local;
assign v1_0_address0 = zext_ln97_fu_287_p1;
assign v1_0_ce0 = v1_0_ce0_local;
assign v1_1_address0 = zext_ln97_fu_287_p1;
assign v1_1_ce0 = v1_1_ce0_local;
assign v20_address0 = zext_ln96_fu_256_p1;
assign v20_ce0 = v20_ce0_local;
assign v44_fu_337_p1 = select_ln97_reg_434;
assign zext_ln94_fu_357_p1 = lshr_ln2_reg_429_pp0_iter2_reg;
assign zext_ln96_fu_256_p1 = select_ln94_fu_230_p3;
assign zext_ln97_fu_287_p1 = add_ln_fu_279_p3;
endmodule 