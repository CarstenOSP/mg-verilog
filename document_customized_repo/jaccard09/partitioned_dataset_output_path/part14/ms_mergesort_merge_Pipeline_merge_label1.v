
module ms_mergesort_merge_Pipeline_merge_label1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln7_1,zext_ln7_2,a_0_address0,a_0_ce0,a_0_q0,a_1_address0,a_1_ce0,a_1_q0,a_2_address0,a_2_ce0,a_2_q0,a_3_address0,a_3_ce0,a_3_q0,a_4_address0,a_4_ce0,a_4_q0,a_5_address0,a_5_ce0,a_5_q0,a_6_address0,a_6_ce0,a_6_q0,a_7_address0,a_7_ce0,a_7_q0,temp_address0,temp_ce0,temp_we0,temp_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [10:0] zext_ln7_1;
input  [10:0] zext_ln7_2;
output  [7:0] a_0_address0;
output   a_0_ce0;
input  [31:0] a_0_q0;
output  [7:0] a_1_address0;
output   a_1_ce0;
input  [31:0] a_1_q0;
output  [7:0] a_2_address0;
output   a_2_ce0;
input  [31:0] a_2_q0;
output  [7:0] a_3_address0;
output   a_3_ce0;
input  [31:0] a_3_q0;
output  [7:0] a_4_address0;
output   a_4_ce0;
input  [31:0] a_4_q0;
output  [7:0] a_5_address0;
output   a_5_ce0;
input  [31:0] a_5_q0;
output  [7:0] a_6_address0;
output   a_6_ce0;
input  [31:0] a_6_q0;
output  [7:0] a_7_address0;
output   a_7_ce0;
input  [31:0] a_7_q0;
output  [10:0] temp_address0;
output   temp_ce0;
output   temp_we0;
output  [31:0] temp_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln7_fu_221_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [11:0] i_3_reg_314;
wire    ap_block_pp0_stage0_11001;
reg   [11:0] i_3_reg_314_pp0_iter1_reg;
wire   [31:0] tmp_fu_263_p19;
reg   [31:0] tmp_reg_364;
wire   [63:0] zext_ln5_fu_237_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln7_fu_303_p1;
reg   [11:0] i_fu_72;
wire   [11:0] zext_ln7_1_cast_fu_205_p1;
wire   [11:0] add_ln7_fu_249_p2;
wire    ap_loop_init;
reg   [11:0] ap_sig_allocacmp_i_3;
reg    a_0_ce0_local;
reg    a_1_ce0_local;
reg    a_2_ce0_local;
reg    a_3_ce0_local;
reg    a_4_ce0_local;
reg    a_5_ce0_local;
reg    a_6_ce0_local;
reg    a_7_ce0_local;
reg    temp_we0_local;
reg    temp_ce0_local;
wire   [11:0] zext_ln7_2_cast_fu_209_p1;
wire   [7:0] lshr_ln5_fu_227_p4;
wire   [31:0] tmp_fu_263_p17;
wire   [2:0] tmp_fu_263_p18;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_fu_263_p1;
wire   [2:0] tmp_fu_263_p3;
wire   [2:0] tmp_fu_263_p5;
wire   [2:0] tmp_fu_263_p7;
wire  signed [2:0] tmp_fu_263_p9;
wire  signed [2:0] tmp_fu_263_p11;
wire  signed [2:0] tmp_fu_263_p13;
wire  signed [2:0] tmp_fu_263_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_72 = 12'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.din4(a_4_q0),.din5(a_5_q0),.din6(a_6_q0),.din7(a_7_q0),.def(tmp_fu_263_p17),.sel(tmp_fu_263_p18),.dout(tmp_fu_263_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln7_fu_221_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_72 <= add_ln7_fu_249_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_72 <= zext_ln7_1_cast_fu_205_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        i_3_reg_314 <= ap_sig_allocacmp_i_3;
        i_3_reg_314_pp0_iter1_reg <= i_3_reg_314;
        tmp_reg_364 <= tmp_fu_263_p19;
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
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
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
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_4_ce0_local = 1'b1;
    end else begin
        a_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_5_ce0_local = 1'b1;
    end else begin
        a_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_6_ce0_local = 1'b1;
    end else begin
        a_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_7_ce0_local = 1'b1;
    end else begin
        a_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln7_fu_221_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_3 = zext_ln7_1_cast_fu_205_p1;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_72;
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
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
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
assign a_0_address0 = zext_ln5_fu_237_p1;
assign a_0_ce0 = a_0_ce0_local;
assign a_1_address0 = zext_ln5_fu_237_p1;
assign a_1_ce0 = a_1_ce0_local;
assign a_2_address0 = zext_ln5_fu_237_p1;
assign a_2_ce0 = a_2_ce0_local;
assign a_3_address0 = zext_ln5_fu_237_p1;
assign a_3_ce0 = a_3_ce0_local;
assign a_4_address0 = zext_ln5_fu_237_p1;
assign a_4_ce0 = a_4_ce0_local;
assign a_5_address0 = zext_ln5_fu_237_p1;
assign a_5_ce0 = a_5_ce0_local;
assign a_6_address0 = zext_ln5_fu_237_p1;
assign a_6_ce0 = a_6_ce0_local;
assign a_7_address0 = zext_ln5_fu_237_p1;
assign a_7_ce0 = a_7_ce0_local;
assign add_ln7_fu_249_p2 = (ap_sig_allocacmp_i_3 + 12'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln7_fu_221_p2 = ((ap_sig_allocacmp_i_3 > zext_ln7_2_cast_fu_209_p1) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_227_p4 = {{ap_sig_allocacmp_i_3[10:3]}};
assign temp_address0 = zext_ln7_fu_303_p1;
assign temp_ce0 = temp_ce0_local;
assign temp_d0 = tmp_reg_364;
assign temp_we0 = temp_we0_local;
assign tmp_fu_263_p17 = 'bx;
assign tmp_fu_263_p18 = i_3_reg_314[2:0];
assign zext_ln5_fu_237_p1 = lshr_ln5_fu_227_p4;
assign zext_ln7_1_cast_fu_205_p1 = zext_ln7_1;
assign zext_ln7_2_cast_fu_209_p1 = zext_ln7_2;
assign zext_ln7_fu_303_p1 = i_3_reg_314_pp0_iter1_reg;
endmodule 
