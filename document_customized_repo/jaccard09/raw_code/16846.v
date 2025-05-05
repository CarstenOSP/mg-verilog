module aes256_encrypt_ecb_aes_expandEncKey_Pipeline_exp1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,or_ln3,k_idx,p_out,p_out_ap_vld); 
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
input  [767:0] or_ln3;
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
wire   [0:0] tmp_fu_118_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] i_6_reg_754;
reg   [0:0] tmp_reg_759;
wire   [3:0] trunc_ln120_fu_126_p1;
reg   [3:0] trunc_ln120_reg_763;
wire   [9:0] add_ln120_1_fu_148_p2;
reg   [9:0] add_ln120_1_reg_770;
wire   [9:0] add_ln120_2_fu_166_p2;
reg   [9:0] add_ln120_2_reg_775;
wire   [639:0] zext_ln120_6_fu_172_p1;
reg   [639:0] zext_ln120_6_reg_780;
wire   [639:0] shl_ln120_fu_176_p2;
reg   [639:0] shl_ln120_reg_785;
wire   [9:0] add_ln120_5_fu_204_p2;
reg   [9:0] add_ln120_5_reg_790;
wire   [639:0] zext_ln120_11_fu_210_p1;
reg   [639:0] zext_ln120_11_reg_795;
wire   [639:0] shl_ln120_2_fu_214_p2;
reg   [639:0] shl_ln120_2_reg_800;
wire   [1:0] tmp_6_fu_220_p4;
reg   [1:0] tmp_6_reg_805;
wire   [9:0] add_ln121_2_fu_242_p2;
reg   [9:0] add_ln121_2_reg_810;
wire   [639:0] zext_ln121_6_fu_248_p1;
reg   [639:0] zext_ln121_6_reg_815;
wire   [639:0] shl_ln121_fu_252_p2;
reg   [639:0] shl_ln121_reg_820;
reg   [767:0] p_load_reg_825;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [767:0] lshr_ln120_fu_264_p2;
reg   [767:0] lshr_ln120_reg_831;
wire   [767:0] lshr_ln120_1_fu_273_p2;
reg   [767:0] lshr_ln120_1_reg_836;
wire   [639:0] or_ln120_1_fu_331_p2;
reg   [639:0] or_ln120_1_reg_841;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [127:0] tmp_s_reg_847;
wire   [9:0] add_ln120_4_fu_364_p2;
reg   [9:0] add_ln120_4_reg_852;
wire   [767:0] or_ln4_fu_369_p3;
reg   [767:0] or_ln4_reg_857;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [767:0] lshr_ln120_2_fu_378_p2;
reg   [767:0] lshr_ln120_2_reg_862;
wire   [767:0] lshr_ln120_3_fu_387_p2;
reg   [767:0] lshr_ln120_3_reg_867;
wire   [639:0] or_ln120_fu_441_p2;
reg   [639:0] or_ln120_reg_872;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [127:0] tmp_5_reg_878;
wire   [9:0] add_ln121_1_fu_474_p2;
reg   [9:0] add_ln121_1_reg_883;
wire   [767:0] or_ln120_2_fu_479_p3;
reg   [767:0] or_ln120_2_reg_888;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [767:0] lshr_ln121_fu_488_p2;
reg   [767:0] lshr_ln121_reg_893;
wire   [767:0] lshr_ln121_1_fu_497_p2;
reg   [767:0] lshr_ln121_1_reg_898;
wire   [639:0] or_ln121_fu_551_p2;
reg   [639:0] or_ln121_reg_903;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [127:0] tmp_7_reg_909;
wire   [9:0] add_ln121_4_fu_584_p2;
reg   [9:0] add_ln121_4_reg_914;
wire   [9:0] add_ln121_5_fu_600_p2;
reg   [9:0] add_ln121_5_reg_919;
wire   [767:0] or_ln121_1_fu_605_p3;
reg   [767:0] or_ln121_1_reg_925;
wire    ap_block_pp0_stage7_11001;
wire   [767:0] lshr_ln121_2_fu_614_p2;
reg   [767:0] lshr_ln121_2_reg_930;
wire   [767:0] lshr_ln121_3_fu_623_p2;
reg   [767:0] lshr_ln121_3_reg_935;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [4:0] i_fu_78;
wire   [4:0] add_ln120_6_fu_629_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_6;
wire    ap_block_pp0_stage0;
reg   [767:0] empty_fu_82;
wire   [767:0] or_ln121_3_fu_714_p3;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage0_01001;
wire   [3:0] add_ln120_fu_130_p2;
wire   [6:0] shl_ln120_4_fu_136_p3;
wire   [9:0] zext_ln120_2_fu_144_p1;
wire   [6:0] shl_ln120_5_fu_154_p3;
wire   [9:0] zext_ln120_5_fu_162_p1;
wire   [2:0] tmp_4_fu_182_p4;
wire   [6:0] shl_ln120_7_fu_192_p3;
wire   [9:0] zext_ln120_10_fu_200_p1;
wire   [6:0] shl_ln121_5_fu_230_p3;
wire   [9:0] zext_ln121_5_fu_238_p1;
wire   [767:0] zext_ln120_fu_261_p1;
wire   [767:0] zext_ln120_1_fu_270_p1;
wire    ap_block_pp0_stage2;
wire   [7:0] trunc_ln120_1_fu_279_p1;
wire   [7:0] trunc_ln120_2_fu_282_p1;
wire   [7:0] xor_ln120_fu_285_p2;
wire   [639:0] zext_ln120_8_fu_294_p1;
wire   [640:0] zext_ln120_7_fu_291_p1;
wire  signed [640:0] xor_ln120_1_fu_303_p2;
wire  signed [767:0] sext_ln120_fu_309_p1;
wire   [639:0] trunc_ln120_4_fu_317_p1;
wire   [639:0] trunc_ln120_3_fu_313_p1;
wire   [639:0] and_ln120_2_fu_325_p2;
wire   [639:0] shl_ln120_1_fu_298_p2;
wire   [767:0] and_ln120_fu_320_p2;
wire   [3:0] add_ln120_3_fu_347_p2;
wire   [6:0] shl_ln120_6_fu_352_p3;
wire   [9:0] zext_ln120_9_fu_360_p1;
wire    ap_block_pp0_stage3;
wire   [767:0] zext_ln120_3_fu_375_p1;
wire   [767:0] zext_ln120_4_fu_384_p1;
wire    ap_block_pp0_stage4;
wire   [7:0] trunc_ln120_6_fu_396_p1;
wire   [7:0] trunc_ln120_5_fu_393_p1;
wire   [7:0] xor_ln120_2_fu_399_p2;
wire   [639:0] zext_ln120_13_fu_408_p1;
wire   [640:0] zext_ln120_12_fu_405_p1;
wire  signed [640:0] xor_ln120_3_fu_417_p2;
wire  signed [767:0] sext_ln120_1_fu_423_p1;
wire   [639:0] trunc_ln120_7_fu_427_p1;
wire   [639:0] and_ln120_3_fu_436_p2;
wire   [639:0] shl_ln120_3_fu_412_p2;
wire   [767:0] and_ln120_1_fu_431_p2;
wire   [3:0] add_ln121_fu_457_p2;
wire   [6:0] shl_ln121_4_fu_462_p3;
wire   [9:0] zext_ln121_2_fu_470_p1;
wire    ap_block_pp0_stage5;
wire   [767:0] zext_ln121_fu_485_p1;
wire   [767:0] zext_ln121_1_fu_494_p1;
wire    ap_block_pp0_stage6;
wire   [7:0] trunc_ln121_1_fu_506_p1;
wire   [7:0] trunc_ln121_fu_503_p1;
wire   [7:0] xor_ln121_fu_509_p2;
wire   [639:0] zext_ln121_8_fu_518_p1;
wire   [640:0] zext_ln121_7_fu_515_p1;
wire  signed [640:0] xor_ln121_1_fu_527_p2;
wire  signed [767:0] sext_ln121_fu_533_p1;
wire   [639:0] trunc_ln121_2_fu_537_p1;
wire   [639:0] and_ln121_2_fu_546_p2;
wire   [639:0] shl_ln121_1_fu_522_p2;
wire   [767:0] and_ln121_fu_541_p2;
wire   [3:0] add_ln121_3_fu_567_p2;
wire   [6:0] shl_ln121_6_fu_572_p3;
wire   [9:0] zext_ln121_9_fu_580_p1;
wire   [6:0] shl_ln121_7_fu_589_p3;
wire   [9:0] zext_ln121_10_fu_596_p1;
wire    ap_block_pp0_stage7;
wire   [767:0] zext_ln121_3_fu_611_p1;
wire   [767:0] zext_ln121_4_fu_620_p1;
wire   [7:0] trunc_ln121_4_fu_645_p1;
wire   [7:0] trunc_ln121_3_fu_639_p1;
wire   [639:0] zext_ln121_11_fu_642_p1;
wire   [639:0] shl_ln121_2_fu_654_p2;
wire   [7:0] xor_ln121_2_fu_648_p2;
wire   [639:0] zext_ln121_13_fu_664_p1;
wire   [640:0] zext_ln121_12_fu_660_p1;
wire  signed [640:0] xor_ln121_3_fu_674_p2;
wire  signed [767:0] sext_ln121_1_fu_680_p1;
wire   [639:0] trunc_ln121_5_fu_684_p1;
wire   [639:0] and_ln121_3_fu_693_p2;
wire   [639:0] shl_ln121_3_fu_668_p2;
wire   [767:0] and_ln121_1_fu_688_p2;
wire   [127:0] tmp_8_fu_704_p4;
wire   [639:0] or_ln121_2_fu_698_p2;
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
#0 i_fu_78 = 5'd0;
#0 empty_fu_82 = 768'd0;
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
            empty_fu_82 <= or_ln3;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_82 <= or_ln121_3_fu_714_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_78 <= 5'd4;
    end else if (((tmp_reg_759 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        i_fu_78 <= add_ln120_6_fu_629_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln120_1_reg_770 <= add_ln120_1_fu_148_p2;
        add_ln120_2_reg_775 <= add_ln120_2_fu_166_p2;
        add_ln120_5_reg_790 <= add_ln120_5_fu_204_p2;
        add_ln121_2_reg_810 <= add_ln121_2_fu_242_p2;
        i_6_reg_754 <= ap_sig_allocacmp_i_6;
        shl_ln120_2_reg_800 <= shl_ln120_2_fu_214_p2;
        shl_ln120_reg_785 <= shl_ln120_fu_176_p2;
        shl_ln121_reg_820 <= shl_ln121_fu_252_p2;
        tmp_6_reg_805 <= {{ap_sig_allocacmp_i_6[3:2]}};
        tmp_reg_759 <= ap_sig_allocacmp_i_6[32'd4];
        trunc_ln120_reg_763 <= trunc_ln120_fu_126_p1;
        zext_ln120_11_reg_795[9 : 0] <= zext_ln120_11_fu_210_p1[9 : 0];
        zext_ln120_6_reg_780[9 : 0] <= zext_ln120_6_fu_172_p1[9 : 0];
        zext_ln121_6_reg_815[9 : 0] <= zext_ln121_6_fu_248_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln120_4_reg_852 <= add_ln120_4_fu_364_p2;
        or_ln120_1_reg_841 <= or_ln120_1_fu_331_p2;
        tmp_s_reg_847 <= {{and_ln120_fu_320_p2[767:640]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln121_1_reg_883 <= add_ln121_1_fu_474_p2;
        or_ln120_reg_872 <= or_ln120_fu_441_p2;
        tmp_5_reg_878 <= {{and_ln120_1_fu_431_p2[767:640]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln121_4_reg_914 <= add_ln121_4_fu_584_p2;
        add_ln121_5_reg_919 <= add_ln121_5_fu_600_p2;
        or_ln121_reg_903 <= or_ln121_fu_551_p2;
        tmp_7_reg_909 <= {{and_ln121_fu_541_p2[767:640]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln120_1_reg_836 <= lshr_ln120_1_fu_273_p2;
        lshr_ln120_reg_831 <= lshr_ln120_fu_264_p2;
        p_load_reg_825 <= empty_fu_82;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln120_2_reg_862 <= lshr_ln120_2_fu_378_p2;
        lshr_ln120_3_reg_867 <= lshr_ln120_3_fu_387_p2;
        or_ln4_reg_857 <= or_ln4_fu_369_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln121_1_reg_898 <= lshr_ln121_1_fu_497_p2;
        lshr_ln121_reg_893 <= lshr_ln121_fu_488_p2;
        or_ln120_2_reg_888 <= or_ln120_2_fu_479_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        lshr_ln121_2_reg_930 <= lshr_ln121_2_fu_614_p2;
        lshr_ln121_3_reg_935 <= lshr_ln121_3_fu_623_p2;
        or_ln121_1_reg_925 <= or_ln121_1_fu_605_p3;
    end
end
always @ (*) begin
    if (((tmp_fu_118_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_6 = 5'd4;
    end else begin
        ap_sig_allocacmp_i_6 = i_fu_78;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_fu_118_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln120_1_fu_148_p2 = (zext_ln120_2_fu_144_p1 + k_idx);
assign add_ln120_2_fu_166_p2 = (zext_ln120_5_fu_162_p1 + k_idx);
assign add_ln120_3_fu_347_p2 = ($signed(trunc_ln120_reg_763) + $signed(4'd13));
assign add_ln120_4_fu_364_p2 = (zext_ln120_9_fu_360_p1 + k_idx);
assign add_ln120_5_fu_204_p2 = (zext_ln120_10_fu_200_p1 + k_idx);
assign add_ln120_6_fu_629_p2 = (i_6_reg_754 + 5'd4);
assign add_ln120_fu_130_p2 = ($signed(trunc_ln120_fu_126_p1) + $signed(4'd12));
assign add_ln121_1_fu_474_p2 = (zext_ln121_2_fu_470_p1 + k_idx);
assign add_ln121_2_fu_242_p2 = (zext_ln121_5_fu_238_p1 + k_idx);
assign add_ln121_3_fu_567_p2 = ($signed(trunc_ln120_reg_763) + $signed(4'd15));
assign add_ln121_4_fu_584_p2 = (zext_ln121_9_fu_580_p1 + k_idx);
assign add_ln121_5_fu_600_p2 = (zext_ln121_10_fu_596_p1 + k_idx);
assign add_ln121_fu_457_p2 = ($signed(trunc_ln120_reg_763) + $signed(4'd14));
assign and_ln120_1_fu_431_p2 = (sext_ln120_1_fu_423_p1 & or_ln4_reg_857);
assign and_ln120_2_fu_325_p2 = (trunc_ln120_4_fu_317_p1 & trunc_ln120_3_fu_313_p1);
assign and_ln120_3_fu_436_p2 = (trunc_ln120_7_fu_427_p1 & or_ln120_1_reg_841);
assign and_ln120_fu_320_p2 = (sext_ln120_fu_309_p1 & p_load_reg_825);
assign and_ln121_1_fu_688_p2 = (sext_ln121_1_fu_680_p1 & or_ln121_1_reg_925);
assign and_ln121_2_fu_546_p2 = (trunc_ln121_2_fu_537_p1 & or_ln120_reg_872);
assign and_ln121_3_fu_693_p2 = (trunc_ln121_5_fu_684_p1 & or_ln121_reg_903);
assign and_ln121_fu_541_p2 = (sext_ln121_fu_533_p1 & or_ln120_2_reg_888);
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
assign lshr_ln120_1_fu_273_p2 = empty_fu_82 >> zext_ln120_1_fu_270_p1;
assign lshr_ln120_2_fu_378_p2 = or_ln4_fu_369_p3 >> zext_ln120_3_fu_375_p1;
assign lshr_ln120_3_fu_387_p2 = or_ln4_fu_369_p3 >> zext_ln120_4_fu_384_p1;
assign lshr_ln120_fu_264_p2 = empty_fu_82 >> zext_ln120_fu_261_p1;
assign lshr_ln121_1_fu_497_p2 = or_ln120_2_fu_479_p3 >> zext_ln121_1_fu_494_p1;
assign lshr_ln121_2_fu_614_p2 = or_ln121_1_fu_605_p3 >> zext_ln121_3_fu_611_p1;
assign lshr_ln121_3_fu_623_p2 = or_ln121_1_fu_605_p3 >> zext_ln121_4_fu_620_p1;
assign lshr_ln121_fu_488_p2 = or_ln120_2_fu_479_p3 >> zext_ln121_fu_485_p1;
assign or_ln120_1_fu_331_p2 = (shl_ln120_1_fu_298_p2 | and_ln120_2_fu_325_p2);
assign or_ln120_2_fu_479_p3 = {{tmp_5_reg_878}, {or_ln120_reg_872}};
assign or_ln120_fu_441_p2 = (shl_ln120_3_fu_412_p2 | and_ln120_3_fu_436_p2);
assign or_ln121_1_fu_605_p3 = {{tmp_7_reg_909}, {or_ln121_reg_903}};
assign or_ln121_2_fu_698_p2 = (shl_ln121_3_fu_668_p2 | and_ln121_3_fu_693_p2);
assign or_ln121_3_fu_714_p3 = {{tmp_8_fu_704_p4}, {or_ln121_2_fu_698_p2}};
assign or_ln121_fu_551_p2 = (shl_ln121_1_fu_522_p2 | and_ln121_2_fu_546_p2);
assign or_ln4_fu_369_p3 = {{tmp_s_reg_847}, {or_ln120_1_reg_841}};
assign p_out = empty_fu_82;
assign sext_ln120_1_fu_423_p1 = xor_ln120_3_fu_417_p2;
assign sext_ln120_fu_309_p1 = xor_ln120_1_fu_303_p2;
assign sext_ln121_1_fu_680_p1 = xor_ln121_3_fu_674_p2;
assign sext_ln121_fu_533_p1 = xor_ln121_1_fu_527_p2;
assign shl_ln120_1_fu_298_p2 = zext_ln120_8_fu_294_p1 << zext_ln120_6_reg_780;
assign shl_ln120_2_fu_214_p2 = 640'd255 << zext_ln120_11_fu_210_p1;
assign shl_ln120_3_fu_412_p2 = zext_ln120_13_fu_408_p1 << zext_ln120_11_reg_795;
assign shl_ln120_4_fu_136_p3 = {{add_ln120_fu_130_p2}, {3'd0}};
assign shl_ln120_5_fu_154_p3 = {{trunc_ln120_fu_126_p1}, {3'd0}};
assign shl_ln120_6_fu_352_p3 = {{add_ln120_3_fu_347_p2}, {3'd0}};
assign shl_ln120_7_fu_192_p3 = {{tmp_4_fu_182_p4}, {4'd8}};
assign shl_ln120_fu_176_p2 = 640'd255 << zext_ln120_6_fu_172_p1;
assign shl_ln121_1_fu_522_p2 = zext_ln121_8_fu_518_p1 << zext_ln121_6_reg_815;
assign shl_ln121_2_fu_654_p2 = 640'd255 << zext_ln121_11_fu_642_p1;
assign shl_ln121_3_fu_668_p2 = zext_ln121_13_fu_664_p1 << zext_ln121_11_fu_642_p1;
assign shl_ln121_4_fu_462_p3 = {{add_ln121_fu_457_p2}, {3'd0}};
assign shl_ln121_5_fu_230_p3 = {{tmp_6_fu_220_p4}, {5'd16}};
assign shl_ln121_6_fu_572_p3 = {{add_ln121_3_fu_567_p2}, {3'd0}};
assign shl_ln121_7_fu_589_p3 = {{tmp_6_reg_805}, {5'd24}};
assign shl_ln121_fu_252_p2 = 640'd255 << zext_ln121_6_fu_248_p1;
assign tmp_4_fu_182_p4 = {{ap_sig_allocacmp_i_6[3:1]}};
assign tmp_6_fu_220_p4 = {{ap_sig_allocacmp_i_6[3:2]}};
assign tmp_8_fu_704_p4 = {{and_ln121_1_fu_688_p2[767:640]}};
assign tmp_fu_118_p3 = ap_sig_allocacmp_i_6[32'd4];
assign trunc_ln120_1_fu_279_p1 = lshr_ln120_reg_831[7:0];
assign trunc_ln120_2_fu_282_p1 = lshr_ln120_1_reg_836[7:0];
assign trunc_ln120_3_fu_313_p1 = xor_ln120_1_fu_303_p2[639:0];
assign trunc_ln120_4_fu_317_p1 = p_load_reg_825[639:0];
assign trunc_ln120_5_fu_393_p1 = lshr_ln120_2_reg_862[7:0];
assign trunc_ln120_6_fu_396_p1 = lshr_ln120_3_reg_867[7:0];
assign trunc_ln120_7_fu_427_p1 = xor_ln120_3_fu_417_p2[639:0];
assign trunc_ln120_fu_126_p1 = ap_sig_allocacmp_i_6[3:0];
assign trunc_ln121_1_fu_506_p1 = lshr_ln121_1_reg_898[7:0];
assign trunc_ln121_2_fu_537_p1 = xor_ln121_1_fu_527_p2[639:0];
assign trunc_ln121_3_fu_639_p1 = lshr_ln121_2_reg_930[7:0];
assign trunc_ln121_4_fu_645_p1 = lshr_ln121_3_reg_935[7:0];
assign trunc_ln121_5_fu_684_p1 = xor_ln121_3_fu_674_p2[639:0];
assign trunc_ln121_fu_503_p1 = lshr_ln121_reg_893[7:0];
assign xor_ln120_1_fu_303_p2 = (zext_ln120_7_fu_291_p1 ^ 641'd9124881235244390437282343211400582649786457014497119861158385035798550334417354773011825622634742799557284619147188814621377409442750875996505322639444428376503989348720529900165748384493207551);
assign xor_ln120_2_fu_399_p2 = (trunc_ln120_6_fu_396_p1 ^ trunc_ln120_5_fu_393_p1);
assign xor_ln120_3_fu_417_p2 = (zext_ln120_12_fu_405_p1 ^ 641'd9124881235244390437282343211400582649786457014497119861158385035798550334417354773011825622634742799557284619147188814621377409442750875996505322639444428376503989348720529900165748384493207551);
assign xor_ln120_fu_285_p2 = (trunc_ln120_2_fu_282_p1 ^ trunc_ln120_1_fu_279_p1);
assign xor_ln121_1_fu_527_p2 = (zext_ln121_7_fu_515_p1 ^ 641'd9124881235244390437282343211400582649786457014497119861158385035798550334417354773011825622634742799557284619147188814621377409442750875996505322639444428376503989348720529900165748384493207551);
assign xor_ln121_2_fu_648_p2 = (trunc_ln121_4_fu_645_p1 ^ trunc_ln121_3_fu_639_p1);
assign xor_ln121_3_fu_674_p2 = (zext_ln121_12_fu_660_p1 ^ 641'd9124881235244390437282343211400582649786457014497119861158385035798550334417354773011825622634742799557284619147188814621377409442750875996505322639444428376503989348720529900165748384493207551);
assign xor_ln121_fu_509_p2 = (trunc_ln121_fu_503_p1 ^ trunc_ln121_1_fu_506_p1);
assign zext_ln120_10_fu_200_p1 = shl_ln120_7_fu_192_p3;
assign zext_ln120_11_fu_210_p1 = add_ln120_5_fu_204_p2;
assign zext_ln120_12_fu_405_p1 = shl_ln120_2_reg_800;
assign zext_ln120_13_fu_408_p1 = xor_ln120_2_fu_399_p2;
assign zext_ln120_1_fu_270_p1 = add_ln120_2_reg_775;
assign zext_ln120_2_fu_144_p1 = shl_ln120_4_fu_136_p3;
assign zext_ln120_3_fu_375_p1 = add_ln120_4_reg_852;
assign zext_ln120_4_fu_384_p1 = add_ln120_5_reg_790;
assign zext_ln120_5_fu_162_p1 = shl_ln120_5_fu_154_p3;
assign zext_ln120_6_fu_172_p1 = add_ln120_2_fu_166_p2;
assign zext_ln120_7_fu_291_p1 = shl_ln120_reg_785;
assign zext_ln120_8_fu_294_p1 = xor_ln120_fu_285_p2;
assign zext_ln120_9_fu_360_p1 = shl_ln120_6_fu_352_p3;
assign zext_ln120_fu_261_p1 = add_ln120_1_reg_770;
assign zext_ln121_10_fu_596_p1 = shl_ln121_7_fu_589_p3;
assign zext_ln121_11_fu_642_p1 = add_ln121_5_reg_919;
assign zext_ln121_12_fu_660_p1 = shl_ln121_2_fu_654_p2;
assign zext_ln121_13_fu_664_p1 = xor_ln121_2_fu_648_p2;
assign zext_ln121_1_fu_494_p1 = add_ln121_2_reg_810;
assign zext_ln121_2_fu_470_p1 = shl_ln121_4_fu_462_p3;
assign zext_ln121_3_fu_611_p1 = add_ln121_4_reg_914;
assign zext_ln121_4_fu_620_p1 = add_ln121_5_reg_919;
assign zext_ln121_5_fu_238_p1 = shl_ln121_5_fu_230_p3;
assign zext_ln121_6_fu_248_p1 = add_ln121_2_fu_242_p2;
assign zext_ln121_7_fu_515_p1 = shl_ln121_reg_820;
assign zext_ln121_8_fu_518_p1 = xor_ln121_fu_509_p2;
assign zext_ln121_9_fu_580_p1 = shl_ln121_6_fu_572_p3;
assign zext_ln121_fu_485_p1 = add_ln121_1_reg_883;
always @ (posedge ap_clk) begin
    zext_ln120_6_reg_780[639:10] <= 630'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    zext_ln120_11_reg_795[639:10] <= 630'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    zext_ln121_6_reg_815[639:10] <= 630'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
end
endmodule 