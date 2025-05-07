module bicg_bicg_Pipeline_lpwr (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,s_out_din,s_out_full_n,s_out_write,q_out_din,q_out_full_n,q_out_write,buff_s_out_address0,buff_s_out_ce0,buff_s_out_q0,buff_q_out_address0,buff_q_out_ce0,buff_q_out_q0,buff_s_out_1_address0,buff_s_out_1_ce0,buff_s_out_1_q0,buff_q_out_1_address0,buff_q_out_1_ce0,buff_q_out_1_q0,buff_s_out_2_address0,buff_s_out_2_ce0,buff_s_out_2_q0,buff_q_out_2_address0,buff_q_out_2_ce0,buff_q_out_2_q0,buff_s_out_3_address0,buff_s_out_3_ce0,buff_s_out_3_q0,buff_q_out_3_address0,buff_q_out_3_ce0,buff_q_out_3_q0,buff_s_out_4_address0,buff_s_out_4_ce0,buff_s_out_4_q0,buff_q_out_4_address0,buff_q_out_4_ce0,buff_q_out_4_q0,buff_s_out_5_address0,buff_s_out_5_ce0,buff_s_out_5_q0,buff_q_out_5_address0,buff_q_out_5_ce0,buff_q_out_5_q0,buff_s_out_6_address0,buff_s_out_6_ce0,buff_s_out_6_q0,buff_q_out_6_address0,buff_q_out_6_ce0,buff_q_out_6_q0,buff_s_out_7_address0,buff_s_out_7_ce0,buff_s_out_7_q0,buff_q_out_7_address0,buff_q_out_7_ce0,buff_q_out_7_q0); 
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
output  [31:0] s_out_din;
input   s_out_full_n;
output   s_out_write;
output  [31:0] q_out_din;
input   q_out_full_n;
output   q_out_write;
output  [2:0] buff_s_out_address0;
output   buff_s_out_ce0;
input  [31:0] buff_s_out_q0;
output  [2:0] buff_q_out_address0;
output   buff_q_out_ce0;
input  [31:0] buff_q_out_q0;
output  [2:0] buff_s_out_1_address0;
output   buff_s_out_1_ce0;
input  [31:0] buff_s_out_1_q0;
output  [2:0] buff_q_out_1_address0;
output   buff_q_out_1_ce0;
input  [31:0] buff_q_out_1_q0;
output  [2:0] buff_s_out_2_address0;
output   buff_s_out_2_ce0;
input  [31:0] buff_s_out_2_q0;
output  [2:0] buff_q_out_2_address0;
output   buff_q_out_2_ce0;
input  [31:0] buff_q_out_2_q0;
output  [2:0] buff_s_out_3_address0;
output   buff_s_out_3_ce0;
input  [31:0] buff_s_out_3_q0;
output  [2:0] buff_q_out_3_address0;
output   buff_q_out_3_ce0;
input  [31:0] buff_q_out_3_q0;
output  [2:0] buff_s_out_4_address0;
output   buff_s_out_4_ce0;
input  [31:0] buff_s_out_4_q0;
output  [2:0] buff_q_out_4_address0;
output   buff_q_out_4_ce0;
input  [31:0] buff_q_out_4_q0;
output  [2:0] buff_s_out_5_address0;
output   buff_s_out_5_ce0;
input  [31:0] buff_s_out_5_q0;
output  [2:0] buff_q_out_5_address0;
output   buff_q_out_5_ce0;
input  [31:0] buff_q_out_5_q0;
output  [2:0] buff_s_out_6_address0;
output   buff_s_out_6_ce0;
input  [31:0] buff_s_out_6_q0;
output  [2:0] buff_q_out_6_address0;
output   buff_q_out_6_ce0;
input  [31:0] buff_q_out_6_q0;
output  [2:0] buff_s_out_7_address0;
output   buff_s_out_7_ce0;
input  [31:0] buff_s_out_7_q0;
output  [2:0] buff_q_out_7_address0;
output   buff_q_out_7_ce0;
input  [31:0] buff_q_out_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_block_state9_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_310_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
reg   [0:0] tmp_reg_432;
reg    ap_block_state8_pp0_stage7_iter0;
reg    ap_block_pp0_stage7_subdone;
reg    s_out_blk_n;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage0;
reg    q_out_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] buff_s_out_1_load_reg_516;
reg    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_pp0_stage1_11001;
reg   [31:0] buff_q_out_1_load_reg_521;
reg   [31:0] buff_s_out_2_load_reg_526;
reg   [31:0] buff_q_out_2_load_reg_531;
reg   [31:0] buff_s_out_3_load_reg_536;
reg   [31:0] buff_q_out_3_load_reg_541;
reg   [31:0] buff_s_out_4_load_reg_546;
reg   [31:0] buff_q_out_4_load_reg_551;
reg   [31:0] buff_s_out_5_load_reg_556;
reg   [31:0] buff_q_out_5_load_reg_561;
reg   [31:0] buff_s_out_6_load_reg_566;
reg   [31:0] buff_q_out_6_load_reg_571;
reg   [31:0] buff_s_out_7_load_reg_576;
reg   [31:0] buff_q_out_7_load_reg_581;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_328_p1;
reg   [6:0] i_fu_76;
wire   [6:0] add_ln35_fu_348_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_1;
wire   [31:0] bitcast_ln36_fu_359_p1;
reg   [31:0] s_out_din_local;
reg    ap_block_pp0_stage1_01001;
wire   [31:0] bitcast_ln36_1_fu_369_p1;
reg    ap_block_state3_pp0_stage2_iter0;
reg    ap_block_pp0_stage2_01001;
wire   [31:0] bitcast_ln36_2_fu_377_p1;
reg    ap_block_state4_pp0_stage3_iter0;
reg    ap_block_pp0_stage3_01001;
wire   [31:0] bitcast_ln36_3_fu_385_p1;
reg    ap_block_state5_pp0_stage4_iter0;
reg    ap_block_pp0_stage4_01001;
wire   [31:0] bitcast_ln36_4_fu_393_p1;
reg    ap_block_state6_pp0_stage5_iter0;
reg    ap_block_pp0_stage5_01001;
wire   [31:0] bitcast_ln36_5_fu_401_p1;
reg    ap_block_state7_pp0_stage6_iter0;
reg    ap_block_pp0_stage6_01001;
wire   [31:0] bitcast_ln36_6_fu_409_p1;
reg    ap_block_pp0_stage7_01001;
wire   [31:0] bitcast_ln36_7_fu_417_p1;
reg    ap_block_pp0_stage0_01001;
reg    s_out_write_local;
reg    ap_block_pp0_stage2_11001;
reg    ap_block_pp0_stage3_11001;
reg    ap_block_pp0_stage4_11001;
reg    ap_block_pp0_stage5_11001;
reg    ap_block_pp0_stage6_11001;
reg    ap_block_pp0_stage7_11001;
wire   [31:0] bitcast_ln37_fu_364_p1;
reg   [31:0] q_out_din_local;
wire   [31:0] bitcast_ln37_1_fu_373_p1;
wire   [31:0] bitcast_ln37_2_fu_381_p1;
wire   [31:0] bitcast_ln37_3_fu_389_p1;
wire   [31:0] bitcast_ln37_4_fu_397_p1;
wire   [31:0] bitcast_ln37_5_fu_405_p1;
wire   [31:0] bitcast_ln37_6_fu_413_p1;
wire   [31:0] bitcast_ln37_7_fu_421_p1;
reg    q_out_write_local;
reg    buff_s_out_ce0_local;
reg    buff_q_out_ce0_local;
reg    buff_s_out_1_ce0_local;
reg    buff_q_out_1_ce0_local;
reg    buff_s_out_2_ce0_local;
reg    buff_q_out_2_ce0_local;
reg    buff_s_out_3_ce0_local;
reg    buff_q_out_3_ce0_local;
reg    buff_s_out_4_ce0_local;
reg    buff_q_out_4_ce0_local;
reg    buff_s_out_5_ce0_local;
reg    buff_q_out_5_ce0_local;
reg    buff_s_out_6_ce0_local;
reg    buff_q_out_6_ce0_local;
reg    buff_s_out_7_ce0_local;
reg    buff_q_out_7_ce0_local;
wire   [2:0] lshr_ln5_5_fu_318_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
reg    ap_block_pp0_stage3_subdone;
reg    ap_block_pp0_stage4_subdone;
reg    ap_block_pp0_stage5_subdone;
reg    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_76 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_310_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_76 <= add_ln35_fu_348_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_76 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_q_out_1_load_reg_521 <= buff_q_out_1_q0;
        buff_q_out_2_load_reg_531 <= buff_q_out_2_q0;
        buff_q_out_3_load_reg_541 <= buff_q_out_3_q0;
        buff_q_out_4_load_reg_551 <= buff_q_out_4_q0;
        buff_q_out_5_load_reg_561 <= buff_q_out_5_q0;
        buff_q_out_6_load_reg_571 <= buff_q_out_6_q0;
        buff_q_out_7_load_reg_581 <= buff_q_out_7_q0;
        buff_s_out_1_load_reg_516 <= buff_s_out_1_q0;
        buff_s_out_2_load_reg_526 <= buff_s_out_2_q0;
        buff_s_out_3_load_reg_536 <= buff_s_out_3_q0;
        buff_s_out_4_load_reg_546 <= buff_s_out_4_q0;
        buff_s_out_5_load_reg_556 <= buff_s_out_5_q0;
        buff_s_out_6_load_reg_566 <= buff_s_out_6_q0;
        buff_s_out_7_load_reg_576 <= buff_s_out_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_432 <= ap_sig_allocacmp_i_1[32'd6];
    end
end
always @ (*) begin
    if (((tmp_fu_310_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
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
        ap_sig_allocacmp_i_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_1_ce0_local = 1'b1;
    end else begin
        buff_q_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_2_ce0_local = 1'b1;
    end else begin
        buff_q_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_3_ce0_local = 1'b1;
    end else begin
        buff_q_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_4_ce0_local = 1'b1;
    end else begin
        buff_q_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_5_ce0_local = 1'b1;
    end else begin
        buff_q_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_6_ce0_local = 1'b1;
    end else begin
        buff_q_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_7_ce0_local = 1'b1;
    end else begin
        buff_q_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_ce0_local = 1'b1;
    end else begin
        buff_q_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_4_ce0_local = 1'b1;
    end else begin
        buff_s_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_5_ce0_local = 1'b1;
    end else begin
        buff_s_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_6_ce0_local = 1'b1;
    end else begin
        buff_s_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_7_ce0_local = 1'b1;
    end else begin
        buff_s_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        q_out_blk_n = q_out_full_n;
    end else begin
        q_out_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        q_out_din_local = bitcast_ln37_7_fu_421_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage7_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        q_out_din_local = bitcast_ln37_6_fu_413_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage6_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        q_out_din_local = bitcast_ln37_5_fu_405_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage5_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        q_out_din_local = bitcast_ln37_4_fu_397_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage4_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        q_out_din_local = bitcast_ln37_3_fu_389_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage3_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        q_out_din_local = bitcast_ln37_2_fu_381_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage2_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        q_out_din_local = bitcast_ln37_1_fu_373_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        q_out_din_local = bitcast_ln37_fu_364_p1;
    end else begin
        q_out_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        q_out_write_local = 1'b1;
    end else begin
        q_out_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        s_out_blk_n = s_out_full_n;
    end else begin
        s_out_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_out_din_local = bitcast_ln36_7_fu_417_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage7_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_out_din_local = bitcast_ln36_6_fu_409_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage6_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        s_out_din_local = bitcast_ln36_5_fu_401_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage5_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        s_out_din_local = bitcast_ln36_4_fu_393_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage4_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        s_out_din_local = bitcast_ln36_3_fu_385_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage3_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_out_din_local = bitcast_ln36_2_fu_377_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage2_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        s_out_din_local = bitcast_ln36_1_fu_369_p1;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        s_out_din_local = bitcast_ln36_fu_359_p1;
    end else begin
        s_out_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        s_out_write_local = 1'b1;
    end else begin
        s_out_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln35_fu_348_p2 = (ap_sig_allocacmp_i_1 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state9_pp0_stage0_iter1));
end
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state9_pp0_stage0_iter1));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state9_pp0_stage0_iter1));
end
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage1_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage1_iter0));
end
always @ (*) begin
    ap_block_pp0_stage1_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage1_iter0));
end
always @ (*) begin
    ap_block_pp0_stage1_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage1_iter0));
end
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage2_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage2_iter0));
end
always @ (*) begin
    ap_block_pp0_stage2_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage2_iter0));
end
always @ (*) begin
    ap_block_pp0_stage2_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage2_iter0));
end
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage3_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage3_iter0));
end
always @ (*) begin
    ap_block_pp0_stage3_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage3_iter0));
end
always @ (*) begin
    ap_block_pp0_stage3_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage3_iter0));
end
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage4_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage4_iter0));
end
always @ (*) begin
    ap_block_pp0_stage4_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage4_iter0));
end
always @ (*) begin
    ap_block_pp0_stage4_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage4_iter0));
end
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage5_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state6_pp0_stage5_iter0));
end
always @ (*) begin
    ap_block_pp0_stage5_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state6_pp0_stage5_iter0));
end
always @ (*) begin
    ap_block_pp0_stage5_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state6_pp0_stage5_iter0));
end
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage6_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state7_pp0_stage6_iter0));
end
always @ (*) begin
    ap_block_pp0_stage6_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state7_pp0_stage6_iter0));
end
always @ (*) begin
    ap_block_pp0_stage6_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state7_pp0_stage6_iter0));
end
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage7_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state8_pp0_stage7_iter0));
end
always @ (*) begin
    ap_block_pp0_stage7_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state8_pp0_stage7_iter0));
end
always @ (*) begin
    ap_block_pp0_stage7_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state8_pp0_stage7_iter0));
end
always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = (((tmp_reg_432 == 1'd0) & (q_out_full_n == 1'b0)) | ((tmp_reg_432 == 1'd0) & (s_out_full_n == 1'b0)));
end
always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = (((tmp_reg_432 == 1'd0) & (q_out_full_n == 1'b0)) | ((tmp_reg_432 == 1'd0) & (s_out_full_n == 1'b0)));
end
always @ (*) begin
    ap_block_state4_pp0_stage3_iter0 = (((tmp_reg_432 == 1'd0) & (q_out_full_n == 1'b0)) | ((tmp_reg_432 == 1'd0) & (s_out_full_n == 1'b0)));
end
always @ (*) begin
    ap_block_state5_pp0_stage4_iter0 = (((tmp_reg_432 == 1'd0) & (q_out_full_n == 1'b0)) | ((tmp_reg_432 == 1'd0) & (s_out_full_n == 1'b0)));
end
always @ (*) begin
    ap_block_state6_pp0_stage5_iter0 = (((tmp_reg_432 == 1'd0) & (q_out_full_n == 1'b0)) | ((tmp_reg_432 == 1'd0) & (s_out_full_n == 1'b0)));
end
always @ (*) begin
    ap_block_state7_pp0_stage6_iter0 = (((tmp_reg_432 == 1'd0) & (q_out_full_n == 1'b0)) | ((tmp_reg_432 == 1'd0) & (s_out_full_n == 1'b0)));
end
always @ (*) begin
    ap_block_state8_pp0_stage7_iter0 = (((tmp_reg_432 == 1'd0) & (q_out_full_n == 1'b0)) | ((tmp_reg_432 == 1'd0) & (s_out_full_n == 1'b0)));
end
always @ (*) begin
    ap_block_state9_pp0_stage0_iter1 = ((q_out_full_n == 1'b0) | (s_out_full_n == 1'b0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_1_fu_369_p1 = buff_s_out_1_load_reg_516;
assign bitcast_ln36_2_fu_377_p1 = buff_s_out_2_load_reg_526;
assign bitcast_ln36_3_fu_385_p1 = buff_s_out_3_load_reg_536;
assign bitcast_ln36_4_fu_393_p1 = buff_s_out_4_load_reg_546;
assign bitcast_ln36_5_fu_401_p1 = buff_s_out_5_load_reg_556;
assign bitcast_ln36_6_fu_409_p1 = buff_s_out_6_load_reg_566;
assign bitcast_ln36_7_fu_417_p1 = buff_s_out_7_load_reg_576;
assign bitcast_ln36_fu_359_p1 = buff_s_out_q0;
assign bitcast_ln37_1_fu_373_p1 = buff_q_out_1_load_reg_521;
assign bitcast_ln37_2_fu_381_p1 = buff_q_out_2_load_reg_531;
assign bitcast_ln37_3_fu_389_p1 = buff_q_out_3_load_reg_541;
assign bitcast_ln37_4_fu_397_p1 = buff_q_out_4_load_reg_551;
assign bitcast_ln37_5_fu_405_p1 = buff_q_out_5_load_reg_561;
assign bitcast_ln37_6_fu_413_p1 = buff_q_out_6_load_reg_571;
assign bitcast_ln37_7_fu_421_p1 = buff_q_out_7_load_reg_581;
assign bitcast_ln37_fu_364_p1 = buff_q_out_q0;
assign buff_q_out_1_address0 = zext_ln5_fu_328_p1;
assign buff_q_out_1_ce0 = buff_q_out_1_ce0_local;
assign buff_q_out_2_address0 = zext_ln5_fu_328_p1;
assign buff_q_out_2_ce0 = buff_q_out_2_ce0_local;
assign buff_q_out_3_address0 = zext_ln5_fu_328_p1;
assign buff_q_out_3_ce0 = buff_q_out_3_ce0_local;
assign buff_q_out_4_address0 = zext_ln5_fu_328_p1;
assign buff_q_out_4_ce0 = buff_q_out_4_ce0_local;
assign buff_q_out_5_address0 = zext_ln5_fu_328_p1;
assign buff_q_out_5_ce0 = buff_q_out_5_ce0_local;
assign buff_q_out_6_address0 = zext_ln5_fu_328_p1;
assign buff_q_out_6_ce0 = buff_q_out_6_ce0_local;
assign buff_q_out_7_address0 = zext_ln5_fu_328_p1;
assign buff_q_out_7_ce0 = buff_q_out_7_ce0_local;
assign buff_q_out_address0 = zext_ln5_fu_328_p1;
assign buff_q_out_ce0 = buff_q_out_ce0_local;
assign buff_s_out_1_address0 = zext_ln5_fu_328_p1;
assign buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
assign buff_s_out_2_address0 = zext_ln5_fu_328_p1;
assign buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
assign buff_s_out_3_address0 = zext_ln5_fu_328_p1;
assign buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
assign buff_s_out_4_address0 = zext_ln5_fu_328_p1;
assign buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
assign buff_s_out_5_address0 = zext_ln5_fu_328_p1;
assign buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
assign buff_s_out_6_address0 = zext_ln5_fu_328_p1;
assign buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
assign buff_s_out_7_address0 = zext_ln5_fu_328_p1;
assign buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
assign buff_s_out_address0 = zext_ln5_fu_328_p1;
assign buff_s_out_ce0 = buff_s_out_ce0_local;
assign lshr_ln5_5_fu_318_p4 = {{ap_sig_allocacmp_i_1[5:3]}};
assign q_out_din = q_out_din_local;
assign q_out_write = q_out_write_local;
assign s_out_din = s_out_din_local;
assign s_out_write = s_out_write_local;
assign tmp_fu_310_p3 = ap_sig_allocacmp_i_1[32'd6];
assign zext_ln5_fu_328_p1 = lshr_ln5_5_fu_318_p4;
endmodule 