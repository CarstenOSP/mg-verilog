
module forward_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,zext_ln9296_cast_cast,v7300_address0,v7300_ce0,v7300_we0,v7300_d0,v7300_1_address0,v7300_1_ce0,v7300_1_we0,v7300_1_d0,zext_ln9296_1_cast_cast,v9016_0_address0,v9016_0_ce0,v9016_0_q0,v9016_1_address0,v9016_1_ce0,v9016_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i;
input  [3:0] zext_ln9296_cast_cast;
output  [13:0] v7300_address0;
output   v7300_ce0;
output   v7300_we0;
output  [7:0] v7300_d0;
output  [13:0] v7300_1_address0;
output   v7300_1_ce0;
output   v7300_1_we0;
output  [7:0] v7300_1_d0;
input  [3:0] zext_ln9296_1_cast_cast;
output  [17:0] v9016_0_address0;
output   v9016_0_ce0;
input  [7:0] v9016_0_q0;
output  [17:0] v9016_1_address0;
output   v9016_1_ce0;
input  [7:0] v9016_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln9296_fu_330_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln929727_reg_188;
reg   [0:0] icmp_ln929826_reg_199;
wire   [5:0] zext_ln9296_1_cast_cast_cast_cast_fu_214_p1;
reg   [5:0] zext_ln9296_1_cast_cast_cast_cast_reg_543;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] zext_ln9296_cast_cast_cast_cast_fu_222_p1;
reg   [5:0] zext_ln9296_cast_cast_cast_cast_reg_548;
reg   [3:0] lshr_ln_reg_553;
reg   [3:0] lshr_ln_reg_553_pp0_iter1_reg;
reg   [5:0] tmp_s_reg_558;
wire   [0:0] icmp_ln9297_fu_324_p2;
reg   [0:0] icmp_ln9297_reg_563;
reg   [0:0] icmp_ln9296_reg_568;
reg   [0:0] icmp_ln9296_reg_568_pp0_iter1_reg;
wire   [4:0] v7274_mid2_fu_389_p3;
reg   [4:0] v7274_mid2_reg_572;
reg   [4:0] v7274_mid2_reg_572_pp0_iter2_reg;
reg   [4:0] v7274_mid2_reg_572_pp0_iter3_reg;
wire   [4:0] v7273_fu_397_p3;
reg   [4:0] v7273_reg_578;
wire   [0:0] icmp_ln9298_fu_433_p2;
reg   [0:0] icmp_ln9298_reg_583;
reg   [0:0] ap_phi_mux_icmp_ln929727_phi_fu_191_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln929826_phi_fu_202_p4;
wire   [63:0] zext_ln9301_4_fu_476_p1;
wire   [63:0] zext_ln9303_4_fu_481_p1;
reg   [13:0] indvar_flatten1221_fu_96;
wire   [13:0] add_ln9296_1_fu_318_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1221_load;
reg   [5:0] v727222_fu_100;
wire   [5:0] v7272_fu_266_p3;
reg   [5:0] ap_sig_allocacmp_v727222_load;
reg   [9:0] indvar_flatten23_fu_104;
wire   [9:0] select_ln9297_1_fu_310_p3;
reg   [9:0] ap_sig_allocacmp_indvar_flatten23_load;
reg   [4:0] v727324_fu_108;
reg   [4:0] v727425_fu_112;
wire   [4:0] v7274_fu_427_p2;
reg    v9016_0_ce0_local;
reg    v9016_1_ce0_local;
reg    v7300_1_we0_local;
reg    v7300_1_ce0_local;
reg    v7300_we0_local;
reg    v7300_ce0_local;
wire  signed [4:0] zext_ln9296_1_cast_cast_cast_fu_210_p1;
wire  signed [4:0] zext_ln9296_cast_cast_cast_fu_218_p1;
wire   [5:0] add_ln9296_fu_260_p2;
wire   [6:0] zext_ln9296_fu_274_p1;
wire   [6:0] empty_102_fu_288_p2;
wire   [9:0] add_ln9297_1_fu_304_p2;
wire   [0:0] xor_ln9296_fu_365_p2;
wire   [4:0] select_ln9296_fu_357_p3;
wire   [0:0] and_ln9296_fu_371_p2;
wire   [0:0] empty_fu_383_p2;
wire   [4:0] add_ln9297_fu_377_p2;
wire   [5:0] mul_ln9301_fu_408_p0;
wire   [6:0] mul_ln9301_fu_408_p1;
wire   [5:0] zext_ln9297_fu_414_p1;
wire   [5:0] empty_103_fu_418_p2;
wire   [3:0] mul_ln9303_fu_452_p0;
wire   [5:0] mul_ln9303_fu_452_p1;
wire   [5:0] zext_ln9298_fu_461_p1;
wire   [5:0] add_ln9300_fu_464_p2;
wire   [17:0] grp_fu_486_p4;
wire   [13:0] grp_fu_497_p4;
wire   [11:0] mul_ln9301_fu_408_p2;
wire   [5:0] grp_fu_486_p1;
wire   [5:0] grp_fu_486_p2;
wire   [5:0] grp_fu_486_p3;
wire   [8:0] mul_ln9303_fu_452_p2;
wire   [4:0] grp_fu_497_p1;
wire   [4:0] grp_fu_497_p2;
wire   [4:0] grp_fu_497_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [11:0] grp_fu_486_p10;
wire   [17:0] grp_fu_486_p30;
wire   [8:0] grp_fu_497_p10;
wire   [13:0] grp_fu_497_p30;
wire   [11:0] mul_ln9301_fu_408_p00;
wire   [8:0] mul_ln9303_fu_452_p00;
reg    ap_condition_430;
reg    ap_condition_435;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 indvar_flatten1221_fu_96 = 14'd0;
#0 v727222_fu_100 = 6'd0;
#0 indvar_flatten23_fu_104 = 10'd0;
#0 v727324_fu_108 = 5'd0;
#0 v727425_fu_112 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_mul_6ns_7ns_12_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.dout_WIDTH( 12 ))
mul_6ns_7ns_12_1_1_U2949(.din0(mul_ln9301_fu_408_p0),.din1(mul_ln9301_fu_408_p1),.dout(mul_ln9301_fu_408_p2));
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U2950(.din0(mul_ln9303_fu_452_p0),.din1(mul_ln9303_fu_452_p1),.dout(mul_ln9303_fu_452_p2));
forward_ama_addmuladd_12ns_6ns_6ns_6ns_18_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 12 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.din3_WIDTH( 6 ),.dout_WIDTH( 18 ))
ama_addmuladd_12ns_6ns_6ns_6ns_18_4_1_U2951(.clk(ap_clk),.reset(ap_rst),.din0(mul_ln9301_fu_408_p2),.din1(grp_fu_486_p1),.din2(grp_fu_486_p2),.din3(grp_fu_486_p3),.ce(1'b1),.dout(grp_fu_486_p4));
forward_ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 14 ))
ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1_U2952(.clk(ap_clk),.reset(ap_rst),.din0(mul_ln9303_fu_452_p2),.din1(grp_fu_497_p1),.din2(grp_fu_497_p2),.din3(grp_fu_497_p3),.ce(1'b1),.dout(grp_fu_497_p4));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_435)) begin
            icmp_ln929727_reg_188 <= icmp_ln9297_reg_563;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln929727_reg_188 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln9296_reg_568_pp0_iter1_reg == 1'd0))) begin
        icmp_ln929826_reg_199 <= icmp_ln9298_reg_583;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln929826_reg_199 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1221_fu_96 <= add_ln9296_1_fu_318_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1221_fu_96 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten23_fu_104 <= select_ln9297_1_fu_310_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_fu_104 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v727222_fu_100 <= v7272_fu_266_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v727222_fu_100 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v727324_fu_108 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v727324_fu_108 <= v7273_fu_397_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v727425_fu_112 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v727425_fu_112 <= v7274_fu_427_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln9296_reg_568 <= icmp_ln9296_fu_330_p2;
        icmp_ln9296_reg_568_pp0_iter1_reg <= icmp_ln9296_reg_568;
        lshr_ln_reg_553 <= {{v7272_fu_266_p3[4:1]}};
        lshr_ln_reg_553_pp0_iter1_reg <= lshr_ln_reg_553;
        tmp_s_reg_558 <= {{empty_102_fu_288_p2[6:1]}};
        v7273_reg_578 <= v7273_fu_397_p3;
        v7274_mid2_reg_572 <= v7274_mid2_fu_389_p3;
        zext_ln9296_1_cast_cast_cast_cast_reg_543[4 : 0] <= zext_ln9296_1_cast_cast_cast_cast_fu_214_p1[4 : 0];
        zext_ln9296_cast_cast_cast_cast_reg_548[4 : 0] <= zext_ln9296_cast_cast_cast_cast_fu_222_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        v7274_mid2_reg_572_pp0_iter2_reg <= v7274_mid2_reg_572;
        v7274_mid2_reg_572_pp0_iter3_reg <= v7274_mid2_reg_572_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9297_reg_563 <= icmp_ln9297_fu_324_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9298_reg_583 <= icmp_ln9298_fu_433_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9296_fu_330_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_430)) begin
            ap_phi_mux_icmp_ln929727_phi_fu_191_p4 = icmp_ln9297_reg_563;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln929727_phi_fu_191_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln929727_phi_fu_191_p4 = icmp_ln9297_reg_563;
        end
    end else begin
        ap_phi_mux_icmp_ln929727_phi_fu_191_p4 = icmp_ln9297_reg_563;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln9296_reg_568_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln929826_phi_fu_202_p4 = icmp_ln9298_reg_583;
    end else begin
        ap_phi_mux_icmp_ln929826_phi_fu_202_p4 = icmp_ln929826_reg_199;
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1221_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_load = indvar_flatten1221_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten23_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten23_load = indvar_flatten23_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v727222_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v727222_load = v727222_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7300_1_ce0_local = 1'b1;
    end else begin
        v7300_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7300_1_we0_local = 1'b1;
    end else begin
        v7300_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7300_ce0_local = 1'b1;
    end else begin
        v7300_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7300_we0_local = 1'b1;
    end else begin
        v7300_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9016_0_ce0_local = 1'b1;
    end else begin
        v9016_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9016_1_ce0_local = 1'b1;
    end else begin
        v9016_1_ce0_local = 1'b0;
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
assign add_ln9296_1_fu_318_p2 = (ap_sig_allocacmp_indvar_flatten1221_load + 14'd1);
assign add_ln9296_fu_260_p2 = (ap_sig_allocacmp_v727222_load + 6'd2);
assign add_ln9297_1_fu_304_p2 = (ap_sig_allocacmp_indvar_flatten23_load + 10'd1);
assign add_ln9297_fu_377_p2 = (select_ln9296_fu_357_p3 + 5'd1);
assign add_ln9300_fu_464_p2 = (zext_ln9296_1_cast_cast_cast_cast_reg_543 + zext_ln9298_fu_461_p1);
assign and_ln9296_fu_371_p2 = (xor_ln9296_fu_365_p2 & ap_phi_mux_icmp_ln929826_phi_fu_202_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_430 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln9296_reg_568 == 1'd0));
end
always @ (*) begin
    ap_condition_435 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln9296_reg_568 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_102_fu_288_p2 = (mul_i + zext_ln9296_fu_274_p1);
assign empty_103_fu_418_p2 = (zext_ln9296_cast_cast_cast_cast_reg_548 + zext_ln9297_fu_414_p1);
assign empty_fu_383_p2 = (icmp_ln929727_reg_188 | and_ln9296_fu_371_p2);
assign grp_fu_486_p1 = grp_fu_486_p10;
assign grp_fu_486_p10 = empty_103_fu_418_p2;
assign grp_fu_486_p2 = 18'd54;
assign grp_fu_486_p3 = grp_fu_486_p30;
assign grp_fu_486_p30 = add_ln9300_fu_464_p2;
assign grp_fu_497_p1 = grp_fu_497_p10;
assign grp_fu_497_p10 = v7273_reg_578;
assign grp_fu_497_p2 = 14'd27;
assign grp_fu_497_p3 = grp_fu_497_p30;
assign grp_fu_497_p30 = v7274_mid2_reg_572_pp0_iter3_reg;
assign icmp_ln9296_fu_330_p2 = ((ap_sig_allocacmp_indvar_flatten1221_load == 14'd11663) ? 1'b1 : 1'b0);
assign icmp_ln9297_fu_324_p2 = ((select_ln9297_1_fu_310_p3 == 10'd729) ? 1'b1 : 1'b0);
assign icmp_ln9298_fu_433_p2 = ((v7274_fu_427_p2 == 5'd27) ? 1'b1 : 1'b0);
assign mul_ln9301_fu_408_p0 = mul_ln9301_fu_408_p00;
assign mul_ln9301_fu_408_p00 = tmp_s_reg_558;
assign mul_ln9301_fu_408_p1 = 12'd54;
assign mul_ln9303_fu_452_p0 = mul_ln9303_fu_452_p00;
assign mul_ln9303_fu_452_p00 = lshr_ln_reg_553_pp0_iter1_reg;
assign mul_ln9303_fu_452_p1 = 9'd27;
assign select_ln9296_fu_357_p3 = ((icmp_ln929727_reg_188[0:0] == 1'b1) ? 5'd0 : v727324_fu_108);
assign select_ln9297_1_fu_310_p3 = ((ap_phi_mux_icmp_ln929727_phi_fu_191_p4[0:0] == 1'b1) ? 10'd1 : add_ln9297_1_fu_304_p2);
assign v7272_fu_266_p3 = ((ap_phi_mux_icmp_ln929727_phi_fu_191_p4[0:0] == 1'b1) ? add_ln9296_fu_260_p2 : ap_sig_allocacmp_v727222_load);
assign v7273_fu_397_p3 = ((and_ln9296_fu_371_p2[0:0] == 1'b1) ? add_ln9297_fu_377_p2 : select_ln9296_fu_357_p3);
assign v7274_fu_427_p2 = (v7274_mid2_fu_389_p3 + 5'd1);
assign v7274_mid2_fu_389_p3 = ((empty_fu_383_p2[0:0] == 1'b1) ? 5'd0 : v727425_fu_112);
assign v7300_1_address0 = zext_ln9303_4_fu_481_p1;
assign v7300_1_ce0 = v7300_1_ce0_local;
assign v7300_1_d0 = v9016_0_q0;
assign v7300_1_we0 = v7300_1_we0_local;
assign v7300_address0 = zext_ln9303_4_fu_481_p1;
assign v7300_ce0 = v7300_ce0_local;
assign v7300_d0 = v9016_1_q0;
assign v7300_we0 = v7300_we0_local;
assign v9016_0_address0 = zext_ln9301_4_fu_476_p1;
assign v9016_0_ce0 = v9016_0_ce0_local;
assign v9016_1_address0 = zext_ln9301_4_fu_476_p1;
assign v9016_1_ce0 = v9016_1_ce0_local;
assign xor_ln9296_fu_365_p2 = (icmp_ln929727_reg_188 ^ 1'd1);
assign zext_ln9296_1_cast_cast_cast_cast_fu_214_p1 = $unsigned(zext_ln9296_1_cast_cast_cast_fu_210_p1);
assign zext_ln9296_1_cast_cast_cast_fu_210_p1 = $signed(zext_ln9296_1_cast_cast);
assign zext_ln9296_cast_cast_cast_cast_fu_222_p1 = $unsigned(zext_ln9296_cast_cast_cast_fu_218_p1);
assign zext_ln9296_cast_cast_cast_fu_218_p1 = $signed(zext_ln9296_cast_cast);
assign zext_ln9296_fu_274_p1 = v7272_fu_266_p3;
assign zext_ln9297_fu_414_p1 = v7273_fu_397_p3;
assign zext_ln9298_fu_461_p1 = v7274_mid2_reg_572_pp0_iter2_reg;
assign zext_ln9301_4_fu_476_p1 = grp_fu_486_p4;
assign zext_ln9303_4_fu_481_p1 = grp_fu_497_p4;
always @ (posedge ap_clk) begin
    zext_ln9296_1_cast_cast_cast_cast_reg_543[5] <= 1'b0;
    zext_ln9296_cast_cast_cast_cast_reg_548[5] <= 1'b0;
end
endmodule 
