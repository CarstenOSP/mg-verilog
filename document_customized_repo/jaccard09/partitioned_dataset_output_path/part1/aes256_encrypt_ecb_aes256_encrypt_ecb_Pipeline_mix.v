
module aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_mix (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_7_address0,buf_7_ce0,buf_7_we0,buf_7_d0,buf_7_address1,buf_7_ce1,buf_7_q1,buf_6_address0,buf_6_ce0,buf_6_we0,buf_6_d0,buf_6_address1,buf_6_ce1,buf_6_q1,buf_5_address0,buf_5_ce0,buf_5_we0,buf_5_d0,buf_5_address1,buf_5_ce1,buf_5_q1,buf_4_address0,buf_4_ce0,buf_4_we0,buf_4_d0,buf_4_address1,buf_4_ce1,buf_4_q1,buf_3_address0,buf_3_ce0,buf_3_we0,buf_3_d0,buf_3_address1,buf_3_ce1,buf_3_q1,buf_2_address0,buf_2_ce0,buf_2_we0,buf_2_d0,buf_2_address1,buf_2_ce1,buf_2_q1,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_address1,buf_1_ce1,buf_1_q1,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_address1,buf_0_ce1,buf_0_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] buf_7_address0;
output   buf_7_ce0;
output   buf_7_we0;
output  [7:0] buf_7_d0;
output  [0:0] buf_7_address1;
output   buf_7_ce1;
input  [7:0] buf_7_q1;
output  [0:0] buf_6_address0;
output   buf_6_ce0;
output   buf_6_we0;
output  [7:0] buf_6_d0;
output  [0:0] buf_6_address1;
output   buf_6_ce1;
input  [7:0] buf_6_q1;
output  [0:0] buf_5_address0;
output   buf_5_ce0;
output   buf_5_we0;
output  [7:0] buf_5_d0;
output  [0:0] buf_5_address1;
output   buf_5_ce1;
input  [7:0] buf_5_q1;
output  [0:0] buf_4_address0;
output   buf_4_ce0;
output   buf_4_we0;
output  [7:0] buf_4_d0;
output  [0:0] buf_4_address1;
output   buf_4_ce1;
input  [7:0] buf_4_q1;
output  [0:0] buf_3_address0;
output   buf_3_ce0;
output   buf_3_we0;
output  [7:0] buf_3_d0;
output  [0:0] buf_3_address1;
output   buf_3_ce1;
input  [7:0] buf_3_q1;
output  [0:0] buf_2_address0;
output   buf_2_ce0;
output   buf_2_we0;
output  [7:0] buf_2_d0;
output  [0:0] buf_2_address1;
output   buf_2_ce1;
input  [7:0] buf_2_q1;
output  [0:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
output  [0:0] buf_1_address1;
output   buf_1_ce1;
input  [7:0] buf_1_q1;
output  [0:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
output  [0:0] buf_0_address1;
output   buf_0_ce1;
input  [7:0] buf_0_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_208_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] buf_0_addr_reg_492;
reg   [0:0] buf_0_addr_reg_492_pp0_iter1_reg;
reg   [0:0] buf_4_addr_reg_498;
reg   [0:0] buf_4_addr_reg_498_pp0_iter1_reg;
wire   [0:0] icmp_ln102_fu_240_p2;
reg   [0:0] icmp_ln102_reg_504;
reg   [0:0] buf_1_addr_reg_512;
reg   [0:0] buf_1_addr_reg_512_pp0_iter1_reg;
reg   [0:0] buf_5_addr_reg_518;
reg   [0:0] buf_5_addr_reg_518_pp0_iter1_reg;
reg   [0:0] buf_2_addr_reg_524;
reg   [0:0] buf_2_addr_reg_524_pp0_iter1_reg;
reg   [0:0] buf_6_addr_reg_530;
reg   [0:0] buf_6_addr_reg_530_pp0_iter1_reg;
reg   [0:0] buf_3_addr_reg_536;
reg   [0:0] buf_3_addr_reg_536_pp0_iter1_reg;
reg   [0:0] buf_7_addr_reg_542;
reg   [0:0] buf_7_addr_reg_542_pp0_iter1_reg;
wire   [0:0] icmp_ln104_fu_246_p2;
reg   [0:0] icmp_ln104_reg_548;
reg   [0:0] icmp_ln104_reg_548_pp0_iter1_reg;
wire   [7:0] xor_ln104_1_fu_343_p2;
reg   [7:0] xor_ln104_1_reg_552;
wire   [7:0] xor_ln104_4_fu_389_p2;
reg   [7:0] xor_ln104_4_reg_558;
wire   [7:0] xor_ln105_2_fu_435_p2;
reg   [7:0] xor_ln105_2_reg_564;
wire   [7:0] xor_ln105_4_fu_475_p2;
reg   [7:0] xor_ln105_4_reg_570;
wire   [63:0] zext_ln98_fu_228_p1;
wire    ap_block_pp0_stage0;
reg   [4:0] i_fu_60;
wire   [4:0] add_ln100_fu_252_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_5;
reg    buf_0_ce1_local;
reg    buf_0_we0_local;
reg    buf_0_ce0_local;
reg    buf_4_ce1_local;
reg    buf_4_we0_local;
reg    buf_4_ce0_local;
reg    buf_1_ce1_local;
reg    buf_1_we0_local;
reg    buf_1_ce0_local;
reg    buf_5_ce1_local;
reg    buf_5_we0_local;
reg    buf_5_ce0_local;
reg    buf_2_ce1_local;
reg    buf_2_we0_local;
reg    buf_2_ce0_local;
reg    buf_6_ce1_local;
reg    buf_6_we0_local;
reg    buf_6_ce0_local;
reg    buf_3_ce1_local;
reg    buf_3_we0_local;
reg    buf_3_ce0_local;
reg    buf_7_ce1_local;
reg    buf_7_we0_local;
reg    buf_7_ce0_local;
wire   [0:0] tmp_19_fu_220_p3;
wire   [2:0] trunc_ln100_fu_216_p1;
wire   [7:0] b_fu_270_p3;
wire   [7:0] a_fu_263_p3;
wire   [7:0] c_fu_277_p3;
wire   [7:0] xor_ln103_fu_291_p2;
wire   [7:0] d_fu_284_p3;
wire   [7:0] xor_ln103_1_fu_297_p2;
wire   [7:0] shl_ln55_fu_317_p2;
wire   [0:0] tmp_20_fu_309_p3;
wire   [7:0] xor_ln55_fu_323_p2;
wire   [7:0] e_fu_303_p2;
wire   [7:0] xor_ln104_fu_337_p2;
wire   [7:0] select_ln55_fu_329_p3;
wire   [7:0] xor_ln104_2_fu_349_p2;
wire   [7:0] shl_ln55_1_fu_363_p2;
wire   [0:0] tmp_21_fu_355_p3;
wire   [7:0] xor_ln55_1_fu_369_p2;
wire   [7:0] xor_ln104_3_fu_383_p2;
wire   [7:0] select_ln55_1_fu_375_p3;
wire   [7:0] xor_ln105_fu_395_p2;
wire   [7:0] shl_ln55_2_fu_409_p2;
wire   [0:0] tmp_22_fu_401_p3;
wire   [7:0] xor_ln55_2_fu_415_p2;
wire   [7:0] select_ln55_2_fu_421_p3;
wire   [7:0] xor_ln105_1_fu_429_p2;
wire   [7:0] xor_ln105_3_fu_441_p2;
wire   [7:0] shl_ln55_3_fu_455_p2;
wire   [0:0] tmp_23_fu_447_p3;
wire   [7:0] xor_ln55_3_fu_461_p2;
wire   [7:0] select_ln55_3_fu_467_p3;
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
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_60 = 5'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((tmp_fu_208_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_60 <= add_ln100_fu_252_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_60 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        buf_0_addr_reg_492 <= zext_ln98_fu_228_p1;
        buf_0_addr_reg_492_pp0_iter1_reg <= buf_0_addr_reg_492;
        buf_1_addr_reg_512 <= zext_ln98_fu_228_p1;
        buf_1_addr_reg_512_pp0_iter1_reg <= buf_1_addr_reg_512;
        buf_2_addr_reg_524 <= zext_ln98_fu_228_p1;
        buf_2_addr_reg_524_pp0_iter1_reg <= buf_2_addr_reg_524;
        buf_3_addr_reg_536 <= zext_ln98_fu_228_p1;
        buf_3_addr_reg_536_pp0_iter1_reg <= buf_3_addr_reg_536;
        buf_4_addr_reg_498 <= zext_ln98_fu_228_p1;
        buf_4_addr_reg_498_pp0_iter1_reg <= buf_4_addr_reg_498;
        buf_5_addr_reg_518 <= zext_ln98_fu_228_p1;
        buf_5_addr_reg_518_pp0_iter1_reg <= buf_5_addr_reg_518;
        buf_6_addr_reg_530 <= zext_ln98_fu_228_p1;
        buf_6_addr_reg_530_pp0_iter1_reg <= buf_6_addr_reg_530;
        buf_7_addr_reg_542 <= zext_ln98_fu_228_p1;
        buf_7_addr_reg_542_pp0_iter1_reg <= buf_7_addr_reg_542;
        icmp_ln102_reg_504 <= icmp_ln102_fu_240_p2;
        icmp_ln104_reg_548 <= icmp_ln104_fu_246_p2;
        icmp_ln104_reg_548_pp0_iter1_reg <= icmp_ln104_reg_548;
        xor_ln104_1_reg_552 <= xor_ln104_1_fu_343_p2;
        xor_ln104_4_reg_558 <= xor_ln104_4_fu_389_p2;
        xor_ln105_2_reg_564 <= xor_ln105_2_fu_435_p2;
        xor_ln105_4_reg_570 <= xor_ln105_4_fu_475_p2;
    end
end
always @ (*) begin
    if (((tmp_fu_208_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_5 = 5'd0;
    end else begin
        ap_sig_allocacmp_i_5 = i_fu_60;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_0_ce0_local = 1'b1;
    end else begin
        buf_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_0_ce1_local = 1'b1;
    end else begin
        buf_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln104_reg_548_pp0_iter1_reg == 1'd1))) begin
        buf_0_we0_local = 1'b1;
    end else begin
        buf_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_1_ce0_local = 1'b1;
    end else begin
        buf_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_1_ce1_local = 1'b1;
    end else begin
        buf_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln104_reg_548_pp0_iter1_reg == 1'd1))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_2_ce0_local = 1'b1;
    end else begin
        buf_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_2_ce1_local = 1'b1;
    end else begin
        buf_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln104_reg_548_pp0_iter1_reg == 1'd1))) begin
        buf_2_we0_local = 1'b1;
    end else begin
        buf_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_3_ce0_local = 1'b1;
    end else begin
        buf_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_3_ce1_local = 1'b1;
    end else begin
        buf_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln104_reg_548_pp0_iter1_reg == 1'd1))) begin
        buf_3_we0_local = 1'b1;
    end else begin
        buf_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_4_ce0_local = 1'b1;
    end else begin
        buf_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_4_ce1_local = 1'b1;
    end else begin
        buf_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln104_reg_548_pp0_iter1_reg == 1'd0))) begin
        buf_4_we0_local = 1'b1;
    end else begin
        buf_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_5_ce0_local = 1'b1;
    end else begin
        buf_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_5_ce1_local = 1'b1;
    end else begin
        buf_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln104_reg_548_pp0_iter1_reg == 1'd0))) begin
        buf_5_we0_local = 1'b1;
    end else begin
        buf_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_6_ce0_local = 1'b1;
    end else begin
        buf_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_6_ce1_local = 1'b1;
    end else begin
        buf_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln104_reg_548_pp0_iter1_reg == 1'd0))) begin
        buf_6_we0_local = 1'b1;
    end else begin
        buf_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_7_ce0_local = 1'b1;
    end else begin
        buf_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_7_ce1_local = 1'b1;
    end else begin
        buf_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln104_reg_548_pp0_iter1_reg == 1'd0))) begin
        buf_7_we0_local = 1'b1;
    end else begin
        buf_7_we0_local = 1'b0;
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
assign a_fu_263_p3 = ((icmp_ln102_reg_504[0:0] == 1'b1) ? buf_4_q1 : buf_0_q1);
assign add_ln100_fu_252_p2 = (ap_sig_allocacmp_i_5 + 5'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign b_fu_270_p3 = ((icmp_ln102_reg_504[0:0] == 1'b1) ? buf_5_q1 : buf_1_q1);
assign buf_0_address0 = buf_0_addr_reg_492_pp0_iter1_reg;
assign buf_0_address1 = zext_ln98_fu_228_p1;
assign buf_0_ce0 = buf_0_ce0_local;
assign buf_0_ce1 = buf_0_ce1_local;
assign buf_0_d0 = xor_ln104_1_reg_552;
assign buf_0_we0 = buf_0_we0_local;
assign buf_1_address0 = buf_1_addr_reg_512_pp0_iter1_reg;
assign buf_1_address1 = zext_ln98_fu_228_p1;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_ce1 = buf_1_ce1_local;
assign buf_1_d0 = xor_ln104_4_reg_558;
assign buf_1_we0 = buf_1_we0_local;
assign buf_2_address0 = buf_2_addr_reg_524_pp0_iter1_reg;
assign buf_2_address1 = zext_ln98_fu_228_p1;
assign buf_2_ce0 = buf_2_ce0_local;
assign buf_2_ce1 = buf_2_ce1_local;
assign buf_2_d0 = xor_ln105_2_reg_564;
assign buf_2_we0 = buf_2_we0_local;
assign buf_3_address0 = buf_3_addr_reg_536_pp0_iter1_reg;
assign buf_3_address1 = zext_ln98_fu_228_p1;
assign buf_3_ce0 = buf_3_ce0_local;
assign buf_3_ce1 = buf_3_ce1_local;
assign buf_3_d0 = xor_ln105_4_reg_570;
assign buf_3_we0 = buf_3_we0_local;
assign buf_4_address0 = buf_4_addr_reg_498_pp0_iter1_reg;
assign buf_4_address1 = zext_ln98_fu_228_p1;
assign buf_4_ce0 = buf_4_ce0_local;
assign buf_4_ce1 = buf_4_ce1_local;
assign buf_4_d0 = xor_ln104_1_reg_552;
assign buf_4_we0 = buf_4_we0_local;
assign buf_5_address0 = buf_5_addr_reg_518_pp0_iter1_reg;
assign buf_5_address1 = zext_ln98_fu_228_p1;
assign buf_5_ce0 = buf_5_ce0_local;
assign buf_5_ce1 = buf_5_ce1_local;
assign buf_5_d0 = xor_ln104_4_reg_558;
assign buf_5_we0 = buf_5_we0_local;
assign buf_6_address0 = buf_6_addr_reg_530_pp0_iter1_reg;
assign buf_6_address1 = zext_ln98_fu_228_p1;
assign buf_6_ce0 = buf_6_ce0_local;
assign buf_6_ce1 = buf_6_ce1_local;
assign buf_6_d0 = xor_ln105_2_reg_564;
assign buf_6_we0 = buf_6_we0_local;
assign buf_7_address0 = buf_7_addr_reg_542_pp0_iter1_reg;
assign buf_7_address1 = zext_ln98_fu_228_p1;
assign buf_7_ce0 = buf_7_ce0_local;
assign buf_7_ce1 = buf_7_ce1_local;
assign buf_7_d0 = xor_ln105_4_reg_570;
assign buf_7_we0 = buf_7_we0_local;
assign c_fu_277_p3 = ((icmp_ln102_reg_504[0:0] == 1'b1) ? buf_6_q1 : buf_2_q1);
assign d_fu_284_p3 = ((icmp_ln102_reg_504[0:0] == 1'b1) ? buf_7_q1 : buf_3_q1);
assign e_fu_303_p2 = (xor_ln103_1_fu_297_p2 ^ d_fu_284_p3);
assign icmp_ln102_fu_240_p2 = ((trunc_ln100_fu_216_p1 != 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln104_fu_246_p2 = ((trunc_ln100_fu_216_p1 == 3'd0) ? 1'b1 : 1'b0);
assign select_ln55_1_fu_375_p3 = ((tmp_21_fu_355_p3[0:0] == 1'b1) ? xor_ln55_1_fu_369_p2 : shl_ln55_1_fu_363_p2);
assign select_ln55_2_fu_421_p3 = ((tmp_22_fu_401_p3[0:0] == 1'b1) ? xor_ln55_2_fu_415_p2 : shl_ln55_2_fu_409_p2);
assign select_ln55_3_fu_467_p3 = ((tmp_23_fu_447_p3[0:0] == 1'b1) ? xor_ln55_3_fu_461_p2 : shl_ln55_3_fu_455_p2);
assign select_ln55_fu_329_p3 = ((tmp_20_fu_309_p3[0:0] == 1'b1) ? xor_ln55_fu_323_p2 : shl_ln55_fu_317_p2);
assign shl_ln55_1_fu_363_p2 = xor_ln104_2_fu_349_p2 << 8'd1;
assign shl_ln55_2_fu_409_p2 = xor_ln105_fu_395_p2 << 8'd1;
assign shl_ln55_3_fu_455_p2 = xor_ln105_3_fu_441_p2 << 8'd1;
assign shl_ln55_fu_317_p2 = xor_ln103_fu_291_p2 << 8'd1;
assign tmp_19_fu_220_p3 = ap_sig_allocacmp_i_5[32'd3];
assign tmp_20_fu_309_p3 = xor_ln103_fu_291_p2[32'd7];
assign tmp_21_fu_355_p3 = xor_ln104_2_fu_349_p2[32'd7];
assign tmp_22_fu_401_p3 = xor_ln105_fu_395_p2[32'd7];
assign tmp_23_fu_447_p3 = xor_ln105_3_fu_441_p2[32'd7];
assign tmp_fu_208_p3 = ap_sig_allocacmp_i_5[32'd4];
assign trunc_ln100_fu_216_p1 = ap_sig_allocacmp_i_5[2:0];
assign xor_ln103_1_fu_297_p2 = (xor_ln103_fu_291_p2 ^ c_fu_277_p3);
assign xor_ln103_fu_291_p2 = (b_fu_270_p3 ^ a_fu_263_p3);
assign xor_ln104_1_fu_343_p2 = (xor_ln104_fu_337_p2 ^ select_ln55_fu_329_p3);
assign xor_ln104_2_fu_349_p2 = (c_fu_277_p3 ^ b_fu_270_p3);
assign xor_ln104_3_fu_383_p2 = (e_fu_303_p2 ^ b_fu_270_p3);
assign xor_ln104_4_fu_389_p2 = (xor_ln104_3_fu_383_p2 ^ select_ln55_1_fu_375_p3);
assign xor_ln104_fu_337_p2 = (e_fu_303_p2 ^ a_fu_263_p3);
assign xor_ln105_1_fu_429_p2 = (xor_ln103_fu_291_p2 ^ select_ln55_2_fu_421_p3);
assign xor_ln105_2_fu_435_p2 = (xor_ln105_1_fu_429_p2 ^ d_fu_284_p3);
assign xor_ln105_3_fu_441_p2 = (d_fu_284_p3 ^ a_fu_263_p3);
assign xor_ln105_4_fu_475_p2 = (xor_ln103_1_fu_297_p2 ^ select_ln55_3_fu_467_p3);
assign xor_ln105_fu_395_p2 = (d_fu_284_p3 ^ c_fu_277_p3);
assign xor_ln55_1_fu_369_p2 = (shl_ln55_1_fu_363_p2 ^ 8'd27);
assign xor_ln55_2_fu_415_p2 = (shl_ln55_2_fu_409_p2 ^ 8'd27);
assign xor_ln55_3_fu_461_p2 = (shl_ln55_3_fu_455_p2 ^ 8'd27);
assign xor_ln55_fu_323_p2 = (shl_ln55_fu_317_p2 ^ 8'd27);
assign zext_ln98_fu_228_p1 = tmp_19_fu_220_p3;
endmodule 
