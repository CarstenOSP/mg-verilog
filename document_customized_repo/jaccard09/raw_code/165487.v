module forward_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,shl_ln,idxprom1_i711,idxprom3_i2,v16215_0_address0,v16215_0_ce0,v16215_0_q0,v16215_1_address0,v16215_1_ce0,v16215_1_q0,v16215_2_address0,v16215_2_ce0,v16215_2_q0,v16215_3_address0,v16215_3_ce0,v16215_3_q0,v622_3_address0,v622_3_ce0,v622_3_we0,v622_3_d0,v622_2_address0,v622_2_ce0,v622_2_we0,v622_2_d0,v622_1_address0,v622_1_ce0,v622_1_we0,v622_1_d0,v622_address0,v622_ce0,v622_we0,v622_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] mul_i;
input  [6:0] shl_ln;
input  [2:0] idxprom1_i711;
input  [2:0] idxprom3_i2;
output  [12:0] v16215_0_address0;
output   v16215_0_ce0;
input  [7:0] v16215_0_q0;
output  [12:0] v16215_1_address0;
output   v16215_1_ce0;
input  [7:0] v16215_1_q0;
output  [12:0] v16215_2_address0;
output   v16215_2_ce0;
input  [7:0] v16215_2_q0;
output  [12:0] v16215_3_address0;
output   v16215_3_ce0;
input  [7:0] v16215_3_q0;
output  [2:0] v622_3_address0;
output   v622_3_ce0;
output   v622_3_we0;
output  [7:0] v622_3_d0;
output  [2:0] v622_2_address0;
output   v622_2_ce0;
output   v622_2_we0;
output  [7:0] v622_2_d0;
output  [2:0] v622_1_address0;
output   v622_1_ce0;
output   v622_1_we0;
output  [7:0] v622_1_d0;
output  [2:0] v622_address0;
output   v622_ce0;
output   v622_we0;
output  [7:0] v622_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_334_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [12:0] idxprom3_i2_cast_fu_224_p1;
reg   [12:0] idxprom3_i2_cast_reg_415;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] lshr_ln_fu_244_p4;
reg   [3:0] lshr_ln_reg_421;
reg   [3:0] lshr_ln_reg_421_pp0_iter1_reg;
wire   [9:0] add_ln959_1_fu_288_p2;
reg   [9:0] add_ln959_1_reg_426;
wire   [9:0] add_ln961_fu_322_p2;
reg   [9:0] add_ln961_reg_432;
wire   [63:0] zext_ln959_2_fu_368_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln961_2_fu_394_p1;
wire   [63:0] zext_ln956_2_fu_401_p1;
reg   [5:0] v58045_fu_88;
wire   [5:0] v580_fu_328_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v58045_load;
reg    v16215_0_ce0_local;
reg    v16215_1_ce0_local;
reg    v16215_2_ce0_local;
reg    v16215_3_ce0_local;
reg    v622_3_we0_local;
reg    v622_3_ce0_local;
reg    v622_2_we0_local;
reg    v622_2_ce0_local;
reg    v622_1_we0_local;
reg    v622_1_ce0_local;
reg    v622_we0_local;
reg    v622_ce0_local;
wire   [8:0] zext_ln956_fu_240_p1;
wire   [6:0] zext_ln956_1_fu_254_p1;
wire   [6:0] add_ln959_fu_264_p2;
wire   [9:0] p_shl15_fu_274_p3;
wire   [9:0] zext_ln959_fu_270_p1;
wire   [9:0] sub_ln959_fu_282_p2;
wire   [9:0] idxprom1_i711_cast_fu_228_p1;
wire   [8:0] add_ln958_fu_258_p2;
wire   [6:0] lshr_ln94_fu_294_p4;
wire   [9:0] p_shl13_fu_308_p3;
wire   [9:0] zext_ln961_fu_304_p1;
wire   [9:0] sub_ln961_fu_316_p2;
wire   [12:0] p_shl14_fu_350_p3;
wire   [12:0] zext_ln959_1_fu_347_p1;
wire   [12:0] sub_ln959_1_fu_357_p2;
wire   [12:0] add_ln959_2_fu_363_p2;
wire   [12:0] p_shl_fu_376_p3;
wire   [12:0] zext_ln961_1_fu_373_p1;
wire   [12:0] sub_ln961_1_fu_383_p2;
wire   [12:0] add_ln961_1_fu_389_p2;
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
#0 v58045_fu_88 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v58045_fu_88 <= v580_fu_328_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v58045_fu_88 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln959_1_reg_426 <= add_ln959_1_fu_288_p2;
        add_ln961_reg_432 <= add_ln961_fu_322_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        idxprom3_i2_cast_reg_415[2 : 0] <= idxprom3_i2_cast_fu_224_p1[2 : 0];
        lshr_ln_reg_421 <= {{ap_sig_allocacmp_v58045_load[5:2]}};
        lshr_ln_reg_421_pp0_iter1_reg <= lshr_ln_reg_421;
    end
end
always @ (*) begin
    if (((tmp_fu_334_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v58045_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v58045_load = v58045_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16215_0_ce0_local = 1'b1;
    end else begin
        v16215_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16215_1_ce0_local = 1'b1;
    end else begin
        v16215_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16215_2_ce0_local = 1'b1;
    end else begin
        v16215_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16215_3_ce0_local = 1'b1;
    end else begin
        v16215_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v622_1_ce0_local = 1'b1;
    end else begin
        v622_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v622_1_we0_local = 1'b1;
    end else begin
        v622_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v622_2_ce0_local = 1'b1;
    end else begin
        v622_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v622_2_we0_local = 1'b1;
    end else begin
        v622_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v622_3_ce0_local = 1'b1;
    end else begin
        v622_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v622_3_we0_local = 1'b1;
    end else begin
        v622_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v622_ce0_local = 1'b1;
    end else begin
        v622_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v622_we0_local = 1'b1;
    end else begin
        v622_we0_local = 1'b0;
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
assign add_ln958_fu_258_p2 = (mul_i + zext_ln956_fu_240_p1);
assign add_ln959_1_fu_288_p2 = (sub_ln959_fu_282_p2 + idxprom1_i711_cast_fu_228_p1);
assign add_ln959_2_fu_363_p2 = (sub_ln959_1_fu_357_p2 + idxprom3_i2_cast_reg_415);
assign add_ln959_fu_264_p2 = (shl_ln + zext_ln956_1_fu_254_p1);
assign add_ln961_1_fu_389_p2 = (sub_ln961_1_fu_383_p2 + idxprom3_i2_cast_reg_415);
assign add_ln961_fu_322_p2 = (sub_ln961_fu_316_p2 + idxprom1_i711_cast_fu_228_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign idxprom1_i711_cast_fu_228_p1 = idxprom1_i711;
assign idxprom3_i2_cast_fu_224_p1 = idxprom3_i2;
assign lshr_ln94_fu_294_p4 = {{add_ln958_fu_258_p2[8:2]}};
assign lshr_ln_fu_244_p4 = {{ap_sig_allocacmp_v58045_load[5:2]}};
assign p_shl13_fu_308_p3 = {{lshr_ln94_fu_294_p4}, {3'd0}};
assign p_shl14_fu_350_p3 = {{add_ln959_1_reg_426}, {3'd0}};
assign p_shl15_fu_274_p3 = {{add_ln959_fu_264_p2}, {3'd0}};
assign p_shl_fu_376_p3 = {{add_ln961_reg_432}, {3'd0}};
assign sub_ln959_1_fu_357_p2 = (p_shl14_fu_350_p3 - zext_ln959_1_fu_347_p1);
assign sub_ln959_fu_282_p2 = (p_shl15_fu_274_p3 - zext_ln959_fu_270_p1);
assign sub_ln961_1_fu_383_p2 = (p_shl_fu_376_p3 - zext_ln961_1_fu_373_p1);
assign sub_ln961_fu_316_p2 = (p_shl13_fu_308_p3 - zext_ln961_fu_304_p1);
assign tmp_fu_334_p3 = v580_fu_328_p2[32'd5];
assign v16215_0_address0 = zext_ln959_2_fu_368_p1;
assign v16215_0_ce0 = v16215_0_ce0_local;
assign v16215_1_address0 = zext_ln961_2_fu_394_p1;
assign v16215_1_ce0 = v16215_1_ce0_local;
assign v16215_2_address0 = zext_ln961_2_fu_394_p1;
assign v16215_2_ce0 = v16215_2_ce0_local;
assign v16215_3_address0 = zext_ln961_2_fu_394_p1;
assign v16215_3_ce0 = v16215_3_ce0_local;
assign v580_fu_328_p2 = (ap_sig_allocacmp_v58045_load + 6'd4);
assign v622_1_address0 = zext_ln956_2_fu_401_p1;
assign v622_1_ce0 = v622_1_ce0_local;
assign v622_1_d0 = v16215_2_q0;
assign v622_1_we0 = v622_1_we0_local;
assign v622_2_address0 = zext_ln956_2_fu_401_p1;
assign v622_2_ce0 = v622_2_ce0_local;
assign v622_2_d0 = v16215_1_q0;
assign v622_2_we0 = v622_2_we0_local;
assign v622_3_address0 = zext_ln956_2_fu_401_p1;
assign v622_3_ce0 = v622_3_ce0_local;
assign v622_3_d0 = v16215_0_q0;
assign v622_3_we0 = v622_3_we0_local;
assign v622_address0 = zext_ln956_2_fu_401_p1;
assign v622_ce0 = v622_ce0_local;
assign v622_d0 = v16215_3_q0;
assign v622_we0 = v622_we0_local;
assign zext_ln956_1_fu_254_p1 = lshr_ln_fu_244_p4;
assign zext_ln956_2_fu_401_p1 = lshr_ln_reg_421_pp0_iter1_reg;
assign zext_ln956_fu_240_p1 = ap_sig_allocacmp_v58045_load;
assign zext_ln959_1_fu_347_p1 = add_ln959_1_reg_426;
assign zext_ln959_2_fu_368_p1 = add_ln959_2_fu_363_p2;
assign zext_ln959_fu_270_p1 = add_ln959_fu_264_p2;
assign zext_ln961_1_fu_373_p1 = add_ln961_reg_432;
assign zext_ln961_2_fu_394_p1 = add_ln961_1_fu_389_p2;
assign zext_ln961_fu_304_p1 = lshr_ln94_fu_294_p4;
always @ (posedge ap_clk) begin
    idxprom3_i2_cast_reg_415[12:3] <= 10'b0000000000;
end
endmodule 