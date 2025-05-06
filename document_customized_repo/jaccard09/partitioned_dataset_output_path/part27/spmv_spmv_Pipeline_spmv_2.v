
module spmv_spmv_Pipeline_spmv_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sext_ln16,sext_ln16_1,val_0_address0,val_0_ce0,val_0_q0,val_1_address0,val_1_ce0,val_1_q0,cols_address0,cols_ce0,cols_q0,vec_0_address0,vec_0_ce0,vec_0_q0,vec_1_address0,vec_1_ce0,vec_1_q0,tmp_end,sum_out,sum_out_ap_vld,sum_1_out,sum_1_out_ap_vld,ap_return);  
parameter    ap_ST_fsm_state1 = 20'd1;
parameter    ap_ST_fsm_pp0_stage0 = 20'd2;
parameter    ap_ST_fsm_pp0_stage1 = 20'd4;
parameter    ap_ST_fsm_pp0_stage2 = 20'd8;
parameter    ap_ST_fsm_pp0_stage3 = 20'd16;
parameter    ap_ST_fsm_pp0_stage4 = 20'd32;
parameter    ap_ST_fsm_pp0_stage5 = 20'd64;
parameter    ap_ST_fsm_pp0_stage6 = 20'd128;
parameter    ap_ST_fsm_pp0_stage7 = 20'd256;
parameter    ap_ST_fsm_pp0_stage8 = 20'd512;
parameter    ap_ST_fsm_pp0_stage9 = 20'd1024;
parameter    ap_ST_fsm_pp0_stage10 = 20'd2048;
parameter    ap_ST_fsm_pp0_stage11 = 20'd4096;
parameter    ap_ST_fsm_pp0_stage12 = 20'd8192;
parameter    ap_ST_fsm_pp0_stage13 = 20'd16384;
parameter    ap_ST_fsm_pp0_stage14 = 20'd32768;
parameter    ap_ST_fsm_pp0_stage15 = 20'd65536;
parameter    ap_ST_fsm_state28 = 20'd131072;
parameter    ap_ST_fsm_state29 = 20'd262144;
parameter    ap_ST_fsm_state30 = 20'd524288;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sext_ln16;
input  [31:0] sext_ln16_1;
output  [9:0] val_0_address0;
output   val_0_ce0;
input  [63:0] val_0_q0;
output  [9:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [7:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [7:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
input  [31:0] tmp_end;
output  [63:0] sum_out;
output   sum_out_ap_vld;
output  [63:0] sum_1_out;
output   sum_1_out_ap_vld;
output  [0:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] sum_out;
reg sum_out_ap_vld;
reg sum_1_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [32:0] sext_ln16_1_cast_fu_238_p1;
reg  signed [32:0] sext_ln16_1_cast_reg_431;
reg   [32:0] j_1_reg_436;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln16_fu_259_p2;
reg   [0:0] icmp_ln16_reg_443;
reg   [0:0] icmp_ln16_reg_443_pp0_iter1_reg;
wire   [0:0] trunc_ln16_1_fu_288_p1;
reg   [0:0] trunc_ln16_1_reg_462;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] select_ln17_fu_291_p3;
reg   [63:0] select_ln17_reg_467;
wire   [0:0] trunc_ln17_fu_299_p1;
reg   [0:0] trunc_ln17_reg_472;
wire   [0:0] icmp_ln16_1_fu_336_p2;
reg   [0:0] icmp_ln16_1_reg_487;
reg   [0:0] icmp_ln16_1_reg_487_pp0_iter1_reg;
wire   [63:0] select_ln17_1_fu_341_p3;
reg   [63:0] select_ln17_1_reg_506;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] select_ln17_2_fu_348_p3;
reg   [63:0] select_ln17_2_reg_511;
wire   [0:0] trunc_ln17_1_fu_355_p1;
reg   [0:0] trunc_ln17_1_reg_516;
wire   [63:0] bitcast_ln17_fu_365_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln17_1_fu_369_p1;
wire   [63:0] select_ln17_3_fu_373_p3;
reg   [63:0] select_ln17_3_reg_541;
wire   [63:0] bitcast_ln17_2_fu_380_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln17_3_fu_384_p1;
wire   [63:0] grp_fu_224_p2;
reg   [63:0] Si_reg_556;
wire    ap_CS_fsm_pp0_stage9;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] sum_load_reg_561;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] Si_1_reg_567;
wire   [63:0] grp_fu_220_p2;
reg   [63:0] sum_1_reg_572;
reg    ap_enable_reg_pp0_iter1;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg    ap_predicate_tran19to28_state17;
reg    ap_condition_pp0_flush_enable;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] UnifiedRetVal_reg_207;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state28;
wire   [63:0] zext_ln9_fu_279_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16_fu_264_p1;
wire   [63:0] zext_ln17_fu_303_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln10_1_fu_330_p1;
wire   [63:0] zext_ln10_fu_315_p1;
wire   [63:0] zext_ln17_1_fu_359_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] sum_fu_62;
wire    ap_block_pp0_stage10;
reg   [32:0] j_fu_66;
wire   [32:0] add_ln16_fu_392_p2;
wire  signed [32:0] sext_ln16_cast_fu_242_p1;
reg    val_0_ce0_local;
reg   [9:0] val_0_address0_local;
reg    val_1_ce0_local;
reg   [9:0] val_1_address0_local;
reg    cols_ce0_local;
reg   [10:0] cols_address0_local;
reg    vec_0_ce0_local;
reg   [7:0] vec_0_address0_local;
reg    vec_1_ce0_local;
reg   [7:0] vec_1_address0_local;
reg   [63:0] grp_fu_220_p0;
reg   [63:0] grp_fu_220_p1;
reg   [63:0] grp_fu_224_p0;
reg   [63:0] grp_fu_224_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire   [9:0] lshr_ln9_1_fu_269_p4;
wire   [7:0] grp_fu_228_p4;
wire   [31:0] trunc_ln16_fu_285_p1;
wire   [31:0] add_ln10_fu_309_p2;
wire   [9:0] lshr_ln2_fu_320_p4;
reg   [0:0] ap_return_preg;
wire    ap_CS_fsm_state30;
reg   [19:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_block_pp0_stage0_subdone;
reg   [1:0] ap_exit_tran_regpp0;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 20'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 sum_fu_62 = 64'd0;
#0 j_fu_66 = 33'd0;
#0 ap_return_preg = 1'd0;
end
spmv_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_220_p0),.din1(grp_fu_220_p1),.ce(1'b1),.dout(grp_fu_220_p2));
spmv_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_224_p0),.din1(grp_fu_224_p1),.ce(1'b1),.dout(grp_fu_224_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b0)) | ((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state30)) begin
            ap_return_preg <= UnifiedRetVal_reg_207;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        UnifiedRetVal_reg_207 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        UnifiedRetVal_reg_207 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((icmp_ln16_reg_443 == 1'd0)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
        end else if ((ap_predicate_tran19to28_state17 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_fu_66 <= sext_ln16_cast_fu_242_p1;
    end else if (((icmp_ln16_reg_443 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln16_1_reg_487 == 1'd1))) begin
        j_fu_66 <= add_ln16_fu_392_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_fu_62 <= 64'd0;
    end else if (((icmp_ln16_reg_443_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (icmp_ln16_1_reg_487_pp0_iter1_reg == 1'd1))) begin
        sum_fu_62 <= grp_fu_220_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        Si_1_reg_567 <= grp_fu_224_p2;
        sum_load_reg_561 <= sum_fu_62;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        Si_reg_556 <= grp_fu_224_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln16_1_reg_487 <= icmp_ln16_1_fu_336_p2;
        icmp_ln16_1_reg_487_pp0_iter1_reg <= icmp_ln16_1_reg_487;
        select_ln17_reg_467 <= select_ln17_fu_291_p3;
        trunc_ln16_1_reg_462 <= trunc_ln16_1_fu_288_p1;
        trunc_ln17_reg_472 <= trunc_ln17_fu_299_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln16_reg_443 <= icmp_ln16_fu_259_p2;
        icmp_ln16_reg_443_pp0_iter1_reg <= icmp_ln16_reg_443;
        j_1_reg_436 <= j_fu_66;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln17_1_reg_506 <= select_ln17_1_fu_341_p3;
        select_ln17_2_reg_511 <= select_ln17_2_fu_348_p3;
        trunc_ln17_1_reg_516 <= trunc_ln17_1_fu_355_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln17_3_reg_541 <= select_ln17_3_fu_373_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sext_ln16_1_cast_reg_431 <= sext_ln16_1_cast_fu_238_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_1_reg_572 <= grp_fu_220_p2;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15) & ((icmp_ln16_reg_443 == 1'd0) | (ap_predicate_tran19to28_state17 == 1'b1)))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state30) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state30)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        ap_return = UnifiedRetVal_reg_207;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_address0_local = zext_ln10_fu_315_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cols_address0_local = zext_ln16_fu_264_p1;
        end else begin
            cols_address0_local = 'bx;
        end
    end else begin
        cols_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        cols_ce0_local = 1'b1;
    end else begin
        cols_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_220_p0 = sum_1_reg_572;
    end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_220_p0 = sum_fu_62;
    end else begin
        grp_fu_220_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_220_p1 = Si_1_reg_567;
    end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_220_p1 = Si_reg_556;
    end else begin
        grp_fu_220_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_224_p0 = bitcast_ln17_2_fu_380_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_224_p0 = bitcast_ln17_fu_365_p1;
        end else begin
            grp_fu_224_p0 = 'bx;
        end
    end else begin
        grp_fu_224_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_224_p1 = bitcast_ln17_3_fu_384_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_224_p1 = bitcast_ln17_1_fu_369_p1;
        end else begin
            grp_fu_224_p1 = 'bx;
        end
    end else begin
        grp_fu_224_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        sum_1_out_ap_vld = 1'b1;
    end else begin
        sum_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        sum_out = sum_fu_62;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        sum_out = sum_load_reg_561;
    end else begin
        sum_out = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state29))) begin
        sum_out_ap_vld = 1'b1;
    end else begin
        sum_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_0_address0_local = zext_ln10_1_fu_330_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            val_0_address0_local = zext_ln9_fu_279_p1;
        end else begin
            val_0_address0_local = 'bx;
        end
    end else begin
        val_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        val_0_ce0_local = 1'b1;
    end else begin
        val_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            val_1_address0_local = zext_ln10_1_fu_330_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            val_1_address0_local = zext_ln9_fu_279_p1;
        end else begin
            val_1_address0_local = 'bx;
        end
    end else begin
        val_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        val_1_ce0_local = 1'b1;
    end else begin
        val_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_0_address0_local = zext_ln17_1_fu_359_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            vec_0_address0_local = zext_ln17_fu_303_p1;
        end else begin
            vec_0_address0_local = 'bx;
        end
    end else begin
        vec_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        vec_0_ce0_local = 1'b1;
    end else begin
        vec_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            vec_1_address0_local = zext_ln17_1_fu_359_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            vec_1_address0_local = zext_ln17_fu_303_p1;
        end else begin
            vec_1_address0_local = 'bx;
        end
    end else begin
        vec_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        vec_1_ce0_local = 1'b1;
    end else begin
        vec_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((~((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b0)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_exit_tran_regpp0 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_exit_tran_regpp0 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln10_fu_309_p2 = (trunc_ln16_fu_285_p1 + 32'd1);
assign add_ln16_fu_392_p2 = (j_1_reg_436 + 33'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd19];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
always @ (*) begin
    ap_predicate_tran19to28_state17 = ((icmp_ln16_reg_443 == 1'd1) & (icmp_ln16_1_reg_487 == 1'd0));
end
assign bitcast_ln17_1_fu_369_p1 = select_ln17_1_reg_506;
assign bitcast_ln17_2_fu_380_p1 = select_ln17_2_reg_511;
assign bitcast_ln17_3_fu_384_p1 = select_ln17_3_reg_541;
assign bitcast_ln17_fu_365_p1 = select_ln17_reg_467;
assign cols_address0 = cols_address0_local;
assign cols_ce0 = cols_ce0_local;
assign grp_fu_228_p4 = {{cols_q0[8:1]}};
assign icmp_ln16_1_fu_336_p2 = (($signed(add_ln10_fu_309_p2) < $signed(tmp_end)) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_259_p2 = (($signed(j_fu_66) < $signed(sext_ln16_1_cast_reg_431)) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_320_p4 = {{add_ln10_fu_309_p2[10:1]}};
assign lshr_ln9_1_fu_269_p4 = {{j_fu_66[10:1]}};
assign select_ln17_1_fu_341_p3 = ((trunc_ln17_reg_472[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_2_fu_348_p3 = ((trunc_ln16_1_reg_462[0:0] == 1'b1) ? val_0_q0 : val_1_q0);
assign select_ln17_3_fu_373_p3 = ((trunc_ln17_1_reg_516[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_fu_291_p3 = ((trunc_ln16_1_fu_288_p1[0:0] == 1'b1) ? val_1_q0 : val_0_q0);
assign sext_ln16_1_cast_fu_238_p1 = $signed(sext_ln16_1);
assign sext_ln16_cast_fu_242_p1 = $signed(sext_ln16);
assign sum_1_out = sum_1_reg_572;
assign trunc_ln16_1_fu_288_p1 = j_1_reg_436[0:0];
assign trunc_ln16_fu_285_p1 = j_1_reg_436[31:0];
assign trunc_ln17_1_fu_355_p1 = cols_q0[0:0];
assign trunc_ln17_fu_299_p1 = cols_q0[0:0];
assign val_0_address0 = val_0_address0_local;
assign val_0_ce0 = val_0_ce0_local;
assign val_1_address0 = val_1_address0_local;
assign val_1_ce0 = val_1_ce0_local;
assign vec_0_address0 = vec_0_address0_local;
assign vec_0_ce0 = vec_0_ce0_local;
assign vec_1_address0 = vec_1_address0_local;
assign vec_1_ce0 = vec_1_ce0_local;
assign zext_ln10_1_fu_330_p1 = lshr_ln2_fu_320_p4;
assign zext_ln10_fu_315_p1 = add_ln10_fu_309_p2;
assign zext_ln16_fu_264_p1 = j_fu_66;
assign zext_ln17_1_fu_359_p1 = grp_fu_228_p4;
assign zext_ln17_fu_303_p1 = grp_fu_228_p4;
assign zext_ln9_fu_279_p1 = lshr_ln9_1_fu_269_p4;
always @ (posedge ap_clk) begin
    ap_exit_tran_regpp0[1] <= 1'b0;
end
endmodule 
