
module aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_0_i,buf_0_o,buf_0_o_ap_vld,buf_15_i,buf_15_o,buf_15_o_ap_vld,buf_14_i,buf_14_o,buf_14_o_ap_vld,buf_13_i,buf_13_o,buf_13_o_ap_vld,buf_12_i,buf_12_o,buf_12_o_ap_vld,buf_11_i,buf_11_o,buf_11_o_ap_vld,buf_10_i,buf_10_o,buf_10_o_ap_vld,buf_9_i,buf_9_o,buf_9_o_ap_vld,buf_8_i,buf_8_o,buf_8_o_ap_vld,buf_7_i,buf_7_o,buf_7_o_ap_vld,buf_6_i,buf_6_o,buf_6_o_ap_vld,buf_5_i,buf_5_o,buf_5_o_ap_vld,buf_4_i,buf_4_o,buf_4_o_ap_vld,buf_3_i,buf_3_o,buf_3_o_ap_vld,buf_2_i,buf_2_o,buf_2_o_ap_vld,buf_1_i,buf_1_o,buf_1_o_ap_vld,ctx_ret2);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
input  [7:0] buf_3_i;
output  [7:0] buf_3_o;
output   buf_3_o_ap_vld;
input  [7:0] buf_2_i;
output  [7:0] buf_2_o;
output   buf_2_o_ap_vld;
input  [7:0] buf_1_i;
output  [7:0] buf_1_o;
output   buf_1_o_ap_vld;
input  [767:0] ctx_ret2;
reg ap_idle;
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
reg[7:0] buf_3_o;
reg buf_3_o_ap_vld;
reg[7:0] buf_2_o;
reg buf_2_o_ap_vld;
reg[7:0] buf_1_o;
reg buf_1_o_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln66_fu_328_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] i_7_reg_474;
wire   [3:0] trunc_ln66_fu_340_p1;
reg   [3:0] trunc_ln66_reg_481;
wire   [7:0] tmp_15_fu_344_p35;
reg   [7:0] tmp_15_reg_486;
reg   [4:0] i_fu_102;
wire   [4:0] add_ln66_fu_334_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_7;
wire    ap_block_pp0_stage0;
wire   [7:0] xor_ln66_fu_441_p2;
wire    ap_block_pp0_stage0_01001;
wire   [7:0] tmp_15_fu_344_p33;
wire   [6:0] shl_ln2_fu_421_p3;
wire   [767:0] zext_ln66_fu_428_p1;
wire   [767:0] lshr_ln66_fu_432_p2;
wire   [7:0] trunc_ln66_1_fu_437_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_15_fu_344_p1;
wire   [4:0] tmp_15_fu_344_p3;
wire   [4:0] tmp_15_fu_344_p5;
wire   [4:0] tmp_15_fu_344_p7;
wire   [4:0] tmp_15_fu_344_p9;
wire   [4:0] tmp_15_fu_344_p11;
wire   [4:0] tmp_15_fu_344_p13;
wire   [4:0] tmp_15_fu_344_p15;
wire   [4:0] tmp_15_fu_344_p17;
wire   [4:0] tmp_15_fu_344_p19;
wire   [4:0] tmp_15_fu_344_p21;
wire   [4:0] tmp_15_fu_344_p23;
wire   [4:0] tmp_15_fu_344_p25;
wire   [4:0] tmp_15_fu_344_p27;
wire   [4:0] tmp_15_fu_344_p29;
wire  signed [4:0] tmp_15_fu_344_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 i_fu_102 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_33_5_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1 ),.din0_WIDTH( 8 ),.CASE1( 5'h2 ),.din1_WIDTH( 8 ),.CASE2( 5'h3 ),.din2_WIDTH( 8 ),.CASE3( 5'h4 ),.din3_WIDTH( 8 ),.CASE4( 5'h5 ),.din4_WIDTH( 8 ),.CASE5( 5'h6 ),.din5_WIDTH( 8 ),.CASE6( 5'h7 ),.din6_WIDTH( 8 ),.CASE7( 5'h8 ),.din7_WIDTH( 8 ),.CASE8( 5'h9 ),.din8_WIDTH( 8 ),.CASE9( 5'hA ),.din9_WIDTH( 8 ),.CASE10( 5'hB ),.din10_WIDTH( 8 ),.CASE11( 5'hC ),.din11_WIDTH( 8 ),.CASE12( 5'hD ),.din12_WIDTH( 8 ),.CASE13( 5'hE ),.din13_WIDTH( 8 ),.CASE14( 5'hF ),.din14_WIDTH( 8 ),.CASE15( 5'h10 ),.din15_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 5 ),.dout_WIDTH( 8 ))
sparsemux_33_5_8_1_1_U171(.din0(buf_0_i),.din1(buf_1_i),.din2(buf_2_i),.din3(buf_3_i),.din4(buf_4_i),.din5(buf_5_i),.din6(buf_6_i),.din7(buf_7_i),.din8(buf_8_i),.din9(buf_9_i),.din10(buf_10_i),.din11(buf_11_i),.din12(buf_12_i),.din13(buf_13_i),.din14(buf_14_i),.din15(buf_15_i),.def(tmp_15_fu_344_p33),.sel(ap_sig_allocacmp_i_7),.dout(tmp_15_fu_344_p35));
aes256_encrypt_ecb_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln66_fu_328_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_102 <= add_ln66_fu_334_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_102 <= 5'd16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_7_reg_474 <= ap_sig_allocacmp_i_7;
        tmp_15_reg_486 <= tmp_15_fu_344_p35;
        trunc_ln66_reg_481 <= trunc_ln66_fu_340_p1;
    end
end
always @ (*) begin
    if (((icmp_ln66_fu_328_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_7 = 5'd16;
    end else begin
        ap_sig_allocacmp_i_7 = i_fu_102;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd1) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_0_o = xor_ln66_fu_441_p2;
    end else begin
        buf_0_o = buf_0_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_0_o_ap_vld = 1'b1;
    end else begin
        buf_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd11) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_10_o = xor_ln66_fu_441_p2;
    end else begin
        buf_10_o = buf_10_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd11) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_10_o_ap_vld = 1'b1;
    end else begin
        buf_10_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd12) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_11_o = xor_ln66_fu_441_p2;
    end else begin
        buf_11_o = buf_11_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd12) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_11_o_ap_vld = 1'b1;
    end else begin
        buf_11_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd13) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_12_o = xor_ln66_fu_441_p2;
    end else begin
        buf_12_o = buf_12_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd13) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_12_o_ap_vld = 1'b1;
    end else begin
        buf_12_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd14) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_13_o = xor_ln66_fu_441_p2;
    end else begin
        buf_13_o = buf_13_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd14) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_13_o_ap_vld = 1'b1;
    end else begin
        buf_13_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd15) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_14_o = xor_ln66_fu_441_p2;
    end else begin
        buf_14_o = buf_14_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd15) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_14_o_ap_vld = 1'b1;
    end else begin
        buf_14_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((~(i_7_reg_474 == 5'd1) & ~(i_7_reg_474 == 5'd2) & ~(i_7_reg_474 == 5'd3) & ~(i_7_reg_474 == 5'd4) & ~(i_7_reg_474 == 5'd5) & ~(i_7_reg_474 == 5'd6) & ~(i_7_reg_474 == 5'd7) & ~(i_7_reg_474 == 5'd8) & ~(i_7_reg_474 == 5'd9) & ~(i_7_reg_474 == 5'd10) & ~(i_7_reg_474 == 5'd11) & ~(i_7_reg_474 == 5'd12) & ~(i_7_reg_474 == 5'd13) & ~(i_7_reg_474 == 5'd14) & ~(i_7_reg_474 == 5'd15) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_15_o = xor_ln66_fu_441_p2;
    end else begin
        buf_15_o = buf_15_i;
    end
end
always @ (*) begin
    if ((~(i_7_reg_474 == 5'd1) & ~(i_7_reg_474 == 5'd2) & ~(i_7_reg_474 == 5'd3) & ~(i_7_reg_474 == 5'd4) & ~(i_7_reg_474 == 5'd5) & ~(i_7_reg_474 == 5'd6) & ~(i_7_reg_474 == 5'd7) & ~(i_7_reg_474 == 5'd8) & ~(i_7_reg_474 == 5'd9) & ~(i_7_reg_474 == 5'd10) & ~(i_7_reg_474 == 5'd11) & ~(i_7_reg_474 == 5'd12) & ~(i_7_reg_474 == 5'd13) & ~(i_7_reg_474 == 5'd14) & ~(i_7_reg_474 == 5'd15) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_15_o_ap_vld = 1'b1;
    end else begin
        buf_15_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd2) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_1_o = xor_ln66_fu_441_p2;
    end else begin
        buf_1_o = buf_1_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_1_o_ap_vld = 1'b1;
    end else begin
        buf_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd3) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_2_o = xor_ln66_fu_441_p2;
    end else begin
        buf_2_o = buf_2_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_2_o_ap_vld = 1'b1;
    end else begin
        buf_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd4) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_3_o = xor_ln66_fu_441_p2;
    end else begin
        buf_3_o = buf_3_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_3_o_ap_vld = 1'b1;
    end else begin
        buf_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd5) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_4_o = xor_ln66_fu_441_p2;
    end else begin
        buf_4_o = buf_4_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_4_o_ap_vld = 1'b1;
    end else begin
        buf_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd6) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_5_o = xor_ln66_fu_441_p2;
    end else begin
        buf_5_o = buf_5_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_5_o_ap_vld = 1'b1;
    end else begin
        buf_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd7) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_6_o = xor_ln66_fu_441_p2;
    end else begin
        buf_6_o = buf_6_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_6_o_ap_vld = 1'b1;
    end else begin
        buf_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd8) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_7_o = xor_ln66_fu_441_p2;
    end else begin
        buf_7_o = buf_7_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_7_o_ap_vld = 1'b1;
    end else begin
        buf_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd9) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_8_o = xor_ln66_fu_441_p2;
    end else begin
        buf_8_o = buf_8_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_8_o_ap_vld = 1'b1;
    end else begin
        buf_8_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd10) & (1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_9_o = xor_ln66_fu_441_p2;
    end else begin
        buf_9_o = buf_9_i;
    end
end
always @ (*) begin
    if (((i_7_reg_474 == 5'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_9_o_ap_vld = 1'b1;
    end else begin
        buf_9_o_ap_vld = 1'b0;
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
assign add_ln66_fu_334_p2 = ($signed(ap_sig_allocacmp_i_7) + $signed(5'd31));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln66_fu_328_p2 = ((ap_sig_allocacmp_i_7 == 5'd0) ? 1'b1 : 1'b0);
assign lshr_ln66_fu_432_p2 = ctx_ret2 >> zext_ln66_fu_428_p1;
assign shl_ln2_fu_421_p3 = {{trunc_ln66_reg_481}, {3'd0}};
assign tmp_15_fu_344_p33 = 'bx;
assign trunc_ln66_1_fu_437_p1 = lshr_ln66_fu_432_p2[7:0];
assign trunc_ln66_fu_340_p1 = add_ln66_fu_334_p2[3:0];
assign xor_ln66_fu_441_p2 = (trunc_ln66_1_fu_437_p1 ^ tmp_15_reg_486);
assign zext_ln66_fu_428_p1 = shl_ln2_fu_421_p3;
endmodule 
