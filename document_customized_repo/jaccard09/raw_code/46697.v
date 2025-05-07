module spmv_spmv_Pipeline_spmv_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sext_ln16,sext_ln16_1,val_0_address0,val_0_ce0,val_0_q0,val_0_address1,val_0_ce1,val_0_q1,val_1_address0,val_1_ce0,val_1_q0,val_1_address1,val_1_ce1,val_1_q1,cols_address0,cols_ce0,cols_q0,cols_address1,cols_ce1,cols_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,tmp_end,sum_out,sum_out_ap_vld,sum_3_out,sum_3_out_ap_vld,sum_2_out,sum_2_out_ap_vld,sum_1_out,sum_1_out_ap_vld,ap_return); 
parameter    ap_ST_fsm_state1 = 38'd1;
parameter    ap_ST_fsm_pp0_stage0 = 38'd2;
parameter    ap_ST_fsm_pp0_stage1 = 38'd4;
parameter    ap_ST_fsm_pp0_stage2 = 38'd8;
parameter    ap_ST_fsm_pp0_stage3 = 38'd16;
parameter    ap_ST_fsm_pp0_stage4 = 38'd32;
parameter    ap_ST_fsm_pp0_stage5 = 38'd64;
parameter    ap_ST_fsm_pp0_stage6 = 38'd128;
parameter    ap_ST_fsm_pp0_stage7 = 38'd256;
parameter    ap_ST_fsm_pp0_stage8 = 38'd512;
parameter    ap_ST_fsm_pp0_stage9 = 38'd1024;
parameter    ap_ST_fsm_pp0_stage10 = 38'd2048;
parameter    ap_ST_fsm_pp0_stage11 = 38'd4096;
parameter    ap_ST_fsm_pp0_stage12 = 38'd8192;
parameter    ap_ST_fsm_pp0_stage13 = 38'd16384;
parameter    ap_ST_fsm_pp0_stage14 = 38'd32768;
parameter    ap_ST_fsm_pp0_stage15 = 38'd65536;
parameter    ap_ST_fsm_pp0_stage16 = 38'd131072;
parameter    ap_ST_fsm_pp0_stage17 = 38'd262144;
parameter    ap_ST_fsm_pp0_stage18 = 38'd524288;
parameter    ap_ST_fsm_pp0_stage19 = 38'd1048576;
parameter    ap_ST_fsm_pp0_stage20 = 38'd2097152;
parameter    ap_ST_fsm_pp0_stage21 = 38'd4194304;
parameter    ap_ST_fsm_pp0_stage22 = 38'd8388608;
parameter    ap_ST_fsm_pp0_stage23 = 38'd16777216;
parameter    ap_ST_fsm_pp0_stage24 = 38'd33554432;
parameter    ap_ST_fsm_pp0_stage25 = 38'd67108864;
parameter    ap_ST_fsm_pp0_stage26 = 38'd134217728;
parameter    ap_ST_fsm_pp0_stage27 = 38'd268435456;
parameter    ap_ST_fsm_pp0_stage28 = 38'd536870912;
parameter    ap_ST_fsm_pp0_stage29 = 38'd1073741824;
parameter    ap_ST_fsm_pp0_stage30 = 38'd2147483648;
parameter    ap_ST_fsm_pp0_stage31 = 38'd4294967296;
parameter    ap_ST_fsm_state44 = 38'd8589934592;
parameter    ap_ST_fsm_state45 = 38'd17179869184;
parameter    ap_ST_fsm_state46 = 38'd34359738368;
parameter    ap_ST_fsm_state47 = 38'd68719476736;
parameter    ap_ST_fsm_state48 = 38'd137438953472;
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
output  [9:0] val_0_address1;
output   val_0_ce1;
input  [63:0] val_0_q1;
output  [9:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [9:0] val_1_address1;
output   val_1_ce1;
input  [63:0] val_1_q1;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [10:0] cols_address1;
output   cols_ce1;
input  [31:0] cols_q1;
output  [7:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [7:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [7:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [7:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
input  [31:0] tmp_end;
output  [63:0] sum_out;
output   sum_out_ap_vld;
output  [63:0] sum_3_out;
output   sum_3_out_ap_vld;
output  [63:0] sum_2_out;
output   sum_2_out_ap_vld;
output  [63:0] sum_1_out;
output   sum_1_out_ap_vld;
output  [1:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] sum_out;
reg sum_out_ap_vld;
reg sum_3_out_ap_vld;
reg sum_2_out_ap_vld;
reg sum_1_out_ap_vld;
reg[1:0] ap_return;
(* fsm_encoding = "none" *) reg   [37:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [32:0] sext_ln16_1_cast_fu_393_p1;
reg  signed [32:0] sext_ln16_1_cast_reg_694;
reg   [32:0] j_1_reg_701;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln16_fu_414_p2;
reg   [0:0] icmp_ln16_reg_710;
reg   [0:0] icmp_ln16_reg_710_pp0_iter1_reg;
wire   [0:0] trunc_ln16_1_fu_443_p1;
reg   [0:0] trunc_ln16_1_reg_729;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] select_ln17_fu_446_p3;
reg   [63:0] select_ln17_reg_735;
wire   [0:0] trunc_ln17_fu_454_p1;
reg   [0:0] trunc_ln17_reg_740;
wire   [0:0] icmp_ln16_1_fu_491_p2;
reg   [0:0] icmp_ln16_1_reg_755;
reg   [0:0] icmp_ln16_1_reg_755_pp0_iter1_reg;
wire   [0:0] icmp_ln16_2_fu_522_p2;
reg   [0:0] icmp_ln16_2_reg_774;
reg   [0:0] icmp_ln16_2_reg_774_pp0_iter1_reg;
wire   [63:0] select_ln17_1_fu_527_p3;
reg   [63:0] select_ln17_1_reg_793;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] grp_fu_372_p3;
reg   [63:0] select_ln17_2_reg_798;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] trunc_ln17_1_fu_534_p1;
reg   [0:0] trunc_ln17_1_reg_803;
wire   [63:0] select_ln17_4_fu_544_p3;
reg   [63:0] select_ln17_4_reg_818;
wire   [0:0] trunc_ln17_2_fu_551_p1;
reg   [0:0] trunc_ln17_2_reg_823;
wire   [0:0] icmp_ln16_3_fu_587_p2;
reg   [0:0] icmp_ln16_3_reg_838;
reg   [0:0] icmp_ln16_3_reg_838_pp0_iter1_reg;
wire   [63:0] bitcast_ln17_fu_592_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln17_1_fu_596_p1;
wire   [63:0] select_ln17_3_fu_600_p3;
reg   [63:0] select_ln17_3_reg_867;
wire   [63:0] select_ln17_5_fu_607_p3;
reg   [63:0] select_ln17_5_reg_872;
reg   [63:0] select_ln17_6_reg_877;
wire   [0:0] trunc_ln17_3_fu_614_p1;
reg   [0:0] trunc_ln17_3_reg_882;
wire   [63:0] bitcast_ln17_2_fu_624_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln17_3_fu_628_p1;
wire   [63:0] select_ln17_7_fu_632_p3;
reg   [63:0] select_ln17_7_reg_907;
wire   [63:0] bitcast_ln17_4_fu_639_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] bitcast_ln17_5_fu_643_p1;
wire   [63:0] bitcast_ln17_6_fu_647_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln17_7_fu_651_p1;
wire   [63:0] grp_fu_358_p2;
reg   [63:0] Si_reg_932;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] sum_load_reg_937;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] Si_1_reg_943;
reg   [63:0] Si_2_reg_948;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] Si_3_reg_953;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [63:0] grp_fu_354_p2;
reg   [63:0] sum_1_reg_958;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] sum_2_reg_964;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] sum_3_reg_970;
reg    ap_enable_reg_pp0_iter1;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg    ap_predicate_tran35to44_state33;
reg    ap_predicate_tran35to45_state33;
reg    ap_predicate_tran35to46_state33;
reg    ap_condition_pp0_flush_enable;
wire    ap_block_pp0_stage1_subdone;
reg   [1:0] UnifiedRetVal_reg_333;
wire    ap_CS_fsm_state47;
wire    ap_CS_fsm_state44;
wire    ap_CS_fsm_state45;
wire    ap_CS_fsm_state46;
wire   [63:0] zext_ln9_fu_434_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16_fu_419_p1;
wire   [63:0] zext_ln17_fu_458_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln10_1_fu_485_p1;
wire   [63:0] zext_ln10_fu_470_p1;
wire   [63:0] zext_ln10_3_fu_516_p1;
wire   [63:0] zext_ln10_2_fu_501_p1;
wire   [63:0] zext_ln17_1_fu_538_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln17_2_fu_555_p1;
wire   [63:0] zext_ln10_5_fu_581_p1;
wire   [63:0] zext_ln10_4_fu_566_p1;
wire   [63:0] zext_ln17_3_fu_618_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] sum_fu_74;
wire    ap_block_pp0_stage10;
reg   [32:0] j_fu_78;
wire   [32:0] add_ln16_2_fu_659_p2;
wire  signed [32:0] sext_ln16_cast_fu_397_p1;
reg    val_0_ce0_local;
reg   [9:0] val_0_address0_local;
reg    val_0_ce1_local;
reg   [9:0] val_0_address1_local;
reg    val_1_ce0_local;
reg   [9:0] val_1_address0_local;
reg    val_1_ce1_local;
reg   [9:0] val_1_address1_local;
reg    cols_ce0_local;
reg   [10:0] cols_address0_local;
reg    cols_ce1_local;
reg   [10:0] cols_address1_local;
reg    vec_0_ce0_local;
reg   [7:0] vec_0_address0_local;
reg    vec_0_ce1_local;
reg   [7:0] vec_0_address1_local;
reg    vec_1_ce0_local;
reg   [7:0] vec_1_address0_local;
reg    vec_1_ce1_local;
reg   [7:0] vec_1_address1_local;
reg   [63:0] grp_fu_354_p0;
reg   [63:0] grp_fu_354_p1;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26;
reg   [63:0] grp_fu_358_p0;
reg   [63:0] grp_fu_358_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire   [9:0] lshr_ln9_1_fu_424_p4;
wire   [7:0] grp_fu_362_p4;
wire   [31:0] trunc_ln16_fu_440_p1;
wire   [31:0] add_ln10_fu_464_p2;
wire   [9:0] lshr_ln2_fu_475_p4;
wire   [32:0] add_ln16_fu_496_p2;
wire   [9:0] lshr_ln10_1_fu_506_p4;
wire   [7:0] grp_fu_379_p4;
wire   [32:0] add_ln16_1_fu_561_p2;
wire   [9:0] lshr_ln10_2_fu_571_p4;
reg   [1:0] ap_return_preg;
wire    ap_CS_fsm_state48;
reg   [37:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
wire    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
wire    ap_block_pp0_stage0_subdone;
reg   [3:0] ap_exit_tran_regpp0;
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
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 38'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 sum_fu_74 = 64'd0;
#0 j_fu_78 = 33'd0;
#0 ap_return_preg = 2'd0;
end
spmv_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_354_p0),.din1(grp_fu_354_p1),.ce(1'b1),.dout(grp_fu_354_p2));
spmv_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_358_p0),.din1(grp_fu_358_p1),.ce(1'b1),.dout(grp_fu_358_p2));
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
        if ((((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 2'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state48)) begin
            ap_return_preg <= UnifiedRetVal_reg_333;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        UnifiedRetVal_reg_333 <= 2'd3;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        UnifiedRetVal_reg_333 <= 2'd2;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        UnifiedRetVal_reg_333 <= 2'd1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        UnifiedRetVal_reg_333 <= 2'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage31_subdone))) begin
        if ((icmp_ln16_reg_710 == 1'd0)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b1;
        end else if ((ap_predicate_tran35to46_state33 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b1;
        end else if ((ap_predicate_tran35to45_state33 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b0;
        end else if ((ap_predicate_tran35to44_state33 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_fu_78 <= sext_ln16_cast_fu_397_p1;
    end else if (((icmp_ln16_3_reg_838 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln16_2_reg_774 == 1'd1) & (icmp_ln16_1_reg_755 == 1'd1) & (icmp_ln16_reg_710 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001))) begin
        j_fu_78 <= add_ln16_2_fu_659_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_fu_74 <= 64'd0;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln16_3_reg_838_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (icmp_ln16_2_reg_774_pp0_iter1_reg == 1'd1) & (icmp_ln16_1_reg_755_pp0_iter1_reg == 1'd1) & (icmp_ln16_reg_710_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001))) begin
        sum_fu_74 <= grp_fu_354_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001))) begin
        Si_1_reg_943 <= grp_fu_358_p2;
        sum_load_reg_937 <= sum_fu_74;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        Si_2_reg_948 <= grp_fu_358_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage12_11001))) begin
        Si_3_reg_953 <= grp_fu_358_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage9_11001))) begin
        Si_reg_932 <= grp_fu_358_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        icmp_ln16_1_reg_755 <= icmp_ln16_1_fu_491_p2;
        icmp_ln16_1_reg_755_pp0_iter1_reg <= icmp_ln16_1_reg_755;
        icmp_ln16_2_reg_774 <= icmp_ln16_2_fu_522_p2;
        icmp_ln16_2_reg_774_pp0_iter1_reg <= icmp_ln16_2_reg_774;
        select_ln17_reg_735 <= select_ln17_fu_446_p3;
        trunc_ln16_1_reg_729 <= trunc_ln16_1_fu_443_p1;
        trunc_ln17_reg_740 <= trunc_ln17_fu_454_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        icmp_ln16_3_reg_838 <= icmp_ln16_3_fu_587_p2;
        icmp_ln16_3_reg_838_pp0_iter1_reg <= icmp_ln16_3_reg_838;
        select_ln17_1_reg_793 <= select_ln17_1_fu_527_p3;
        select_ln17_4_reg_818 <= select_ln17_4_fu_544_p3;
        trunc_ln17_1_reg_803 <= trunc_ln17_1_fu_534_p1;
        trunc_ln17_2_reg_823 <= trunc_ln17_2_fu_551_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln16_reg_710 <= icmp_ln16_fu_414_p2;
        icmp_ln16_reg_710_pp0_iter1_reg <= icmp_ln16_reg_710;
        j_1_reg_701 <= j_fu_78;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        select_ln17_2_reg_798 <= grp_fu_372_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        select_ln17_3_reg_867 <= select_ln17_3_fu_600_p3;
        select_ln17_5_reg_872 <= select_ln17_5_fu_607_p3;
        trunc_ln17_3_reg_882 <= trunc_ln17_3_fu_614_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        select_ln17_6_reg_877 <= grp_fu_372_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        select_ln17_7_reg_907 <= select_ln17_7_fu_632_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sext_ln16_1_cast_reg_694 <= sext_ln16_1_cast_fu_393_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001))) begin
        sum_1_reg_958 <= grp_fu_354_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage25_11001))) begin
        sum_2_reg_964 <= grp_fu_354_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        sum_3_reg_970 <= grp_fu_354_p2;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state44_blk = 1'b0;
assign ap_ST_fsm_state45_blk = 1'b0;
assign ap_ST_fsm_state46_blk = 1'b0;
assign ap_ST_fsm_state47_blk = 1'b0;
assign ap_ST_fsm_state48_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31_subdone) & ((ap_predicate_tran35to46_state33 == 1'b1) | (ap_predicate_tran35to45_state33 == 1'b1) | (ap_predicate_tran35to44_state33 == 1'b1) | (icmp_ln16_reg_710 == 1'd0)))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state48)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        ap_return = UnifiedRetVal_reg_333;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            cols_address0_local = zext_ln10_2_fu_501_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            cols_address0_local = zext_ln16_fu_419_p1;
        end else begin
            cols_address0_local = 'bx;
        end
    end else begin
        cols_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            cols_address1_local = zext_ln10_4_fu_566_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            cols_address1_local = zext_ln10_fu_470_p1;
        end else begin
            cols_address1_local = 'bx;
        end
    end else begin
        cols_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        cols_ce0_local = 1'b1;
    end else begin
        cols_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        cols_ce1_local = 1'b1;
    end else begin
        cols_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_354_p0 = sum_3_reg_970;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage26))) begin
        grp_fu_354_p0 = sum_2_reg_964;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage18))) begin
        grp_fu_354_p0 = sum_1_reg_958;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage10))) begin
        grp_fu_354_p0 = sum_fu_74;
    end else begin
        grp_fu_354_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_354_p1 = Si_3_reg_953;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage26))) begin
        grp_fu_354_p1 = Si_2_reg_948;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage18))) begin
        grp_fu_354_p1 = Si_1_reg_943;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage10))) begin
        grp_fu_354_p1 = Si_reg_932;
    end else begin
        grp_fu_354_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            grp_fu_358_p0 = bitcast_ln17_6_fu_647_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            grp_fu_358_p0 = bitcast_ln17_4_fu_639_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            grp_fu_358_p0 = bitcast_ln17_2_fu_624_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            grp_fu_358_p0 = bitcast_ln17_fu_592_p1;
        end else begin
            grp_fu_358_p0 = 'bx;
        end
    end else begin
        grp_fu_358_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            grp_fu_358_p1 = bitcast_ln17_7_fu_651_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            grp_fu_358_p1 = bitcast_ln17_5_fu_643_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            grp_fu_358_p1 = bitcast_ln17_3_fu_628_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            grp_fu_358_p1 = bitcast_ln17_1_fu_596_p1;
        end else begin
            grp_fu_358_p1 = 'bx;
        end
    end else begin
        grp_fu_358_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44))) begin
        sum_1_out_ap_vld = 1'b1;
    end else begin
        sum_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44))) begin
        sum_2_out_ap_vld = 1'b1;
    end else begin
        sum_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        sum_3_out_ap_vld = 1'b1;
    end else begin
        sum_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        sum_out = sum_load_reg_937;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state47))) begin
        sum_out = sum_fu_74;
    end else begin
        sum_out = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state47))) begin
        sum_out_ap_vld = 1'b1;
    end else begin
        sum_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            val_0_address0_local = zext_ln10_3_fu_516_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            val_0_address0_local = zext_ln9_fu_434_p1;
        end else begin
            val_0_address0_local = 'bx;
        end
    end else begin
        val_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            val_0_address1_local = zext_ln10_5_fu_581_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            val_0_address1_local = zext_ln10_1_fu_485_p1;
        end else begin
            val_0_address1_local = 'bx;
        end
    end else begin
        val_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        val_0_ce0_local = 1'b1;
    end else begin
        val_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        val_0_ce1_local = 1'b1;
    end else begin
        val_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            val_1_address0_local = zext_ln10_3_fu_516_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            val_1_address0_local = zext_ln9_fu_434_p1;
        end else begin
            val_1_address0_local = 'bx;
        end
    end else begin
        val_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            val_1_address1_local = zext_ln10_5_fu_581_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            val_1_address1_local = zext_ln10_1_fu_485_p1;
        end else begin
            val_1_address1_local = 'bx;
        end
    end else begin
        val_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        val_1_ce0_local = 1'b1;
    end else begin
        val_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        val_1_ce1_local = 1'b1;
    end else begin
        val_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            vec_0_address0_local = zext_ln17_2_fu_555_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            vec_0_address0_local = zext_ln17_fu_458_p1;
        end else begin
            vec_0_address0_local = 'bx;
        end
    end else begin
        vec_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            vec_0_address1_local = zext_ln17_3_fu_618_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            vec_0_address1_local = zext_ln17_1_fu_538_p1;
        end else begin
            vec_0_address1_local = 'bx;
        end
    end else begin
        vec_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        vec_0_ce0_local = 1'b1;
    end else begin
        vec_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        vec_0_ce1_local = 1'b1;
    end else begin
        vec_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            vec_1_address0_local = zext_ln17_2_fu_555_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            vec_1_address0_local = zext_ln17_fu_458_p1;
        end else begin
            vec_1_address0_local = 'bx;
        end
    end else begin
        vec_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            vec_1_address1_local = zext_ln17_3_fu_618_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            vec_1_address1_local = zext_ln17_1_fu_538_p1;
        end else begin
            vec_1_address1_local = 'bx;
        end
    end else begin
        vec_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        vec_1_ce0_local = 1'b1;
    end else begin
        vec_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        vec_1_ce1_local = 1'b1;
    end else begin
        vec_1_ce1_local = 1'b0;
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
            if ((~((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else if (((ap_exit_tran_regpp0 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state47;
            end else if (((ap_exit_tran_regpp0 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state46;
            end else if (((ap_exit_tran_regpp0 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state45;
            end else if (((ap_exit_tran_regpp0 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state44;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln10_fu_464_p2 = (trunc_ln16_fu_440_p1 + 32'd1);
assign add_ln16_1_fu_561_p2 = (j_1_reg_701 + 33'd3);
assign add_ln16_2_fu_659_p2 = (j_1_reg_701 + 33'd4);
assign add_ln16_fu_496_p2 = (j_1_reg_701 + 33'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state45 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_state46 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state47 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_state48 = ap_CS_fsm[32'd37];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
always @ (*) begin
    ap_predicate_tran35to44_state33 = ((icmp_ln16_3_reg_838 == 1'd0) & (icmp_ln16_2_reg_774 == 1'd1) & (icmp_ln16_1_reg_755 == 1'd1) & (icmp_ln16_reg_710 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran35to45_state33 = ((icmp_ln16_2_reg_774 == 1'd0) & (icmp_ln16_1_reg_755 == 1'd1) & (icmp_ln16_reg_710 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran35to46_state33 = ((icmp_ln16_1_reg_755 == 1'd0) & (icmp_ln16_reg_710 == 1'd1));
end
assign bitcast_ln17_1_fu_596_p1 = select_ln17_1_reg_793;
assign bitcast_ln17_2_fu_624_p1 = select_ln17_2_reg_798;
assign bitcast_ln17_3_fu_628_p1 = select_ln17_3_reg_867;
assign bitcast_ln17_4_fu_639_p1 = select_ln17_4_reg_818;
assign bitcast_ln17_5_fu_643_p1 = select_ln17_5_reg_872;
assign bitcast_ln17_6_fu_647_p1 = select_ln17_6_reg_877;
assign bitcast_ln17_7_fu_651_p1 = select_ln17_7_reg_907;
assign bitcast_ln17_fu_592_p1 = select_ln17_reg_735;
assign cols_address0 = cols_address0_local;
assign cols_address1 = cols_address1_local;
assign cols_ce0 = cols_ce0_local;
assign cols_ce1 = cols_ce1_local;
assign grp_fu_362_p4 = {{cols_q0[8:1]}};
assign grp_fu_372_p3 = ((trunc_ln16_1_reg_729[0:0] == 1'b1) ? val_0_q1 : val_1_q1);
assign grp_fu_379_p4 = {{cols_q1[8:1]}};
assign icmp_ln16_1_fu_491_p2 = (($signed(add_ln10_fu_464_p2) < $signed(tmp_end)) ? 1'b1 : 1'b0);
assign icmp_ln16_2_fu_522_p2 = (($signed(add_ln16_fu_496_p2) < $signed(sext_ln16_1_cast_reg_694)) ? 1'b1 : 1'b0);
assign icmp_ln16_3_fu_587_p2 = (($signed(add_ln16_1_fu_561_p2) < $signed(sext_ln16_1_cast_reg_694)) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_414_p2 = (($signed(j_fu_78) < $signed(sext_ln16_1_cast_reg_694)) ? 1'b1 : 1'b0);
assign lshr_ln10_1_fu_506_p4 = {{add_ln16_fu_496_p2[10:1]}};
assign lshr_ln10_2_fu_571_p4 = {{add_ln16_1_fu_561_p2[10:1]}};
assign lshr_ln2_fu_475_p4 = {{add_ln10_fu_464_p2[10:1]}};
assign lshr_ln9_1_fu_424_p4 = {{j_fu_78[10:1]}};
assign select_ln17_1_fu_527_p3 = ((trunc_ln17_reg_740[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_3_fu_600_p3 = ((trunc_ln17_1_reg_803[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln17_4_fu_544_p3 = ((trunc_ln16_1_reg_729[0:0] == 1'b1) ? val_1_q0 : val_0_q0);
assign select_ln17_5_fu_607_p3 = ((trunc_ln17_2_reg_823[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_7_fu_632_p3 = ((trunc_ln17_3_reg_882[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln17_fu_446_p3 = ((trunc_ln16_1_fu_443_p1[0:0] == 1'b1) ? val_1_q0 : val_0_q0);
assign sext_ln16_1_cast_fu_393_p1 = $signed(sext_ln16_1);
assign sext_ln16_cast_fu_397_p1 = $signed(sext_ln16);
assign sum_1_out = sum_1_reg_958;
assign sum_2_out = sum_2_reg_964;
assign sum_3_out = sum_3_reg_970;
assign trunc_ln16_1_fu_443_p1 = j_1_reg_701[0:0];
assign trunc_ln16_fu_440_p1 = j_1_reg_701[31:0];
assign trunc_ln17_1_fu_534_p1 = cols_q1[0:0];
assign trunc_ln17_2_fu_551_p1 = cols_q0[0:0];
assign trunc_ln17_3_fu_614_p1 = cols_q1[0:0];
assign trunc_ln17_fu_454_p1 = cols_q0[0:0];
assign val_0_address0 = val_0_address0_local;
assign val_0_address1 = val_0_address1_local;
assign val_0_ce0 = val_0_ce0_local;
assign val_0_ce1 = val_0_ce1_local;
assign val_1_address0 = val_1_address0_local;
assign val_1_address1 = val_1_address1_local;
assign val_1_ce0 = val_1_ce0_local;
assign val_1_ce1 = val_1_ce1_local;
assign vec_0_address0 = vec_0_address0_local;
assign vec_0_address1 = vec_0_address1_local;
assign vec_0_ce0 = vec_0_ce0_local;
assign vec_0_ce1 = vec_0_ce1_local;
assign vec_1_address0 = vec_1_address0_local;
assign vec_1_address1 = vec_1_address1_local;
assign vec_1_ce0 = vec_1_ce0_local;
assign vec_1_ce1 = vec_1_ce1_local;
assign zext_ln10_1_fu_485_p1 = lshr_ln2_fu_475_p4;
assign zext_ln10_2_fu_501_p1 = add_ln16_fu_496_p2;
assign zext_ln10_3_fu_516_p1 = lshr_ln10_1_fu_506_p4;
assign zext_ln10_4_fu_566_p1 = add_ln16_1_fu_561_p2;
assign zext_ln10_5_fu_581_p1 = lshr_ln10_2_fu_571_p4;
assign zext_ln10_fu_470_p1 = add_ln10_fu_464_p2;
assign zext_ln16_fu_419_p1 = j_fu_78;
assign zext_ln17_1_fu_538_p1 = grp_fu_379_p4;
assign zext_ln17_2_fu_555_p1 = grp_fu_362_p4;
assign zext_ln17_3_fu_618_p1 = grp_fu_379_p4;
assign zext_ln17_fu_458_p1 = grp_fu_362_p4;
assign zext_ln9_fu_434_p1 = lshr_ln9_1_fu_424_p4;
always @ (posedge ap_clk) begin
    ap_exit_tran_regpp0[3:2] <= 2'b00;
end
endmodule 