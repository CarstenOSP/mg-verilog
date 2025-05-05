module forward_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_433_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v16216_7_address0,v16216_7_ce0,v16216_7_we0,v16216_7_d0,v16216_6_address0,v16216_6_ce0,v16216_6_we0,v16216_6_d0,v16216_5_address0,v16216_5_ce0,v16216_5_we0,v16216_5_d0,v16216_4_address0,v16216_4_ce0,v16216_4_we0,v16216_4_d0,v16216_3_address0,v16216_3_ce0,v16216_3_we0,v16216_3_d0,v16216_2_address0,v16216_2_ce0,v16216_2_we0,v16216_2_d0,v16216_1_address0,v16216_1_ce0,v16216_1_we0,v16216_1_d0,v16216_0_address0,v16216_0_ce0,v16216_0_we0,v16216_0_d0,v625_7_address0,v625_7_ce0,v625_7_q0,p_read,v625_6_address0,v625_6_ce0,v625_6_q0,v625_5_address0,v625_5_ce0,v625_5_q0,v625_4_address0,v625_4_ce0,v625_4_q0,v625_3_address0,v625_3_ce0,v625_3_q0,v625_2_address0,v625_2_ce0,v625_2_q0,v625_1_address0,v625_1_ce0,v625_1_q0,v625_address0,v625_ce0,v625_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v16216_7_address0;
output   v16216_7_ce0;
output   v16216_7_we0;
output  [7:0] v16216_7_d0;
output  [7:0] v16216_6_address0;
output   v16216_6_ce0;
output   v16216_6_we0;
output  [7:0] v16216_6_d0;
output  [7:0] v16216_5_address0;
output   v16216_5_ce0;
output   v16216_5_we0;
output  [7:0] v16216_5_d0;
output  [7:0] v16216_4_address0;
output   v16216_4_ce0;
output   v16216_4_we0;
output  [7:0] v16216_4_d0;
output  [7:0] v16216_3_address0;
output   v16216_3_ce0;
output   v16216_3_we0;
output  [7:0] v16216_3_d0;
output  [7:0] v16216_2_address0;
output   v16216_2_ce0;
output   v16216_2_we0;
output  [7:0] v16216_2_d0;
output  [7:0] v16216_1_address0;
output   v16216_1_ce0;
output   v16216_1_we0;
output  [7:0] v16216_1_d0;
output  [7:0] v16216_0_address0;
output   v16216_0_ce0;
output   v16216_0_we0;
output  [7:0] v16216_0_d0;
output  [1:0] v625_7_address0;
output   v625_7_ce0;
input  [7:0] v625_7_q0;
input  [5:0] p_read;
output  [1:0] v625_6_address0;
output   v625_6_ce0;
input  [7:0] v625_6_q0;
output  [1:0] v625_5_address0;
output   v625_5_ce0;
input  [7:0] v625_5_q0;
output  [1:0] v625_4_address0;
output   v625_4_ce0;
input  [7:0] v625_4_q0;
output  [1:0] v625_3_address0;
output   v625_3_ce0;
input  [7:0] v625_3_q0;
output  [1:0] v625_2_address0;
output   v625_2_ce0;
input  [7:0] v625_2_q0;
output  [1:0] v625_1_address0;
output   v625_1_ce0;
input  [7:0] v625_1_q0;
output  [1:0] v625_address0;
output   v625_ce0;
input  [7:0] v625_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_394_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [7:0] shl_ln_fu_330_p3;
reg   [7:0] shl_ln_reg_437;
reg    ap_block_pp0_stage0_11001;
wire   [2:0] lshr_ln_fu_350_p4;
reg   [2:0] lshr_ln_reg_442;
reg   [7:0] lshr_ln98_reg_452;
wire   [63:0] zext_ln433_2_fu_360_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln437_fu_425_p1;
wire   [63:0] zext_ln439_fu_415_p1;
reg   [5:0] v15793_fu_96;
wire   [5:0] v157_fu_388_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v15793_load;
reg    v625_7_ce0_local;
reg    v625_6_ce0_local;
reg    v625_5_ce0_local;
reg    v625_4_ce0_local;
reg    v625_3_ce0_local;
reg    v625_2_ce0_local;
reg    v625_1_ce0_local;
reg    v625_ce0_local;
reg    v16216_0_we0_local;
reg    v16216_0_ce0_local;
reg    v16216_1_we0_local;
reg    v16216_1_ce0_local;
reg    v16216_2_we0_local;
reg    v16216_2_ce0_local;
reg    v16216_3_we0_local;
reg    v16216_3_ce0_local;
reg    v16216_4_we0_local;
reg    v16216_4_ce0_local;
reg    v16216_5_we0_local;
reg    v16216_5_ce0_local;
reg    v16216_6_we0_local;
reg    v16216_6_ce0_local;
reg    v16216_7_we0_local;
reg    v16216_7_ce0_local;
wire   [10:0] rem_fu_322_p3;
wire   [10:0] zext_ln433_fu_346_p1;
wire   [10:0] add_ln436_fu_372_p2;
wire   [7:0] zext_ln433_1_fu_407_p1;
wire   [7:0] add_ln436_1_fu_410_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_208;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 v15793_fu_96 = 6'd0;
end
forward_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_208)) begin
        v15793_fu_96 <= v157_fu_388_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln98_reg_452 <= {{add_ln436_fu_372_p2[10:3]}};
        lshr_ln_reg_442 <= {{ap_sig_allocacmp_v15793_load[5:3]}};
        shl_ln_reg_437[7 : 2] <= shl_ln_fu_330_p3[7 : 2];
    end
end
always @ (*) begin
    if (((tmp_fu_394_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15793_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v15793_load = v15793_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_0_ce0_local = 1'b1;
    end else begin
        v16216_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_0_we0_local = 1'b1;
    end else begin
        v16216_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_1_ce0_local = 1'b1;
    end else begin
        v16216_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_1_we0_local = 1'b1;
    end else begin
        v16216_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_2_ce0_local = 1'b1;
    end else begin
        v16216_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_2_we0_local = 1'b1;
    end else begin
        v16216_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_3_ce0_local = 1'b1;
    end else begin
        v16216_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_3_we0_local = 1'b1;
    end else begin
        v16216_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_4_ce0_local = 1'b1;
    end else begin
        v16216_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_4_we0_local = 1'b1;
    end else begin
        v16216_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_5_ce0_local = 1'b1;
    end else begin
        v16216_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_5_we0_local = 1'b1;
    end else begin
        v16216_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_6_ce0_local = 1'b1;
    end else begin
        v16216_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_6_we0_local = 1'b1;
    end else begin
        v16216_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_7_ce0_local = 1'b1;
    end else begin
        v16216_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16216_7_we0_local = 1'b1;
    end else begin
        v16216_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v625_1_ce0_local = 1'b1;
    end else begin
        v625_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v625_2_ce0_local = 1'b1;
    end else begin
        v625_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v625_3_ce0_local = 1'b1;
    end else begin
        v625_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v625_4_ce0_local = 1'b1;
    end else begin
        v625_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v625_5_ce0_local = 1'b1;
    end else begin
        v625_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v625_6_ce0_local = 1'b1;
    end else begin
        v625_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v625_7_ce0_local = 1'b1;
    end else begin
        v625_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v625_ce0_local = 1'b1;
    end else begin
        v625_ce0_local = 1'b0;
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
assign add_ln436_1_fu_410_p2 = (shl_ln_reg_437 + zext_ln433_1_fu_407_p1);
assign add_ln436_fu_372_p2 = (rem_fu_322_p3 + zext_ln433_fu_346_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_208 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln_fu_350_p4 = {{ap_sig_allocacmp_v15793_load[5:3]}};
assign rem_fu_322_p3 = {{p_read}, {5'd0}};
assign shl_ln_fu_330_p3 = {{p_read}, {2'd0}};
assign tmp_fu_394_p3 = v157_fu_388_p2[32'd5];
assign v157_fu_388_p2 = (ap_sig_allocacmp_v15793_load + 6'd8);
assign v16216_0_address0 = zext_ln437_fu_425_p1;
assign v16216_0_ce0 = v16216_0_ce0_local;
assign v16216_0_d0 = v625_7_q0;
assign v16216_0_we0 = v16216_0_we0_local;
assign v16216_1_address0 = zext_ln439_fu_415_p1;
assign v16216_1_ce0 = v16216_1_ce0_local;
assign v16216_1_d0 = v625_6_q0;
assign v16216_1_we0 = v16216_1_we0_local;
assign v16216_2_address0 = zext_ln439_fu_415_p1;
assign v16216_2_ce0 = v16216_2_ce0_local;
assign v16216_2_d0 = v625_5_q0;
assign v16216_2_we0 = v16216_2_we0_local;
assign v16216_3_address0 = zext_ln439_fu_415_p1;
assign v16216_3_ce0 = v16216_3_ce0_local;
assign v16216_3_d0 = v625_4_q0;
assign v16216_3_we0 = v16216_3_we0_local;
assign v16216_4_address0 = zext_ln439_fu_415_p1;
assign v16216_4_ce0 = v16216_4_ce0_local;
assign v16216_4_d0 = v625_3_q0;
assign v16216_4_we0 = v16216_4_we0_local;
assign v16216_5_address0 = zext_ln439_fu_415_p1;
assign v16216_5_ce0 = v16216_5_ce0_local;
assign v16216_5_d0 = v625_2_q0;
assign v16216_5_we0 = v16216_5_we0_local;
assign v16216_6_address0 = zext_ln439_fu_415_p1;
assign v16216_6_ce0 = v16216_6_ce0_local;
assign v16216_6_d0 = v625_1_q0;
assign v16216_6_we0 = v16216_6_we0_local;
assign v16216_7_address0 = zext_ln439_fu_415_p1;
assign v16216_7_ce0 = v16216_7_ce0_local;
assign v16216_7_d0 = v625_q0;
assign v16216_7_we0 = v16216_7_we0_local;
assign v625_1_address0 = zext_ln433_2_fu_360_p1;
assign v625_1_ce0 = v625_1_ce0_local;
assign v625_2_address0 = zext_ln433_2_fu_360_p1;
assign v625_2_ce0 = v625_2_ce0_local;
assign v625_3_address0 = zext_ln433_2_fu_360_p1;
assign v625_3_ce0 = v625_3_ce0_local;
assign v625_4_address0 = zext_ln433_2_fu_360_p1;
assign v625_4_ce0 = v625_4_ce0_local;
assign v625_5_address0 = zext_ln433_2_fu_360_p1;
assign v625_5_ce0 = v625_5_ce0_local;
assign v625_6_address0 = zext_ln433_2_fu_360_p1;
assign v625_6_ce0 = v625_6_ce0_local;
assign v625_7_address0 = zext_ln433_2_fu_360_p1;
assign v625_7_ce0 = v625_7_ce0_local;
assign v625_address0 = zext_ln433_2_fu_360_p1;
assign v625_ce0 = v625_ce0_local;
assign zext_ln433_1_fu_407_p1 = lshr_ln_reg_442;
assign zext_ln433_2_fu_360_p1 = lshr_ln_fu_350_p4;
assign zext_ln433_fu_346_p1 = ap_sig_allocacmp_v15793_load;
assign zext_ln437_fu_425_p1 = add_ln436_1_fu_410_p2;
assign zext_ln439_fu_415_p1 = lshr_ln98_reg_452;
always @ (posedge ap_clk) begin
    shl_ln_reg_437[1:0] <= 2'b00;
end
endmodule 