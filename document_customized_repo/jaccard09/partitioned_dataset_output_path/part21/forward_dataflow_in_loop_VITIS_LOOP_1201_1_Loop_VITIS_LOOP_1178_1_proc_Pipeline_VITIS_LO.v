
module forward_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,shl_ln,idxprom3_i19,idxprom7_i1,v16212_0_address0,v16212_0_ce0,v16212_0_q0,v16212_1_address0,v16212_1_ce0,v16212_1_q0,v674_1_address0,v674_1_ce0,v674_1_we0,v674_1_d0,v674_address0,v674_ce0,v674_we0,v674_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] rem4;
input  [7:0] shl_ln;
input  [3:0] idxprom3_i19;
input  [3:0] idxprom7_i1;
output  [15:0] v16212_0_address0;
output   v16212_0_ce0;
input  [7:0] v16212_0_q0;
output  [15:0] v16212_1_address0;
output   v16212_1_ce0;
input  [7:0] v16212_1_q0;
output  [3:0] v674_1_address0;
output   v674_1_ce0;
output   v674_1_we0;
output  [7:0] v674_1_d0;
output  [3:0] v674_address0;
output   v674_ce0;
output   v674_we0;
output  [7:0] v674_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_644_fu_292_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [15:0] idxprom7_i1_cast_fu_166_p1;
reg   [15:0] idxprom7_i1_cast_reg_385;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] lshr_ln_fu_186_p4;
reg   [4:0] lshr_ln_reg_391;
reg   [4:0] lshr_ln_reg_391_pp0_iter1_reg;
wire   [11:0] add_ln1181_1_fu_238_p2;
reg   [11:0] add_ln1181_1_reg_396;
wire   [11:0] add_ln1183_fu_280_p2;
reg   [11:0] add_ln1183_reg_402;
wire   [63:0] zext_ln1181_2_fu_334_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1183_2_fu_368_p1;
wire   [63:0] zext_ln1178_2_fu_373_p1;
reg   [5:0] v65921_fu_84;
wire   [5:0] v659_fu_286_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v65921_load;
reg    v16212_0_ce0_local;
reg    v16212_1_ce0_local;
reg    v674_1_we0_local;
reg    v674_1_ce0_local;
reg    v674_we0_local;
reg    v674_ce0_local;
wire   [8:0] zext_ln1178_fu_182_p1;
wire   [7:0] zext_ln1178_1_fu_196_p1;
wire   [7:0] add_ln1181_fu_206_p2;
wire   [8:0] tmp_fu_220_p3;
wire   [11:0] p_shl18_fu_212_p3;
wire   [11:0] zext_ln1181_fu_228_p1;
wire   [11:0] sub_ln1181_fu_232_p2;
wire   [11:0] idxprom3_i19_cast_fu_170_p1;
wire   [8:0] add_ln1180_fu_200_p2;
wire   [7:0] tmp_641_fu_244_p4;
wire   [8:0] tmp_642_fu_262_p3;
wire   [11:0] p_shl14_fu_254_p3;
wire   [11:0] zext_ln1183_fu_270_p1;
wire   [11:0] sub_ln1183_fu_274_p2;
wire   [12:0] tmp_640_fu_312_p3;
wire   [15:0] p_shl16_fu_305_p3;
wire   [15:0] zext_ln1181_1_fu_319_p1;
wire   [15:0] sub_ln1181_1_fu_323_p2;
wire   [15:0] add_ln1181_2_fu_329_p2;
wire   [12:0] tmp_643_fu_346_p3;
wire   [15:0] p_shl_fu_339_p3;
wire   [15:0] zext_ln1183_1_fu_353_p1;
wire   [15:0] sub_ln1183_1_fu_357_p2;
wire   [15:0] add_ln1183_1_fu_363_p2;
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
#0 v65921_fu_84 = 6'd0;
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
            v65921_fu_84 <= v659_fu_286_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v65921_fu_84 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1181_1_reg_396 <= add_ln1181_1_fu_238_p2;
        add_ln1183_reg_402 <= add_ln1183_fu_280_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        idxprom7_i1_cast_reg_385[3 : 0] <= idxprom7_i1_cast_fu_166_p1[3 : 0];
        lshr_ln_reg_391 <= {{ap_sig_allocacmp_v65921_load[5:1]}};
        lshr_ln_reg_391_pp0_iter1_reg <= lshr_ln_reg_391;
    end
end
always @ (*) begin
    if (((tmp_644_fu_292_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v65921_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v65921_load = v65921_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16212_0_ce0_local = 1'b1;
    end else begin
        v16212_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16212_1_ce0_local = 1'b1;
    end else begin
        v16212_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v674_1_ce0_local = 1'b1;
    end else begin
        v674_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v674_1_we0_local = 1'b1;
    end else begin
        v674_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v674_ce0_local = 1'b1;
    end else begin
        v674_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v674_we0_local = 1'b1;
    end else begin
        v674_we0_local = 1'b0;
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
assign add_ln1180_fu_200_p2 = (rem4 + zext_ln1178_fu_182_p1);
assign add_ln1181_1_fu_238_p2 = (sub_ln1181_fu_232_p2 + idxprom3_i19_cast_fu_170_p1);
assign add_ln1181_2_fu_329_p2 = (sub_ln1181_1_fu_323_p2 + idxprom7_i1_cast_reg_385);
assign add_ln1181_fu_206_p2 = (shl_ln + zext_ln1178_1_fu_196_p1);
assign add_ln1183_1_fu_363_p2 = (sub_ln1183_1_fu_357_p2 + idxprom7_i1_cast_reg_385);
assign add_ln1183_fu_280_p2 = (sub_ln1183_fu_274_p2 + idxprom3_i19_cast_fu_170_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign idxprom3_i19_cast_fu_170_p1 = idxprom3_i19;
assign idxprom7_i1_cast_fu_166_p1 = idxprom7_i1;
assign lshr_ln_fu_186_p4 = {{ap_sig_allocacmp_v65921_load[5:1]}};
assign p_shl14_fu_254_p3 = {{tmp_641_fu_244_p4}, {4'd0}};
assign p_shl16_fu_305_p3 = {{add_ln1181_1_reg_396}, {4'd0}};
assign p_shl18_fu_212_p3 = {{add_ln1181_fu_206_p2}, {4'd0}};
assign p_shl_fu_339_p3 = {{add_ln1183_reg_402}, {4'd0}};
assign sub_ln1181_1_fu_323_p2 = (p_shl16_fu_305_p3 - zext_ln1181_1_fu_319_p1);
assign sub_ln1181_fu_232_p2 = (p_shl18_fu_212_p3 - zext_ln1181_fu_228_p1);
assign sub_ln1183_1_fu_357_p2 = (p_shl_fu_339_p3 - zext_ln1183_1_fu_353_p1);
assign sub_ln1183_fu_274_p2 = (p_shl14_fu_254_p3 - zext_ln1183_fu_270_p1);
assign tmp_640_fu_312_p3 = {{add_ln1181_1_reg_396}, {1'd0}};
assign tmp_641_fu_244_p4 = {{add_ln1180_fu_200_p2[8:1]}};
assign tmp_642_fu_262_p3 = {{tmp_641_fu_244_p4}, {1'd0}};
assign tmp_643_fu_346_p3 = {{add_ln1183_reg_402}, {1'd0}};
assign tmp_644_fu_292_p3 = v659_fu_286_p2[32'd5];
assign tmp_fu_220_p3 = {{add_ln1181_fu_206_p2}, {1'd0}};
assign v16212_0_address0 = zext_ln1181_2_fu_334_p1;
assign v16212_0_ce0 = v16212_0_ce0_local;
assign v16212_1_address0 = zext_ln1183_2_fu_368_p1;
assign v16212_1_ce0 = v16212_1_ce0_local;
assign v659_fu_286_p2 = (ap_sig_allocacmp_v65921_load + 6'd2);
assign v674_1_address0 = zext_ln1178_2_fu_373_p1;
assign v674_1_ce0 = v674_1_ce0_local;
assign v674_1_d0 = v16212_0_q0;
assign v674_1_we0 = v674_1_we0_local;
assign v674_address0 = zext_ln1178_2_fu_373_p1;
assign v674_ce0 = v674_ce0_local;
assign v674_d0 = v16212_1_q0;
assign v674_we0 = v674_we0_local;
assign zext_ln1178_1_fu_196_p1 = lshr_ln_fu_186_p4;
assign zext_ln1178_2_fu_373_p1 = lshr_ln_reg_391_pp0_iter1_reg;
assign zext_ln1178_fu_182_p1 = ap_sig_allocacmp_v65921_load;
assign zext_ln1181_1_fu_319_p1 = tmp_640_fu_312_p3;
assign zext_ln1181_2_fu_334_p1 = add_ln1181_2_fu_329_p2;
assign zext_ln1181_fu_228_p1 = tmp_fu_220_p3;
assign zext_ln1183_1_fu_353_p1 = tmp_643_fu_346_p3;
assign zext_ln1183_2_fu_368_p1 = add_ln1183_1_fu_363_p2;
assign zext_ln1183_fu_270_p1 = tmp_642_fu_262_p3;
always @ (posedge ap_clk) begin
    idxprom7_i1_cast_reg_385[15:4] <= 12'b000000000000;
end
endmodule 
