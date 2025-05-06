
module aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_mix (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_q0,buf_1_address1,buf_1_ce1,buf_1_we1,buf_1_d1,buf_1_q1,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_q0,buf_0_address1,buf_0_ce1,buf_0_we1,buf_0_d1,buf_0_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
input  [7:0] buf_1_q0;
output  [2:0] buf_1_address1;
output   buf_1_ce1;
output   buf_1_we1;
output  [7:0] buf_1_d1;
input  [7:0] buf_1_q1;
output  [2:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
input  [7:0] buf_0_q0;
output  [2:0] buf_0_address1;
output   buf_0_ce1;
output   buf_0_we1;
output  [7:0] buf_0_d1;
input  [7:0] buf_0_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_376;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [0:0] tmp_fu_118_p3;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] buf_0_addr_reg_380;
reg   [2:0] buf_0_addr_reg_380_pp0_iter1_reg;
reg   [2:0] buf_1_addr_reg_386;
reg   [2:0] buf_1_addr_reg_386_pp0_iter1_reg;
reg   [2:0] buf_0_addr_1_reg_392;
reg   [2:0] buf_1_addr_1_reg_398;
wire   [7:0] xor_ln104_1_fu_229_p2;
reg   [7:0] xor_ln104_1_reg_404;
wire    ap_block_pp0_stage1_11001;
wire   [7:0] xor_ln104_4_fu_275_p2;
reg   [7:0] xor_ln104_4_reg_409;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln98_fu_136_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln102_fu_160_p1;
reg   [4:0] i_fu_56;
wire   [4:0] add_ln100_fu_166_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_5;
reg    buf_0_ce1_local;
reg   [2:0] buf_0_address1_local;
reg    buf_0_ce0_local;
reg   [2:0] buf_0_address0_local;
reg    buf_0_we1_local;
wire   [7:0] xor_ln105_2_fu_321_p2;
wire    ap_block_pp0_stage1;
reg    buf_0_we0_local;
reg    buf_1_ce1_local;
reg   [2:0] buf_1_address1_local;
reg    buf_1_ce0_local;
reg   [2:0] buf_1_address0_local;
reg    buf_1_we1_local;
wire   [7:0] xor_ln105_4_fu_362_p2;
reg    buf_1_we0_local;
wire   [2:0] lshr_ln4_fu_126_p4;
wire   [1:0] tmp_21_fu_142_p4;
wire   [2:0] or_ln_fu_152_p3;
wire   [7:0] xor_ln103_fu_177_p2;
wire   [7:0] xor_ln103_1_fu_183_p2;
wire   [7:0] shl_ln55_fu_203_p2;
wire   [0:0] tmp_19_fu_195_p3;
wire   [7:0] xor_ln55_fu_209_p2;
wire   [7:0] select_ln55_fu_215_p3;
wire   [7:0] e_fu_189_p2;
wire   [7:0] xor_ln104_fu_223_p2;
wire   [7:0] xor_ln104_2_fu_235_p2;
wire   [7:0] shl_ln55_1_fu_249_p2;
wire   [0:0] tmp_20_fu_241_p3;
wire   [7:0] xor_ln55_1_fu_255_p2;
wire   [7:0] select_ln55_1_fu_261_p3;
wire   [7:0] xor_ln104_3_fu_269_p2;
wire   [7:0] xor_ln105_fu_281_p2;
wire   [7:0] shl_ln55_2_fu_295_p2;
wire   [0:0] tmp_22_fu_287_p3;
wire   [7:0] xor_ln55_2_fu_301_p2;
wire   [7:0] select_ln55_2_fu_307_p3;
wire   [7:0] xor_ln105_1_fu_315_p2;
wire   [7:0] xor_ln105_3_fu_328_p2;
wire   [7:0] shl_ln55_3_fu_342_p2;
wire   [0:0] tmp_23_fu_334_p3;
wire   [7:0] xor_ln55_3_fu_348_p2;
wire   [7:0] select_ln55_3_fu_354_p3;
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
#0 i_fu_56 = 5'd0;
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
        if (((tmp_fu_118_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_56 <= add_ln100_fu_166_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_56 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_0_addr_1_reg_392[2 : 1] <= zext_ln102_fu_160_p1[2 : 1];
        buf_0_addr_reg_380 <= zext_ln98_fu_136_p1;
        buf_0_addr_reg_380_pp0_iter1_reg <= buf_0_addr_reg_380;
        buf_1_addr_1_reg_398[2 : 1] <= zext_ln102_fu_160_p1[2 : 1];
        buf_1_addr_reg_386 <= zext_ln98_fu_136_p1;
        buf_1_addr_reg_386_pp0_iter1_reg <= buf_1_addr_reg_386;
        tmp_reg_376 <= ap_sig_allocacmp_i_5[32'd4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        xor_ln104_1_reg_404 <= xor_ln104_1_fu_229_p2;
        xor_ln104_4_reg_409 <= xor_ln104_4_fu_275_p2;
    end
end
always @ (*) begin
    if (((tmp_reg_376 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_i_5 = i_fu_56;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_0_address0_local = buf_0_addr_reg_380_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_0_address0_local = zext_ln102_fu_160_p1;
    end else begin
        buf_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buf_0_address1_local = buf_0_addr_1_reg_392;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buf_0_address1_local = zext_ln98_fu_136_p1;
        end else begin
            buf_0_address1_local = 'bx;
        end
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((tmp_reg_376 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_0_we1_local = 1'b1;
    end else begin
        buf_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_1_address0_local = buf_1_addr_reg_386_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_1_address0_local = zext_ln102_fu_160_p1;
    end else begin
        buf_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buf_1_address1_local = buf_1_addr_1_reg_398;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buf_1_address1_local = zext_ln98_fu_136_p1;
        end else begin
            buf_1_address1_local = 'bx;
        end
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((tmp_reg_376 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buf_1_we1_local = 1'b1;
    end else begin
        buf_1_we1_local = 1'b0;
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
assign add_ln100_fu_166_p2 = (ap_sig_allocacmp_i_5 + 5'd4);
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
assign buf_0_d0 = xor_ln104_1_reg_404;
assign buf_0_d1 = xor_ln105_2_fu_321_p2;
assign buf_0_we0 = buf_0_we0_local;
assign buf_0_we1 = buf_0_we1_local;
assign buf_1_address0 = buf_1_address0_local;
assign buf_1_address1 = buf_1_address1_local;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_ce1 = buf_1_ce1_local;
assign buf_1_d0 = xor_ln104_4_reg_409;
assign buf_1_d1 = xor_ln105_4_fu_362_p2;
assign buf_1_we0 = buf_1_we0_local;
assign buf_1_we1 = buf_1_we1_local;
assign e_fu_189_p2 = (xor_ln103_1_fu_183_p2 ^ buf_1_q0);
assign lshr_ln4_fu_126_p4 = {{ap_sig_allocacmp_i_5[3:1]}};
assign or_ln_fu_152_p3 = {{tmp_21_fu_142_p4}, {1'd1}};
assign select_ln55_1_fu_261_p3 = ((tmp_20_fu_241_p3[0:0] == 1'b1) ? xor_ln55_1_fu_255_p2 : shl_ln55_1_fu_249_p2);
assign select_ln55_2_fu_307_p3 = ((tmp_22_fu_287_p3[0:0] == 1'b1) ? xor_ln55_2_fu_301_p2 : shl_ln55_2_fu_295_p2);
assign select_ln55_3_fu_354_p3 = ((tmp_23_fu_334_p3[0:0] == 1'b1) ? xor_ln55_3_fu_348_p2 : shl_ln55_3_fu_342_p2);
assign select_ln55_fu_215_p3 = ((tmp_19_fu_195_p3[0:0] == 1'b1) ? xor_ln55_fu_209_p2 : shl_ln55_fu_203_p2);
assign shl_ln55_1_fu_249_p2 = xor_ln104_2_fu_235_p2 << 8'd1;
assign shl_ln55_2_fu_295_p2 = xor_ln105_fu_281_p2 << 8'd1;
assign shl_ln55_3_fu_342_p2 = xor_ln105_3_fu_328_p2 << 8'd1;
assign shl_ln55_fu_203_p2 = xor_ln103_fu_177_p2 << 8'd1;
assign tmp_19_fu_195_p3 = xor_ln103_fu_177_p2[32'd7];
assign tmp_20_fu_241_p3 = xor_ln104_2_fu_235_p2[32'd7];
assign tmp_21_fu_142_p4 = {{ap_sig_allocacmp_i_5[3:2]}};
assign tmp_22_fu_287_p3 = xor_ln105_fu_281_p2[32'd7];
assign tmp_23_fu_334_p3 = xor_ln105_3_fu_328_p2[32'd7];
assign tmp_fu_118_p3 = ap_sig_allocacmp_i_5[32'd4];
assign xor_ln103_1_fu_183_p2 = (xor_ln103_fu_177_p2 ^ buf_0_q0);
assign xor_ln103_fu_177_p2 = (buf_1_q1 ^ buf_0_q1);
assign xor_ln104_1_fu_229_p2 = (xor_ln104_fu_223_p2 ^ buf_0_q1);
assign xor_ln104_2_fu_235_p2 = (buf_1_q1 ^ buf_0_q0);
assign xor_ln104_3_fu_269_p2 = (select_ln55_1_fu_261_p3 ^ e_fu_189_p2);
assign xor_ln104_4_fu_275_p2 = (xor_ln104_3_fu_269_p2 ^ buf_1_q1);
assign xor_ln104_fu_223_p2 = (select_ln55_fu_215_p3 ^ e_fu_189_p2);
assign xor_ln105_1_fu_315_p2 = (xor_ln103_fu_177_p2 ^ select_ln55_2_fu_307_p3);
assign xor_ln105_2_fu_321_p2 = (xor_ln105_1_fu_315_p2 ^ buf_1_q0);
assign xor_ln105_3_fu_328_p2 = (buf_1_q0 ^ buf_0_q1);
assign xor_ln105_4_fu_362_p2 = (xor_ln103_1_fu_183_p2 ^ select_ln55_3_fu_354_p3);
assign xor_ln105_fu_281_p2 = (buf_1_q0 ^ buf_0_q0);
assign xor_ln55_1_fu_255_p2 = (shl_ln55_1_fu_249_p2 ^ 8'd27);
assign xor_ln55_2_fu_301_p2 = (shl_ln55_2_fu_295_p2 ^ 8'd27);
assign xor_ln55_3_fu_348_p2 = (shl_ln55_3_fu_342_p2 ^ 8'd27);
assign xor_ln55_fu_209_p2 = (shl_ln55_fu_203_p2 ^ 8'd27);
assign zext_ln102_fu_160_p1 = or_ln_fu_152_p3;
assign zext_ln98_fu_136_p1 = lshr_ln4_fu_126_p4;
always @ (posedge ap_clk) begin
    buf_0_addr_1_reg_392[0] <= 1'b1;
    buf_1_addr_1_reg_398[0] <= 1'b1;
end
endmodule 
