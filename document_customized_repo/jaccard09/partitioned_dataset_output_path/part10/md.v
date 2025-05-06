
module md (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,n_points_address0,n_points_ce0,n_points_q0,force_r_address0,force_r_ce0,force_r_we0,force_r_d0,force_r_q0,position_address0,position_ce0,position_q0);  
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] position_address0;
reg position_ce0;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] add_ln14_fu_298_p2;
reg   [2:0] add_ln14_reg_853;
wire    ap_CS_fsm_state2;
wire   [5:0] zext_ln14_fu_312_p1;
reg   [5:0] zext_ln14_reg_858;
wire   [2:0] smax73_cast_fu_334_p1;
reg   [2:0] smax73_cast_reg_863;
wire   [2:0] cond24_fu_350_p3;
reg   [2:0] cond24_reg_868;
wire   [2:0] add_ln15_fu_364_p2;
reg   [2:0] add_ln15_reg_876;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_fu_379_p3;
reg   [7:0] tmp_reg_881;
wire   [2:0] smax68_cast_fu_405_p1;
reg   [2:0] smax68_cast_reg_886;
wire   [2:0] cond47_fu_421_p3;
reg   [2:0] cond47_reg_891;
wire   [2:0] add_ln16_fu_450_p2;
reg   [2:0] add_ln16_reg_899;
wire    ap_CS_fsm_state4;
wire   [9:0] add_ln16_2_fu_494_p2;
reg   [9:0] add_ln16_2_reg_909;
wire   [2:0] add_ln15_1_fu_500_p2;
wire   [2:0] smax_cast_fu_524_p1;
reg   [2:0] smax_cast_reg_919;
wire    ap_CS_fsm_state5;
wire   [2:0] cond70_fu_540_p3;
reg   [2:0] cond70_reg_924;
reg   [31:0] n_points_load_reg_929;
wire   [5:0] zext_ln8_fu_561_p1;
reg   [5:0] zext_ln8_reg_937;
wire    ap_CS_fsm_state6;
wire   [2:0] add_ln16_1_fu_565_p2;
wire   [7:0] tmp_11_fu_585_p3;
reg   [7:0] tmp_11_reg_950;
wire    ap_CS_fsm_state7;
wire   [2:0] add_ln18_fu_593_p2;
wire    ap_CS_fsm_state8;
wire   [9:0] add_ln8_fu_642_p2;
reg   [9:0] add_ln8_reg_968;
wire   [2:0] add_ln19_fu_648_p2;
reg   [31:0] q_idx_range_reg_978;
wire    ap_CS_fsm_state9;
wire   [9:0] add_ln24_fu_663_p2;
reg   [9:0] add_ln24_reg_986;
wire    ap_CS_fsm_state10;
reg   [9:0] force_r_addr_reg_991;
wire   [2:0] add_ln20_fu_680_p2;
wire   [190:0] trunc_ln25_fu_686_p1;
reg   [190:0] trunc_ln25_reg_1006;
wire    ap_CS_fsm_state11;
wire   [63:0] trunc_ln25_3_fu_690_p1;
reg   [63:0] trunc_ln25_3_reg_1011;
reg   [63:0] trunc_ln25_1_reg_1016;
reg   [63:0] trunc_ln25_2_reg_1021;
wire   [63:0] trunc_ln26_1_fu_714_p1;
reg   [63:0] trunc_ln26_1_reg_1026;
reg   [63:0] trunc_ln5_reg_1031;
reg   [63:0] trunc_ln6_reg_1036;
wire   [51:0] trunc_ln34_fu_738_p1;
reg   [51:0] trunc_ln34_reg_1041;
reg   [51:0] trunc_ln34_3_reg_1046;
reg   [51:0] trunc_ln34_5_reg_1051;
wire   [63:0] p_x_fu_762_p1;
reg   [63:0] p_x_reg_1056;
wire    ap_CS_fsm_state12;
wire   [63:0] p_y_fu_766_p1;
reg   [63:0] p_y_reg_1061;
wire   [63:0] p_z_fu_770_p1;
reg   [63:0] p_z_reg_1066;
wire   [63:0] sum_x_fu_774_p1;
reg   [63:0] sum_x_reg_1071;
wire   [63:0] sum_y_fu_778_p1;
reg   [63:0] sum_y_reg_1076;
wire   [63:0] sum_z_fu_782_p1;
reg   [63:0] sum_z_reg_1081;
wire    grp_md_Pipeline_loop_q_fu_255_ap_start;
wire    grp_md_Pipeline_loop_q_fu_255_ap_done;
wire    grp_md_Pipeline_loop_q_fu_255_ap_idle;
wire    grp_md_Pipeline_loop_q_fu_255_ap_ready;
wire   [9:0] grp_md_Pipeline_loop_q_fu_255_position_address0;
wire    grp_md_Pipeline_loop_q_fu_255_position_ce0;
wire   [63:0] grp_md_Pipeline_loop_q_fu_255_sum_z_2_out;
wire    grp_md_Pipeline_loop_q_fu_255_sum_z_2_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_255_sum_y_2_out;
wire    grp_md_Pipeline_loop_q_fu_255_sum_y_2_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_255_sum_x_2_out;
wire    grp_md_Pipeline_loop_q_fu_255_sum_x_2_out_ap_vld;
reg   [2:0] b0_y_reg_167;
wire   [0:0] icmp_ln14_fu_292_p2;
wire   [0:0] icmp_ln16_fu_444_p2;
reg   [2:0] indvars_iv66_reg_178;
reg   [2:0] b0_z_reg_190;
wire   [0:0] icmp_ln15_fu_358_p2;
wire   [0:0] icmp_ln18_fu_548_p2;
reg   [2:0] indvars_iv62_reg_202;
reg   [2:0] b1_x_reg_214;
wire   [0:0] icmp_ln19_fu_571_p2;
reg   [2:0] b1_y_reg_224;
wire   [0:0] icmp_ln20_fu_599_p2;
reg   [2:0] b1_z_reg_234;
wire   [0:0] icmp_ln24_fu_658_p2;
reg   [9:0] p_idx_reg_244;
wire    ap_CS_fsm_state14;
reg    grp_md_Pipeline_loop_q_fu_255_ap_start_reg;
wire    ap_CS_fsm_state13;
wire   [63:0] p_cast6_fu_465_p1;
wire   [63:0] zext_ln23_2_fu_613_p1;
wire   [63:0] zext_ln26_fu_674_p1;
reg   [2:0] indvars_iv71_fu_100;
wire   [2:0] add_ln14_1_fu_429_p2;
reg   [2:0] b0_x_fu_104;
reg    n_points_ce0_local;
reg   [5:0] n_points_address0_local;
reg    position_ce0_local;
reg    force_r_ce0_local;
reg   [9:0] force_r_address0_local;
reg    force_r_we0_local;
wire   [191:0] or_ln_fu_807_p4;
wire   [4:0] tmp_9_fu_304_p3;
wire   [0:0] empty_fu_320_p2;
wire   [1:0] trunc_ln14_fu_316_p1;
wire   [1:0] smax73_fu_326_p3;
wire   [2:0] empty_17_fu_338_p2;
wire   [0:0] cmp18_fu_344_p2;
wire   [5:0] b0_y_cast_fu_370_p1;
wire   [5:0] empty_18_fu_374_p2;
wire   [0:0] empty_19_fu_391_p2;
wire   [1:0] trunc_ln15_fu_387_p1;
wire   [1:0] smax68_fu_397_p3;
wire   [2:0] empty_20_fu_409_p2;
wire   [0:0] cmp41_fu_415_p2;
wire   [7:0] b0_z_cast_fu_456_p1;
wire   [7:0] empty_21_fu_460_p2;
wire   [6:0] trunc_ln26_fu_470_p1;
wire   [8:0] tmp_10_fu_482_p3;
wire   [9:0] p_shl1_fu_474_p3;
wire   [9:0] zext_ln16_fu_490_p1;
wire   [0:0] empty_22_fu_510_p2;
wire   [1:0] trunc_ln16_fu_506_p1;
wire   [1:0] smax_fu_516_p3;
wire   [2:0] empty_23_fu_528_p2;
wire   [0:0] cmp64_fu_534_p2;
wire   [4:0] tmp_s_fu_553_p3;
wire   [5:0] zext_ln23_fu_576_p1;
wire   [5:0] add_ln23_fu_580_p2;
wire   [7:0] zext_ln23_1_fu_604_p1;
wire   [7:0] add_ln23_1_fu_608_p2;
wire   [6:0] trunc_ln31_fu_618_p1;
wire   [8:0] tmp_12_fu_630_p3;
wire   [9:0] p_shl_fu_622_p3;
wire   [9:0] zext_ln8_1_fu_638_p1;
wire   [31:0] zext_ln24_fu_654_p1;
wire   [9:0] add_ln26_fu_669_p2;
wire   [63:0] bitcast_ln51_fu_803_p1;
wire   [63:0] bitcast_ln50_fu_799_p1;
wire   [63:0] bitcast_ln49_fu_795_p1;
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
#0 grp_md_Pipeline_loop_q_fu_255_ap_start_reg = 1'b0;
#0 indvars_iv71_fu_100 = 3'd0;
#0 b0_x_fu_104 = 3'd0;
end
md_md_Pipeline_loop_q grp_md_Pipeline_loop_q_fu_255(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_md_Pipeline_loop_q_fu_255_ap_start),.ap_done(grp_md_Pipeline_loop_q_fu_255_ap_done),.ap_idle(grp_md_Pipeline_loop_q_fu_255_ap_idle),.ap_ready(grp_md_Pipeline_loop_q_fu_255_ap_ready),.sum_z(sum_z_reg_1081),.sum_y(sum_y_reg_1076),.sum_x(sum_x_reg_1071),.q_idx_range(q_idx_range_reg_978),.mul_ln31(add_ln8_reg_968),.position_address0(grp_md_Pipeline_loop_q_fu_255_position_address0),.position_ce0(grp_md_Pipeline_loop_q_fu_255_position_ce0),.position_q0(position_q0),.position_load(trunc_ln25_reg_1006),.empty(trunc_ln34_reg_1041),.p_x(p_x_reg_1056),.trunc_ln34_3(trunc_ln34_3_reg_1046),.p_y(p_y_reg_1061),.trunc_ln34_5(trunc_ln34_5_reg_1051),.p_z(p_z_reg_1066),.sum_z_2_out(grp_md_Pipeline_loop_q_fu_255_sum_z_2_out),.sum_z_2_out_ap_vld(grp_md_Pipeline_loop_q_fu_255_sum_z_2_out_ap_vld),.sum_y_2_out(grp_md_Pipeline_loop_q_fu_255_sum_y_2_out),.sum_y_2_out_ap_vld(grp_md_Pipeline_loop_q_fu_255_sum_y_2_out_ap_vld),.sum_x_2_out(grp_md_Pipeline_loop_q_fu_255_sum_x_2_out),.sum_x_2_out_ap_vld(grp_md_Pipeline_loop_q_fu_255_sum_x_2_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_md_Pipeline_loop_q_fu_255_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_md_Pipeline_loop_q_fu_255_ap_start_reg <= 1'b1;
        end else if ((grp_md_Pipeline_loop_q_fu_255_ap_ready == 1'b1)) begin
            grp_md_Pipeline_loop_q_fu_255_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b0_x_fu_104 <= 3'd0;
    end else if (((icmp_ln15_fu_358_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_x_fu_104 <= add_ln14_reg_853;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_444_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        b0_y_reg_167 <= add_ln15_reg_876;
    end else if (((icmp_ln14_fu_292_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b0_y_reg_167 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_548_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        b0_z_reg_190 <= add_ln16_reg_899;
    end else if (((icmp_ln15_fu_358_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_z_reg_190 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b1_x_reg_214 <= smax73_cast_reg_863;
    end else if (((icmp_ln19_fu_571_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_x_reg_214 <= add_ln18_fu_593_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_548_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        b1_y_reg_224 <= smax68_cast_reg_886;
    end else if (((icmp_ln20_fu_599_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        b1_y_reg_224 <= add_ln19_fu_648_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_571_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_z_reg_234 <= smax_cast_reg_919;
    end else if (((icmp_ln24_fu_658_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        b1_z_reg_234 <= add_ln20_fu_680_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_548_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        indvars_iv62_reg_202 <= add_ln16_1_fu_565_p2;
    end else if (((icmp_ln15_fu_358_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv62_reg_202 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_444_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv66_reg_178 <= add_ln15_1_fu_500_p2;
    end else if (((icmp_ln14_fu_292_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv66_reg_178 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv71_fu_100 <= 3'd7;
    end else if (((icmp_ln15_fu_358_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv71_fu_100 <= add_ln14_1_fu_429_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        p_idx_reg_244 <= add_ln24_reg_986;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        p_idx_reg_244 <= 10'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln14_reg_853 <= add_ln14_fu_298_p2;
        cond24_reg_868 <= cond24_fu_350_p3;
        smax73_cast_reg_863[1 : 0] <= smax73_cast_fu_334_p1[1 : 0];
        zext_ln14_reg_858[4 : 2] <= zext_ln14_fu_312_p1[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln15_reg_876 <= add_ln15_fu_364_p2;
        cond47_reg_891 <= cond47_fu_421_p3;
        smax68_cast_reg_886[1 : 0] <= smax68_cast_fu_405_p1[1 : 0];
        tmp_reg_881[7 : 2] <= tmp_fu_379_p3[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_2_reg_909[9 : 1] <= add_ln16_2_fu_494_p2[9 : 1];
        add_ln16_reg_899 <= add_ln16_fu_450_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln24_reg_986 <= add_ln24_fu_663_p2;
        force_r_addr_reg_991 <= zext_ln26_fu_674_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln8_reg_968[9 : 1] <= add_ln8_fu_642_p2[9 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        cond70_reg_924 <= cond70_fu_540_p3;
        n_points_load_reg_929 <= n_points_q0;
        smax_cast_reg_919[1 : 0] <= smax_cast_fu_524_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        p_x_reg_1056 <= p_x_fu_762_p1;
        p_y_reg_1061 <= p_y_fu_766_p1;
        p_z_reg_1066 <= p_z_fu_770_p1;
        sum_x_reg_1071 <= sum_x_fu_774_p1;
        sum_y_reg_1076 <= sum_y_fu_778_p1;
        sum_z_reg_1081 <= sum_z_fu_782_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        q_idx_range_reg_978 <= n_points_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_11_reg_950[7 : 2] <= tmp_11_fu_585_p3[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        trunc_ln25_1_reg_1016 <= {{position_q0[127:64]}};
        trunc_ln25_2_reg_1021 <= {{position_q0[191:128]}};
        trunc_ln25_3_reg_1011 <= trunc_ln25_3_fu_690_p1;
        trunc_ln25_reg_1006 <= trunc_ln25_fu_686_p1;
        trunc_ln26_1_reg_1026 <= trunc_ln26_1_fu_714_p1;
        trunc_ln34_3_reg_1046 <= {{position_q0[115:64]}};
        trunc_ln34_5_reg_1051 <= {{position_q0[179:128]}};
        trunc_ln34_reg_1041 <= trunc_ln34_fu_738_p1;
        trunc_ln5_reg_1031 <= {{force_r_q0[127:64]}};
        trunc_ln6_reg_1036 <= {{force_r_q0[191:128]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        zext_ln8_reg_937[4 : 2] <= zext_ln8_fu_561_p1[4 : 2];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_md_Pipeline_loop_q_fu_255_ap_done == 1'b0)) begin
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
    if (((icmp_ln14_fu_292_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln14_fu_292_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_r_address0_local = force_r_addr_reg_991;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        force_r_address0_local = zext_ln26_fu_674_p1;
    end else begin
        force_r_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10))) begin
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
        n_points_address0_local = zext_ln23_2_fu_613_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_address0_local = p_cast6_fu_465_p1;
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
        position_address0 = grp_md_Pipeline_loop_q_fu_255_position_address0;
    end else begin
        position_address0 = zext_ln26_fu_674_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_ce0 = grp_md_Pipeline_loop_q_fu_255_position_ce0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln14_fu_292_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln15_fu_358_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_444_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln18_fu_548_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_571_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln20_fu_599_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln24_fu_658_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
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
            if (((1'b1 == ap_CS_fsm_state13) & (grp_md_Pipeline_loop_q_fu_255_ap_done == 1'b1))) begin
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
assign add_ln14_1_fu_429_p2 = (indvars_iv71_fu_100 + 3'd1);
assign add_ln14_fu_298_p2 = (b0_x_fu_104 + 3'd1);
assign add_ln15_1_fu_500_p2 = (indvars_iv66_reg_178 + 3'd1);
assign add_ln15_fu_364_p2 = (b0_y_reg_167 + 3'd1);
assign add_ln16_1_fu_565_p2 = (indvars_iv62_reg_202 + 3'd1);
assign add_ln16_2_fu_494_p2 = (p_shl1_fu_474_p3 + zext_ln16_fu_490_p1);
assign add_ln16_fu_450_p2 = (b0_z_reg_190 + 3'd1);
assign add_ln18_fu_593_p2 = (b1_x_reg_214 + 3'd1);
assign add_ln19_fu_648_p2 = (b1_y_reg_224 + 3'd1);
assign add_ln20_fu_680_p2 = (b1_z_reg_234 + 3'd1);
assign add_ln23_1_fu_608_p2 = (tmp_11_reg_950 + zext_ln23_1_fu_604_p1);
assign add_ln23_fu_580_p2 = (zext_ln8_reg_937 + zext_ln23_fu_576_p1);
assign add_ln24_fu_663_p2 = (p_idx_reg_244 + 10'd1);
assign add_ln26_fu_669_p2 = (add_ln16_2_reg_909 + p_idx_reg_244);
assign add_ln8_fu_642_p2 = (p_shl_fu_622_p3 + zext_ln8_1_fu_638_p1);
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
assign b0_y_cast_fu_370_p1 = b0_y_reg_167;
assign b0_z_cast_fu_456_p1 = b0_z_reg_190;
assign bitcast_ln49_fu_795_p1 = grp_md_Pipeline_loop_q_fu_255_sum_x_2_out;
assign bitcast_ln50_fu_799_p1 = grp_md_Pipeline_loop_q_fu_255_sum_y_2_out;
assign bitcast_ln51_fu_803_p1 = grp_md_Pipeline_loop_q_fu_255_sum_z_2_out;
assign cmp18_fu_344_p2 = ((empty_17_fu_338_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp41_fu_415_p2 = ((empty_20_fu_409_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp64_fu_534_p2 = ((empty_23_fu_528_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cond24_fu_350_p3 = ((cmp18_fu_344_p2[0:0] == 1'b1) ? 3'd4 : empty_17_fu_338_p2);
assign cond47_fu_421_p3 = ((cmp41_fu_415_p2[0:0] == 1'b1) ? 3'd4 : empty_20_fu_409_p2);
assign cond70_fu_540_p3 = ((cmp64_fu_534_p2[0:0] == 1'b1) ? 3'd4 : empty_23_fu_528_p2);
assign empty_17_fu_338_p2 = (b0_x_fu_104 + 3'd2);
assign empty_18_fu_374_p2 = (zext_ln14_reg_858 + b0_y_cast_fu_370_p1);
assign empty_19_fu_391_p2 = (($signed(indvars_iv66_reg_178) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_20_fu_409_p2 = (b0_y_reg_167 + 3'd2);
assign empty_21_fu_460_p2 = (tmp_reg_881 + b0_z_cast_fu_456_p1);
assign empty_22_fu_510_p2 = (($signed(indvars_iv62_reg_202) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_23_fu_528_p2 = (b0_z_reg_190 + 3'd2);
assign empty_fu_320_p2 = (($signed(indvars_iv71_fu_100) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign force_r_address0 = force_r_address0_local;
assign force_r_ce0 = force_r_ce0_local;
assign force_r_d0 = or_ln_fu_807_p4;
assign force_r_we0 = force_r_we0_local;
assign grp_md_Pipeline_loop_q_fu_255_ap_start = grp_md_Pipeline_loop_q_fu_255_ap_start_reg;
assign icmp_ln14_fu_292_p2 = ((b0_x_fu_104 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_358_p2 = ((b0_y_reg_167 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_444_p2 = ((b0_z_reg_190 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_548_p2 = ((b1_x_reg_214 < cond24_reg_868) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_571_p2 = ((b1_y_reg_224 < cond47_reg_891) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_599_p2 = ((b1_z_reg_234 < cond70_reg_924) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_658_p2 = (($signed(zext_ln24_fu_654_p1) < $signed(n_points_load_reg_929)) ? 1'b1 : 1'b0);
assign n_points_address0 = n_points_address0_local;
assign n_points_ce0 = n_points_ce0_local;
assign or_ln_fu_807_p4 = {{{bitcast_ln51_fu_803_p1}, {bitcast_ln50_fu_799_p1}}, {bitcast_ln49_fu_795_p1}};
assign p_cast6_fu_465_p1 = empty_21_fu_460_p2;
assign p_shl1_fu_474_p3 = {{trunc_ln26_fu_470_p1}, {3'd0}};
assign p_shl_fu_622_p3 = {{trunc_ln31_fu_618_p1}, {3'd0}};
assign p_x_fu_762_p1 = trunc_ln25_3_reg_1011;
assign p_y_fu_766_p1 = trunc_ln25_1_reg_1016;
assign p_z_fu_770_p1 = trunc_ln25_2_reg_1021;
assign smax68_cast_fu_405_p1 = smax68_fu_397_p3;
assign smax68_fu_397_p3 = ((empty_19_fu_391_p2[0:0] == 1'b1) ? trunc_ln15_fu_387_p1 : 2'd0);
assign smax73_cast_fu_334_p1 = smax73_fu_326_p3;
assign smax73_fu_326_p3 = ((empty_fu_320_p2[0:0] == 1'b1) ? trunc_ln14_fu_316_p1 : 2'd0);
assign smax_cast_fu_524_p1 = smax_fu_516_p3;
assign smax_fu_516_p3 = ((empty_22_fu_510_p2[0:0] == 1'b1) ? trunc_ln16_fu_506_p1 : 2'd0);
assign sum_x_fu_774_p1 = trunc_ln26_1_reg_1026;
assign sum_y_fu_778_p1 = trunc_ln5_reg_1031;
assign sum_z_fu_782_p1 = trunc_ln6_reg_1036;
assign tmp_10_fu_482_p3 = {{empty_21_fu_460_p2}, {1'd0}};
assign tmp_11_fu_585_p3 = {{add_ln23_fu_580_p2}, {2'd0}};
assign tmp_12_fu_630_p3 = {{add_ln23_1_fu_608_p2}, {1'd0}};
assign tmp_9_fu_304_p3 = {{b0_x_fu_104}, {2'd0}};
assign tmp_fu_379_p3 = {{empty_18_fu_374_p2}, {2'd0}};
assign tmp_s_fu_553_p3 = {{b1_x_reg_214}, {2'd0}};
assign trunc_ln14_fu_316_p1 = indvars_iv71_fu_100[1:0];
assign trunc_ln15_fu_387_p1 = indvars_iv66_reg_178[1:0];
assign trunc_ln16_fu_506_p1 = indvars_iv62_reg_202[1:0];
assign trunc_ln25_3_fu_690_p1 = position_q0[63:0];
assign trunc_ln25_fu_686_p1 = position_q0[190:0];
assign trunc_ln26_1_fu_714_p1 = force_r_q0[63:0];
assign trunc_ln26_fu_470_p1 = empty_21_fu_460_p2[6:0];
assign trunc_ln31_fu_618_p1 = add_ln23_1_fu_608_p2[6:0];
assign trunc_ln34_fu_738_p1 = position_q0[51:0];
assign zext_ln14_fu_312_p1 = tmp_9_fu_304_p3;
assign zext_ln16_fu_490_p1 = tmp_10_fu_482_p3;
assign zext_ln23_1_fu_604_p1 = b1_z_reg_234;
assign zext_ln23_2_fu_613_p1 = add_ln23_1_fu_608_p2;
assign zext_ln23_fu_576_p1 = b1_y_reg_224;
assign zext_ln24_fu_654_p1 = p_idx_reg_244;
assign zext_ln26_fu_674_p1 = add_ln26_fu_669_p2;
assign zext_ln8_1_fu_638_p1 = tmp_12_fu_630_p3;
assign zext_ln8_fu_561_p1 = tmp_s_fu_553_p3;
always @ (posedge ap_clk) begin
    zext_ln14_reg_858[1:0] <= 2'b00;
    zext_ln14_reg_858[5] <= 1'b0;
    smax73_cast_reg_863[2] <= 1'b0;
    tmp_reg_881[1:0] <= 2'b00;
    smax68_cast_reg_886[2] <= 1'b0;
    add_ln16_2_reg_909[0] <= 1'b0;
    smax_cast_reg_919[2] <= 1'b0;
    zext_ln8_reg_937[1:0] <= 2'b00;
    zext_ln8_reg_937[5] <= 1'b0;
    tmp_11_reg_950[1:0] <= 2'b00;
    add_ln8_reg_968[0] <= 1'b0;
end
endmodule 
