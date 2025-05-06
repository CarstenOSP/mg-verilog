
module aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_cpkey (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ctx5,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_q0,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_q0,p_partset410_out,p_partset410_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [767:0] ctx5;
output  [2:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
input  [7:0] buf_1_q0;
output  [2:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
input  [7:0] buf_0_q0;
output  [767:0] p_partset410_out;
output   p_partset410_out_ap_vld;
reg ap_idle;
reg p_partset410_out_ap_vld;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln79_fu_148_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [4:0] i_6_reg_456;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln79_reg_462;
wire   [4:0] add_ln79_fu_154_p2;
reg   [4:0] add_ln79_reg_466;
wire   [6:0] shl_ln1_fu_180_p3;
reg   [6:0] shl_ln1_reg_471;
wire   [127:0] zext_ln79_3_fu_188_p1;
reg   [127:0] zext_ln79_3_reg_476;
wire   [127:0] shl_ln79_fu_192_p2;
reg   [127:0] shl_ln79_reg_481;
reg   [2:0] buf_0_addr_reg_486;
reg   [2:0] buf_1_addr_reg_491;
reg   [767:0] p_partset410_load_reg_496;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] trunc_ln79_fu_201_p1;
reg   [0:0] trunc_ln79_reg_502;
wire   [7:0] trunc_ln79_2_fu_225_p1;
reg   [7:0] trunc_ln79_2_reg_506;
wire   [7:0] select_ln79_fu_229_p3;
reg   [7:0] select_ln79_reg_512;
wire   [127:0] or_ln79_2_fu_276_p2;
reg   [127:0] or_ln79_2_reg_517;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [639:0] tmp_s_reg_523;
reg   [127:0] trunc_ln79_6_reg_528;
wire   [767:0] or_ln_fu_308_p3;
reg   [767:0] or_ln_reg_533;
wire    ap_block_pp0_stage3_11001;
wire   [4:0] add_ln79_1_fu_314_p2;
reg   [4:0] add_ln79_1_reg_538;
wire   [7:0] trunc_ln79_5_fu_339_p1;
reg   [7:0] trunc_ln79_5_reg_543;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln79_fu_170_p1;
wire    ap_block_pp0_stage0;
reg   [4:0] i_fu_88;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_6;
reg   [767:0] p_partset410_fu_92;
wire   [767:0] or_ln79_1_fu_424_p3;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage0_01001;
reg    buf_0_ce0_local;
reg   [2:0] buf_0_address0_local;
reg    buf_0_we0_local;
wire   [7:0] xor_ln79_1_fu_302_p2;
wire    ap_block_pp0_stage2;
reg    buf_1_ce0_local;
reg   [2:0] buf_1_address0_local;
reg    buf_1_we0_local;
wire   [2:0] lshr_ln2_fu_160_p4;
wire   [3:0] trunc_ln79_1_fu_176_p1;
wire   [7:0] zext_ln79_1_fu_204_p1;
wire   [8:0] zext_ln79_cast_fu_207_p3;
wire   [767:0] zext_ln79_2_fu_215_p1;
wire   [767:0] lshr_ln79_fu_219_p2;
wire   [127:0] zext_ln79_5_fu_240_p1;
wire   [128:0] zext_ln79_4_fu_237_p1;
wire  signed [128:0] xor_ln79_fu_248_p2;
wire  signed [767:0] sext_ln79_fu_254_p1;
wire   [127:0] trunc_ln79_4_fu_262_p1;
wire   [127:0] trunc_ln79_3_fu_258_p1;
wire   [127:0] and_ln79_1_fu_270_p2;
wire   [127:0] shl_ln79_1_fu_243_p2;
wire   [767:0] and_ln79_fu_265_p2;
wire    ap_block_pp0_stage3;
wire   [8:0] zext_ln79_3_cast_fu_319_p4;
wire   [767:0] zext_ln79_6_fu_329_p1;
wire   [767:0] lshr_ln79_1_fu_333_p2;
wire   [7:0] shl_ln79_3_fu_347_p3;
wire   [255:0] zext_ln79_7_fu_354_p1;
wire   [255:0] shl_ln79_2_fu_358_p2;
wire   [255:0] zext_ln79_9_fu_368_p1;
wire   [256:0] zext_ln79_8_fu_364_p1;
wire  signed [256:0] xor_ln79_2_fu_377_p2;
wire  signed [767:0] sext_ln79_1_fu_383_p1;
wire   [255:0] tmp_98_fu_391_p3;
wire   [255:0] trunc_ln79_7_fu_387_p1;
wire   [255:0] and_ln79_3_fu_402_p2;
wire   [255:0] shl_ln79_4_fu_371_p2;
wire   [767:0] and_ln79_2_fu_397_p2;
wire   [511:0] tmp_99_fu_414_p4;
wire   [255:0] or_ln79_fu_408_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_88 = 5'd0;
#0 p_partset410_fu_92 = 768'd0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_88 <= 5'd16;
    end else if (((icmp_ln79_reg_462 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        i_fu_88 <= add_ln79_reg_466;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            p_partset410_fu_92 <= ctx5;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            p_partset410_fu_92 <= or_ln79_1_fu_424_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln79_1_reg_538 <= add_ln79_1_fu_314_p2;
        or_ln_reg_533 <= or_ln_fu_308_p3;
        trunc_ln79_5_reg_543 <= trunc_ln79_5_fu_339_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln79_reg_466 <= add_ln79_fu_154_p2;
        buf_0_addr_reg_486 <= zext_ln79_fu_170_p1;
        buf_1_addr_reg_491 <= zext_ln79_fu_170_p1;
        i_6_reg_456 <= ap_sig_allocacmp_i_6;
        icmp_ln79_reg_462 <= icmp_ln79_fu_148_p2;
        shl_ln1_reg_471[6 : 3] <= shl_ln1_fu_180_p3[6 : 3];
        shl_ln79_reg_481 <= shl_ln79_fu_192_p2;
        zext_ln79_3_reg_476[6 : 3] <= zext_ln79_3_fu_188_p1[6 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        or_ln79_2_reg_517 <= or_ln79_2_fu_276_p2;
        tmp_s_reg_523 <= {{and_ln79_fu_265_p2[767:128]}};
        trunc_ln79_6_reg_528 <= {{and_ln79_fu_265_p2[255:128]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_partset410_load_reg_496 <= p_partset410_fu_92;
        select_ln79_reg_512 <= select_ln79_fu_229_p3;
        trunc_ln79_2_reg_506 <= trunc_ln79_2_fu_225_p1;
        trunc_ln79_reg_502 <= trunc_ln79_fu_201_p1;
    end
end
always @ (*) begin
    if (((icmp_ln79_fu_148_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_6 = 5'd16;
    end else begin
        ap_sig_allocacmp_i_6 = i_fu_88;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            buf_0_address0_local = buf_0_addr_reg_486;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buf_0_address0_local = zext_ln79_fu_170_p1;
        end else begin
            buf_0_address0_local = 'bx;
        end
    end else begin
        buf_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buf_0_ce0_local = 1'b1;
    end else begin
        buf_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln79_reg_462 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln79_reg_502 == 1'd1))) begin
        buf_0_we0_local = 1'b1;
    end else begin
        buf_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            buf_1_address0_local = buf_1_addr_reg_491;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buf_1_address0_local = zext_ln79_fu_170_p1;
        end else begin
            buf_1_address0_local = 'bx;
        end
    end else begin
        buf_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buf_1_ce0_local = 1'b1;
    end else begin
        buf_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln79_reg_462 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln79_reg_502 == 1'd0))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln79_fu_148_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_partset410_out_ap_vld = 1'b1;
    end else begin
        p_partset410_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln79_1_fu_314_p2 = (i_6_reg_456 + 5'd15);
assign add_ln79_fu_154_p2 = ($signed(ap_sig_allocacmp_i_6) + $signed(5'd31));
assign and_ln79_1_fu_270_p2 = (trunc_ln79_4_fu_262_p1 & trunc_ln79_3_fu_258_p1);
assign and_ln79_2_fu_397_p2 = (sext_ln79_1_fu_383_p1 & or_ln_reg_533);
assign and_ln79_3_fu_402_p2 = (trunc_ln79_7_fu_387_p1 & tmp_98_fu_391_p3);
assign and_ln79_fu_265_p2 = (sext_ln79_fu_254_p1 & p_partset410_load_reg_496);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buf_0_address0 = buf_0_address0_local;
assign buf_0_ce0 = buf_0_ce0_local;
assign buf_0_d0 = xor_ln79_1_fu_302_p2;
assign buf_0_we0 = buf_0_we0_local;
assign buf_1_address0 = buf_1_address0_local;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_d0 = xor_ln79_1_fu_302_p2;
assign buf_1_we0 = buf_1_we0_local;
assign icmp_ln79_fu_148_p2 = ((ap_sig_allocacmp_i_6 == 5'd0) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_160_p4 = {{add_ln79_fu_154_p2[3:1]}};
assign lshr_ln79_1_fu_333_p2 = or_ln_fu_308_p3 >> zext_ln79_6_fu_329_p1;
assign lshr_ln79_fu_219_p2 = p_partset410_fu_92 >> zext_ln79_2_fu_215_p1;
assign or_ln79_1_fu_424_p3 = {{tmp_99_fu_414_p4}, {or_ln79_fu_408_p2}};
assign or_ln79_2_fu_276_p2 = (shl_ln79_1_fu_243_p2 | and_ln79_1_fu_270_p2);
assign or_ln79_fu_408_p2 = (shl_ln79_4_fu_371_p2 | and_ln79_3_fu_402_p2);
assign or_ln_fu_308_p3 = {{tmp_s_reg_523}, {or_ln79_2_reg_517}};
assign p_partset410_out = p_partset410_fu_92;
assign select_ln79_fu_229_p3 = ((trunc_ln79_fu_201_p1[0:0] == 1'b1) ? buf_0_q0 : buf_1_q0);
assign sext_ln79_1_fu_383_p1 = xor_ln79_2_fu_377_p2;
assign sext_ln79_fu_254_p1 = xor_ln79_fu_248_p2;
assign shl_ln1_fu_180_p3 = {{trunc_ln79_1_fu_176_p1}, {3'd0}};
assign shl_ln79_1_fu_243_p2 = zext_ln79_5_fu_240_p1 << zext_ln79_3_reg_476;
assign shl_ln79_2_fu_358_p2 = 256'd255 << zext_ln79_7_fu_354_p1;
assign shl_ln79_3_fu_347_p3 = {{add_ln79_1_reg_538}, {3'd0}};
assign shl_ln79_4_fu_371_p2 = zext_ln79_9_fu_368_p1 << zext_ln79_7_fu_354_p1;
assign shl_ln79_fu_192_p2 = 128'd255 << zext_ln79_3_fu_188_p1;
assign tmp_98_fu_391_p3 = {{trunc_ln79_6_reg_528}, {or_ln79_2_reg_517}};
assign tmp_99_fu_414_p4 = {{and_ln79_2_fu_397_p2[767:256]}};
assign trunc_ln79_1_fu_176_p1 = add_ln79_fu_154_p2[3:0];
assign trunc_ln79_2_fu_225_p1 = lshr_ln79_fu_219_p2[7:0];
assign trunc_ln79_3_fu_258_p1 = xor_ln79_fu_248_p2[127:0];
assign trunc_ln79_4_fu_262_p1 = p_partset410_load_reg_496[127:0];
assign trunc_ln79_5_fu_339_p1 = lshr_ln79_1_fu_333_p2[7:0];
assign trunc_ln79_7_fu_387_p1 = xor_ln79_2_fu_377_p2[255:0];
assign trunc_ln79_fu_201_p1 = i_6_reg_456[0:0];
assign xor_ln79_1_fu_302_p2 = (trunc_ln79_2_reg_506 ^ select_ln79_reg_512);
assign xor_ln79_2_fu_377_p2 = (zext_ln79_8_fu_364_p1 ^ 257'd231584178474632390847141970017375815706539969331281128078915168015826259279871);
assign xor_ln79_fu_248_p2 = (zext_ln79_4_fu_237_p1 ^ 129'd680564733841876926926749214863536422911);
assign zext_ln79_1_fu_204_p1 = shl_ln1_reg_471;
assign zext_ln79_2_fu_215_p1 = zext_ln79_cast_fu_207_p3;
assign zext_ln79_3_cast_fu_319_p4 = {{{{1'd1}, {add_ln79_1_fu_314_p2}}}, {3'd0}};
assign zext_ln79_3_fu_188_p1 = shl_ln1_fu_180_p3;
assign zext_ln79_4_fu_237_p1 = shl_ln79_reg_481;
assign zext_ln79_5_fu_240_p1 = trunc_ln79_2_reg_506;
assign zext_ln79_6_fu_329_p1 = zext_ln79_3_cast_fu_319_p4;
assign zext_ln79_7_fu_354_p1 = shl_ln79_3_fu_347_p3;
assign zext_ln79_8_fu_364_p1 = shl_ln79_2_fu_358_p2;
assign zext_ln79_9_fu_368_p1 = trunc_ln79_5_reg_543;
assign zext_ln79_cast_fu_207_p3 = {{1'd1}, {zext_ln79_1_fu_204_p1}};
assign zext_ln79_fu_170_p1 = lshr_ln2_fu_160_p4;
always @ (posedge ap_clk) begin
    shl_ln1_reg_471[2:0] <= 3'b000;
    zext_ln79_3_reg_476[2:0] <= 3'b000;
    zext_ln79_3_reg_476[127:7] <= 121'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
