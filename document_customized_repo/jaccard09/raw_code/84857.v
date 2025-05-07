module md (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,n_points_address0,n_points_ce0,n_points_q0,force_r_address0,force_r_ce0,force_r_we0,force_r_d0,force_r_q0,position_address0,position_ce0,position_q0,position_address1,position_ce1,position_q1); 
parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] n_points_address0;
output   n_points_ce0;
input  [31:0] n_points_q0;
output  [9:0] force_r_address0;
output   force_r_ce0;
output   force_r_we0;
output  [191:0] force_r_d0;
input  [191:0] force_r_q0;
output  [9:0] position_address0;
output   position_ce0;
input  [191:0] position_q0;
output  [9:0] position_address1;
output   position_ce1;
input  [191:0] position_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] position_address0;
reg position_ce0;
reg position_ce1;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] add_ln14_fu_347_p2;
reg   [2:0] add_ln14_reg_1073;
wire    ap_CS_fsm_state2;
wire   [5:0] zext_ln14_fu_361_p1;
reg   [5:0] zext_ln14_reg_1078;
wire   [2:0] smax80_cast_fu_383_p1;
reg   [2:0] smax80_cast_reg_1083;
wire   [2:0] cond24_fu_399_p3;
reg   [2:0] cond24_reg_1088;
wire   [2:0] add_ln15_fu_413_p2;
reg   [2:0] add_ln15_reg_1096;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_fu_428_p3;
reg   [7:0] tmp_reg_1101;
wire   [2:0] smax75_cast_fu_454_p1;
reg   [2:0] smax75_cast_reg_1106;
wire   [2:0] cond47_fu_470_p3;
reg   [2:0] cond47_reg_1111;
wire   [2:0] add_ln16_fu_499_p2;
reg   [2:0] add_ln16_reg_1119;
wire    ap_CS_fsm_state4;
wire   [9:0] add_ln16_2_fu_543_p2;
reg   [9:0] add_ln16_2_reg_1129;
wire   [2:0] add_ln15_1_fu_549_p2;
wire   [2:0] smax_cast_fu_573_p1;
reg   [2:0] smax_cast_reg_1139;
wire    ap_CS_fsm_state5;
wire   [2:0] cond70_fu_589_p3;
reg   [2:0] cond70_reg_1144;
reg   [31:0] n_points_load_reg_1149;
wire   [5:0] zext_ln8_fu_610_p1;
reg   [5:0] zext_ln8_reg_1157;
wire    ap_CS_fsm_state6;
wire   [2:0] add_ln16_1_fu_614_p2;
wire   [7:0] tmp_24_fu_634_p3;
reg   [7:0] tmp_24_reg_1170;
wire    ap_CS_fsm_state7;
wire   [2:0] add_ln18_fu_642_p2;
wire    ap_CS_fsm_state8;
wire   [9:0] add_ln8_fu_691_p2;
reg   [9:0] add_ln8_reg_1188;
wire   [2:0] add_ln19_fu_697_p2;
reg   [31:0] q_idx_range_reg_1198;
wire    ap_CS_fsm_state9;
wire   [9:0] add_ln24_fu_712_p2;
reg   [9:0] add_ln24_reg_1207;
wire    ap_CS_fsm_state10;
reg   [9:0] force_r_addr_reg_1212;
wire   [2:0] add_ln20_fu_729_p2;
wire   [190:0] trunc_ln25_fu_735_p1;
reg   [190:0] trunc_ln25_reg_1227;
wire    ap_CS_fsm_state11;
wire   [63:0] trunc_ln25_3_fu_739_p1;
reg   [63:0] trunc_ln25_3_reg_1232;
reg   [63:0] trunc_ln25_1_reg_1237;
reg   [63:0] trunc_ln25_2_reg_1242;
wire   [51:0] trunc_ln34_fu_763_p1;
reg   [51:0] trunc_ln34_reg_1247;
reg   [51:0] trunc_ln34_3_reg_1252;
reg   [51:0] trunc_ln34_5_reg_1257;
wire   [63:0] p_x_fu_787_p1;
reg   [63:0] p_x_reg_1262;
wire    ap_CS_fsm_state12;
wire   [63:0] p_y_fu_791_p1;
reg   [63:0] p_y_reg_1267;
wire   [63:0] p_z_fu_795_p1;
reg   [63:0] p_z_reg_1272;
wire   [63:0] sum_x_fu_803_p1;
reg   [63:0] sum_x_reg_1277;
wire   [63:0] sum_y_fu_818_p1;
reg   [63:0] sum_y_reg_1282;
wire   [63:0] sum_z_fu_833_p1;
reg   [63:0] sum_z_reg_1287;
wire   [1:0] grp_md_Pipeline_loop_q_fu_294_ap_return;
reg   [1:0] targetBlock_reg_1292;
wire    ap_CS_fsm_state13;
wire    grp_md_Pipeline_loop_q_fu_294_ap_start;
wire    grp_md_Pipeline_loop_q_fu_294_ap_done;
wire    grp_md_Pipeline_loop_q_fu_294_ap_idle;
wire    grp_md_Pipeline_loop_q_fu_294_ap_ready;
wire   [9:0] grp_md_Pipeline_loop_q_fu_294_position_address0;
wire    grp_md_Pipeline_loop_q_fu_294_position_ce0;
wire   [9:0] grp_md_Pipeline_loop_q_fu_294_position_address1;
wire    grp_md_Pipeline_loop_q_fu_294_position_ce1;
wire   [63:0] grp_md_Pipeline_loop_q_fu_294_sum_z_1_out;
wire    grp_md_Pipeline_loop_q_fu_294_sum_z_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_294_sum_y_1_out;
wire    grp_md_Pipeline_loop_q_fu_294_sum_y_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_294_sum_x_1_out;
wire    grp_md_Pipeline_loop_q_fu_294_sum_x_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_294_sum_x_7_out;
wire    grp_md_Pipeline_loop_q_fu_294_sum_x_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_294_sum_y_7_out;
wire    grp_md_Pipeline_loop_q_fu_294_sum_y_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_294_sum_z_7_out;
wire    grp_md_Pipeline_loop_q_fu_294_sum_z_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_294_sum_x_5_out;
wire    grp_md_Pipeline_loop_q_fu_294_sum_x_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_294_sum_y_5_out;
wire    grp_md_Pipeline_loop_q_fu_294_sum_y_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_294_sum_z_5_out;
wire    grp_md_Pipeline_loop_q_fu_294_sum_z_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_294_sum_x_3_out;
wire    grp_md_Pipeline_loop_q_fu_294_sum_x_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_294_sum_y_3_out;
wire    grp_md_Pipeline_loop_q_fu_294_sum_y_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_294_sum_z_3_out;
wire    grp_md_Pipeline_loop_q_fu_294_sum_z_3_out_ap_vld;
reg   [2:0] b0_y_reg_206;
wire   [0:0] icmp_ln14_fu_341_p2;
wire   [0:0] icmp_ln16_fu_493_p2;
reg   [2:0] indvars_iv73_reg_217;
reg   [2:0] b0_z_reg_229;
wire   [0:0] icmp_ln15_fu_407_p2;
wire   [0:0] icmp_ln18_fu_597_p2;
reg   [2:0] indvars_iv69_reg_241;
reg   [2:0] b1_x_reg_253;
wire   [0:0] icmp_ln19_fu_620_p2;
reg   [2:0] b1_y_reg_263;
wire   [0:0] icmp_ln20_fu_648_p2;
reg   [2:0] b1_z_reg_273;
wire   [0:0] icmp_ln24_fu_707_p2;
reg   [9:0] p_idx_reg_283;
wire    ap_CS_fsm_state14;
reg    grp_md_Pipeline_loop_q_fu_294_ap_start_reg;
reg   [63:0] sum_z_1_loc_fu_156;
reg   [63:0] sum_y_1_loc_fu_152;
reg   [63:0] sum_x_1_loc_fu_148;
reg   [63:0] sum_x_7_loc_fu_144;
reg   [63:0] sum_y_7_loc_fu_140;
reg   [63:0] sum_z_7_loc_fu_136;
reg   [63:0] sum_x_5_loc_fu_132;
reg   [63:0] sum_y_5_loc_fu_128;
reg   [63:0] sum_z_5_loc_fu_124;
reg   [63:0] sum_x_3_loc_fu_120;
reg   [63:0] sum_y_3_loc_fu_116;
reg   [63:0] sum_z_3_loc_fu_112;
wire   [63:0] p_cast6_fu_514_p1;
wire   [63:0] zext_ln23_2_fu_662_p1;
wire   [63:0] zext_ln26_fu_723_p1;
reg   [2:0] indvars_iv78_fu_104;
wire   [2:0] add_ln14_1_fu_478_p2;
reg   [2:0] b0_x_fu_108;
reg    n_points_ce0_local;
reg   [5:0] n_points_address0_local;
reg    position_ce0_local;
reg    force_r_ce0_local;
reg    force_r_we0_local;
wire   [191:0] or_ln_fu_973_p4;
wire   [4:0] tmp_10_fu_353_p3;
wire   [0:0] empty_fu_369_p2;
wire   [1:0] trunc_ln14_fu_365_p1;
wire   [1:0] smax80_fu_375_p3;
wire   [2:0] empty_19_fu_387_p2;
wire   [0:0] cmp18_fu_393_p2;
wire   [5:0] b0_y_cast_fu_419_p1;
wire   [5:0] empty_20_fu_423_p2;
wire   [0:0] empty_21_fu_440_p2;
wire   [1:0] trunc_ln15_fu_436_p1;
wire   [1:0] smax75_fu_446_p3;
wire   [2:0] empty_22_fu_458_p2;
wire   [0:0] cmp41_fu_464_p2;
wire   [7:0] b0_z_cast_fu_505_p1;
wire   [7:0] empty_23_fu_509_p2;
wire   [6:0] trunc_ln26_fu_519_p1;
wire   [8:0] tmp_23_fu_531_p3;
wire   [9:0] p_shl1_fu_523_p3;
wire   [9:0] zext_ln16_fu_539_p1;
wire   [0:0] empty_24_fu_559_p2;
wire   [1:0] trunc_ln16_fu_555_p1;
wire   [1:0] smax_fu_565_p3;
wire   [2:0] empty_25_fu_577_p2;
wire   [0:0] cmp64_fu_583_p2;
wire   [4:0] tmp_19_fu_602_p3;
wire   [5:0] zext_ln23_fu_625_p1;
wire   [5:0] add_ln23_fu_629_p2;
wire   [7:0] zext_ln23_1_fu_653_p1;
wire   [7:0] add_ln23_1_fu_657_p2;
wire   [6:0] trunc_ln31_fu_667_p1;
wire   [8:0] tmp_25_fu_679_p3;
wire   [9:0] p_shl_fu_671_p3;
wire   [9:0] zext_ln8_1_fu_687_p1;
wire   [31:0] zext_ln24_fu_703_p1;
wire   [9:0] add_ln26_fu_718_p2;
wire   [63:0] trunc_ln26_1_fu_799_p1;
wire   [63:0] trunc_ln5_fu_808_p4;
wire   [63:0] trunc_ln6_fu_823_p4;
wire   [0:0] empty_26_fu_874_p2;
wire   [0:0] empty_28_fu_887_p2;
wire   [63:0] empty_27_fu_879_p3;
wire   [0:0] empty_30_fu_900_p2;
wire   [63:0] empty_29_fu_892_p3;
wire   [63:0] empty_31_fu_913_p3;
wire   [63:0] empty_32_fu_921_p3;
wire   [63:0] empty_33_fu_937_p3;
wire   [63:0] empty_34_fu_945_p3;
wire   [63:0] sum_x_0_lcssa_ph_fu_953_p3;
wire   [63:0] sum_y_0_lcssa_ph_fu_929_p3;
wire   [63:0] sum_z_0_lcssa_ph_fu_905_p3;
wire   [63:0] bitcast_ln51_fu_969_p1;
wire   [63:0] bitcast_ln50_fu_965_p1;
wire   [63:0] bitcast_ln49_fu_961_p1;
reg   [13:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_md_Pipeline_loop_q_fu_294_ap_start_reg = 1'b0;
#0 indvars_iv78_fu_104 = 3'd0;
#0 b0_x_fu_108 = 3'd0;
end
md_md_Pipeline_loop_q grp_md_Pipeline_loop_q_fu_294(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_md_Pipeline_loop_q_fu_294_ap_start),.ap_done(grp_md_Pipeline_loop_q_fu_294_ap_done),.ap_idle(grp_md_Pipeline_loop_q_fu_294_ap_idle),.ap_ready(grp_md_Pipeline_loop_q_fu_294_ap_ready),.sum_z(sum_z_reg_1287),.sum_y(sum_y_reg_1282),.sum_x(sum_x_reg_1277),.sext_ln24(q_idx_range_reg_1198),.p_x(p_x_reg_1262),.p_y(p_y_reg_1267),.p_z(p_z_reg_1272),.mul_ln31(add_ln8_reg_1188),.position_address0(grp_md_Pipeline_loop_q_fu_294_position_address0),.position_ce0(grp_md_Pipeline_loop_q_fu_294_position_ce0),.position_q0(position_q0),.position_address1(grp_md_Pipeline_loop_q_fu_294_position_address1),.position_ce1(grp_md_Pipeline_loop_q_fu_294_position_ce1),.position_q1(position_q1),.q_idx_range(q_idx_range_reg_1198),.position_load(trunc_ln25_reg_1227),.empty(trunc_ln34_reg_1247),.trunc_ln34_3(trunc_ln34_3_reg_1252),.trunc_ln34_5(trunc_ln34_5_reg_1257),.sum_z_1_out(grp_md_Pipeline_loop_q_fu_294_sum_z_1_out),.sum_z_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_294_sum_z_1_out_ap_vld),.sum_y_1_out(grp_md_Pipeline_loop_q_fu_294_sum_y_1_out),.sum_y_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_294_sum_y_1_out_ap_vld),.sum_x_1_out(grp_md_Pipeline_loop_q_fu_294_sum_x_1_out),.sum_x_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_294_sum_x_1_out_ap_vld),.sum_x_7_out(grp_md_Pipeline_loop_q_fu_294_sum_x_7_out),.sum_x_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_294_sum_x_7_out_ap_vld),.sum_y_7_out(grp_md_Pipeline_loop_q_fu_294_sum_y_7_out),.sum_y_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_294_sum_y_7_out_ap_vld),.sum_z_7_out(grp_md_Pipeline_loop_q_fu_294_sum_z_7_out),.sum_z_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_294_sum_z_7_out_ap_vld),.sum_x_5_out(grp_md_Pipeline_loop_q_fu_294_sum_x_5_out),.sum_x_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_294_sum_x_5_out_ap_vld),.sum_y_5_out(grp_md_Pipeline_loop_q_fu_294_sum_y_5_out),.sum_y_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_294_sum_y_5_out_ap_vld),.sum_z_5_out(grp_md_Pipeline_loop_q_fu_294_sum_z_5_out),.sum_z_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_294_sum_z_5_out_ap_vld),.sum_x_3_out(grp_md_Pipeline_loop_q_fu_294_sum_x_3_out),.sum_x_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_294_sum_x_3_out_ap_vld),.sum_y_3_out(grp_md_Pipeline_loop_q_fu_294_sum_y_3_out),.sum_y_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_294_sum_y_3_out_ap_vld),.sum_z_3_out(grp_md_Pipeline_loop_q_fu_294_sum_z_3_out),.sum_z_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_294_sum_z_3_out_ap_vld),.ap_return(grp_md_Pipeline_loop_q_fu_294_ap_return));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_md_Pipeline_loop_q_fu_294_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_md_Pipeline_loop_q_fu_294_ap_start_reg <= 1'b1;
        end else if ((grp_md_Pipeline_loop_q_fu_294_ap_ready == 1'b1)) begin
            grp_md_Pipeline_loop_q_fu_294_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b0_x_fu_108 <= 3'd0;
    end else if (((icmp_ln15_fu_407_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_x_fu_108 <= add_ln14_reg_1073;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_493_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        b0_y_reg_206 <= add_ln15_reg_1096;
    end else if (((icmp_ln14_fu_341_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b0_y_reg_206 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_597_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        b0_z_reg_229 <= add_ln16_reg_1119;
    end else if (((icmp_ln15_fu_407_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_z_reg_229 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b1_x_reg_253 <= smax80_cast_reg_1083;
    end else if (((icmp_ln19_fu_620_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_x_reg_253 <= add_ln18_fu_642_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_597_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        b1_y_reg_263 <= smax75_cast_reg_1106;
    end else if (((icmp_ln20_fu_648_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        b1_y_reg_263 <= add_ln19_fu_697_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_620_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_z_reg_273 <= smax_cast_reg_1139;
    end else if (((icmp_ln24_fu_707_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        b1_z_reg_273 <= add_ln20_fu_729_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_597_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        indvars_iv69_reg_241 <= add_ln16_1_fu_614_p2;
    end else if (((icmp_ln15_fu_407_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv69_reg_241 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_493_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv73_reg_217 <= add_ln15_1_fu_549_p2;
    end else if (((icmp_ln14_fu_341_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv73_reg_217 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv78_fu_104 <= 3'd7;
    end else if (((icmp_ln15_fu_407_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv78_fu_104 <= add_ln14_1_fu_478_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        p_idx_reg_283 <= add_ln24_reg_1207;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        p_idx_reg_283 <= 10'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln14_reg_1073 <= add_ln14_fu_347_p2;
        cond24_reg_1088 <= cond24_fu_399_p3;
        smax80_cast_reg_1083[1 : 0] <= smax80_cast_fu_383_p1[1 : 0];
        zext_ln14_reg_1078[4 : 2] <= zext_ln14_fu_361_p1[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln15_reg_1096 <= add_ln15_fu_413_p2;
        cond47_reg_1111 <= cond47_fu_470_p3;
        smax75_cast_reg_1106[1 : 0] <= smax75_cast_fu_454_p1[1 : 0];
        tmp_reg_1101[7 : 2] <= tmp_fu_428_p3[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_2_reg_1129[9 : 1] <= add_ln16_2_fu_543_p2[9 : 1];
        add_ln16_reg_1119 <= add_ln16_fu_499_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln24_reg_1207 <= add_ln24_fu_712_p2;
        force_r_addr_reg_1212 <= zext_ln26_fu_723_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln8_reg_1188[9 : 1] <= add_ln8_fu_691_p2[9 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        cond70_reg_1144 <= cond70_fu_589_p3;
        n_points_load_reg_1149 <= n_points_q0;
        smax_cast_reg_1139[1 : 0] <= smax_cast_fu_573_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        p_x_reg_1262 <= p_x_fu_787_p1;
        p_y_reg_1267 <= p_y_fu_791_p1;
        p_z_reg_1272 <= p_z_fu_795_p1;
        sum_x_reg_1277 <= sum_x_fu_803_p1;
        sum_y_reg_1282 <= sum_y_fu_818_p1;
        sum_z_reg_1287 <= sum_z_fu_833_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        q_idx_range_reg_1198 <= n_points_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_294_sum_x_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_1_loc_fu_148 <= grp_md_Pipeline_loop_q_fu_294_sum_x_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_294_sum_x_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_3_loc_fu_120 <= grp_md_Pipeline_loop_q_fu_294_sum_x_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_294_sum_x_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_5_loc_fu_132 <= grp_md_Pipeline_loop_q_fu_294_sum_x_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_294_sum_x_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_7_loc_fu_144 <= grp_md_Pipeline_loop_q_fu_294_sum_x_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_294_sum_y_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_1_loc_fu_152 <= grp_md_Pipeline_loop_q_fu_294_sum_y_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_294_sum_y_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_3_loc_fu_116 <= grp_md_Pipeline_loop_q_fu_294_sum_y_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_294_sum_y_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_5_loc_fu_128 <= grp_md_Pipeline_loop_q_fu_294_sum_y_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_294_sum_y_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_7_loc_fu_140 <= grp_md_Pipeline_loop_q_fu_294_sum_y_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_294_sum_z_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_1_loc_fu_156 <= grp_md_Pipeline_loop_q_fu_294_sum_z_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_294_sum_z_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_3_loc_fu_112 <= grp_md_Pipeline_loop_q_fu_294_sum_z_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_294_sum_z_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_5_loc_fu_124 <= grp_md_Pipeline_loop_q_fu_294_sum_z_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_294_sum_z_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_7_loc_fu_136 <= grp_md_Pipeline_loop_q_fu_294_sum_z_7_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        targetBlock_reg_1292 <= grp_md_Pipeline_loop_q_fu_294_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_24_reg_1170[7 : 2] <= tmp_24_fu_634_p3[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        trunc_ln25_1_reg_1237 <= {{position_q0[127:64]}};
        trunc_ln25_2_reg_1242 <= {{position_q0[191:128]}};
        trunc_ln25_3_reg_1232 <= trunc_ln25_3_fu_739_p1;
        trunc_ln25_reg_1227 <= trunc_ln25_fu_735_p1;
        trunc_ln34_3_reg_1252 <= {{position_q0[115:64]}};
        trunc_ln34_5_reg_1257 <= {{position_q0[179:128]}};
        trunc_ln34_reg_1247 <= trunc_ln34_fu_763_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        zext_ln8_reg_1157[4 : 2] <= zext_ln8_fu_610_p1[4 : 2];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_md_Pipeline_loop_q_fu_294_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln14_fu_341_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln14_fu_341_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        force_r_ce0_local = 1'b1;
    end else begin
        force_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_r_we0_local = 1'b1;
    end else begin
        force_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_address0_local = zext_ln23_2_fu_662_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_address0_local = p_cast6_fu_514_p1;
    end else begin
        n_points_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state8))) begin
        n_points_ce0_local = 1'b1;
    end else begin
        n_points_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_address0 = grp_md_Pipeline_loop_q_fu_294_position_address0;
    end else begin
        position_address0 = zext_ln26_fu_723_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_ce0 = grp_md_Pipeline_loop_q_fu_294_position_ce0;
    end else begin
        position_ce0 = position_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_ce0_local = 1'b1;
    end else begin
        position_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_ce1 = grp_md_Pipeline_loop_q_fu_294_position_ce1;
    end else begin
        position_ce1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln14_fu_341_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln15_fu_407_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_493_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln18_fu_597_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_620_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln20_fu_648_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln24_fu_707_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_md_Pipeline_loop_q_fu_294_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln14_1_fu_478_p2 = (indvars_iv78_fu_104 + 3'd1);
assign add_ln14_fu_347_p2 = (b0_x_fu_108 + 3'd1);
assign add_ln15_1_fu_549_p2 = (indvars_iv73_reg_217 + 3'd1);
assign add_ln15_fu_413_p2 = (b0_y_reg_206 + 3'd1);
assign add_ln16_1_fu_614_p2 = (indvars_iv69_reg_241 + 3'd1);
assign add_ln16_2_fu_543_p2 = (p_shl1_fu_523_p3 + zext_ln16_fu_539_p1);
assign add_ln16_fu_499_p2 = (b0_z_reg_229 + 3'd1);
assign add_ln18_fu_642_p2 = (b1_x_reg_253 + 3'd1);
assign add_ln19_fu_697_p2 = (b1_y_reg_263 + 3'd1);
assign add_ln20_fu_729_p2 = (b1_z_reg_273 + 3'd1);
assign add_ln23_1_fu_657_p2 = (tmp_24_reg_1170 + zext_ln23_1_fu_653_p1);
assign add_ln23_fu_629_p2 = (zext_ln8_reg_1157 + zext_ln23_fu_625_p1);
assign add_ln24_fu_712_p2 = (p_idx_reg_283 + 10'd1);
assign add_ln26_fu_718_p2 = (add_ln16_2_reg_1129 + p_idx_reg_283);
assign add_ln8_fu_691_p2 = (p_shl_fu_671_p3 + zext_ln8_1_fu_687_p1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign b0_y_cast_fu_419_p1 = b0_y_reg_206;
assign b0_z_cast_fu_505_p1 = b0_z_reg_229;
assign bitcast_ln49_fu_961_p1 = sum_x_0_lcssa_ph_fu_953_p3;
assign bitcast_ln50_fu_965_p1 = sum_y_0_lcssa_ph_fu_929_p3;
assign bitcast_ln51_fu_969_p1 = sum_z_0_lcssa_ph_fu_905_p3;
assign cmp18_fu_393_p2 = ((empty_19_fu_387_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp41_fu_464_p2 = ((empty_22_fu_458_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp64_fu_583_p2 = ((empty_25_fu_577_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cond24_fu_399_p3 = ((cmp18_fu_393_p2[0:0] == 1'b1) ? 3'd4 : empty_19_fu_387_p2);
assign cond47_fu_470_p3 = ((cmp41_fu_464_p2[0:0] == 1'b1) ? 3'd4 : empty_22_fu_458_p2);
assign cond70_fu_589_p3 = ((cmp64_fu_583_p2[0:0] == 1'b1) ? 3'd4 : empty_25_fu_577_p2);
assign empty_19_fu_387_p2 = (b0_x_fu_108 + 3'd2);
assign empty_20_fu_423_p2 = (zext_ln14_reg_1078 + b0_y_cast_fu_419_p1);
assign empty_21_fu_440_p2 = (($signed(indvars_iv73_reg_217) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_22_fu_458_p2 = (b0_y_reg_206 + 3'd2);
assign empty_23_fu_509_p2 = (tmp_reg_1101 + b0_z_cast_fu_505_p1);
assign empty_24_fu_559_p2 = (($signed(indvars_iv69_reg_241) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_25_fu_577_p2 = (b0_z_reg_229 + 3'd2);
assign empty_26_fu_874_p2 = ((targetBlock_reg_1292 == 2'd0) ? 1'b1 : 1'b0);
assign empty_27_fu_879_p3 = ((empty_26_fu_874_p2[0:0] == 1'b1) ? sum_z_1_loc_fu_156 : sum_z_3_loc_fu_112);
assign empty_28_fu_887_p2 = ((targetBlock_reg_1292 == 2'd1) ? 1'b1 : 1'b0);
assign empty_29_fu_892_p3 = ((empty_28_fu_887_p2[0:0] == 1'b1) ? sum_z_7_loc_fu_136 : empty_27_fu_879_p3);
assign empty_30_fu_900_p2 = ((targetBlock_reg_1292 == 2'd2) ? 1'b1 : 1'b0);
assign empty_31_fu_913_p3 = ((empty_26_fu_874_p2[0:0] == 1'b1) ? sum_y_1_loc_fu_152 : sum_y_3_loc_fu_116);
assign empty_32_fu_921_p3 = ((empty_28_fu_887_p2[0:0] == 1'b1) ? sum_y_7_loc_fu_140 : empty_31_fu_913_p3);
assign empty_33_fu_937_p3 = ((empty_26_fu_874_p2[0:0] == 1'b1) ? sum_x_1_loc_fu_148 : sum_x_3_loc_fu_120);
assign empty_34_fu_945_p3 = ((empty_28_fu_887_p2[0:0] == 1'b1) ? sum_x_7_loc_fu_144 : empty_33_fu_937_p3);
assign empty_fu_369_p2 = (($signed(indvars_iv78_fu_104) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign force_r_address0 = force_r_addr_reg_1212;
assign force_r_ce0 = force_r_ce0_local;
assign force_r_d0 = or_ln_fu_973_p4;
assign force_r_we0 = force_r_we0_local;
assign grp_md_Pipeline_loop_q_fu_294_ap_start = grp_md_Pipeline_loop_q_fu_294_ap_start_reg;
assign icmp_ln14_fu_341_p2 = ((b0_x_fu_108 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_407_p2 = ((b0_y_reg_206 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_493_p2 = ((b0_z_reg_229 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_597_p2 = ((b1_x_reg_253 < cond24_reg_1088) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_620_p2 = ((b1_y_reg_263 < cond47_reg_1111) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_648_p2 = ((b1_z_reg_273 < cond70_reg_1144) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_707_p2 = (($signed(zext_ln24_fu_703_p1) < $signed(n_points_load_reg_1149)) ? 1'b1 : 1'b0);
assign n_points_address0 = n_points_address0_local;
assign n_points_ce0 = n_points_ce0_local;
assign or_ln_fu_973_p4 = {{{bitcast_ln51_fu_969_p1}, {bitcast_ln50_fu_965_p1}}, {bitcast_ln49_fu_961_p1}};
assign p_cast6_fu_514_p1 = empty_23_fu_509_p2;
assign p_shl1_fu_523_p3 = {{trunc_ln26_fu_519_p1}, {3'd0}};
assign p_shl_fu_671_p3 = {{trunc_ln31_fu_667_p1}, {3'd0}};
assign p_x_fu_787_p1 = trunc_ln25_3_reg_1232;
assign p_y_fu_791_p1 = trunc_ln25_1_reg_1237;
assign p_z_fu_795_p1 = trunc_ln25_2_reg_1242;
assign position_address1 = grp_md_Pipeline_loop_q_fu_294_position_address1;
assign smax75_cast_fu_454_p1 = smax75_fu_446_p3;
assign smax75_fu_446_p3 = ((empty_21_fu_440_p2[0:0] == 1'b1) ? trunc_ln15_fu_436_p1 : 2'd0);
assign smax80_cast_fu_383_p1 = smax80_fu_375_p3;
assign smax80_fu_375_p3 = ((empty_fu_369_p2[0:0] == 1'b1) ? trunc_ln14_fu_365_p1 : 2'd0);
assign smax_cast_fu_573_p1 = smax_fu_565_p3;
assign smax_fu_565_p3 = ((empty_24_fu_559_p2[0:0] == 1'b1) ? trunc_ln16_fu_555_p1 : 2'd0);
assign sum_x_0_lcssa_ph_fu_953_p3 = ((empty_30_fu_900_p2[0:0] == 1'b1) ? sum_x_5_loc_fu_132 : empty_34_fu_945_p3);
assign sum_x_fu_803_p1 = trunc_ln26_1_fu_799_p1;
assign sum_y_0_lcssa_ph_fu_929_p3 = ((empty_30_fu_900_p2[0:0] == 1'b1) ? sum_y_5_loc_fu_128 : empty_32_fu_921_p3);
assign sum_y_fu_818_p1 = trunc_ln5_fu_808_p4;
assign sum_z_0_lcssa_ph_fu_905_p3 = ((empty_30_fu_900_p2[0:0] == 1'b1) ? sum_z_5_loc_fu_124 : empty_29_fu_892_p3);
assign sum_z_fu_833_p1 = trunc_ln6_fu_823_p4;
assign tmp_10_fu_353_p3 = {{b0_x_fu_108}, {2'd0}};
assign tmp_19_fu_602_p3 = {{b1_x_reg_253}, {2'd0}};
assign tmp_23_fu_531_p3 = {{empty_23_fu_509_p2}, {1'd0}};
assign tmp_24_fu_634_p3 = {{add_ln23_fu_629_p2}, {2'd0}};
assign tmp_25_fu_679_p3 = {{add_ln23_1_fu_657_p2}, {1'd0}};
assign tmp_fu_428_p3 = {{empty_20_fu_423_p2}, {2'd0}};
assign trunc_ln14_fu_365_p1 = indvars_iv78_fu_104[1:0];
assign trunc_ln15_fu_436_p1 = indvars_iv73_reg_217[1:0];
assign trunc_ln16_fu_555_p1 = indvars_iv69_reg_241[1:0];
assign trunc_ln25_3_fu_739_p1 = position_q0[63:0];
assign trunc_ln25_fu_735_p1 = position_q0[190:0];
assign trunc_ln26_1_fu_799_p1 = force_r_q0[63:0];
assign trunc_ln26_fu_519_p1 = empty_23_fu_509_p2[6:0];
assign trunc_ln31_fu_667_p1 = add_ln23_1_fu_657_p2[6:0];
assign trunc_ln34_fu_763_p1 = position_q0[51:0];
assign trunc_ln5_fu_808_p4 = {{force_r_q0[127:64]}};
assign trunc_ln6_fu_823_p4 = {{force_r_q0[191:128]}};
assign zext_ln14_fu_361_p1 = tmp_10_fu_353_p3;
assign zext_ln16_fu_539_p1 = tmp_23_fu_531_p3;
assign zext_ln23_1_fu_653_p1 = b1_z_reg_273;
assign zext_ln23_2_fu_662_p1 = add_ln23_1_fu_657_p2;
assign zext_ln23_fu_625_p1 = b1_y_reg_263;
assign zext_ln24_fu_703_p1 = p_idx_reg_283;
assign zext_ln26_fu_723_p1 = add_ln26_fu_718_p2;
assign zext_ln8_1_fu_687_p1 = tmp_25_fu_679_p3;
assign zext_ln8_fu_610_p1 = tmp_19_fu_602_p3;
always @ (posedge ap_clk) begin
    zext_ln14_reg_1078[1:0] <= 2'b00;
    zext_ln14_reg_1078[5] <= 1'b0;
    smax80_cast_reg_1083[2] <= 1'b0;
    tmp_reg_1101[1:0] <= 2'b00;
    smax75_cast_reg_1106[2] <= 1'b0;
    add_ln16_2_reg_1129[0] <= 1'b0;
    smax_cast_reg_1139[2] <= 1'b0;
    zext_ln8_reg_1157[1:0] <= 2'b00;
    zext_ln8_reg_1157[5] <= 1'b0;
    tmp_24_reg_1170[1:0] <= 2'b00;
    add_ln8_reg_1188[0] <= 1'b0;
end
endmodule 