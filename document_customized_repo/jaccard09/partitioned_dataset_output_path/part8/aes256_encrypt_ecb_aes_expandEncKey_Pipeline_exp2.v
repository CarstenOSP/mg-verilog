
module aes256_encrypt_ecb_aes_expandEncKey_Pipeline_exp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,or_ln8,k_idx,p_out,p_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [767:0] or_ln8;
input  [9:0] k_idx;
output  [767:0] p_out;
output   p_out_ap_vld;
reg ap_idle;
reg p_out_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_112_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_5_reg_587;
reg   [0:0] tmp_reg_592;
wire   [4:0] trunc_ln127_fu_120_p1;
reg   [4:0] trunc_ln127_reg_596;
wire   [9:0] add_ln127_1_fu_142_p2;
reg   [9:0] add_ln127_1_reg_603;
wire   [767:0] zext_ln127_1_fu_166_p1;
reg   [767:0] zext_ln127_1_reg_608;
wire   [767:0] shl_ln127_fu_170_p2;
reg   [767:0] shl_ln127_reg_614;
wire   [767:0] zext_ln127_4_fu_204_p1;
reg   [767:0] zext_ln127_4_reg_619;
wire   [767:0] shl_ln127_2_fu_208_p2;
reg   [767:0] shl_ln127_2_reg_625;
wire   [2:0] tmp_3_fu_214_p4;
reg   [2:0] tmp_3_reg_630;
wire   [767:0] zext_ln128_1_fu_242_p1;
reg   [767:0] zext_ln128_1_reg_635;
wire   [767:0] shl_ln128_fu_246_p2;
reg   [767:0] shl_ln128_reg_641;
reg   [767:0] p_load_reg_646;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [767:0] lshr_ln127_fu_258_p2;
reg   [767:0] lshr_ln127_reg_651;
wire   [767:0] lshr_ln127_1_fu_264_p2;
reg   [767:0] lshr_ln127_1_reg_656;
wire   [767:0] or_ln127_fu_300_p2;
reg   [767:0] or_ln127_reg_661;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [9:0] add_ln127_4_fu_323_p2;
reg   [9:0] add_ln127_4_reg_668;
wire   [767:0] lshr_ln127_2_fu_331_p2;
reg   [767:0] lshr_ln127_2_reg_673;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [767:0] lshr_ln127_3_fu_336_p2;
reg   [767:0] lshr_ln127_3_reg_678;
wire   [767:0] or_ln127_1_fu_371_p2;
reg   [767:0] or_ln127_1_reg_683;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [9:0] add_ln128_1_fu_394_p2;
reg   [9:0] add_ln128_1_reg_690;
wire   [767:0] lshr_ln128_fu_402_p2;
reg   [767:0] lshr_ln128_reg_695;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [767:0] lshr_ln128_1_fu_407_p2;
reg   [767:0] lshr_ln128_1_reg_700;
wire   [767:0] or_ln128_fu_442_p2;
reg   [767:0] or_ln128_reg_705;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [9:0] add_ln128_4_fu_465_p2;
reg   [9:0] add_ln128_4_reg_712;
wire   [9:0] add_ln128_5_fu_481_p2;
reg   [9:0] add_ln128_5_reg_717;
wire   [767:0] lshr_ln128_2_fu_489_p2;
reg   [767:0] lshr_ln128_2_reg_722;
wire    ap_block_pp0_stage7_11001;
wire   [767:0] zext_ln128_4_fu_494_p1;
reg   [767:0] zext_ln128_4_reg_727;
wire   [767:0] lshr_ln128_3_fu_497_p2;
reg   [767:0] lshr_ln128_3_reg_733;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [5:0] i_fu_72;
wire   [5:0] add_ln127_6_fu_502_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_i_5;
wire    ap_block_pp0_stage0;
reg   [767:0] empty_fu_76;
wire   [767:0] or_ln128_1_fu_549_p2;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage0_01001;
wire   [4:0] add_ln127_fu_124_p2;
wire   [7:0] shl_ln127_4_fu_130_p3;
wire   [9:0] zext_ln127_6_fu_138_p1;
wire   [7:0] shl_ln127_5_fu_148_p3;
wire   [9:0] zext_ln127_7_fu_156_p1;
wire   [9:0] add_ln127_2_fu_160_p2;
wire   [3:0] tmp_s_fu_176_p4;
wire   [7:0] shl_ln127_7_fu_186_p3;
wire   [9:0] zext_ln127_9_fu_194_p1;
wire   [9:0] add_ln127_5_fu_198_p2;
wire   [7:0] shl_ln128_5_fu_224_p3;
wire   [9:0] zext_ln128_7_fu_232_p1;
wire   [9:0] add_ln128_2_fu_236_p2;
wire   [767:0] zext_ln127_fu_255_p1;
wire    ap_block_pp0_stage2;
wire   [7:0] trunc_ln127_1_fu_269_p1;
wire   [7:0] trunc_ln127_2_fu_272_p1;
wire   [7:0] xor_ln127_fu_275_p2;
wire   [767:0] zext_ln127_2_fu_281_p1;
wire   [767:0] xor_ln127_1_fu_290_p2;
wire   [767:0] shl_ln127_1_fu_285_p2;
wire   [767:0] and_ln127_fu_295_p2;
wire   [4:0] add_ln127_3_fu_306_p2;
wire   [7:0] shl_ln127_6_fu_311_p3;
wire   [9:0] zext_ln127_8_fu_319_p1;
wire    ap_block_pp0_stage3;
wire   [767:0] zext_ln127_3_fu_328_p1;
wire    ap_block_pp0_stage4;
wire   [7:0] trunc_ln127_4_fu_343_p1;
wire   [7:0] trunc_ln127_3_fu_340_p1;
wire   [7:0] xor_ln127_2_fu_346_p2;
wire   [767:0] zext_ln127_5_fu_352_p1;
wire   [767:0] xor_ln127_3_fu_361_p2;
wire   [767:0] shl_ln127_3_fu_356_p2;
wire   [767:0] and_ln127_1_fu_366_p2;
wire   [4:0] add_ln128_fu_377_p2;
wire   [7:0] shl_ln128_4_fu_382_p3;
wire   [9:0] zext_ln128_6_fu_390_p1;
wire    ap_block_pp0_stage5;
wire   [767:0] zext_ln128_fu_399_p1;
wire    ap_block_pp0_stage6;
wire   [7:0] trunc_ln128_1_fu_414_p1;
wire   [7:0] trunc_ln128_fu_411_p1;
wire   [7:0] xor_ln128_fu_417_p2;
wire   [767:0] zext_ln128_2_fu_423_p1;
wire   [767:0] xor_ln128_1_fu_432_p2;
wire   [767:0] shl_ln128_1_fu_427_p2;
wire   [767:0] and_ln128_fu_437_p2;
wire   [4:0] add_ln128_3_fu_448_p2;
wire   [7:0] shl_ln128_6_fu_453_p3;
wire   [9:0] zext_ln128_8_fu_461_p1;
wire   [7:0] shl_ln128_7_fu_470_p3;
wire   [9:0] zext_ln128_9_fu_477_p1;
wire    ap_block_pp0_stage7;
wire   [767:0] zext_ln128_3_fu_486_p1;
wire   [7:0] trunc_ln128_3_fu_515_p1;
wire   [7:0] trunc_ln128_2_fu_512_p1;
wire   [7:0] xor_ln128_2_fu_518_p2;
wire   [767:0] zext_ln128_5_fu_529_p1;
wire   [767:0] shl_ln128_2_fu_524_p2;
wire   [767:0] xor_ln128_3_fu_538_p2;
wire   [767:0] shl_ln128_3_fu_533_p2;
wire   [767:0] and_ln128_1_fu_544_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_72 = 6'd0;
#0 empty_fu_76 = 768'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            empty_fu_76 <= or_ln8;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_76 <= or_ln128_1_fu_549_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_72 <= 6'd20;
    end else if (((tmp_reg_592 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        i_fu_72 <= add_ln127_6_fu_502_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln127_1_reg_603 <= add_ln127_1_fu_142_p2;
        i_5_reg_587 <= ap_sig_allocacmp_i_5;
        shl_ln127_2_reg_625 <= shl_ln127_2_fu_208_p2;
        shl_ln127_reg_614 <= shl_ln127_fu_170_p2;
        shl_ln128_reg_641 <= shl_ln128_fu_246_p2;
        tmp_3_reg_630 <= {{ap_sig_allocacmp_i_5[4:2]}};
        tmp_reg_592 <= ap_sig_allocacmp_i_5[32'd5];
        trunc_ln127_reg_596 <= trunc_ln127_fu_120_p1;
        zext_ln127_1_reg_608[9 : 0] <= zext_ln127_1_fu_166_p1[9 : 0];
        zext_ln127_4_reg_619[9 : 0] <= zext_ln127_4_fu_204_p1[9 : 0];
        zext_ln128_1_reg_635[9 : 0] <= zext_ln128_1_fu_242_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln127_4_reg_668 <= add_ln127_4_fu_323_p2;
        or_ln127_reg_661 <= or_ln127_fu_300_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln128_1_reg_690 <= add_ln128_1_fu_394_p2;
        or_ln127_1_reg_683 <= or_ln127_1_fu_371_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln128_4_reg_712 <= add_ln128_4_fu_465_p2;
        add_ln128_5_reg_717 <= add_ln128_5_fu_481_p2;
        or_ln128_reg_705 <= or_ln128_fu_442_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln127_1_reg_656 <= lshr_ln127_1_fu_264_p2;
        lshr_ln127_reg_651 <= lshr_ln127_fu_258_p2;
        p_load_reg_646 <= empty_fu_76;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln127_2_reg_673 <= lshr_ln127_2_fu_331_p2;
        lshr_ln127_3_reg_678 <= lshr_ln127_3_fu_336_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln128_1_reg_700 <= lshr_ln128_1_fu_407_p2;
        lshr_ln128_reg_695 <= lshr_ln128_fu_402_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        lshr_ln128_2_reg_722 <= lshr_ln128_2_fu_489_p2;
        lshr_ln128_3_reg_733 <= lshr_ln128_3_fu_497_p2;
        zext_ln128_4_reg_727[9 : 0] <= zext_ln128_4_fu_494_p1[9 : 0];
    end
end
always @ (*) begin
    if (((tmp_fu_112_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_5 = 6'd20;
    end else begin
        ap_sig_allocacmp_i_5 = i_fu_72;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_fu_112_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_out_ap_vld = 1'b1;
    end else begin
        p_out_ap_vld = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln127_1_fu_142_p2 = (zext_ln127_6_fu_138_p1 + k_idx);
assign add_ln127_2_fu_160_p2 = (zext_ln127_7_fu_156_p1 + k_idx);
assign add_ln127_3_fu_306_p2 = ($signed(trunc_ln127_reg_596) + $signed(5'd29));
assign add_ln127_4_fu_323_p2 = (zext_ln127_8_fu_319_p1 + k_idx);
assign add_ln127_5_fu_198_p2 = (zext_ln127_9_fu_194_p1 + k_idx);
assign add_ln127_6_fu_502_p2 = (i_5_reg_587 + 6'd4);
assign add_ln127_fu_124_p2 = ($signed(trunc_ln127_fu_120_p1) + $signed(5'd28));
assign add_ln128_1_fu_394_p2 = (zext_ln128_6_fu_390_p1 + k_idx);
assign add_ln128_2_fu_236_p2 = (zext_ln128_7_fu_232_p1 + k_idx);
assign add_ln128_3_fu_448_p2 = ($signed(trunc_ln127_reg_596) + $signed(5'd31));
assign add_ln128_4_fu_465_p2 = (zext_ln128_8_fu_461_p1 + k_idx);
assign add_ln128_5_fu_481_p2 = (zext_ln128_9_fu_477_p1 + k_idx);
assign add_ln128_fu_377_p2 = ($signed(trunc_ln127_reg_596) + $signed(5'd30));
assign and_ln127_1_fu_366_p2 = (xor_ln127_3_fu_361_p2 & or_ln127_reg_661);
assign and_ln127_fu_295_p2 = (xor_ln127_1_fu_290_p2 & p_load_reg_646);
assign and_ln128_1_fu_544_p2 = (xor_ln128_3_fu_538_p2 & or_ln128_reg_705);
assign and_ln128_fu_437_p2 = (xor_ln128_1_fu_432_p2 & or_ln127_1_reg_683);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln127_1_fu_264_p2 = empty_fu_76 >> zext_ln127_1_reg_608;
assign lshr_ln127_2_fu_331_p2 = or_ln127_reg_661 >> zext_ln127_3_fu_328_p1;
assign lshr_ln127_3_fu_336_p2 = or_ln127_reg_661 >> zext_ln127_4_reg_619;
assign lshr_ln127_fu_258_p2 = empty_fu_76 >> zext_ln127_fu_255_p1;
assign lshr_ln128_1_fu_407_p2 = or_ln127_1_reg_683 >> zext_ln128_1_reg_635;
assign lshr_ln128_2_fu_489_p2 = or_ln128_reg_705 >> zext_ln128_3_fu_486_p1;
assign lshr_ln128_3_fu_497_p2 = or_ln128_reg_705 >> zext_ln128_4_fu_494_p1;
assign lshr_ln128_fu_402_p2 = or_ln127_1_reg_683 >> zext_ln128_fu_399_p1;
assign or_ln127_1_fu_371_p2 = (shl_ln127_3_fu_356_p2 | and_ln127_1_fu_366_p2);
assign or_ln127_fu_300_p2 = (shl_ln127_1_fu_285_p2 | and_ln127_fu_295_p2);
assign or_ln128_1_fu_549_p2 = (shl_ln128_3_fu_533_p2 | and_ln128_1_fu_544_p2);
assign or_ln128_fu_442_p2 = (shl_ln128_1_fu_427_p2 | and_ln128_fu_437_p2);
assign p_out = empty_fu_76;
assign shl_ln127_1_fu_285_p2 = zext_ln127_2_fu_281_p1 << zext_ln127_1_reg_608;
assign shl_ln127_2_fu_208_p2 = 768'd255 << zext_ln127_4_fu_204_p1;
assign shl_ln127_3_fu_356_p2 = zext_ln127_5_fu_352_p1 << zext_ln127_4_reg_619;
assign shl_ln127_4_fu_130_p3 = {{add_ln127_fu_124_p2}, {3'd0}};
assign shl_ln127_5_fu_148_p3 = {{trunc_ln127_fu_120_p1}, {3'd0}};
assign shl_ln127_6_fu_311_p3 = {{add_ln127_3_fu_306_p2}, {3'd0}};
assign shl_ln127_7_fu_186_p3 = {{tmp_s_fu_176_p4}, {4'd8}};
assign shl_ln127_fu_170_p2 = 768'd255 << zext_ln127_1_fu_166_p1;
assign shl_ln128_1_fu_427_p2 = zext_ln128_2_fu_423_p1 << zext_ln128_1_reg_635;
assign shl_ln128_2_fu_524_p2 = 768'd255 << zext_ln128_4_reg_727;
assign shl_ln128_3_fu_533_p2 = zext_ln128_5_fu_529_p1 << zext_ln128_4_reg_727;
assign shl_ln128_4_fu_382_p3 = {{add_ln128_fu_377_p2}, {3'd0}};
assign shl_ln128_5_fu_224_p3 = {{tmp_3_fu_214_p4}, {5'd16}};
assign shl_ln128_6_fu_453_p3 = {{add_ln128_3_fu_448_p2}, {3'd0}};
assign shl_ln128_7_fu_470_p3 = {{tmp_3_reg_630}, {5'd24}};
assign shl_ln128_fu_246_p2 = 768'd255 << zext_ln128_1_fu_242_p1;
assign tmp_3_fu_214_p4 = {{ap_sig_allocacmp_i_5[4:2]}};
assign tmp_fu_112_p3 = ap_sig_allocacmp_i_5[32'd5];
assign tmp_s_fu_176_p4 = {{ap_sig_allocacmp_i_5[4:1]}};
assign trunc_ln127_1_fu_269_p1 = lshr_ln127_reg_651[7:0];
assign trunc_ln127_2_fu_272_p1 = lshr_ln127_1_reg_656[7:0];
assign trunc_ln127_3_fu_340_p1 = lshr_ln127_2_reg_673[7:0];
assign trunc_ln127_4_fu_343_p1 = lshr_ln127_3_reg_678[7:0];
assign trunc_ln127_fu_120_p1 = ap_sig_allocacmp_i_5[4:0];
assign trunc_ln128_1_fu_414_p1 = lshr_ln128_1_reg_700[7:0];
assign trunc_ln128_2_fu_512_p1 = lshr_ln128_2_reg_722[7:0];
assign trunc_ln128_3_fu_515_p1 = lshr_ln128_3_reg_733[7:0];
assign trunc_ln128_fu_411_p1 = lshr_ln128_reg_695[7:0];
assign xor_ln127_1_fu_290_p2 = (shl_ln127_reg_614 ^ 768'd1552518092300708935148979488462502555256886017116696611139052038026050952686376886330878408828646477950487730697131073206171580044114814391444287275041181139204454976020849905550265285631598444825262999193716468750892846853816057855);
assign xor_ln127_2_fu_346_p2 = (trunc_ln127_4_fu_343_p1 ^ trunc_ln127_3_fu_340_p1);
assign xor_ln127_3_fu_361_p2 = (shl_ln127_2_reg_625 ^ 768'd1552518092300708935148979488462502555256886017116696611139052038026050952686376886330878408828646477950487730697131073206171580044114814391444287275041181139204454976020849905550265285631598444825262999193716468750892846853816057855);
assign xor_ln127_fu_275_p2 = (trunc_ln127_2_fu_272_p1 ^ trunc_ln127_1_fu_269_p1);
assign xor_ln128_1_fu_432_p2 = (shl_ln128_reg_641 ^ 768'd1552518092300708935148979488462502555256886017116696611139052038026050952686376886330878408828646477950487730697131073206171580044114814391444287275041181139204454976020849905550265285631598444825262999193716468750892846853816057855);
assign xor_ln128_2_fu_518_p2 = (trunc_ln128_3_fu_515_p1 ^ trunc_ln128_2_fu_512_p1);
assign xor_ln128_3_fu_538_p2 = (shl_ln128_2_fu_524_p2 ^ 768'd1552518092300708935148979488462502555256886017116696611139052038026050952686376886330878408828646477950487730697131073206171580044114814391444287275041181139204454976020849905550265285631598444825262999193716468750892846853816057855);
assign xor_ln128_fu_417_p2 = (trunc_ln128_fu_411_p1 ^ trunc_ln128_1_fu_414_p1);
assign zext_ln127_1_fu_166_p1 = add_ln127_2_fu_160_p2;
assign zext_ln127_2_fu_281_p1 = xor_ln127_fu_275_p2;
assign zext_ln127_3_fu_328_p1 = add_ln127_4_reg_668;
assign zext_ln127_4_fu_204_p1 = add_ln127_5_fu_198_p2;
assign zext_ln127_5_fu_352_p1 = xor_ln127_2_fu_346_p2;
assign zext_ln127_6_fu_138_p1 = shl_ln127_4_fu_130_p3;
assign zext_ln127_7_fu_156_p1 = shl_ln127_5_fu_148_p3;
assign zext_ln127_8_fu_319_p1 = shl_ln127_6_fu_311_p3;
assign zext_ln127_9_fu_194_p1 = shl_ln127_7_fu_186_p3;
assign zext_ln127_fu_255_p1 = add_ln127_1_reg_603;
assign zext_ln128_1_fu_242_p1 = add_ln128_2_fu_236_p2;
assign zext_ln128_2_fu_423_p1 = xor_ln128_fu_417_p2;
assign zext_ln128_3_fu_486_p1 = add_ln128_4_reg_712;
assign zext_ln128_4_fu_494_p1 = add_ln128_5_reg_717;
assign zext_ln128_5_fu_529_p1 = xor_ln128_2_fu_518_p2;
assign zext_ln128_6_fu_390_p1 = shl_ln128_4_fu_382_p3;
assign zext_ln128_7_fu_232_p1 = shl_ln128_5_fu_224_p3;
assign zext_ln128_8_fu_461_p1 = shl_ln128_6_fu_453_p3;
assign zext_ln128_9_fu_477_p1 = shl_ln128_7_fu_470_p3;
assign zext_ln128_fu_399_p1 = add_ln128_1_reg_690;
always @ (posedge ap_clk) begin
    zext_ln127_1_reg_608[767:10] <= 758'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    zext_ln127_4_reg_619[767:10] <= 758'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    zext_ln128_1_reg_635[767:10] <= 758'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    zext_ln128_4_reg_727[767:10] <= 758'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
