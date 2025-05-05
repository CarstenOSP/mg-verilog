module SgdLR_sw_SgdLR_sw_Pipeline_label_469 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_1_address1,v2_1_ce1,v2_1_we1,v2_1_d1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v2_0_address1,v2_0_ce1,v2_0_we1,v2_0_d1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_1_address0,v3_1_ce0,v3_1_q0,v3_2_address0,v3_2_ce0,v3_2_q0,v3_3_address0,v3_3_ce0,v3_3_q0,v3_4_address0,v3_4_ce0,v3_4_q0,v3_5_address0,v3_5_ce0,v3_5_q0,v3_6_address0,v3_6_ce0,v3_6_q0,v3_7_address0,v3_7_ce0,v3_7_q0,grp_fu_2526_p_din0,grp_fu_2526_p_din1,grp_fu_2526_p_opcode,grp_fu_2526_p_dout0,grp_fu_2526_p_ce,grp_fu_7297_p_din0,grp_fu_7297_p_din1,grp_fu_7297_p_dout0,grp_fu_7297_p_ce); 
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
output  [8:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
input  [31:0] v2_1_q0;
output  [8:0] v2_1_address1;
output   v2_1_ce1;
output   v2_1_we1;
output  [31:0] v2_1_d1;
input  [31:0] v2_1_q1;
output  [8:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
input  [31:0] v2_0_q0;
output  [8:0] v2_0_address1;
output   v2_0_ce1;
output   v2_0_we1;
output  [31:0] v2_0_d1;
input  [31:0] v2_0_q1;
output  [6:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [6:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [6:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [6:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [6:0] v3_4_address0;
output   v3_4_ce0;
input  [31:0] v3_4_q0;
output  [6:0] v3_5_address0;
output   v3_5_ce0;
input  [31:0] v3_5_q0;
output  [6:0] v3_6_address0;
output   v3_6_ce0;
input  [31:0] v3_6_q0;
output  [6:0] v3_7_address0;
output   v3_7_ce0;
input  [31:0] v3_7_q0;
output  [31:0] grp_fu_2526_p_din0;
output  [31:0] grp_fu_2526_p_din1;
output  [0:0] grp_fu_2526_p_opcode;
input  [31:0] grp_fu_2526_p_dout0;
output   grp_fu_2526_p_ce;
output  [31:0] grp_fu_7297_p_din0;
output  [31:0] grp_fu_7297_p_din1;
input  [31:0] grp_fu_7297_p_dout0;
output   grp_fu_7297_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_675;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_365;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [10:0] v25_10_reg_666;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] v2_0_addr_reg_684;
reg   [8:0] v2_0_addr_reg_684_pp0_iter1_reg;
reg   [8:0] v2_1_addr_reg_689;
reg   [8:0] v2_1_addr_reg_689_pp0_iter1_reg;
reg   [8:0] v2_0_addr_64_reg_699;
reg   [8:0] v2_0_addr_64_reg_699_pp0_iter1_reg;
reg   [8:0] v2_1_addr_64_reg_705;
reg   [8:0] v2_1_addr_64_reg_705_pp0_iter1_reg;
wire   [0:0] tmp_29_fu_441_p3;
reg   [0:0] tmp_29_reg_741;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] tmp_29_reg_741_pp0_iter1_reg;
reg   [0:0] tmp_29_reg_741_pp0_iter2_reg;
reg   [31:0] v26_reg_748;
wire   [31:0] select_ln58_fu_448_p3;
reg   [31:0] select_ln58_reg_753;
reg   [31:0] v26_64_reg_758;
wire   [31:0] select_ln58_64_fu_456_p3;
reg   [31:0] select_ln58_64_reg_763;
reg   [31:0] v26_65_reg_768;
reg   [8:0] v2_0_addr_65_reg_773;
reg   [8:0] v2_0_addr_65_reg_773_pp0_iter1_reg;
reg   [8:0] v2_1_addr_65_reg_778;
reg   [8:0] v2_1_addr_65_reg_778_pp0_iter1_reg;
reg   [31:0] v26_66_reg_783;
reg   [8:0] v2_0_addr_66_reg_788;
reg   [8:0] v2_0_addr_66_reg_788_pp0_iter1_reg;
reg   [8:0] v2_0_addr_66_reg_788_pp0_iter2_reg;
reg   [8:0] v2_1_addr_66_reg_794;
reg   [8:0] v2_1_addr_66_reg_794_pp0_iter1_reg;
reg   [8:0] v2_1_addr_66_reg_794_pp0_iter2_reg;
reg   [31:0] v26_67_reg_800;
reg   [31:0] v26_68_reg_805;
reg   [31:0] v26_69_reg_810;
reg   [31:0] v26_70_reg_815;
wire   [31:0] grp_fu_351_p3;
reg   [31:0] select_ln58_65_reg_820;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_358_p3;
reg   [31:0] select_ln58_66_reg_825;
wire   [5:0] tmp_30_fu_501_p4;
reg   [5:0] tmp_30_reg_830;
reg   [5:0] tmp_30_reg_830_pp0_iter1_reg;
reg   [8:0] v2_0_addr_67_reg_836;
reg   [8:0] v2_0_addr_67_reg_836_pp0_iter1_reg;
reg   [8:0] v2_0_addr_67_reg_836_pp0_iter2_reg;
reg   [8:0] v2_1_addr_67_reg_842;
reg   [8:0] v2_1_addr_67_reg_842_pp0_iter1_reg;
reg   [8:0] v2_1_addr_67_reg_842_pp0_iter2_reg;
reg   [8:0] v2_0_addr_68_reg_848;
reg   [8:0] v2_0_addr_68_reg_848_pp0_iter1_reg;
reg   [8:0] v2_0_addr_68_reg_848_pp0_iter2_reg;
reg   [8:0] v2_1_addr_68_reg_853;
reg   [8:0] v2_1_addr_68_reg_853_pp0_iter1_reg;
reg   [8:0] v2_1_addr_68_reg_853_pp0_iter2_reg;
reg   [31:0] select_ln58_67_reg_858;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] select_ln58_68_reg_863;
reg   [8:0] v2_0_addr_69_reg_868;
reg   [8:0] v2_0_addr_69_reg_868_pp0_iter1_reg;
reg   [8:0] v2_0_addr_69_reg_868_pp0_iter2_reg;
reg   [8:0] v2_1_addr_69_reg_874;
reg   [8:0] v2_1_addr_69_reg_874_pp0_iter1_reg;
reg   [8:0] v2_1_addr_69_reg_874_pp0_iter2_reg;
reg   [31:0] select_ln58_69_reg_880;
reg   [31:0] v27_reg_885;
wire   [31:0] v28_fu_572_p1;
reg   [31:0] v27_61_reg_895;
wire   [31:0] v28_64_fu_576_p1;
reg   [31:0] v27_55_reg_905;
wire   [31:0] v28_65_fu_580_p1;
reg   [31:0] v27_56_reg_915;
wire   [31:0] v28_66_fu_584_p1;
reg   [31:0] v27_57_reg_925;
wire   [31:0] v28_67_fu_588_p1;
reg   [31:0] v27_58_reg_935;
wire   [31:0] v28_68_fu_592_p1;
reg   [31:0] v27_59_reg_945;
reg   [8:0] v2_0_addr_70_reg_950;
reg   [8:0] v2_0_addr_70_reg_950_pp0_iter2_reg;
reg   [8:0] v2_1_addr_70_reg_955;
reg   [8:0] v2_1_addr_70_reg_955_pp0_iter2_reg;
wire   [31:0] v28_69_fu_609_p1;
reg   [31:0] v27_60_reg_965;
wire   [31:0] select_ln58_70_fu_613_p3;
reg   [31:0] select_ln58_70_reg_970;
wire   [31:0] v28_70_fu_620_p1;
reg   [31:0] v29_57_reg_980;
reg   [31:0] v29_58_reg_985;
reg   [31:0] v29_59_reg_990;
wire   [31:0] bitcast_ln60_66_fu_642_p1;
reg   [31:0] bitcast_ln60_66_reg_995;
wire   [31:0] bitcast_ln60_67_fu_646_p1;
reg   [31:0] bitcast_ln60_67_reg_1001;
wire   [31:0] bitcast_ln60_68_fu_649_p1;
reg   [31:0] bitcast_ln60_68_reg_1007;
wire   [31:0] bitcast_ln60_69_fu_652_p1;
reg   [31:0] bitcast_ln60_69_reg_1013;
wire   [31:0] bitcast_ln60_70_fu_655_p1;
reg   [31:0] bitcast_ln60_70_reg_1019;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_10_fu_405_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_fu_389_p1;
wire   [63:0] zext_ln56_fu_435_p1;
wire   [63:0] zext_ln56_55_fu_481_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_56_fu_495_p1;
wire   [63:0] zext_ln56_57_fu_518_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln56_58_fu_543_p1;
wire   [63:0] zext_ln56_59_fu_566_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln56_60_fu_603_p1;
reg   [10:0] v25_fu_88;
wire   [10:0] add_ln55_fu_549_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_10;
reg    v3_ce0_local;
reg    v2_0_ce1_local;
reg   [8:0] v2_0_address1_local;
reg    v2_0_ce0_local;
reg   [8:0] v2_0_address0_local;
reg    v2_0_we1_local;
reg   [31:0] v2_0_d1_local;
wire   [31:0] bitcast_ln60_fu_624_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln60_64_fu_630_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln60_65_fu_636_p1;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage4;
reg    v2_0_we0_local;
reg   [31:0] v2_0_d0_local;
reg    v2_1_ce1_local;
reg   [8:0] v2_1_address1_local;
reg    v2_1_ce0_local;
reg   [8:0] v2_1_address0_local;
reg    v2_1_we1_local;
reg   [31:0] v2_1_d1_local;
reg    v2_1_we0_local;
reg   [31:0] v2_1_d0_local;
reg    v3_1_ce0_local;
reg    v3_2_ce0_local;
reg    v3_3_ce0_local;
reg    v3_4_ce0_local;
reg    v3_5_ce0_local;
reg    v3_6_ce0_local;
reg    v3_7_ce0_local;
reg   [31:0] grp_fu_342_p0;
reg   [31:0] grp_fu_342_p1;
reg   [31:0] grp_fu_346_p0;
wire   [8:0] trunc_ln55_fu_385_p1;
wire   [6:0] lshr_ln55_s_fu_395_p4;
wire   [7:0] tmp_s_fu_417_p4;
wire   [8:0] or_ln56_s_fu_427_p3;
wire   [6:0] tmp_28_fu_464_p4;
wire   [8:0] or_ln56_55_fu_473_p3;
wire   [8:0] or_ln56_56_fu_487_p3;
wire   [8:0] or_ln56_57_fu_510_p3;
wire   [0:0] tmp_31_fu_524_p3;
wire   [8:0] or_ln56_58_fu_531_p5;
wire   [8:0] or_ln56_59_fu_559_p3;
wire   [8:0] or_ln56_60_fu_596_p3;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
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
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_fu_88 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v25_fu_88 <= 11'd0;
    end else if (((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v25_fu_88 <= add_ln55_fu_549_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bitcast_ln60_66_reg_995 <= bitcast_ln60_66_fu_642_p1;
        bitcast_ln60_67_reg_1001 <= bitcast_ln60_67_fu_646_p1;
        bitcast_ln60_68_reg_1007 <= bitcast_ln60_68_fu_649_p1;
        bitcast_ln60_69_reg_1013 <= bitcast_ln60_69_fu_652_p1;
        bitcast_ln60_70_reg_1019 <= bitcast_ln60_70_fu_655_p1;
        v2_0_addr_69_reg_868[8 : 3] <= zext_ln56_59_fu_566_p1[8 : 3];
        v2_0_addr_69_reg_868_pp0_iter1_reg[8 : 3] <= v2_0_addr_69_reg_868[8 : 3];
        v2_0_addr_69_reg_868_pp0_iter2_reg[8 : 3] <= v2_0_addr_69_reg_868_pp0_iter1_reg[8 : 3];
        v2_0_addr_70_reg_950[8 : 3] <= zext_ln56_60_fu_603_p1[8 : 3];
        v2_0_addr_70_reg_950_pp0_iter2_reg[8 : 3] <= v2_0_addr_70_reg_950[8 : 3];
        v2_1_addr_69_reg_874[8 : 3] <= zext_ln56_59_fu_566_p1[8 : 3];
        v2_1_addr_69_reg_874_pp0_iter1_reg[8 : 3] <= v2_1_addr_69_reg_874[8 : 3];
        v2_1_addr_69_reg_874_pp0_iter2_reg[8 : 3] <= v2_1_addr_69_reg_874_pp0_iter1_reg[8 : 3];
        v2_1_addr_70_reg_955[8 : 3] <= zext_ln56_60_fu_603_p1[8 : 3];
        v2_1_addr_70_reg_955_pp0_iter2_reg[8 : 3] <= v2_1_addr_70_reg_955[8 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_365 <= grp_fu_2526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln58_64_reg_763 <= select_ln58_64_fu_456_p3;
        select_ln58_reg_753 <= select_ln58_fu_448_p3;
        tmp_29_reg_741 <= v25_10_reg_666[32'd9];
        tmp_29_reg_741_pp0_iter1_reg <= tmp_29_reg_741;
        tmp_29_reg_741_pp0_iter2_reg <= tmp_29_reg_741_pp0_iter1_reg;
        v26_64_reg_758 <= v3_1_q0;
        v26_65_reg_768 <= v3_2_q0;
        v26_66_reg_783 <= v3_3_q0;
        v26_67_reg_800 <= v3_4_q0;
        v26_68_reg_805 <= v3_5_q0;
        v26_69_reg_810 <= v3_6_q0;
        v26_70_reg_815 <= v3_7_q0;
        v26_reg_748 <= v3_q0;
        v2_0_addr_65_reg_773[8 : 2] <= zext_ln56_55_fu_481_p1[8 : 2];
        v2_0_addr_65_reg_773_pp0_iter1_reg[8 : 2] <= v2_0_addr_65_reg_773[8 : 2];
        v2_0_addr_66_reg_788[8 : 2] <= zext_ln56_56_fu_495_p1[8 : 2];
        v2_0_addr_66_reg_788_pp0_iter1_reg[8 : 2] <= v2_0_addr_66_reg_788[8 : 2];
        v2_0_addr_66_reg_788_pp0_iter2_reg[8 : 2] <= v2_0_addr_66_reg_788_pp0_iter1_reg[8 : 2];
        v2_1_addr_65_reg_778[8 : 2] <= zext_ln56_55_fu_481_p1[8 : 2];
        v2_1_addr_65_reg_778_pp0_iter1_reg[8 : 2] <= v2_1_addr_65_reg_778[8 : 2];
        v2_1_addr_66_reg_794[8 : 2] <= zext_ln56_56_fu_495_p1[8 : 2];
        v2_1_addr_66_reg_794_pp0_iter1_reg[8 : 2] <= v2_1_addr_66_reg_794[8 : 2];
        v2_1_addr_66_reg_794_pp0_iter2_reg[8 : 2] <= v2_1_addr_66_reg_794_pp0_iter1_reg[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln58_65_reg_820 <= grp_fu_351_p3;
        select_ln58_66_reg_825 <= grp_fu_358_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln58_67_reg_858 <= grp_fu_351_p3;
        select_ln58_68_reg_863 <= grp_fu_358_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln58_69_reg_880 <= grp_fu_351_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln58_70_reg_970 <= select_ln58_70_fu_613_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_30_reg_830 <= {{v25_10_reg_666[8:3]}};
        tmp_30_reg_830_pp0_iter1_reg <= tmp_30_reg_830;
        v2_0_addr_67_reg_836[8 : 3] <= zext_ln56_57_fu_518_p1[8 : 3];
        v2_0_addr_67_reg_836_pp0_iter1_reg[8 : 3] <= v2_0_addr_67_reg_836[8 : 3];
        v2_0_addr_67_reg_836_pp0_iter2_reg[8 : 3] <= v2_0_addr_67_reg_836_pp0_iter1_reg[8 : 3];
        v2_0_addr_68_reg_848[1] <= zext_ln56_58_fu_543_p1[1];
v2_0_addr_68_reg_848[8 : 3] <= zext_ln56_58_fu_543_p1[8 : 3];
        v2_0_addr_68_reg_848_pp0_iter1_reg[1] <= v2_0_addr_68_reg_848[1];
v2_0_addr_68_reg_848_pp0_iter1_reg[8 : 3] <= v2_0_addr_68_reg_848[8 : 3];
        v2_0_addr_68_reg_848_pp0_iter2_reg[1] <= v2_0_addr_68_reg_848_pp0_iter1_reg[1];
v2_0_addr_68_reg_848_pp0_iter2_reg[8 : 3] <= v2_0_addr_68_reg_848_pp0_iter1_reg[8 : 3];
        v2_1_addr_67_reg_842[8 : 3] <= zext_ln56_57_fu_518_p1[8 : 3];
        v2_1_addr_67_reg_842_pp0_iter1_reg[8 : 3] <= v2_1_addr_67_reg_842[8 : 3];
        v2_1_addr_67_reg_842_pp0_iter2_reg[8 : 3] <= v2_1_addr_67_reg_842_pp0_iter1_reg[8 : 3];
        v2_1_addr_68_reg_853[1] <= zext_ln56_58_fu_543_p1[1];
v2_1_addr_68_reg_853[8 : 3] <= zext_ln56_58_fu_543_p1[8 : 3];
        v2_1_addr_68_reg_853_pp0_iter1_reg[1] <= v2_1_addr_68_reg_853[1];
v2_1_addr_68_reg_853_pp0_iter1_reg[8 : 3] <= v2_1_addr_68_reg_853[8 : 3];
        v2_1_addr_68_reg_853_pp0_iter2_reg[1] <= v2_1_addr_68_reg_853_pp0_iter1_reg[1];
v2_1_addr_68_reg_853_pp0_iter2_reg[8 : 3] <= v2_1_addr_68_reg_853_pp0_iter1_reg[8 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_675 <= ap_sig_allocacmp_v25_10[32'd10];
        v25_10_reg_666 <= ap_sig_allocacmp_v25_10;
        v2_0_addr_64_reg_699[8 : 1] <= zext_ln56_fu_435_p1[8 : 1];
        v2_0_addr_64_reg_699_pp0_iter1_reg[8 : 1] <= v2_0_addr_64_reg_699[8 : 1];
        v2_0_addr_reg_684 <= zext_ln55_fu_389_p1;
        v2_0_addr_reg_684_pp0_iter1_reg <= v2_0_addr_reg_684;
        v2_1_addr_64_reg_705[8 : 1] <= zext_ln56_fu_435_p1[8 : 1];
        v2_1_addr_64_reg_705_pp0_iter1_reg[8 : 1] <= v2_1_addr_64_reg_705[8 : 1];
        v2_1_addr_reg_689 <= zext_ln55_fu_389_p1;
        v2_1_addr_reg_689_pp0_iter1_reg <= v2_1_addr_reg_689;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v27_55_reg_905 <= grp_fu_7297_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_56_reg_915 <= grp_fu_7297_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_57_reg_925 <= grp_fu_7297_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_58_reg_935 <= grp_fu_7297_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_59_reg_945 <= grp_fu_7297_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_60_reg_965 <= grp_fu_7297_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_61_reg_895 <= grp_fu_7297_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_reg_885 <= grp_fu_7297_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_57_reg_980 <= grp_fu_2526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_58_reg_985 <= grp_fu_2526_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_59_reg_990 <= grp_fu_2526_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_675 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
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
        ap_sig_allocacmp_v25_10 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_10 = v25_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_342_p0 = v28_70_fu_620_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_342_p0 = v28_69_fu_609_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_342_p0 = v28_68_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_342_p0 = v28_67_fu_588_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_342_p0 = v28_66_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_342_p0 = v28_65_fu_580_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_342_p0 = v28_64_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_342_p0 = v28_fu_572_p1;
    end else begin
        grp_fu_342_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_342_p1 = v27_60_reg_965;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_342_p1 = v27_59_reg_945;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_342_p1 = v27_58_reg_935;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_342_p1 = v27_57_reg_925;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_342_p1 = v27_56_reg_915;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_342_p1 = v27_55_reg_905;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_342_p1 = v27_61_reg_895;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_342_p1 = v27_reg_885;
    end else begin
        grp_fu_342_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_346_p0 = v26_70_reg_815;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_346_p0 = v26_69_reg_810;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_346_p0 = v26_68_reg_805;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_346_p0 = v26_67_reg_800;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_346_p0 = v26_66_reg_783;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_346_p0 = v26_65_reg_768;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_346_p0 = v26_64_reg_758;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_346_p0 = v26_reg_748;
    end else begin
        grp_fu_346_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_0_address0_local = v2_0_addr_70_reg_950_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_address0_local = v2_0_addr_69_reg_868_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_0_address0_local = v2_0_addr_68_reg_848_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_0_address0_local = v2_0_addr_67_reg_836_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address0_local = zext_ln56_60_fu_603_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address0_local = zext_ln56_58_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = zext_ln56_56_fu_495_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = zext_ln56_fu_435_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_0_address1_local = v2_0_addr_66_reg_788_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_0_address1_local = v2_0_addr_65_reg_773_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_address1_local = v2_0_addr_64_reg_699_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_0_address1_local = v2_0_addr_reg_684_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address1_local = zext_ln56_59_fu_566_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address1_local = zext_ln56_57_fu_518_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address1_local = zext_ln56_55_fu_481_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address1_local = zext_ln55_fu_389_p1;
    end else begin
        v2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v2_0_d0_local = bitcast_ln60_70_reg_1019;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v2_0_d0_local = bitcast_ln60_69_reg_1013;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v2_0_d0_local = bitcast_ln60_68_reg_1007;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v2_0_d0_local = bitcast_ln60_67_reg_1001;
        end else begin
            v2_0_d0_local = 'bx;
        end
    end else begin
        v2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_0_d1_local = bitcast_ln60_66_reg_995;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_0_d1_local = bitcast_ln60_65_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_d1_local = bitcast_ln60_64_fu_630_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_0_d1_local = bitcast_ln60_fu_624_p1;
    end else begin
        v2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_29_reg_741_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_29_reg_741_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_29_reg_741_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_29_reg_741_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_29_reg_741_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_29_reg_741_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_29_reg_741_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_29_reg_741_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_0_we1_local = 1'b1;
    end else begin
        v2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_1_address0_local = v2_1_addr_70_reg_955_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_1_address0_local = v2_1_addr_69_reg_874_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_1_address0_local = v2_1_addr_68_reg_853_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_1_address0_local = v2_1_addr_67_reg_842_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address0_local = zext_ln56_60_fu_603_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address0_local = zext_ln56_58_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = zext_ln56_56_fu_495_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = zext_ln56_fu_435_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_1_address1_local = v2_1_addr_66_reg_794_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_1_address1_local = v2_1_addr_65_reg_778_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_1_address1_local = v2_1_addr_64_reg_705_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_1_address1_local = v2_1_addr_reg_689_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address1_local = zext_ln56_59_fu_566_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address1_local = zext_ln56_57_fu_518_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address1_local = zext_ln56_55_fu_481_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address1_local = zext_ln55_fu_389_p1;
    end else begin
        v2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v2_1_d0_local = bitcast_ln60_70_reg_1019;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v2_1_d0_local = bitcast_ln60_69_reg_1013;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v2_1_d0_local = bitcast_ln60_68_reg_1007;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v2_1_d0_local = bitcast_ln60_67_reg_1001;
        end else begin
            v2_1_d0_local = 'bx;
        end
    end else begin
        v2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_1_d1_local = bitcast_ln60_66_reg_995;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_1_d1_local = bitcast_ln60_65_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_1_d1_local = bitcast_ln60_64_fu_630_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_1_d1_local = bitcast_ln60_fu_624_p1;
    end else begin
        v2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_29_reg_741_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_29_reg_741_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_29_reg_741_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_29_reg_741_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_29_reg_741_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_29_reg_741_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_29_reg_741_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_29_reg_741_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_1_we1_local = 1'b1;
    end else begin
        v2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln55_fu_549_p2 = (v25_10_reg_666 + 11'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_64_fu_630_p1 = reg_365;
assign bitcast_ln60_65_fu_636_p1 = reg_365;
assign bitcast_ln60_66_fu_642_p1 = reg_365;
assign bitcast_ln60_67_fu_646_p1 = v29_57_reg_980;
assign bitcast_ln60_68_fu_649_p1 = v29_58_reg_985;
assign bitcast_ln60_69_fu_652_p1 = v29_59_reg_990;
assign bitcast_ln60_70_fu_655_p1 = grp_fu_2526_p_dout0;
assign bitcast_ln60_fu_624_p1 = reg_365;
assign grp_fu_2526_p_ce = 1'b1;
assign grp_fu_2526_p_din0 = grp_fu_342_p0;
assign grp_fu_2526_p_din1 = grp_fu_342_p1;
assign grp_fu_2526_p_opcode = 2'd0;
assign grp_fu_351_p3 = ((tmp_29_reg_741[0:0] == 1'b1) ? v2_1_q1 : v2_0_q1);
assign grp_fu_358_p3 = ((tmp_29_reg_741[0:0] == 1'b1) ? v2_1_q0 : v2_0_q0);
assign grp_fu_7297_p_ce = 1'b1;
assign grp_fu_7297_p_din0 = grp_fu_346_p0;
assign grp_fu_7297_p_din1 = 32'd3345637376;
assign lshr_ln55_s_fu_395_p4 = {{ap_sig_allocacmp_v25_10[9:3]}};
assign or_ln56_55_fu_473_p3 = {{tmp_28_fu_464_p4}, {2'd2}};
assign or_ln56_56_fu_487_p3 = {{tmp_28_fu_464_p4}, {2'd3}};
assign or_ln56_57_fu_510_p3 = {{tmp_30_fu_501_p4}, {3'd4}};
assign or_ln56_58_fu_531_p5 = {{{{tmp_30_fu_501_p4}, {1'd1}}, {tmp_31_fu_524_p3}}, {1'd1}};
assign or_ln56_59_fu_559_p3 = {{tmp_30_reg_830}, {3'd6}};
assign or_ln56_60_fu_596_p3 = {{tmp_30_reg_830_pp0_iter1_reg}, {3'd7}};
assign or_ln56_s_fu_427_p3 = {{tmp_s_fu_417_p4}, {1'd1}};
assign select_ln58_64_fu_456_p3 = ((tmp_29_fu_441_p3[0:0] == 1'b1) ? v2_1_q0 : v2_0_q0);
assign select_ln58_70_fu_613_p3 = ((tmp_29_reg_741_pp0_iter1_reg[0:0] == 1'b1) ? v2_1_q0 : v2_0_q0);
assign select_ln58_fu_448_p3 = ((tmp_29_fu_441_p3[0:0] == 1'b1) ? v2_1_q1 : v2_0_q1);
assign tmp_28_fu_464_p4 = {{v25_10_reg_666[8:2]}};
assign tmp_29_fu_441_p3 = v25_10_reg_666[32'd9];
assign tmp_30_fu_501_p4 = {{v25_10_reg_666[8:3]}};
assign tmp_31_fu_524_p3 = v25_10_reg_666[32'd1];
assign tmp_s_fu_417_p4 = {{ap_sig_allocacmp_v25_10[8:1]}};
assign trunc_ln55_fu_385_p1 = ap_sig_allocacmp_v25_10[8:0];
assign v28_64_fu_576_p1 = select_ln58_64_reg_763;
assign v28_65_fu_580_p1 = select_ln58_65_reg_820;
assign v28_66_fu_584_p1 = select_ln58_66_reg_825;
assign v28_67_fu_588_p1 = select_ln58_67_reg_858;
assign v28_68_fu_592_p1 = select_ln58_68_reg_863;
assign v28_69_fu_609_p1 = select_ln58_69_reg_880;
assign v28_70_fu_620_p1 = select_ln58_70_reg_970;
assign v28_fu_572_p1 = select_ln58_reg_753;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_address1 = v2_0_address1_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = v2_0_d0_local;
assign v2_0_d1 = v2_0_d1_local;
assign v2_0_we0 = v2_0_we0_local;
assign v2_0_we1 = v2_0_we1_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_address1 = v2_1_address1_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = v2_1_d0_local;
assign v2_1_d1 = v2_1_d1_local;
assign v2_1_we0 = v2_1_we0_local;
assign v2_1_we1 = v2_1_we1_local;
assign v3_1_address0 = zext_ln55_10_fu_405_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_2_address0 = zext_ln55_10_fu_405_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_3_address0 = zext_ln55_10_fu_405_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_4_address0 = zext_ln55_10_fu_405_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_5_address0 = zext_ln55_10_fu_405_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_6_address0 = zext_ln55_10_fu_405_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_7_address0 = zext_ln55_10_fu_405_p1;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_address0 = zext_ln55_10_fu_405_p1;
assign v3_ce0 = v3_ce0_local;
assign zext_ln55_10_fu_405_p1 = lshr_ln55_s_fu_395_p4;
assign zext_ln55_fu_389_p1 = trunc_ln55_fu_385_p1;
assign zext_ln56_55_fu_481_p1 = or_ln56_55_fu_473_p3;
assign zext_ln56_56_fu_495_p1 = or_ln56_56_fu_487_p3;
assign zext_ln56_57_fu_518_p1 = or_ln56_57_fu_510_p3;
assign zext_ln56_58_fu_543_p1 = or_ln56_58_fu_531_p5;
assign zext_ln56_59_fu_566_p1 = or_ln56_59_fu_559_p3;
assign zext_ln56_60_fu_603_p1 = or_ln56_60_fu_596_p3;
assign zext_ln56_fu_435_p1 = or_ln56_s_fu_427_p3;
always @ (posedge ap_clk) begin
    v2_0_addr_64_reg_699[0] <= 1'b1;
    v2_0_addr_64_reg_699_pp0_iter1_reg[0] <= 1'b1;
    v2_1_addr_64_reg_705[0] <= 1'b1;
    v2_1_addr_64_reg_705_pp0_iter1_reg[0] <= 1'b1;
    v2_0_addr_65_reg_773[1:0] <= 2'b10;
    v2_0_addr_65_reg_773_pp0_iter1_reg[1:0] <= 2'b10;
    v2_1_addr_65_reg_778[1:0] <= 2'b10;
    v2_1_addr_65_reg_778_pp0_iter1_reg[1:0] <= 2'b10;
    v2_0_addr_66_reg_788[1:0] <= 2'b11;
    v2_0_addr_66_reg_788_pp0_iter1_reg[1:0] <= 2'b11;
    v2_0_addr_66_reg_788_pp0_iter2_reg[1:0] <= 2'b11;
    v2_1_addr_66_reg_794[1:0] <= 2'b11;
    v2_1_addr_66_reg_794_pp0_iter1_reg[1:0] <= 2'b11;
    v2_1_addr_66_reg_794_pp0_iter2_reg[1:0] <= 2'b11;
    v2_0_addr_67_reg_836[2:0] <= 3'b100;
    v2_0_addr_67_reg_836_pp0_iter1_reg[2:0] <= 3'b100;
    v2_0_addr_67_reg_836_pp0_iter2_reg[2:0] <= 3'b100;
    v2_1_addr_67_reg_842[2:0] <= 3'b100;
    v2_1_addr_67_reg_842_pp0_iter1_reg[2:0] <= 3'b100;
    v2_1_addr_67_reg_842_pp0_iter2_reg[2:0] <= 3'b100;
    v2_0_addr_68_reg_848[0] <= 1'b1;
    v2_0_addr_68_reg_848[2] <= 1'b1;
    v2_0_addr_68_reg_848_pp0_iter1_reg[0] <= 1'b1;
    v2_0_addr_68_reg_848_pp0_iter1_reg[2] <= 1'b1;
    v2_0_addr_68_reg_848_pp0_iter2_reg[0] <= 1'b1;
    v2_0_addr_68_reg_848_pp0_iter2_reg[2] <= 1'b1;
    v2_1_addr_68_reg_853[0] <= 1'b1;
    v2_1_addr_68_reg_853[2] <= 1'b1;
    v2_1_addr_68_reg_853_pp0_iter1_reg[0] <= 1'b1;
    v2_1_addr_68_reg_853_pp0_iter1_reg[2] <= 1'b1;
    v2_1_addr_68_reg_853_pp0_iter2_reg[0] <= 1'b1;
    v2_1_addr_68_reg_853_pp0_iter2_reg[2] <= 1'b1;
    v2_0_addr_69_reg_868[2:0] <= 3'b110;
    v2_0_addr_69_reg_868_pp0_iter1_reg[2:0] <= 3'b110;
    v2_0_addr_69_reg_868_pp0_iter2_reg[2:0] <= 3'b110;
    v2_1_addr_69_reg_874[2:0] <= 3'b110;
    v2_1_addr_69_reg_874_pp0_iter1_reg[2:0] <= 3'b110;
    v2_1_addr_69_reg_874_pp0_iter2_reg[2:0] <= 3'b110;
    v2_0_addr_70_reg_950[2:0] <= 3'b111;
    v2_0_addr_70_reg_950_pp0_iter2_reg[2:0] <= 3'b111;
    v2_1_addr_70_reg_955[2:0] <= 3'b111;
    v2_1_addr_70_reg_955_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 