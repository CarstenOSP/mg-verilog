module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_4,empty_8,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,empty_9,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,bitcast_ln24,llike_address0,llike_ce0,llike_q0,empty,min_p_137_out,min_p_137_out_ap_vld,grp_fu_253_p_din0,grp_fu_253_p_din1,grp_fu_253_p_opcode,grp_fu_253_p_dout0,grp_fu_253_p_ce,grp_fu_530_p_din0,grp_fu_530_p_din1,grp_fu_530_p_opcode,grp_fu_530_p_dout0,grp_fu_530_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_4;
input  [7:0] empty_8;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
input  [5:0] empty_9;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [63:0] bitcast_ln24;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [12:0] empty;
output  [63:0] min_p_137_out;
output   min_p_137_out_ap_vld;
output  [63:0] grp_fu_253_p_din0;
output  [63:0] grp_fu_253_p_din1;
output  [1:0] grp_fu_253_p_opcode;
input  [63:0] grp_fu_253_p_dout0;
output   grp_fu_253_p_ce;
output  [63:0] grp_fu_530_p_din0;
output  [63:0] grp_fu_530_p_din1;
output  [4:0] grp_fu_530_p_opcode;
input  [0:0] grp_fu_530_p_dout0;
output   grp_fu_530_p_ce;
reg ap_idle;
reg min_p_137_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_15_reg_893;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_232;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_856;
wire   [6:0] add_ln25_1_fu_350_p2;
reg   [6:0] add_ln25_1_reg_887;
reg   [0:0] tmp_15_reg_893_pp0_iter1_reg;
reg   [0:0] tmp_15_reg_893_pp0_iter2_reg;
reg   [0:0] tmp_15_reg_893_pp0_iter3_reg;
reg   [63:0] llike_1_load_reg_897;
reg   [63:0] llike_load_reg_902;
reg   [63:0] transition_load_1_reg_907;
reg   [63:0] llike_1_load_1_reg_912;
wire   [63:0] bitcast_ln27_fu_437_p1;
reg   [63:0] llike_load_1_reg_937;
reg   [63:0] transition_load_3_reg_942;
wire   [63:0] bitcast_ln27_1_fu_442_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln27_2_fu_446_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln27_3_fu_451_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] add1_reg_962;
reg   [63:0] add52_1_reg_967;
reg   [63:0] add52_2_reg_972;
reg   [63:0] add52_3_reg_977;
reg   [63:0] p_reg_982;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_1_reg_989;
wire   [0:0] and_ln29_1_fu_545_p2;
reg   [0:0] and_ln29_1_reg_996;
reg   [63:0] p_1_reg_1001;
wire   [63:0] min_p_3_fu_551_p3;
reg   [63:0] min_p_3_reg_1008;
reg   [63:0] p_2_reg_1015;
wire   [0:0] and_ln29_3_fu_633_p2;
reg   [0:0] and_ln29_3_reg_1022;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_3_reg_1027;
wire   [63:0] min_p_6_fu_639_p3;
reg   [63:0] min_p_6_reg_1034;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_721_p2;
reg   [0:0] and_ln29_5_reg_1041;
wire   [63:0] min_p_8_fu_727_p3;
reg   [63:0] min_p_8_reg_1046;
reg   [0:0] tmp_18_reg_1053;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_271_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_284_p1;
wire   [63:0] zext_ln26_1_fu_313_p1;
wire   [63:0] zext_ln27_1_fu_326_p1;
wire   [63:0] zext_ln26_2_fu_345_p1;
wire   [63:0] zext_ln27_2_fu_394_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_4_fu_417_p1;
wire   [63:0] zext_ln27_3_fu_432_p1;
reg   [63:0] min_p_fu_92;
wire   [63:0] min_p_10_fu_815_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_96;
wire   [5:0] add_ln25_2_fu_455_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage0_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_224_p0;
reg   [63:0] grp_fu_224_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_228_p0;
reg   [63:0] grp_fu_228_p1;
wire   [4:0] lshr_ln7_1_fu_253_p4;
wire   [12:0] tmp_12_fu_263_p3;
wire   [11:0] add_ln_fu_276_p3;
wire   [5:0] add_ln25_fu_289_p2;
wire   [4:0] lshr_ln8_1_fu_295_p4;
wire   [12:0] tmp_13_fu_305_p3;
wire   [11:0] add_ln27_1_fu_318_p3;
wire   [4:0] add_ln8_fu_331_p2;
wire   [12:0] tmp_14_fu_337_p3;
wire   [6:0] zext_ln11_fu_249_p1;
wire   [11:0] shl_ln2_fu_364_p3;
wire   [11:0] add_ln27_fu_371_p2;
wire   [5:0] tmp_9_fu_377_p4;
wire   [11:0] add_ln27_3_fu_387_p3;
wire   [5:0] lshr_ln8_2_fu_399_p4;
wire   [12:0] zext_ln26_3_fu_408_p1;
wire   [12:0] add_ln26_fu_412_p2;
wire   [5:0] trunc_ln27_fu_422_p1;
wire   [11:0] add_ln27_4_fu_425_p3;
wire   [63:0] bitcast_ln29_fu_469_p1;
wire   [63:0] bitcast_ln29_1_fu_486_p1;
wire   [10:0] tmp_3_fu_472_p4;
wire   [51:0] trunc_ln29_fu_482_p1;
wire   [0:0] icmp_ln29_1_fu_509_p2;
wire   [0:0] icmp_ln29_fu_503_p2;
wire   [10:0] tmp_4_fu_489_p4;
wire   [51:0] trunc_ln29_1_fu_499_p1;
wire   [0:0] icmp_ln29_3_fu_527_p2;
wire   [0:0] icmp_ln29_2_fu_521_p2;
wire   [0:0] or_ln29_fu_515_p2;
wire   [0:0] and_ln29_fu_539_p2;
wire   [0:0] or_ln29_1_fu_533_p2;
wire   [63:0] bitcast_ln29_2_fu_557_p1;
wire   [63:0] bitcast_ln29_3_fu_574_p1;
wire   [10:0] tmp_6_fu_560_p4;
wire   [51:0] trunc_ln29_2_fu_570_p1;
wire   [0:0] icmp_ln29_5_fu_597_p2;
wire   [0:0] icmp_ln29_4_fu_591_p2;
wire   [10:0] tmp_7_fu_577_p4;
wire   [51:0] trunc_ln29_3_fu_587_p1;
wire   [0:0] icmp_ln29_7_fu_615_p2;
wire   [0:0] icmp_ln29_6_fu_609_p2;
wire   [0:0] or_ln29_3_fu_621_p2;
wire   [0:0] or_ln29_2_fu_603_p2;
wire   [0:0] and_ln29_2_fu_627_p2;
wire   [63:0] bitcast_ln29_4_fu_645_p1;
wire   [63:0] bitcast_ln29_5_fu_662_p1;
wire   [10:0] tmp_s_fu_648_p4;
wire   [51:0] trunc_ln29_4_fu_658_p1;
wire   [0:0] icmp_ln29_9_fu_685_p2;
wire   [0:0] icmp_ln29_8_fu_679_p2;
wire   [10:0] tmp_10_fu_665_p4;
wire   [51:0] trunc_ln29_5_fu_675_p1;
wire   [0:0] icmp_ln29_11_fu_703_p2;
wire   [0:0] icmp_ln29_10_fu_697_p2;
wire   [0:0] or_ln29_5_fu_709_p2;
wire   [0:0] or_ln29_4_fu_691_p2;
wire   [0:0] and_ln29_4_fu_715_p2;
wire   [63:0] bitcast_ln29_6_fu_734_p1;
wire   [63:0] bitcast_ln29_7_fu_751_p1;
wire   [10:0] tmp_16_fu_737_p4;
wire   [51:0] trunc_ln29_6_fu_747_p1;
wire   [0:0] icmp_ln29_13_fu_774_p2;
wire   [0:0] icmp_ln29_12_fu_768_p2;
wire   [10:0] tmp_17_fu_754_p4;
wire   [51:0] trunc_ln29_7_fu_764_p1;
wire   [0:0] icmp_ln29_15_fu_792_p2;
wire   [0:0] icmp_ln29_14_fu_786_p2;
wire   [0:0] or_ln29_7_fu_798_p2;
wire   [0:0] or_ln29_6_fu_780_p2;
wire   [0:0] and_ln29_6_fu_804_p2;
wire   [0:0] and_ln29_7_fu_810_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_92 = 64'd0;
#0 prev_fu_96 = 6'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_92 <= min_p_4;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_15_reg_893_pp0_iter3_reg == 1'd0))) begin
        min_p_fu_92 <= min_p_10_fu_815_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_96 <= 6'd1;
    end else if (((tmp_15_reg_893 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_96 <= add_ln25_2_fu_455_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_962 <= grp_fu_253_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_967 <= grp_fu_253_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_972 <= grp_fu_253_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_977 <= grp_fu_253_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_887 <= add_ln25_1_fu_350_p2;
        prev_1_reg_856 <= ap_sig_allocacmp_prev_1;
        tmp_15_reg_893 <= add_ln25_1_fu_350_p2[32'd6];
        tmp_15_reg_893_pp0_iter1_reg <= tmp_15_reg_893;
        tmp_15_reg_893_pp0_iter2_reg <= tmp_15_reg_893_pp0_iter1_reg;
        tmp_15_reg_893_pp0_iter3_reg <= tmp_15_reg_893_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_996 <= and_ln29_1_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_1022 <= and_ln29_3_fu_633_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_1041 <= and_ln29_5_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_912 <= llike_1_q0;
        llike_1_load_reg_897 <= llike_1_q1;
        llike_load_reg_902 <= llike_q0;
        transition_load_1_reg_907 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_1_reg_937 <= llike_q0;
        transition_load_3_reg_942 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_1_reg_989 <= min_p_fu_92;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_3_reg_1008 <= min_p_3_fu_551_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_6_reg_1034 <= min_p_6_fu_639_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_8_reg_1046 <= min_p_8_fu_727_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_1_reg_1001 <= grp_fu_253_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_2_reg_1015 <= grp_fu_253_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_3_reg_1027 <= grp_fu_253_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_982 <= grp_fu_253_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_232 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_18_reg_1053 <= grp_fu_530_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_15_reg_893 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_15_reg_893_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_224_p0 = add52_3_reg_977;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_224_p0 = add52_2_reg_972;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_224_p0 = add52_1_reg_967;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_224_p0 = add1_reg_962;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_224_p0 = llike_load_1_reg_937;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_224_p0 = llike_1_load_1_reg_912;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_224_p0 = llike_load_reg_902;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_224_p0 = llike_1_load_reg_897;
    end else begin
        grp_fu_224_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_224_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_224_p1 = bitcast_ln27_3_fu_451_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_224_p1 = bitcast_ln27_2_fu_446_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_224_p1 = bitcast_ln27_1_fu_442_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_224_p1 = bitcast_ln27_fu_437_p1;
    end else begin
        grp_fu_224_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_228_p0 = p_3_reg_1027;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_228_p0 = p_2_reg_1015;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_228_p0 = p_1_reg_1001;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_228_p0 = p_reg_982;
    end else begin
        grp_fu_228_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_228_p1 = min_p_8_fu_727_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_228_p1 = min_p_6_fu_639_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_228_p1 = min_p_3_fu_551_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_228_p1 = min_p_fu_92;
    end else begin
        grp_fu_228_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_4_fu_417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_313_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_15_reg_893_pp0_iter2_reg == 1'd1))) begin
        min_p_137_out_ap_vld = 1'b1;
    end else begin
        min_p_137_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln27_3_fu_432_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln27_1_fu_326_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln27_2_fu_394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address1_local = zext_ln27_fu_284_p1;
        end else begin
            transition_address1_local = 'bx;
        end
    end else begin
        transition_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce1_local = 1'b1;
    end else begin
        transition_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_1_fu_350_p2 = (zext_ln11_fu_249_p1 + 7'd3);
assign add_ln25_2_fu_455_p2 = (prev_1_reg_856 + 6'd4);
assign add_ln25_fu_289_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_412_p2 = (empty + zext_ln26_3_fu_408_p1);
assign add_ln27_1_fu_318_p3 = {{add_ln25_fu_289_p2}, {empty_9}};
assign add_ln27_3_fu_387_p3 = {{tmp_9_fu_377_p4}, {empty_9}};
assign add_ln27_4_fu_425_p3 = {{trunc_ln27_fu_422_p1}, {empty_9}};
assign add_ln27_fu_371_p2 = (shl_ln2_fu_364_p3 + 12'd128);
assign add_ln8_fu_331_p2 = (lshr_ln7_1_fu_253_p4 + 5'd1);
assign add_ln_fu_276_p3 = {{ap_sig_allocacmp_prev_1}, {empty_9}};
assign and_ln29_1_fu_545_p2 = (or_ln29_1_fu_533_p2 & and_ln29_fu_539_p2);
assign and_ln29_2_fu_627_p2 = (or_ln29_3_fu_621_p2 & or_ln29_2_fu_603_p2);
assign and_ln29_3_fu_633_p2 = (grp_fu_530_p_dout0 & and_ln29_2_fu_627_p2);
assign and_ln29_4_fu_715_p2 = (or_ln29_5_fu_709_p2 & or_ln29_4_fu_691_p2);
assign and_ln29_5_fu_721_p2 = (grp_fu_530_p_dout0 & and_ln29_4_fu_715_p2);
assign and_ln29_6_fu_804_p2 = (or_ln29_7_fu_798_p2 & or_ln29_6_fu_780_p2);
assign and_ln29_7_fu_810_p2 = (tmp_18_reg_1053 & and_ln29_6_fu_804_p2);
assign and_ln29_fu_539_p2 = (or_ln29_fu_515_p2 & grp_fu_530_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln27_1_fu_442_p1 = transition_load_1_reg_907;
assign bitcast_ln27_2_fu_446_p1 = reg_232;
assign bitcast_ln27_3_fu_451_p1 = transition_load_3_reg_942;
assign bitcast_ln27_fu_437_p1 = reg_232;
assign bitcast_ln29_1_fu_486_p1 = min_p_1_reg_989;
assign bitcast_ln29_2_fu_557_p1 = p_1_reg_1001;
assign bitcast_ln29_3_fu_574_p1 = min_p_3_reg_1008;
assign bitcast_ln29_4_fu_645_p1 = p_2_reg_1015;
assign bitcast_ln29_5_fu_662_p1 = min_p_6_reg_1034;
assign bitcast_ln29_6_fu_734_p1 = p_3_reg_1027;
assign bitcast_ln29_7_fu_751_p1 = min_p_8_reg_1046;
assign bitcast_ln29_fu_469_p1 = p_reg_982;
assign grp_fu_253_p_ce = 1'b1;
assign grp_fu_253_p_din0 = grp_fu_224_p0;
assign grp_fu_253_p_din1 = grp_fu_224_p1;
assign grp_fu_253_p_opcode = 2'd0;
assign grp_fu_530_p_ce = 1'b1;
assign grp_fu_530_p_din0 = grp_fu_228_p0;
assign grp_fu_530_p_din1 = grp_fu_228_p1;
assign grp_fu_530_p_opcode = 5'd4;
assign icmp_ln29_10_fu_697_p2 = ((tmp_10_fu_665_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_703_p2 = ((trunc_ln29_5_fu_675_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_768_p2 = ((tmp_16_fu_737_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_774_p2 = ((trunc_ln29_6_fu_747_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_786_p2 = ((tmp_17_fu_754_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_792_p2 = ((trunc_ln29_7_fu_764_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_509_p2 = ((trunc_ln29_fu_482_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_521_p2 = ((tmp_4_fu_489_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_527_p2 = ((trunc_ln29_1_fu_499_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_591_p2 = ((tmp_6_fu_560_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_597_p2 = ((trunc_ln29_2_fu_570_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_609_p2 = ((tmp_7_fu_577_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_615_p2 = ((trunc_ln29_3_fu_587_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_679_p2 = ((tmp_s_fu_648_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_685_p2 = ((trunc_ln29_4_fu_658_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_503_p2 = ((tmp_3_fu_472_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_2_fu_345_p1;
assign llike_1_address1 = zext_ln26_fu_271_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_253_p4 = {{ap_sig_allocacmp_prev_1[5:1]}};
assign lshr_ln8_1_fu_295_p4 = {{add_ln25_fu_289_p2[5:1]}};
assign lshr_ln8_2_fu_399_p4 = {{add_ln25_1_reg_887[6:1]}};
assign min_p_10_fu_815_p3 = ((and_ln29_7_fu_810_p2[0:0] == 1'b1) ? p_3_reg_1027 : min_p_8_reg_1046);
assign min_p_137_out = ((and_ln29_5_reg_1041[0:0] == 1'b1) ? p_2_reg_1015 : min_p_6_reg_1034);
assign min_p_3_fu_551_p3 = ((and_ln29_1_reg_996[0:0] == 1'b1) ? p_reg_982 : min_p_1_reg_989);
assign min_p_6_fu_639_p3 = ((and_ln29_3_reg_1022[0:0] == 1'b1) ? p_1_reg_1001 : min_p_3_reg_1008);
assign min_p_8_fu_727_p3 = ((and_ln29_5_reg_1041[0:0] == 1'b1) ? p_2_reg_1015 : min_p_6_reg_1034);
assign or_ln29_1_fu_533_p2 = (icmp_ln29_3_fu_527_p2 | icmp_ln29_2_fu_521_p2);
assign or_ln29_2_fu_603_p2 = (icmp_ln29_5_fu_597_p2 | icmp_ln29_4_fu_591_p2);
assign or_ln29_3_fu_621_p2 = (icmp_ln29_7_fu_615_p2 | icmp_ln29_6_fu_609_p2);
assign or_ln29_4_fu_691_p2 = (icmp_ln29_9_fu_685_p2 | icmp_ln29_8_fu_679_p2);
assign or_ln29_5_fu_709_p2 = (icmp_ln29_11_fu_703_p2 | icmp_ln29_10_fu_697_p2);
assign or_ln29_6_fu_780_p2 = (icmp_ln29_13_fu_774_p2 | icmp_ln29_12_fu_768_p2);
assign or_ln29_7_fu_798_p2 = (icmp_ln29_15_fu_792_p2 | icmp_ln29_14_fu_786_p2);
assign or_ln29_fu_515_p2 = (icmp_ln29_fu_503_p2 | icmp_ln29_1_fu_509_p2);
assign shl_ln2_fu_364_p3 = {{prev_1_reg_856}, {6'd0}};
assign tmp_10_fu_665_p4 = {{bitcast_ln29_5_fu_662_p1[62:52]}};
assign tmp_12_fu_263_p3 = {{empty_8}, {lshr_ln7_1_fu_253_p4}};
assign tmp_13_fu_305_p3 = {{empty_8}, {lshr_ln8_1_fu_295_p4}};
assign tmp_14_fu_337_p3 = {{empty_8}, {add_ln8_fu_331_p2}};
assign tmp_16_fu_737_p4 = {{bitcast_ln29_6_fu_734_p1[62:52]}};
assign tmp_17_fu_754_p4 = {{bitcast_ln29_7_fu_751_p1[62:52]}};
assign tmp_3_fu_472_p4 = {{bitcast_ln29_fu_469_p1[62:52]}};
assign tmp_4_fu_489_p4 = {{bitcast_ln29_1_fu_486_p1[62:52]}};
assign tmp_6_fu_560_p4 = {{bitcast_ln29_2_fu_557_p1[62:52]}};
assign tmp_7_fu_577_p4 = {{bitcast_ln29_3_fu_574_p1[62:52]}};
assign tmp_9_fu_377_p4 = {{add_ln27_fu_371_p2[11:6]}};
assign tmp_s_fu_648_p4 = {{bitcast_ln29_4_fu_645_p1[62:52]}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln27_fu_422_p1 = add_ln25_1_reg_887[5:0];
assign trunc_ln29_1_fu_499_p1 = bitcast_ln29_1_fu_486_p1[51:0];
assign trunc_ln29_2_fu_570_p1 = bitcast_ln29_2_fu_557_p1[51:0];
assign trunc_ln29_3_fu_587_p1 = bitcast_ln29_3_fu_574_p1[51:0];
assign trunc_ln29_4_fu_658_p1 = bitcast_ln29_4_fu_645_p1[51:0];
assign trunc_ln29_5_fu_675_p1 = bitcast_ln29_5_fu_662_p1[51:0];
assign trunc_ln29_6_fu_747_p1 = bitcast_ln29_6_fu_734_p1[51:0];
assign trunc_ln29_7_fu_764_p1 = bitcast_ln29_7_fu_751_p1[51:0];
assign trunc_ln29_fu_482_p1 = bitcast_ln29_fu_469_p1[51:0];
assign zext_ln11_fu_249_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_313_p1 = tmp_13_fu_305_p3;
assign zext_ln26_2_fu_345_p1 = tmp_14_fu_337_p3;
assign zext_ln26_3_fu_408_p1 = lshr_ln8_2_fu_399_p4;
assign zext_ln26_4_fu_417_p1 = add_ln26_fu_412_p2;
assign zext_ln26_fu_271_p1 = tmp_12_fu_263_p3;
assign zext_ln27_1_fu_326_p1 = add_ln27_1_fu_318_p3;
assign zext_ln27_2_fu_394_p1 = add_ln27_3_fu_387_p3;
assign zext_ln27_3_fu_432_p1 = add_ln27_4_fu_425_p3;
assign zext_ln27_fu_284_p1 = add_ln_fu_276_p3;
endmodule 