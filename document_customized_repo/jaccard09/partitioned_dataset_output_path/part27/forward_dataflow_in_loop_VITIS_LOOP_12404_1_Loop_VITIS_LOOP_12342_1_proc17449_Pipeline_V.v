
module forward_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12342_1_proc17449_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i57_cast_cast_i_cast_cast_i,p_udiv4_i_cast_cast_i,mul_ln12346_i,v7927_i_address0,v7927_i_ce0,v7927_i_we0,v7927_i_d0,v7927_1_i_address0,v7927_1_i_ce0,v7927_1_i_we0,v7927_1_i_d0,v7927_2_i_address0,v7927_2_i_ce0,v7927_2_i_we0,v7927_2_i_d0,v7927_3_i_address0,v7927_3_i_ce0,v7927_3_i_we0,v7927_3_i_d0,zext_ln12342_cast_cast_i,p_udiv6_i_cast_cast_i,v9201_0_0_address0,v9201_0_0_ce0,v9201_0_0_q0,v9201_1_0_address0,v9201_1_0_ce0,v9201_1_0_q0,v9201_0_1_address0,v9201_0_1_ce0,v9201_0_1_q0,v9201_1_1_address0,v9201_1_1_ce0,v9201_1_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [2:0] mul_i57_cast_cast_i_cast_cast_i;
input  [1:0] p_udiv4_i_cast_cast_i;
input  [10:0] mul_ln12346_i;
output  [7:0] v7927_i_address0;
output   v7927_i_ce0;
output   v7927_i_we0;
output  [7:0] v7927_i_d0;
output  [7:0] v7927_1_i_address0;
output   v7927_1_i_ce0;
output   v7927_1_i_we0;
output  [7:0] v7927_1_i_d0;
output  [7:0] v7927_2_i_address0;
output   v7927_2_i_ce0;
output   v7927_2_i_we0;
output  [7:0] v7927_2_i_d0;
output  [7:0] v7927_3_i_address0;
output   v7927_3_i_ce0;
output   v7927_3_i_we0;
output  [7:0] v7927_3_i_d0;
input  [2:0] zext_ln12342_cast_cast_i;
input  [1:0] p_udiv6_i_cast_cast_i;
output  [15:0] v9201_0_0_address0;
output   v9201_0_0_ce0;
input  [7:0] v9201_0_0_q0;
output  [15:0] v9201_1_0_address0;
output   v9201_1_0_ce0;
input  [7:0] v9201_1_0_q0;
output  [15:0] v9201_0_1_address0;
output   v9201_0_1_ce0;
input  [7:0] v9201_0_1_q0;
output  [15:0] v9201_1_1_address0;
output   v9201_1_1_ce0;
input  [7:0] v9201_1_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln12342_fu_450_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [4:0] p_udiv6_i_cast_cast_i_cast_cast_fu_268_p1;
reg   [4:0] p_udiv6_i_cast_cast_i_cast_cast_reg_640;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] lshr_ln_i_fu_346_p4;
reg   [3:0] lshr_ln_i_reg_645;
reg   [3:0] lshr_ln_i_reg_645_pp0_iter1_reg;
wire   [10:0] add_ln12346_fu_376_p2;
reg   [10:0] add_ln12346_reg_651;
wire   [10:0] add_ln12350_fu_396_p2;
reg   [10:0] add_ln12350_reg_657;
reg   [3:0] lshr_ln127_i_reg_663;
reg   [3:0] lshr_ln127_i_reg_663_pp0_iter1_reg;
reg   [4:0] lshr_ln128_i_reg_669;
wire   [0:0] icmp_ln12343_fu_444_p2;
reg   [0:0] icmp_ln12343_reg_674;
reg   [0:0] icmp_ln12342_reg_679;
reg   [0:0] ap_phi_mux_icmp_ln1234348_i_phi_fu_257_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12346_3_fu_537_p1;
wire   [63:0] zext_ln12350_2_fu_548_p1;
wire   [63:0] zext_ln12348_1_fu_562_p1;
wire   [63:0] zext_ln12352_3_fu_573_p1;
wire   [63:0] zext_ln12352_2_fu_611_p1;
reg   [7:0] indvar_flatten45_i_fu_104;
wire   [7:0] add_ln12342_1_fu_438_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten45_i_load;
reg   [4:0] v789946_i_fu_108;
wire   [4:0] select_ln12342_1_fu_334_p3;
reg   [4:0] ap_sig_allocacmp_v789946_i_load;
reg   [4:0] v790047_i_fu_112;
wire   [4:0] add_ln12343_fu_432_p2;
reg   [4:0] ap_sig_allocacmp_v790047_i_load;
reg    v9201_0_0_ce0_local;
reg    v9201_0_1_ce0_local;
reg    v9201_1_0_ce0_local;
reg    v9201_1_1_ce0_local;
reg    v7927_3_i_we0_local;
reg    v7927_3_i_ce0_local;
reg    v7927_2_i_we0_local;
reg    v7927_2_i_ce0_local;
reg    v7927_1_i_we0_local;
reg    v7927_1_i_ce0_local;
reg    v7927_i_we0_local;
reg    v7927_i_ce0_local;
wire  signed [3:0] p_udiv6_i_cast_cast_i_cast_fu_264_p1;
wire  signed [4:0] zext_ln12342_cast_cast_i_cast_fu_272_p1;
wire  signed [3:0] p_udiv4_i_cast_cast_i_cast_fu_280_p1;
wire  signed [4:0] mul_i57_cast_cast_i_cast_cast_i_cast_fu_288_p1;
wire   [4:0] add_ln12342_fu_320_p2;
wire   [5:0] mul_i57_cast_cast_i_cast_cast_i_cast_cast_fu_292_p1;
wire   [5:0] zext_ln12342_fu_342_p1;
wire   [4:0] zext_ln12342_1_fu_356_p1;
wire   [4:0] p_udiv4_i_cast_cast_i_cast_cast_fu_284_p1;
wire   [4:0] empty_387_fu_366_p2;
wire   [10:0] zext_ln12346_fu_372_p1;
wire   [5:0] empty_fu_360_p2;
wire   [4:0] tmp_i_fu_382_p4;
wire   [10:0] zext_ln12350_fu_392_p1;
wire   [4:0] select_ln12342_fu_326_p3;
wire   [5:0] zext_ln12342_cast_cast_i_cast_cast_fu_276_p1;
wire   [5:0] zext_ln12343_fu_402_p1;
wire   [5:0] add_ln12345_fu_416_p2;
wire   [12:0] tmp_392_fu_478_p3;
wire   [15:0] p_shl26_fu_471_p3;
wire   [15:0] zext_ln12346_1_fu_485_p1;
wire   [12:0] tmp_393_fu_502_p3;
wire   [15:0] p_shl_fu_495_p3;
wire   [15:0] zext_ln12350_1_fu_509_p1;
wire   [4:0] zext_ln12343_1_fu_519_p1;
wire   [4:0] add_ln12346_1_fu_522_p2;
wire   [15:0] sub_ln12346_fu_489_p2;
wire   [15:0] zext_ln12346_2_fu_527_p1;
wire   [15:0] add_ln12346_2_fu_531_p2;
wire   [15:0] sub_ln12350_fu_513_p2;
wire   [15:0] add_ln12350_1_fu_542_p2;
wire   [15:0] zext_ln12348_fu_553_p1;
wire   [15:0] add_ln12348_fu_556_p2;
wire   [15:0] add_ln12352_1_fu_567_p2;
wire   [4:0] tmp_fu_585_p3;
wire   [7:0] p_shl28_fu_578_p3;
wire   [7:0] zext_ln12352_fu_592_p1;
wire   [7:0] sub_ln12352_fu_596_p2;
wire   [7:0] zext_ln12352_1_fu_602_p1;
wire   [7:0] add_ln12352_fu_605_p2;
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
reg    ap_condition_457;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 indvar_flatten45_i_fu_104 = 8'd0;
#0 v789946_i_fu_108 = 5'd0;
#0 v790047_i_fu_112 = 5'd0;
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
            indvar_flatten45_i_fu_104 <= add_ln12342_1_fu_438_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten45_i_fu_104 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v789946_i_fu_108 <= select_ln12342_1_fu_334_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v789946_i_fu_108 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v790047_i_fu_112 <= add_ln12343_fu_432_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v790047_i_fu_112 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12346_reg_651 <= add_ln12346_fu_376_p2;
        add_ln12350_reg_657 <= add_ln12350_fu_396_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln12342_reg_679 <= icmp_ln12342_fu_450_p2;
        lshr_ln127_i_reg_663 <= {{select_ln12342_fu_326_p3[4:1]}};
        lshr_ln127_i_reg_663_pp0_iter1_reg <= lshr_ln127_i_reg_663;
        lshr_ln128_i_reg_669 <= {{add_ln12345_fu_416_p2[5:1]}};
        lshr_ln_i_reg_645 <= {{select_ln12342_1_fu_334_p3[4:1]}};
        lshr_ln_i_reg_645_pp0_iter1_reg <= lshr_ln_i_reg_645;
        p_udiv6_i_cast_cast_i_cast_cast_reg_640[3 : 0] <= p_udiv6_i_cast_cast_i_cast_cast_fu_268_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12343_reg_674 <= icmp_ln12343_fu_444_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12342_fu_450_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_457)) begin
            ap_phi_mux_icmp_ln1234348_i_phi_fu_257_p4 = icmp_ln12343_reg_674;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1234348_i_phi_fu_257_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1234348_i_phi_fu_257_p4 = icmp_ln12343_reg_674;
        end
    end else begin
        ap_phi_mux_icmp_ln1234348_i_phi_fu_257_p4 = icmp_ln12343_reg_674;
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
        ap_sig_allocacmp_indvar_flatten45_i_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten45_i_load = indvar_flatten45_i_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v789946_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v789946_i_load = v789946_i_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v790047_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v790047_i_load = v790047_i_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7927_1_i_ce0_local = 1'b1;
    end else begin
        v7927_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7927_1_i_we0_local = 1'b1;
    end else begin
        v7927_1_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7927_2_i_ce0_local = 1'b1;
    end else begin
        v7927_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7927_2_i_we0_local = 1'b1;
    end else begin
        v7927_2_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7927_3_i_ce0_local = 1'b1;
    end else begin
        v7927_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7927_3_i_we0_local = 1'b1;
    end else begin
        v7927_3_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7927_i_ce0_local = 1'b1;
    end else begin
        v7927_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7927_i_we0_local = 1'b1;
    end else begin
        v7927_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9201_0_0_ce0_local = 1'b1;
    end else begin
        v9201_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9201_0_1_ce0_local = 1'b1;
    end else begin
        v9201_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9201_1_0_ce0_local = 1'b1;
    end else begin
        v9201_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9201_1_1_ce0_local = 1'b1;
    end else begin
        v9201_1_1_ce0_local = 1'b0;
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
assign add_ln12342_1_fu_438_p2 = (ap_sig_allocacmp_indvar_flatten45_i_load + 8'd1);
assign add_ln12342_fu_320_p2 = (ap_sig_allocacmp_v789946_i_load + 5'd2);
assign add_ln12343_fu_432_p2 = (select_ln12342_fu_326_p3 + 5'd2);
assign add_ln12345_fu_416_p2 = (zext_ln12342_cast_cast_i_cast_cast_fu_276_p1 + zext_ln12343_fu_402_p1);
assign add_ln12346_1_fu_522_p2 = (zext_ln12343_1_fu_519_p1 + p_udiv6_i_cast_cast_i_cast_cast_reg_640);
assign add_ln12346_2_fu_531_p2 = (sub_ln12346_fu_489_p2 + zext_ln12346_2_fu_527_p1);
assign add_ln12346_fu_376_p2 = (mul_ln12346_i + zext_ln12346_fu_372_p1);
assign add_ln12348_fu_556_p2 = (sub_ln12346_fu_489_p2 + zext_ln12348_fu_553_p1);
assign add_ln12350_1_fu_542_p2 = (sub_ln12350_fu_513_p2 + zext_ln12346_2_fu_527_p1);
assign add_ln12350_fu_396_p2 = (mul_ln12346_i + zext_ln12350_fu_392_p1);
assign add_ln12352_1_fu_567_p2 = (sub_ln12350_fu_513_p2 + zext_ln12348_fu_553_p1);
assign add_ln12352_fu_605_p2 = (sub_ln12352_fu_596_p2 + zext_ln12352_1_fu_602_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_457 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12342_reg_679 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_387_fu_366_p2 = (zext_ln12342_1_fu_356_p1 + p_udiv4_i_cast_cast_i_cast_cast_fu_284_p1);
assign empty_fu_360_p2 = (mul_i57_cast_cast_i_cast_cast_i_cast_cast_fu_292_p1 + zext_ln12342_fu_342_p1);
assign icmp_ln12342_fu_450_p2 = ((ap_sig_allocacmp_indvar_flatten45_i_load == 8'd195) ? 1'b1 : 1'b0);
assign icmp_ln12343_fu_444_p2 = ((add_ln12343_fu_432_p2 < 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln_i_fu_346_p4 = {{select_ln12342_1_fu_334_p3[4:1]}};
assign mul_i57_cast_cast_i_cast_cast_i_cast_cast_fu_292_p1 = $unsigned(mul_i57_cast_cast_i_cast_cast_i_cast_fu_288_p1);
assign mul_i57_cast_cast_i_cast_cast_i_cast_fu_288_p1 = $signed(mul_i57_cast_cast_i_cast_cast_i);
assign p_shl26_fu_471_p3 = {{add_ln12346_reg_651}, {5'd0}};
assign p_shl28_fu_578_p3 = {{lshr_ln_i_reg_645_pp0_iter1_reg}, {4'd0}};
assign p_shl_fu_495_p3 = {{add_ln12350_reg_657}, {5'd0}};
assign p_udiv4_i_cast_cast_i_cast_cast_fu_284_p1 = $unsigned(p_udiv4_i_cast_cast_i_cast_fu_280_p1);
assign p_udiv4_i_cast_cast_i_cast_fu_280_p1 = $signed(p_udiv4_i_cast_cast_i);
assign p_udiv6_i_cast_cast_i_cast_cast_fu_268_p1 = $unsigned(p_udiv6_i_cast_cast_i_cast_fu_264_p1);
assign p_udiv6_i_cast_cast_i_cast_fu_264_p1 = $signed(p_udiv6_i_cast_cast_i);
assign select_ln12342_1_fu_334_p3 = ((ap_phi_mux_icmp_ln1234348_i_phi_fu_257_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v789946_i_load : add_ln12342_fu_320_p2);
assign select_ln12342_fu_326_p3 = ((ap_phi_mux_icmp_ln1234348_i_phi_fu_257_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v790047_i_load : 5'd0);
assign sub_ln12346_fu_489_p2 = (p_shl26_fu_471_p3 - zext_ln12346_1_fu_485_p1);
assign sub_ln12350_fu_513_p2 = (p_shl_fu_495_p3 - zext_ln12350_1_fu_509_p1);
assign sub_ln12352_fu_596_p2 = (p_shl28_fu_578_p3 - zext_ln12352_fu_592_p1);
assign tmp_392_fu_478_p3 = {{add_ln12346_reg_651}, {2'd0}};
assign tmp_393_fu_502_p3 = {{add_ln12350_reg_657}, {2'd0}};
assign tmp_fu_585_p3 = {{lshr_ln_i_reg_645_pp0_iter1_reg}, {1'd0}};
assign tmp_i_fu_382_p4 = {{empty_fu_360_p2[5:1]}};
assign v7927_1_i_address0 = zext_ln12352_2_fu_611_p1;
assign v7927_1_i_ce0 = v7927_1_i_ce0_local;
assign v7927_1_i_d0 = v9201_1_0_q0;
assign v7927_1_i_we0 = v7927_1_i_we0_local;
assign v7927_2_i_address0 = zext_ln12352_2_fu_611_p1;
assign v7927_2_i_ce0 = v7927_2_i_ce0_local;
assign v7927_2_i_d0 = v9201_0_1_q0;
assign v7927_2_i_we0 = v7927_2_i_we0_local;
assign v7927_3_i_address0 = zext_ln12352_2_fu_611_p1;
assign v7927_3_i_ce0 = v7927_3_i_ce0_local;
assign v7927_3_i_d0 = v9201_0_0_q0;
assign v7927_3_i_we0 = v7927_3_i_we0_local;
assign v7927_i_address0 = zext_ln12352_2_fu_611_p1;
assign v7927_i_ce0 = v7927_i_ce0_local;
assign v7927_i_d0 = v9201_1_1_q0;
assign v7927_i_we0 = v7927_i_we0_local;
assign v9201_0_0_address0 = zext_ln12346_3_fu_537_p1;
assign v9201_0_0_ce0 = v9201_0_0_ce0_local;
assign v9201_0_1_address0 = zext_ln12348_1_fu_562_p1;
assign v9201_0_1_ce0 = v9201_0_1_ce0_local;
assign v9201_1_0_address0 = zext_ln12350_2_fu_548_p1;
assign v9201_1_0_ce0 = v9201_1_0_ce0_local;
assign v9201_1_1_address0 = zext_ln12352_3_fu_573_p1;
assign v9201_1_1_ce0 = v9201_1_1_ce0_local;
assign zext_ln12342_1_fu_356_p1 = lshr_ln_i_fu_346_p4;
assign zext_ln12342_cast_cast_i_cast_cast_fu_276_p1 = $unsigned(zext_ln12342_cast_cast_i_cast_fu_272_p1);
assign zext_ln12342_cast_cast_i_cast_fu_272_p1 = $signed(zext_ln12342_cast_cast_i);
assign zext_ln12342_fu_342_p1 = select_ln12342_1_fu_334_p3;
assign zext_ln12343_1_fu_519_p1 = lshr_ln127_i_reg_663;
assign zext_ln12343_fu_402_p1 = select_ln12342_fu_326_p3;
assign zext_ln12346_1_fu_485_p1 = tmp_392_fu_478_p3;
assign zext_ln12346_2_fu_527_p1 = add_ln12346_1_fu_522_p2;
assign zext_ln12346_3_fu_537_p1 = add_ln12346_2_fu_531_p2;
assign zext_ln12346_fu_372_p1 = empty_387_fu_366_p2;
assign zext_ln12348_1_fu_562_p1 = add_ln12348_fu_556_p2;
assign zext_ln12348_fu_553_p1 = lshr_ln128_i_reg_669;
assign zext_ln12350_1_fu_509_p1 = tmp_393_fu_502_p3;
assign zext_ln12350_2_fu_548_p1 = add_ln12350_1_fu_542_p2;
assign zext_ln12350_fu_392_p1 = tmp_i_fu_382_p4;
assign zext_ln12352_1_fu_602_p1 = lshr_ln127_i_reg_663_pp0_iter1_reg;
assign zext_ln12352_2_fu_611_p1 = add_ln12352_fu_605_p2;
assign zext_ln12352_3_fu_573_p1 = add_ln12352_1_fu_567_p2;
assign zext_ln12352_fu_592_p1 = tmp_fu_585_p3;
always @ (posedge ap_clk) begin
    p_udiv6_i_cast_cast_i_cast_cast_reg_640[4] <= 1'b0;
end
endmodule 
