module forward_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_Pipeline_VITIS_LOOP (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v87_1_address0,v87_1_ce0,v87_1_q0,rem_r,shl_ln,v82_0_address0,v82_0_ce0,v82_0_we0,v82_0_d0,v82_0_address1,v82_0_ce1,v82_0_q1,brmerge_i,v87_address0,v87_ce0,v87_q0,v82_1_address0,v82_1_ce0,v82_1_we0,v82_1_d0,v82_1_address1,v82_1_ce1,v82_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] v87_1_address0;
output   v87_1_ce0;
input  [7:0] v87_1_q0;
input  [8:0] rem_r;
input  [7:0] shl_ln;
output  [7:0] v82_0_address0;
output   v82_0_ce0;
output   v82_0_we0;
output  [7:0] v82_0_d0;
output  [7:0] v82_0_address1;
output   v82_0_ce1;
input  [7:0] v82_0_q1;
input  [0:0] brmerge_i;
output  [3:0] v87_address0;
output   v87_ce0;
input  [7:0] v87_q0;
output  [7:0] v82_1_address0;
output   v82_1_ce0;
output   v82_1_we0;
output  [7:0] v82_1_d0;
output  [7:0] v82_1_address1;
output   v82_1_ce1;
input  [7:0] v82_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_327_fu_262_p3;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] v82_0_addr_reg_516;
reg   [7:0] v82_1_addr_reg_527;
wire   [0:0] addr_cmp_fu_245_p2;
reg   [0:0] addr_cmp_reg_533;
wire   [63:0] zext_ln157_2_fu_206_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln160_fu_222_p1;
wire   [63:0] zext_ln169_fu_237_p1;
reg   [63:0] reuse_addr_reg_fu_80;
wire    ap_loop_init;
reg   [7:0] reuse_reg_fu_84;
wire   [7:0] select_ln176_fu_461_p3;
reg   [5:0] v5529_fu_88;
wire   [5:0] v55_fu_256_p2;
reg    v87_1_ce0_local;
reg    v82_0_ce1_local;
reg    v82_0_we0_local;
wire   [7:0] select_ln167_fu_359_p3;
reg    v82_0_ce0_local;
reg    v87_ce0_local;
reg    v82_1_ce1_local;
reg    v82_1_we0_local;
reg    v82_1_ce0_local;
wire   [4:0] lshr_ln_fu_192_p4;
wire   [8:0] zext_ln157_fu_188_p1;
wire   [7:0] zext_ln157_1_fu_202_p1;
wire   [7:0] add_ln160_1_fu_217_p2;
wire   [8:0] add_ln160_fu_212_p2;
wire   [7:0] lshr_ln86_fu_227_p4;
wire  signed [7:0] v61_fu_275_p2;
wire   [10:0] mul_ln165_fu_285_p1;
wire   [18:0] mul_ln165_fu_285_p2;
wire   [17:0] trunc_ln165_fu_291_p1;
wire   [17:0] sub_ln165_fu_295_p2;
wire   [3:0] tmp_322_fu_309_p4;
wire   [4:0] tmp_323_fu_323_p4;
wire   [0:0] tmp_fu_301_p3;
wire  signed [7:0] sext_ln165_1_fu_319_p1;
wire  signed [7:0] sext_ln165_2_fu_333_p1;
wire   [7:0] select_ln165_fu_337_p3;
wire   [7:0] sub_ln165_1_fu_345_p2;
wire   [7:0] select_ln165_1_fu_351_p3;
wire   [7:0] reuse_select_fu_370_p3;
wire  signed [7:0] add_ln172_fu_377_p2;
wire   [10:0] mul_ln174_fu_387_p1;
wire   [18:0] mul_ln174_fu_387_p2;
wire   [17:0] trunc_ln174_fu_393_p1;
wire   [17:0] sub_ln174_fu_397_p2;
wire   [3:0] tmp_325_fu_411_p4;
wire   [4:0] tmp_326_fu_425_p4;
wire   [0:0] tmp_324_fu_403_p3;
wire  signed [7:0] sext_ln174_1_fu_421_p1;
wire  signed [7:0] sext_ln174_2_fu_435_p1;
wire   [7:0] select_ln174_fu_439_p3;
wire   [7:0] sub_ln174_1_fu_447_p2;
wire   [7:0] select_ln174_1_fu_453_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 reuse_addr_reg_fu_80 = 64'd0;
#0 reuse_reg_fu_84 = 8'd0;
#0 v5529_fu_88 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_mul_8s_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_8s_11ns_19_1_1_U12927(.din0(v61_fu_275_p2),.din1(mul_ln165_fu_285_p1),.dout(mul_ln165_fu_285_p2));
forward_mul_8s_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_8s_11ns_19_1_1_U12928(.din0(add_ln172_fu_377_p2),.din1(mul_ln174_fu_387_p1),.dout(mul_ln174_fu_387_p2));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            reuse_addr_reg_fu_80 <= 64'd18446744073709551615;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            reuse_addr_reg_fu_80 <= zext_ln169_fu_237_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            reuse_reg_fu_84 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            reuse_reg_fu_84 <= select_ln176_fu_461_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v5529_fu_88 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v5529_fu_88 <= v55_fu_256_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        addr_cmp_reg_533 <= addr_cmp_fu_245_p2;
        v82_0_addr_reg_516 <= zext_ln160_fu_222_p1;
        v82_1_addr_reg_527 <= zext_ln169_fu_237_p1;
    end
end
always @ (*) begin
    if (((tmp_327_fu_262_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v82_0_ce0_local = 1'b1;
    end else begin
        v82_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v82_0_ce1_local = 1'b1;
    end else begin
        v82_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v82_0_we0_local = 1'b1;
    end else begin
        v82_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v82_1_ce0_local = 1'b1;
    end else begin
        v82_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v82_1_ce1_local = 1'b1;
    end else begin
        v82_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v82_1_we0_local = 1'b1;
    end else begin
        v82_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v87_1_ce0_local = 1'b1;
    end else begin
        v87_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v87_ce0_local = 1'b1;
    end else begin
        v87_ce0_local = 1'b0;
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
assign add_ln160_1_fu_217_p2 = (shl_ln + zext_ln157_1_fu_202_p1);
assign add_ln160_fu_212_p2 = (rem_r + zext_ln157_fu_188_p1);
assign add_ln172_fu_377_p2 = (reuse_select_fu_370_p3 + v87_q0);
assign addr_cmp_fu_245_p2 = ((reuse_addr_reg_fu_80 == zext_ln169_fu_237_p1) ? 1'b1 : 1'b0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln86_fu_227_p4 = {{add_ln160_fu_212_p2[8:1]}};
assign lshr_ln_fu_192_p4 = {{v5529_fu_88[5:1]}};
assign mul_ln165_fu_285_p1 = 19'd607;
assign mul_ln174_fu_387_p1 = 19'd607;
assign reuse_select_fu_370_p3 = ((addr_cmp_reg_533[0:0] == 1'b1) ? reuse_reg_fu_84 : v82_1_q1);
assign select_ln165_1_fu_351_p3 = ((tmp_fu_301_p3[0:0] == 1'b1) ? sext_ln165_1_fu_319_p1 : sub_ln165_1_fu_345_p2);
assign select_ln165_fu_337_p3 = ((tmp_fu_301_p3[0:0] == 1'b1) ? sext_ln165_1_fu_319_p1 : sext_ln165_2_fu_333_p1);
assign select_ln167_fu_359_p3 = ((brmerge_i[0:0] == 1'b1) ? v61_fu_275_p2 : select_ln165_1_fu_351_p3);
assign select_ln174_1_fu_453_p3 = ((tmp_324_fu_403_p3[0:0] == 1'b1) ? sext_ln174_1_fu_421_p1 : sub_ln174_1_fu_447_p2);
assign select_ln174_fu_439_p3 = ((tmp_324_fu_403_p3[0:0] == 1'b1) ? sext_ln174_1_fu_421_p1 : sext_ln174_2_fu_435_p1);
assign select_ln176_fu_461_p3 = ((brmerge_i[0:0] == 1'b1) ? add_ln172_fu_377_p2 : select_ln174_1_fu_453_p3);
assign sext_ln165_1_fu_319_p1 = $signed(tmp_322_fu_309_p4);
assign sext_ln165_2_fu_333_p1 = $signed(tmp_323_fu_323_p4);
assign sext_ln174_1_fu_421_p1 = $signed(tmp_325_fu_411_p4);
assign sext_ln174_2_fu_435_p1 = $signed(tmp_326_fu_425_p4);
assign sub_ln165_1_fu_345_p2 = (8'd0 - select_ln165_fu_337_p3);
assign sub_ln165_fu_295_p2 = (18'd0 - trunc_ln165_fu_291_p1);
assign sub_ln174_1_fu_447_p2 = (8'd0 - select_ln174_fu_439_p3);
assign sub_ln174_fu_397_p2 = (18'd0 - trunc_ln174_fu_393_p1);
assign tmp_322_fu_309_p4 = {{sub_ln165_fu_295_p2[17:14]}};
assign tmp_323_fu_323_p4 = {{mul_ln165_fu_285_p2[18:14]}};
assign tmp_324_fu_403_p3 = add_ln172_fu_377_p2[32'd7];
assign tmp_325_fu_411_p4 = {{sub_ln174_fu_397_p2[17:14]}};
assign tmp_326_fu_425_p4 = {{mul_ln174_fu_387_p2[18:14]}};
assign tmp_327_fu_262_p3 = v55_fu_256_p2[32'd5];
assign tmp_fu_301_p3 = v61_fu_275_p2[32'd7];
assign trunc_ln165_fu_291_p1 = mul_ln165_fu_285_p2[17:0];
assign trunc_ln174_fu_393_p1 = mul_ln174_fu_387_p2[17:0];
assign v55_fu_256_p2 = (v5529_fu_88 + 6'd2);
assign v61_fu_275_p2 = (v82_0_q1 + v87_1_q0);
assign v82_0_address0 = v82_0_addr_reg_516;
assign v82_0_address1 = zext_ln160_fu_222_p1;
assign v82_0_ce0 = v82_0_ce0_local;
assign v82_0_ce1 = v82_0_ce1_local;
assign v82_0_d0 = select_ln167_fu_359_p3;
assign v82_0_we0 = v82_0_we0_local;
assign v82_1_address0 = v82_1_addr_reg_527;
assign v82_1_address1 = zext_ln169_fu_237_p1;
assign v82_1_ce0 = v82_1_ce0_local;
assign v82_1_ce1 = v82_1_ce1_local;
assign v82_1_d0 = select_ln176_fu_461_p3;
assign v82_1_we0 = v82_1_we0_local;
assign v87_1_address0 = zext_ln157_2_fu_206_p1;
assign v87_1_ce0 = v87_1_ce0_local;
assign v87_address0 = zext_ln157_2_fu_206_p1;
assign v87_ce0 = v87_ce0_local;
assign zext_ln157_1_fu_202_p1 = lshr_ln_fu_192_p4;
assign zext_ln157_2_fu_206_p1 = lshr_ln_fu_192_p4;
assign zext_ln157_fu_188_p1 = v5529_fu_88;
assign zext_ln160_fu_222_p1 = add_ln160_1_fu_217_p2;
assign zext_ln169_fu_237_p1 = lshr_ln86_fu_227_p4;
endmodule 