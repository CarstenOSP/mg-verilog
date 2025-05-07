module forward_dataflow_in_loop_VITIS_LOOP_1182_1_Loop_VITIS_LOOP_914_1_proc_Pipeline_VITIS_LOO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem5,shl_ln,urem_ln1185_cast,urem_ln1184_cast,v9268_0_address0,v9268_0_ce0,v9268_0_q0,v9268_1_address0,v9268_1_ce0,v9268_1_q0,v9268_2_address0,v9268_2_ce0,v9268_2_q0,v9268_3_address0,v9268_3_ce0,v9268_3_q0,v9268_4_address0,v9268_4_ce0,v9268_4_q0,v9268_5_address0,v9268_5_ce0,v9268_5_q0,v9268_6_address0,v9268_6_ce0,v9268_6_q0,v9268_7_address0,v9268_7_ce0,v9268_7_q0,v795_7_address0,v795_7_ce0,v795_7_we0,v795_7_d0,v795_6_address0,v795_6_ce0,v795_6_we0,v795_6_d0,v795_5_address0,v795_5_ce0,v795_5_we0,v795_5_d0,v795_4_address0,v795_4_ce0,v795_4_we0,v795_4_d0,v795_3_address0,v795_3_ce0,v795_3_we0,v795_3_d0,v795_2_address0,v795_2_ce0,v795_2_we0,v795_2_d0,v795_1_address0,v795_1_ce0,v795_1_we0,v795_1_d0,v795_address0,v795_ce0,v795_we0,v795_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] rem5;
input  [5:0] shl_ln;
input  [2:0] urem_ln1185_cast;
input  [2:0] urem_ln1184_cast;
output  [11:0] v9268_0_address0;
output   v9268_0_ce0;
input  [7:0] v9268_0_q0;
output  [11:0] v9268_1_address0;
output   v9268_1_ce0;
input  [7:0] v9268_1_q0;
output  [11:0] v9268_2_address0;
output   v9268_2_ce0;
input  [7:0] v9268_2_q0;
output  [11:0] v9268_3_address0;
output   v9268_3_ce0;
input  [7:0] v9268_3_q0;
output  [11:0] v9268_4_address0;
output   v9268_4_ce0;
input  [7:0] v9268_4_q0;
output  [11:0] v9268_5_address0;
output   v9268_5_ce0;
input  [7:0] v9268_5_q0;
output  [11:0] v9268_6_address0;
output   v9268_6_ce0;
input  [7:0] v9268_6_q0;
output  [11:0] v9268_7_address0;
output   v9268_7_ce0;
input  [7:0] v9268_7_q0;
output  [1:0] v795_7_address0;
output   v795_7_ce0;
output   v795_7_we0;
output  [7:0] v795_7_d0;
output  [1:0] v795_6_address0;
output   v795_6_ce0;
output   v795_6_we0;
output  [7:0] v795_6_d0;
output  [1:0] v795_5_address0;
output   v795_5_ce0;
output   v795_5_we0;
output  [7:0] v795_5_d0;
output  [1:0] v795_4_address0;
output   v795_4_ce0;
output   v795_4_we0;
output  [7:0] v795_4_d0;
output  [1:0] v795_3_address0;
output   v795_3_ce0;
output   v795_3_we0;
output  [7:0] v795_3_d0;
output  [1:0] v795_2_address0;
output   v795_2_ce0;
output   v795_2_we0;
output  [7:0] v795_2_d0;
output  [1:0] v795_1_address0;
output   v795_1_ce0;
output   v795_1_we0;
output  [7:0] v795_1_d0;
output  [1:0] v795_address0;
output   v795_ce0;
output   v795_we0;
output  [7:0] v795_d0;
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
wire   [11:0] urem_ln1184_cast_cast_fu_348_p1;
reg   [11:0] urem_ln1184_cast_cast_reg_547;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] lshr_ln_fu_368_p4;
reg   [2:0] lshr_ln_reg_553;
reg   [2:0] lshr_ln_reg_553_pp0_iter1_reg;
wire   [8:0] add_ln917_1_fu_412_p2;
reg   [8:0] add_ln917_1_reg_558;
wire   [8:0] add_ln919_fu_446_p2;
reg   [8:0] add_ln919_reg_564;
wire   [63:0] zext_ln917_2_fu_492_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln919_2_fu_518_p1;
wire   [63:0] zext_ln914_1_fu_529_p1;
reg   [5:0] v66796_fu_104;
wire   [5:0] v667_fu_452_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v66796_load;
reg    v9268_0_ce0_local;
reg    v9268_1_ce0_local;
reg    v9268_2_ce0_local;
reg    v9268_3_ce0_local;
reg    v9268_4_ce0_local;
reg    v9268_5_ce0_local;
reg    v9268_6_ce0_local;
reg    v9268_7_ce0_local;
reg    v795_7_we0_local;
reg    v795_7_ce0_local;
reg    v795_6_we0_local;
reg    v795_6_ce0_local;
reg    v795_5_we0_local;
reg    v795_5_ce0_local;
reg    v795_4_we0_local;
reg    v795_4_ce0_local;
reg    v795_3_we0_local;
reg    v795_3_ce0_local;
reg    v795_2_we0_local;
reg    v795_2_ce0_local;
reg    v795_1_we0_local;
reg    v795_1_ce0_local;
reg    v795_we0_local;
reg    v795_ce0_local;
wire   [8:0] zext_ln914_fu_364_p1;
wire   [5:0] zext_ln914_2_fu_378_p1;
wire   [5:0] add_ln917_fu_388_p2;
wire   [8:0] p_shl15_fu_398_p3;
wire   [8:0] zext_ln917_fu_394_p1;
wire   [8:0] sub_ln917_fu_406_p2;
wire   [8:0] urem_ln1185_cast_cast_fu_352_p1;
wire   [8:0] add_ln916_fu_382_p2;
wire   [5:0] lshr_ln120_fu_418_p4;
wire   [8:0] p_shl13_fu_432_p3;
wire   [8:0] zext_ln919_fu_428_p1;
wire   [8:0] sub_ln919_fu_440_p2;
wire   [11:0] p_shl14_fu_474_p3;
wire   [11:0] zext_ln917_1_fu_471_p1;
wire   [11:0] sub_ln917_1_fu_481_p2;
wire   [11:0] add_ln917_2_fu_487_p2;
wire   [11:0] p_shl_fu_500_p3;
wire   [11:0] zext_ln919_1_fu_497_p1;
wire   [11:0] sub_ln919_1_fu_507_p2;
wire   [11:0] add_ln919_1_fu_513_p2;
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
#0 v66796_fu_104 = 6'd0;
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
            v66796_fu_104 <= v667_fu_452_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v66796_fu_104 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln917_1_reg_558 <= add_ln917_1_fu_412_p2;
        add_ln919_reg_564 <= add_ln919_fu_446_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        lshr_ln_reg_553 <= {{ap_sig_allocacmp_v66796_load[5:3]}};
        lshr_ln_reg_553_pp0_iter1_reg <= lshr_ln_reg_553;
        urem_ln1184_cast_cast_reg_547[2 : 0] <= urem_ln1184_cast_cast_fu_348_p1[2 : 0];
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
        ap_sig_allocacmp_v66796_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v66796_load = v66796_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_1_ce0_local = 1'b1;
    end else begin
        v795_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_1_we0_local = 1'b1;
    end else begin
        v795_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_2_ce0_local = 1'b1;
    end else begin
        v795_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_2_we0_local = 1'b1;
    end else begin
        v795_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_3_ce0_local = 1'b1;
    end else begin
        v795_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_3_we0_local = 1'b1;
    end else begin
        v795_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_4_ce0_local = 1'b1;
    end else begin
        v795_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_4_we0_local = 1'b1;
    end else begin
        v795_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_5_ce0_local = 1'b1;
    end else begin
        v795_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_5_we0_local = 1'b1;
    end else begin
        v795_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_6_ce0_local = 1'b1;
    end else begin
        v795_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_6_we0_local = 1'b1;
    end else begin
        v795_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_7_ce0_local = 1'b1;
    end else begin
        v795_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_7_we0_local = 1'b1;
    end else begin
        v795_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_ce0_local = 1'b1;
    end else begin
        v795_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v795_we0_local = 1'b1;
    end else begin
        v795_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9268_0_ce0_local = 1'b1;
    end else begin
        v9268_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9268_1_ce0_local = 1'b1;
    end else begin
        v9268_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9268_2_ce0_local = 1'b1;
    end else begin
        v9268_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9268_3_ce0_local = 1'b1;
    end else begin
        v9268_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9268_4_ce0_local = 1'b1;
    end else begin
        v9268_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9268_5_ce0_local = 1'b1;
    end else begin
        v9268_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9268_6_ce0_local = 1'b1;
    end else begin
        v9268_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9268_7_ce0_local = 1'b1;
    end else begin
        v9268_7_ce0_local = 1'b0;
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
assign add_ln916_fu_382_p2 = (rem5 + zext_ln914_fu_364_p1);
assign add_ln917_1_fu_412_p2 = (sub_ln917_fu_406_p2 + urem_ln1185_cast_cast_fu_352_p1);
assign add_ln917_2_fu_487_p2 = (sub_ln917_1_fu_481_p2 + urem_ln1184_cast_cast_reg_547);
assign add_ln917_fu_388_p2 = (zext_ln914_2_fu_378_p1 + shl_ln);
assign add_ln919_1_fu_513_p2 = (sub_ln919_1_fu_507_p2 + urem_ln1184_cast_cast_reg_547);
assign add_ln919_fu_446_p2 = (sub_ln919_fu_440_p2 + urem_ln1185_cast_cast_fu_352_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln120_fu_418_p4 = {{add_ln916_fu_382_p2[8:3]}};
assign lshr_ln_fu_368_p4 = {{ap_sig_allocacmp_v66796_load[5:3]}};
assign p_shl13_fu_432_p3 = {{lshr_ln120_fu_418_p4}, {3'd0}};
assign p_shl14_fu_474_p3 = {{add_ln917_1_reg_558}, {3'd0}};
assign p_shl15_fu_398_p3 = {{add_ln917_fu_388_p2}, {3'd0}};
assign p_shl_fu_500_p3 = {{add_ln919_reg_564}, {3'd0}};
assign sub_ln917_1_fu_481_p2 = (p_shl14_fu_474_p3 - zext_ln917_1_fu_471_p1);
assign sub_ln917_fu_406_p2 = (p_shl15_fu_398_p3 - zext_ln917_fu_394_p1);
assign sub_ln919_1_fu_507_p2 = (p_shl_fu_500_p3 - zext_ln919_1_fu_497_p1);
assign sub_ln919_fu_440_p2 = (p_shl13_fu_432_p3 - zext_ln919_fu_428_p1);
assign tmp_fu_458_p3 = v667_fu_452_p2[32'd5];
assign urem_ln1184_cast_cast_fu_348_p1 = urem_ln1184_cast;
assign urem_ln1185_cast_cast_fu_352_p1 = urem_ln1185_cast;
assign v667_fu_452_p2 = (ap_sig_allocacmp_v66796_load + 6'd8);
assign v795_1_address0 = zext_ln914_1_fu_529_p1;
assign v795_1_ce0 = v795_1_ce0_local;
assign v795_1_d0 = v9268_6_q0;
assign v795_1_we0 = v795_1_we0_local;
assign v795_2_address0 = zext_ln914_1_fu_529_p1;
assign v795_2_ce0 = v795_2_ce0_local;
assign v795_2_d0 = v9268_5_q0;
assign v795_2_we0 = v795_2_we0_local;
assign v795_3_address0 = zext_ln914_1_fu_529_p1;
assign v795_3_ce0 = v795_3_ce0_local;
assign v795_3_d0 = v9268_4_q0;
assign v795_3_we0 = v795_3_we0_local;
assign v795_4_address0 = zext_ln914_1_fu_529_p1;
assign v795_4_ce0 = v795_4_ce0_local;
assign v795_4_d0 = v9268_3_q0;
assign v795_4_we0 = v795_4_we0_local;
assign v795_5_address0 = zext_ln914_1_fu_529_p1;
assign v795_5_ce0 = v795_5_ce0_local;
assign v795_5_d0 = v9268_2_q0;
assign v795_5_we0 = v795_5_we0_local;
assign v795_6_address0 = zext_ln914_1_fu_529_p1;
assign v795_6_ce0 = v795_6_ce0_local;
assign v795_6_d0 = v9268_1_q0;
assign v795_6_we0 = v795_6_we0_local;
assign v795_7_address0 = zext_ln914_1_fu_529_p1;
assign v795_7_ce0 = v795_7_ce0_local;
assign v795_7_d0 = v9268_0_q0;
assign v795_7_we0 = v795_7_we0_local;
assign v795_address0 = zext_ln914_1_fu_529_p1;
assign v795_ce0 = v795_ce0_local;
assign v795_d0 = v9268_7_q0;
assign v795_we0 = v795_we0_local;
assign v9268_0_address0 = zext_ln917_2_fu_492_p1;
assign v9268_0_ce0 = v9268_0_ce0_local;
assign v9268_1_address0 = zext_ln919_2_fu_518_p1;
assign v9268_1_ce0 = v9268_1_ce0_local;
assign v9268_2_address0 = zext_ln919_2_fu_518_p1;
assign v9268_2_ce0 = v9268_2_ce0_local;
assign v9268_3_address0 = zext_ln919_2_fu_518_p1;
assign v9268_3_ce0 = v9268_3_ce0_local;
assign v9268_4_address0 = zext_ln919_2_fu_518_p1;
assign v9268_4_ce0 = v9268_4_ce0_local;
assign v9268_5_address0 = zext_ln919_2_fu_518_p1;
assign v9268_5_ce0 = v9268_5_ce0_local;
assign v9268_6_address0 = zext_ln919_2_fu_518_p1;
assign v9268_6_ce0 = v9268_6_ce0_local;
assign v9268_7_address0 = zext_ln919_2_fu_518_p1;
assign v9268_7_ce0 = v9268_7_ce0_local;
assign zext_ln914_1_fu_529_p1 = lshr_ln_reg_553_pp0_iter1_reg;
assign zext_ln914_2_fu_378_p1 = lshr_ln_fu_368_p4;
assign zext_ln914_fu_364_p1 = ap_sig_allocacmp_v66796_load;
assign zext_ln917_1_fu_471_p1 = add_ln917_1_reg_558;
assign zext_ln917_2_fu_492_p1 = add_ln917_2_fu_487_p2;
assign zext_ln917_fu_394_p1 = add_ln917_fu_388_p2;
assign zext_ln919_1_fu_497_p1 = add_ln919_reg_564;
assign zext_ln919_2_fu_518_p1 = add_ln919_1_fu_513_p2;
assign zext_ln919_fu_428_p1 = lshr_ln120_fu_418_p4;
always @ (posedge ap_clk) begin
    urem_ln1184_cast_cast_reg_547[11:3] <= 9'b000000000;
end
endmodule 