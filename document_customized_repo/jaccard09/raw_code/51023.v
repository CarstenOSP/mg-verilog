module ms_mergesort_merge_Pipeline_merge_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,j,stop,a_0_address0,a_0_ce0,a_0_q0,a_0_address1,a_0_ce1,a_0_q1,a_1_address0,a_1_ce0,a_1_q0,a_1_address1,a_1_ce1,a_1_q1,a_2_address0,a_2_ce0,a_2_q0,a_2_address1,a_2_ce1,a_2_q1,a_3_address0,a_3_ce0,a_3_q0,a_3_address1,a_3_ce1,a_3_q1,add9,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] j;
input  [31:0] stop;
output  [8:0] a_0_address0;
output   a_0_ce0;
input  [31:0] a_0_q0;
output  [8:0] a_0_address1;
output   a_0_ce1;
input  [31:0] a_0_q1;
output  [8:0] a_1_address0;
output   a_1_ce0;
input  [31:0] a_1_q0;
output  [8:0] a_1_address1;
output   a_1_ce1;
input  [31:0] a_1_q1;
output  [8:0] a_2_address0;
output   a_2_ce0;
input  [31:0] a_2_q0;
output  [8:0] a_2_address1;
output   a_2_ce1;
input  [31:0] a_2_q1;
output  [8:0] a_3_address0;
output   a_3_ce0;
input  [31:0] a_3_q0;
output  [8:0] a_3_address1;
output   a_3_ce1;
input  [31:0] a_3_q1;
input  [10:0] add9;
output  [10:0] temp_address0;
output   temp_ce0;
output   temp_we0;
output  [31:0] temp_d0;
output  [10:0] temp_address1;
output   temp_ce1;
output   temp_we1;
output  [31:0] temp_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11_1_fu_279_p2;
wire   [0:0] icmp_ln11_fu_217_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln11_reg_363;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln11_reg_363_pp0_iter1_reg;
wire   [1:0] trunc_ln11_fu_223_p1;
reg   [1:0] trunc_ln11_reg_367;
wire   [10:0] sub_ln12_fu_249_p2;
reg   [10:0] sub_ln12_reg_393;
reg   [10:0] sub_ln12_reg_393_pp0_iter1_reg;
reg   [0:0] icmp_ln11_1_reg_398;
reg   [0:0] icmp_ln11_1_reg_398_pp0_iter1_reg;
wire   [10:0] sub_ln12_1_fu_285_p2;
reg   [10:0] sub_ln12_1_reg_422;
reg   [10:0] sub_ln12_1_reg_422_pp0_iter1_reg;
wire   [31:0] tmp_2_fu_302_p11;
reg   [31:0] tmp_2_reg_427;
wire   [31:0] tmp_3_fu_325_p11;
reg   [31:0] tmp_3_reg_432;
wire   [63:0] zext_ln5_1_fu_241_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln11_fu_271_p1;
wire   [63:0] zext_ln12_fu_348_p1;
wire   [63:0] zext_ln12_1_fu_352_p1;
reg   [31:0] j_1_fu_62;
wire   [31:0] add_ln11_1_fu_291_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_j_6;
reg    a_0_ce1_local;
reg    a_0_ce0_local;
reg    a_1_ce1_local;
reg    a_1_ce0_local;
reg    a_2_ce1_local;
reg    a_2_ce0_local;
reg    a_3_ce1_local;
reg    a_3_ce0_local;
reg    temp_we1_local;
reg    temp_ce1_local;
reg    temp_we0_local;
reg    temp_ce0_local;
wire   [8:0] lshr_ln5_1_fu_231_p4;
wire   [10:0] trunc_ln11_1_fu_227_p1;
wire   [10:0] add_ln11_fu_255_p2;
wire   [8:0] lshr_ln_fu_261_p4;
wire   [31:0] tmp_2_fu_302_p9;
wire   [31:0] tmp_3_fu_325_p9;
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
reg    ap_condition_327;
wire   [1:0] tmp_2_fu_302_p1;
wire   [1:0] tmp_2_fu_302_p3;
wire  signed [1:0] tmp_2_fu_302_p5;
wire  signed [1:0] tmp_2_fu_302_p7;
wire  signed [1:0] tmp_3_fu_325_p1;
wire   [1:0] tmp_3_fu_325_p3;
wire   [1:0] tmp_3_fu_325_p5;
wire  signed [1:0] tmp_3_fu_325_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 j_1_fu_62 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U12(.din0(a_0_q1),.din1(a_1_q1),.din2(a_2_q1),.din3(a_3_q1),.def(tmp_2_fu_302_p9),.sel(trunc_ln11_reg_367),.dout(tmp_2_fu_302_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U13(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_3_fu_325_p9),.sel(trunc_ln11_reg_367),.dout(tmp_3_fu_325_p11));
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_327)) begin
            j_1_fu_62 <= add_ln11_1_fu_291_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_1_fu_62 <= j;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln11_1_reg_398 <= icmp_ln11_1_fu_279_p2;
        icmp_ln11_1_reg_398_pp0_iter1_reg <= icmp_ln11_1_reg_398;
        icmp_ln11_reg_363 <= icmp_ln11_fu_217_p2;
        icmp_ln11_reg_363_pp0_iter1_reg <= icmp_ln11_reg_363;
        sub_ln12_1_reg_422 <= sub_ln12_1_fu_285_p2;
        sub_ln12_1_reg_422_pp0_iter1_reg <= sub_ln12_1_reg_422;
        sub_ln12_reg_393 <= sub_ln12_fu_249_p2;
        sub_ln12_reg_393_pp0_iter1_reg <= sub_ln12_reg_393;
        tmp_2_reg_427 <= tmp_2_fu_302_p11;
        tmp_3_reg_432 <= tmp_3_fu_325_p11;
        trunc_ln11_reg_367 <= trunc_ln11_fu_223_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_0_ce1_local = 1'b1;
    end else begin
        a_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_1_ce1_local = 1'b1;
    end else begin
        a_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_2_ce1_local = 1'b1;
    end else begin
        a_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_3_ce1_local = 1'b1;
    end else begin
        a_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln11_fu_217_p2 == 1'd1) | (icmp_ln11_1_fu_279_p2 == 1'd0)))) begin
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
        ap_sig_allocacmp_j_6 = j;
    end else begin
        ap_sig_allocacmp_j_6 = j_1_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln11_1_reg_398_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_363_pp0_iter1_reg == 1'd0))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln11_reg_363_pp0_iter1_reg == 1'd0))) begin
        temp_we1_local = 1'b1;
    end else begin
        temp_we1_local = 1'b0;
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
assign a_0_address0 = zext_ln11_fu_271_p1;
assign a_0_address1 = zext_ln5_1_fu_241_p1;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_ce1 = a_0_ce1_local;
assign a_1_address0 = zext_ln11_fu_271_p1;
assign a_1_address1 = zext_ln5_1_fu_241_p1;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_ce1 = a_1_ce1_local;
assign a_2_address0 = zext_ln11_fu_271_p1;
assign a_2_address1 = zext_ln5_1_fu_241_p1;
assign a_2_ce0 = a_2_ce0_local;
assign a_2_ce1 = a_2_ce1_local;
assign a_3_address0 = zext_ln11_fu_271_p1;
assign a_3_address1 = zext_ln5_1_fu_241_p1;
assign a_3_ce0 = a_3_ce0_local;
assign a_3_ce1 = a_3_ce1_local;
assign add_ln11_1_fu_291_p2 = (ap_sig_allocacmp_j_6 + 32'd2);
assign add_ln11_fu_255_p2 = (trunc_ln11_1_fu_227_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_327 = ((icmp_ln11_fu_217_p2 == 1'd0) & (icmp_ln11_1_fu_279_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln11_1_fu_279_p2 = (($signed(ap_sig_allocacmp_j_6) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_217_p2 = (($signed(ap_sig_allocacmp_j_6) > $signed(stop)) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_231_p4 = {{ap_sig_allocacmp_j_6[10:2]}};
assign lshr_ln_fu_261_p4 = {{add_ln11_fu_255_p2[10:2]}};
assign sub_ln12_1_fu_285_p2 = (add9 - add_ln11_fu_255_p2);
assign sub_ln12_fu_249_p2 = (add9 - trunc_ln11_1_fu_227_p1);
assign temp_address0 = zext_ln12_1_fu_352_p1;
assign temp_address1 = zext_ln12_fu_348_p1;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign temp_d0 = tmp_3_reg_432;
assign temp_d1 = tmp_2_reg_427;
assign temp_we0 = temp_we0_local;
assign temp_we1 = temp_we1_local;
assign tmp_2_fu_302_p9 = 'bx;
assign tmp_3_fu_325_p9 = 'bx;
assign trunc_ln11_1_fu_227_p1 = ap_sig_allocacmp_j_6[10:0];
assign trunc_ln11_fu_223_p1 = ap_sig_allocacmp_j_6[1:0];
assign zext_ln11_fu_271_p1 = lshr_ln_fu_261_p4;
assign zext_ln12_1_fu_352_p1 = sub_ln12_1_reg_422_pp0_iter1_reg;
assign zext_ln12_fu_348_p1 = sub_ln12_reg_393_pp0_iter1_reg;
assign zext_ln5_1_fu_241_p1 = lshr_ln5_1_fu_231_p4;
endmodule 