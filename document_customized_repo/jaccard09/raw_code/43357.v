module viterbi_viterbi_Pipeline_L_end (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_address0,llike_ce0,llike_q0,min_s_8_out,min_s_8_out_ap_vld,grp_fu_846_p_din0,grp_fu_846_p_din1,grp_fu_846_p_opcode,grp_fu_846_p_dout0,grp_fu_846_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 17'd1;
parameter    ap_ST_fsm_pp0_stage1 = 17'd2;
parameter    ap_ST_fsm_pp0_stage2 = 17'd4;
parameter    ap_ST_fsm_pp0_stage3 = 17'd8;
parameter    ap_ST_fsm_pp0_stage4 = 17'd16;
parameter    ap_ST_fsm_pp0_stage5 = 17'd32;
parameter    ap_ST_fsm_pp0_stage6 = 17'd64;
parameter    ap_ST_fsm_pp0_stage7 = 17'd128;
parameter    ap_ST_fsm_pp0_stage8 = 17'd256;
parameter    ap_ST_fsm_pp0_stage9 = 17'd512;
parameter    ap_ST_fsm_pp0_stage10 = 17'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 17'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 17'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 17'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 17'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 17'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_8_out;
output   min_s_8_out_ap_vld;
output  [63:0] grp_fu_846_p_din0;
output  [63:0] grp_fu_846_p_din1;
output  [4:0] grp_fu_846_p_opcode;
input  [0:0] grp_fu_846_p_dout0;
output   grp_fu_846_p_ce;
reg ap_idle;
reg min_s_8_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_reg_1235;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] s_reg_1182;
wire   [6:0] add_ln40_fu_274_p2;
reg   [6:0] add_ln40_reg_1229;
reg   [6:0] add_ln40_reg_1229_pp0_iter1_reg;
reg   [0:0] tmp_reg_1235_pp0_iter1_reg;
reg   [63:0] p_reg_1239;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] p_9_reg_1246;
reg   [63:0] p_10_reg_1253;
reg   [63:0] p_11_reg_1260;
reg   [63:0] p_12_reg_1267;
reg   [63:0] p_13_reg_1274;
reg   [63:0] p_14_reg_1281;
reg   [63:0] min_p_24_reg_1293;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] p_15_reg_1300;
wire   [0:0] and_ln42_1_fu_392_p2;
reg   [0:0] and_ln42_1_reg_1307;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] min_p_26_fu_398_p3;
reg   [63:0] min_p_26_reg_1313;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] and_ln42_3_fu_480_p2;
reg   [0:0] and_ln42_3_reg_1320;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] min_p_28_fu_499_p3;
reg   [63:0] min_p_28_reg_1326;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_16_fu_514_p3;
reg   [7:0] min_s_16_reg_1333;
wire   [0:0] and_ln42_5_fu_597_p2;
reg   [0:0] and_ln42_5_reg_1338;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_30_fu_603_p3;
reg   [63:0] min_p_30_reg_1344;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln42_14_fu_627_p2;
reg   [0:0] icmp_ln42_14_reg_1350;
wire   [0:0] icmp_ln42_15_fu_633_p2;
reg   [0:0] icmp_ln42_15_reg_1355;
wire   [0:0] and_ln42_7_fu_684_p2;
reg   [0:0] and_ln42_7_reg_1360;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] min_p_32_fu_690_p3;
reg   [63:0] min_p_32_reg_1366;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [0:0] and_ln42_9_fu_772_p2;
reg   [0:0] and_ln42_9_reg_1373;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [63:0] min_p_34_fu_778_p3;
reg   [63:0] min_p_34_reg_1379;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [0:0] and_ln42_11_fu_860_p2;
reg   [0:0] and_ln42_11_reg_1386;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [63:0] min_p_36_fu_866_p3;
reg   [63:0] min_p_36_reg_1392;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [0:0] and_ln42_13_fu_948_p2;
reg   [0:0] and_ln42_13_reg_1399;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] min_p_38_fu_954_p3;
reg   [63:0] min_p_38_reg_1405;
wire    ap_block_pp0_stage16_11001;
wire   [7:0] min_s_21_fu_1042_p3;
reg   [7:0] min_s_21_reg_1412;
reg   [0:0] tmp_24_reg_1417;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln41_fu_263_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln41_2_fu_307_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] min_p_1_fu_90;
wire   [63:0] min_p_40_fu_1131_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [7:0] min_s_fu_94;
wire   [7:0] min_s_22_fu_1144_p3;
wire    ap_block_pp0_stage6;
reg   [5:0] min_s_12_fu_98;
wire   [5:0] add_ln40_1_fu_960_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    llike_1_ce0_local;
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_4_ce0_local;
reg    llike_5_ce0_local;
reg    llike_6_ce0_local;
reg    llike_7_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_219_p0;
reg   [63:0] grp_fu_219_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage16;
wire   [2:0] tmp_31_fu_245_p4;
wire   [10:0] tmp_60_cast_fu_255_p3;
wire   [6:0] zext_ln15_fu_241_p1;
wire   [3:0] lshr_ln9_1_fu_288_p4;
wire   [10:0] zext_ln41_1_fu_297_p1;
wire   [10:0] add_ln41_fu_301_p2;
wire    ap_block_pp0_stage3;
wire   [63:0] bitcast_ln42_fu_316_p1;
wire   [63:0] bitcast_ln42_1_fu_333_p1;
wire   [10:0] tmp_2_fu_319_p4;
wire   [51:0] trunc_ln42_fu_329_p1;
wire   [0:0] icmp_ln42_1_fu_356_p2;
wire   [0:0] icmp_ln42_fu_350_p2;
wire   [10:0] tmp_3_fu_336_p4;
wire   [51:0] trunc_ln42_1_fu_346_p1;
wire   [0:0] icmp_ln42_3_fu_374_p2;
wire   [0:0] icmp_ln42_2_fu_368_p2;
wire   [0:0] or_ln42_fu_362_p2;
wire   [0:0] and_ln42_fu_386_p2;
wire   [0:0] or_ln42_1_fu_380_p2;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln42_2_fu_404_p1;
wire   [63:0] bitcast_ln42_3_fu_421_p1;
wire   [10:0] tmp_5_fu_407_p4;
wire   [51:0] trunc_ln42_2_fu_417_p1;
wire   [0:0] icmp_ln42_5_fu_444_p2;
wire   [0:0] icmp_ln42_4_fu_438_p2;
wire   [10:0] tmp_6_fu_424_p4;
wire   [51:0] trunc_ln42_3_fu_434_p1;
wire   [0:0] icmp_ln42_7_fu_462_p2;
wire   [0:0] icmp_ln42_6_fu_456_p2;
wire   [0:0] or_ln42_3_fu_468_p2;
wire   [0:0] or_ln42_2_fu_450_p2;
wire   [0:0] and_ln42_2_fu_474_p2;
wire   [7:0] zext_ln42_fu_489_p1;
wire   [5:0] add_ln42_fu_505_p2;
wire   [7:0] zext_ln42_1_fu_510_p1;
wire   [7:0] min_s_15_fu_492_p3;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln42_4_fu_521_p1;
wire   [63:0] bitcast_ln42_5_fu_538_p1;
wire   [10:0] tmp_8_fu_524_p4;
wire   [51:0] trunc_ln42_4_fu_534_p1;
wire   [0:0] icmp_ln42_9_fu_561_p2;
wire   [0:0] icmp_ln42_8_fu_555_p2;
wire   [10:0] tmp_9_fu_541_p4;
wire   [51:0] trunc_ln42_5_fu_551_p1;
wire   [0:0] icmp_ln42_11_fu_579_p2;
wire   [0:0] icmp_ln42_10_fu_573_p2;
wire   [0:0] or_ln42_5_fu_585_p2;
wire   [0:0] or_ln42_4_fu_567_p2;
wire   [0:0] and_ln42_4_fu_591_p2;
wire   [63:0] bitcast_ln42_7_fu_609_p1;
wire   [10:0] tmp_11_fu_613_p4;
wire   [51:0] trunc_ln42_7_fu_623_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln42_6_fu_639_p1;
wire   [10:0] tmp_10_fu_642_p4;
wire   [51:0] trunc_ln42_6_fu_652_p1;
wire   [0:0] icmp_ln42_13_fu_662_p2;
wire   [0:0] icmp_ln42_12_fu_656_p2;
wire   [0:0] or_ln42_7_fu_674_p2;
wire   [0:0] or_ln42_6_fu_668_p2;
wire   [0:0] and_ln42_6_fu_678_p2;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln42_8_fu_696_p1;
wire   [63:0] bitcast_ln42_9_fu_713_p1;
wire   [10:0] tmp_13_fu_699_p4;
wire   [51:0] trunc_ln42_8_fu_709_p1;
wire   [0:0] icmp_ln42_17_fu_736_p2;
wire   [0:0] icmp_ln42_16_fu_730_p2;
wire   [10:0] tmp_14_fu_716_p4;
wire   [51:0] trunc_ln42_9_fu_726_p1;
wire   [0:0] icmp_ln42_19_fu_754_p2;
wire   [0:0] icmp_ln42_18_fu_748_p2;
wire   [0:0] or_ln42_9_fu_760_p2;
wire   [0:0] or_ln42_8_fu_742_p2;
wire   [0:0] and_ln42_8_fu_766_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln42_10_fu_784_p1;
wire   [63:0] bitcast_ln42_11_fu_801_p1;
wire   [10:0] tmp_16_fu_787_p4;
wire   [51:0] trunc_ln42_10_fu_797_p1;
wire   [0:0] icmp_ln42_21_fu_824_p2;
wire   [0:0] icmp_ln42_20_fu_818_p2;
wire   [10:0] tmp_17_fu_804_p4;
wire   [51:0] trunc_ln42_11_fu_814_p1;
wire   [0:0] icmp_ln42_23_fu_842_p2;
wire   [0:0] icmp_ln42_22_fu_836_p2;
wire   [0:0] or_ln42_11_fu_848_p2;
wire   [0:0] or_ln42_10_fu_830_p2;
wire   [0:0] and_ln42_10_fu_854_p2;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln42_12_fu_872_p1;
wire   [63:0] bitcast_ln42_13_fu_889_p1;
wire   [10:0] tmp_19_fu_875_p4;
wire   [51:0] trunc_ln42_12_fu_885_p1;
wire   [0:0] icmp_ln42_25_fu_912_p2;
wire   [0:0] icmp_ln42_24_fu_906_p2;
wire   [10:0] tmp_20_fu_892_p4;
wire   [51:0] trunc_ln42_13_fu_902_p1;
wire   [0:0] icmp_ln42_27_fu_930_p2;
wire   [0:0] icmp_ln42_26_fu_924_p2;
wire   [0:0] or_ln42_13_fu_936_p2;
wire   [0:0] or_ln42_12_fu_918_p2;
wire   [0:0] and_ln42_12_fu_942_p2;
wire   [5:0] add_ln42_1_fu_970_p2;
wire   [7:0] zext_ln42_2_fu_975_p1;
wire   [5:0] add_ln42_2_fu_985_p2;
wire   [7:0] zext_ln42_3_fu_990_p1;
wire   [7:0] min_s_17_fu_979_p3;
wire   [5:0] add_ln42_3_fu_1001_p2;
wire   [7:0] zext_ln42_4_fu_1006_p1;
wire   [7:0] min_s_18_fu_994_p3;
wire   [5:0] add_ln42_4_fu_1017_p2;
wire   [7:0] zext_ln42_5_fu_1022_p1;
wire   [7:0] min_s_19_fu_1010_p3;
wire   [5:0] add_ln42_5_fu_1033_p2;
wire   [7:0] zext_ln42_6_fu_1038_p1;
wire   [7:0] min_s_20_fu_1026_p3;
wire   [63:0] bitcast_ln42_14_fu_1050_p1;
wire   [63:0] bitcast_ln42_15_fu_1067_p1;
wire   [10:0] tmp_22_fu_1053_p4;
wire   [51:0] trunc_ln42_14_fu_1063_p1;
wire   [0:0] icmp_ln42_29_fu_1090_p2;
wire   [0:0] icmp_ln42_28_fu_1084_p2;
wire   [10:0] tmp_23_fu_1070_p4;
wire   [51:0] trunc_ln42_15_fu_1080_p1;
wire   [0:0] icmp_ln42_31_fu_1108_p2;
wire   [0:0] icmp_ln42_30_fu_1102_p2;
wire   [0:0] or_ln42_15_fu_1114_p2;
wire   [0:0] or_ln42_14_fu_1096_p2;
wire   [0:0] and_ln42_14_fu_1120_p2;
wire   [0:0] and_ln42_15_fu_1126_p2;
wire   [5:0] trunc_ln42_16_fu_1137_p1;
wire   [7:0] zext_ln42_7_fu_1140_p1;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [16:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_1_fu_90 = 64'd0;
#0 min_s_fu_94 = 8'd0;
#0 min_s_12_fu_98 = 6'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage16),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_1_fu_90 <= min_p;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_1235_pp0_iter1_reg == 1'd0))) begin
        min_p_1_fu_90 <= min_p_40_fu_1131_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_12_fu_98 <= 6'd1;
    end else if (((tmp_reg_1235 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_12_fu_98 <= add_ln40_1_fu_960_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_94 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_1235_pp0_iter1_reg == 1'd0))) begin
        min_s_fu_94 <= min_s_22_fu_1144_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln40_reg_1229 <= add_ln40_fu_274_p2;
        add_ln40_reg_1229_pp0_iter1_reg <= add_ln40_reg_1229;
        s_reg_1182 <= ap_sig_allocacmp_s;
        tmp_reg_1235 <= add_ln40_fu_274_p2[32'd6];
        tmp_reg_1235_pp0_iter1_reg <= tmp_reg_1235;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln42_11_reg_1386 <= and_ln42_11_fu_860_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln42_13_reg_1399 <= and_ln42_13_fu_948_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        and_ln42_1_reg_1307 <= and_ln42_1_fu_392_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        and_ln42_3_reg_1320 <= and_ln42_3_fu_480_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        and_ln42_5_reg_1338 <= and_ln42_5_fu_597_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        and_ln42_7_reg_1360 <= and_ln42_7_fu_684_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln42_9_reg_1373 <= and_ln42_9_fu_772_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln42_14_reg_1350 <= icmp_ln42_14_fu_627_p2;
        icmp_ln42_15_reg_1355 <= icmp_ln42_15_fu_633_p2;
        min_p_30_reg_1344 <= min_p_30_fu_603_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_24_reg_1293 <= min_p_1_fu_90;
        p_15_reg_1300 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_p_26_reg_1313 <= min_p_26_fu_398_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        min_p_28_reg_1326 <= min_p_28_fu_499_p3;
        min_s_16_reg_1333 <= min_s_16_fu_514_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_32_reg_1366 <= min_p_32_fu_690_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_34_reg_1379 <= min_p_34_fu_778_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_36_reg_1392 <= min_p_36_fu_866_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_38_reg_1405 <= min_p_38_fu_954_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_21_reg_1412 <= min_s_21_fu_1042_p3;
        tmp_24_reg_1417 <= grp_fu_846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_10_reg_1253 <= llike_3_q0;
        p_11_reg_1260 <= llike_4_q0;
        p_12_reg_1267 <= llike_5_q0;
        p_13_reg_1274 <= llike_6_q0;
        p_14_reg_1281 <= llike_7_q0;
        p_9_reg_1246 <= llike_2_q0;
        p_reg_1239 <= llike_1_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_1235 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1235 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_12_fu_98;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_219_p0 = p_15_reg_1300;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_219_p0 = p_14_reg_1281;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_219_p0 = p_13_reg_1274;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_219_p0 = p_12_reg_1267;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_219_p0 = p_11_reg_1260;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_219_p0 = p_10_reg_1253;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_219_p0 = p_9_reg_1246;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_219_p0 = p_reg_1239;
        end else begin
            grp_fu_219_p0 = 'bx;
        end
    end else begin
        grp_fu_219_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_219_p1 = min_p_38_fu_954_p3;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_219_p1 = min_p_36_fu_866_p3;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_219_p1 = min_p_34_fu_778_p3;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_219_p1 = min_p_32_fu_690_p3;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_219_p1 = min_p_30_fu_603_p3;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_219_p1 = min_p_28_fu_499_p3;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_219_p1 = min_p_26_fu_398_p3;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_219_p1 = min_p_1_fu_90;
        end else begin
            grp_fu_219_p1 = 'bx;
        end
    end else begin
        grp_fu_219_p1 = 'bx;
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
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1235 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_8_out_ap_vld = 1'b1;
    end else begin
        min_s_8_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln40_1_fu_960_p2 = (s_reg_1182 + 6'd8);
assign add_ln40_fu_274_p2 = (zext_ln15_fu_241_p1 + 7'd7);
assign add_ln41_fu_301_p2 = ($signed(zext_ln41_1_fu_297_p1) + $signed(11'd1112));
assign add_ln42_1_fu_970_p2 = (s_reg_1182 + 6'd2);
assign add_ln42_2_fu_985_p2 = (s_reg_1182 + 6'd3);
assign add_ln42_3_fu_1001_p2 = (s_reg_1182 + 6'd4);
assign add_ln42_4_fu_1017_p2 = (s_reg_1182 + 6'd5);
assign add_ln42_5_fu_1033_p2 = (s_reg_1182 + 6'd6);
assign add_ln42_fu_505_p2 = (s_reg_1182 + 6'd1);
assign and_ln42_10_fu_854_p2 = (or_ln42_11_fu_848_p2 & or_ln42_10_fu_830_p2);
assign and_ln42_11_fu_860_p2 = (grp_fu_846_p_dout0 & and_ln42_10_fu_854_p2);
assign and_ln42_12_fu_942_p2 = (or_ln42_13_fu_936_p2 & or_ln42_12_fu_918_p2);
assign and_ln42_13_fu_948_p2 = (grp_fu_846_p_dout0 & and_ln42_12_fu_942_p2);
assign and_ln42_14_fu_1120_p2 = (or_ln42_15_fu_1114_p2 & or_ln42_14_fu_1096_p2);
assign and_ln42_15_fu_1126_p2 = (tmp_24_reg_1417 & and_ln42_14_fu_1120_p2);
assign and_ln42_1_fu_392_p2 = (or_ln42_1_fu_380_p2 & and_ln42_fu_386_p2);
assign and_ln42_2_fu_474_p2 = (or_ln42_3_fu_468_p2 & or_ln42_2_fu_450_p2);
assign and_ln42_3_fu_480_p2 = (grp_fu_846_p_dout0 & and_ln42_2_fu_474_p2);
assign and_ln42_4_fu_591_p2 = (or_ln42_5_fu_585_p2 & or_ln42_4_fu_567_p2);
assign and_ln42_5_fu_597_p2 = (grp_fu_846_p_dout0 & and_ln42_4_fu_591_p2);
assign and_ln42_6_fu_678_p2 = (or_ln42_7_fu_674_p2 & or_ln42_6_fu_668_p2);
assign and_ln42_7_fu_684_p2 = (grp_fu_846_p_dout0 & and_ln42_6_fu_678_p2);
assign and_ln42_8_fu_766_p2 = (or_ln42_9_fu_760_p2 & or_ln42_8_fu_742_p2);
assign and_ln42_9_fu_772_p2 = (grp_fu_846_p_dout0 & and_ln42_8_fu_766_p2);
assign and_ln42_fu_386_p2 = (or_ln42_fu_362_p2 & grp_fu_846_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage16;
assign ap_ready = ap_ready_sig;
assign bitcast_ln42_10_fu_784_p1 = p_13_reg_1274;
assign bitcast_ln42_11_fu_801_p1 = min_p_34_reg_1379;
assign bitcast_ln42_12_fu_872_p1 = p_14_reg_1281;
assign bitcast_ln42_13_fu_889_p1 = min_p_36_reg_1392;
assign bitcast_ln42_14_fu_1050_p1 = p_15_reg_1300;
assign bitcast_ln42_15_fu_1067_p1 = min_p_38_reg_1405;
assign bitcast_ln42_1_fu_333_p1 = min_p_24_reg_1293;
assign bitcast_ln42_2_fu_404_p1 = p_9_reg_1246;
assign bitcast_ln42_3_fu_421_p1 = min_p_26_reg_1313;
assign bitcast_ln42_4_fu_521_p1 = p_10_reg_1253;
assign bitcast_ln42_5_fu_538_p1 = min_p_28_reg_1326;
assign bitcast_ln42_6_fu_639_p1 = p_11_reg_1260;
assign bitcast_ln42_7_fu_609_p1 = min_p_30_fu_603_p3;
assign bitcast_ln42_8_fu_696_p1 = p_12_reg_1267;
assign bitcast_ln42_9_fu_713_p1 = min_p_32_reg_1366;
assign bitcast_ln42_fu_316_p1 = p_reg_1239;
assign grp_fu_846_p_ce = 1'b1;
assign grp_fu_846_p_din0 = grp_fu_219_p0;
assign grp_fu_846_p_din1 = grp_fu_219_p1;
assign grp_fu_846_p_opcode = 5'd4;
assign icmp_ln42_10_fu_573_p2 = ((tmp_9_fu_541_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_11_fu_579_p2 = ((trunc_ln42_5_fu_551_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_12_fu_656_p2 = ((tmp_10_fu_642_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_13_fu_662_p2 = ((trunc_ln42_6_fu_652_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_14_fu_627_p2 = ((tmp_11_fu_613_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_15_fu_633_p2 = ((trunc_ln42_7_fu_623_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_16_fu_730_p2 = ((tmp_13_fu_699_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_17_fu_736_p2 = ((trunc_ln42_8_fu_709_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_18_fu_748_p2 = ((tmp_14_fu_716_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_19_fu_754_p2 = ((trunc_ln42_9_fu_726_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_1_fu_356_p2 = ((trunc_ln42_fu_329_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_20_fu_818_p2 = ((tmp_16_fu_787_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_21_fu_824_p2 = ((trunc_ln42_10_fu_797_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_22_fu_836_p2 = ((tmp_17_fu_804_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_23_fu_842_p2 = ((trunc_ln42_11_fu_814_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_24_fu_906_p2 = ((tmp_19_fu_875_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_25_fu_912_p2 = ((trunc_ln42_12_fu_885_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_26_fu_924_p2 = ((tmp_20_fu_892_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_27_fu_930_p2 = ((trunc_ln42_13_fu_902_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_28_fu_1084_p2 = ((tmp_22_fu_1053_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_29_fu_1090_p2 = ((trunc_ln42_14_fu_1063_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_2_fu_368_p2 = ((tmp_3_fu_336_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_30_fu_1102_p2 = ((tmp_23_fu_1070_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_31_fu_1108_p2 = ((trunc_ln42_15_fu_1080_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_3_fu_374_p2 = ((trunc_ln42_1_fu_346_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_4_fu_438_p2 = ((tmp_5_fu_407_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_5_fu_444_p2 = ((trunc_ln42_2_fu_417_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_6_fu_456_p2 = ((tmp_6_fu_424_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_7_fu_462_p2 = ((trunc_ln42_3_fu_434_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_8_fu_555_p2 = ((tmp_8_fu_524_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_9_fu_561_p2 = ((trunc_ln42_4_fu_534_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_fu_350_p2 = ((tmp_2_fu_319_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln41_fu_263_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln41_fu_263_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln41_fu_263_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln41_fu_263_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln41_fu_263_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln41_fu_263_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln41_fu_263_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_address0 = zext_ln41_2_fu_307_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln9_1_fu_288_p4 = {{add_ln40_reg_1229[6:3]}};
assign min_p_26_fu_398_p3 = ((and_ln42_1_reg_1307[0:0] == 1'b1) ? p_reg_1239 : min_p_24_reg_1293);
assign min_p_28_fu_499_p3 = ((and_ln42_3_reg_1320[0:0] == 1'b1) ? p_9_reg_1246 : min_p_26_reg_1313);
assign min_p_30_fu_603_p3 = ((and_ln42_5_reg_1338[0:0] == 1'b1) ? p_10_reg_1253 : min_p_28_reg_1326);
assign min_p_32_fu_690_p3 = ((and_ln42_7_reg_1360[0:0] == 1'b1) ? p_11_reg_1260 : min_p_30_reg_1344);
assign min_p_34_fu_778_p3 = ((and_ln42_9_reg_1373[0:0] == 1'b1) ? p_12_reg_1267 : min_p_32_reg_1366);
assign min_p_36_fu_866_p3 = ((and_ln42_11_reg_1386[0:0] == 1'b1) ? p_13_reg_1274 : min_p_34_reg_1379);
assign min_p_38_fu_954_p3 = ((and_ln42_13_reg_1399[0:0] == 1'b1) ? p_14_reg_1281 : min_p_36_reg_1392);
assign min_p_40_fu_1131_p3 = ((and_ln42_15_fu_1126_p2[0:0] == 1'b1) ? p_15_reg_1300 : min_p_38_reg_1405);
assign min_s_15_fu_492_p3 = ((and_ln42_1_reg_1307[0:0] == 1'b1) ? zext_ln42_fu_489_p1 : min_s_fu_94);
assign min_s_16_fu_514_p3 = ((and_ln42_3_reg_1320[0:0] == 1'b1) ? zext_ln42_1_fu_510_p1 : min_s_15_fu_492_p3);
assign min_s_17_fu_979_p3 = ((and_ln42_5_reg_1338[0:0] == 1'b1) ? zext_ln42_2_fu_975_p1 : min_s_16_reg_1333);
assign min_s_18_fu_994_p3 = ((and_ln42_7_reg_1360[0:0] == 1'b1) ? zext_ln42_3_fu_990_p1 : min_s_17_fu_979_p3);
assign min_s_19_fu_1010_p3 = ((and_ln42_9_reg_1373[0:0] == 1'b1) ? zext_ln42_4_fu_1006_p1 : min_s_18_fu_994_p3);
assign min_s_20_fu_1026_p3 = ((and_ln42_11_reg_1386[0:0] == 1'b1) ? zext_ln42_5_fu_1022_p1 : min_s_19_fu_1010_p3);
assign min_s_21_fu_1042_p3 = ((and_ln42_13_reg_1399[0:0] == 1'b1) ? zext_ln42_6_fu_1038_p1 : min_s_20_fu_1026_p3);
assign min_s_22_fu_1144_p3 = ((and_ln42_15_fu_1126_p2[0:0] == 1'b1) ? zext_ln42_7_fu_1140_p1 : min_s_21_reg_1412);
assign min_s_8_out = ((and_ln42_13_reg_1399[0:0] == 1'b1) ? zext_ln42_6_fu_1038_p1 : min_s_20_fu_1026_p3);
assign or_ln42_10_fu_830_p2 = (icmp_ln42_21_fu_824_p2 | icmp_ln42_20_fu_818_p2);
assign or_ln42_11_fu_848_p2 = (icmp_ln42_23_fu_842_p2 | icmp_ln42_22_fu_836_p2);
assign or_ln42_12_fu_918_p2 = (icmp_ln42_25_fu_912_p2 | icmp_ln42_24_fu_906_p2);
assign or_ln42_13_fu_936_p2 = (icmp_ln42_27_fu_930_p2 | icmp_ln42_26_fu_924_p2);
assign or_ln42_14_fu_1096_p2 = (icmp_ln42_29_fu_1090_p2 | icmp_ln42_28_fu_1084_p2);
assign or_ln42_15_fu_1114_p2 = (icmp_ln42_31_fu_1108_p2 | icmp_ln42_30_fu_1102_p2);
assign or_ln42_1_fu_380_p2 = (icmp_ln42_3_fu_374_p2 | icmp_ln42_2_fu_368_p2);
assign or_ln42_2_fu_450_p2 = (icmp_ln42_5_fu_444_p2 | icmp_ln42_4_fu_438_p2);
assign or_ln42_3_fu_468_p2 = (icmp_ln42_7_fu_462_p2 | icmp_ln42_6_fu_456_p2);
assign or_ln42_4_fu_567_p2 = (icmp_ln42_9_fu_561_p2 | icmp_ln42_8_fu_555_p2);
assign or_ln42_5_fu_585_p2 = (icmp_ln42_11_fu_579_p2 | icmp_ln42_10_fu_573_p2);
assign or_ln42_6_fu_668_p2 = (icmp_ln42_13_fu_662_p2 | icmp_ln42_12_fu_656_p2);
assign or_ln42_7_fu_674_p2 = (icmp_ln42_15_reg_1355 | icmp_ln42_14_reg_1350);
assign or_ln42_8_fu_742_p2 = (icmp_ln42_17_fu_736_p2 | icmp_ln42_16_fu_730_p2);
assign or_ln42_9_fu_760_p2 = (icmp_ln42_19_fu_754_p2 | icmp_ln42_18_fu_748_p2);
assign or_ln42_fu_362_p2 = (icmp_ln42_fu_350_p2 | icmp_ln42_1_fu_356_p2);
assign tmp_10_fu_642_p4 = {{bitcast_ln42_6_fu_639_p1[62:52]}};
assign tmp_11_fu_613_p4 = {{bitcast_ln42_7_fu_609_p1[62:52]}};
assign tmp_13_fu_699_p4 = {{bitcast_ln42_8_fu_696_p1[62:52]}};
assign tmp_14_fu_716_p4 = {{bitcast_ln42_9_fu_713_p1[62:52]}};
assign tmp_16_fu_787_p4 = {{bitcast_ln42_10_fu_784_p1[62:52]}};
assign tmp_17_fu_804_p4 = {{bitcast_ln42_11_fu_801_p1[62:52]}};
assign tmp_19_fu_875_p4 = {{bitcast_ln42_12_fu_872_p1[62:52]}};
assign tmp_20_fu_892_p4 = {{bitcast_ln42_13_fu_889_p1[62:52]}};
assign tmp_22_fu_1053_p4 = {{bitcast_ln42_14_fu_1050_p1[62:52]}};
assign tmp_23_fu_1070_p4 = {{bitcast_ln42_15_fu_1067_p1[62:52]}};
assign tmp_2_fu_319_p4 = {{bitcast_ln42_fu_316_p1[62:52]}};
assign tmp_31_fu_245_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign tmp_3_fu_336_p4 = {{bitcast_ln42_1_fu_333_p1[62:52]}};
assign tmp_5_fu_407_p4 = {{bitcast_ln42_2_fu_404_p1[62:52]}};
assign tmp_60_cast_fu_255_p3 = {{8'd139}, {tmp_31_fu_245_p4}};
assign tmp_6_fu_424_p4 = {{bitcast_ln42_3_fu_421_p1[62:52]}};
assign tmp_8_fu_524_p4 = {{bitcast_ln42_4_fu_521_p1[62:52]}};
assign tmp_9_fu_541_p4 = {{bitcast_ln42_5_fu_538_p1[62:52]}};
assign trunc_ln42_10_fu_797_p1 = bitcast_ln42_10_fu_784_p1[51:0];
assign trunc_ln42_11_fu_814_p1 = bitcast_ln42_11_fu_801_p1[51:0];
assign trunc_ln42_12_fu_885_p1 = bitcast_ln42_12_fu_872_p1[51:0];
assign trunc_ln42_13_fu_902_p1 = bitcast_ln42_13_fu_889_p1[51:0];
assign trunc_ln42_14_fu_1063_p1 = bitcast_ln42_14_fu_1050_p1[51:0];
assign trunc_ln42_15_fu_1080_p1 = bitcast_ln42_15_fu_1067_p1[51:0];
assign trunc_ln42_16_fu_1137_p1 = add_ln40_reg_1229_pp0_iter1_reg[5:0];
assign trunc_ln42_1_fu_346_p1 = bitcast_ln42_1_fu_333_p1[51:0];
assign trunc_ln42_2_fu_417_p1 = bitcast_ln42_2_fu_404_p1[51:0];
assign trunc_ln42_3_fu_434_p1 = bitcast_ln42_3_fu_421_p1[51:0];
assign trunc_ln42_4_fu_534_p1 = bitcast_ln42_4_fu_521_p1[51:0];
assign trunc_ln42_5_fu_551_p1 = bitcast_ln42_5_fu_538_p1[51:0];
assign trunc_ln42_6_fu_652_p1 = bitcast_ln42_6_fu_639_p1[51:0];
assign trunc_ln42_7_fu_623_p1 = bitcast_ln42_7_fu_609_p1[51:0];
assign trunc_ln42_8_fu_709_p1 = bitcast_ln42_8_fu_696_p1[51:0];
assign trunc_ln42_9_fu_726_p1 = bitcast_ln42_9_fu_713_p1[51:0];
assign trunc_ln42_fu_329_p1 = bitcast_ln42_fu_316_p1[51:0];
assign zext_ln15_fu_241_p1 = ap_sig_allocacmp_s;
assign zext_ln41_1_fu_297_p1 = lshr_ln9_1_fu_288_p4;
assign zext_ln41_2_fu_307_p1 = add_ln41_fu_301_p2;
assign zext_ln41_fu_263_p1 = tmp_60_cast_fu_255_p3;
assign zext_ln42_1_fu_510_p1 = add_ln42_fu_505_p2;
assign zext_ln42_2_fu_975_p1 = add_ln42_1_fu_970_p2;
assign zext_ln42_3_fu_990_p1 = add_ln42_2_fu_985_p2;
assign zext_ln42_4_fu_1006_p1 = add_ln42_3_fu_1001_p2;
assign zext_ln42_5_fu_1022_p1 = add_ln42_4_fu_1017_p2;
assign zext_ln42_6_fu_1038_p1 = add_ln42_5_fu_1033_p2;
assign zext_ln42_7_fu_1140_p1 = trunc_ln42_16_fu_1137_p1;
assign zext_ln42_fu_489_p1 = s_reg_1182;
endmodule 