module main_graph_main_graph_Pipeline_VITIS_LOOP_1289_293 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v25_address0,v25_ce0,v25_q0,v25_address1,v25_ce1,v25_we1,v25_d1,v26_address0,v26_ce0,v26_q0,v26_1_address0,v26_1_ce0,v26_1_q0,v26_2_address0,v26_2_ce0,v26_2_q0,v26_3_address0,v26_3_ce0,v26_3_q0,v26_4_address0,v26_4_ce0,v26_4_q0,v26_5_address0,v26_5_ce0,v26_5_q0,v26_6_address0,v26_6_ce0,v26_6_q0,v26_7_address0,v26_7_ce0,v26_7_q0,v26_8_address0,v26_8_ce0,v26_8_q0,v26_9_address0,v26_9_ce0,v26_9_q0,v26_10_address0,v26_10_ce0,v26_10_q0,v26_11_address0,v26_11_ce0,v26_11_q0,v26_12_address0,v26_12_ce0,v26_12_q0,v26_13_address0,v26_13_ce0,v26_13_q0,v26_14_address0,v26_14_ce0,v26_14_q0,v26_15_address0,v26_15_ce0,v26_15_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v25_address0;
output   v25_ce0;
input  [7:0] v25_q0;
output  [8:0] v25_address1;
output   v25_ce1;
output   v25_we1;
output  [7:0] v25_d1;
output  [8:0] v26_address0;
output   v26_ce0;
input  [6:0] v26_q0;
output  [8:0] v26_1_address0;
output   v26_1_ce0;
input  [6:0] v26_1_q0;
output  [8:0] v26_2_address0;
output   v26_2_ce0;
input  [6:0] v26_2_q0;
output  [8:0] v26_3_address0;
output   v26_3_ce0;
input  [6:0] v26_3_q0;
output  [8:0] v26_4_address0;
output   v26_4_ce0;
input  [6:0] v26_4_q0;
output  [8:0] v26_5_address0;
output   v26_5_ce0;
input  [6:0] v26_5_q0;
output  [8:0] v26_6_address0;
output   v26_6_ce0;
input  [6:0] v26_6_q0;
output  [8:0] v26_7_address0;
output   v26_7_ce0;
input  [6:0] v26_7_q0;
output  [8:0] v26_8_address0;
output   v26_8_ce0;
input  [6:0] v26_8_q0;
output  [8:0] v26_9_address0;
output   v26_9_ce0;
input  [6:0] v26_9_q0;
output  [8:0] v26_10_address0;
output   v26_10_ce0;
input  [6:0] v26_10_q0;
output  [8:0] v26_11_address0;
output   v26_11_ce0;
input  [6:0] v26_11_q0;
output  [8:0] v26_12_address0;
output   v26_12_ce0;
input  [6:0] v26_12_q0;
output  [8:0] v26_13_address0;
output   v26_13_ce0;
input  [6:0] v26_13_q0;
output  [8:0] v26_14_address0;
output   v26_14_ce0;
input  [6:0] v26_14_q0;
output  [8:0] v26_15_address0;
output   v26_15_ce0;
input  [6:0] v26_15_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1289_fu_305_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln1289_fu_317_p1;
reg   [63:0] zext_ln1289_reg_497;
reg   [8:0] v25_addr_reg_538;
reg   [8:0] v25_addr_reg_538_pp0_iter2_reg;
reg   [6:0] v679_11_reg_599;
reg   [6:0] v679_12_reg_604;
wire   [7:0] add_ln1296_12_fu_349_p2;
reg   [7:0] add_ln1296_12_reg_609;
wire   [7:0] add_ln1296_2_fu_417_p2;
reg   [7:0] add_ln1296_2_reg_614;
wire   [7:0] add_ln1296_5_fu_435_p2;
reg   [7:0] add_ln1296_5_reg_619;
wire   [7:0] add_ln1296_14_fu_470_p2;
reg   [7:0] add_ln1296_14_reg_624;
wire    ap_block_pp0_stage0;
reg   [9:0] v676_fu_68;
wire   [9:0] add_ln1289_fu_311_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_v676_1;
reg    v26_11_ce0_local;
reg    v26_12_ce0_local;
reg    v26_13_ce0_local;
reg    v26_14_ce0_local;
reg    v26_15_ce0_local;
reg    v25_ce0_local;
reg    v25_we1_local;
wire   [7:0] v684_fu_480_p2;
reg    v25_ce1_local;
reg    v26_ce0_local;
reg    v26_1_ce0_local;
reg    v26_2_ce0_local;
reg    v26_3_ce0_local;
reg    v26_4_ce0_local;
reg    v26_5_ce0_local;
reg    v26_6_ce0_local;
reg    v26_7_ce0_local;
reg    v26_8_ce0_local;
reg    v26_9_ce0_local;
reg    v26_10_ce0_local;
wire   [7:0] zext_ln1292_14_fu_335_p1;
wire   [7:0] zext_ln1292_15_fu_339_p1;
wire   [7:0] add_ln1296_11_fu_343_p2;
wire   [7:0] zext_ln1292_13_fu_331_p1;
wire   [7:0] zext_ln1292_fu_355_p1;
wire   [7:0] zext_ln1292_1_fu_359_p1;
wire   [7:0] zext_ln1292_2_fu_363_p1;
wire   [7:0] add_ln1296_1_fu_411_p2;
wire   [7:0] add_ln1296_fu_405_p2;
wire   [7:0] zext_ln1292_3_fu_367_p1;
wire   [7:0] zext_ln1292_4_fu_371_p1;
wire   [7:0] zext_ln1292_5_fu_375_p1;
wire   [7:0] zext_ln1292_6_fu_379_p1;
wire   [7:0] add_ln1296_4_fu_429_p2;
wire   [7:0] add_ln1296_3_fu_423_p2;
wire   [7:0] zext_ln1292_7_fu_383_p1;
wire   [7:0] zext_ln1292_8_fu_387_p1;
wire   [7:0] zext_ln1292_9_fu_391_p1;
wire   [7:0] zext_ln1292_10_fu_395_p1;
wire   [7:0] add_ln1296_8_fu_447_p2;
wire   [7:0] add_ln1296_7_fu_441_p2;
wire   [7:0] zext_ln1292_11_fu_399_p1;
wire   [7:0] zext_ln1292_12_fu_402_p1;
wire   [7:0] add_ln1296_10_fu_459_p2;
wire   [7:0] add_ln1296_13_fu_465_p2;
wire   [7:0] add_ln1296_9_fu_453_p2;
wire   [7:0] add_ln1296_6_fu_476_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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
#0 v676_fu_68 = 10'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1289_fu_305_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v676_fu_68 <= add_ln1289_fu_311_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v676_fu_68 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1296_12_reg_609 <= add_ln1296_12_fu_349_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v25_addr_reg_538 <= zext_ln1289_reg_497;
        v679_11_reg_599 <= v26_11_q0;
        v679_12_reg_604 <= v26_12_q0;
        zext_ln1289_reg_497[9 : 0] <= zext_ln1289_fu_317_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln1296_14_reg_624 <= add_ln1296_14_fu_470_p2;
        add_ln1296_2_reg_614 <= add_ln1296_2_fu_417_p2;
        add_ln1296_5_reg_619 <= add_ln1296_5_fu_435_p2;
        v25_addr_reg_538_pp0_iter2_reg <= v25_addr_reg_538;
    end
end
always @ (*) begin
    if (((icmp_ln1289_fu_305_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v676_1 = 10'd0;
    end else begin
        ap_sig_allocacmp_v676_1 = v676_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v25_ce0_local = 1'b1;
    end else begin
        v25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v25_ce1_local = 1'b1;
    end else begin
        v25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v25_we1_local = 1'b1;
    end else begin
        v25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_10_ce0_local = 1'b1;
    end else begin
        v26_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_11_ce0_local = 1'b1;
    end else begin
        v26_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_12_ce0_local = 1'b1;
    end else begin
        v26_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_13_ce0_local = 1'b1;
    end else begin
        v26_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_14_ce0_local = 1'b1;
    end else begin
        v26_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_15_ce0_local = 1'b1;
    end else begin
        v26_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_1_ce0_local = 1'b1;
    end else begin
        v26_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_2_ce0_local = 1'b1;
    end else begin
        v26_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_3_ce0_local = 1'b1;
    end else begin
        v26_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_4_ce0_local = 1'b1;
    end else begin
        v26_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_5_ce0_local = 1'b1;
    end else begin
        v26_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_6_ce0_local = 1'b1;
    end else begin
        v26_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_7_ce0_local = 1'b1;
    end else begin
        v26_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_8_ce0_local = 1'b1;
    end else begin
        v26_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_9_ce0_local = 1'b1;
    end else begin
        v26_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_ce0_local = 1'b1;
    end else begin
        v26_ce0_local = 1'b0;
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
assign add_ln1289_fu_311_p2 = (ap_sig_allocacmp_v676_1 + 10'd1);
assign add_ln1296_10_fu_459_p2 = (zext_ln1292_11_fu_399_p1 + zext_ln1292_12_fu_402_p1);
assign add_ln1296_11_fu_343_p2 = (zext_ln1292_14_fu_335_p1 + zext_ln1292_15_fu_339_p1);
assign add_ln1296_12_fu_349_p2 = (add_ln1296_11_fu_343_p2 + zext_ln1292_13_fu_331_p1);
assign add_ln1296_13_fu_465_p2 = (add_ln1296_12_reg_609 + add_ln1296_10_fu_459_p2);
assign add_ln1296_14_fu_470_p2 = (add_ln1296_13_fu_465_p2 + add_ln1296_9_fu_453_p2);
assign add_ln1296_1_fu_411_p2 = (zext_ln1292_1_fu_359_p1 + zext_ln1292_2_fu_363_p1);
assign add_ln1296_2_fu_417_p2 = (add_ln1296_1_fu_411_p2 + add_ln1296_fu_405_p2);
assign add_ln1296_3_fu_423_p2 = (zext_ln1292_3_fu_367_p1 + zext_ln1292_4_fu_371_p1);
assign add_ln1296_4_fu_429_p2 = (zext_ln1292_5_fu_375_p1 + zext_ln1292_6_fu_379_p1);
assign add_ln1296_5_fu_435_p2 = (add_ln1296_4_fu_429_p2 + add_ln1296_3_fu_423_p2);
assign add_ln1296_6_fu_476_p2 = (add_ln1296_5_reg_619 + add_ln1296_2_reg_614);
assign add_ln1296_7_fu_441_p2 = (zext_ln1292_7_fu_383_p1 + zext_ln1292_8_fu_387_p1);
assign add_ln1296_8_fu_447_p2 = (zext_ln1292_9_fu_391_p1 + zext_ln1292_10_fu_395_p1);
assign add_ln1296_9_fu_453_p2 = (add_ln1296_8_fu_447_p2 + add_ln1296_7_fu_441_p2);
assign add_ln1296_fu_405_p2 = (zext_ln1292_fu_355_p1 + v25_q0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln1289_fu_305_p2 = ((ap_sig_allocacmp_v676_1 == 10'd512) ? 1'b1 : 1'b0);
assign v25_address0 = zext_ln1289_reg_497;
assign v25_address1 = v25_addr_reg_538_pp0_iter2_reg;
assign v25_ce0 = v25_ce0_local;
assign v25_ce1 = v25_ce1_local;
assign v25_d1 = v684_fu_480_p2;
assign v25_we1 = v25_we1_local;
assign v26_10_address0 = zext_ln1289_reg_497;
assign v26_10_ce0 = v26_10_ce0_local;
assign v26_11_address0 = zext_ln1289_fu_317_p1;
assign v26_11_ce0 = v26_11_ce0_local;
assign v26_12_address0 = zext_ln1289_fu_317_p1;
assign v26_12_ce0 = v26_12_ce0_local;
assign v26_13_address0 = zext_ln1289_fu_317_p1;
assign v26_13_ce0 = v26_13_ce0_local;
assign v26_14_address0 = zext_ln1289_fu_317_p1;
assign v26_14_ce0 = v26_14_ce0_local;
assign v26_15_address0 = zext_ln1289_fu_317_p1;
assign v26_15_ce0 = v26_15_ce0_local;
assign v26_1_address0 = zext_ln1289_reg_497;
assign v26_1_ce0 = v26_1_ce0_local;
assign v26_2_address0 = zext_ln1289_reg_497;
assign v26_2_ce0 = v26_2_ce0_local;
assign v26_3_address0 = zext_ln1289_reg_497;
assign v26_3_ce0 = v26_3_ce0_local;
assign v26_4_address0 = zext_ln1289_reg_497;
assign v26_4_ce0 = v26_4_ce0_local;
assign v26_5_address0 = zext_ln1289_reg_497;
assign v26_5_ce0 = v26_5_ce0_local;
assign v26_6_address0 = zext_ln1289_reg_497;
assign v26_6_ce0 = v26_6_ce0_local;
assign v26_7_address0 = zext_ln1289_reg_497;
assign v26_7_ce0 = v26_7_ce0_local;
assign v26_8_address0 = zext_ln1289_reg_497;
assign v26_8_ce0 = v26_8_ce0_local;
assign v26_9_address0 = zext_ln1289_reg_497;
assign v26_9_ce0 = v26_9_ce0_local;
assign v26_address0 = zext_ln1289_reg_497;
assign v26_ce0 = v26_ce0_local;
assign v684_fu_480_p2 = (add_ln1296_14_reg_624 + add_ln1296_6_fu_476_p2);
assign zext_ln1289_fu_317_p1 = ap_sig_allocacmp_v676_1;
assign zext_ln1292_10_fu_395_p1 = v26_10_q0;
assign zext_ln1292_11_fu_399_p1 = v679_11_reg_599;
assign zext_ln1292_12_fu_402_p1 = v679_12_reg_604;
assign zext_ln1292_13_fu_331_p1 = v26_13_q0;
assign zext_ln1292_14_fu_335_p1 = v26_14_q0;
assign zext_ln1292_15_fu_339_p1 = v26_15_q0;
assign zext_ln1292_1_fu_359_p1 = v26_1_q0;
assign zext_ln1292_2_fu_363_p1 = v26_2_q0;
assign zext_ln1292_3_fu_367_p1 = v26_3_q0;
assign zext_ln1292_4_fu_371_p1 = v26_4_q0;
assign zext_ln1292_5_fu_375_p1 = v26_5_q0;
assign zext_ln1292_6_fu_379_p1 = v26_6_q0;
assign zext_ln1292_7_fu_383_p1 = v26_7_q0;
assign zext_ln1292_8_fu_387_p1 = v26_8_q0;
assign zext_ln1292_9_fu_391_p1 = v26_9_q0;
assign zext_ln1292_fu_355_p1 = v26_q0;
always @ (posedge ap_clk) begin
    zext_ln1289_reg_497[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 