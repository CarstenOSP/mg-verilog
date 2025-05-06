
module backprop_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_we1,weights1_d1,weights1_q1,norm_1,grp_fu_589_p_din0,grp_fu_589_p_din1,grp_fu_589_p_dout0,grp_fu_589_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] weights1_address0;
output   weights1_ce0;
output   weights1_we0;
output  [63:0] weights1_d0;
input  [63:0] weights1_q0;
output  [9:0] weights1_address1;
output   weights1_ce1;
output   weights1_we1;
output  [63:0] weights1_d1;
input  [63:0] weights1_q1;
input  [63:0] norm_1;
output  [63:0] grp_fu_589_p_din0;
output  [63:0] grp_fu_589_p_din1;
input  [63:0] grp_fu_589_p_dout0;
output   grp_fu_589_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln140_reg_878;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_263;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_267;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_272;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_277;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_282;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_286;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_290;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_294;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [0:0] icmp_ln140_fu_316_p2;
reg   [0:0] icmp_ln140_reg_878_pp0_iter1_reg;
reg   [0:0] icmp_ln140_reg_878_pp0_iter2_reg;
reg   [0:0] icmp_ln140_reg_878_pp0_iter3_reg;
reg   [3:0] i_2_load_reg_882;
wire   [3:0] add_ln140_1_fu_331_p2;
reg   [3:0] add_ln140_1_reg_887;
wire   [6:0] select_ln121_fu_353_p3;
reg   [6:0] select_ln121_reg_892;
wire   [3:0] select_ln140_fu_361_p3;
reg   [3:0] select_ln140_reg_897;
reg   [9:0] weights1_addr_reg_915;
reg   [9:0] weights1_addr_reg_915_pp0_iter1_reg;
reg   [9:0] weights1_addr_reg_915_pp0_iter2_reg;
reg   [9:0] weights1_addr_reg_915_pp0_iter3_reg;
reg   [9:0] weights1_addr_1_reg_920;
reg   [9:0] weights1_addr_1_reg_920_pp0_iter1_reg;
reg   [9:0] weights1_addr_1_reg_920_pp0_iter2_reg;
reg   [9:0] weights1_addr_1_reg_920_pp0_iter3_reg;
reg   [3:0] tmp_37_reg_926;
wire   [0:0] trunc_ln142_fu_425_p1;
reg   [0:0] trunc_ln142_reg_932;
reg   [2:0] tmp_38_reg_940;
wire   [1:0] trunc_ln142_1_fu_439_p1;
reg   [1:0] trunc_ln142_1_reg_948;
reg   [0:0] tmp_19_reg_954;
reg   [1:0] tmp_39_reg_960;
wire   [2:0] trunc_ln142_2_fu_461_p1;
reg   [2:0] trunc_ln142_2_reg_972;
reg   [1:0] tmp_40_reg_977;
reg   [0:0] tmp_20_reg_982;
reg   [9:0] weights1_addr_2_reg_988;
reg   [9:0] weights1_addr_2_reg_988_pp0_iter1_reg;
reg   [9:0] weights1_addr_2_reg_988_pp0_iter2_reg;
reg   [9:0] weights1_addr_2_reg_988_pp0_iter3_reg;
reg   [9:0] weights1_addr_3_reg_993;
reg   [9:0] weights1_addr_3_reg_993_pp0_iter1_reg;
reg   [9:0] weights1_addr_3_reg_993_pp0_iter2_reg;
reg   [9:0] weights1_addr_3_reg_993_pp0_iter3_reg;
reg   [9:0] weights1_addr_3_reg_993_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_fu_515_p1;
reg   [9:0] weights1_addr_4_reg_1004;
reg   [9:0] weights1_addr_4_reg_1004_pp0_iter1_reg;
reg   [9:0] weights1_addr_4_reg_1004_pp0_iter2_reg;
reg   [9:0] weights1_addr_4_reg_1004_pp0_iter3_reg;
reg   [9:0] weights1_addr_4_reg_1004_pp0_iter4_reg;
reg   [9:0] weights1_addr_5_reg_1010;
reg   [9:0] weights1_addr_5_reg_1010_pp0_iter1_reg;
reg   [9:0] weights1_addr_5_reg_1010_pp0_iter2_reg;
reg   [9:0] weights1_addr_5_reg_1010_pp0_iter3_reg;
reg   [9:0] weights1_addr_5_reg_1010_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_2_fu_550_p1;
reg   [9:0] weights1_addr_6_reg_1021;
reg   [9:0] weights1_addr_6_reg_1021_pp0_iter1_reg;
reg   [9:0] weights1_addr_6_reg_1021_pp0_iter2_reg;
reg   [9:0] weights1_addr_6_reg_1021_pp0_iter3_reg;
reg   [9:0] weights1_addr_6_reg_1021_pp0_iter4_reg;
reg   [9:0] weights1_addr_7_reg_1027;
reg   [9:0] weights1_addr_7_reg_1027_pp0_iter1_reg;
reg   [9:0] weights1_addr_7_reg_1027_pp0_iter2_reg;
reg   [9:0] weights1_addr_7_reg_1027_pp0_iter3_reg;
reg   [9:0] weights1_addr_7_reg_1027_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_4_fu_582_p1;
reg   [63:0] weights1_load_7_reg_1038;
reg   [9:0] weights1_addr_8_reg_1043;
reg   [9:0] weights1_addr_8_reg_1043_pp0_iter1_reg;
reg   [9:0] weights1_addr_8_reg_1043_pp0_iter2_reg;
reg   [9:0] weights1_addr_8_reg_1043_pp0_iter3_reg;
reg   [9:0] weights1_addr_8_reg_1043_pp0_iter4_reg;
reg   [9:0] weights1_addr_9_reg_1049;
reg   [9:0] weights1_addr_9_reg_1049_pp0_iter1_reg;
reg   [9:0] weights1_addr_9_reg_1049_pp0_iter2_reg;
reg   [9:0] weights1_addr_9_reg_1049_pp0_iter3_reg;
reg   [9:0] weights1_addr_9_reg_1049_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_6_fu_617_p1;
reg   [63:0] weights1_load_9_reg_1060;
reg   [9:0] weights1_addr_10_reg_1065;
reg   [9:0] weights1_addr_10_reg_1065_pp0_iter1_reg;
reg   [9:0] weights1_addr_10_reg_1065_pp0_iter2_reg;
reg   [9:0] weights1_addr_10_reg_1065_pp0_iter3_reg;
reg   [9:0] weights1_addr_10_reg_1065_pp0_iter4_reg;
reg   [9:0] weights1_addr_11_reg_1071;
reg   [9:0] weights1_addr_11_reg_1071_pp0_iter1_reg;
reg   [9:0] weights1_addr_11_reg_1071_pp0_iter2_reg;
reg   [9:0] weights1_addr_11_reg_1071_pp0_iter3_reg;
reg   [9:0] weights1_addr_11_reg_1071_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_8_fu_655_p1;
reg   [63:0] weights1_load_11_reg_1082;
reg   [9:0] weights1_addr_12_reg_1087;
reg   [9:0] weights1_addr_12_reg_1087_pp0_iter1_reg;
reg   [9:0] weights1_addr_12_reg_1087_pp0_iter2_reg;
reg   [9:0] weights1_addr_12_reg_1087_pp0_iter3_reg;
reg   [9:0] weights1_addr_12_reg_1087_pp0_iter4_reg;
reg   [9:0] weights1_addr_13_reg_1093;
reg   [9:0] weights1_addr_13_reg_1093_pp0_iter1_reg;
reg   [9:0] weights1_addr_13_reg_1093_pp0_iter2_reg;
reg   [9:0] weights1_addr_13_reg_1093_pp0_iter3_reg;
reg   [9:0] weights1_addr_13_reg_1093_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_10_fu_690_p1;
reg   [63:0] weights1_load_13_reg_1103;
reg   [9:0] weights1_addr_14_reg_1108;
reg   [9:0] weights1_addr_14_reg_1108_pp0_iter1_reg;
reg   [9:0] weights1_addr_14_reg_1108_pp0_iter2_reg;
reg   [9:0] weights1_addr_14_reg_1108_pp0_iter3_reg;
reg   [9:0] weights1_addr_14_reg_1108_pp0_iter4_reg;
reg   [9:0] weights1_addr_15_reg_1114;
reg   [9:0] weights1_addr_15_reg_1114_pp0_iter1_reg;
reg   [9:0] weights1_addr_15_reg_1114_pp0_iter2_reg;
reg   [9:0] weights1_addr_15_reg_1114_pp0_iter3_reg;
reg   [9:0] weights1_addr_15_reg_1114_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_12_fu_722_p1;
reg   [63:0] weights1_load_15_reg_1124;
wire   [63:0] bitcast_ln142_14_fu_727_p1;
wire   [63:0] bitcast_ln142_16_fu_731_p1;
wire   [63:0] bitcast_ln142_18_fu_736_p1;
wire   [63:0] bitcast_ln142_20_fu_740_p1;
wire   [63:0] bitcast_ln142_22_fu_745_p1;
wire   [63:0] bitcast_ln142_24_fu_749_p1;
wire   [63:0] bitcast_ln142_26_fu_754_p1;
wire   [63:0] bitcast_ln142_28_fu_768_p1;
wire   [63:0] bitcast_ln142_30_fu_773_p1;
reg   [63:0] div_7_reg_1174;
reg   [63:0] div_8_reg_1179;
reg   [63:0] div_9_reg_1184;
reg   [63:0] div_s_reg_1189;
reg   [63:0] div_10_reg_1194;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln142_fu_385_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln142_1_fu_410_p1;
wire   [63:0] zext_ln142_2_fu_497_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln142_3_fu_510_p1;
wire   [63:0] zext_ln142_4_fu_529_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln142_5_fu_545_p1;
wire   [63:0] zext_ln142_6_fu_564_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln142_7_fu_577_p1;
wire   [63:0] zext_ln142_8_fu_596_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln142_9_fu_612_p1;
wire   [63:0] zext_ln142_10_fu_634_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln142_11_fu_650_p1;
wire   [63:0] zext_ln142_12_fu_669_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln142_13_fu_685_p1;
wire   [63:0] zext_ln142_14_fu_704_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln142_15_fu_717_p1;
reg   [6:0] j_fu_104;
wire   [6:0] add_ln141_fu_758_p2;
wire    ap_loop_init;
reg   [3:0] i_2_fu_108;
reg   [3:0] ap_sig_allocacmp_i_2_load;
wire    ap_block_pp0_stage0;
reg   [5:0] indvar_flatten6_fu_112;
wire   [5:0] add_ln140_fu_322_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    weights1_ce1_local;
reg   [9:0] weights1_address1_local;
reg    weights1_ce0_local;
reg   [9:0] weights1_address0_local;
reg    weights1_we1_local;
reg   [63:0] weights1_d1_local;
wire   [63:0] bitcast_ln142_1_fu_777_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] bitcast_ln142_3_fu_782_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln142_5_fu_787_p1;
wire   [63:0] bitcast_ln142_7_fu_792_p1;
wire    ap_block_pp0_stage9;
reg    weights1_we0_local;
reg   [63:0] weights1_d0_local;
wire   [63:0] bitcast_ln142_9_fu_797_p1;
wire   [63:0] bitcast_ln142_11_fu_802_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] bitcast_ln142_13_fu_807_p1;
wire   [63:0] bitcast_ln142_15_fu_812_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln142_17_fu_816_p1;
wire   [63:0] bitcast_ln142_19_fu_820_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] bitcast_ln142_21_fu_824_p1;
wire   [63:0] bitcast_ln142_23_fu_828_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln142_25_fu_832_p1;
wire   [63:0] bitcast_ln142_27_fu_837_p1;
wire   [63:0] bitcast_ln142_29_fu_842_p1;
wire   [63:0] bitcast_ln142_31_fu_847_p1;
reg   [63:0] grp_fu_259_p0;
wire   [0:0] tmp_fu_345_p3;
wire   [9:0] zext_ln141_fu_375_p1;
wire   [9:0] tmp_s_fu_367_p3;
wire   [9:0] add_ln142_fu_379_p2;
wire   [4:0] tmp_36_fu_390_p4;
wire   [9:0] add_ln142_1_fu_400_p4;
wire   [9:0] add_ln142_2_fu_488_p5;
wire   [9:0] add_ln142_3_fu_502_p4;
wire   [9:0] add_ln142_4_fu_520_p5;
wire   [9:0] add_ln142_5_fu_534_p6;
wire   [9:0] add_ln142_6_fu_555_p5;
wire   [9:0] add_ln142_7_fu_569_p4;
wire   [9:0] add_ln142_8_fu_587_p5;
wire   [9:0] add_ln142_9_fu_601_p6;
wire   [9:0] add_ln142_s_fu_622_p7;
wire   [9:0] add_ln142_10_fu_639_p6;
wire   [9:0] add_ln142_11_fu_660_p5;
wire   [9:0] add_ln142_12_fu_674_p6;
wire   [9:0] add_ln142_13_fu_695_p5;
wire   [9:0] add_ln142_14_fu_709_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage0;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [15:0] ap_NS_fsm;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_104 = 7'd0;
#0 i_2_fu_108 = 4'd0;
#0 indvar_flatten6_fu_112 = 6'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_108 <= 4'd0;
    end else if (((icmp_ln140_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_108 <= select_ln140_fu_361_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln140_fu_316_p2 == 1'd0))) begin
            indvar_flatten6_fu_112 <= add_ln140_fu_322_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_112 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_104 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_104 <= add_ln141_fu_758_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_267 <= weights1_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_267 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_272 <= weights1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_272 <= weights1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_277 <= weights1_q1;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_277 <= weights1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln140_1_reg_887 <= add_ln140_1_fu_331_p2;
        i_2_load_reg_882 <= ap_sig_allocacmp_i_2_load;
        icmp_ln140_reg_878 <= icmp_ln140_fu_316_p2;
        icmp_ln140_reg_878_pp0_iter1_reg <= icmp_ln140_reg_878;
        icmp_ln140_reg_878_pp0_iter2_reg <= icmp_ln140_reg_878_pp0_iter1_reg;
        icmp_ln140_reg_878_pp0_iter3_reg <= icmp_ln140_reg_878_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        div_10_reg_1194 <= grp_fu_589_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div_7_reg_1174 <= grp_fu_589_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div_8_reg_1179 <= grp_fu_589_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        div_9_reg_1184 <= grp_fu_589_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        div_s_reg_1189 <= grp_fu_589_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_263 <= weights1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_282 <= grp_fu_589_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_286 <= grp_fu_589_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_290 <= grp_fu_589_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_294 <= grp_fu_589_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln121_reg_892 <= select_ln121_fu_353_p3;
        select_ln140_reg_897 <= select_ln140_fu_361_p3;
        tmp_19_reg_954 <= select_ln121_fu_353_p3[32'd1];
        tmp_20_reg_982 <= select_ln121_fu_353_p3[32'd2];
        tmp_37_reg_926 <= {{select_ln121_fu_353_p3[5:2]}};
        tmp_38_reg_940 <= {{select_ln121_fu_353_p3[5:3]}};
        tmp_39_reg_960 <= {{select_ln121_fu_353_p3[5:4]}};
        tmp_40_reg_977 <= {{select_ln121_fu_353_p3[2:1]}};
        trunc_ln142_1_reg_948 <= trunc_ln142_1_fu_439_p1;
        trunc_ln142_2_reg_972 <= trunc_ln142_2_fu_461_p1;
        trunc_ln142_reg_932 <= trunc_ln142_fu_425_p1;
        weights1_addr_1_reg_920[9 : 1] <= zext_ln142_1_fu_410_p1[9 : 1];
        weights1_addr_1_reg_920_pp0_iter1_reg[9 : 1] <= weights1_addr_1_reg_920[9 : 1];
        weights1_addr_1_reg_920_pp0_iter2_reg[9 : 1] <= weights1_addr_1_reg_920_pp0_iter1_reg[9 : 1];
        weights1_addr_1_reg_920_pp0_iter3_reg[9 : 1] <= weights1_addr_1_reg_920_pp0_iter2_reg[9 : 1];
        weights1_addr_reg_915 <= zext_ln142_fu_385_p1;
        weights1_addr_reg_915_pp0_iter1_reg <= weights1_addr_reg_915;
        weights1_addr_reg_915_pp0_iter2_reg <= weights1_addr_reg_915_pp0_iter1_reg;
        weights1_addr_reg_915_pp0_iter3_reg <= weights1_addr_reg_915_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_addr_10_reg_1065[0] <= zext_ln142_10_fu_634_p1[0];
weights1_addr_10_reg_1065[2] <= zext_ln142_10_fu_634_p1[2];
weights1_addr_10_reg_1065[9 : 4] <= zext_ln142_10_fu_634_p1[9 : 4];
        weights1_addr_10_reg_1065_pp0_iter1_reg[0] <= weights1_addr_10_reg_1065[0];
weights1_addr_10_reg_1065_pp0_iter1_reg[2] <= weights1_addr_10_reg_1065[2];
weights1_addr_10_reg_1065_pp0_iter1_reg[9 : 4] <= weights1_addr_10_reg_1065[9 : 4];
        weights1_addr_10_reg_1065_pp0_iter2_reg[0] <= weights1_addr_10_reg_1065_pp0_iter1_reg[0];
weights1_addr_10_reg_1065_pp0_iter2_reg[2] <= weights1_addr_10_reg_1065_pp0_iter1_reg[2];
weights1_addr_10_reg_1065_pp0_iter2_reg[9 : 4] <= weights1_addr_10_reg_1065_pp0_iter1_reg[9 : 4];
        weights1_addr_10_reg_1065_pp0_iter3_reg[0] <= weights1_addr_10_reg_1065_pp0_iter2_reg[0];
weights1_addr_10_reg_1065_pp0_iter3_reg[2] <= weights1_addr_10_reg_1065_pp0_iter2_reg[2];
weights1_addr_10_reg_1065_pp0_iter3_reg[9 : 4] <= weights1_addr_10_reg_1065_pp0_iter2_reg[9 : 4];
        weights1_addr_10_reg_1065_pp0_iter4_reg[0] <= weights1_addr_10_reg_1065_pp0_iter3_reg[0];
weights1_addr_10_reg_1065_pp0_iter4_reg[2] <= weights1_addr_10_reg_1065_pp0_iter3_reg[2];
weights1_addr_10_reg_1065_pp0_iter4_reg[9 : 4] <= weights1_addr_10_reg_1065_pp0_iter3_reg[9 : 4];
        weights1_addr_11_reg_1071[2] <= zext_ln142_11_fu_650_p1[2];
weights1_addr_11_reg_1071[9 : 4] <= zext_ln142_11_fu_650_p1[9 : 4];
        weights1_addr_11_reg_1071_pp0_iter1_reg[2] <= weights1_addr_11_reg_1071[2];
weights1_addr_11_reg_1071_pp0_iter1_reg[9 : 4] <= weights1_addr_11_reg_1071[9 : 4];
        weights1_addr_11_reg_1071_pp0_iter2_reg[2] <= weights1_addr_11_reg_1071_pp0_iter1_reg[2];
weights1_addr_11_reg_1071_pp0_iter2_reg[9 : 4] <= weights1_addr_11_reg_1071_pp0_iter1_reg[9 : 4];
        weights1_addr_11_reg_1071_pp0_iter3_reg[2] <= weights1_addr_11_reg_1071_pp0_iter2_reg[2];
weights1_addr_11_reg_1071_pp0_iter3_reg[9 : 4] <= weights1_addr_11_reg_1071_pp0_iter2_reg[9 : 4];
        weights1_addr_11_reg_1071_pp0_iter4_reg[2] <= weights1_addr_11_reg_1071_pp0_iter3_reg[2];
weights1_addr_11_reg_1071_pp0_iter4_reg[9 : 4] <= weights1_addr_11_reg_1071_pp0_iter3_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_addr_12_reg_1087[1 : 0] <= zext_ln142_12_fu_669_p1[1 : 0];
weights1_addr_12_reg_1087[9 : 4] <= zext_ln142_12_fu_669_p1[9 : 4];
        weights1_addr_12_reg_1087_pp0_iter1_reg[1 : 0] <= weights1_addr_12_reg_1087[1 : 0];
weights1_addr_12_reg_1087_pp0_iter1_reg[9 : 4] <= weights1_addr_12_reg_1087[9 : 4];
        weights1_addr_12_reg_1087_pp0_iter2_reg[1 : 0] <= weights1_addr_12_reg_1087_pp0_iter1_reg[1 : 0];
weights1_addr_12_reg_1087_pp0_iter2_reg[9 : 4] <= weights1_addr_12_reg_1087_pp0_iter1_reg[9 : 4];
        weights1_addr_12_reg_1087_pp0_iter3_reg[1 : 0] <= weights1_addr_12_reg_1087_pp0_iter2_reg[1 : 0];
weights1_addr_12_reg_1087_pp0_iter3_reg[9 : 4] <= weights1_addr_12_reg_1087_pp0_iter2_reg[9 : 4];
        weights1_addr_12_reg_1087_pp0_iter4_reg[1 : 0] <= weights1_addr_12_reg_1087_pp0_iter3_reg[1 : 0];
weights1_addr_12_reg_1087_pp0_iter4_reg[9 : 4] <= weights1_addr_12_reg_1087_pp0_iter3_reg[9 : 4];
        weights1_addr_13_reg_1093[1] <= zext_ln142_13_fu_685_p1[1];
weights1_addr_13_reg_1093[9 : 4] <= zext_ln142_13_fu_685_p1[9 : 4];
        weights1_addr_13_reg_1093_pp0_iter1_reg[1] <= weights1_addr_13_reg_1093[1];
weights1_addr_13_reg_1093_pp0_iter1_reg[9 : 4] <= weights1_addr_13_reg_1093[9 : 4];
        weights1_addr_13_reg_1093_pp0_iter2_reg[1] <= weights1_addr_13_reg_1093_pp0_iter1_reg[1];
weights1_addr_13_reg_1093_pp0_iter2_reg[9 : 4] <= weights1_addr_13_reg_1093_pp0_iter1_reg[9 : 4];
        weights1_addr_13_reg_1093_pp0_iter3_reg[1] <= weights1_addr_13_reg_1093_pp0_iter2_reg[1];
weights1_addr_13_reg_1093_pp0_iter3_reg[9 : 4] <= weights1_addr_13_reg_1093_pp0_iter2_reg[9 : 4];
        weights1_addr_13_reg_1093_pp0_iter4_reg[1] <= weights1_addr_13_reg_1093_pp0_iter3_reg[1];
weights1_addr_13_reg_1093_pp0_iter4_reg[9 : 4] <= weights1_addr_13_reg_1093_pp0_iter3_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_addr_14_reg_1108[0] <= zext_ln142_14_fu_704_p1[0];
weights1_addr_14_reg_1108[9 : 4] <= zext_ln142_14_fu_704_p1[9 : 4];
        weights1_addr_14_reg_1108_pp0_iter1_reg[0] <= weights1_addr_14_reg_1108[0];
weights1_addr_14_reg_1108_pp0_iter1_reg[9 : 4] <= weights1_addr_14_reg_1108[9 : 4];
        weights1_addr_14_reg_1108_pp0_iter2_reg[0] <= weights1_addr_14_reg_1108_pp0_iter1_reg[0];
weights1_addr_14_reg_1108_pp0_iter2_reg[9 : 4] <= weights1_addr_14_reg_1108_pp0_iter1_reg[9 : 4];
        weights1_addr_14_reg_1108_pp0_iter3_reg[0] <= weights1_addr_14_reg_1108_pp0_iter2_reg[0];
weights1_addr_14_reg_1108_pp0_iter3_reg[9 : 4] <= weights1_addr_14_reg_1108_pp0_iter2_reg[9 : 4];
        weights1_addr_14_reg_1108_pp0_iter4_reg[0] <= weights1_addr_14_reg_1108_pp0_iter3_reg[0];
weights1_addr_14_reg_1108_pp0_iter4_reg[9 : 4] <= weights1_addr_14_reg_1108_pp0_iter3_reg[9 : 4];
        weights1_addr_15_reg_1114[9 : 4] <= zext_ln142_15_fu_717_p1[9 : 4];
        weights1_addr_15_reg_1114_pp0_iter1_reg[9 : 4] <= weights1_addr_15_reg_1114[9 : 4];
        weights1_addr_15_reg_1114_pp0_iter2_reg[9 : 4] <= weights1_addr_15_reg_1114_pp0_iter1_reg[9 : 4];
        weights1_addr_15_reg_1114_pp0_iter3_reg[9 : 4] <= weights1_addr_15_reg_1114_pp0_iter2_reg[9 : 4];
        weights1_addr_15_reg_1114_pp0_iter4_reg[9 : 4] <= weights1_addr_15_reg_1114_pp0_iter3_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_addr_2_reg_988[0] <= zext_ln142_2_fu_497_p1[0];
weights1_addr_2_reg_988[9 : 2] <= zext_ln142_2_fu_497_p1[9 : 2];
        weights1_addr_2_reg_988_pp0_iter1_reg[0] <= weights1_addr_2_reg_988[0];
weights1_addr_2_reg_988_pp0_iter1_reg[9 : 2] <= weights1_addr_2_reg_988[9 : 2];
        weights1_addr_2_reg_988_pp0_iter2_reg[0] <= weights1_addr_2_reg_988_pp0_iter1_reg[0];
weights1_addr_2_reg_988_pp0_iter2_reg[9 : 2] <= weights1_addr_2_reg_988_pp0_iter1_reg[9 : 2];
        weights1_addr_2_reg_988_pp0_iter3_reg[0] <= weights1_addr_2_reg_988_pp0_iter2_reg[0];
weights1_addr_2_reg_988_pp0_iter3_reg[9 : 2] <= weights1_addr_2_reg_988_pp0_iter2_reg[9 : 2];
        weights1_addr_3_reg_993[9 : 2] <= zext_ln142_3_fu_510_p1[9 : 2];
        weights1_addr_3_reg_993_pp0_iter1_reg[9 : 2] <= weights1_addr_3_reg_993[9 : 2];
        weights1_addr_3_reg_993_pp0_iter2_reg[9 : 2] <= weights1_addr_3_reg_993_pp0_iter1_reg[9 : 2];
        weights1_addr_3_reg_993_pp0_iter3_reg[9 : 2] <= weights1_addr_3_reg_993_pp0_iter2_reg[9 : 2];
        weights1_addr_3_reg_993_pp0_iter4_reg[9 : 2] <= weights1_addr_3_reg_993_pp0_iter3_reg[9 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_addr_4_reg_1004[1 : 0] <= zext_ln142_4_fu_529_p1[1 : 0];
weights1_addr_4_reg_1004[9 : 3] <= zext_ln142_4_fu_529_p1[9 : 3];
        weights1_addr_4_reg_1004_pp0_iter1_reg[1 : 0] <= weights1_addr_4_reg_1004[1 : 0];
weights1_addr_4_reg_1004_pp0_iter1_reg[9 : 3] <= weights1_addr_4_reg_1004[9 : 3];
        weights1_addr_4_reg_1004_pp0_iter2_reg[1 : 0] <= weights1_addr_4_reg_1004_pp0_iter1_reg[1 : 0];
weights1_addr_4_reg_1004_pp0_iter2_reg[9 : 3] <= weights1_addr_4_reg_1004_pp0_iter1_reg[9 : 3];
        weights1_addr_4_reg_1004_pp0_iter3_reg[1 : 0] <= weights1_addr_4_reg_1004_pp0_iter2_reg[1 : 0];
weights1_addr_4_reg_1004_pp0_iter3_reg[9 : 3] <= weights1_addr_4_reg_1004_pp0_iter2_reg[9 : 3];
        weights1_addr_4_reg_1004_pp0_iter4_reg[1 : 0] <= weights1_addr_4_reg_1004_pp0_iter3_reg[1 : 0];
weights1_addr_4_reg_1004_pp0_iter4_reg[9 : 3] <= weights1_addr_4_reg_1004_pp0_iter3_reg[9 : 3];
        weights1_addr_5_reg_1010[1] <= zext_ln142_5_fu_545_p1[1];
weights1_addr_5_reg_1010[9 : 3] <= zext_ln142_5_fu_545_p1[9 : 3];
        weights1_addr_5_reg_1010_pp0_iter1_reg[1] <= weights1_addr_5_reg_1010[1];
weights1_addr_5_reg_1010_pp0_iter1_reg[9 : 3] <= weights1_addr_5_reg_1010[9 : 3];
        weights1_addr_5_reg_1010_pp0_iter2_reg[1] <= weights1_addr_5_reg_1010_pp0_iter1_reg[1];
weights1_addr_5_reg_1010_pp0_iter2_reg[9 : 3] <= weights1_addr_5_reg_1010_pp0_iter1_reg[9 : 3];
        weights1_addr_5_reg_1010_pp0_iter3_reg[1] <= weights1_addr_5_reg_1010_pp0_iter2_reg[1];
weights1_addr_5_reg_1010_pp0_iter3_reg[9 : 3] <= weights1_addr_5_reg_1010_pp0_iter2_reg[9 : 3];
        weights1_addr_5_reg_1010_pp0_iter4_reg[1] <= weights1_addr_5_reg_1010_pp0_iter3_reg[1];
weights1_addr_5_reg_1010_pp0_iter4_reg[9 : 3] <= weights1_addr_5_reg_1010_pp0_iter3_reg[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_addr_6_reg_1021[0] <= zext_ln142_6_fu_564_p1[0];
weights1_addr_6_reg_1021[9 : 3] <= zext_ln142_6_fu_564_p1[9 : 3];
        weights1_addr_6_reg_1021_pp0_iter1_reg[0] <= weights1_addr_6_reg_1021[0];
weights1_addr_6_reg_1021_pp0_iter1_reg[9 : 3] <= weights1_addr_6_reg_1021[9 : 3];
        weights1_addr_6_reg_1021_pp0_iter2_reg[0] <= weights1_addr_6_reg_1021_pp0_iter1_reg[0];
weights1_addr_6_reg_1021_pp0_iter2_reg[9 : 3] <= weights1_addr_6_reg_1021_pp0_iter1_reg[9 : 3];
        weights1_addr_6_reg_1021_pp0_iter3_reg[0] <= weights1_addr_6_reg_1021_pp0_iter2_reg[0];
weights1_addr_6_reg_1021_pp0_iter3_reg[9 : 3] <= weights1_addr_6_reg_1021_pp0_iter2_reg[9 : 3];
        weights1_addr_6_reg_1021_pp0_iter4_reg[0] <= weights1_addr_6_reg_1021_pp0_iter3_reg[0];
weights1_addr_6_reg_1021_pp0_iter4_reg[9 : 3] <= weights1_addr_6_reg_1021_pp0_iter3_reg[9 : 3];
        weights1_addr_7_reg_1027[9 : 3] <= zext_ln142_7_fu_577_p1[9 : 3];
        weights1_addr_7_reg_1027_pp0_iter1_reg[9 : 3] <= weights1_addr_7_reg_1027[9 : 3];
        weights1_addr_7_reg_1027_pp0_iter2_reg[9 : 3] <= weights1_addr_7_reg_1027_pp0_iter1_reg[9 : 3];
        weights1_addr_7_reg_1027_pp0_iter3_reg[9 : 3] <= weights1_addr_7_reg_1027_pp0_iter2_reg[9 : 3];
        weights1_addr_7_reg_1027_pp0_iter4_reg[9 : 3] <= weights1_addr_7_reg_1027_pp0_iter3_reg[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_addr_8_reg_1043[2 : 0] <= zext_ln142_8_fu_596_p1[2 : 0];
weights1_addr_8_reg_1043[9 : 4] <= zext_ln142_8_fu_596_p1[9 : 4];
        weights1_addr_8_reg_1043_pp0_iter1_reg[2 : 0] <= weights1_addr_8_reg_1043[2 : 0];
weights1_addr_8_reg_1043_pp0_iter1_reg[9 : 4] <= weights1_addr_8_reg_1043[9 : 4];
        weights1_addr_8_reg_1043_pp0_iter2_reg[2 : 0] <= weights1_addr_8_reg_1043_pp0_iter1_reg[2 : 0];
weights1_addr_8_reg_1043_pp0_iter2_reg[9 : 4] <= weights1_addr_8_reg_1043_pp0_iter1_reg[9 : 4];
        weights1_addr_8_reg_1043_pp0_iter3_reg[2 : 0] <= weights1_addr_8_reg_1043_pp0_iter2_reg[2 : 0];
weights1_addr_8_reg_1043_pp0_iter3_reg[9 : 4] <= weights1_addr_8_reg_1043_pp0_iter2_reg[9 : 4];
        weights1_addr_8_reg_1043_pp0_iter4_reg[2 : 0] <= weights1_addr_8_reg_1043_pp0_iter3_reg[2 : 0];
weights1_addr_8_reg_1043_pp0_iter4_reg[9 : 4] <= weights1_addr_8_reg_1043_pp0_iter3_reg[9 : 4];
        weights1_addr_9_reg_1049[2 : 1] <= zext_ln142_9_fu_612_p1[2 : 1];
weights1_addr_9_reg_1049[9 : 4] <= zext_ln142_9_fu_612_p1[9 : 4];
        weights1_addr_9_reg_1049_pp0_iter1_reg[2 : 1] <= weights1_addr_9_reg_1049[2 : 1];
weights1_addr_9_reg_1049_pp0_iter1_reg[9 : 4] <= weights1_addr_9_reg_1049[9 : 4];
        weights1_addr_9_reg_1049_pp0_iter2_reg[2 : 1] <= weights1_addr_9_reg_1049_pp0_iter1_reg[2 : 1];
weights1_addr_9_reg_1049_pp0_iter2_reg[9 : 4] <= weights1_addr_9_reg_1049_pp0_iter1_reg[9 : 4];
        weights1_addr_9_reg_1049_pp0_iter3_reg[2 : 1] <= weights1_addr_9_reg_1049_pp0_iter2_reg[2 : 1];
weights1_addr_9_reg_1049_pp0_iter3_reg[9 : 4] <= weights1_addr_9_reg_1049_pp0_iter2_reg[9 : 4];
        weights1_addr_9_reg_1049_pp0_iter4_reg[2 : 1] <= weights1_addr_9_reg_1049_pp0_iter3_reg[2 : 1];
weights1_addr_9_reg_1049_pp0_iter4_reg[9 : 4] <= weights1_addr_9_reg_1049_pp0_iter3_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_load_11_reg_1082 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_load_13_reg_1103 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_load_15_reg_1124 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_load_7_reg_1038 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_load_9_reg_1060 <= weights1_q0;
    end
end
always @ (*) begin
    if (((icmp_ln140_reg_878 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln140_reg_878_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_2_load = i_2_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten6_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_259_p0 = bitcast_ln142_30_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_259_p0 = bitcast_ln142_28_fu_768_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_259_p0 = bitcast_ln142_26_fu_754_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_259_p0 = bitcast_ln142_24_fu_749_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_259_p0 = bitcast_ln142_22_fu_745_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_259_p0 = bitcast_ln142_20_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_259_p0 = bitcast_ln142_18_fu_736_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_259_p0 = bitcast_ln142_16_fu_731_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_259_p0 = bitcast_ln142_14_fu_727_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_259_p0 = bitcast_ln142_12_fu_722_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_259_p0 = bitcast_ln142_10_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_259_p0 = bitcast_ln142_8_fu_655_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_259_p0 = bitcast_ln142_6_fu_617_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_259_p0 = bitcast_ln142_4_fu_582_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_259_p0 = bitcast_ln142_2_fu_550_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_259_p0 = bitcast_ln142_fu_515_p1;
    end else begin
        grp_fu_259_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_address0_local = weights1_addr_15_reg_1114_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_address0_local = weights1_addr_14_reg_1108_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_address0_local = weights1_addr_13_reg_1093_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_address0_local = weights1_addr_12_reg_1087_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_address0_local = weights1_addr_10_reg_1065_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_address0_local = weights1_addr_8_reg_1043_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_address0_local = weights1_addr_6_reg_1021_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_address0_local = weights1_addr_4_reg_1004_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_address0_local = zext_ln142_15_fu_717_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_address0_local = zext_ln142_13_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_address0_local = zext_ln142_11_fu_650_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_address0_local = zext_ln142_9_fu_612_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_address0_local = zext_ln142_7_fu_577_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_address0_local = zext_ln142_5_fu_545_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_address0_local = zext_ln142_3_fu_510_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_address0_local = zext_ln142_1_fu_410_p1;
    end else begin
        weights1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_address1_local = weights1_addr_11_reg_1071_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_address1_local = weights1_addr_9_reg_1049_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_address1_local = weights1_addr_7_reg_1027_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_address1_local = weights1_addr_5_reg_1010_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_address1_local = weights1_addr_3_reg_993_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_address1_local = weights1_addr_2_reg_988_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_address1_local = weights1_addr_1_reg_920_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_address1_local = weights1_addr_reg_915_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_address1_local = zext_ln142_14_fu_704_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_address1_local = zext_ln142_12_fu_669_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_address1_local = zext_ln142_10_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_address1_local = zext_ln142_8_fu_596_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_address1_local = zext_ln142_6_fu_564_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_address1_local = zext_ln142_4_fu_529_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_address1_local = zext_ln142_2_fu_497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_address1_local = zext_ln142_fu_385_p1;
    end else begin
        weights1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_ce0_local = 1'b1;
    end else begin
        weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_ce1_local = 1'b1;
    end else begin
        weights1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_d0_local = bitcast_ln142_31_fu_847_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_d0_local = bitcast_ln142_29_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_d0_local = bitcast_ln142_27_fu_837_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_d0_local = bitcast_ln142_25_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_d0_local = bitcast_ln142_21_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_d0_local = bitcast_ln142_17_fu_816_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_d0_local = bitcast_ln142_13_fu_807_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_d0_local = bitcast_ln142_9_fu_797_p1;
    end else begin
        weights1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_d1_local = bitcast_ln142_23_fu_828_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_d1_local = bitcast_ln142_19_fu_820_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_d1_local = bitcast_ln142_15_fu_812_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_d1_local = bitcast_ln142_11_fu_802_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_d1_local = bitcast_ln142_7_fu_792_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_d1_local = bitcast_ln142_5_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_d1_local = bitcast_ln142_3_fu_782_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_d1_local = bitcast_ln142_1_fu_777_p1;
    end else begin
        weights1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        weights1_we0_local = 1'b1;
    end else begin
        weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        weights1_we1_local = 1'b1;
    end else begin
        weights1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln140_1_fu_331_p2 = (ap_sig_allocacmp_i_2_load + 4'd1);
assign add_ln140_fu_322_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 6'd1);
assign add_ln141_fu_758_p2 = (select_ln121_reg_892 + 7'd16);
assign add_ln142_10_fu_639_p6 = {{{{{select_ln140_reg_897}, {tmp_39_reg_960}}, {1'd1}}, {tmp_20_reg_982}}, {2'd3}};
assign add_ln142_11_fu_660_p5 = {{{{select_ln140_reg_897}, {tmp_39_reg_960}}, {2'd3}}, {trunc_ln142_1_reg_948}};
assign add_ln142_12_fu_674_p6 = {{{{{select_ln140_reg_897}, {tmp_39_reg_960}}, {2'd3}}, {tmp_19_reg_954}}, {1'd1}};
assign add_ln142_13_fu_695_p5 = {{{{select_ln140_reg_897}, {tmp_39_reg_960}}, {3'd7}}, {trunc_ln142_reg_932}};
assign add_ln142_14_fu_709_p4 = {{{select_ln140_reg_897}, {tmp_39_reg_960}}, {4'd15}};
assign add_ln142_1_fu_400_p4 = {{{select_ln140_fu_361_p3}, {tmp_36_fu_390_p4}}, {1'd1}};
assign add_ln142_2_fu_488_p5 = {{{{select_ln140_reg_897}, {tmp_37_reg_926}}, {1'd1}}, {trunc_ln142_reg_932}};
assign add_ln142_3_fu_502_p4 = {{{select_ln140_reg_897}, {tmp_37_reg_926}}, {2'd3}};
assign add_ln142_4_fu_520_p5 = {{{{select_ln140_reg_897}, {tmp_38_reg_940}}, {1'd1}}, {trunc_ln142_1_reg_948}};
assign add_ln142_5_fu_534_p6 = {{{{{select_ln140_reg_897}, {tmp_38_reg_940}}, {1'd1}}, {tmp_19_reg_954}}, {1'd1}};
assign add_ln142_6_fu_555_p5 = {{{{select_ln140_reg_897}, {tmp_38_reg_940}}, {2'd3}}, {trunc_ln142_reg_932}};
assign add_ln142_7_fu_569_p4 = {{{select_ln140_reg_897}, {tmp_38_reg_940}}, {3'd7}};
assign add_ln142_8_fu_587_p5 = {{{{select_ln140_reg_897}, {tmp_39_reg_960}}, {1'd1}}, {trunc_ln142_2_reg_972}};
assign add_ln142_9_fu_601_p6 = {{{{{select_ln140_reg_897}, {tmp_39_reg_960}}, {1'd1}}, {tmp_40_reg_977}}, {1'd1}};
assign add_ln142_fu_379_p2 = (zext_ln141_fu_375_p1 + tmp_s_fu_367_p3);
assign add_ln142_s_fu_622_p7 = {{{{{{select_ln140_reg_897}, {tmp_39_reg_960}}, {1'd1}}, {tmp_20_reg_982}}, {1'd1}}, {trunc_ln142_reg_932}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bitcast_ln142_10_fu_690_p1 = reg_277;
assign bitcast_ln142_11_fu_802_p1 = reg_290;
assign bitcast_ln142_12_fu_722_p1 = reg_263;
assign bitcast_ln142_13_fu_807_p1 = reg_294;
assign bitcast_ln142_14_fu_727_p1 = weights1_load_7_reg_1038;
assign bitcast_ln142_15_fu_812_p1 = div_7_reg_1174;
assign bitcast_ln142_16_fu_731_p1 = reg_272;
assign bitcast_ln142_17_fu_816_p1 = div_8_reg_1179;
assign bitcast_ln142_18_fu_736_p1 = weights1_load_9_reg_1060;
assign bitcast_ln142_19_fu_820_p1 = div_9_reg_1184;
assign bitcast_ln142_1_fu_777_p1 = reg_282;
assign bitcast_ln142_20_fu_740_p1 = reg_267;
assign bitcast_ln142_21_fu_824_p1 = div_s_reg_1189;
assign bitcast_ln142_22_fu_745_p1 = weights1_load_11_reg_1082;
assign bitcast_ln142_23_fu_828_p1 = div_10_reg_1194;
assign bitcast_ln142_24_fu_749_p1 = reg_277;
assign bitcast_ln142_25_fu_832_p1 = reg_282;
assign bitcast_ln142_26_fu_754_p1 = weights1_load_13_reg_1103;
assign bitcast_ln142_27_fu_837_p1 = reg_286;
assign bitcast_ln142_28_fu_768_p1 = reg_263;
assign bitcast_ln142_29_fu_842_p1 = reg_290;
assign bitcast_ln142_2_fu_550_p1 = reg_267;
assign bitcast_ln142_30_fu_773_p1 = weights1_load_15_reg_1124;
assign bitcast_ln142_31_fu_847_p1 = reg_294;
assign bitcast_ln142_3_fu_782_p1 = reg_282;
assign bitcast_ln142_4_fu_582_p1 = reg_263;
assign bitcast_ln142_5_fu_787_p1 = reg_282;
assign bitcast_ln142_6_fu_617_p1 = reg_272;
assign bitcast_ln142_7_fu_792_p1 = reg_282;
assign bitcast_ln142_8_fu_655_p1 = reg_267;
assign bitcast_ln142_9_fu_797_p1 = reg_286;
assign bitcast_ln142_fu_515_p1 = reg_263;
assign grp_fu_589_p_ce = 1'b1;
assign grp_fu_589_p_din0 = grp_fu_259_p0;
assign grp_fu_589_p_din1 = norm_1;
assign icmp_ln140_fu_316_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 6'd52) ? 1'b1 : 1'b0);
assign select_ln121_fu_353_p3 = ((tmp_fu_345_p3[0:0] == 1'b1) ? 7'd0 : j_fu_104);
assign select_ln140_fu_361_p3 = ((tmp_fu_345_p3[0:0] == 1'b1) ? add_ln140_1_reg_887 : i_2_load_reg_882);
assign tmp_36_fu_390_p4 = {{select_ln121_fu_353_p3[5:1]}};
assign tmp_fu_345_p3 = j_fu_104[32'd6];
assign tmp_s_fu_367_p3 = {{select_ln140_fu_361_p3}, {6'd0}};
assign trunc_ln142_1_fu_439_p1 = select_ln121_fu_353_p3[1:0];
assign trunc_ln142_2_fu_461_p1 = select_ln121_fu_353_p3[2:0];
assign trunc_ln142_fu_425_p1 = select_ln121_fu_353_p3[0:0];
assign weights1_address0 = weights1_address0_local;
assign weights1_address1 = weights1_address1_local;
assign weights1_ce0 = weights1_ce0_local;
assign weights1_ce1 = weights1_ce1_local;
assign weights1_d0 = weights1_d0_local;
assign weights1_d1 = weights1_d1_local;
assign weights1_we0 = weights1_we0_local;
assign weights1_we1 = weights1_we1_local;
assign zext_ln141_fu_375_p1 = select_ln121_fu_353_p3;
assign zext_ln142_10_fu_634_p1 = add_ln142_s_fu_622_p7;
assign zext_ln142_11_fu_650_p1 = add_ln142_10_fu_639_p6;
assign zext_ln142_12_fu_669_p1 = add_ln142_11_fu_660_p5;
assign zext_ln142_13_fu_685_p1 = add_ln142_12_fu_674_p6;
assign zext_ln142_14_fu_704_p1 = add_ln142_13_fu_695_p5;
assign zext_ln142_15_fu_717_p1 = add_ln142_14_fu_709_p4;
assign zext_ln142_1_fu_410_p1 = add_ln142_1_fu_400_p4;
assign zext_ln142_2_fu_497_p1 = add_ln142_2_fu_488_p5;
assign zext_ln142_3_fu_510_p1 = add_ln142_3_fu_502_p4;
assign zext_ln142_4_fu_529_p1 = add_ln142_4_fu_520_p5;
assign zext_ln142_5_fu_545_p1 = add_ln142_5_fu_534_p6;
assign zext_ln142_6_fu_564_p1 = add_ln142_6_fu_555_p5;
assign zext_ln142_7_fu_577_p1 = add_ln142_7_fu_569_p4;
assign zext_ln142_8_fu_596_p1 = add_ln142_8_fu_587_p5;
assign zext_ln142_9_fu_612_p1 = add_ln142_9_fu_601_p6;
assign zext_ln142_fu_385_p1 = add_ln142_fu_379_p2;
always @ (posedge ap_clk) begin
    weights1_addr_1_reg_920[0] <= 1'b1;
    weights1_addr_1_reg_920_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_1_reg_920_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_1_reg_920_pp0_iter3_reg[0] <= 1'b1;
    weights1_addr_2_reg_988[1] <= 1'b1;
    weights1_addr_2_reg_988_pp0_iter1_reg[1] <= 1'b1;
    weights1_addr_2_reg_988_pp0_iter2_reg[1] <= 1'b1;
    weights1_addr_2_reg_988_pp0_iter3_reg[1] <= 1'b1;
    weights1_addr_3_reg_993[1:0] <= 2'b11;
    weights1_addr_3_reg_993_pp0_iter1_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_993_pp0_iter2_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_993_pp0_iter3_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_993_pp0_iter4_reg[1:0] <= 2'b11;
    weights1_addr_4_reg_1004[2] <= 1'b1;
    weights1_addr_4_reg_1004_pp0_iter1_reg[2] <= 1'b1;
    weights1_addr_4_reg_1004_pp0_iter2_reg[2] <= 1'b1;
    weights1_addr_4_reg_1004_pp0_iter3_reg[2] <= 1'b1;
    weights1_addr_4_reg_1004_pp0_iter4_reg[2] <= 1'b1;
    weights1_addr_5_reg_1010[0] <= 1'b1;
    weights1_addr_5_reg_1010[2] <= 1'b1;
    weights1_addr_5_reg_1010_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_5_reg_1010_pp0_iter1_reg[2] <= 1'b1;
    weights1_addr_5_reg_1010_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_5_reg_1010_pp0_iter2_reg[2] <= 1'b1;
    weights1_addr_5_reg_1010_pp0_iter3_reg[0] <= 1'b1;
    weights1_addr_5_reg_1010_pp0_iter3_reg[2] <= 1'b1;
    weights1_addr_5_reg_1010_pp0_iter4_reg[0] <= 1'b1;
    weights1_addr_5_reg_1010_pp0_iter4_reg[2] <= 1'b1;
    weights1_addr_6_reg_1021[2:1] <= 2'b11;
    weights1_addr_6_reg_1021_pp0_iter1_reg[2:1] <= 2'b11;
    weights1_addr_6_reg_1021_pp0_iter2_reg[2:1] <= 2'b11;
    weights1_addr_6_reg_1021_pp0_iter3_reg[2:1] <= 2'b11;
    weights1_addr_6_reg_1021_pp0_iter4_reg[2:1] <= 2'b11;
    weights1_addr_7_reg_1027[2:0] <= 3'b111;
    weights1_addr_7_reg_1027_pp0_iter1_reg[2:0] <= 3'b111;
    weights1_addr_7_reg_1027_pp0_iter2_reg[2:0] <= 3'b111;
    weights1_addr_7_reg_1027_pp0_iter3_reg[2:0] <= 3'b111;
    weights1_addr_7_reg_1027_pp0_iter4_reg[2:0] <= 3'b111;
    weights1_addr_8_reg_1043[3] <= 1'b1;
    weights1_addr_8_reg_1043_pp0_iter1_reg[3] <= 1'b1;
    weights1_addr_8_reg_1043_pp0_iter2_reg[3] <= 1'b1;
    weights1_addr_8_reg_1043_pp0_iter3_reg[3] <= 1'b1;
    weights1_addr_8_reg_1043_pp0_iter4_reg[3] <= 1'b1;
    weights1_addr_9_reg_1049[0] <= 1'b1;
    weights1_addr_9_reg_1049[3] <= 1'b1;
    weights1_addr_9_reg_1049_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_9_reg_1049_pp0_iter1_reg[3] <= 1'b1;
    weights1_addr_9_reg_1049_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_9_reg_1049_pp0_iter2_reg[3] <= 1'b1;
    weights1_addr_9_reg_1049_pp0_iter3_reg[0] <= 1'b1;
    weights1_addr_9_reg_1049_pp0_iter3_reg[3] <= 1'b1;
    weights1_addr_9_reg_1049_pp0_iter4_reg[0] <= 1'b1;
    weights1_addr_9_reg_1049_pp0_iter4_reg[3] <= 1'b1;
    weights1_addr_10_reg_1065[1] <= 1'b1;
    weights1_addr_10_reg_1065[3] <= 1'b1;
    weights1_addr_10_reg_1065_pp0_iter1_reg[1] <= 1'b1;
    weights1_addr_10_reg_1065_pp0_iter1_reg[3] <= 1'b1;
    weights1_addr_10_reg_1065_pp0_iter2_reg[1] <= 1'b1;
    weights1_addr_10_reg_1065_pp0_iter2_reg[3] <= 1'b1;
    weights1_addr_10_reg_1065_pp0_iter3_reg[1] <= 1'b1;
    weights1_addr_10_reg_1065_pp0_iter3_reg[3] <= 1'b1;
    weights1_addr_10_reg_1065_pp0_iter4_reg[1] <= 1'b1;
    weights1_addr_10_reg_1065_pp0_iter4_reg[3] <= 1'b1;
    weights1_addr_11_reg_1071[1:0] <= 2'b11;
    weights1_addr_11_reg_1071[3] <= 1'b1;
    weights1_addr_11_reg_1071_pp0_iter1_reg[1:0] <= 2'b11;
    weights1_addr_11_reg_1071_pp0_iter1_reg[3] <= 1'b1;
    weights1_addr_11_reg_1071_pp0_iter2_reg[1:0] <= 2'b11;
    weights1_addr_11_reg_1071_pp0_iter2_reg[3] <= 1'b1;
    weights1_addr_11_reg_1071_pp0_iter3_reg[1:0] <= 2'b11;
    weights1_addr_11_reg_1071_pp0_iter3_reg[3] <= 1'b1;
    weights1_addr_11_reg_1071_pp0_iter4_reg[1:0] <= 2'b11;
    weights1_addr_11_reg_1071_pp0_iter4_reg[3] <= 1'b1;
    weights1_addr_12_reg_1087[3:2] <= 2'b11;
    weights1_addr_12_reg_1087_pp0_iter1_reg[3:2] <= 2'b11;
    weights1_addr_12_reg_1087_pp0_iter2_reg[3:2] <= 2'b11;
    weights1_addr_12_reg_1087_pp0_iter3_reg[3:2] <= 2'b11;
    weights1_addr_12_reg_1087_pp0_iter4_reg[3:2] <= 2'b11;
    weights1_addr_13_reg_1093[0] <= 1'b1;
    weights1_addr_13_reg_1093[3:2] <= 2'b11;
    weights1_addr_13_reg_1093_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_13_reg_1093_pp0_iter1_reg[3:2] <= 2'b11;
    weights1_addr_13_reg_1093_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_13_reg_1093_pp0_iter2_reg[3:2] <= 2'b11;
    weights1_addr_13_reg_1093_pp0_iter3_reg[0] <= 1'b1;
    weights1_addr_13_reg_1093_pp0_iter3_reg[3:2] <= 2'b11;
    weights1_addr_13_reg_1093_pp0_iter4_reg[0] <= 1'b1;
    weights1_addr_13_reg_1093_pp0_iter4_reg[3:2] <= 2'b11;
    weights1_addr_14_reg_1108[3:1] <= 3'b111;
    weights1_addr_14_reg_1108_pp0_iter1_reg[3:1] <= 3'b111;
    weights1_addr_14_reg_1108_pp0_iter2_reg[3:1] <= 3'b111;
    weights1_addr_14_reg_1108_pp0_iter3_reg[3:1] <= 3'b111;
    weights1_addr_14_reg_1108_pp0_iter4_reg[3:1] <= 3'b111;
    weights1_addr_15_reg_1114[3:0] <= 4'b1111;
    weights1_addr_15_reg_1114_pp0_iter1_reg[3:0] <= 4'b1111;
    weights1_addr_15_reg_1114_pp0_iter2_reg[3:0] <= 4'b1111;
    weights1_addr_15_reg_1114_pp0_iter3_reg[3:0] <= 4'b1111;
    weights1_addr_15_reg_1114_pp0_iter4_reg[3:0] <= 4'b1111;
end
endmodule 
