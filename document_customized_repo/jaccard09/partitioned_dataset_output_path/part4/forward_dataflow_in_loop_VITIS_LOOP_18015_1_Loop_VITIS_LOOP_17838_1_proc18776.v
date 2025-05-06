
module forward_dataflow_in_loop_VITIS_LOOP_18015_1_Loop_VITIS_LOOP_17838_1_proc18776 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v14062_address0,v14062_ce0,v14062_we0,v14062_d0,v14062_1_address0,v14062_1_ce0,v14062_1_we0,v14062_1_d0,v14062_2_address0,v14062_2_ce0,v14062_2_we0,v14062_2_d0,v14062_3_address0,v14062_3_ce0,v14062_3_we0,v14062_3_d0,v14056,v15405_0_0_address0,v15405_0_0_ce0,v15405_0_0_q0,v15405_0_1_address0,v15405_0_1_ce0,v15405_0_1_q0,v15405_1_0_address0,v15405_1_0_ce0,v15405_1_0_q0,v15405_1_1_address0,v15405_1_1_ce0,v15405_1_1_q0,ap_return);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v14062_address0;
output   v14062_ce0;
output   v14062_we0;
output  [7:0] v14062_d0;
output  [7:0] v14062_1_address0;
output   v14062_1_ce0;
output   v14062_1_we0;
output  [7:0] v14062_1_d0;
output  [7:0] v14062_2_address0;
output   v14062_2_ce0;
output   v14062_2_we0;
output  [7:0] v14062_2_d0;
output  [7:0] v14062_3_address0;
output   v14062_3_ce0;
output   v14062_3_we0;
output  [7:0] v14062_3_d0;
input  [5:0] v14056;
output  [11:0] v15405_0_0_address0;
output   v15405_0_0_ce0;
input  [7:0] v15405_0_0_q0;
output  [11:0] v15405_0_1_address0;
output   v15405_0_1_ce0;
input  [7:0] v15405_0_1_q0;
output  [11:0] v15405_1_0_address0;
output   v15405_1_0_ce0;
input  [7:0] v15405_1_0_q0;
output  [11:0] v15405_1_1_address0;
output   v15405_1_1_ce0;
input  [7:0] v15405_1_1_q0;
output  [5:0] ap_return;
reg ap_idle;
reg[5:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln17838_fu_442_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
reg   [5:0] v14056_read_reg_561;
reg   [5:0] v14056_read_reg_561_pp0_iter1_reg;
wire   [1:0] tmp_126_i_fu_268_p4;
reg   [1:0] tmp_126_i_reg_565;
reg   [3:0] lshr_ln_i_cast_reg_571;
reg   [3:0] lshr_ln_i_cast_reg_571_pp0_iter1_reg;
wire   [5:0] empty_283_fu_370_p2;
reg   [5:0] empty_283_reg_576;
reg   [5:0] tmp_128_i_reg_582;
reg   [3:0] lshr_ln79_i_reg_588;
reg   [3:0] lshr_ln79_i_reg_588_pp0_iter1_reg;
reg   [6:0] lshr_ln80_i_reg_595;
wire   [0:0] xor_ln17839_fu_436_p2;
reg   [0:0] xor_ln17839_reg_600;
reg   [0:0] icmp_ln17838_reg_605;
reg   [0:0] ap_phi_mux_icmp_ln1783948_i_phi_fu_235_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln17842_fu_484_p1;
wire   [63:0] zext_ln17846_fu_496_p1;
wire   [63:0] zext_ln17844_1_fu_510_p1;
wire   [63:0] zext_ln17848_1_fu_521_p1;
wire   [63:0] zext_ln17848_fu_532_p1;
reg   [7:0] indvar_flatten45_i_fu_106;
wire   [7:0] add_ln17838_1_fu_422_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten45_i_load;
reg   [5:0] v1398046_i_fu_110;
wire   [5:0] select_ln17838_1_fu_328_p3;
reg   [5:0] ap_sig_allocacmp_v1398046_i_load;
reg   [5:0] v1398147_i_fu_114;
wire   [5:0] add_ln17839_fu_416_p2;
reg   [5:0] ap_sig_allocacmp_v1398147_i_load;
reg    v15405_0_0_ce0_local;
reg    v15405_0_1_ce0_local;
reg    v15405_1_0_ce0_local;
reg    v15405_1_1_ce0_local;
reg    v14062_3_we0_local;
reg    v14062_3_ce0_local;
reg    v14062_2_we0_local;
reg    v14062_2_ce0_local;
reg    v14062_1_we0_local;
reg    v14062_1_ce0_local;
reg    v14062_we0_local;
reg    v14062_ce0_local;
wire   [1:0] tmp_i_fu_242_p4;
wire   [6:0] mul_i571_i_i_fu_278_p3;
wire   [5:0] add_ln17838_fu_314_p2;
wire   [4:0] lshr_ln_i_fu_340_p4;
wire   [6:0] mul_i536_i_i_fu_252_p3;
wire   [6:0] zext_ln17838_fu_336_p1;
wire   [5:0] zext_ln17838_1_fu_360_p1;
wire   [5:0] trunc_ln_i_fu_260_p3;
wire   [6:0] empty_fu_364_p2;
wire   [5:0] select_ln17838_fu_320_p3;
wire   [7:0] mul_i571_cast_i_i_fu_286_p1;
wire   [7:0] zext_ln17839_fu_386_p1;
wire   [7:0] add_ln17841_fu_400_p2;
wire   [0:0] tmp_fu_428_p3;
wire   [11:0] tmp_133_i_fu_477_p4;
wire   [11:0] tmp_135_i_fu_489_p4;
wire   [11:0] tmp_127_i_fu_463_p3;
wire   [11:0] zext_ln17844_fu_501_p1;
wire   [11:0] add_ln17844_fu_504_p2;
wire   [11:0] tmp_129_i_fu_470_p3;
wire   [11:0] add_ln17848_fu_515_p2;
wire   [7:0] tmp_131_i_fu_526_p3;
reg   [5:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_418;
reg    ap_condition_121;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten45_i_fu_106 = 8'd0;
#0 v1398046_i_fu_110 = 6'd0;
#0 v1398147_i_fu_114 = 6'd0;
#0 ap_return_preg = 6'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        ap_return_preg <= 6'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_return_preg <= v14056_read_reg_561_pp0_iter1_reg;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_121)) begin
        indvar_flatten45_i_fu_106 <= add_ln17838_1_fu_422_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_121)) begin
    v1398046_i_fu_110 <= select_ln17838_1_fu_328_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_121)) begin
    v1398147_i_fu_114 <= add_ln17839_fu_416_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_283_reg_576 <= empty_283_fu_370_p2;
        icmp_ln17838_reg_605 <= icmp_ln17838_fu_442_p2;
        lshr_ln79_i_reg_588 <= {{select_ln17838_fu_320_p3[4:1]}};
        lshr_ln79_i_reg_588_pp0_iter1_reg <= lshr_ln79_i_reg_588;
        lshr_ln80_i_reg_595 <= {{add_ln17841_fu_400_p2[7:1]}};
        lshr_ln_i_cast_reg_571 <= {{select_ln17838_1_fu_328_p3[4:1]}};
        lshr_ln_i_cast_reg_571_pp0_iter1_reg <= lshr_ln_i_cast_reg_571;
        tmp_126_i_reg_565 <= {{v14056[5:4]}};
        tmp_128_i_reg_582 <= {{empty_fu_364_p2[6:1]}};
        v14056_read_reg_561_pp0_iter1_reg <= v14056_read_reg_561;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14056_read_reg_561 <= v14056;
        xor_ln17839_reg_600 <= xor_ln17839_fu_436_p2;
    end
end
always @ (*) begin
    if (((icmp_ln17838_fu_442_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_418)) begin
            ap_phi_mux_icmp_ln1783948_i_phi_fu_235_p4 = xor_ln17839_reg_600;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1783948_i_phi_fu_235_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1783948_i_phi_fu_235_p4 = xor_ln17839_reg_600;
        end
    end else begin
        ap_phi_mux_icmp_ln1783948_i_phi_fu_235_p4 = xor_ln17839_reg_600;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_return = v14056_read_reg_561_pp0_iter1_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten45_i_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten45_i_load = indvar_flatten45_i_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1398046_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1398046_i_load = v1398046_i_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1398147_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1398147_i_load = v1398147_i_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14062_1_ce0_local = 1'b1;
    end else begin
        v14062_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14062_1_we0_local = 1'b1;
    end else begin
        v14062_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14062_2_ce0_local = 1'b1;
    end else begin
        v14062_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14062_2_we0_local = 1'b1;
    end else begin
        v14062_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14062_3_ce0_local = 1'b1;
    end else begin
        v14062_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14062_3_we0_local = 1'b1;
    end else begin
        v14062_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14062_ce0_local = 1'b1;
    end else begin
        v14062_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14062_we0_local = 1'b1;
    end else begin
        v14062_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15405_0_0_ce0_local = 1'b1;
    end else begin
        v15405_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15405_0_1_ce0_local = 1'b1;
    end else begin
        v15405_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15405_1_0_ce0_local = 1'b1;
    end else begin
        v15405_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15405_1_1_ce0_local = 1'b1;
    end else begin
        v15405_1_1_ce0_local = 1'b0;
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
assign add_ln17838_1_fu_422_p2 = (ap_sig_allocacmp_indvar_flatten45_i_load + 8'd1);
assign add_ln17838_fu_314_p2 = (ap_sig_allocacmp_v1398046_i_load + 6'd2);
assign add_ln17839_fu_416_p2 = (select_ln17838_fu_320_p3 + 6'd2);
assign add_ln17841_fu_400_p2 = (mul_i571_cast_i_i_fu_286_p1 + zext_ln17839_fu_386_p1);
assign add_ln17844_fu_504_p2 = (tmp_127_i_fu_463_p3 + zext_ln17844_fu_501_p1);
assign add_ln17848_fu_515_p2 = (tmp_129_i_fu_470_p3 + zext_ln17844_fu_501_p1);
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
    ap_condition_121 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_418 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln17838_reg_605 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_283_fu_370_p2 = (zext_ln17838_1_fu_360_p1 + trunc_ln_i_fu_260_p3);
assign empty_fu_364_p2 = (mul_i536_i_i_fu_252_p3 + zext_ln17838_fu_336_p1);
assign icmp_ln17838_fu_442_p2 = ((ap_sig_allocacmp_indvar_flatten45_i_load == 8'd255) ? 1'b1 : 1'b0);
assign lshr_ln_i_fu_340_p4 = {{select_ln17838_1_fu_328_p3[5:1]}};
assign mul_i536_i_i_fu_252_p3 = {{tmp_i_fu_242_p4}, {5'd0}};
assign mul_i571_cast_i_i_fu_286_p1 = mul_i571_i_i_fu_278_p3;
assign mul_i571_i_i_fu_278_p3 = {{tmp_126_i_fu_268_p4}, {5'd0}};
assign select_ln17838_1_fu_328_p3 = ((ap_phi_mux_icmp_ln1783948_i_phi_fu_235_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1398046_i_load : add_ln17838_fu_314_p2);
assign select_ln17838_fu_320_p3 = ((ap_phi_mux_icmp_ln1783948_i_phi_fu_235_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1398147_i_load : 6'd0);
assign tmp_126_i_fu_268_p4 = {{v14056[5:4]}};
assign tmp_127_i_fu_463_p3 = {{empty_283_reg_576}, {6'd0}};
assign tmp_129_i_fu_470_p3 = {{tmp_128_i_reg_582}, {6'd0}};
assign tmp_131_i_fu_526_p3 = {{lshr_ln_i_cast_reg_571_pp0_iter1_reg}, {lshr_ln79_i_reg_588_pp0_iter1_reg}};
assign tmp_133_i_fu_477_p4 = {{{empty_283_reg_576}, {tmp_126_i_reg_565}}, {lshr_ln79_i_reg_588}};
assign tmp_135_i_fu_489_p4 = {{{tmp_128_i_reg_582}, {tmp_126_i_reg_565}}, {lshr_ln79_i_reg_588}};
assign tmp_fu_428_p3 = add_ln17839_fu_416_p2[32'd5];
assign tmp_i_fu_242_p4 = {{v14056[3:2]}};
assign trunc_ln_i_fu_260_p3 = {{tmp_i_fu_242_p4}, {4'd0}};
assign v14062_1_address0 = zext_ln17848_fu_532_p1;
assign v14062_1_ce0 = v14062_1_ce0_local;
assign v14062_1_d0 = v15405_1_0_q0;
assign v14062_1_we0 = v14062_1_we0_local;
assign v14062_2_address0 = zext_ln17848_fu_532_p1;
assign v14062_2_ce0 = v14062_2_ce0_local;
assign v14062_2_d0 = v15405_0_1_q0;
assign v14062_2_we0 = v14062_2_we0_local;
assign v14062_3_address0 = zext_ln17848_fu_532_p1;
assign v14062_3_ce0 = v14062_3_ce0_local;
assign v14062_3_d0 = v15405_0_0_q0;
assign v14062_3_we0 = v14062_3_we0_local;
assign v14062_address0 = zext_ln17848_fu_532_p1;
assign v14062_ce0 = v14062_ce0_local;
assign v14062_d0 = v15405_1_1_q0;
assign v14062_we0 = v14062_we0_local;
assign v15405_0_0_address0 = zext_ln17842_fu_484_p1;
assign v15405_0_0_ce0 = v15405_0_0_ce0_local;
assign v15405_0_1_address0 = zext_ln17844_1_fu_510_p1;
assign v15405_0_1_ce0 = v15405_0_1_ce0_local;
assign v15405_1_0_address0 = zext_ln17846_fu_496_p1;
assign v15405_1_0_ce0 = v15405_1_0_ce0_local;
assign v15405_1_1_address0 = zext_ln17848_1_fu_521_p1;
assign v15405_1_1_ce0 = v15405_1_1_ce0_local;
assign xor_ln17839_fu_436_p2 = (tmp_fu_428_p3 ^ 1'd1);
assign zext_ln17838_1_fu_360_p1 = lshr_ln_i_fu_340_p4;
assign zext_ln17838_fu_336_p1 = select_ln17838_1_fu_328_p3;
assign zext_ln17839_fu_386_p1 = select_ln17838_fu_320_p3;
assign zext_ln17842_fu_484_p1 = tmp_133_i_fu_477_p4;
assign zext_ln17844_1_fu_510_p1 = add_ln17844_fu_504_p2;
assign zext_ln17844_fu_501_p1 = lshr_ln80_i_reg_595;
assign zext_ln17846_fu_496_p1 = tmp_135_i_fu_489_p4;
assign zext_ln17848_1_fu_521_p1 = add_ln17848_fu_515_p2;
assign zext_ln17848_fu_532_p1 = tmp_131_i_fu_526_p3;
endmodule 
