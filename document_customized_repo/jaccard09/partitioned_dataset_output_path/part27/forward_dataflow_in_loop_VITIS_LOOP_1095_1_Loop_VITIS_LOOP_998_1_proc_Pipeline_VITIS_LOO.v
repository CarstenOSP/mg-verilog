
module forward_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_Pipeline_VITIS_LOO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v9033_0_address0,v9033_0_ce0,v9033_0_we0,v9033_0_d0,v9033_1_address0,v9033_1_ce0,v9033_1_we0,v9033_1_d0,v562_1_address0,v562_1_ce0,v562_1_q0,rem4,shl_ln,urem_ln1098_cast,urem_ln1097_cast,v562_address0,v562_ce0,v562_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v9033_0_address0;
output   v9033_0_ce0;
output   v9033_0_we0;
output  [7:0] v9033_0_d0;
output  [11:0] v9033_1_address0;
output   v9033_1_ce0;
output   v9033_1_we0;
output  [7:0] v9033_1_d0;
output  [3:0] v562_1_address0;
output   v562_1_ce0;
input  [7:0] v562_1_q0;
input  [7:0] rem4;
input  [6:0] shl_ln;
input  [2:0] urem_ln1098_cast;
input  [2:0] urem_ln1097_cast;
output  [3:0] v562_address0;
output   v562_ce0;
input  [7:0] v562_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_241_fu_284_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [11:0] urem_ln1097_cast_cast_fu_160_p1;
reg   [11:0] urem_ln1097_cast_cast_reg_356;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] add_ln1001_2_fu_234_p2;
reg   [9:0] add_ln1001_2_reg_367;
wire   [9:0] add_ln1003_fu_272_p2;
reg   [9:0] add_ln1003_reg_378;
wire   [63:0] zext_ln998_2_fu_194_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1001_3_fu_318_p1;
wire   [63:0] zext_ln1003_3_fu_344_p1;
reg   [5:0] v51836_fu_78;
wire   [5:0] v518_fu_278_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v51836_load;
reg    v562_1_ce0_local;
reg    v562_ce0_local;
reg    v9033_0_we0_local;
reg    v9033_0_ce0_local;
reg    v9033_1_we0_local;
reg    v9033_1_ce0_local;
wire   [4:0] lshr_ln_fu_180_p4;
wire   [7:0] zext_ln998_fu_176_p1;
wire   [6:0] zext_ln998_1_fu_190_p1;
wire   [6:0] add_ln1001_1_fu_206_p2;
wire   [8:0] tmp_fu_216_p3;
wire   [9:0] zext_ln1001_1_fu_224_p1;
wire   [9:0] zext_ln1001_fu_212_p1;
wire   [9:0] add_ln1001_4_fu_228_p2;
wire   [9:0] urem_ln1098_cast_cast_fu_164_p1;
wire   [7:0] add_ln1001_fu_200_p2;
wire   [6:0] lshr_ln23_fu_240_p4;
wire   [8:0] tmp_239_fu_254_p3;
wire   [9:0] zext_ln1003_1_fu_262_p1;
wire   [9:0] zext_ln1003_fu_250_p1;
wire   [9:0] add_ln1003_2_fu_266_p2;
wire   [11:0] tmp_238_fu_300_p3;
wire   [11:0] zext_ln1001_2_fu_297_p1;
wire   [11:0] add_ln1001_5_fu_307_p2;
wire   [11:0] add_ln1001_3_fu_313_p2;
wire   [11:0] tmp_240_fu_326_p3;
wire   [11:0] zext_ln1003_2_fu_323_p1;
wire   [11:0] add_ln1003_3_fu_333_p2;
wire   [11:0] add_ln1003_1_fu_339_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 v51836_fu_78 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v51836_fu_78 <= v518_fu_278_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v51836_fu_78 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1001_2_reg_367 <= add_ln1001_2_fu_234_p2;
        add_ln1003_reg_378 <= add_ln1003_fu_272_p2;
        urem_ln1097_cast_cast_reg_356[2 : 0] <= urem_ln1097_cast_cast_fu_160_p1[2 : 0];
    end
end
always @ (*) begin
    if (((tmp_241_fu_284_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v51836_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v51836_load = v51836_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v562_1_ce0_local = 1'b1;
    end else begin
        v562_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v562_ce0_local = 1'b1;
    end else begin
        v562_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9033_0_ce0_local = 1'b1;
    end else begin
        v9033_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9033_0_we0_local = 1'b1;
    end else begin
        v9033_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9033_1_ce0_local = 1'b1;
    end else begin
        v9033_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9033_1_we0_local = 1'b1;
    end else begin
        v9033_1_we0_local = 1'b0;
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
assign add_ln1001_1_fu_206_p2 = (shl_ln + zext_ln998_1_fu_190_p1);
assign add_ln1001_2_fu_234_p2 = (add_ln1001_4_fu_228_p2 + urem_ln1098_cast_cast_fu_164_p1);
assign add_ln1001_3_fu_313_p2 = (add_ln1001_5_fu_307_p2 + urem_ln1097_cast_cast_reg_356);
assign add_ln1001_4_fu_228_p2 = (zext_ln1001_1_fu_224_p1 + zext_ln1001_fu_212_p1);
assign add_ln1001_5_fu_307_p2 = (tmp_238_fu_300_p3 + zext_ln1001_2_fu_297_p1);
assign add_ln1001_fu_200_p2 = (rem4 + zext_ln998_fu_176_p1);
assign add_ln1003_1_fu_339_p2 = (add_ln1003_3_fu_333_p2 + urem_ln1097_cast_cast_reg_356);
assign add_ln1003_2_fu_266_p2 = (zext_ln1003_1_fu_262_p1 + zext_ln1003_fu_250_p1);
assign add_ln1003_3_fu_333_p2 = (tmp_240_fu_326_p3 + zext_ln1003_2_fu_323_p1);
assign add_ln1003_fu_272_p2 = (add_ln1003_2_fu_266_p2 + urem_ln1098_cast_cast_fu_164_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln23_fu_240_p4 = {{add_ln1001_fu_200_p2[7:1]}};
assign lshr_ln_fu_180_p4 = {{ap_sig_allocacmp_v51836_load[5:1]}};
assign tmp_238_fu_300_p3 = {{add_ln1001_2_reg_367}, {2'd0}};
assign tmp_239_fu_254_p3 = {{lshr_ln23_fu_240_p4}, {2'd0}};
assign tmp_240_fu_326_p3 = {{add_ln1003_reg_378}, {2'd0}};
assign tmp_241_fu_284_p3 = v518_fu_278_p2[32'd5];
assign tmp_fu_216_p3 = {{add_ln1001_1_fu_206_p2}, {2'd0}};
assign urem_ln1097_cast_cast_fu_160_p1 = urem_ln1097_cast;
assign urem_ln1098_cast_cast_fu_164_p1 = urem_ln1098_cast;
assign v518_fu_278_p2 = (ap_sig_allocacmp_v51836_load + 6'd2);
assign v562_1_address0 = zext_ln998_2_fu_194_p1;
assign v562_1_ce0 = v562_1_ce0_local;
assign v562_address0 = zext_ln998_2_fu_194_p1;
assign v562_ce0 = v562_ce0_local;
assign v9033_0_address0 = zext_ln1001_3_fu_318_p1;
assign v9033_0_ce0 = v9033_0_ce0_local;
assign v9033_0_d0 = v562_1_q0;
assign v9033_0_we0 = v9033_0_we0_local;
assign v9033_1_address0 = zext_ln1003_3_fu_344_p1;
assign v9033_1_ce0 = v9033_1_ce0_local;
assign v9033_1_d0 = v562_q0;
assign v9033_1_we0 = v9033_1_we0_local;
assign zext_ln1001_1_fu_224_p1 = tmp_fu_216_p3;
assign zext_ln1001_2_fu_297_p1 = add_ln1001_2_reg_367;
assign zext_ln1001_3_fu_318_p1 = add_ln1001_3_fu_313_p2;
assign zext_ln1001_fu_212_p1 = add_ln1001_1_fu_206_p2;
assign zext_ln1003_1_fu_262_p1 = tmp_239_fu_254_p3;
assign zext_ln1003_2_fu_323_p1 = add_ln1003_reg_378;
assign zext_ln1003_3_fu_344_p1 = add_ln1003_1_fu_339_p2;
assign zext_ln1003_fu_250_p1 = lshr_ln23_fu_240_p4;
assign zext_ln998_1_fu_190_p1 = lshr_ln_fu_180_p4;
assign zext_ln998_2_fu_194_p1 = lshr_ln_fu_180_p4;
assign zext_ln998_fu_176_p1 = ap_sig_allocacmp_v51836_load;
always @ (posedge ap_clk) begin
    urem_ln1097_cast_cast_reg_356[11:3] <= 9'b000000000;
end
endmodule 
