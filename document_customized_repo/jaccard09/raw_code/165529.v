module forward_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,shl_ln,urem_ln1204_cast,urem_ln1203_cast,v16214_0_address0,v16214_0_ce0,v16214_0_q0,v16214_1_address0,v16214_1_ce0,v16214_1_q0,v673_1_address0,v673_1_ce0,v673_1_we0,v673_1_d0,v673_address0,v673_ce0,v673_we0,v673_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] rem4;
input  [7:0] shl_ln;
input  [2:0] urem_ln1204_cast;
input  [2:0] urem_ln1203_cast;
output  [13:0] v16214_0_address0;
output   v16214_0_ce0;
input  [7:0] v16214_0_q0;
output  [13:0] v16214_1_address0;
output   v16214_1_ce0;
input  [7:0] v16214_1_q0;
output  [3:0] v673_1_address0;
output   v673_1_ce0;
output   v673_1_we0;
output  [7:0] v673_1_d0;
output  [3:0] v673_address0;
output   v673_ce0;
output   v673_we0;
output  [7:0] v673_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_270_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [13:0] urem_ln1203_cast_cast_fu_160_p1;
reg   [13:0] urem_ln1203_cast_cast_reg_347;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] lshr_ln_fu_180_p4;
reg   [4:0] lshr_ln_reg_353;
reg   [4:0] lshr_ln_reg_353_pp0_iter1_reg;
wire   [10:0] add_ln1157_1_fu_224_p2;
reg   [10:0] add_ln1157_1_reg_358;
wire   [10:0] add_ln1159_fu_258_p2;
reg   [10:0] add_ln1159_reg_364;
wire   [63:0] zext_ln1157_2_fu_304_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1159_2_fu_330_p1;
wire   [63:0] zext_ln1154_2_fu_335_p1;
reg   [5:0] v64924_fu_78;
wire   [5:0] v649_fu_264_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v64924_load;
reg    v16214_0_ce0_local;
reg    v16214_1_ce0_local;
reg    v673_1_we0_local;
reg    v673_1_ce0_local;
reg    v673_we0_local;
reg    v673_ce0_local;
wire   [8:0] zext_ln1154_fu_176_p1;
wire   [7:0] zext_ln1154_1_fu_190_p1;
wire   [7:0] add_ln1157_fu_200_p2;
wire   [10:0] p_shl15_fu_210_p3;
wire   [10:0] zext_ln1157_fu_206_p1;
wire   [10:0] sub_ln1157_fu_218_p2;
wire   [10:0] urem_ln1204_cast_cast_fu_164_p1;
wire   [8:0] add_ln1156_fu_194_p2;
wire   [7:0] lshr_ln76_fu_230_p4;
wire   [10:0] p_shl13_fu_244_p3;
wire   [10:0] zext_ln1159_fu_240_p1;
wire   [10:0] sub_ln1159_fu_252_p2;
wire   [13:0] p_shl14_fu_286_p3;
wire   [13:0] zext_ln1157_1_fu_283_p1;
wire   [13:0] sub_ln1157_1_fu_293_p2;
wire   [13:0] add_ln1157_2_fu_299_p2;
wire   [13:0] p_shl_fu_312_p3;
wire   [13:0] zext_ln1159_1_fu_309_p1;
wire   [13:0] sub_ln1159_1_fu_319_p2;
wire   [13:0] add_ln1159_1_fu_325_p2;
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
#0 v64924_fu_78 = 6'd0;
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
            v64924_fu_78 <= v649_fu_264_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v64924_fu_78 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1157_1_reg_358 <= add_ln1157_1_fu_224_p2;
        add_ln1159_reg_364 <= add_ln1159_fu_258_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        lshr_ln_reg_353 <= {{ap_sig_allocacmp_v64924_load[5:1]}};
        lshr_ln_reg_353_pp0_iter1_reg <= lshr_ln_reg_353;
        urem_ln1203_cast_cast_reg_347[2 : 0] <= urem_ln1203_cast_cast_fu_160_p1[2 : 0];
    end
end
always @ (*) begin
    if (((tmp_fu_270_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v64924_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v64924_load = v64924_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16214_0_ce0_local = 1'b1;
    end else begin
        v16214_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16214_1_ce0_local = 1'b1;
    end else begin
        v16214_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v673_1_ce0_local = 1'b1;
    end else begin
        v673_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v673_1_we0_local = 1'b1;
    end else begin
        v673_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v673_ce0_local = 1'b1;
    end else begin
        v673_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v673_we0_local = 1'b1;
    end else begin
        v673_we0_local = 1'b0;
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
assign add_ln1156_fu_194_p2 = (rem4 + zext_ln1154_fu_176_p1);
assign add_ln1157_1_fu_224_p2 = (sub_ln1157_fu_218_p2 + urem_ln1204_cast_cast_fu_164_p1);
assign add_ln1157_2_fu_299_p2 = (sub_ln1157_1_fu_293_p2 + urem_ln1203_cast_cast_reg_347);
assign add_ln1157_fu_200_p2 = (shl_ln + zext_ln1154_1_fu_190_p1);
assign add_ln1159_1_fu_325_p2 = (sub_ln1159_1_fu_319_p2 + urem_ln1203_cast_cast_reg_347);
assign add_ln1159_fu_258_p2 = (sub_ln1159_fu_252_p2 + urem_ln1204_cast_cast_fu_164_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln76_fu_230_p4 = {{add_ln1156_fu_194_p2[8:1]}};
assign lshr_ln_fu_180_p4 = {{ap_sig_allocacmp_v64924_load[5:1]}};
assign p_shl13_fu_244_p3 = {{lshr_ln76_fu_230_p4}, {3'd0}};
assign p_shl14_fu_286_p3 = {{add_ln1157_1_reg_358}, {3'd0}};
assign p_shl15_fu_210_p3 = {{add_ln1157_fu_200_p2}, {3'd0}};
assign p_shl_fu_312_p3 = {{add_ln1159_reg_364}, {3'd0}};
assign sub_ln1157_1_fu_293_p2 = (p_shl14_fu_286_p3 - zext_ln1157_1_fu_283_p1);
assign sub_ln1157_fu_218_p2 = (p_shl15_fu_210_p3 - zext_ln1157_fu_206_p1);
assign sub_ln1159_1_fu_319_p2 = (p_shl_fu_312_p3 - zext_ln1159_1_fu_309_p1);
assign sub_ln1159_fu_252_p2 = (p_shl13_fu_244_p3 - zext_ln1159_fu_240_p1);
assign tmp_fu_270_p3 = v649_fu_264_p2[32'd5];
assign urem_ln1203_cast_cast_fu_160_p1 = urem_ln1203_cast;
assign urem_ln1204_cast_cast_fu_164_p1 = urem_ln1204_cast;
assign v16214_0_address0 = zext_ln1157_2_fu_304_p1;
assign v16214_0_ce0 = v16214_0_ce0_local;
assign v16214_1_address0 = zext_ln1159_2_fu_330_p1;
assign v16214_1_ce0 = v16214_1_ce0_local;
assign v649_fu_264_p2 = (ap_sig_allocacmp_v64924_load + 6'd2);
assign v673_1_address0 = zext_ln1154_2_fu_335_p1;
assign v673_1_ce0 = v673_1_ce0_local;
assign v673_1_d0 = v16214_0_q0;
assign v673_1_we0 = v673_1_we0_local;
assign v673_address0 = zext_ln1154_2_fu_335_p1;
assign v673_ce0 = v673_ce0_local;
assign v673_d0 = v16214_1_q0;
assign v673_we0 = v673_we0_local;
assign zext_ln1154_1_fu_190_p1 = lshr_ln_fu_180_p4;
assign zext_ln1154_2_fu_335_p1 = lshr_ln_reg_353_pp0_iter1_reg;
assign zext_ln1154_fu_176_p1 = ap_sig_allocacmp_v64924_load;
assign zext_ln1157_1_fu_283_p1 = add_ln1157_1_reg_358;
assign zext_ln1157_2_fu_304_p1 = add_ln1157_2_fu_299_p2;
assign zext_ln1157_fu_206_p1 = add_ln1157_fu_200_p2;
assign zext_ln1159_1_fu_309_p1 = add_ln1159_reg_364;
assign zext_ln1159_2_fu_330_p1 = add_ln1159_1_fu_325_p2;
assign zext_ln1159_fu_240_p1 = lshr_ln76_fu_230_p4;
always @ (posedge ap_clk) begin
    urem_ln1203_cast_cast_reg_347[13:3] <= 11'b00000000000;
end
endmodule 