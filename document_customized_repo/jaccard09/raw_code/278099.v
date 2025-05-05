module backprop_backprop_Pipeline_label_6_label_7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v1_0_address0,v1_0_ce0,v1_0_q0,v1_0_address1,v1_0_ce1,v1_0_q1,v1_1_address0,v1_1_ce0,v1_1_q0,v1_1_address1,v1_1_ce1,v1_1_q1,v20_address0,v20_ce0,v20_q0,v20_address1,v20_ce1,v20_q1,v19_address0,v19_ce0,v19_we0,v19_d0,v19_1_address0,v19_1_ce0,v19_1_we0,v19_1_d0,v19_2_address0,v19_2_ce0,v19_2_we0,v19_2_d0,v19_3_address0,v19_3_ce0,v19_3_we0,v19_3_d0,v19_4_address0,v19_4_ce0,v19_4_we0,v19_4_d0,v19_5_address0,v19_5_ce0,v19_5_we0,v19_5_d0,v19_6_address0,v19_6_ce0,v19_6_we0,v19_6_d0,v19_7_address0,v19_7_ce0,v19_7_we0,v19_7_d0,grp_fu_28639_p_din0,grp_fu_28639_p_din1,grp_fu_28639_p_opcode,grp_fu_28639_p_dout0,grp_fu_28639_p_ce,grp_fu_28651_p_din0,grp_fu_28651_p_din1,grp_fu_28651_p_dout0,grp_fu_28651_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] v1_0_address0;
output   v1_0_ce0;
input  [63:0] v1_0_q0;
output  [10:0] v1_0_address1;
output   v1_0_ce1;
input  [63:0] v1_0_q1;
output  [10:0] v1_1_address0;
output   v1_1_ce0;
input  [63:0] v1_1_q0;
output  [10:0] v1_1_address1;
output   v1_1_ce1;
input  [63:0] v1_1_q1;
output  [5:0] v20_address0;
output   v20_ce0;
input  [63:0] v20_q0;
output  [5:0] v20_address1;
output   v20_ce1;
input  [63:0] v20_q1;
output  [2:0] v19_address0;
output   v19_ce0;
output   v19_we0;
output  [63:0] v19_d0;
output  [2:0] v19_1_address0;
output   v19_1_ce0;
output   v19_1_we0;
output  [63:0] v19_1_d0;
output  [2:0] v19_2_address0;
output   v19_2_ce0;
output   v19_2_we0;
output  [63:0] v19_2_d0;
output  [2:0] v19_3_address0;
output   v19_3_ce0;
output   v19_3_we0;
output  [63:0] v19_3_d0;
output  [2:0] v19_4_address0;
output   v19_4_ce0;
output   v19_4_we0;
output  [63:0] v19_4_d0;
output  [2:0] v19_5_address0;
output   v19_5_ce0;
output   v19_5_we0;
output  [63:0] v19_5_d0;
output  [2:0] v19_6_address0;
output   v19_6_ce0;
output   v19_6_we0;
output  [63:0] v19_6_d0;
output  [2:0] v19_7_address0;
output   v19_7_ce0;
output   v19_7_we0;
output  [63:0] v19_7_d0;
output  [63:0] grp_fu_28639_p_din0;
output  [63:0] grp_fu_28639_p_din1;
output  [0:0] grp_fu_28639_p_opcode;
input  [63:0] grp_fu_28639_p_dout0;
output   grp_fu_28639_p_ce;
output  [63:0] grp_fu_28651_p_din0;
output  [63:0] grp_fu_28651_p_din1;
input  [63:0] grp_fu_28651_p_dout0;
output   grp_fu_28651_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] icmp_ln94_reg_742;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_372;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln94_fu_408_p2;
reg   [6:0] v42_load_reg_746;
wire   [0:0] tmp_fu_426_p3;
reg   [0:0] tmp_reg_751;
wire   [6:0] select_ln94_fu_434_p3;
reg   [6:0] select_ln94_reg_757;
wire   [6:0] add_ln94_1_fu_442_p2;
reg   [6:0] add_ln94_1_reg_763;
wire   [4:0] tmp_1_fu_453_p4;
reg   [4:0] tmp_1_reg_773;
reg   [3:0] tmp_2_reg_783;
wire   [0:0] trunc_ln96_fu_486_p1;
reg   [0:0] trunc_ln96_reg_791;
wire   [2:0] trunc_ln94_fu_500_p1;
reg   [2:0] trunc_ln94_reg_797;
reg   [2:0] trunc_ln94_reg_797_pp0_iter1_reg;
reg   [0:0] tmp_64_reg_811;
reg   [63:0] v45_reg_816;
wire   [4:0] trunc_ln97_1_fu_543_p1;
reg   [4:0] trunc_ln97_1_reg_821;
reg   [0:0] tmp_65_reg_837;
reg   [63:0] v45_1_reg_843;
reg   [2:0] lshr_ln3_reg_858;
reg   [2:0] lshr_ln3_reg_858_pp0_iter1_reg;
wire   [63:0] select_ln97_fu_610_p3;
reg   [63:0] select_ln97_reg_863;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] grp_fu_365_p3;
reg   [63:0] select_ln97_1_reg_868;
reg   [63:0] v45_2_reg_883;
reg   [63:0] v45_3_reg_898;
wire   [63:0] v44_fu_646_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] select_ln97_2_fu_650_p3;
reg   [63:0] select_ln97_2_reg_908;
reg   [63:0] select_ln97_3_reg_913;
wire   [63:0] v44_1_fu_657_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] v44_2_fu_661_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] v44_3_fu_665_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] v46_reg_933;
wire   [63:0] select_ln94_1_fu_672_p3;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] v46_1_reg_943;
reg   [63:0] v46_2_reg_948;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] v46_3_reg_953;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [0:0] tmp_66_reg_958;
wire    ap_block_pp0_stage31_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln96_fu_448_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln97_1_fu_471_p1;
wire   [63:0] zext_ln97_fu_529_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln97_2_fu_556_p1;
wire   [63:0] zext_ln97_3_fu_578_p1;
wire   [63:0] zext_ln97_5_fu_590_p1;
wire   [63:0] zext_ln97_4_fu_626_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln97_6_fu_640_p1;
wire   [63:0] zext_ln94_fu_703_p1;
wire    ap_block_pp0_stage10;
reg   [63:0] v47_fu_114;
wire    ap_loop_init;
reg   [6:0] v43_fu_118;
wire   [6:0] add_ln96_fu_680_p2;
reg   [6:0] ap_sig_allocacmp_v43_load;
reg   [6:0] v42_fu_122;
wire   [6:0] select_ln94_2_fu_495_p3;
reg   [6:0] ap_sig_allocacmp_v42_load;
reg   [10:0] indvar_flatten_fu_126;
wire   [10:0] add_ln94_fu_414_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v20_ce1_local;
reg   [5:0] v20_address1_local;
reg    v20_ce0_local;
reg   [5:0] v20_address0_local;
reg    v1_0_ce1_local;
reg   [10:0] v1_0_address1_local;
reg    v1_0_ce0_local;
reg   [10:0] v1_0_address0_local;
reg    v1_1_ce1_local;
reg   [10:0] v1_1_address1_local;
reg    v1_1_ce0_local;
reg   [10:0] v1_1_address0_local;
reg    v19_6_we0_local;
reg    v19_6_ce0_local;
reg    v19_5_we0_local;
reg    v19_5_ce0_local;
reg    v19_4_we0_local;
reg    v19_4_ce0_local;
reg    v19_3_we0_local;
reg    v19_3_ce0_local;
reg    v19_2_we0_local;
reg    v19_2_ce0_local;
reg    v19_1_we0_local;
reg    v19_1_ce0_local;
reg    v19_we0_local;
reg    v19_ce0_local;
reg    v19_7_we0_local;
reg    v19_7_ce0_local;
reg   [63:0] grp_fu_357_p0;
reg   [63:0] grp_fu_357_p1;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26;
reg   [63:0] grp_fu_361_p0;
reg   [63:0] grp_fu_361_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire   [5:0] or_ln2_fu_463_p3;
wire   [5:0] empty_fu_504_p1;
wire   [11:0] zext_ln96_1_fu_516_p1;
wire   [11:0] tmp_s_fu_508_p3;
wire   [11:0] add_ln97_fu_519_p2;
wire   [10:0] trunc_ln97_fu_525_p1;
wire   [10:0] and_ln97_1_fu_547_p4;
wire   [5:0] or_ln96_1_fu_570_p4;
wire   [5:0] or_ln96_2_fu_583_p3;
wire   [10:0] and_ln97_2_fu_617_p5;
wire   [10:0] add_ln97_3_cast_fu_632_p4;
wire    ap_block_pp0_stage31;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage18_00001;
wire    ap_block_pp0_stage26_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v47_fu_114 = 64'd0;
#0 v43_fu_118 = 7'd0;
#0 v42_fu_122 = 7'd0;
#0 indvar_flatten_fu_126 = 11'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
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
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln94_fu_408_p2 == 1'd0))) begin
            indvar_flatten_fu_126 <= add_ln94_fu_414_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_126 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v42_fu_122 <= 7'd0;
    end else if (((icmp_ln94_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v42_fu_122 <= select_ln94_2_fu_495_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v43_fu_118 <= 7'd0;
    end else if (((icmp_ln94_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        v43_fu_118 <= add_ln96_fu_680_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_fu_114 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v47_fu_114 <= grp_fu_28639_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln94_1_reg_763 <= add_ln94_1_fu_442_p2;
        icmp_ln94_reg_742 <= icmp_ln94_fu_408_p2;
        select_ln94_reg_757 <= select_ln94_fu_434_p3;
        tmp_1_reg_773 <= {{select_ln94_fu_434_p3[5:1]}};
        tmp_2_reg_783 <= {{select_ln94_fu_434_p3[5:2]}};
        tmp_reg_751 <= ap_sig_allocacmp_v43_load[32'd6];
        trunc_ln96_reg_791 <= trunc_ln96_fu_486_p1;
        v42_load_reg_746 <= ap_sig_allocacmp_v42_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln3_reg_858 <= {{select_ln94_2_fu_495_p3[5:3]}};
        lshr_ln3_reg_858_pp0_iter1_reg <= lshr_ln3_reg_858;
        tmp_64_reg_811 <= add_ln97_fu_519_p2[32'd11];
        tmp_65_reg_837 <= select_ln94_2_fu_495_p3[32'd5];
        trunc_ln94_reg_797 <= trunc_ln94_fu_500_p1;
        trunc_ln94_reg_797_pp0_iter1_reg <= trunc_ln94_reg_797;
        trunc_ln97_1_reg_821 <= trunc_ln97_1_fu_543_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_372 <= grp_fu_28639_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln97_1_reg_868 <= grp_fu_365_p3;
        v45_2_reg_883 <= v20_q1;
        v45_3_reg_898 <= v20_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln97_2_reg_908 <= select_ln97_2_fu_650_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln97_3_reg_913 <= grp_fu_365_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln97_reg_863 <= select_ln97_fu_610_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        tmp_66_reg_958 <= add_ln96_fu_680_p2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v45_1_reg_843 <= v20_q0;
        v45_reg_816 <= v20_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v46_1_reg_943 <= grp_fu_28651_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v46_2_reg_948 <= grp_fu_28651_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v46_3_reg_953 <= grp_fu_28651_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v46_reg_933 <= grp_fu_28651_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln94_reg_742 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v42_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v42_load = v42_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v43_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v43_load = v43_fu_118;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_357_p0 = reg_372;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_357_p0 = select_ln94_1_fu_672_p3;
    end else begin
        grp_fu_357_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_357_p1 = v46_3_reg_953;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_357_p1 = v46_2_reg_948;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_357_p1 = v46_1_reg_943;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_357_p1 = v46_reg_933;
    end else begin
        grp_fu_357_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_361_p0 = v44_3_fu_665_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_361_p0 = v44_2_fu_661_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_361_p0 = v44_1_fu_657_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_361_p0 = v44_fu_646_p1;
        end else begin
            grp_fu_361_p0 = 'bx;
        end
    end else begin
        grp_fu_361_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_361_p1 = v45_3_reg_898;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_361_p1 = v45_2_reg_883;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_361_p1 = v45_1_reg_843;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_361_p1 = v45_reg_816;
        end else begin
            grp_fu_361_p1 = 'bx;
        end
    end else begin
        grp_fu_361_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_66_reg_958 == 1'd1) & (trunc_ln94_reg_797_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_1_we0_local = 1'b1;
    end else begin
        v19_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_2_ce0_local = 1'b1;
    end else begin
        v19_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_66_reg_958 == 1'd1) & (trunc_ln94_reg_797_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_2_we0_local = 1'b1;
    end else begin
        v19_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_3_ce0_local = 1'b1;
    end else begin
        v19_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_66_reg_958 == 1'd1) & (trunc_ln94_reg_797_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_3_we0_local = 1'b1;
    end else begin
        v19_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_4_ce0_local = 1'b1;
    end else begin
        v19_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_66_reg_958 == 1'd1) & (trunc_ln94_reg_797_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_4_we0_local = 1'b1;
    end else begin
        v19_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_5_ce0_local = 1'b1;
    end else begin
        v19_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_66_reg_958 == 1'd1) & (trunc_ln94_reg_797_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_5_we0_local = 1'b1;
    end else begin
        v19_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_6_ce0_local = 1'b1;
    end else begin
        v19_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_66_reg_958 == 1'd1) & (trunc_ln94_reg_797_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_6_we0_local = 1'b1;
    end else begin
        v19_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_7_ce0_local = 1'b1;
    end else begin
        v19_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_66_reg_958 == 1'd1) & (trunc_ln94_reg_797_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_7_we0_local = 1'b1;
    end else begin
        v19_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_66_reg_958 == 1'd1) & (trunc_ln94_reg_797_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_we0_local = 1'b1;
    end else begin
        v19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v1_0_address0_local = zext_ln97_6_fu_640_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v1_0_address0_local = zext_ln97_2_fu_556_p1;
        end else begin
            v1_0_address0_local = 'bx;
        end
    end else begin
        v1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v1_0_address1_local = zext_ln97_4_fu_626_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v1_0_address1_local = zext_ln97_fu_529_p1;
        end else begin
            v1_0_address1_local = 'bx;
        end
    end else begin
        v1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v1_0_ce0_local = 1'b1;
    end else begin
        v1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v1_0_ce1_local = 1'b1;
    end else begin
        v1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v1_1_address0_local = zext_ln97_6_fu_640_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v1_1_address0_local = zext_ln97_2_fu_556_p1;
        end else begin
            v1_1_address0_local = 'bx;
        end
    end else begin
        v1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v1_1_address1_local = zext_ln97_4_fu_626_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v1_1_address1_local = zext_ln97_fu_529_p1;
        end else begin
            v1_1_address1_local = 'bx;
        end
    end else begin
        v1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v1_1_ce0_local = 1'b1;
    end else begin
        v1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v1_1_ce1_local = 1'b1;
    end else begin
        v1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v20_address0_local = zext_ln97_5_fu_590_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v20_address0_local = zext_ln97_1_fu_471_p1;
        end else begin
            v20_address0_local = 'bx;
        end
    end else begin
        v20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v20_address1_local = zext_ln97_3_fu_578_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v20_address1_local = zext_ln96_fu_448_p1;
        end else begin
            v20_address1_local = 'bx;
        end
    end else begin
        v20_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v20_ce1_local = 1'b1;
    end else begin
        v20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
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
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln94_1_fu_442_p2 = (ap_sig_allocacmp_v42_load + 7'd1);
assign add_ln94_fu_414_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);
assign add_ln96_fu_680_p2 = (select_ln94_reg_757 + 7'd4);
assign add_ln97_3_cast_fu_632_p4 = {{{trunc_ln97_1_reg_821}, {tmp_2_reg_783}}, {2'd3}};
assign add_ln97_fu_519_p2 = (zext_ln96_1_fu_516_p1 + tmp_s_fu_508_p3);
assign and_ln97_1_fu_547_p4 = {{{trunc_ln97_1_fu_543_p1}, {tmp_1_reg_773}}, {1'd1}};
assign and_ln97_2_fu_617_p5 = {{{{trunc_ln97_1_reg_821}, {tmp_2_reg_783}}, {1'd1}}, {trunc_ln96_reg_791}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage18_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage26_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign empty_fu_504_p1 = select_ln94_2_fu_495_p3[5:0];
assign grp_fu_28639_p_ce = 1'b1;
assign grp_fu_28639_p_din0 = grp_fu_357_p0;
assign grp_fu_28639_p_din1 = grp_fu_357_p1;
assign grp_fu_28639_p_opcode = 2'd0;
assign grp_fu_28651_p_ce = 1'b1;
assign grp_fu_28651_p_din0 = grp_fu_361_p0;
assign grp_fu_28651_p_din1 = grp_fu_361_p1;
assign grp_fu_365_p3 = ((tmp_65_reg_837[0:0] == 1'b1) ? v1_1_q0 : v1_0_q0);
assign icmp_ln94_fu_408_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1024) ? 1'b1 : 1'b0);
assign or_ln2_fu_463_p3 = {{tmp_1_fu_453_p4}, {1'd1}};
assign or_ln96_1_fu_570_p4 = {{{tmp_2_reg_783}, {1'd1}}, {trunc_ln96_reg_791}};
assign or_ln96_2_fu_583_p3 = {{tmp_2_reg_783}, {2'd3}};
assign select_ln94_1_fu_672_p3 = ((tmp_reg_751[0:0] == 1'b1) ? 64'd0 : v47_fu_114);
assign select_ln94_2_fu_495_p3 = ((tmp_reg_751[0:0] == 1'b1) ? add_ln94_1_reg_763 : v42_load_reg_746);
assign select_ln94_fu_434_p3 = ((tmp_fu_426_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v43_load);
assign select_ln97_2_fu_650_p3 = ((tmp_65_reg_837[0:0] == 1'b1) ? v1_1_q1 : v1_0_q1);
assign select_ln97_fu_610_p3 = ((tmp_64_reg_811[0:0] == 1'b1) ? v1_1_q1 : v1_0_q1);
assign tmp_1_fu_453_p4 = {{select_ln94_fu_434_p3[5:1]}};
assign tmp_fu_426_p3 = ap_sig_allocacmp_v43_load[32'd6];
assign tmp_s_fu_508_p3 = {{empty_fu_504_p1}, {6'd0}};
assign trunc_ln94_fu_500_p1 = select_ln94_2_fu_495_p3[2:0];
assign trunc_ln96_fu_486_p1 = select_ln94_fu_434_p3[0:0];
assign trunc_ln97_1_fu_543_p1 = select_ln94_2_fu_495_p3[4:0];
assign trunc_ln97_fu_525_p1 = add_ln97_fu_519_p2[10:0];
assign v19_1_address0 = zext_ln94_fu_703_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_1_d0 = reg_372;
assign v19_1_we0 = v19_1_we0_local;
assign v19_2_address0 = zext_ln94_fu_703_p1;
assign v19_2_ce0 = v19_2_ce0_local;
assign v19_2_d0 = reg_372;
assign v19_2_we0 = v19_2_we0_local;
assign v19_3_address0 = zext_ln94_fu_703_p1;
assign v19_3_ce0 = v19_3_ce0_local;
assign v19_3_d0 = reg_372;
assign v19_3_we0 = v19_3_we0_local;
assign v19_4_address0 = zext_ln94_fu_703_p1;
assign v19_4_ce0 = v19_4_ce0_local;
assign v19_4_d0 = reg_372;
assign v19_4_we0 = v19_4_we0_local;
assign v19_5_address0 = zext_ln94_fu_703_p1;
assign v19_5_ce0 = v19_5_ce0_local;
assign v19_5_d0 = reg_372;
assign v19_5_we0 = v19_5_we0_local;
assign v19_6_address0 = zext_ln94_fu_703_p1;
assign v19_6_ce0 = v19_6_ce0_local;
assign v19_6_d0 = reg_372;
assign v19_6_we0 = v19_6_we0_local;
assign v19_7_address0 = zext_ln94_fu_703_p1;
assign v19_7_ce0 = v19_7_ce0_local;
assign v19_7_d0 = reg_372;
assign v19_7_we0 = v19_7_we0_local;
assign v19_address0 = zext_ln94_fu_703_p1;
assign v19_ce0 = v19_ce0_local;
assign v19_d0 = reg_372;
assign v19_we0 = v19_we0_local;
assign v1_0_address0 = v1_0_address0_local;
assign v1_0_address1 = v1_0_address1_local;
assign v1_0_ce0 = v1_0_ce0_local;
assign v1_0_ce1 = v1_0_ce1_local;
assign v1_1_address0 = v1_1_address0_local;
assign v1_1_address1 = v1_1_address1_local;
assign v1_1_ce0 = v1_1_ce0_local;
assign v1_1_ce1 = v1_1_ce1_local;
assign v20_address0 = v20_address0_local;
assign v20_address1 = v20_address1_local;
assign v20_ce0 = v20_ce0_local;
assign v20_ce1 = v20_ce1_local;
assign v44_1_fu_657_p1 = select_ln97_1_reg_868;
assign v44_2_fu_661_p1 = select_ln97_2_reg_908;
assign v44_3_fu_665_p1 = select_ln97_3_reg_913;
assign v44_fu_646_p1 = select_ln97_reg_863;
assign zext_ln94_fu_703_p1 = lshr_ln3_reg_858_pp0_iter1_reg;
assign zext_ln96_1_fu_516_p1 = select_ln94_reg_757;
assign zext_ln96_fu_448_p1 = select_ln94_fu_434_p3;
assign zext_ln97_1_fu_471_p1 = or_ln2_fu_463_p3;
assign zext_ln97_2_fu_556_p1 = and_ln97_1_fu_547_p4;
assign zext_ln97_3_fu_578_p1 = or_ln96_1_fu_570_p4;
assign zext_ln97_4_fu_626_p1 = and_ln97_2_fu_617_p5;
assign zext_ln97_5_fu_590_p1 = or_ln96_2_fu_583_p3;
assign zext_ln97_6_fu_640_p1 = add_ln97_3_cast_fu_632_p4;
assign zext_ln97_fu_529_p1 = trunc_ln97_fu_525_p1;
endmodule 