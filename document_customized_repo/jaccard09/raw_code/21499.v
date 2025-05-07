module aes256_encrypt_ecb_aes_mixColumns (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_address1,buf_0_ce1,buf_0_q1,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_address1,buf_1_ce1,buf_1_q1,buf_2_address0,buf_2_ce0,buf_2_we0,buf_2_d0,buf_2_address1,buf_2_ce1,buf_2_q1,buf_3_address0,buf_3_ce0,buf_3_we0,buf_3_d0,buf_3_address1,buf_3_ce1,buf_3_q1,buf_4_address0,buf_4_ce0,buf_4_we0,buf_4_d0,buf_4_address1,buf_4_ce1,buf_4_q1,buf_5_address0,buf_5_ce0,buf_5_we0,buf_5_d0,buf_5_address1,buf_5_ce1,buf_5_q1,buf_6_address0,buf_6_ce0,buf_6_we0,buf_6_d0,buf_6_address1,buf_6_ce1,buf_6_q1,buf_7_address0,buf_7_ce0,buf_7_we0,buf_7_d0,buf_7_address1,buf_7_ce1,buf_7_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
output  [0:0] buf_0_address1;
output   buf_0_ce1;
input  [7:0] buf_0_q1;
output  [0:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
output  [0:0] buf_1_address1;
output   buf_1_ce1;
input  [7:0] buf_1_q1;
output  [0:0] buf_2_address0;
output   buf_2_ce0;
output   buf_2_we0;
output  [7:0] buf_2_d0;
output  [0:0] buf_2_address1;
output   buf_2_ce1;
input  [7:0] buf_2_q1;
output  [0:0] buf_3_address0;
output   buf_3_ce0;
output   buf_3_we0;
output  [7:0] buf_3_d0;
output  [0:0] buf_3_address1;
output   buf_3_ce1;
input  [7:0] buf_3_q1;
output  [0:0] buf_4_address0;
output   buf_4_ce0;
output   buf_4_we0;
output  [7:0] buf_4_d0;
output  [0:0] buf_4_address1;
output   buf_4_ce1;
input  [7:0] buf_4_q1;
output  [0:0] buf_5_address0;
output   buf_5_ce0;
output   buf_5_we0;
output  [7:0] buf_5_d0;
output  [0:0] buf_5_address1;
output   buf_5_ce1;
input  [7:0] buf_5_q1;
output  [0:0] buf_6_address0;
output   buf_6_ce0;
output   buf_6_we0;
output  [7:0] buf_6_d0;
output  [0:0] buf_6_address1;
output   buf_6_ce1;
input  [7:0] buf_6_q1;
output  [0:0] buf_7_address0;
output   buf_7_ce0;
output   buf_7_we0;
output  [7:0] buf_7_d0;
output  [0:0] buf_7_address1;
output   buf_7_ce1;
input  [7:0] buf_7_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_206_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] buf_0_addr_reg_640;
reg   [0:0] buf_0_addr_reg_640_pp0_iter1_reg;
reg   [0:0] buf_1_addr_reg_646;
reg   [0:0] buf_1_addr_reg_646_pp0_iter1_reg;
reg   [0:0] buf_2_addr_reg_652;
reg   [0:0] buf_3_addr_reg_658;
reg   [0:0] buf_4_addr_reg_664;
reg   [0:0] buf_4_addr_reg_664_pp0_iter1_reg;
reg   [0:0] buf_5_addr_reg_670;
reg   [0:0] buf_5_addr_reg_670_pp0_iter1_reg;
reg   [0:0] buf_6_addr_reg_676;
reg   [0:0] buf_7_addr_reg_682;
wire   [7:0] xor_ln104_1_fu_297_p2;
reg   [7:0] xor_ln104_1_reg_688;
wire   [7:0] xor_ln104_4_fu_343_p2;
reg   [7:0] xor_ln104_4_reg_693;
wire   [7:0] xor_ln104_7_fu_523_p2;
reg   [7:0] xor_ln104_7_reg_698;
wire   [7:0] xor_ln104_9_fu_535_p2;
reg   [7:0] xor_ln104_9_reg_703;
wire   [63:0] zext_ln98_fu_222_p1;
wire    ap_block_pp0_stage0;
reg   [4:0] i_fu_58;
wire   [4:0] add_ln100_fu_234_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_5;
reg    buf_0_ce1_local;
reg    buf_0_we0_local;
reg    buf_0_ce0_local;
reg    buf_1_ce1_local;
reg    buf_1_we0_local;
reg    buf_1_ce0_local;
reg    buf_2_ce1_local;
reg    buf_2_we0_local;
wire   [7:0] xor_ln105_2_fu_389_p2;
reg    buf_2_ce0_local;
reg    buf_3_ce1_local;
reg    buf_3_we0_local;
wire   [7:0] xor_ln105_4_fu_430_p2;
reg    buf_3_ce0_local;
reg    buf_4_ce1_local;
reg    buf_4_we0_local;
reg    buf_4_ce0_local;
reg    buf_5_ce1_local;
reg    buf_5_we0_local;
reg    buf_5_ce0_local;
reg    buf_6_ce1_local;
reg    buf_6_we0_local;
wire   [7:0] xor_ln105_7_fu_581_p2;
reg    buf_6_ce0_local;
reg    buf_7_ce1_local;
reg    buf_7_we0_local;
wire   [7:0] xor_ln105_9_fu_622_p2;
reg    buf_7_ce0_local;
wire   [0:0] tmp_2_fu_214_p3;
wire   [7:0] xor_ln103_fu_245_p2;
wire   [7:0] xor_ln103_1_fu_251_p2;
wire   [7:0] shl_ln55_fu_271_p2;
wire   [0:0] tmp_3_fu_263_p3;
wire   [7:0] xor_ln55_fu_277_p2;
wire   [7:0] select_ln55_fu_283_p3;
wire   [7:0] e_fu_257_p2;
wire   [7:0] xor_ln104_fu_291_p2;
wire   [7:0] xor_ln104_2_fu_303_p2;
wire   [7:0] shl_ln55_1_fu_317_p2;
wire   [0:0] tmp_4_fu_309_p3;
wire   [7:0] xor_ln55_1_fu_323_p2;
wire   [7:0] select_ln55_1_fu_329_p3;
wire   [7:0] xor_ln104_3_fu_337_p2;
wire   [7:0] xor_ln105_fu_349_p2;
wire   [7:0] shl_ln55_2_fu_363_p2;
wire   [0:0] tmp_5_fu_355_p3;
wire   [7:0] xor_ln55_2_fu_369_p2;
wire   [7:0] select_ln55_2_fu_375_p3;
wire   [7:0] xor_ln105_1_fu_383_p2;
wire   [7:0] xor_ln105_3_fu_396_p2;
wire   [7:0] shl_ln55_3_fu_410_p2;
wire   [0:0] tmp_6_fu_402_p3;
wire   [7:0] xor_ln55_3_fu_416_p2;
wire   [7:0] select_ln55_3_fu_422_p3;
wire   [7:0] xor_ln103_3_fu_437_p2;
wire   [7:0] shl_ln55_4_fu_451_p2;
wire   [0:0] tmp_7_fu_443_p3;
wire   [7:0] xor_ln55_4_fu_457_p2;
wire   [7:0] xor_ln104_5_fu_477_p2;
wire   [7:0] shl_ln55_5_fu_491_p2;
wire   [0:0] tmp_8_fu_483_p3;
wire   [7:0] xor_ln55_5_fu_497_p2;
wire   [7:0] xor_ln103_4_fu_471_p2;
wire   [7:0] select_ln55_4_fu_463_p3;
wire   [7:0] e_2_fu_511_p2;
wire   [7:0] xor_ln104_6_fu_517_p2;
wire   [7:0] select_ln55_5_fu_503_p3;
wire   [7:0] xor_ln104_8_fu_529_p2;
wire   [7:0] xor_ln105_5_fu_541_p2;
wire   [7:0] shl_ln55_6_fu_555_p2;
wire   [0:0] tmp_9_fu_547_p3;
wire   [7:0] xor_ln55_6_fu_561_p2;
wire   [7:0] select_ln55_6_fu_567_p3;
wire   [7:0] xor_ln105_6_fu_575_p2;
wire   [7:0] xor_ln105_8_fu_588_p2;
wire   [7:0] shl_ln55_7_fu_602_p2;
wire   [0:0] tmp_10_fu_594_p3;
wire   [7:0] xor_ln55_7_fu_608_p2;
wire   [7:0] select_ln55_7_fu_614_p3;
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
#0 i_fu_58 = 5'd0;
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
        if (((tmp_fu_206_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_58 <= add_ln100_fu_234_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_58 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        buf_0_addr_reg_640 <= zext_ln98_fu_222_p1;
        buf_0_addr_reg_640_pp0_iter1_reg <= buf_0_addr_reg_640;
        buf_1_addr_reg_646 <= zext_ln98_fu_222_p1;
        buf_1_addr_reg_646_pp0_iter1_reg <= buf_1_addr_reg_646;
        buf_2_addr_reg_652 <= zext_ln98_fu_222_p1;
        buf_3_addr_reg_658 <= zext_ln98_fu_222_p1;
        buf_4_addr_reg_664 <= zext_ln98_fu_222_p1;
        buf_4_addr_reg_664_pp0_iter1_reg <= buf_4_addr_reg_664;
        buf_5_addr_reg_670 <= zext_ln98_fu_222_p1;
        buf_5_addr_reg_670_pp0_iter1_reg <= buf_5_addr_reg_670;
        buf_6_addr_reg_676 <= zext_ln98_fu_222_p1;
        buf_7_addr_reg_682 <= zext_ln98_fu_222_p1;
        xor_ln104_1_reg_688 <= xor_ln104_1_fu_297_p2;
        xor_ln104_4_reg_693 <= xor_ln104_4_fu_343_p2;
        xor_ln104_7_reg_698 <= xor_ln104_7_fu_523_p2;
        xor_ln104_9_reg_703 <= xor_ln104_9_fu_535_p2;
    end
end
always @ (*) begin
    if (((tmp_fu_206_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_5 = i_fu_58;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_2_we0_local = 1'b1;
    end else begin
        buf_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_5_we0_local = 1'b1;
    end else begin
        buf_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_6_we0_local = 1'b1;
    end else begin
        buf_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln100_fu_234_p2 = (ap_sig_allocacmp_i_5 + 5'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buf_0_address0 = buf_0_addr_reg_640_pp0_iter1_reg;
assign buf_0_address1 = zext_ln98_fu_222_p1;
assign buf_0_ce0 = buf_0_ce0_local;
assign buf_0_ce1 = buf_0_ce1_local;
assign buf_0_d0 = xor_ln104_1_reg_688;
assign buf_0_we0 = buf_0_we0_local;
assign buf_1_address0 = buf_1_addr_reg_646_pp0_iter1_reg;
assign buf_1_address1 = zext_ln98_fu_222_p1;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_ce1 = buf_1_ce1_local;
assign buf_1_d0 = xor_ln104_4_reg_693;
assign buf_1_we0 = buf_1_we0_local;
assign buf_2_address0 = buf_2_addr_reg_652;
assign buf_2_address1 = zext_ln98_fu_222_p1;
assign buf_2_ce0 = buf_2_ce0_local;
assign buf_2_ce1 = buf_2_ce1_local;
assign buf_2_d0 = xor_ln105_2_fu_389_p2;
assign buf_2_we0 = buf_2_we0_local;
assign buf_3_address0 = buf_3_addr_reg_658;
assign buf_3_address1 = zext_ln98_fu_222_p1;
assign buf_3_ce0 = buf_3_ce0_local;
assign buf_3_ce1 = buf_3_ce1_local;
assign buf_3_d0 = xor_ln105_4_fu_430_p2;
assign buf_3_we0 = buf_3_we0_local;
assign buf_4_address0 = buf_4_addr_reg_664_pp0_iter1_reg;
assign buf_4_address1 = zext_ln98_fu_222_p1;
assign buf_4_ce0 = buf_4_ce0_local;
assign buf_4_ce1 = buf_4_ce1_local;
assign buf_4_d0 = xor_ln104_7_reg_698;
assign buf_4_we0 = buf_4_we0_local;
assign buf_5_address0 = buf_5_addr_reg_670_pp0_iter1_reg;
assign buf_5_address1 = zext_ln98_fu_222_p1;
assign buf_5_ce0 = buf_5_ce0_local;
assign buf_5_ce1 = buf_5_ce1_local;
assign buf_5_d0 = xor_ln104_9_reg_703;
assign buf_5_we0 = buf_5_we0_local;
assign buf_6_address0 = buf_6_addr_reg_676;
assign buf_6_address1 = zext_ln98_fu_222_p1;
assign buf_6_ce0 = buf_6_ce0_local;
assign buf_6_ce1 = buf_6_ce1_local;
assign buf_6_d0 = xor_ln105_7_fu_581_p2;
assign buf_6_we0 = buf_6_we0_local;
assign buf_7_address0 = buf_7_addr_reg_682;
assign buf_7_address1 = zext_ln98_fu_222_p1;
assign buf_7_ce0 = buf_7_ce0_local;
assign buf_7_ce1 = buf_7_ce1_local;
assign buf_7_d0 = xor_ln105_9_fu_622_p2;
assign buf_7_we0 = buf_7_we0_local;
assign e_2_fu_511_p2 = (xor_ln103_4_fu_471_p2 ^ buf_7_q1);
assign e_fu_257_p2 = (xor_ln103_1_fu_251_p2 ^ buf_3_q1);
assign select_ln55_1_fu_329_p3 = ((tmp_4_fu_309_p3[0:0] == 1'b1) ? xor_ln55_1_fu_323_p2 : shl_ln55_1_fu_317_p2);
assign select_ln55_2_fu_375_p3 = ((tmp_5_fu_355_p3[0:0] == 1'b1) ? xor_ln55_2_fu_369_p2 : shl_ln55_2_fu_363_p2);
assign select_ln55_3_fu_422_p3 = ((tmp_6_fu_402_p3[0:0] == 1'b1) ? xor_ln55_3_fu_416_p2 : shl_ln55_3_fu_410_p2);
assign select_ln55_4_fu_463_p3 = ((tmp_7_fu_443_p3[0:0] == 1'b1) ? xor_ln55_4_fu_457_p2 : shl_ln55_4_fu_451_p2);
assign select_ln55_5_fu_503_p3 = ((tmp_8_fu_483_p3[0:0] == 1'b1) ? xor_ln55_5_fu_497_p2 : shl_ln55_5_fu_491_p2);
assign select_ln55_6_fu_567_p3 = ((tmp_9_fu_547_p3[0:0] == 1'b1) ? xor_ln55_6_fu_561_p2 : shl_ln55_6_fu_555_p2);
assign select_ln55_7_fu_614_p3 = ((tmp_10_fu_594_p3[0:0] == 1'b1) ? xor_ln55_7_fu_608_p2 : shl_ln55_7_fu_602_p2);
assign select_ln55_fu_283_p3 = ((tmp_3_fu_263_p3[0:0] == 1'b1) ? xor_ln55_fu_277_p2 : shl_ln55_fu_271_p2);
assign shl_ln55_1_fu_317_p2 = xor_ln104_2_fu_303_p2 << 8'd1;
assign shl_ln55_2_fu_363_p2 = xor_ln105_fu_349_p2 << 8'd1;
assign shl_ln55_3_fu_410_p2 = xor_ln105_3_fu_396_p2 << 8'd1;
assign shl_ln55_4_fu_451_p2 = xor_ln103_3_fu_437_p2 << 8'd1;
assign shl_ln55_5_fu_491_p2 = xor_ln104_5_fu_477_p2 << 8'd1;
assign shl_ln55_6_fu_555_p2 = xor_ln105_5_fu_541_p2 << 8'd1;
assign shl_ln55_7_fu_602_p2 = xor_ln105_8_fu_588_p2 << 8'd1;
assign shl_ln55_fu_271_p2 = xor_ln103_fu_245_p2 << 8'd1;
assign tmp_10_fu_594_p3 = xor_ln105_8_fu_588_p2[32'd7];
assign tmp_2_fu_214_p3 = ap_sig_allocacmp_i_5[32'd3];
assign tmp_3_fu_263_p3 = xor_ln103_fu_245_p2[32'd7];
assign tmp_4_fu_309_p3 = xor_ln104_2_fu_303_p2[32'd7];
assign tmp_5_fu_355_p3 = xor_ln105_fu_349_p2[32'd7];
assign tmp_6_fu_402_p3 = xor_ln105_3_fu_396_p2[32'd7];
assign tmp_7_fu_443_p3 = xor_ln103_3_fu_437_p2[32'd7];
assign tmp_8_fu_483_p3 = xor_ln104_5_fu_477_p2[32'd7];
assign tmp_9_fu_547_p3 = xor_ln105_5_fu_541_p2[32'd7];
assign tmp_fu_206_p3 = ap_sig_allocacmp_i_5[32'd4];
assign xor_ln103_1_fu_251_p2 = (xor_ln103_fu_245_p2 ^ buf_2_q1);
assign xor_ln103_3_fu_437_p2 = (buf_5_q1 ^ buf_4_q1);
assign xor_ln103_4_fu_471_p2 = (xor_ln103_3_fu_437_p2 ^ buf_6_q1);
assign xor_ln103_fu_245_p2 = (buf_1_q1 ^ buf_0_q1);
assign xor_ln104_1_fu_297_p2 = (xor_ln104_fu_291_p2 ^ buf_0_q1);
assign xor_ln104_2_fu_303_p2 = (buf_2_q1 ^ buf_1_q1);
assign xor_ln104_3_fu_337_p2 = (select_ln55_1_fu_329_p3 ^ e_fu_257_p2);
assign xor_ln104_4_fu_343_p2 = (xor_ln104_3_fu_337_p2 ^ buf_1_q1);
assign xor_ln104_5_fu_477_p2 = (buf_6_q1 ^ buf_5_q1);
assign xor_ln104_6_fu_517_p2 = (select_ln55_4_fu_463_p3 ^ e_2_fu_511_p2);
assign xor_ln104_7_fu_523_p2 = (xor_ln104_6_fu_517_p2 ^ buf_4_q1);
assign xor_ln104_8_fu_529_p2 = (select_ln55_5_fu_503_p3 ^ e_2_fu_511_p2);
assign xor_ln104_9_fu_535_p2 = (xor_ln104_8_fu_529_p2 ^ buf_5_q1);
assign xor_ln104_fu_291_p2 = (select_ln55_fu_283_p3 ^ e_fu_257_p2);
assign xor_ln105_1_fu_383_p2 = (xor_ln103_fu_245_p2 ^ select_ln55_2_fu_375_p3);
assign xor_ln105_2_fu_389_p2 = (xor_ln105_1_fu_383_p2 ^ buf_3_q1);
assign xor_ln105_3_fu_396_p2 = (buf_3_q1 ^ buf_0_q1);
assign xor_ln105_4_fu_430_p2 = (xor_ln103_1_fu_251_p2 ^ select_ln55_3_fu_422_p3);
assign xor_ln105_5_fu_541_p2 = (buf_7_q1 ^ buf_6_q1);
assign xor_ln105_6_fu_575_p2 = (xor_ln103_3_fu_437_p2 ^ select_ln55_6_fu_567_p3);
assign xor_ln105_7_fu_581_p2 = (xor_ln105_6_fu_575_p2 ^ buf_7_q1);
assign xor_ln105_8_fu_588_p2 = (buf_7_q1 ^ buf_4_q1);
assign xor_ln105_9_fu_622_p2 = (xor_ln103_4_fu_471_p2 ^ select_ln55_7_fu_614_p3);
assign xor_ln105_fu_349_p2 = (buf_3_q1 ^ buf_2_q1);
assign xor_ln55_1_fu_323_p2 = (shl_ln55_1_fu_317_p2 ^ 8'd27);
assign xor_ln55_2_fu_369_p2 = (shl_ln55_2_fu_363_p2 ^ 8'd27);
assign xor_ln55_3_fu_416_p2 = (shl_ln55_3_fu_410_p2 ^ 8'd27);
assign xor_ln55_4_fu_457_p2 = (shl_ln55_4_fu_451_p2 ^ 8'd27);
assign xor_ln55_5_fu_497_p2 = (shl_ln55_5_fu_491_p2 ^ 8'd27);
assign xor_ln55_6_fu_561_p2 = (shl_ln55_6_fu_555_p2 ^ 8'd27);
assign xor_ln55_7_fu_608_p2 = (shl_ln55_7_fu_602_p2 ^ 8'd27);
assign xor_ln55_fu_277_p2 = (shl_ln55_fu_271_p2 ^ 8'd27);
assign zext_ln98_fu_222_p1 = tmp_2_fu_214_p3;
endmodule 