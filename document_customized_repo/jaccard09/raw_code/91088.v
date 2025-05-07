module gesummv_gesummv_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,beta,buff_x_address0,buff_x_ce0,buff_x_q0,buff_x_1_address0,buff_x_1_ce0,buff_x_1_q0,tmp2_address0,tmp2_ce0,tmp2_we0,tmp2_d0,tmp2_q0,tmp2_1_address0,tmp2_1_ce0,tmp2_1_we0,tmp2_1_d0,tmp2_1_q0,grp_fu_416_p_din0,grp_fu_416_p_din1,grp_fu_416_p_opcode,grp_fu_416_p_dout0,grp_fu_416_p_ce,grp_fu_420_p_din0,grp_fu_420_p_din1,grp_fu_420_p_dout0,grp_fu_420_p_ce); 
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
output  [10:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [10:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
input  [31:0] beta;
output  [4:0] buff_x_address0;
output   buff_x_ce0;
input  [31:0] buff_x_q0;
output  [4:0] buff_x_1_address0;
output   buff_x_1_ce0;
input  [31:0] buff_x_1_q0;
output  [4:0] tmp2_address0;
output   tmp2_ce0;
output   tmp2_we0;
output  [31:0] tmp2_d0;
input  [31:0] tmp2_q0;
output  [4:0] tmp2_1_address0;
output   tmp2_1_ce0;
output   tmp2_1_we0;
output  [31:0] tmp2_1_d0;
input  [31:0] tmp2_1_q0;
output  [31:0] grp_fu_416_p_din0;
output  [31:0] grp_fu_416_p_din1;
output  [1:0] grp_fu_416_p_opcode;
input  [31:0] grp_fu_416_p_dout0;
output   grp_fu_416_p_ce;
output  [31:0] grp_fu_420_p_din0;
output  [31:0] grp_fu_420_p_din1;
input  [31:0] grp_fu_420_p_dout0;
output   grp_fu_420_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln31_reg_383;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln31_fu_180_p2;
reg   [0:0] icmp_ln31_reg_383_pp0_iter1_reg;
wire   [0:0] first_iter_1_fu_235_p2;
reg   [0:0] first_iter_1_reg_387;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] first_iter_1_reg_387_pp0_iter1_reg;
wire   [0:0] trunc_ln31_fu_241_p1;
reg   [0:0] trunc_ln31_reg_391;
reg   [0:0] trunc_ln31_reg_391_pp0_iter1_reg;
reg   [0:0] trunc_ln31_reg_391_pp0_iter2_reg;
reg   [4:0] lshr_ln6_2_reg_396;
wire   [0:0] trunc_ln32_fu_255_p1;
reg   [0:0] trunc_ln32_reg_401;
wire   [0:0] icmp_ln32_1_fu_295_p2;
reg   [0:0] icmp_ln32_1_reg_427;
reg   [0:0] icmp_ln32_1_reg_427_pp0_iter1_reg;
reg   [0:0] icmp_ln32_1_reg_427_pp0_iter2_reg;
wire   [31:0] select_ln33_1_fu_311_p3;
reg   [31:0] select_ln33_1_reg_431;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] select_ln33_2_fu_318_p3;
reg   [31:0] select_ln33_2_reg_436;
reg   [31:0] mul2_reg_441;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [4:0] tmp2_addr_reg_446;
reg   [4:0] tmp2_addr_reg_446_pp0_iter2_reg;
reg   [4:0] tmp2_1_addr_reg_451;
reg   [4:0] tmp2_1_addr_reg_451_pp0_iter2_reg;
reg   [31:0] mul3_reg_456;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] add2_reg_466;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln33_fu_283_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln6_1_fu_269_p1;
wire   [63:0] zext_ln6_fu_325_p1;
reg   [6:0] j_fu_54;
wire   [6:0] add_ln32_fu_289_p2;
wire    ap_loop_init;
reg   [6:0] i_2_fu_58;
wire   [6:0] select_ln31_fu_223_p3;
reg   [12:0] indvar_flatten8_fu_62;
wire   [12:0] add_ln31_1_fu_186_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten8_load;
wire    ap_block_pp0_stage0;
reg   [31:0] add6815_fu_66;
wire   [31:0] select_ln33_fu_330_p3;
wire    ap_block_pp0_stage3;
reg    buff_B_ce0_local;
reg    buff_B_1_ce0_local;
reg    buff_x_ce0_local;
reg    buff_x_1_ce0_local;
reg    tmp2_ce0_local;
reg   [4:0] tmp2_address0_local;
reg    tmp2_we0_local;
wire    ap_block_pp0_stage2;
reg    tmp2_1_ce0_local;
reg   [4:0] tmp2_1_address0_local;
reg    tmp2_1_we0_local;
reg   [31:0] grp_fu_158_p0;
reg   [31:0] grp_fu_158_p1;
wire    ap_block_pp0_stage7;
wire   [0:0] icmp_ln32_fu_209_p2;
wire   [6:0] add_ln31_fu_203_p2;
wire   [6:0] select_ln6_fu_215_p3;
wire   [4:0] lshr_ln6_6_fu_259_p4;
wire   [5:0] empty_fu_231_p1;
wire   [10:0] tmp_3_fu_275_p3;
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
wire    ap_block_pp0_stage3_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_54 = 7'd0;
#0 i_2_fu_58 = 7'd0;
#0 indvar_flatten8_fu_62 = 13'd0;
#0 add6815_fu_66 = 32'd0;
#0 ap_done_reg = 1'b0;
end
gesummv_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        if (((ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_1_reg_387_pp0_iter1_reg == 1'd1))) begin
            add6815_fu_66 <= select_ln33_fu_330_p3;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            add6815_fu_66 <= add2_reg_466;
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
        i_2_fu_58 <= 7'd0;
    end else if (((icmp_ln31_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_58 <= select_ln31_fu_223_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln31_fu_180_p2 == 1'd0))) begin
            indvar_flatten8_fu_62 <= add_ln31_1_fu_186_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten8_fu_62 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_54 <= 7'd0;
    end else if (((icmp_ln31_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_54 <= add_ln32_fu_289_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add2_reg_466 <= grp_fu_416_p_dout0;
        first_iter_1_reg_387 <= first_iter_1_fu_235_p2;
        first_iter_1_reg_387_pp0_iter1_reg <= first_iter_1_reg_387;
        icmp_ln32_1_reg_427 <= icmp_ln32_1_fu_295_p2;
        icmp_ln32_1_reg_427_pp0_iter1_reg <= icmp_ln32_1_reg_427;
        icmp_ln32_1_reg_427_pp0_iter2_reg <= icmp_ln32_1_reg_427_pp0_iter1_reg;
        lshr_ln6_2_reg_396 <= {{select_ln31_fu_223_p3[5:1]}};
        tmp2_1_addr_reg_451 <= zext_ln6_fu_325_p1;
        tmp2_1_addr_reg_451_pp0_iter2_reg <= tmp2_1_addr_reg_451;
        tmp2_addr_reg_446 <= zext_ln6_fu_325_p1;
        tmp2_addr_reg_446_pp0_iter2_reg <= tmp2_addr_reg_446;
        trunc_ln31_reg_391 <= trunc_ln31_fu_241_p1;
        trunc_ln31_reg_391_pp0_iter1_reg <= trunc_ln31_reg_391;
        trunc_ln31_reg_391_pp0_iter2_reg <= trunc_ln31_reg_391_pp0_iter1_reg;
        trunc_ln32_reg_401 <= trunc_ln32_fu_255_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln31_reg_383 <= icmp_ln31_fu_180_p2;
        icmp_ln31_reg_383_pp0_iter1_reg <= icmp_ln31_reg_383;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul2_reg_441 <= grp_fu_420_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul3_reg_456 <= grp_fu_420_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln33_1_reg_431 <= select_ln33_1_fu_311_p3;
        select_ln33_2_reg_436 <= select_ln33_2_fu_318_p3;
    end
end
always @ (*) begin
    if (((icmp_ln31_reg_383 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln31_reg_383_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten8_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten8_load = indvar_flatten8_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_x_1_ce0_local = 1'b1;
    end else begin
        buff_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_x_ce0_local = 1'b1;
    end else begin
        buff_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_158_p0 = mul2_reg_441;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_158_p0 = select_ln33_1_reg_431;
        end else begin
            grp_fu_158_p0 = 'bx;
        end
    end else begin
        grp_fu_158_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_158_p1 = select_ln33_2_reg_436;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_158_p1 = beta;
        end else begin
            grp_fu_158_p1 = 'bx;
        end
    end else begin
        grp_fu_158_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp2_1_address0_local = tmp2_1_addr_reg_451_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp2_1_address0_local = zext_ln6_fu_325_p1;
    end else begin
        tmp2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln32_1_reg_427_pp0_iter2_reg == 1'd1) & (trunc_ln31_reg_391_pp0_iter2_reg == 1'd1))) begin
        tmp2_1_we0_local = 1'b1;
    end else begin
        tmp2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp2_address0_local = tmp2_addr_reg_446_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp2_address0_local = zext_ln6_fu_325_p1;
    end else begin
        tmp2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln32_1_reg_427_pp0_iter2_reg == 1'd1) & (trunc_ln31_reg_391_pp0_iter2_reg == 1'd0))) begin
        tmp2_we0_local = 1'b1;
    end else begin
        tmp2_we0_local = 1'b0;
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
assign add_ln31_1_fu_186_p2 = (ap_sig_allocacmp_indvar_flatten8_load + 13'd1);
assign add_ln31_fu_203_p2 = (i_2_fu_58 + 7'd1);
assign add_ln32_fu_289_p2 = (select_ln6_fu_215_p3 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign buff_B_1_address0 = zext_ln33_fu_283_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_address0 = zext_ln33_fu_283_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_x_1_address0 = zext_ln6_1_fu_269_p1;
assign buff_x_1_ce0 = buff_x_1_ce0_local;
assign buff_x_address0 = zext_ln6_1_fu_269_p1;
assign buff_x_ce0 = buff_x_ce0_local;
assign empty_fu_231_p1 = select_ln31_fu_223_p3[5:0];
assign first_iter_1_fu_235_p2 = ((select_ln6_fu_215_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_416_p_ce = 1'b1;
assign grp_fu_416_p_din0 = add6815_fu_66;
assign grp_fu_416_p_din1 = mul3_reg_456;
assign grp_fu_416_p_opcode = 2'd0;
assign grp_fu_420_p_ce = 1'b1;
assign grp_fu_420_p_din0 = grp_fu_158_p0;
assign grp_fu_420_p_din1 = grp_fu_158_p1;
assign icmp_ln31_fu_180_p2 = ((ap_sig_allocacmp_indvar_flatten8_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln32_1_fu_295_p2 = ((add_ln32_fu_289_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_209_p2 = ((j_fu_54 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln6_6_fu_259_p4 = {{select_ln6_fu_215_p3[5:1]}};
assign select_ln31_fu_223_p3 = ((icmp_ln32_fu_209_p2[0:0] == 1'b1) ? add_ln31_fu_203_p2 : i_2_fu_58);
assign select_ln33_1_fu_311_p3 = ((trunc_ln32_reg_401[0:0] == 1'b1) ? buff_B_1_q0 : buff_B_q0);
assign select_ln33_2_fu_318_p3 = ((trunc_ln32_reg_401[0:0] == 1'b1) ? buff_x_1_q0 : buff_x_q0);
assign select_ln33_fu_330_p3 = ((trunc_ln31_reg_391_pp0_iter1_reg[0:0] == 1'b1) ? tmp2_1_q0 : tmp2_q0);
assign select_ln6_fu_215_p3 = ((icmp_ln32_fu_209_p2[0:0] == 1'b1) ? 7'd0 : j_fu_54);
assign tmp2_1_address0 = tmp2_1_address0_local;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_1_d0 = add2_reg_466;
assign tmp2_1_we0 = tmp2_1_we0_local;
assign tmp2_address0 = tmp2_address0_local;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp2_d0 = add2_reg_466;
assign tmp2_we0 = tmp2_we0_local;
assign tmp_3_fu_275_p3 = {{empty_fu_231_p1}, {lshr_ln6_6_fu_259_p4}};
assign trunc_ln31_fu_241_p1 = select_ln31_fu_223_p3[0:0];
assign trunc_ln32_fu_255_p1 = select_ln6_fu_215_p3[0:0];
assign zext_ln33_fu_283_p1 = tmp_3_fu_275_p3;
assign zext_ln6_1_fu_269_p1 = lshr_ln6_6_fu_259_p4;
assign zext_ln6_fu_325_p1 = lshr_ln6_2_reg_396;
endmodule 