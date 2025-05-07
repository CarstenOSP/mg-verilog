module forward_dataflow_in_loop_VITIS_LOOP_7827_1_Loop_VITIS_LOOP_7605_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,shl_ln,idxprom1_i1631,idxprom3_i1642,v15501_0_address0,v15501_0_ce0,v15501_0_q0,v15501_1_address0,v15501_1_ce0,v15501_1_q0,v15501_2_address0,v15501_2_ce0,v15501_2_q0,v15501_3_address0,v15501_3_ce0,v15501_3_q0,v15501_4_address0,v15501_4_ce0,v15501_4_q0,v15501_5_address0,v15501_5_ce0,v15501_5_q0,v15501_6_address0,v15501_6_ce0,v15501_6_q0,v15501_7_address0,v15501_7_ce0,v15501_7_q0,v6695_7_address0,v6695_7_ce0,v6695_7_we0,v6695_7_d0,v6695_6_address0,v6695_6_ce0,v6695_6_we0,v6695_6_d0,v6695_5_address0,v6695_5_ce0,v6695_5_we0,v6695_5_d0,v6695_4_address0,v6695_4_ce0,v6695_4_we0,v6695_4_d0,v6695_3_address0,v6695_3_ce0,v6695_3_we0,v6695_3_d0,v6695_2_address0,v6695_2_ce0,v6695_2_we0,v6695_2_d0,v6695_1_address0,v6695_1_ce0,v6695_1_we0,v6695_1_d0,v6695_address0,v6695_ce0,v6695_we0,v6695_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [9:0] rem4;
input  [6:0] shl_ln;
input  [2:0] idxprom1_i1631;
input  [2:0] idxprom3_i1642;
output  [12:0] v15501_0_address0;
output   v15501_0_ce0;
input  [7:0] v15501_0_q0;
output  [12:0] v15501_1_address0;
output   v15501_1_ce0;
input  [7:0] v15501_1_q0;
output  [12:0] v15501_2_address0;
output   v15501_2_ce0;
input  [7:0] v15501_2_q0;
output  [12:0] v15501_3_address0;
output   v15501_3_ce0;
input  [7:0] v15501_3_q0;
output  [12:0] v15501_4_address0;
output   v15501_4_ce0;
input  [7:0] v15501_4_q0;
output  [12:0] v15501_5_address0;
output   v15501_5_ce0;
input  [7:0] v15501_5_q0;
output  [12:0] v15501_6_address0;
output   v15501_6_ce0;
input  [7:0] v15501_6_q0;
output  [12:0] v15501_7_address0;
output   v15501_7_ce0;
input  [7:0] v15501_7_q0;
output  [1:0] v6695_7_address0;
output   v6695_7_ce0;
output   v6695_7_we0;
output  [7:0] v6695_7_d0;
output  [1:0] v6695_6_address0;
output   v6695_6_ce0;
output   v6695_6_we0;
output  [7:0] v6695_6_d0;
output  [1:0] v6695_5_address0;
output   v6695_5_ce0;
output   v6695_5_we0;
output  [7:0] v6695_5_d0;
output  [1:0] v6695_4_address0;
output   v6695_4_ce0;
output   v6695_4_we0;
output  [7:0] v6695_4_d0;
output  [1:0] v6695_3_address0;
output   v6695_3_ce0;
output   v6695_3_we0;
output  [7:0] v6695_3_d0;
output  [1:0] v6695_2_address0;
output   v6695_2_ce0;
output   v6695_2_we0;
output  [7:0] v6695_2_d0;
output  [1:0] v6695_1_address0;
output   v6695_1_ce0;
output   v6695_1_we0;
output  [7:0] v6695_1_d0;
output  [1:0] v6695_address0;
output   v6695_ce0;
output   v6695_we0;
output  [7:0] v6695_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_458_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [12:0] idxprom3_i1642_cast_fu_348_p1;
reg   [12:0] idxprom3_i1642_cast_reg_547;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] lshr_ln_fu_368_p4;
reg   [2:0] lshr_ln_reg_553;
reg   [2:0] lshr_ln_reg_553_pp0_iter1_reg;
wire   [9:0] add_ln7608_1_fu_412_p2;
reg   [9:0] add_ln7608_1_reg_558;
wire   [9:0] add_ln7610_fu_446_p2;
reg   [9:0] add_ln7610_reg_564;
wire   [63:0] zext_ln7608_2_fu_492_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln7610_2_fu_518_p1;
wire   [63:0] zext_ln7605_2_fu_529_p1;
reg   [5:0] v659196_fu_104;
wire   [5:0] v6591_fu_452_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v659196_load;
reg    v15501_0_ce0_local;
reg    v15501_1_ce0_local;
reg    v15501_2_ce0_local;
reg    v15501_3_ce0_local;
reg    v15501_4_ce0_local;
reg    v15501_5_ce0_local;
reg    v15501_6_ce0_local;
reg    v15501_7_ce0_local;
reg    v6695_7_we0_local;
reg    v6695_7_ce0_local;
reg    v6695_6_we0_local;
reg    v6695_6_ce0_local;
reg    v6695_5_we0_local;
reg    v6695_5_ce0_local;
reg    v6695_4_we0_local;
reg    v6695_4_ce0_local;
reg    v6695_3_we0_local;
reg    v6695_3_ce0_local;
reg    v6695_2_we0_local;
reg    v6695_2_ce0_local;
reg    v6695_1_we0_local;
reg    v6695_1_ce0_local;
reg    v6695_we0_local;
reg    v6695_ce0_local;
wire   [9:0] zext_ln7605_fu_364_p1;
wire   [6:0] zext_ln7605_1_fu_378_p1;
wire   [6:0] add_ln7608_fu_388_p2;
wire   [9:0] p_shl15_fu_398_p3;
wire   [9:0] zext_ln7608_fu_394_p1;
wire   [9:0] sub_ln7608_fu_406_p2;
wire   [9:0] idxprom1_i1631_cast_fu_352_p1;
wire   [9:0] add_ln7607_fu_382_p2;
wire   [6:0] lshr_ln7_fu_418_p4;
wire   [9:0] p_shl13_fu_432_p3;
wire   [9:0] zext_ln7610_fu_428_p1;
wire   [9:0] sub_ln7610_fu_440_p2;
wire   [12:0] p_shl14_fu_474_p3;
wire   [12:0] zext_ln7608_1_fu_471_p1;
wire   [12:0] sub_ln7608_1_fu_481_p2;
wire   [12:0] add_ln7608_2_fu_487_p2;
wire   [12:0] p_shl_fu_500_p3;
wire   [12:0] zext_ln7610_1_fu_497_p1;
wire   [12:0] sub_ln7610_1_fu_507_p2;
wire   [12:0] add_ln7610_1_fu_513_p2;
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
#0 v659196_fu_104 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v659196_fu_104 <= v6591_fu_452_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v659196_fu_104 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7608_1_reg_558 <= add_ln7608_1_fu_412_p2;
        add_ln7610_reg_564 <= add_ln7610_fu_446_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        idxprom3_i1642_cast_reg_547[2 : 0] <= idxprom3_i1642_cast_fu_348_p1[2 : 0];
        lshr_ln_reg_553 <= {{ap_sig_allocacmp_v659196_load[5:3]}};
        lshr_ln_reg_553_pp0_iter1_reg <= lshr_ln_reg_553;
    end
end
always @ (*) begin
    if (((tmp_fu_458_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v659196_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v659196_load = v659196_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15501_0_ce0_local = 1'b1;
    end else begin
        v15501_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15501_1_ce0_local = 1'b1;
    end else begin
        v15501_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15501_2_ce0_local = 1'b1;
    end else begin
        v15501_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15501_3_ce0_local = 1'b1;
    end else begin
        v15501_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15501_4_ce0_local = 1'b1;
    end else begin
        v15501_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15501_5_ce0_local = 1'b1;
    end else begin
        v15501_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15501_6_ce0_local = 1'b1;
    end else begin
        v15501_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15501_7_ce0_local = 1'b1;
    end else begin
        v15501_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_1_ce0_local = 1'b1;
    end else begin
        v6695_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_1_we0_local = 1'b1;
    end else begin
        v6695_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_2_ce0_local = 1'b1;
    end else begin
        v6695_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_2_we0_local = 1'b1;
    end else begin
        v6695_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_3_ce0_local = 1'b1;
    end else begin
        v6695_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_3_we0_local = 1'b1;
    end else begin
        v6695_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_4_ce0_local = 1'b1;
    end else begin
        v6695_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_4_we0_local = 1'b1;
    end else begin
        v6695_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_5_ce0_local = 1'b1;
    end else begin
        v6695_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_5_we0_local = 1'b1;
    end else begin
        v6695_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_6_ce0_local = 1'b1;
    end else begin
        v6695_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_6_we0_local = 1'b1;
    end else begin
        v6695_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_7_ce0_local = 1'b1;
    end else begin
        v6695_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_7_we0_local = 1'b1;
    end else begin
        v6695_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_ce0_local = 1'b1;
    end else begin
        v6695_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6695_we0_local = 1'b1;
    end else begin
        v6695_we0_local = 1'b0;
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
assign add_ln7607_fu_382_p2 = (rem4 + zext_ln7605_fu_364_p1);
assign add_ln7608_1_fu_412_p2 = (sub_ln7608_fu_406_p2 + idxprom1_i1631_cast_fu_352_p1);
assign add_ln7608_2_fu_487_p2 = (sub_ln7608_1_fu_481_p2 + idxprom3_i1642_cast_reg_547);
assign add_ln7608_fu_388_p2 = (shl_ln + zext_ln7605_1_fu_378_p1);
assign add_ln7610_1_fu_513_p2 = (sub_ln7610_1_fu_507_p2 + idxprom3_i1642_cast_reg_547);
assign add_ln7610_fu_446_p2 = (sub_ln7610_fu_440_p2 + idxprom1_i1631_cast_fu_352_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign idxprom1_i1631_cast_fu_352_p1 = idxprom1_i1631;
assign idxprom3_i1642_cast_fu_348_p1 = idxprom3_i1642;
assign lshr_ln7_fu_418_p4 = {{add_ln7607_fu_382_p2[9:3]}};
assign lshr_ln_fu_368_p4 = {{ap_sig_allocacmp_v659196_load[5:3]}};
assign p_shl13_fu_432_p3 = {{lshr_ln7_fu_418_p4}, {3'd0}};
assign p_shl14_fu_474_p3 = {{add_ln7608_1_reg_558}, {3'd0}};
assign p_shl15_fu_398_p3 = {{add_ln7608_fu_388_p2}, {3'd0}};
assign p_shl_fu_500_p3 = {{add_ln7610_reg_564}, {3'd0}};
assign sub_ln7608_1_fu_481_p2 = (p_shl14_fu_474_p3 - zext_ln7608_1_fu_471_p1);
assign sub_ln7608_fu_406_p2 = (p_shl15_fu_398_p3 - zext_ln7608_fu_394_p1);
assign sub_ln7610_1_fu_507_p2 = (p_shl_fu_500_p3 - zext_ln7610_1_fu_497_p1);
assign sub_ln7610_fu_440_p2 = (p_shl13_fu_432_p3 - zext_ln7610_fu_428_p1);
assign tmp_fu_458_p3 = v6591_fu_452_p2[32'd5];
assign v15501_0_address0 = zext_ln7608_2_fu_492_p1;
assign v15501_0_ce0 = v15501_0_ce0_local;
assign v15501_1_address0 = zext_ln7610_2_fu_518_p1;
assign v15501_1_ce0 = v15501_1_ce0_local;
assign v15501_2_address0 = zext_ln7610_2_fu_518_p1;
assign v15501_2_ce0 = v15501_2_ce0_local;
assign v15501_3_address0 = zext_ln7610_2_fu_518_p1;
assign v15501_3_ce0 = v15501_3_ce0_local;
assign v15501_4_address0 = zext_ln7610_2_fu_518_p1;
assign v15501_4_ce0 = v15501_4_ce0_local;
assign v15501_5_address0 = zext_ln7610_2_fu_518_p1;
assign v15501_5_ce0 = v15501_5_ce0_local;
assign v15501_6_address0 = zext_ln7610_2_fu_518_p1;
assign v15501_6_ce0 = v15501_6_ce0_local;
assign v15501_7_address0 = zext_ln7610_2_fu_518_p1;
assign v15501_7_ce0 = v15501_7_ce0_local;
assign v6591_fu_452_p2 = (ap_sig_allocacmp_v659196_load + 6'd8);
assign v6695_1_address0 = zext_ln7605_2_fu_529_p1;
assign v6695_1_ce0 = v6695_1_ce0_local;
assign v6695_1_d0 = v15501_6_q0;
assign v6695_1_we0 = v6695_1_we0_local;
assign v6695_2_address0 = zext_ln7605_2_fu_529_p1;
assign v6695_2_ce0 = v6695_2_ce0_local;
assign v6695_2_d0 = v15501_5_q0;
assign v6695_2_we0 = v6695_2_we0_local;
assign v6695_3_address0 = zext_ln7605_2_fu_529_p1;
assign v6695_3_ce0 = v6695_3_ce0_local;
assign v6695_3_d0 = v15501_4_q0;
assign v6695_3_we0 = v6695_3_we0_local;
assign v6695_4_address0 = zext_ln7605_2_fu_529_p1;
assign v6695_4_ce0 = v6695_4_ce0_local;
assign v6695_4_d0 = v15501_3_q0;
assign v6695_4_we0 = v6695_4_we0_local;
assign v6695_5_address0 = zext_ln7605_2_fu_529_p1;
assign v6695_5_ce0 = v6695_5_ce0_local;
assign v6695_5_d0 = v15501_2_q0;
assign v6695_5_we0 = v6695_5_we0_local;
assign v6695_6_address0 = zext_ln7605_2_fu_529_p1;
assign v6695_6_ce0 = v6695_6_ce0_local;
assign v6695_6_d0 = v15501_1_q0;
assign v6695_6_we0 = v6695_6_we0_local;
assign v6695_7_address0 = zext_ln7605_2_fu_529_p1;
assign v6695_7_ce0 = v6695_7_ce0_local;
assign v6695_7_d0 = v15501_0_q0;
assign v6695_7_we0 = v6695_7_we0_local;
assign v6695_address0 = zext_ln7605_2_fu_529_p1;
assign v6695_ce0 = v6695_ce0_local;
assign v6695_d0 = v15501_7_q0;
assign v6695_we0 = v6695_we0_local;
assign zext_ln7605_1_fu_378_p1 = lshr_ln_fu_368_p4;
assign zext_ln7605_2_fu_529_p1 = lshr_ln_reg_553_pp0_iter1_reg;
assign zext_ln7605_fu_364_p1 = ap_sig_allocacmp_v659196_load;
assign zext_ln7608_1_fu_471_p1 = add_ln7608_1_reg_558;
assign zext_ln7608_2_fu_492_p1 = add_ln7608_2_fu_487_p2;
assign zext_ln7608_fu_394_p1 = add_ln7608_fu_388_p2;
assign zext_ln7610_1_fu_497_p1 = add_ln7610_reg_564;
assign zext_ln7610_2_fu_518_p1 = add_ln7610_1_fu_513_p2;
assign zext_ln7610_fu_428_p1 = lshr_ln7_fu_418_p4;
always @ (posedge ap_clk) begin
    idxprom3_i1642_cast_reg_547[12:3] <= 10'b0000000000;
end
endmodule 