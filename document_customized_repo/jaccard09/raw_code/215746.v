module SgdLR_sw_SgdLR_sw_Pipeline_label_433 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_address0,v2_ce0,v2_we0,v2_d0,v2_q0,v2_address1,v2_ce1,v2_we1,v2_d1,v2_q1,v3_address0,v3_ce0,v3_q0,v3_1_address0,v3_1_ce0,v3_1_q0,v3_2_address0,v3_2_ce0,v3_2_q0,v3_3_address0,v3_3_ce0,v3_3_q0,v3_4_address0,v3_4_ce0,v3_4_q0,v3_5_address0,v3_5_ce0,v3_5_q0,v3_6_address0,v3_6_ce0,v3_6_q0,v3_7_address0,v3_7_ce0,v3_7_q0,grp_fu_1490_p_din0,grp_fu_1490_p_din1,grp_fu_1490_p_opcode,grp_fu_1490_p_dout0,grp_fu_1490_p_ce,grp_fu_4578_p_din0,grp_fu_4578_p_din1,grp_fu_4578_p_dout0,grp_fu_4578_p_ce); 
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
output  [9:0] v2_address0;
output   v2_ce0;
output   v2_we0;
output  [31:0] v2_d0;
input  [31:0] v2_q0;
output  [9:0] v2_address1;
output   v2_ce1;
output   v2_we1;
output  [31:0] v2_d1;
input  [31:0] v2_q1;
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
output  [31:0] grp_fu_1490_p_din0;
output  [31:0] grp_fu_1490_p_din1;
output  [0:0] grp_fu_1490_p_opcode;
input  [31:0] grp_fu_1490_p_dout0;
output   grp_fu_1490_p_ce;
output  [31:0] grp_fu_4578_p_din0;
output  [31:0] grp_fu_4578_p_din1;
input  [31:0] grp_fu_4578_p_dout0;
output   grp_fu_4578_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_523;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_274;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] tmp_fu_286_p3;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] lshr_ln55_s_fu_299_p4;
reg   [6:0] lshr_ln55_s_reg_527;
reg   [6:0] lshr_ln55_s_reg_527_pp0_iter1_reg;
reg   [9:0] v2_addr_reg_540;
reg   [9:0] v2_addr_reg_540_pp0_iter1_reg;
reg   [9:0] v2_addr_71_reg_550;
reg   [9:0] v2_addr_71_reg_550_pp0_iter1_reg;
reg   [7:0] tmp_11_reg_556;
reg   [0:0] tmp_12_reg_577;
reg   [31:0] v26_reg_597;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v2_load_reg_602;
reg   [31:0] v26_71_reg_607;
reg   [31:0] v2_load_71_reg_612;
reg   [31:0] v26_72_reg_617;
reg   [9:0] v2_addr_72_reg_622;
reg   [9:0] v2_addr_72_reg_622_pp0_iter1_reg;
reg   [31:0] v26_73_reg_627;
reg   [9:0] v2_addr_73_reg_632;
reg   [9:0] v2_addr_73_reg_632_pp0_iter1_reg;
reg   [9:0] v2_addr_73_reg_632_pp0_iter2_reg;
reg   [31:0] v26_74_reg_638;
reg   [31:0] v26_75_reg_643;
reg   [31:0] v26_76_reg_648;
reg   [31:0] v26_77_reg_653;
reg   [31:0] v2_load_72_reg_658;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] v2_load_73_reg_663;
reg   [9:0] v2_addr_74_reg_668;
reg   [9:0] v2_addr_74_reg_668_pp0_iter1_reg;
reg   [9:0] v2_addr_74_reg_668_pp0_iter2_reg;
reg   [9:0] v2_addr_75_reg_674;
reg   [9:0] v2_addr_75_reg_674_pp0_iter1_reg;
reg   [9:0] v2_addr_75_reg_674_pp0_iter2_reg;
reg   [31:0] v2_load_74_reg_679;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] v2_load_75_reg_684;
reg   [9:0] v2_addr_76_reg_689;
reg   [9:0] v2_addr_76_reg_689_pp0_iter1_reg;
reg   [9:0] v2_addr_76_reg_689_pp0_iter2_reg;
reg   [31:0] v2_load_76_reg_695;
reg   [31:0] v27_reg_700;
wire   [31:0] v28_fu_436_p1;
reg   [31:0] v27_71_reg_710;
wire   [31:0] v28_71_fu_440_p1;
reg   [31:0] v27_72_reg_720;
wire   [31:0] v28_72_fu_444_p1;
reg   [31:0] v27_73_reg_730;
wire   [31:0] v28_73_fu_448_p1;
reg   [31:0] v27_74_reg_740;
wire   [31:0] v28_74_fu_452_p1;
reg   [31:0] v27_75_reg_750;
wire   [31:0] v28_75_fu_456_p1;
reg   [31:0] v27_76_reg_760;
reg   [9:0] v2_addr_77_reg_765;
reg   [9:0] v2_addr_77_reg_765_pp0_iter2_reg;
wire   [31:0] v28_76_fu_472_p1;
reg   [31:0] v27_77_reg_775;
reg   [31:0] v2_load_77_reg_780;
wire   [31:0] v28_77_fu_481_p1;
reg   [31:0] v29_74_reg_790;
reg   [31:0] v29_75_reg_795;
reg   [31:0] v29_76_reg_800;
reg   [31:0] v29_77_reg_805;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_10_fu_309_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_fu_294_p1;
wire   [63:0] zext_ln56_fu_339_p1;
wire   [63:0] zext_ln56_55_fu_380_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_56_fu_392_p1;
wire   [63:0] zext_ln56_57_fu_404_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln56_58_fu_419_p1;
wire   [63:0] zext_ln56_59_fu_431_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln56_60_fu_467_p1;
reg   [10:0] v25_fu_84;
wire   [10:0] add_ln55_fu_362_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_10;
reg    v3_ce0_local;
reg    v2_ce1_local;
reg   [9:0] v2_address1_local;
reg    v2_ce0_local;
reg   [9:0] v2_address0_local;
reg    v2_we1_local;
reg   [31:0] v2_d1_local;
wire   [31:0] bitcast_ln60_fu_476_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln60_64_fu_485_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln60_65_fu_490_p1;
wire    ap_block_pp0_stage7;
wire   [31:0] bitcast_ln60_66_fu_495_p1;
wire    ap_block_pp0_stage4;
reg    v2_we0_local;
reg   [31:0] v2_d0_local;
wire   [31:0] bitcast_ln60_67_fu_500_p1;
wire   [31:0] bitcast_ln60_68_fu_504_p1;
wire   [31:0] bitcast_ln60_69_fu_508_p1;
wire   [31:0] bitcast_ln60_70_fu_512_p1;
reg    v3_1_ce0_local;
reg    v3_2_ce0_local;
reg    v3_3_ce0_local;
reg    v3_4_ce0_local;
reg    v3_5_ce0_local;
reg    v3_6_ce0_local;
reg    v3_7_ce0_local;
reg   [31:0] grp_fu_265_p0;
reg   [31:0] grp_fu_265_p1;
reg   [31:0] grp_fu_269_p0;
wire   [8:0] tmp_s_fu_321_p4;
wire   [9:0] or_ln55_s_fu_331_p3;
wire   [9:0] or_ln55_55_fu_373_p3;
wire   [9:0] or_ln55_56_fu_385_p3;
wire   [9:0] or_ln55_57_fu_397_p3;
wire   [9:0] or_ln55_58_fu_409_p5;
wire   [9:0] or_ln55_59_fu_424_p3;
wire   [9:0] or_ln55_60_fu_460_p3;
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
#0 v25_fu_84 = 11'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_286_p3 == 1'd0))) begin
            v25_fu_84 <= add_ln55_fu_362_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_84 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln55_s_reg_527 <= {{ap_sig_allocacmp_v25_10[9:3]}};
        lshr_ln55_s_reg_527_pp0_iter1_reg <= lshr_ln55_s_reg_527;
        tmp_11_reg_556 <= {{ap_sig_allocacmp_v25_10[9:2]}};
        tmp_12_reg_577 <= ap_sig_allocacmp_v25_10[32'd1];
        tmp_reg_523 <= ap_sig_allocacmp_v25_10[32'd10];
        v2_addr_71_reg_550[9 : 1] <= zext_ln56_fu_339_p1[9 : 1];
        v2_addr_71_reg_550_pp0_iter1_reg[9 : 1] <= v2_addr_71_reg_550[9 : 1];
        v2_addr_reg_540 <= zext_ln55_fu_294_p1;
        v2_addr_reg_540_pp0_iter1_reg <= v2_addr_reg_540;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_274 <= grp_fu_1490_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v26_71_reg_607 <= v3_1_q0;
        v26_72_reg_617 <= v3_2_q0;
        v26_73_reg_627 <= v3_3_q0;
        v26_74_reg_638 <= v3_4_q0;
        v26_75_reg_643 <= v3_5_q0;
        v26_76_reg_648 <= v3_6_q0;
        v26_77_reg_653 <= v3_7_q0;
        v26_reg_597 <= v3_q0;
        v2_addr_72_reg_622[9 : 2] <= zext_ln56_55_fu_380_p1[9 : 2];
        v2_addr_72_reg_622_pp0_iter1_reg[9 : 2] <= v2_addr_72_reg_622[9 : 2];
        v2_addr_73_reg_632[9 : 2] <= zext_ln56_56_fu_392_p1[9 : 2];
        v2_addr_73_reg_632_pp0_iter1_reg[9 : 2] <= v2_addr_73_reg_632[9 : 2];
        v2_addr_73_reg_632_pp0_iter2_reg[9 : 2] <= v2_addr_73_reg_632_pp0_iter1_reg[9 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_71_reg_710 <= grp_fu_4578_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v27_72_reg_720 <= grp_fu_4578_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_73_reg_730 <= grp_fu_4578_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_74_reg_740 <= grp_fu_4578_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_75_reg_750 <= grp_fu_4578_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_76_reg_760 <= grp_fu_4578_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_77_reg_775 <= grp_fu_4578_p_dout0;
        v2_load_77_reg_780 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_reg_700 <= grp_fu_4578_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_74_reg_790 <= grp_fu_1490_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_75_reg_795 <= grp_fu_1490_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_76_reg_800 <= grp_fu_1490_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_77_reg_805 <= grp_fu_1490_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_addr_74_reg_668[9 : 3] <= zext_ln56_57_fu_404_p1[9 : 3];
        v2_addr_74_reg_668_pp0_iter1_reg[9 : 3] <= v2_addr_74_reg_668[9 : 3];
        v2_addr_74_reg_668_pp0_iter2_reg[9 : 3] <= v2_addr_74_reg_668_pp0_iter1_reg[9 : 3];
        v2_addr_75_reg_674[1] <= zext_ln56_58_fu_419_p1[1];
v2_addr_75_reg_674[9 : 3] <= zext_ln56_58_fu_419_p1[9 : 3];
        v2_addr_75_reg_674_pp0_iter1_reg[1] <= v2_addr_75_reg_674[1];
v2_addr_75_reg_674_pp0_iter1_reg[9 : 3] <= v2_addr_75_reg_674[9 : 3];
        v2_addr_75_reg_674_pp0_iter2_reg[1] <= v2_addr_75_reg_674_pp0_iter1_reg[1];
v2_addr_75_reg_674_pp0_iter2_reg[9 : 3] <= v2_addr_75_reg_674_pp0_iter1_reg[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_addr_76_reg_689[9 : 3] <= zext_ln56_59_fu_431_p1[9 : 3];
        v2_addr_76_reg_689_pp0_iter1_reg[9 : 3] <= v2_addr_76_reg_689[9 : 3];
        v2_addr_76_reg_689_pp0_iter2_reg[9 : 3] <= v2_addr_76_reg_689_pp0_iter1_reg[9 : 3];
        v2_addr_77_reg_765[9 : 3] <= zext_ln56_60_fu_467_p1[9 : 3];
        v2_addr_77_reg_765_pp0_iter2_reg[9 : 3] <= v2_addr_77_reg_765[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_load_71_reg_612 <= v2_q0;
        v2_load_reg_602 <= v2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_load_72_reg_658 <= v2_q1;
        v2_load_73_reg_663 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_load_74_reg_679 <= v2_q1;
        v2_load_75_reg_684 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_load_76_reg_695 <= v2_q1;
    end
end
always @ (*) begin
    if (((tmp_reg_523 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_v25_10 = v25_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_265_p0 = v28_77_fu_481_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_265_p0 = v28_76_fu_472_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_265_p0 = v28_75_fu_456_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_265_p0 = v28_74_fu_452_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_265_p0 = v28_73_fu_448_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_265_p0 = v28_72_fu_444_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_265_p0 = v28_71_fu_440_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_265_p0 = v28_fu_436_p1;
    end else begin
        grp_fu_265_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_265_p1 = v27_77_reg_775;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_265_p1 = v27_76_reg_760;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_265_p1 = v27_75_reg_750;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_265_p1 = v27_74_reg_740;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_265_p1 = v27_73_reg_730;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_265_p1 = v27_72_reg_720;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_265_p1 = v27_71_reg_710;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_265_p1 = v27_reg_700;
    end else begin
        grp_fu_265_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_269_p0 = v26_77_reg_653;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_269_p0 = v26_76_reg_648;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_269_p0 = v26_75_reg_643;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_269_p0 = v26_74_reg_638;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_269_p0 = v26_73_reg_627;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_269_p0 = v26_72_reg_617;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_269_p0 = v26_71_reg_607;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_269_p0 = v26_reg_597;
    end else begin
        grp_fu_269_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_address0_local = v2_addr_77_reg_765_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_address0_local = v2_addr_76_reg_689_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_address0_local = v2_addr_75_reg_674_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_address0_local = v2_addr_74_reg_668_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_address0_local = zext_ln56_60_fu_467_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_address0_local = zext_ln56_58_fu_419_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_address0_local = zext_ln56_56_fu_392_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_address0_local = zext_ln56_fu_339_p1;
    end else begin
        v2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_address1_local = v2_addr_73_reg_632_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_address1_local = v2_addr_72_reg_622_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_address1_local = v2_addr_71_reg_550_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_address1_local = v2_addr_reg_540_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_address1_local = zext_ln56_59_fu_431_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_address1_local = zext_ln56_57_fu_404_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_address1_local = zext_ln56_55_fu_380_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_address1_local = zext_ln55_fu_294_p1;
    end else begin
        v2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v2_d0_local = bitcast_ln60_70_fu_512_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v2_d0_local = bitcast_ln60_69_fu_508_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v2_d0_local = bitcast_ln60_68_fu_504_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v2_d0_local = bitcast_ln60_67_fu_500_p1;
        end else begin
            v2_d0_local = 'bx;
        end
    end else begin
        v2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_d1_local = bitcast_ln60_66_fu_495_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_d1_local = bitcast_ln60_65_fu_490_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_d1_local = bitcast_ln60_64_fu_485_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_d1_local = bitcast_ln60_fu_476_p1;
    end else begin
        v2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_we0_local = 1'b1;
    end else begin
        v2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_we1_local = 1'b1;
    end else begin
        v2_we1_local = 1'b0;
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
assign add_ln55_fu_362_p2 = (ap_sig_allocacmp_v25_10 + 11'd8);
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
assign bitcast_ln60_64_fu_485_p1 = reg_274;
assign bitcast_ln60_65_fu_490_p1 = reg_274;
assign bitcast_ln60_66_fu_495_p1 = reg_274;
assign bitcast_ln60_67_fu_500_p1 = v29_74_reg_790;
assign bitcast_ln60_68_fu_504_p1 = v29_75_reg_795;
assign bitcast_ln60_69_fu_508_p1 = v29_76_reg_800;
assign bitcast_ln60_70_fu_512_p1 = v29_77_reg_805;
assign bitcast_ln60_fu_476_p1 = reg_274;
assign grp_fu_1490_p_ce = 1'b1;
assign grp_fu_1490_p_din0 = grp_fu_265_p0;
assign grp_fu_1490_p_din1 = grp_fu_265_p1;
assign grp_fu_1490_p_opcode = 2'd0;
assign grp_fu_4578_p_ce = 1'b1;
assign grp_fu_4578_p_din0 = grp_fu_269_p0;
assign grp_fu_4578_p_din1 = 32'd3345637376;
assign lshr_ln55_s_fu_299_p4 = {{ap_sig_allocacmp_v25_10[9:3]}};
assign or_ln55_55_fu_373_p3 = {{tmp_11_reg_556}, {2'd2}};
assign or_ln55_56_fu_385_p3 = {{tmp_11_reg_556}, {2'd3}};
assign or_ln55_57_fu_397_p3 = {{lshr_ln55_s_reg_527}, {3'd4}};
assign or_ln55_58_fu_409_p5 = {{{{lshr_ln55_s_reg_527}, {1'd1}}, {tmp_12_reg_577}}, {1'd1}};
assign or_ln55_59_fu_424_p3 = {{lshr_ln55_s_reg_527}, {3'd6}};
assign or_ln55_60_fu_460_p3 = {{lshr_ln55_s_reg_527_pp0_iter1_reg}, {3'd7}};
assign or_ln55_s_fu_331_p3 = {{tmp_s_fu_321_p4}, {1'd1}};
assign tmp_fu_286_p3 = ap_sig_allocacmp_v25_10[32'd10];
assign tmp_s_fu_321_p4 = {{ap_sig_allocacmp_v25_10[9:1]}};
assign v28_71_fu_440_p1 = v2_load_71_reg_612;
assign v28_72_fu_444_p1 = v2_load_72_reg_658;
assign v28_73_fu_448_p1 = v2_load_73_reg_663;
assign v28_74_fu_452_p1 = v2_load_74_reg_679;
assign v28_75_fu_456_p1 = v2_load_75_reg_684;
assign v28_76_fu_472_p1 = v2_load_76_reg_695;
assign v28_77_fu_481_p1 = v2_load_77_reg_780;
assign v28_fu_436_p1 = v2_load_reg_602;
assign v2_address0 = v2_address0_local;
assign v2_address1 = v2_address1_local;
assign v2_ce0 = v2_ce0_local;
assign v2_ce1 = v2_ce1_local;
assign v2_d0 = v2_d0_local;
assign v2_d1 = v2_d1_local;
assign v2_we0 = v2_we0_local;
assign v2_we1 = v2_we1_local;
assign v3_1_address0 = zext_ln55_10_fu_309_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_2_address0 = zext_ln55_10_fu_309_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_3_address0 = zext_ln55_10_fu_309_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_4_address0 = zext_ln55_10_fu_309_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_5_address0 = zext_ln55_10_fu_309_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_6_address0 = zext_ln55_10_fu_309_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_7_address0 = zext_ln55_10_fu_309_p1;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_address0 = zext_ln55_10_fu_309_p1;
assign v3_ce0 = v3_ce0_local;
assign zext_ln55_10_fu_309_p1 = lshr_ln55_s_fu_299_p4;
assign zext_ln55_fu_294_p1 = ap_sig_allocacmp_v25_10;
assign zext_ln56_55_fu_380_p1 = or_ln55_55_fu_373_p3;
assign zext_ln56_56_fu_392_p1 = or_ln55_56_fu_385_p3;
assign zext_ln56_57_fu_404_p1 = or_ln55_57_fu_397_p3;
assign zext_ln56_58_fu_419_p1 = or_ln55_58_fu_409_p5;
assign zext_ln56_59_fu_431_p1 = or_ln55_59_fu_424_p3;
assign zext_ln56_60_fu_467_p1 = or_ln55_60_fu_460_p3;
assign zext_ln56_fu_339_p1 = or_ln55_s_fu_331_p3;
always @ (posedge ap_clk) begin
    v2_addr_71_reg_550[0] <= 1'b1;
    v2_addr_71_reg_550_pp0_iter1_reg[0] <= 1'b1;
    v2_addr_72_reg_622[1:0] <= 2'b10;
    v2_addr_72_reg_622_pp0_iter1_reg[1:0] <= 2'b10;
    v2_addr_73_reg_632[1:0] <= 2'b11;
    v2_addr_73_reg_632_pp0_iter1_reg[1:0] <= 2'b11;
    v2_addr_73_reg_632_pp0_iter2_reg[1:0] <= 2'b11;
    v2_addr_74_reg_668[2:0] <= 3'b100;
    v2_addr_74_reg_668_pp0_iter1_reg[2:0] <= 3'b100;
    v2_addr_74_reg_668_pp0_iter2_reg[2:0] <= 3'b100;
    v2_addr_75_reg_674[0] <= 1'b1;
    v2_addr_75_reg_674[2] <= 1'b1;
    v2_addr_75_reg_674_pp0_iter1_reg[0] <= 1'b1;
    v2_addr_75_reg_674_pp0_iter1_reg[2] <= 1'b1;
    v2_addr_75_reg_674_pp0_iter2_reg[0] <= 1'b1;
    v2_addr_75_reg_674_pp0_iter2_reg[2] <= 1'b1;
    v2_addr_76_reg_689[2:0] <= 3'b110;
    v2_addr_76_reg_689_pp0_iter1_reg[2:0] <= 3'b110;
    v2_addr_76_reg_689_pp0_iter2_reg[2:0] <= 3'b110;
    v2_addr_77_reg_765[2:0] <= 3'b111;
    v2_addr_77_reg_765_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 