
module forward_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,shl_ln,idxprom1_i491,idxprom3_i2,v9035_0_address0,v9035_0_ce0,v9035_0_q0,v9035_1_address0,v9035_1_ce0,v9035_1_q0,v9035_2_address0,v9035_2_ce0,v9035_2_q0,v9035_3_address0,v9035_3_ce0,v9035_3_q0,v509_3_address0,v509_3_ce0,v509_3_we0,v509_3_d0,v509_2_address0,v509_2_ce0,v509_2_we0,v509_2_d0,v509_1_address0,v509_1_ce0,v509_1_we0,v509_1_d0,v509_address0,v509_ce0,v509_we0,v509_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i;
input  [5:0] shl_ln;
input  [2:0] idxprom1_i491;
input  [2:0] idxprom3_i2;
output  [10:0] v9035_0_address0;
output   v9035_0_ce0;
input  [7:0] v9035_0_q0;
output  [10:0] v9035_1_address0;
output   v9035_1_ce0;
input  [7:0] v9035_1_q0;
output  [10:0] v9035_2_address0;
output   v9035_2_ce0;
input  [7:0] v9035_2_q0;
output  [10:0] v9035_3_address0;
output   v9035_3_ce0;
input  [7:0] v9035_3_q0;
output  [2:0] v509_3_address0;
output   v509_3_ce0;
output   v509_3_we0;
output  [7:0] v509_3_d0;
output  [2:0] v509_2_address0;
output   v509_2_ce0;
output   v509_2_we0;
output  [7:0] v509_2_d0;
output  [2:0] v509_1_address0;
output   v509_1_ce0;
output   v509_1_we0;
output  [7:0] v509_1_d0;
output  [2:0] v509_address0;
output   v509_ce0;
output   v509_we0;
output  [7:0] v509_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_34_fu_342_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [10:0] idxprom3_i2_cast_fu_224_p1;
reg   [10:0] idxprom3_i2_cast_reg_423;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] lshr_ln_fu_244_p4;
reg   [3:0] lshr_ln_reg_429;
reg   [3:0] lshr_ln_reg_429_pp0_iter1_reg;
wire   [8:0] add_ln869_1_fu_292_p2;
reg   [8:0] add_ln869_1_reg_434;
wire   [8:0] add_ln871_fu_330_p2;
reg   [8:0] add_ln871_reg_440;
wire   [63:0] zext_ln869_3_fu_376_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln871_3_fu_402_p1;
wire   [63:0] zext_ln866_1_fu_409_p1;
reg   [5:0] v47545_fu_88;
wire   [5:0] v475_fu_336_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v47545_load;
reg    v9035_0_ce0_local;
reg    v9035_1_ce0_local;
reg    v9035_2_ce0_local;
reg    v9035_3_ce0_local;
reg    v509_3_we0_local;
reg    v509_3_ce0_local;
reg    v509_2_we0_local;
reg    v509_2_ce0_local;
reg    v509_1_we0_local;
reg    v509_1_ce0_local;
reg    v509_we0_local;
reg    v509_ce0_local;
wire   [7:0] zext_ln866_fu_240_p1;
wire   [5:0] zext_ln866_2_fu_254_p1;
wire   [5:0] add_ln869_fu_264_p2;
wire   [7:0] tmp_fu_274_p3;
wire   [8:0] zext_ln869_1_fu_282_p1;
wire   [8:0] zext_ln869_fu_270_p1;
wire   [8:0] add_ln869_3_fu_286_p2;
wire   [8:0] idxprom1_i491_cast_fu_228_p1;
wire   [7:0] add_ln868_fu_258_p2;
wire   [5:0] lshr_ln3_fu_298_p4;
wire   [7:0] tmp_32_fu_312_p3;
wire   [8:0] zext_ln871_1_fu_320_p1;
wire   [8:0] zext_ln871_fu_308_p1;
wire   [8:0] add_ln871_2_fu_324_p2;
wire   [10:0] tmp_31_fu_358_p3;
wire   [10:0] zext_ln869_2_fu_355_p1;
wire   [10:0] add_ln869_4_fu_365_p2;
wire   [10:0] add_ln869_2_fu_371_p2;
wire   [10:0] tmp_33_fu_384_p3;
wire   [10:0] zext_ln871_2_fu_381_p1;
wire   [10:0] add_ln871_3_fu_391_p2;
wire   [10:0] add_ln871_1_fu_397_p2;
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
#0 v47545_fu_88 = 6'd0;
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
            v47545_fu_88 <= v475_fu_336_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v47545_fu_88 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln869_1_reg_434 <= add_ln869_1_fu_292_p2;
        add_ln871_reg_440 <= add_ln871_fu_330_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        idxprom3_i2_cast_reg_423[2 : 0] <= idxprom3_i2_cast_fu_224_p1[2 : 0];
        lshr_ln_reg_429 <= {{ap_sig_allocacmp_v47545_load[5:2]}};
        lshr_ln_reg_429_pp0_iter1_reg <= lshr_ln_reg_429;
    end
end
always @ (*) begin
    if (((tmp_34_fu_342_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v47545_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v47545_load = v47545_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v509_1_ce0_local = 1'b1;
    end else begin
        v509_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v509_1_we0_local = 1'b1;
    end else begin
        v509_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v509_2_ce0_local = 1'b1;
    end else begin
        v509_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v509_2_we0_local = 1'b1;
    end else begin
        v509_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v509_3_ce0_local = 1'b1;
    end else begin
        v509_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v509_3_we0_local = 1'b1;
    end else begin
        v509_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v509_ce0_local = 1'b1;
    end else begin
        v509_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v509_we0_local = 1'b1;
    end else begin
        v509_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9035_0_ce0_local = 1'b1;
    end else begin
        v9035_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9035_1_ce0_local = 1'b1;
    end else begin
        v9035_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9035_2_ce0_local = 1'b1;
    end else begin
        v9035_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9035_3_ce0_local = 1'b1;
    end else begin
        v9035_3_ce0_local = 1'b0;
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
assign add_ln868_fu_258_p2 = (mul_i + zext_ln866_fu_240_p1);
assign add_ln869_1_fu_292_p2 = (add_ln869_3_fu_286_p2 + idxprom1_i491_cast_fu_228_p1);
assign add_ln869_2_fu_371_p2 = (add_ln869_4_fu_365_p2 + idxprom3_i2_cast_reg_423);
assign add_ln869_3_fu_286_p2 = (zext_ln869_1_fu_282_p1 + zext_ln869_fu_270_p1);
assign add_ln869_4_fu_365_p2 = (tmp_31_fu_358_p3 + zext_ln869_2_fu_355_p1);
assign add_ln869_fu_264_p2 = (zext_ln866_2_fu_254_p1 + shl_ln);
assign add_ln871_1_fu_397_p2 = (add_ln871_3_fu_391_p2 + idxprom3_i2_cast_reg_423);
assign add_ln871_2_fu_324_p2 = (zext_ln871_1_fu_320_p1 + zext_ln871_fu_308_p1);
assign add_ln871_3_fu_391_p2 = (tmp_33_fu_384_p3 + zext_ln871_2_fu_381_p1);
assign add_ln871_fu_330_p2 = (add_ln871_2_fu_324_p2 + idxprom1_i491_cast_fu_228_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign idxprom1_i491_cast_fu_228_p1 = idxprom1_i491;
assign idxprom3_i2_cast_fu_224_p1 = idxprom3_i2;
assign lshr_ln3_fu_298_p4 = {{add_ln868_fu_258_p2[7:2]}};
assign lshr_ln_fu_244_p4 = {{ap_sig_allocacmp_v47545_load[5:2]}};
assign tmp_31_fu_358_p3 = {{add_ln869_1_reg_434}, {2'd0}};
assign tmp_32_fu_312_p3 = {{lshr_ln3_fu_298_p4}, {2'd0}};
assign tmp_33_fu_384_p3 = {{add_ln871_reg_440}, {2'd0}};
assign tmp_34_fu_342_p3 = v475_fu_336_p2[32'd5];
assign tmp_fu_274_p3 = {{add_ln869_fu_264_p2}, {2'd0}};
assign v475_fu_336_p2 = (ap_sig_allocacmp_v47545_load + 6'd4);
assign v509_1_address0 = zext_ln866_1_fu_409_p1;
assign v509_1_ce0 = v509_1_ce0_local;
assign v509_1_d0 = v9035_2_q0;
assign v509_1_we0 = v509_1_we0_local;
assign v509_2_address0 = zext_ln866_1_fu_409_p1;
assign v509_2_ce0 = v509_2_ce0_local;
assign v509_2_d0 = v9035_1_q0;
assign v509_2_we0 = v509_2_we0_local;
assign v509_3_address0 = zext_ln866_1_fu_409_p1;
assign v509_3_ce0 = v509_3_ce0_local;
assign v509_3_d0 = v9035_0_q0;
assign v509_3_we0 = v509_3_we0_local;
assign v509_address0 = zext_ln866_1_fu_409_p1;
assign v509_ce0 = v509_ce0_local;
assign v509_d0 = v9035_3_q0;
assign v509_we0 = v509_we0_local;
assign v9035_0_address0 = zext_ln869_3_fu_376_p1;
assign v9035_0_ce0 = v9035_0_ce0_local;
assign v9035_1_address0 = zext_ln871_3_fu_402_p1;
assign v9035_1_ce0 = v9035_1_ce0_local;
assign v9035_2_address0 = zext_ln871_3_fu_402_p1;
assign v9035_2_ce0 = v9035_2_ce0_local;
assign v9035_3_address0 = zext_ln871_3_fu_402_p1;
assign v9035_3_ce0 = v9035_3_ce0_local;
assign zext_ln866_1_fu_409_p1 = lshr_ln_reg_429_pp0_iter1_reg;
assign zext_ln866_2_fu_254_p1 = lshr_ln_fu_244_p4;
assign zext_ln866_fu_240_p1 = ap_sig_allocacmp_v47545_load;
assign zext_ln869_1_fu_282_p1 = tmp_fu_274_p3;
assign zext_ln869_2_fu_355_p1 = add_ln869_1_reg_434;
assign zext_ln869_3_fu_376_p1 = add_ln869_2_fu_371_p2;
assign zext_ln869_fu_270_p1 = add_ln869_fu_264_p2;
assign zext_ln871_1_fu_320_p1 = tmp_32_fu_312_p3;
assign zext_ln871_2_fu_381_p1 = add_ln871_reg_440;
assign zext_ln871_3_fu_402_p1 = add_ln871_1_fu_397_p2;
assign zext_ln871_fu_308_p1 = lshr_ln3_fu_298_p4;
always @ (posedge ap_clk) begin
    idxprom3_i2_cast_reg_423[10:3] <= 8'b00000000;
end
endmodule 
