
module forward_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,empty,idxprom_i1,zext_ln14242_2,zext_ln14242,v9173_0_address0,v9173_0_ce0,v9173_0_q0,v9173_1_address0,v9173_1_ce0,v9173_1_q0,v9173_2_address0,v9173_2_ce0,v9173_2_q0,v9173_3_address0,v9173_3_ce0,v9173_3_q0,v9168_3_address0,v9168_3_ce0,v9168_3_we0,v9168_3_d0,v9168_2_address0,v9168_2_ce0,v9168_2_we0,v9168_2_d0,v9168_1_address0,v9168_1_ce0,v9168_1_we0,v9168_1_d0,v9168_address0,v9168_ce0,v9168_we0,v9168_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] rem4;
input  [0:0] empty;
input  [1:0] idxprom_i1;
input  [2:0] zext_ln14242_2;
input  [2:0] zext_ln14242;
output  [11:0] v9173_0_address0;
output   v9173_0_ce0;
input  [7:0] v9173_0_q0;
output  [11:0] v9173_1_address0;
output   v9173_1_ce0;
input  [7:0] v9173_1_q0;
output  [11:0] v9173_2_address0;
output   v9173_2_ce0;
input  [7:0] v9173_2_q0;
output  [11:0] v9173_3_address0;
output   v9173_3_ce0;
input  [7:0] v9173_3_q0;
output  [2:0] v9168_3_address0;
output   v9168_3_ce0;
output   v9168_3_we0;
output  [7:0] v9168_3_d0;
output  [2:0] v9168_2_address0;
output   v9168_2_ce0;
output   v9168_2_we0;
output  [7:0] v9168_2_d0;
output  [2:0] v9168_1_address0;
output   v9168_1_ce0;
output   v9168_1_we0;
output  [7:0] v9168_1_d0;
output  [2:0] v9168_address0;
output   v9168_ce0;
output   v9168_we0;
output  [7:0] v9168_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_340_fu_352_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [11:0] zext_ln14242_cast_fu_242_p1;
reg   [11:0] zext_ln14242_cast_reg_474;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] zext_ln14242_2_cast_fu_246_p1;
reg   [8:0] zext_ln14242_2_cast_reg_480;
wire   [5:0] idxprom_i1_cast_fu_250_p1;
reg   [5:0] idxprom_i1_cast_reg_485;
wire   [2:0] lshr_ln_fu_262_p4;
reg   [2:0] lshr_ln_reg_490;
reg   [2:0] lshr_ln_reg_490_pp0_iter1_reg;
wire   [8:0] add_ln14215_1_fu_330_p2;
reg   [8:0] add_ln14215_1_reg_495;
reg   [3:0] lshr_ln92_reg_501;
wire   [8:0] add_ln14217_1_fu_430_p2;
reg   [8:0] add_ln14217_1_reg_516;
wire   [63:0] zext_ln14212_fu_435_p1;
reg   [63:0] zext_ln14212_reg_522;
wire   [63:0] zext_ln14215_3_fu_386_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14217_3_fu_460_p1;
reg   [5:0] v910945_fu_100;
wire   [5:0] v9109_fu_346_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v910945_load;
reg    v9173_0_ce0_local;
reg    v9173_1_ce0_local;
reg    v9173_2_ce0_local;
reg    v9173_3_ce0_local;
reg    v9168_3_we0_local;
reg    v9168_3_ce0_local;
reg    v9168_2_we0_local;
reg    v9168_2_ce0_local;
reg    v9168_1_we0_local;
reg    v9168_1_ce0_local;
reg    v9168_we0_local;
reg    v9168_ce0_local;
wire   [3:0] or_ln_fu_278_p3;
wire   [5:0] p_shl20_fu_290_p4;
wire   [5:0] zext_ln14215_fu_286_p1;
wire   [5:0] sub_ln14215_fu_300_p2;
wire   [5:0] add_ln14215_fu_306_p2;
wire   [8:0] p_shl19_fu_316_p3;
wire   [8:0] zext_ln14215_1_fu_312_p1;
wire   [8:0] sub_ln14215_1_fu_324_p2;
wire   [5:0] add_ln14214_fu_272_p2;
wire   [11:0] p_shl18_fu_368_p3;
wire   [11:0] zext_ln14215_2_fu_365_p1;
wire   [11:0] sub_ln14215_2_fu_375_p2;
wire   [11:0] add_ln14215_2_fu_381_p2;
wire   [5:0] p_shl17_fu_394_p3;
wire   [5:0] zext_ln14217_fu_391_p1;
wire   [5:0] sub_ln14217_fu_401_p2;
wire   [5:0] add_ln14217_fu_407_p2;
wire   [8:0] p_shl16_fu_416_p3;
wire   [8:0] zext_ln14217_1_fu_412_p1;
wire   [8:0] sub_ln14217_1_fu_424_p2;
wire   [11:0] p_shl_fu_442_p3;
wire   [11:0] zext_ln14217_2_fu_439_p1;
wire   [11:0] sub_ln14217_2_fu_449_p2;
wire   [11:0] add_ln14217_2_fu_455_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
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
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 v910945_fu_100 = 6'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v910945_fu_100 <= v9109_fu_346_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v910945_fu_100 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln14215_1_reg_495 <= add_ln14215_1_fu_330_p2;
        add_ln14217_1_reg_516 <= add_ln14217_1_fu_430_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        idxprom_i1_cast_reg_485[1 : 0] <= idxprom_i1_cast_fu_250_p1[1 : 0];
        lshr_ln92_reg_501 <= {{add_ln14214_fu_272_p2[5:2]}};
        lshr_ln_reg_490 <= {{ap_sig_allocacmp_v910945_load[4:2]}};
        lshr_ln_reg_490_pp0_iter1_reg <= lshr_ln_reg_490;
        zext_ln14242_2_cast_reg_480[2 : 0] <= zext_ln14242_2_cast_fu_246_p1[2 : 0];
        zext_ln14242_cast_reg_474[2 : 0] <= zext_ln14242_cast_fu_242_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln14212_reg_522[2 : 0] <= zext_ln14212_fu_435_p1[2 : 0];
    end
end
always @ (*) begin
    if (((tmp_340_fu_352_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v910945_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v910945_load = v910945_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9168_1_ce0_local = 1'b1;
    end else begin
        v9168_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9168_1_we0_local = 1'b1;
    end else begin
        v9168_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9168_2_ce0_local = 1'b1;
    end else begin
        v9168_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9168_2_we0_local = 1'b1;
    end else begin
        v9168_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9168_3_ce0_local = 1'b1;
    end else begin
        v9168_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9168_3_we0_local = 1'b1;
    end else begin
        v9168_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9168_ce0_local = 1'b1;
    end else begin
        v9168_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9168_we0_local = 1'b1;
    end else begin
        v9168_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9173_0_ce0_local = 1'b1;
    end else begin
        v9173_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9173_1_ce0_local = 1'b1;
    end else begin
        v9173_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9173_2_ce0_local = 1'b1;
    end else begin
        v9173_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9173_3_ce0_local = 1'b1;
    end else begin
        v9173_3_ce0_local = 1'b0;
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
assign add_ln14214_fu_272_p2 = (ap_sig_allocacmp_v910945_load + rem4);
assign add_ln14215_1_fu_330_p2 = (sub_ln14215_1_fu_324_p2 + zext_ln14242_2_cast_fu_246_p1);
assign add_ln14215_2_fu_381_p2 = (sub_ln14215_2_fu_375_p2 + zext_ln14242_cast_reg_474);
assign add_ln14215_fu_306_p2 = (sub_ln14215_fu_300_p2 + idxprom_i1_cast_fu_250_p1);
assign add_ln14217_1_fu_430_p2 = (sub_ln14217_1_fu_424_p2 + zext_ln14242_2_cast_reg_480);
assign add_ln14217_2_fu_455_p2 = (sub_ln14217_2_fu_449_p2 + zext_ln14242_cast_reg_474);
assign add_ln14217_fu_407_p2 = (sub_ln14217_fu_401_p2 + idxprom_i1_cast_reg_485);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign idxprom_i1_cast_fu_250_p1 = idxprom_i1;
assign lshr_ln_fu_262_p4 = {{ap_sig_allocacmp_v910945_load[4:2]}};
assign or_ln_fu_278_p3 = {{empty}, {lshr_ln_fu_262_p4}};
assign p_shl16_fu_416_p3 = {{add_ln14217_fu_407_p2}, {3'd0}};
assign p_shl17_fu_394_p3 = {{lshr_ln92_reg_501}, {2'd0}};
assign p_shl18_fu_368_p3 = {{add_ln14215_1_reg_495}, {3'd0}};
assign p_shl19_fu_316_p3 = {{add_ln14215_fu_306_p2}, {3'd0}};
assign p_shl20_fu_290_p4 = {{{empty}, {lshr_ln_fu_262_p4}}, {2'd0}};
assign p_shl_fu_442_p3 = {{add_ln14217_1_reg_516}, {3'd0}};
assign sub_ln14215_1_fu_324_p2 = (p_shl19_fu_316_p3 - zext_ln14215_1_fu_312_p1);
assign sub_ln14215_2_fu_375_p2 = (p_shl18_fu_368_p3 - zext_ln14215_2_fu_365_p1);
assign sub_ln14215_fu_300_p2 = (p_shl20_fu_290_p4 - zext_ln14215_fu_286_p1);
assign sub_ln14217_1_fu_424_p2 = (p_shl16_fu_416_p3 - zext_ln14217_1_fu_412_p1);
assign sub_ln14217_2_fu_449_p2 = (p_shl_fu_442_p3 - zext_ln14217_2_fu_439_p1);
assign sub_ln14217_fu_401_p2 = (p_shl17_fu_394_p3 - zext_ln14217_fu_391_p1);
assign tmp_340_fu_352_p3 = v9109_fu_346_p2[32'd5];
assign v9109_fu_346_p2 = (ap_sig_allocacmp_v910945_load + 6'd4);
assign v9168_1_address0 = zext_ln14212_reg_522;
assign v9168_1_ce0 = v9168_1_ce0_local;
assign v9168_1_d0 = v9173_2_q0;
assign v9168_1_we0 = v9168_1_we0_local;
assign v9168_2_address0 = zext_ln14212_reg_522;
assign v9168_2_ce0 = v9168_2_ce0_local;
assign v9168_2_d0 = v9173_1_q0;
assign v9168_2_we0 = v9168_2_we0_local;
assign v9168_3_address0 = zext_ln14212_fu_435_p1;
assign v9168_3_ce0 = v9168_3_ce0_local;
assign v9168_3_d0 = v9173_0_q0;
assign v9168_3_we0 = v9168_3_we0_local;
assign v9168_address0 = zext_ln14212_reg_522;
assign v9168_ce0 = v9168_ce0_local;
assign v9168_d0 = v9173_3_q0;
assign v9168_we0 = v9168_we0_local;
assign v9173_0_address0 = zext_ln14215_3_fu_386_p1;
assign v9173_0_ce0 = v9173_0_ce0_local;
assign v9173_1_address0 = zext_ln14217_3_fu_460_p1;
assign v9173_1_ce0 = v9173_1_ce0_local;
assign v9173_2_address0 = zext_ln14217_3_fu_460_p1;
assign v9173_2_ce0 = v9173_2_ce0_local;
assign v9173_3_address0 = zext_ln14217_3_fu_460_p1;
assign v9173_3_ce0 = v9173_3_ce0_local;
assign zext_ln14212_fu_435_p1 = lshr_ln_reg_490_pp0_iter1_reg;
assign zext_ln14215_1_fu_312_p1 = add_ln14215_fu_306_p2;
assign zext_ln14215_2_fu_365_p1 = add_ln14215_1_reg_495;
assign zext_ln14215_3_fu_386_p1 = add_ln14215_2_fu_381_p2;
assign zext_ln14215_fu_286_p1 = or_ln_fu_278_p3;
assign zext_ln14217_1_fu_412_p1 = add_ln14217_fu_407_p2;
assign zext_ln14217_2_fu_439_p1 = add_ln14217_1_reg_516;
assign zext_ln14217_3_fu_460_p1 = add_ln14217_2_fu_455_p2;
assign zext_ln14217_fu_391_p1 = lshr_ln92_reg_501;
assign zext_ln14242_2_cast_fu_246_p1 = zext_ln14242_2;
assign zext_ln14242_cast_fu_242_p1 = zext_ln14242;
always @ (posedge ap_clk) begin
    zext_ln14242_cast_reg_474[11:3] <= 9'b000000000;
    zext_ln14242_2_cast_reg_480[8:3] <= 6'b000000;
    idxprom_i1_cast_reg_485[5:2] <= 4'b0000;
    zext_ln14212_reg_522[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
