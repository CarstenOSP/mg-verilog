module backprop_backprop_Pipeline_VITIS_LOOP_26_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations1_3_address0,activations1_3_ce0,activations1_3_we0,activations1_3_d0,activations1_3_address1,activations1_3_ce1,activations1_3_q1,activations1_2_address0,activations1_2_ce0,activations1_2_we0,activations1_2_d0,activations1_2_address1,activations1_2_ce1,activations1_2_q1,activations1_1_address0,activations1_1_ce0,activations1_1_we0,activations1_1_d0,activations1_1_address1,activations1_1_ce1,activations1_1_q1,activations1_address0,activations1_ce0,activations1_we0,activations1_d0,activations1_address1,activations1_ce1,activations1_q1,biases1_0_address0,biases1_0_ce0,biases1_0_q0,biases1_1_address0,biases1_1_ce0,biases1_1_q0,biases1_2_address0,biases1_2_ce0,biases1_2_q0,biases1_3_address0,biases1_3_ce0,biases1_3_q0,grp_fu_6764_p_din0,grp_fu_6764_p_din1,grp_fu_6764_p_opcode,grp_fu_6764_p_dout0,grp_fu_6764_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] activations1_3_address0;
output   activations1_3_ce0;
output   activations1_3_we0;
output  [63:0] activations1_3_d0;
output  [3:0] activations1_3_address1;
output   activations1_3_ce1;
input  [63:0] activations1_3_q1;
output  [3:0] activations1_2_address0;
output   activations1_2_ce0;
output   activations1_2_we0;
output  [63:0] activations1_2_d0;
output  [3:0] activations1_2_address1;
output   activations1_2_ce1;
input  [63:0] activations1_2_q1;
output  [3:0] activations1_1_address0;
output   activations1_1_ce0;
output   activations1_1_we0;
output  [63:0] activations1_1_d0;
output  [3:0] activations1_1_address1;
output   activations1_1_ce1;
input  [63:0] activations1_1_q1;
output  [3:0] activations1_address0;
output   activations1_ce0;
output   activations1_we0;
output  [63:0] activations1_d0;
output  [3:0] activations1_address1;
output   activations1_ce1;
input  [63:0] activations1_q1;
output  [3:0] biases1_0_address0;
output   biases1_0_ce0;
input  [63:0] biases1_0_q0;
output  [3:0] biases1_1_address0;
output   biases1_1_ce0;
input  [63:0] biases1_1_q0;
output  [3:0] biases1_2_address0;
output   biases1_2_ce0;
input  [63:0] biases1_2_q0;
output  [3:0] biases1_3_address0;
output   biases1_3_ce0;
input  [63:0] biases1_3_q0;
output  [63:0] grp_fu_6764_p_din0;
output  [63:0] grp_fu_6764_p_din1;
output  [0:0] grp_fu_6764_p_opcode;
input  [63:0] grp_fu_6764_p_dout0;
output   grp_fu_6764_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln26_fu_200_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln26_fu_212_p1;
reg   [1:0] trunc_ln26_reg_316;
reg   [1:0] trunc_ln26_reg_316_pp0_iter1_reg;
reg   [1:0] trunc_ln26_reg_316_pp0_iter2_reg;
reg   [1:0] trunc_ln26_reg_316_pp0_iter3_reg;
reg   [1:0] trunc_ln26_reg_316_pp0_iter4_reg;
reg   [1:0] trunc_ln26_reg_316_pp0_iter5_reg;
reg   [1:0] trunc_ln26_reg_316_pp0_iter6_reg;
reg   [1:0] trunc_ln26_reg_316_pp0_iter7_reg;
reg   [1:0] trunc_ln26_reg_316_pp0_iter8_reg;
reg   [1:0] trunc_ln26_reg_316_pp0_iter9_reg;
reg   [3:0] activations1_addr_reg_322;
reg   [3:0] activations1_addr_reg_322_pp0_iter1_reg;
reg   [3:0] activations1_addr_reg_322_pp0_iter2_reg;
reg   [3:0] activations1_addr_reg_322_pp0_iter3_reg;
reg   [3:0] activations1_addr_reg_322_pp0_iter4_reg;
reg   [3:0] activations1_addr_reg_322_pp0_iter5_reg;
reg   [3:0] activations1_addr_reg_322_pp0_iter6_reg;
reg   [3:0] activations1_addr_reg_322_pp0_iter7_reg;
reg   [3:0] activations1_addr_reg_322_pp0_iter8_reg;
reg   [3:0] activations1_addr_reg_322_pp0_iter9_reg;
reg   [3:0] activations1_1_addr_reg_328;
reg   [3:0] activations1_1_addr_reg_328_pp0_iter1_reg;
reg   [3:0] activations1_1_addr_reg_328_pp0_iter2_reg;
reg   [3:0] activations1_1_addr_reg_328_pp0_iter3_reg;
reg   [3:0] activations1_1_addr_reg_328_pp0_iter4_reg;
reg   [3:0] activations1_1_addr_reg_328_pp0_iter5_reg;
reg   [3:0] activations1_1_addr_reg_328_pp0_iter6_reg;
reg   [3:0] activations1_1_addr_reg_328_pp0_iter7_reg;
reg   [3:0] activations1_1_addr_reg_328_pp0_iter8_reg;
reg   [3:0] activations1_1_addr_reg_328_pp0_iter9_reg;
reg   [3:0] activations1_2_addr_reg_334;
reg   [3:0] activations1_2_addr_reg_334_pp0_iter1_reg;
reg   [3:0] activations1_2_addr_reg_334_pp0_iter2_reg;
reg   [3:0] activations1_2_addr_reg_334_pp0_iter3_reg;
reg   [3:0] activations1_2_addr_reg_334_pp0_iter4_reg;
reg   [3:0] activations1_2_addr_reg_334_pp0_iter5_reg;
reg   [3:0] activations1_2_addr_reg_334_pp0_iter6_reg;
reg   [3:0] activations1_2_addr_reg_334_pp0_iter7_reg;
reg   [3:0] activations1_2_addr_reg_334_pp0_iter8_reg;
reg   [3:0] activations1_2_addr_reg_334_pp0_iter9_reg;
reg   [3:0] activations1_3_addr_reg_340;
reg   [3:0] activations1_3_addr_reg_340_pp0_iter1_reg;
reg   [3:0] activations1_3_addr_reg_340_pp0_iter2_reg;
reg   [3:0] activations1_3_addr_reg_340_pp0_iter3_reg;
reg   [3:0] activations1_3_addr_reg_340_pp0_iter4_reg;
reg   [3:0] activations1_3_addr_reg_340_pp0_iter5_reg;
reg   [3:0] activations1_3_addr_reg_340_pp0_iter6_reg;
reg   [3:0] activations1_3_addr_reg_340_pp0_iter7_reg;
reg   [3:0] activations1_3_addr_reg_340_pp0_iter8_reg;
reg   [3:0] activations1_3_addr_reg_340_pp0_iter9_reg;
wire   [63:0] tmp_s_fu_243_p11;
reg   [63:0] tmp_s_reg_366;
wire   [63:0] tmp_24_fu_282_p11;
reg   [63:0] tmp_24_reg_371;
reg   [63:0] add_i_i_reg_376;
wire   [63:0] zext_ln25_fu_226_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_64;
wire   [6:0] add_ln26_fu_206_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_12;
reg    activations1_ce1_local;
reg    activations1_we0_local;
reg    activations1_ce0_local;
reg    activations1_1_ce1_local;
reg    activations1_1_we0_local;
reg    activations1_1_ce0_local;
reg    activations1_2_ce1_local;
reg    activations1_2_we0_local;
reg    activations1_2_ce0_local;
reg    activations1_3_ce1_local;
reg    activations1_3_we0_local;
reg    activations1_3_ce0_local;
reg    biases1_0_ce0_local;
reg    biases1_1_ce0_local;
reg    biases1_2_ce0_local;
reg    biases1_3_ce0_local;
wire   [3:0] lshr_ln8_fu_216_p4;
wire   [63:0] tmp_s_fu_243_p9;
wire   [63:0] tmp_24_fu_282_p2;
wire   [63:0] tmp_24_fu_282_p4;
wire   [63:0] tmp_24_fu_282_p6;
wire   [63:0] tmp_24_fu_282_p8;
wire   [63:0] tmp_24_fu_282_p9;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_s_fu_243_p1;
wire   [1:0] tmp_s_fu_243_p3;
wire  signed [1:0] tmp_s_fu_243_p5;
wire  signed [1:0] tmp_s_fu_243_p7;
wire   [1:0] tmp_24_fu_282_p1;
wire   [1:0] tmp_24_fu_282_p3;
wire  signed [1:0] tmp_24_fu_282_p5;
wire  signed [1:0] tmp_24_fu_282_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 i_fu_64 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U54(.din0(activations1_q1),.din1(activations1_1_q1),.din2(activations1_2_q1),.din3(activations1_3_q1),.def(tmp_s_fu_243_p9),.sel(trunc_ln26_reg_316),.dout(tmp_s_fu_243_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U55(.din0(tmp_24_fu_282_p2),.din1(tmp_24_fu_282_p4),.din2(tmp_24_fu_282_p6),.din3(tmp_24_fu_282_p8),.def(tmp_24_fu_282_p9),.sel(trunc_ln26_reg_316),.dout(tmp_24_fu_282_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_200_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_64 <= add_ln26_fu_206_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_64 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_1_addr_reg_328 <= zext_ln25_fu_226_p1;
        activations1_1_addr_reg_328_pp0_iter1_reg <= activations1_1_addr_reg_328;
        activations1_2_addr_reg_334 <= zext_ln25_fu_226_p1;
        activations1_2_addr_reg_334_pp0_iter1_reg <= activations1_2_addr_reg_334;
        activations1_3_addr_reg_340 <= zext_ln25_fu_226_p1;
        activations1_3_addr_reg_340_pp0_iter1_reg <= activations1_3_addr_reg_340;
        activations1_addr_reg_322 <= zext_ln25_fu_226_p1;
        activations1_addr_reg_322_pp0_iter1_reg <= activations1_addr_reg_322;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        tmp_24_reg_371 <= tmp_24_fu_282_p11;
        tmp_s_reg_366 <= tmp_s_fu_243_p11;
        trunc_ln26_reg_316 <= trunc_ln26_fu_212_p1;
        trunc_ln26_reg_316_pp0_iter1_reg <= trunc_ln26_reg_316;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        activations1_1_addr_reg_328_pp0_iter2_reg <= activations1_1_addr_reg_328_pp0_iter1_reg;
        activations1_1_addr_reg_328_pp0_iter3_reg <= activations1_1_addr_reg_328_pp0_iter2_reg;
        activations1_1_addr_reg_328_pp0_iter4_reg <= activations1_1_addr_reg_328_pp0_iter3_reg;
        activations1_1_addr_reg_328_pp0_iter5_reg <= activations1_1_addr_reg_328_pp0_iter4_reg;
        activations1_1_addr_reg_328_pp0_iter6_reg <= activations1_1_addr_reg_328_pp0_iter5_reg;
        activations1_1_addr_reg_328_pp0_iter7_reg <= activations1_1_addr_reg_328_pp0_iter6_reg;
        activations1_1_addr_reg_328_pp0_iter8_reg <= activations1_1_addr_reg_328_pp0_iter7_reg;
        activations1_1_addr_reg_328_pp0_iter9_reg <= activations1_1_addr_reg_328_pp0_iter8_reg;
        activations1_2_addr_reg_334_pp0_iter2_reg <= activations1_2_addr_reg_334_pp0_iter1_reg;
        activations1_2_addr_reg_334_pp0_iter3_reg <= activations1_2_addr_reg_334_pp0_iter2_reg;
        activations1_2_addr_reg_334_pp0_iter4_reg <= activations1_2_addr_reg_334_pp0_iter3_reg;
        activations1_2_addr_reg_334_pp0_iter5_reg <= activations1_2_addr_reg_334_pp0_iter4_reg;
        activations1_2_addr_reg_334_pp0_iter6_reg <= activations1_2_addr_reg_334_pp0_iter5_reg;
        activations1_2_addr_reg_334_pp0_iter7_reg <= activations1_2_addr_reg_334_pp0_iter6_reg;
        activations1_2_addr_reg_334_pp0_iter8_reg <= activations1_2_addr_reg_334_pp0_iter7_reg;
        activations1_2_addr_reg_334_pp0_iter9_reg <= activations1_2_addr_reg_334_pp0_iter8_reg;
        activations1_3_addr_reg_340_pp0_iter2_reg <= activations1_3_addr_reg_340_pp0_iter1_reg;
        activations1_3_addr_reg_340_pp0_iter3_reg <= activations1_3_addr_reg_340_pp0_iter2_reg;
        activations1_3_addr_reg_340_pp0_iter4_reg <= activations1_3_addr_reg_340_pp0_iter3_reg;
        activations1_3_addr_reg_340_pp0_iter5_reg <= activations1_3_addr_reg_340_pp0_iter4_reg;
        activations1_3_addr_reg_340_pp0_iter6_reg <= activations1_3_addr_reg_340_pp0_iter5_reg;
        activations1_3_addr_reg_340_pp0_iter7_reg <= activations1_3_addr_reg_340_pp0_iter6_reg;
        activations1_3_addr_reg_340_pp0_iter8_reg <= activations1_3_addr_reg_340_pp0_iter7_reg;
        activations1_3_addr_reg_340_pp0_iter9_reg <= activations1_3_addr_reg_340_pp0_iter8_reg;
        activations1_addr_reg_322_pp0_iter2_reg <= activations1_addr_reg_322_pp0_iter1_reg;
        activations1_addr_reg_322_pp0_iter3_reg <= activations1_addr_reg_322_pp0_iter2_reg;
        activations1_addr_reg_322_pp0_iter4_reg <= activations1_addr_reg_322_pp0_iter3_reg;
        activations1_addr_reg_322_pp0_iter5_reg <= activations1_addr_reg_322_pp0_iter4_reg;
        activations1_addr_reg_322_pp0_iter6_reg <= activations1_addr_reg_322_pp0_iter5_reg;
        activations1_addr_reg_322_pp0_iter7_reg <= activations1_addr_reg_322_pp0_iter6_reg;
        activations1_addr_reg_322_pp0_iter8_reg <= activations1_addr_reg_322_pp0_iter7_reg;
        activations1_addr_reg_322_pp0_iter9_reg <= activations1_addr_reg_322_pp0_iter8_reg;
        add_i_i_reg_376 <= grp_fu_6764_p_dout0;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        trunc_ln26_reg_316_pp0_iter2_reg <= trunc_ln26_reg_316_pp0_iter1_reg;
        trunc_ln26_reg_316_pp0_iter3_reg <= trunc_ln26_reg_316_pp0_iter2_reg;
        trunc_ln26_reg_316_pp0_iter4_reg <= trunc_ln26_reg_316_pp0_iter3_reg;
        trunc_ln26_reg_316_pp0_iter5_reg <= trunc_ln26_reg_316_pp0_iter4_reg;
        trunc_ln26_reg_316_pp0_iter6_reg <= trunc_ln26_reg_316_pp0_iter5_reg;
        trunc_ln26_reg_316_pp0_iter7_reg <= trunc_ln26_reg_316_pp0_iter6_reg;
        trunc_ln26_reg_316_pp0_iter8_reg <= trunc_ln26_reg_316_pp0_iter7_reg;
        trunc_ln26_reg_316_pp0_iter9_reg <= trunc_ln26_reg_316_pp0_iter8_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations1_1_ce0_local = 1'b1;
    end else begin
        activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_1_ce1_local = 1'b1;
    end else begin
        activations1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_316_pp0_iter9_reg == 2'd1))) begin
        activations1_1_we0_local = 1'b1;
    end else begin
        activations1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations1_2_ce0_local = 1'b1;
    end else begin
        activations1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_2_ce1_local = 1'b1;
    end else begin
        activations1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_316_pp0_iter9_reg == 2'd2))) begin
        activations1_2_we0_local = 1'b1;
    end else begin
        activations1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations1_3_ce0_local = 1'b1;
    end else begin
        activations1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_3_ce1_local = 1'b1;
    end else begin
        activations1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_316_pp0_iter9_reg == 2'd3))) begin
        activations1_3_we0_local = 1'b1;
    end else begin
        activations1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations1_ce0_local = 1'b1;
    end else begin
        activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_ce1_local = 1'b1;
    end else begin
        activations1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_316_pp0_iter9_reg == 2'd0))) begin
        activations1_we0_local = 1'b1;
    end else begin
        activations1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_200_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_12 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_12 = i_fu_64;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_0_ce0_local = 1'b1;
    end else begin
        biases1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_1_ce0_local = 1'b1;
    end else begin
        biases1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_2_ce0_local = 1'b1;
    end else begin
        biases1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_3_ce0_local = 1'b1;
    end else begin
        biases1_3_ce0_local = 1'b0;
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
assign activations1_1_address0 = activations1_1_addr_reg_328_pp0_iter9_reg;
assign activations1_1_address1 = zext_ln25_fu_226_p1;
assign activations1_1_ce0 = activations1_1_ce0_local;
assign activations1_1_ce1 = activations1_1_ce1_local;
assign activations1_1_d0 = add_i_i_reg_376;
assign activations1_1_we0 = activations1_1_we0_local;
assign activations1_2_address0 = activations1_2_addr_reg_334_pp0_iter9_reg;
assign activations1_2_address1 = zext_ln25_fu_226_p1;
assign activations1_2_ce0 = activations1_2_ce0_local;
assign activations1_2_ce1 = activations1_2_ce1_local;
assign activations1_2_d0 = add_i_i_reg_376;
assign activations1_2_we0 = activations1_2_we0_local;
assign activations1_3_address0 = activations1_3_addr_reg_340_pp0_iter9_reg;
assign activations1_3_address1 = zext_ln25_fu_226_p1;
assign activations1_3_ce0 = activations1_3_ce0_local;
assign activations1_3_ce1 = activations1_3_ce1_local;
assign activations1_3_d0 = add_i_i_reg_376;
assign activations1_3_we0 = activations1_3_we0_local;
assign activations1_address0 = activations1_addr_reg_322_pp0_iter9_reg;
assign activations1_address1 = zext_ln25_fu_226_p1;
assign activations1_ce0 = activations1_ce0_local;
assign activations1_ce1 = activations1_ce1_local;
assign activations1_d0 = add_i_i_reg_376;
assign activations1_we0 = activations1_we0_local;
assign add_ln26_fu_206_p2 = (ap_sig_allocacmp_i_12 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign biases1_0_address0 = zext_ln25_fu_226_p1;
assign biases1_0_ce0 = biases1_0_ce0_local;
assign biases1_1_address0 = zext_ln25_fu_226_p1;
assign biases1_1_ce0 = biases1_1_ce0_local;
assign biases1_2_address0 = zext_ln25_fu_226_p1;
assign biases1_2_ce0 = biases1_2_ce0_local;
assign biases1_3_address0 = zext_ln25_fu_226_p1;
assign biases1_3_ce0 = biases1_3_ce0_local;
assign grp_fu_6764_p_ce = 1'b1;
assign grp_fu_6764_p_din0 = tmp_s_reg_366;
assign grp_fu_6764_p_din1 = tmp_24_reg_371;
assign grp_fu_6764_p_opcode = 2'd0;
assign icmp_ln26_fu_200_p2 = ((ap_sig_allocacmp_i_12 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln8_fu_216_p4 = {{ap_sig_allocacmp_i_12[5:2]}};
assign tmp_24_fu_282_p2 = biases1_0_q0;
assign tmp_24_fu_282_p4 = biases1_1_q0;
assign tmp_24_fu_282_p6 = biases1_2_q0;
assign tmp_24_fu_282_p8 = biases1_3_q0;
assign tmp_24_fu_282_p9 = 'bx;
assign tmp_s_fu_243_p9 = 'bx;
assign trunc_ln26_fu_212_p1 = ap_sig_allocacmp_i_12[1:0];
assign zext_ln25_fu_226_p1 = lshr_ln8_fu_216_p4;
endmodule 