module aes256_encrypt_ecb_aes_mixColumns (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_q0,buf_0_address1,buf_0_ce1,buf_0_we1,buf_0_d1,buf_0_q1,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_q0,buf_1_address1,buf_1_ce1,buf_1_we1,buf_1_d1,buf_1_q1,buf_2_address0,buf_2_ce0,buf_2_we0,buf_2_d0,buf_2_q0,buf_2_address1,buf_2_ce1,buf_2_we1,buf_2_d1,buf_2_q1,buf_3_address0,buf_3_ce0,buf_3_we0,buf_3_d0,buf_3_q0,buf_3_address1,buf_3_ce1,buf_3_we1,buf_3_d1,buf_3_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
input  [7:0] buf_0_q0;
output  [1:0] buf_0_address1;
output   buf_0_ce1;
output   buf_0_we1;
output  [7:0] buf_0_d1;
input  [7:0] buf_0_q1;
output  [1:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
input  [7:0] buf_1_q0;
output  [1:0] buf_1_address1;
output   buf_1_ce1;
output   buf_1_we1;
output  [7:0] buf_1_d1;
input  [7:0] buf_1_q1;
output  [1:0] buf_2_address0;
output   buf_2_ce0;
output   buf_2_we0;
output  [7:0] buf_2_d0;
input  [7:0] buf_2_q0;
output  [1:0] buf_2_address1;
output   buf_2_ce1;
output   buf_2_we1;
output  [7:0] buf_2_d1;
input  [7:0] buf_2_q1;
output  [1:0] buf_3_address0;
output   buf_3_ce0;
output   buf_3_we0;
output  [7:0] buf_3_d0;
input  [7:0] buf_3_q0;
output  [1:0] buf_3_address1;
output   buf_3_ce1;
output   buf_3_we1;
output  [7:0] buf_3_d1;
input  [7:0] buf_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_622;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [0:0] tmp_fu_170_p3;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] buf_0_addr_reg_626;
reg   [1:0] buf_0_addr_reg_626_pp0_iter1_reg;
reg   [1:0] buf_1_addr_reg_631;
reg   [1:0] buf_1_addr_reg_631_pp0_iter1_reg;
reg   [1:0] buf_2_addr_reg_636;
reg   [1:0] buf_3_addr_reg_641;
reg   [1:0] buf_0_addr_1_reg_646;
reg   [1:0] buf_0_addr_1_reg_646_pp0_iter1_reg;
reg   [1:0] buf_1_addr_1_reg_651;
reg   [1:0] buf_1_addr_1_reg_651_pp0_iter1_reg;
reg   [1:0] buf_2_addr_1_reg_656;
reg   [1:0] buf_3_addr_1_reg_661;
wire   [7:0] xor_ln104_1_fu_283_p2;
reg   [7:0] xor_ln104_1_reg_666;
wire    ap_block_pp0_stage1_11001;
wire   [7:0] xor_ln104_4_fu_329_p2;
reg   [7:0] xor_ln104_4_reg_671;
wire   [7:0] xor_ln104_7_fu_509_p2;
reg   [7:0] xor_ln104_7_reg_676;
wire   [7:0] xor_ln104_9_fu_521_p2;
reg   [7:0] xor_ln104_9_reg_681;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln98_fu_188_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln98_1_fu_212_p1;
reg   [4:0] i_fu_58;
wire   [4:0] add_ln100_fu_220_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_5;
reg    buf_0_ce1_local;
reg   [1:0] buf_0_address1_local;
reg    buf_0_ce0_local;
reg   [1:0] buf_0_address0_local;
reg    buf_0_we1_local;
wire    ap_block_pp0_stage1;
reg    buf_0_we0_local;
reg    buf_1_ce1_local;
reg   [1:0] buf_1_address1_local;
reg    buf_1_ce0_local;
reg   [1:0] buf_1_address0_local;
reg    buf_1_we1_local;
reg    buf_1_we0_local;
reg    buf_2_ce1_local;
reg   [1:0] buf_2_address1_local;
reg    buf_2_ce0_local;
reg   [1:0] buf_2_address0_local;
reg    buf_2_we1_local;
wire   [7:0] xor_ln105_2_fu_375_p2;
reg    buf_2_we0_local;
wire   [7:0] xor_ln105_7_fu_567_p2;
reg    buf_3_ce1_local;
reg   [1:0] buf_3_address1_local;
reg    buf_3_ce0_local;
reg   [1:0] buf_3_address0_local;
reg    buf_3_we1_local;
wire   [7:0] xor_ln105_4_fu_416_p2;
reg    buf_3_we0_local;
wire   [7:0] xor_ln105_9_fu_608_p2;
wire   [1:0] lshr_ln_fu_178_p4;
wire   [0:0] tmp_5_fu_196_p3;
wire   [1:0] or_ln_fu_204_p3;
wire   [7:0] xor_ln103_fu_231_p2;
wire   [7:0] xor_ln103_1_fu_237_p2;
wire   [7:0] shl_ln55_fu_257_p2;
wire   [0:0] tmp_1_fu_249_p3;
wire   [7:0] xor_ln55_fu_263_p2;
wire   [7:0] select_ln55_fu_269_p3;
wire   [7:0] e_fu_243_p2;
wire   [7:0] xor_ln104_fu_277_p2;
wire   [7:0] xor_ln104_2_fu_289_p2;
wire   [7:0] shl_ln55_1_fu_303_p2;
wire   [0:0] tmp_2_fu_295_p3;
wire   [7:0] xor_ln55_1_fu_309_p2;
wire   [7:0] select_ln55_1_fu_315_p3;
wire   [7:0] xor_ln104_3_fu_323_p2;
wire   [7:0] xor_ln105_fu_335_p2;
wire   [7:0] shl_ln55_2_fu_349_p2;
wire   [0:0] tmp_3_fu_341_p3;
wire   [7:0] xor_ln55_2_fu_355_p2;
wire   [7:0] select_ln55_2_fu_361_p3;
wire   [7:0] xor_ln105_1_fu_369_p2;
wire   [7:0] xor_ln105_3_fu_382_p2;
wire   [7:0] shl_ln55_3_fu_396_p2;
wire   [0:0] tmp_4_fu_388_p3;
wire   [7:0] xor_ln55_3_fu_402_p2;
wire   [7:0] select_ln55_3_fu_408_p3;
wire   [7:0] xor_ln103_3_fu_423_p2;
wire   [7:0] shl_ln55_4_fu_437_p2;
wire   [0:0] tmp_6_fu_429_p3;
wire   [7:0] xor_ln55_4_fu_443_p2;
wire   [7:0] xor_ln104_5_fu_463_p2;
wire   [7:0] shl_ln55_5_fu_477_p2;
wire   [0:0] tmp_7_fu_469_p3;
wire   [7:0] xor_ln55_5_fu_483_p2;
wire   [7:0] xor_ln103_4_fu_457_p2;
wire   [7:0] select_ln55_4_fu_449_p3;
wire   [7:0] e_2_fu_497_p2;
wire   [7:0] xor_ln104_6_fu_503_p2;
wire   [7:0] select_ln55_5_fu_489_p3;
wire   [7:0] xor_ln104_8_fu_515_p2;
wire   [7:0] xor_ln105_5_fu_527_p2;
wire   [7:0] shl_ln55_6_fu_541_p2;
wire   [0:0] tmp_8_fu_533_p3;
wire   [7:0] xor_ln55_6_fu_547_p2;
wire   [7:0] select_ln55_6_fu_553_p3;
wire   [7:0] xor_ln105_6_fu_561_p2;
wire   [7:0] xor_ln105_8_fu_574_p2;
wire   [7:0] shl_ln55_7_fu_588_p2;
wire   [0:0] tmp_9_fu_580_p3;
wire   [7:0] xor_ln55_7_fu_594_p2;
wire   [7:0] select_ln55_7_fu_600_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_58 = 5'd0;
#0 ap_done_reg = 1'b0;
end
aes256_encrypt_ecb_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_170_p3 == 1'd0))) begin
            i_fu_58 <= add_ln100_fu_220_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_58 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_0_addr_1_reg_646[1] <= zext_ln98_1_fu_212_p1[1];
        buf_0_addr_1_reg_646_pp0_iter1_reg[1] <= buf_0_addr_1_reg_646[1];
        buf_0_addr_reg_626 <= zext_ln98_fu_188_p1;
        buf_0_addr_reg_626_pp0_iter1_reg <= buf_0_addr_reg_626;
        buf_1_addr_1_reg_651[1] <= zext_ln98_1_fu_212_p1[1];
        buf_1_addr_1_reg_651_pp0_iter1_reg[1] <= buf_1_addr_1_reg_651[1];
        buf_1_addr_reg_631 <= zext_ln98_fu_188_p1;
        buf_1_addr_reg_631_pp0_iter1_reg <= buf_1_addr_reg_631;
        buf_2_addr_1_reg_656[1] <= zext_ln98_1_fu_212_p1[1];
        buf_2_addr_reg_636 <= zext_ln98_fu_188_p1;
        buf_3_addr_1_reg_661[1] <= zext_ln98_1_fu_212_p1[1];
        buf_3_addr_reg_641 <= zext_ln98_fu_188_p1;
        tmp_reg_622 <= ap_sig_allocacmp_i_5[32'd4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        xor_ln104_1_reg_666 <= xor_ln104_1_fu_283_p2;
        xor_ln104_4_reg_671 <= xor_ln104_4_fu_329_p2;
        xor_ln104_7_reg_676 <= xor_ln104_7_fu_509_p2;
        xor_ln104_9_reg_681 <= xor_ln104_9_fu_521_p2;
    end
end
always @ (*) begin
    if (((tmp_reg_622 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_0_address0_local = buf_0_addr_1_reg_646_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_0_address0_local = zext_ln98_1_fu_212_p1;
    end else begin
        buf_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_0_address1_local = buf_0_addr_reg_626_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_0_address1_local = zext_ln98_fu_188_p1;
    end else begin
        buf_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buf_0_ce0_local = 1'b1;
    end else begin
        buf_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buf_0_ce1_local = 1'b1;
    end else begin
        buf_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_0_we0_local = 1'b1;
    end else begin
        buf_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_0_we1_local = 1'b1;
    end else begin
        buf_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_1_address0_local = buf_1_addr_1_reg_651_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_1_address0_local = zext_ln98_1_fu_212_p1;
    end else begin
        buf_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_1_address1_local = buf_1_addr_reg_631_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_1_address1_local = zext_ln98_fu_188_p1;
    end else begin
        buf_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buf_1_ce0_local = 1'b1;
    end else begin
        buf_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buf_1_ce1_local = 1'b1;
    end else begin
        buf_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_1_we1_local = 1'b1;
    end else begin
        buf_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buf_2_address0_local = buf_2_addr_1_reg_656;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buf_2_address0_local = zext_ln98_1_fu_212_p1;
        end else begin
            buf_2_address0_local = 'bx;
        end
    end else begin
        buf_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buf_2_address1_local = buf_2_addr_reg_636;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buf_2_address1_local = zext_ln98_fu_188_p1;
        end else begin
            buf_2_address1_local = 'bx;
        end
    end else begin
        buf_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buf_2_ce0_local = 1'b1;
    end else begin
        buf_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buf_2_ce1_local = 1'b1;
    end else begin
        buf_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_622 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_2_we0_local = 1'b1;
    end else begin
        buf_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_622 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_2_we1_local = 1'b1;
    end else begin
        buf_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buf_3_address0_local = buf_3_addr_1_reg_661;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buf_3_address0_local = zext_ln98_1_fu_212_p1;
        end else begin
            buf_3_address0_local = 'bx;
        end
    end else begin
        buf_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buf_3_address1_local = buf_3_addr_reg_641;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buf_3_address1_local = zext_ln98_fu_188_p1;
        end else begin
            buf_3_address1_local = 'bx;
        end
    end else begin
        buf_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buf_3_ce0_local = 1'b1;
    end else begin
        buf_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buf_3_ce1_local = 1'b1;
    end else begin
        buf_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_622 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_3_we0_local = 1'b1;
    end else begin
        buf_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_622 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_3_we1_local = 1'b1;
    end else begin
        buf_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln100_fu_220_p2 = (ap_sig_allocacmp_i_5 + 5'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign buf_0_address0 = buf_0_address0_local;
assign buf_0_address1 = buf_0_address1_local;
assign buf_0_ce0 = buf_0_ce0_local;
assign buf_0_ce1 = buf_0_ce1_local;
assign buf_0_d0 = xor_ln104_7_reg_676;
assign buf_0_d1 = xor_ln104_1_reg_666;
assign buf_0_we0 = buf_0_we0_local;
assign buf_0_we1 = buf_0_we1_local;
assign buf_1_address0 = buf_1_address0_local;
assign buf_1_address1 = buf_1_address1_local;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_ce1 = buf_1_ce1_local;
assign buf_1_d0 = xor_ln104_9_reg_681;
assign buf_1_d1 = xor_ln104_4_reg_671;
assign buf_1_we0 = buf_1_we0_local;
assign buf_1_we1 = buf_1_we1_local;
assign buf_2_address0 = buf_2_address0_local;
assign buf_2_address1 = buf_2_address1_local;
assign buf_2_ce0 = buf_2_ce0_local;
assign buf_2_ce1 = buf_2_ce1_local;
assign buf_2_d0 = xor_ln105_7_fu_567_p2;
assign buf_2_d1 = xor_ln105_2_fu_375_p2;
assign buf_2_we0 = buf_2_we0_local;
assign buf_2_we1 = buf_2_we1_local;
assign buf_3_address0 = buf_3_address0_local;
assign buf_3_address1 = buf_3_address1_local;
assign buf_3_ce0 = buf_3_ce0_local;
assign buf_3_ce1 = buf_3_ce1_local;
assign buf_3_d0 = xor_ln105_9_fu_608_p2;
assign buf_3_d1 = xor_ln105_4_fu_416_p2;
assign buf_3_we0 = buf_3_we0_local;
assign buf_3_we1 = buf_3_we1_local;
assign e_2_fu_497_p2 = (xor_ln103_4_fu_457_p2 ^ buf_3_q0);
assign e_fu_243_p2 = (xor_ln103_1_fu_237_p2 ^ buf_3_q1);
assign lshr_ln_fu_178_p4 = {{ap_sig_allocacmp_i_5[3:2]}};
assign or_ln_fu_204_p3 = {{tmp_5_fu_196_p3}, {1'd1}};
assign select_ln55_1_fu_315_p3 = ((tmp_2_fu_295_p3[0:0] == 1'b1) ? xor_ln55_1_fu_309_p2 : shl_ln55_1_fu_303_p2);
assign select_ln55_2_fu_361_p3 = ((tmp_3_fu_341_p3[0:0] == 1'b1) ? xor_ln55_2_fu_355_p2 : shl_ln55_2_fu_349_p2);
assign select_ln55_3_fu_408_p3 = ((tmp_4_fu_388_p3[0:0] == 1'b1) ? xor_ln55_3_fu_402_p2 : shl_ln55_3_fu_396_p2);
assign select_ln55_4_fu_449_p3 = ((tmp_6_fu_429_p3[0:0] == 1'b1) ? xor_ln55_4_fu_443_p2 : shl_ln55_4_fu_437_p2);
assign select_ln55_5_fu_489_p3 = ((tmp_7_fu_469_p3[0:0] == 1'b1) ? xor_ln55_5_fu_483_p2 : shl_ln55_5_fu_477_p2);
assign select_ln55_6_fu_553_p3 = ((tmp_8_fu_533_p3[0:0] == 1'b1) ? xor_ln55_6_fu_547_p2 : shl_ln55_6_fu_541_p2);
assign select_ln55_7_fu_600_p3 = ((tmp_9_fu_580_p3[0:0] == 1'b1) ? xor_ln55_7_fu_594_p2 : shl_ln55_7_fu_588_p2);
assign select_ln55_fu_269_p3 = ((tmp_1_fu_249_p3[0:0] == 1'b1) ? xor_ln55_fu_263_p2 : shl_ln55_fu_257_p2);
assign shl_ln55_1_fu_303_p2 = xor_ln104_2_fu_289_p2 << 8'd1;
assign shl_ln55_2_fu_349_p2 = xor_ln105_fu_335_p2 << 8'd1;
assign shl_ln55_3_fu_396_p2 = xor_ln105_3_fu_382_p2 << 8'd1;
assign shl_ln55_4_fu_437_p2 = xor_ln103_3_fu_423_p2 << 8'd1;
assign shl_ln55_5_fu_477_p2 = xor_ln104_5_fu_463_p2 << 8'd1;
assign shl_ln55_6_fu_541_p2 = xor_ln105_5_fu_527_p2 << 8'd1;
assign shl_ln55_7_fu_588_p2 = xor_ln105_8_fu_574_p2 << 8'd1;
assign shl_ln55_fu_257_p2 = xor_ln103_fu_231_p2 << 8'd1;
assign tmp_1_fu_249_p3 = xor_ln103_fu_231_p2[32'd7];
assign tmp_2_fu_295_p3 = xor_ln104_2_fu_289_p2[32'd7];
assign tmp_3_fu_341_p3 = xor_ln105_fu_335_p2[32'd7];
assign tmp_4_fu_388_p3 = xor_ln105_3_fu_382_p2[32'd7];
assign tmp_5_fu_196_p3 = ap_sig_allocacmp_i_5[32'd3];
assign tmp_6_fu_429_p3 = xor_ln103_3_fu_423_p2[32'd7];
assign tmp_7_fu_469_p3 = xor_ln104_5_fu_463_p2[32'd7];
assign tmp_8_fu_533_p3 = xor_ln105_5_fu_527_p2[32'd7];
assign tmp_9_fu_580_p3 = xor_ln105_8_fu_574_p2[32'd7];
assign tmp_fu_170_p3 = ap_sig_allocacmp_i_5[32'd4];
assign xor_ln103_1_fu_237_p2 = (xor_ln103_fu_231_p2 ^ buf_2_q1);
assign xor_ln103_3_fu_423_p2 = (buf_1_q0 ^ buf_0_q0);
assign xor_ln103_4_fu_457_p2 = (xor_ln103_3_fu_423_p2 ^ buf_2_q0);
assign xor_ln103_fu_231_p2 = (buf_1_q1 ^ buf_0_q1);
assign xor_ln104_1_fu_283_p2 = (xor_ln104_fu_277_p2 ^ buf_0_q1);
assign xor_ln104_2_fu_289_p2 = (buf_2_q1 ^ buf_1_q1);
assign xor_ln104_3_fu_323_p2 = (select_ln55_1_fu_315_p3 ^ e_fu_243_p2);
assign xor_ln104_4_fu_329_p2 = (xor_ln104_3_fu_323_p2 ^ buf_1_q1);
assign xor_ln104_5_fu_463_p2 = (buf_2_q0 ^ buf_1_q0);
assign xor_ln104_6_fu_503_p2 = (select_ln55_4_fu_449_p3 ^ e_2_fu_497_p2);
assign xor_ln104_7_fu_509_p2 = (xor_ln104_6_fu_503_p2 ^ buf_0_q0);
assign xor_ln104_8_fu_515_p2 = (select_ln55_5_fu_489_p3 ^ e_2_fu_497_p2);
assign xor_ln104_9_fu_521_p2 = (xor_ln104_8_fu_515_p2 ^ buf_1_q0);
assign xor_ln104_fu_277_p2 = (select_ln55_fu_269_p3 ^ e_fu_243_p2);
assign xor_ln105_1_fu_369_p2 = (xor_ln103_fu_231_p2 ^ select_ln55_2_fu_361_p3);
assign xor_ln105_2_fu_375_p2 = (xor_ln105_1_fu_369_p2 ^ buf_3_q1);
assign xor_ln105_3_fu_382_p2 = (buf_3_q1 ^ buf_0_q1);
assign xor_ln105_4_fu_416_p2 = (xor_ln103_1_fu_237_p2 ^ select_ln55_3_fu_408_p3);
assign xor_ln105_5_fu_527_p2 = (buf_3_q0 ^ buf_2_q0);
assign xor_ln105_6_fu_561_p2 = (xor_ln103_3_fu_423_p2 ^ select_ln55_6_fu_553_p3);
assign xor_ln105_7_fu_567_p2 = (xor_ln105_6_fu_561_p2 ^ buf_3_q0);
assign xor_ln105_8_fu_574_p2 = (buf_3_q0 ^ buf_0_q0);
assign xor_ln105_9_fu_608_p2 = (xor_ln103_4_fu_457_p2 ^ select_ln55_7_fu_600_p3);
assign xor_ln105_fu_335_p2 = (buf_3_q1 ^ buf_2_q1);
assign xor_ln55_1_fu_309_p2 = (shl_ln55_1_fu_303_p2 ^ 8'd27);
assign xor_ln55_2_fu_355_p2 = (shl_ln55_2_fu_349_p2 ^ 8'd27);
assign xor_ln55_3_fu_402_p2 = (shl_ln55_3_fu_396_p2 ^ 8'd27);
assign xor_ln55_4_fu_443_p2 = (shl_ln55_4_fu_437_p2 ^ 8'd27);
assign xor_ln55_5_fu_483_p2 = (shl_ln55_5_fu_477_p2 ^ 8'd27);
assign xor_ln55_6_fu_547_p2 = (shl_ln55_6_fu_541_p2 ^ 8'd27);
assign xor_ln55_7_fu_594_p2 = (shl_ln55_7_fu_588_p2 ^ 8'd27);
assign xor_ln55_fu_263_p2 = (shl_ln55_fu_257_p2 ^ 8'd27);
assign zext_ln98_1_fu_212_p1 = or_ln_fu_204_p3;
assign zext_ln98_fu_188_p1 = lshr_ln_fu_178_p4;
always @ (posedge ap_clk) begin
    buf_0_addr_1_reg_646[0] <= 1'b1;
    buf_0_addr_1_reg_646_pp0_iter1_reg[0] <= 1'b1;
    buf_1_addr_1_reg_651[0] <= 1'b1;
    buf_1_addr_1_reg_651_pp0_iter1_reg[0] <= 1'b1;
    buf_2_addr_1_reg_656[0] <= 1'b1;
    buf_3_addr_1_reg_661[0] <= 1'b1;
end
endmodule 