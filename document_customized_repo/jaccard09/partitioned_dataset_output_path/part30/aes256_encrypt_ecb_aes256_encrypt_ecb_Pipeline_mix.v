
module aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_mix (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_1_i,buf_1_o,buf_1_o_ap_vld,buf_2_i,buf_2_o,buf_2_o_ap_vld,buf_3_i,buf_3_o,buf_3_o_ap_vld,buf_0_i,buf_0_o,buf_0_o_ap_vld,buf_15_i,buf_15_o,buf_15_o_ap_vld,buf_14_i,buf_14_o,buf_14_o_ap_vld,buf_13_i,buf_13_o,buf_13_o_ap_vld,buf_12_i,buf_12_o,buf_12_o_ap_vld,buf_11_i,buf_11_o,buf_11_o_ap_vld,buf_10_i,buf_10_o,buf_10_o_ap_vld,buf_9_i,buf_9_o,buf_9_o_ap_vld,buf_8_i,buf_8_o,buf_8_o_ap_vld,buf_7_i,buf_7_o,buf_7_o_ap_vld,buf_6_i,buf_6_o,buf_6_o_ap_vld,buf_5_i,buf_5_o,buf_5_o_ap_vld,buf_4_i,buf_4_o,buf_4_o_ap_vld);  
parameter    ap_ST_fsm_state1 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] buf_1_i;
output  [7:0] buf_1_o;
output   buf_1_o_ap_vld;
input  [7:0] buf_2_i;
output  [7:0] buf_2_o;
output   buf_2_o_ap_vld;
input  [7:0] buf_3_i;
output  [7:0] buf_3_o;
output   buf_3_o_ap_vld;
input  [7:0] buf_0_i;
output  [7:0] buf_0_o;
output   buf_0_o_ap_vld;
input  [7:0] buf_15_i;
output  [7:0] buf_15_o;
output   buf_15_o_ap_vld;
input  [7:0] buf_14_i;
output  [7:0] buf_14_o;
output   buf_14_o_ap_vld;
input  [7:0] buf_13_i;
output  [7:0] buf_13_o;
output   buf_13_o_ap_vld;
input  [7:0] buf_12_i;
output  [7:0] buf_12_o;
output   buf_12_o_ap_vld;
input  [7:0] buf_11_i;
output  [7:0] buf_11_o;
output   buf_11_o_ap_vld;
input  [7:0] buf_10_i;
output  [7:0] buf_10_o;
output   buf_10_o_ap_vld;
input  [7:0] buf_9_i;
output  [7:0] buf_9_o;
output   buf_9_o_ap_vld;
input  [7:0] buf_8_i;
output  [7:0] buf_8_o;
output   buf_8_o_ap_vld;
input  [7:0] buf_7_i;
output  [7:0] buf_7_o;
output   buf_7_o_ap_vld;
input  [7:0] buf_6_i;
output  [7:0] buf_6_o;
output   buf_6_o_ap_vld;
input  [7:0] buf_5_i;
output  [7:0] buf_5_o;
output   buf_5_o_ap_vld;
input  [7:0] buf_4_i;
output  [7:0] buf_4_o;
output   buf_4_o_ap_vld;
reg ap_idle;
reg[7:0] buf_1_o;
reg buf_1_o_ap_vld;
reg[7:0] buf_2_o;
reg buf_2_o_ap_vld;
reg[7:0] buf_3_o;
reg buf_3_o_ap_vld;
reg[7:0] buf_0_o;
reg buf_0_o_ap_vld;
reg[7:0] buf_15_o;
reg buf_15_o_ap_vld;
reg[7:0] buf_14_o;
reg buf_14_o_ap_vld;
reg[7:0] buf_13_o;
reg buf_13_o_ap_vld;
reg[7:0] buf_12_o;
reg buf_12_o_ap_vld;
reg[7:0] buf_11_o;
reg buf_11_o_ap_vld;
reg[7:0] buf_10_o;
reg buf_10_o_ap_vld;
reg[7:0] buf_9_o;
reg buf_9_o_ap_vld;
reg[7:0] buf_8_o;
reg buf_8_o_ap_vld;
reg[7:0] buf_7_o;
reg buf_7_o_ap_vld;
reg[7:0] buf_6_o;
reg buf_6_o_ap_vld;
reg[7:0] buf_5_o;
reg buf_5_o_ap_vld;
reg[7:0] buf_4_o;
reg buf_4_o_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] tmp_fu_302_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [4:0] i_fu_82;
wire   [4:0] add_ln100_fu_616_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_7;
wire   [7:0] xor_ln104_1_fu_462_p2;
wire   [3:0] trunc_ln100_fu_310_p1;
wire   [7:0] xor_ln104_4_fu_512_p2;
wire   [7:0] xor_ln105_2_fu_562_p2;
wire   [7:0] xor_ln105_4_fu_606_p2;
wire   [7:0] a_fu_314_p9;
wire   [7:0] b_fu_338_p9;
wire   [7:0] c_fu_362_p9;
wire   [7:0] d_fu_386_p9;
wire   [7:0] b_fu_338_p11;
wire   [7:0] a_fu_314_p11;
wire   [7:0] c_fu_362_p11;
wire   [7:0] xor_ln103_fu_410_p2;
wire   [7:0] d_fu_386_p11;
wire   [7:0] xor_ln103_1_fu_416_p2;
wire   [7:0] shl_ln55_fu_436_p2;
wire   [0:0] tmp_18_fu_428_p3;
wire   [7:0] xor_ln55_fu_442_p2;
wire   [7:0] e_fu_422_p2;
wire   [7:0] xor_ln104_fu_456_p2;
wire   [7:0] select_ln55_fu_448_p3;
wire   [7:0] xor_ln104_2_fu_472_p2;
wire   [7:0] shl_ln55_1_fu_486_p2;
wire   [0:0] tmp_19_fu_478_p3;
wire   [7:0] xor_ln55_1_fu_492_p2;
wire   [7:0] xor_ln104_3_fu_506_p2;
wire   [7:0] select_ln55_1_fu_498_p3;
wire   [7:0] xor_ln105_fu_522_p2;
wire   [7:0] shl_ln55_2_fu_536_p2;
wire   [0:0] tmp_20_fu_528_p3;
wire   [7:0] xor_ln55_2_fu_542_p2;
wire   [7:0] select_ln55_2_fu_548_p3;
wire   [7:0] xor_ln105_1_fu_556_p2;
wire   [7:0] xor_ln105_3_fu_572_p2;
wire   [7:0] shl_ln55_3_fu_586_p2;
wire   [0:0] tmp_21_fu_578_p3;
wire   [7:0] xor_ln55_3_fu_592_p2;
wire   [7:0] select_ln55_3_fu_598_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] a_fu_314_p1;
wire   [3:0] a_fu_314_p3;
wire  signed [3:0] a_fu_314_p5;
wire  signed [3:0] a_fu_314_p7;
wire   [3:0] b_fu_338_p1;
wire   [3:0] b_fu_338_p3;
wire  signed [3:0] b_fu_338_p5;
wire  signed [3:0] b_fu_338_p7;
wire   [3:0] c_fu_362_p1;
wire   [3:0] c_fu_362_p3;
wire  signed [3:0] c_fu_362_p5;
wire  signed [3:0] c_fu_362_p7;
wire   [3:0] d_fu_386_p1;
wire   [3:0] d_fu_386_p3;
wire  signed [3:0] d_fu_386_p5;
wire  signed [3:0] d_fu_386_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 i_fu_82 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_9_4_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 8 ),.CASE1( 4'h4 ),.din1_WIDTH( 8 ),.CASE2( 4'h8 ),.din2_WIDTH( 8 ),.CASE3( 4'hC ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 4 ),.dout_WIDTH( 8 ))
sparsemux_9_4_8_1_1_U76(.din0(buf_0_i),.din1(buf_4_i),.din2(buf_8_i),.din3(buf_12_i),.def(a_fu_314_p9),.sel(trunc_ln100_fu_310_p1),.dout(a_fu_314_p11));
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_9_4_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 8 ),.CASE1( 4'h4 ),.din1_WIDTH( 8 ),.CASE2( 4'h8 ),.din2_WIDTH( 8 ),.CASE3( 4'hC ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 4 ),.dout_WIDTH( 8 ))
sparsemux_9_4_8_1_1_U77(.din0(buf_1_i),.din1(buf_5_i),.din2(buf_9_i),.din3(buf_13_i),.def(b_fu_338_p9),.sel(trunc_ln100_fu_310_p1),.dout(b_fu_338_p11));
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_9_4_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 8 ),.CASE1( 4'h4 ),.din1_WIDTH( 8 ),.CASE2( 4'h8 ),.din2_WIDTH( 8 ),.CASE3( 4'hC ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 4 ),.dout_WIDTH( 8 ))
sparsemux_9_4_8_1_1_U78(.din0(buf_2_i),.din1(buf_6_i),.din2(buf_10_i),.din3(buf_14_i),.def(c_fu_362_p9),.sel(trunc_ln100_fu_310_p1),.dout(c_fu_362_p11));
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_9_4_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 8 ),.CASE1( 4'h4 ),.din1_WIDTH( 8 ),.CASE2( 4'h8 ),.din2_WIDTH( 8 ),.CASE3( 4'hC ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 4 ),.dout_WIDTH( 8 ))
sparsemux_9_4_8_1_1_U79(.din0(buf_3_i),.din1(buf_7_i),.din2(buf_11_i),.din3(buf_15_i),.def(d_fu_386_p9),.sel(trunc_ln100_fu_310_p1),.dout(d_fu_386_p11));
aes256_encrypt_ecb_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((tmp_fu_302_p3 == 1'd0)) begin
            i_fu_82 <= add_ln100_fu_616_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_82 <= 5'd0;
        end
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_7 = 5'd0;
    end else begin
        ap_sig_allocacmp_i_7 = i_fu_82;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd0))) begin
        buf_0_o = xor_ln104_1_fu_462_p2;
    end else begin
        buf_0_o = buf_0_i;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd0))) begin
        buf_0_o_ap_vld = 1'b1;
    end else begin
        buf_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd8))) begin
        buf_10_o = xor_ln105_2_fu_562_p2;
    end else begin
        buf_10_o = buf_10_i;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd8))) begin
        buf_10_o_ap_vld = 1'b1;
    end else begin
        buf_10_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd8))) begin
        buf_11_o = xor_ln105_4_fu_606_p2;
    end else begin
        buf_11_o = buf_11_i;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd8))) begin
        buf_11_o_ap_vld = 1'b1;
    end else begin
        buf_11_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln100_fu_310_p1 == 4'd0) & ~(trunc_ln100_fu_310_p1 == 4'd4) & ~(trunc_ln100_fu_310_p1 == 4'd8) & (tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_12_o = xor_ln104_1_fu_462_p2;
    end else begin
        buf_12_o = buf_12_i;
    end
end
always @ (*) begin
    if ((~(trunc_ln100_fu_310_p1 == 4'd0) & ~(trunc_ln100_fu_310_p1 == 4'd4) & ~(trunc_ln100_fu_310_p1 == 4'd8) & (tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_12_o_ap_vld = 1'b1;
    end else begin
        buf_12_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln100_fu_310_p1 == 4'd0) & ~(trunc_ln100_fu_310_p1 == 4'd4) & ~(trunc_ln100_fu_310_p1 == 4'd8) & (tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_13_o = xor_ln104_4_fu_512_p2;
    end else begin
        buf_13_o = buf_13_i;
    end
end
always @ (*) begin
    if ((~(trunc_ln100_fu_310_p1 == 4'd0) & ~(trunc_ln100_fu_310_p1 == 4'd4) & ~(trunc_ln100_fu_310_p1 == 4'd8) & (tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_13_o_ap_vld = 1'b1;
    end else begin
        buf_13_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln100_fu_310_p1 == 4'd0) & ~(trunc_ln100_fu_310_p1 == 4'd4) & ~(trunc_ln100_fu_310_p1 == 4'd8) & (tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_14_o = xor_ln105_2_fu_562_p2;
    end else begin
        buf_14_o = buf_14_i;
    end
end
always @ (*) begin
    if ((~(trunc_ln100_fu_310_p1 == 4'd0) & ~(trunc_ln100_fu_310_p1 == 4'd4) & ~(trunc_ln100_fu_310_p1 == 4'd8) & (tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_14_o_ap_vld = 1'b1;
    end else begin
        buf_14_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln100_fu_310_p1 == 4'd0) & ~(trunc_ln100_fu_310_p1 == 4'd4) & ~(trunc_ln100_fu_310_p1 == 4'd8) & (tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_15_o = xor_ln105_4_fu_606_p2;
    end else begin
        buf_15_o = buf_15_i;
    end
end
always @ (*) begin
    if ((~(trunc_ln100_fu_310_p1 == 4'd0) & ~(trunc_ln100_fu_310_p1 == 4'd4) & ~(trunc_ln100_fu_310_p1 == 4'd8) & (tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_15_o_ap_vld = 1'b1;
    end else begin
        buf_15_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd0))) begin
        buf_1_o = xor_ln104_4_fu_512_p2;
    end else begin
        buf_1_o = buf_1_i;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd0))) begin
        buf_1_o_ap_vld = 1'b1;
    end else begin
        buf_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd0))) begin
        buf_2_o = xor_ln105_2_fu_562_p2;
    end else begin
        buf_2_o = buf_2_i;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd0))) begin
        buf_2_o_ap_vld = 1'b1;
    end else begin
        buf_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd0))) begin
        buf_3_o = xor_ln105_4_fu_606_p2;
    end else begin
        buf_3_o = buf_3_i;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd0))) begin
        buf_3_o_ap_vld = 1'b1;
    end else begin
        buf_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd4))) begin
        buf_4_o = xor_ln104_1_fu_462_p2;
    end else begin
        buf_4_o = buf_4_i;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd4))) begin
        buf_4_o_ap_vld = 1'b1;
    end else begin
        buf_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd4))) begin
        buf_5_o = xor_ln104_4_fu_512_p2;
    end else begin
        buf_5_o = buf_5_i;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd4))) begin
        buf_5_o_ap_vld = 1'b1;
    end else begin
        buf_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd4))) begin
        buf_6_o = xor_ln105_2_fu_562_p2;
    end else begin
        buf_6_o = buf_6_i;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd4))) begin
        buf_6_o_ap_vld = 1'b1;
    end else begin
        buf_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd4))) begin
        buf_7_o = xor_ln105_4_fu_606_p2;
    end else begin
        buf_7_o = buf_7_i;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd4))) begin
        buf_7_o_ap_vld = 1'b1;
    end else begin
        buf_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd8))) begin
        buf_8_o = xor_ln104_1_fu_462_p2;
    end else begin
        buf_8_o = buf_8_i;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd8))) begin
        buf_8_o_ap_vld = 1'b1;
    end else begin
        buf_8_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd8))) begin
        buf_9_o = xor_ln104_4_fu_512_p2;
    end else begin
        buf_9_o = buf_9_i;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln100_fu_310_p1 == 4'd8))) begin
        buf_9_o_ap_vld = 1'b1;
    end else begin
        buf_9_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_fu_314_p9 = 'bx;
assign add_ln100_fu_616_p2 = (ap_sig_allocacmp_i_7 + 5'd4);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign b_fu_338_p9 = 'bx;
assign c_fu_362_p9 = 'bx;
assign d_fu_386_p9 = 'bx;
assign e_fu_422_p2 = (xor_ln103_1_fu_416_p2 ^ d_fu_386_p11);
assign select_ln55_1_fu_498_p3 = ((tmp_19_fu_478_p3[0:0] == 1'b1) ? xor_ln55_1_fu_492_p2 : shl_ln55_1_fu_486_p2);
assign select_ln55_2_fu_548_p3 = ((tmp_20_fu_528_p3[0:0] == 1'b1) ? xor_ln55_2_fu_542_p2 : shl_ln55_2_fu_536_p2);
assign select_ln55_3_fu_598_p3 = ((tmp_21_fu_578_p3[0:0] == 1'b1) ? xor_ln55_3_fu_592_p2 : shl_ln55_3_fu_586_p2);
assign select_ln55_fu_448_p3 = ((tmp_18_fu_428_p3[0:0] == 1'b1) ? xor_ln55_fu_442_p2 : shl_ln55_fu_436_p2);
assign shl_ln55_1_fu_486_p2 = xor_ln104_2_fu_472_p2 << 8'd1;
assign shl_ln55_2_fu_536_p2 = xor_ln105_fu_522_p2 << 8'd1;
assign shl_ln55_3_fu_586_p2 = xor_ln105_3_fu_572_p2 << 8'd1;
assign shl_ln55_fu_436_p2 = xor_ln103_fu_410_p2 << 8'd1;
assign tmp_18_fu_428_p3 = xor_ln103_fu_410_p2[32'd7];
assign tmp_19_fu_478_p3 = xor_ln104_2_fu_472_p2[32'd7];
assign tmp_20_fu_528_p3 = xor_ln105_fu_522_p2[32'd7];
assign tmp_21_fu_578_p3 = xor_ln105_3_fu_572_p2[32'd7];
assign tmp_fu_302_p3 = ap_sig_allocacmp_i_7[32'd4];
assign trunc_ln100_fu_310_p1 = ap_sig_allocacmp_i_7[3:0];
assign xor_ln103_1_fu_416_p2 = (xor_ln103_fu_410_p2 ^ c_fu_362_p11);
assign xor_ln103_fu_410_p2 = (b_fu_338_p11 ^ a_fu_314_p11);
assign xor_ln104_1_fu_462_p2 = (xor_ln104_fu_456_p2 ^ select_ln55_fu_448_p3);
assign xor_ln104_2_fu_472_p2 = (c_fu_362_p11 ^ b_fu_338_p11);
assign xor_ln104_3_fu_506_p2 = (e_fu_422_p2 ^ b_fu_338_p11);
assign xor_ln104_4_fu_512_p2 = (xor_ln104_3_fu_506_p2 ^ select_ln55_1_fu_498_p3);
assign xor_ln104_fu_456_p2 = (e_fu_422_p2 ^ a_fu_314_p11);
assign xor_ln105_1_fu_556_p2 = (xor_ln103_fu_410_p2 ^ select_ln55_2_fu_548_p3);
assign xor_ln105_2_fu_562_p2 = (xor_ln105_1_fu_556_p2 ^ d_fu_386_p11);
assign xor_ln105_3_fu_572_p2 = (d_fu_386_p11 ^ a_fu_314_p11);
assign xor_ln105_4_fu_606_p2 = (xor_ln103_1_fu_416_p2 ^ select_ln55_3_fu_598_p3);
assign xor_ln105_fu_522_p2 = (d_fu_386_p11 ^ c_fu_362_p11);
assign xor_ln55_1_fu_492_p2 = (shl_ln55_1_fu_486_p2 ^ 8'd27);
assign xor_ln55_2_fu_542_p2 = (shl_ln55_2_fu_536_p2 ^ 8'd27);
assign xor_ln55_3_fu_592_p2 = (shl_ln55_3_fu_586_p2 ^ 8'd27);
assign xor_ln55_fu_442_p2 = (shl_ln55_fu_436_p2 ^ 8'd27);
endmodule 
