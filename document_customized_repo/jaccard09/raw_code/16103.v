module viterbi_viterbi_Pipeline_L_end (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,min_s_8_out,min_s_8_out_ap_vld,grp_fu_1961_p_din0,grp_fu_1961_p_din1,grp_fu_1961_p_opcode,grp_fu_1961_p_dout0,grp_fu_1961_p_ce); 
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
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [12:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
output  [7:0] min_s_8_out;
output   min_s_8_out_ap_vld;
output  [63:0] grp_fu_1961_p_din0;
output  [63:0] grp_fu_1961_p_din1;
output  [4:0] grp_fu_1961_p_opcode;
input  [0:0] grp_fu_1961_p_dout0;
output   grp_fu_1961_p_ce;
reg ap_idle;
reg min_s_8_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_reg_1320;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] s_reg_1268;
wire   [4:0] tmp_s_fu_215_p4;
reg   [4:0] tmp_s_reg_1278;
wire   [5:0] add_ln40_fu_238_p2;
reg   [5:0] add_ln40_reg_1289;
wire   [5:0] add_ln40_1_fu_286_p2;
reg   [5:0] add_ln40_1_reg_1304;
wire   [6:0] add_ln40_3_fu_315_p2;
reg   [6:0] add_ln40_3_reg_1314;
reg   [6:0] add_ln40_3_reg_1314_pp0_iter1_reg;
reg   [63:0] p_reg_1324;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] p_23_reg_1331;
reg   [63:0] p_24_reg_1338;
reg   [63:0] p_25_reg_1345;
wire   [5:0] add_ln40_2_fu_347_p2;
reg   [5:0] add_ln40_2_reg_1357;
reg   [63:0] min_p_52_reg_1377;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] p_26_reg_1384;
reg   [63:0] p_27_reg_1391;
reg   [63:0] p_28_reg_1398;
reg   [63:0] p_29_reg_1405;
wire   [0:0] and_ln42_1_fu_497_p2;
reg   [0:0] and_ln42_1_reg_1412;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] min_p_54_fu_503_p3;
reg   [63:0] min_p_54_reg_1418;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] and_ln42_3_fu_585_p2;
reg   [0:0] and_ln42_3_reg_1425;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] min_p_56_fu_604_p3;
reg   [63:0] min_p_56_reg_1431;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_16_fu_613_p3;
reg   [7:0] min_s_16_reg_1438;
wire   [0:0] and_ln42_5_fu_696_p2;
reg   [0:0] and_ln42_5_reg_1443;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_58_fu_702_p3;
reg   [63:0] min_p_58_reg_1449;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln42_14_fu_726_p2;
reg   [0:0] icmp_ln42_14_reg_1455;
wire   [0:0] icmp_ln42_15_fu_732_p2;
reg   [0:0] icmp_ln42_15_reg_1460;
wire   [0:0] and_ln42_7_fu_783_p2;
reg   [0:0] and_ln42_7_reg_1465;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] min_p_60_fu_804_p3;
reg   [63:0] min_p_60_reg_1471;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [7:0] min_s_18_fu_813_p3;
reg   [7:0] min_s_18_reg_1478;
wire   [0:0] and_ln42_9_fu_896_p2;
reg   [0:0] and_ln42_9_reg_1483;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [63:0] min_p_62_fu_902_p3;
reg   [63:0] min_p_62_reg_1489;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [0:0] and_ln42_11_fu_984_p2;
reg   [0:0] and_ln42_11_reg_1496;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [63:0] min_p_64_fu_990_p3;
reg   [63:0] min_p_64_reg_1502;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [0:0] and_ln42_13_fu_1072_p2;
reg   [0:0] and_ln42_13_reg_1509;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [7:0] min_s_21_fu_1112_p3;
reg   [7:0] min_s_21_reg_1515;
wire    ap_block_pp0_stage16_11001;
wire   [63:0] min_p_66_fu_1120_p3;
reg   [63:0] min_p_66_reg_1520;
reg   [0:0] tmp_68_reg_1527;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln41_fu_233_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln41_1_fu_262_p1;
wire   [63:0] zext_ln41_2_fu_281_p1;
wire   [63:0] zext_ln41_3_fu_310_p1;
wire   [63:0] zext_ln41_4_fu_342_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln41_5_fu_370_p1;
wire   [63:0] zext_ln41_6_fu_388_p1;
wire   [63:0] zext_ln41_8_fu_412_p1;
reg   [63:0] min_p_1_fu_82;
wire   [63:0] min_p_68_fu_1217_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [7:0] min_s_fu_86;
wire   [7:0] min_s_22_fu_1230_p3;
wire    ap_block_pp0_stage6;
reg   [5:0] min_s_12_fu_90;
wire   [5:0] add_ln40_4_fu_1126_p2;
reg   [5:0] ap_sig_allocacmp_s;
wire    ap_block_pp0_stage16_01001;
reg    llike_1_ce1_local;
reg   [12:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg    llike_ce1_local;
reg   [12:0] llike_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_189_p0;
reg   [63:0] grp_fu_189_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage16;
wire   [12:0] tmp_182_cast_fu_225_p3;
wire   [4:0] tmp_111_fu_244_p4;
wire   [12:0] tmp_184_cast_fu_254_p3;
wire   [4:0] add_ln8_fu_267_p2;
wire   [12:0] tmp_185_cast_fu_273_p3;
wire   [4:0] tmp_112_fu_292_p4;
wire   [12:0] tmp_187_cast_fu_302_p3;
wire   [6:0] zext_ln20_fu_211_p1;
wire   [4:0] add_ln8_1_fu_329_p2;
wire   [12:0] tmp_188_cast_fu_334_p3;
wire   [4:0] tmp_113_fu_352_p4;
wire   [12:0] tmp_190_cast_fu_362_p3;
wire   [4:0] add_ln8_2_fu_375_p2;
wire   [12:0] tmp_191_cast_fu_380_p3;
wire   [5:0] lshr_ln9_2_fu_393_p4;
wire   [12:0] zext_ln41_7_fu_402_p1;
wire   [12:0] add_ln41_fu_406_p2;
wire    ap_block_pp0_stage3;
wire   [63:0] bitcast_ln42_fu_421_p1;
wire   [63:0] bitcast_ln42_1_fu_438_p1;
wire   [10:0] tmp_45_fu_424_p4;
wire   [51:0] trunc_ln42_fu_434_p1;
wire   [0:0] icmp_ln42_1_fu_461_p2;
wire   [0:0] icmp_ln42_fu_455_p2;
wire   [10:0] tmp_46_fu_441_p4;
wire   [51:0] trunc_ln42_1_fu_451_p1;
wire   [0:0] icmp_ln42_3_fu_479_p2;
wire   [0:0] icmp_ln42_2_fu_473_p2;
wire   [0:0] or_ln42_fu_467_p2;
wire   [0:0] and_ln42_fu_491_p2;
wire   [0:0] or_ln42_1_fu_485_p2;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln42_2_fu_509_p1;
wire   [63:0] bitcast_ln42_3_fu_526_p1;
wire   [10:0] tmp_48_fu_512_p4;
wire   [51:0] trunc_ln42_2_fu_522_p1;
wire   [0:0] icmp_ln42_5_fu_549_p2;
wire   [0:0] icmp_ln42_4_fu_543_p2;
wire   [10:0] tmp_49_fu_529_p4;
wire   [51:0] trunc_ln42_3_fu_539_p1;
wire   [0:0] icmp_ln42_7_fu_567_p2;
wire   [0:0] icmp_ln42_6_fu_561_p2;
wire   [0:0] or_ln42_3_fu_573_p2;
wire   [0:0] or_ln42_2_fu_555_p2;
wire   [0:0] and_ln42_2_fu_579_p2;
wire   [7:0] zext_ln42_fu_594_p1;
wire   [7:0] zext_ln42_1_fu_610_p1;
wire   [7:0] min_s_15_fu_597_p3;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln42_4_fu_620_p1;
wire   [63:0] bitcast_ln42_5_fu_637_p1;
wire   [10:0] tmp_51_fu_623_p4;
wire   [51:0] trunc_ln42_4_fu_633_p1;
wire   [0:0] icmp_ln42_9_fu_660_p2;
wire   [0:0] icmp_ln42_8_fu_654_p2;
wire   [10:0] tmp_52_fu_640_p4;
wire   [51:0] trunc_ln42_5_fu_650_p1;
wire   [0:0] icmp_ln42_11_fu_678_p2;
wire   [0:0] icmp_ln42_10_fu_672_p2;
wire   [0:0] or_ln42_5_fu_684_p2;
wire   [0:0] or_ln42_4_fu_666_p2;
wire   [0:0] and_ln42_4_fu_690_p2;
wire   [63:0] bitcast_ln42_7_fu_708_p1;
wire   [10:0] tmp_55_fu_712_p4;
wire   [51:0] trunc_ln42_7_fu_722_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln42_6_fu_738_p1;
wire   [10:0] tmp_54_fu_741_p4;
wire   [51:0] trunc_ln42_6_fu_751_p1;
wire   [0:0] icmp_ln42_13_fu_761_p2;
wire   [0:0] icmp_ln42_12_fu_755_p2;
wire   [0:0] or_ln42_7_fu_773_p2;
wire   [0:0] or_ln42_6_fu_767_p2;
wire   [0:0] and_ln42_6_fu_777_p2;
wire   [5:0] add_ln42_fu_789_p2;
wire   [7:0] zext_ln42_2_fu_794_p1;
wire   [7:0] zext_ln42_3_fu_810_p1;
wire   [7:0] min_s_17_fu_798_p3;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln42_8_fu_820_p1;
wire   [63:0] bitcast_ln42_9_fu_837_p1;
wire   [10:0] tmp_57_fu_823_p4;
wire   [51:0] trunc_ln42_8_fu_833_p1;
wire   [0:0] icmp_ln42_17_fu_860_p2;
wire   [0:0] icmp_ln42_16_fu_854_p2;
wire   [10:0] tmp_58_fu_840_p4;
wire   [51:0] trunc_ln42_9_fu_850_p1;
wire   [0:0] icmp_ln42_19_fu_878_p2;
wire   [0:0] icmp_ln42_18_fu_872_p2;
wire   [0:0] or_ln42_9_fu_884_p2;
wire   [0:0] or_ln42_8_fu_866_p2;
wire   [0:0] and_ln42_8_fu_890_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln42_10_fu_908_p1;
wire   [63:0] bitcast_ln42_11_fu_925_p1;
wire   [10:0] tmp_60_fu_911_p4;
wire   [51:0] trunc_ln42_10_fu_921_p1;
wire   [0:0] icmp_ln42_21_fu_948_p2;
wire   [0:0] icmp_ln42_20_fu_942_p2;
wire   [10:0] tmp_61_fu_928_p4;
wire   [51:0] trunc_ln42_11_fu_938_p1;
wire   [0:0] icmp_ln42_23_fu_966_p2;
wire   [0:0] icmp_ln42_22_fu_960_p2;
wire   [0:0] or_ln42_11_fu_972_p2;
wire   [0:0] or_ln42_10_fu_954_p2;
wire   [0:0] and_ln42_10_fu_978_p2;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln42_12_fu_996_p1;
wire   [63:0] bitcast_ln42_13_fu_1013_p1;
wire   [10:0] tmp_63_fu_999_p4;
wire   [51:0] trunc_ln42_12_fu_1009_p1;
wire   [0:0] icmp_ln42_25_fu_1036_p2;
wire   [0:0] icmp_ln42_24_fu_1030_p2;
wire   [10:0] tmp_64_fu_1016_p4;
wire   [51:0] trunc_ln42_13_fu_1026_p1;
wire   [0:0] icmp_ln42_27_fu_1054_p2;
wire   [0:0] icmp_ln42_26_fu_1048_p2;
wire   [0:0] or_ln42_13_fu_1060_p2;
wire   [0:0] or_ln42_12_fu_1042_p2;
wire   [0:0] and_ln42_12_fu_1066_p2;
wire   [5:0] add_ln42_1_fu_1078_p2;
wire   [7:0] zext_ln42_4_fu_1083_p1;
wire   [7:0] zext_ln42_5_fu_1093_p1;
wire   [7:0] min_s_19_fu_1087_p3;
wire   [5:0] add_ln42_2_fu_1103_p2;
wire   [7:0] zext_ln42_6_fu_1108_p1;
wire   [7:0] min_s_20_fu_1096_p3;
wire   [63:0] bitcast_ln42_14_fu_1136_p1;
wire   [63:0] bitcast_ln42_15_fu_1153_p1;
wire   [10:0] tmp_66_fu_1139_p4;
wire   [51:0] trunc_ln42_14_fu_1149_p1;
wire   [0:0] icmp_ln42_29_fu_1176_p2;
wire   [0:0] icmp_ln42_28_fu_1170_p2;
wire   [10:0] tmp_67_fu_1156_p4;
wire   [51:0] trunc_ln42_15_fu_1166_p1;
wire   [0:0] icmp_ln42_31_fu_1194_p2;
wire   [0:0] icmp_ln42_30_fu_1188_p2;
wire   [0:0] or_ln42_15_fu_1200_p2;
wire   [0:0] or_ln42_14_fu_1182_p2;
wire   [0:0] and_ln42_14_fu_1206_p2;
wire   [0:0] and_ln42_15_fu_1212_p2;
wire   [5:0] trunc_ln42_16_fu_1223_p1;
wire   [7:0] zext_ln42_7_fu_1226_p1;
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
wire    ap_block_pp0_stage0_subdone;
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
#0 min_p_1_fu_82 = 64'd0;
#0 min_s_fu_86 = 8'd0;
#0 min_s_12_fu_90 = 6'd0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage16) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_1_fu_82 <= min_p;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_fu_82 <= min_p_68_fu_1217_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_12_fu_90 <= 6'd1;
    end else if (((tmp_reg_1320 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_12_fu_90 <= add_ln40_4_fu_1126_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_86 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_s_fu_86 <= min_s_22_fu_1230_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln40_1_reg_1304 <= add_ln40_1_fu_286_p2;
        add_ln40_3_reg_1314 <= add_ln40_3_fu_315_p2;
        add_ln40_3_reg_1314_pp0_iter1_reg <= add_ln40_3_reg_1314;
        add_ln40_reg_1289 <= add_ln40_fu_238_p2;
        s_reg_1268 <= ap_sig_allocacmp_s;
        tmp_reg_1320 <= add_ln40_3_fu_315_p2[32'd6];
        tmp_s_reg_1278 <= {{ap_sig_allocacmp_s[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln40_2_reg_1357 <= add_ln40_2_fu_347_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln42_11_reg_1496 <= and_ln42_11_fu_984_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln42_13_reg_1509 <= and_ln42_13_fu_1072_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        and_ln42_1_reg_1412 <= and_ln42_1_fu_497_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        and_ln42_3_reg_1425 <= and_ln42_3_fu_585_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        and_ln42_5_reg_1443 <= and_ln42_5_fu_696_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        and_ln42_7_reg_1465 <= and_ln42_7_fu_783_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln42_9_reg_1483 <= and_ln42_9_fu_896_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln42_14_reg_1455 <= icmp_ln42_14_fu_726_p2;
        icmp_ln42_15_reg_1460 <= icmp_ln42_15_fu_732_p2;
        min_p_58_reg_1449 <= min_p_58_fu_702_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_52_reg_1377 <= min_p_1_fu_82;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_p_54_reg_1418 <= min_p_54_fu_503_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        min_p_56_reg_1431 <= min_p_56_fu_604_p3;
        min_s_16_reg_1438 <= min_s_16_fu_613_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_60_reg_1471 <= min_p_60_fu_804_p3;
        min_s_18_reg_1478 <= min_s_18_fu_813_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_62_reg_1489 <= min_p_62_fu_902_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_64_reg_1502 <= min_p_64_fu_990_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_66_reg_1520 <= min_p_66_fu_1120_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_21_reg_1515 <= min_s_21_fu_1112_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_23_reg_1331 <= llike_q1;
        p_24_reg_1338 <= llike_1_q0;
        p_25_reg_1345 <= llike_q0;
        p_reg_1324 <= llike_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_26_reg_1384 <= llike_1_q1;
        p_27_reg_1391 <= llike_q1;
        p_28_reg_1398 <= llike_1_q0;
        p_29_reg_1405 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_68_reg_1527 <= grp_fu_1961_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_1320 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
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
        ap_sig_allocacmp_s = min_s_12_fu_90;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_189_p0 = p_29_reg_1405;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_189_p0 = p_28_reg_1398;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_189_p0 = p_27_reg_1391;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_189_p0 = p_26_reg_1384;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_189_p0 = p_25_reg_1345;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_189_p0 = p_24_reg_1338;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_189_p0 = p_23_reg_1331;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_189_p0 = p_reg_1324;
        end else begin
            grp_fu_189_p0 = 'bx;
        end
    end else begin
        grp_fu_189_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_189_p1 = min_p_66_fu_1120_p3;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_189_p1 = min_p_64_fu_990_p3;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_189_p1 = min_p_62_fu_902_p3;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_189_p1 = min_p_60_fu_804_p3;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_189_p1 = min_p_58_fu_702_p3;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_189_p1 = min_p_56_fu_604_p3;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_189_p1 = min_p_54_fu_503_p3;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_189_p1 = min_p_1_fu_82;
        end else begin
            grp_fu_189_p1 = 'bx;
        end
    end else begin
        grp_fu_189_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln41_6_fu_388_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln41_2_fu_281_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address1_local = zext_ln41_4_fu_342_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln41_fu_233_p1;
        end else begin
            llike_1_address1_local = 'bx;
        end
    end else begin
        llike_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln41_8_fu_412_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln41_3_fu_310_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln41_5_fu_370_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln41_1_fu_262_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_1320 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_8_out_ap_vld = 1'b1;
    end else begin
        min_s_8_out_ap_vld = 1'b0;
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
assign add_ln40_1_fu_286_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln40_2_fu_347_p2 = (s_reg_1268 + 6'd5);
assign add_ln40_3_fu_315_p2 = (zext_ln20_fu_211_p1 + 7'd7);
assign add_ln40_4_fu_1126_p2 = (s_reg_1268 + 6'd8);
assign add_ln40_fu_238_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln41_fu_406_p2 = ($signed(zext_ln41_7_fu_402_p1) + $signed(13'd4448));
assign add_ln42_1_fu_1078_p2 = (s_reg_1268 + 6'd4);
assign add_ln42_2_fu_1103_p2 = (s_reg_1268 + 6'd6);
assign add_ln42_fu_789_p2 = (s_reg_1268 + 6'd2);
assign add_ln8_1_fu_329_p2 = (tmp_s_reg_1278 + 5'd2);
assign add_ln8_2_fu_375_p2 = (tmp_s_reg_1278 + 5'd3);
assign add_ln8_fu_267_p2 = (tmp_s_fu_215_p4 + 5'd1);
assign and_ln42_10_fu_978_p2 = (or_ln42_11_fu_972_p2 & or_ln42_10_fu_954_p2);
assign and_ln42_11_fu_984_p2 = (grp_fu_1961_p_dout0 & and_ln42_10_fu_978_p2);
assign and_ln42_12_fu_1066_p2 = (or_ln42_13_fu_1060_p2 & or_ln42_12_fu_1042_p2);
assign and_ln42_13_fu_1072_p2 = (grp_fu_1961_p_dout0 & and_ln42_12_fu_1066_p2);
assign and_ln42_14_fu_1206_p2 = (or_ln42_15_fu_1200_p2 & or_ln42_14_fu_1182_p2);
assign and_ln42_15_fu_1212_p2 = (tmp_68_reg_1527 & and_ln42_14_fu_1206_p2);
assign and_ln42_1_fu_497_p2 = (or_ln42_1_fu_485_p2 & and_ln42_fu_491_p2);
assign and_ln42_2_fu_579_p2 = (or_ln42_3_fu_573_p2 & or_ln42_2_fu_555_p2);
assign and_ln42_3_fu_585_p2 = (grp_fu_1961_p_dout0 & and_ln42_2_fu_579_p2);
assign and_ln42_4_fu_690_p2 = (or_ln42_5_fu_684_p2 & or_ln42_4_fu_666_p2);
assign and_ln42_5_fu_696_p2 = (grp_fu_1961_p_dout0 & and_ln42_4_fu_690_p2);
assign and_ln42_6_fu_777_p2 = (or_ln42_7_fu_773_p2 & or_ln42_6_fu_767_p2);
assign and_ln42_7_fu_783_p2 = (grp_fu_1961_p_dout0 & and_ln42_6_fu_777_p2);
assign and_ln42_8_fu_890_p2 = (or_ln42_9_fu_884_p2 & or_ln42_8_fu_866_p2);
assign and_ln42_9_fu_896_p2 = (grp_fu_1961_p_dout0 & and_ln42_8_fu_890_p2);
assign and_ln42_fu_491_p2 = (or_ln42_fu_467_p2 & grp_fu_1961_p_dout0);
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
assign ap_block_pp0_stage16_01001 = ~(1'b1 == 1'b1);
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
assign bitcast_ln42_10_fu_908_p1 = p_27_reg_1391;
assign bitcast_ln42_11_fu_925_p1 = min_p_62_reg_1489;
assign bitcast_ln42_12_fu_996_p1 = p_28_reg_1398;
assign bitcast_ln42_13_fu_1013_p1 = min_p_64_reg_1502;
assign bitcast_ln42_14_fu_1136_p1 = p_29_reg_1405;
assign bitcast_ln42_15_fu_1153_p1 = min_p_66_reg_1520;
assign bitcast_ln42_1_fu_438_p1 = min_p_52_reg_1377;
assign bitcast_ln42_2_fu_509_p1 = p_23_reg_1331;
assign bitcast_ln42_3_fu_526_p1 = min_p_54_reg_1418;
assign bitcast_ln42_4_fu_620_p1 = p_24_reg_1338;
assign bitcast_ln42_5_fu_637_p1 = min_p_56_reg_1431;
assign bitcast_ln42_6_fu_738_p1 = p_25_reg_1345;
assign bitcast_ln42_7_fu_708_p1 = min_p_58_fu_702_p3;
assign bitcast_ln42_8_fu_820_p1 = p_26_reg_1384;
assign bitcast_ln42_9_fu_837_p1 = min_p_60_reg_1471;
assign bitcast_ln42_fu_421_p1 = p_reg_1324;
assign grp_fu_1961_p_ce = 1'b1;
assign grp_fu_1961_p_din0 = grp_fu_189_p0;
assign grp_fu_1961_p_din1 = grp_fu_189_p1;
assign grp_fu_1961_p_opcode = 5'd4;
assign icmp_ln42_10_fu_672_p2 = ((tmp_52_fu_640_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_11_fu_678_p2 = ((trunc_ln42_5_fu_650_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_12_fu_755_p2 = ((tmp_54_fu_741_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_13_fu_761_p2 = ((trunc_ln42_6_fu_751_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_14_fu_726_p2 = ((tmp_55_fu_712_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_15_fu_732_p2 = ((trunc_ln42_7_fu_722_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_16_fu_854_p2 = ((tmp_57_fu_823_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_17_fu_860_p2 = ((trunc_ln42_8_fu_833_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_18_fu_872_p2 = ((tmp_58_fu_840_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_19_fu_878_p2 = ((trunc_ln42_9_fu_850_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_1_fu_461_p2 = ((trunc_ln42_fu_434_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_20_fu_942_p2 = ((tmp_60_fu_911_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_21_fu_948_p2 = ((trunc_ln42_10_fu_921_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_22_fu_960_p2 = ((tmp_61_fu_928_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_23_fu_966_p2 = ((trunc_ln42_11_fu_938_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_24_fu_1030_p2 = ((tmp_63_fu_999_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_25_fu_1036_p2 = ((trunc_ln42_12_fu_1009_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_26_fu_1048_p2 = ((tmp_64_fu_1016_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_27_fu_1054_p2 = ((trunc_ln42_13_fu_1026_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_28_fu_1170_p2 = ((tmp_66_fu_1139_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_29_fu_1176_p2 = ((trunc_ln42_14_fu_1149_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_2_fu_473_p2 = ((tmp_46_fu_441_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_30_fu_1188_p2 = ((tmp_67_fu_1156_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_31_fu_1194_p2 = ((trunc_ln42_15_fu_1166_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_3_fu_479_p2 = ((trunc_ln42_1_fu_451_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_4_fu_543_p2 = ((tmp_48_fu_512_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_5_fu_549_p2 = ((trunc_ln42_2_fu_522_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_6_fu_561_p2 = ((tmp_49_fu_529_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_7_fu_567_p2 = ((trunc_ln42_3_fu_539_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_8_fu_654_p2 = ((tmp_51_fu_623_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_9_fu_660_p2 = ((trunc_ln42_4_fu_633_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_fu_455_p2 = ((tmp_45_fu_424_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln9_2_fu_393_p4 = {{add_ln40_3_reg_1314[6:1]}};
assign min_p_54_fu_503_p3 = ((and_ln42_1_reg_1412[0:0] == 1'b1) ? p_reg_1324 : min_p_52_reg_1377);
assign min_p_56_fu_604_p3 = ((and_ln42_3_reg_1425[0:0] == 1'b1) ? p_23_reg_1331 : min_p_54_reg_1418);
assign min_p_58_fu_702_p3 = ((and_ln42_5_reg_1443[0:0] == 1'b1) ? p_24_reg_1338 : min_p_56_reg_1431);
assign min_p_60_fu_804_p3 = ((and_ln42_7_reg_1465[0:0] == 1'b1) ? p_25_reg_1345 : min_p_58_reg_1449);
assign min_p_62_fu_902_p3 = ((and_ln42_9_reg_1483[0:0] == 1'b1) ? p_26_reg_1384 : min_p_60_reg_1471);
assign min_p_64_fu_990_p3 = ((and_ln42_11_reg_1496[0:0] == 1'b1) ? p_27_reg_1391 : min_p_62_reg_1489);
assign min_p_66_fu_1120_p3 = ((and_ln42_13_reg_1509[0:0] == 1'b1) ? p_28_reg_1398 : min_p_64_reg_1502);
assign min_p_68_fu_1217_p3 = ((and_ln42_15_fu_1212_p2[0:0] == 1'b1) ? p_29_reg_1405 : min_p_66_reg_1520);
assign min_s_15_fu_597_p3 = ((and_ln42_1_reg_1412[0:0] == 1'b1) ? zext_ln42_fu_594_p1 : min_s_fu_86);
assign min_s_16_fu_613_p3 = ((and_ln42_3_reg_1425[0:0] == 1'b1) ? zext_ln42_1_fu_610_p1 : min_s_15_fu_597_p3);
assign min_s_17_fu_798_p3 = ((and_ln42_5_reg_1443[0:0] == 1'b1) ? zext_ln42_2_fu_794_p1 : min_s_16_reg_1438);
assign min_s_18_fu_813_p3 = ((and_ln42_7_reg_1465[0:0] == 1'b1) ? zext_ln42_3_fu_810_p1 : min_s_17_fu_798_p3);
assign min_s_19_fu_1087_p3 = ((and_ln42_9_reg_1483[0:0] == 1'b1) ? zext_ln42_4_fu_1083_p1 : min_s_18_reg_1478);
assign min_s_20_fu_1096_p3 = ((and_ln42_11_reg_1496[0:0] == 1'b1) ? zext_ln42_5_fu_1093_p1 : min_s_19_fu_1087_p3);
assign min_s_21_fu_1112_p3 = ((and_ln42_13_reg_1509[0:0] == 1'b1) ? zext_ln42_6_fu_1108_p1 : min_s_20_fu_1096_p3);
assign min_s_22_fu_1230_p3 = ((and_ln42_15_fu_1212_p2[0:0] == 1'b1) ? zext_ln42_7_fu_1226_p1 : min_s_21_reg_1515);
assign min_s_8_out = ((and_ln42_13_reg_1509[0:0] == 1'b1) ? zext_ln42_6_fu_1108_p1 : min_s_20_fu_1096_p3);
assign or_ln42_10_fu_954_p2 = (icmp_ln42_21_fu_948_p2 | icmp_ln42_20_fu_942_p2);
assign or_ln42_11_fu_972_p2 = (icmp_ln42_23_fu_966_p2 | icmp_ln42_22_fu_960_p2);
assign or_ln42_12_fu_1042_p2 = (icmp_ln42_25_fu_1036_p2 | icmp_ln42_24_fu_1030_p2);
assign or_ln42_13_fu_1060_p2 = (icmp_ln42_27_fu_1054_p2 | icmp_ln42_26_fu_1048_p2);
assign or_ln42_14_fu_1182_p2 = (icmp_ln42_29_fu_1176_p2 | icmp_ln42_28_fu_1170_p2);
assign or_ln42_15_fu_1200_p2 = (icmp_ln42_31_fu_1194_p2 | icmp_ln42_30_fu_1188_p2);
assign or_ln42_1_fu_485_p2 = (icmp_ln42_3_fu_479_p2 | icmp_ln42_2_fu_473_p2);
assign or_ln42_2_fu_555_p2 = (icmp_ln42_5_fu_549_p2 | icmp_ln42_4_fu_543_p2);
assign or_ln42_3_fu_573_p2 = (icmp_ln42_7_fu_567_p2 | icmp_ln42_6_fu_561_p2);
assign or_ln42_4_fu_666_p2 = (icmp_ln42_9_fu_660_p2 | icmp_ln42_8_fu_654_p2);
assign or_ln42_5_fu_684_p2 = (icmp_ln42_11_fu_678_p2 | icmp_ln42_10_fu_672_p2);
assign or_ln42_6_fu_767_p2 = (icmp_ln42_13_fu_761_p2 | icmp_ln42_12_fu_755_p2);
assign or_ln42_7_fu_773_p2 = (icmp_ln42_15_reg_1460 | icmp_ln42_14_reg_1455);
assign or_ln42_8_fu_866_p2 = (icmp_ln42_17_fu_860_p2 | icmp_ln42_16_fu_854_p2);
assign or_ln42_9_fu_884_p2 = (icmp_ln42_19_fu_878_p2 | icmp_ln42_18_fu_872_p2);
assign or_ln42_fu_467_p2 = (icmp_ln42_fu_455_p2 | icmp_ln42_1_fu_461_p2);
assign tmp_111_fu_244_p4 = {{add_ln40_fu_238_p2[5:1]}};
assign tmp_112_fu_292_p4 = {{add_ln40_1_fu_286_p2[5:1]}};
assign tmp_113_fu_352_p4 = {{add_ln40_2_fu_347_p2[5:1]}};
assign tmp_182_cast_fu_225_p3 = {{8'd139}, {tmp_s_fu_215_p4}};
assign tmp_184_cast_fu_254_p3 = {{8'd139}, {tmp_111_fu_244_p4}};
assign tmp_185_cast_fu_273_p3 = {{8'd139}, {add_ln8_fu_267_p2}};
assign tmp_187_cast_fu_302_p3 = {{8'd139}, {tmp_112_fu_292_p4}};
assign tmp_188_cast_fu_334_p3 = {{8'd139}, {add_ln8_1_fu_329_p2}};
assign tmp_190_cast_fu_362_p3 = {{8'd139}, {tmp_113_fu_352_p4}};
assign tmp_191_cast_fu_380_p3 = {{8'd139}, {add_ln8_2_fu_375_p2}};
assign tmp_45_fu_424_p4 = {{bitcast_ln42_fu_421_p1[62:52]}};
assign tmp_46_fu_441_p4 = {{bitcast_ln42_1_fu_438_p1[62:52]}};
assign tmp_48_fu_512_p4 = {{bitcast_ln42_2_fu_509_p1[62:52]}};
assign tmp_49_fu_529_p4 = {{bitcast_ln42_3_fu_526_p1[62:52]}};
assign tmp_51_fu_623_p4 = {{bitcast_ln42_4_fu_620_p1[62:52]}};
assign tmp_52_fu_640_p4 = {{bitcast_ln42_5_fu_637_p1[62:52]}};
assign tmp_54_fu_741_p4 = {{bitcast_ln42_6_fu_738_p1[62:52]}};
assign tmp_55_fu_712_p4 = {{bitcast_ln42_7_fu_708_p1[62:52]}};
assign tmp_57_fu_823_p4 = {{bitcast_ln42_8_fu_820_p1[62:52]}};
assign tmp_58_fu_840_p4 = {{bitcast_ln42_9_fu_837_p1[62:52]}};
assign tmp_60_fu_911_p4 = {{bitcast_ln42_10_fu_908_p1[62:52]}};
assign tmp_61_fu_928_p4 = {{bitcast_ln42_11_fu_925_p1[62:52]}};
assign tmp_63_fu_999_p4 = {{bitcast_ln42_12_fu_996_p1[62:52]}};
assign tmp_64_fu_1016_p4 = {{bitcast_ln42_13_fu_1013_p1[62:52]}};
assign tmp_66_fu_1139_p4 = {{bitcast_ln42_14_fu_1136_p1[62:52]}};
assign tmp_67_fu_1156_p4 = {{bitcast_ln42_15_fu_1153_p1[62:52]}};
assign tmp_s_fu_215_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign trunc_ln42_10_fu_921_p1 = bitcast_ln42_10_fu_908_p1[51:0];
assign trunc_ln42_11_fu_938_p1 = bitcast_ln42_11_fu_925_p1[51:0];
assign trunc_ln42_12_fu_1009_p1 = bitcast_ln42_12_fu_996_p1[51:0];
assign trunc_ln42_13_fu_1026_p1 = bitcast_ln42_13_fu_1013_p1[51:0];
assign trunc_ln42_14_fu_1149_p1 = bitcast_ln42_14_fu_1136_p1[51:0];
assign trunc_ln42_15_fu_1166_p1 = bitcast_ln42_15_fu_1153_p1[51:0];
assign trunc_ln42_16_fu_1223_p1 = add_ln40_3_reg_1314_pp0_iter1_reg[5:0];
assign trunc_ln42_1_fu_451_p1 = bitcast_ln42_1_fu_438_p1[51:0];
assign trunc_ln42_2_fu_522_p1 = bitcast_ln42_2_fu_509_p1[51:0];
assign trunc_ln42_3_fu_539_p1 = bitcast_ln42_3_fu_526_p1[51:0];
assign trunc_ln42_4_fu_633_p1 = bitcast_ln42_4_fu_620_p1[51:0];
assign trunc_ln42_5_fu_650_p1 = bitcast_ln42_5_fu_637_p1[51:0];
assign trunc_ln42_6_fu_751_p1 = bitcast_ln42_6_fu_738_p1[51:0];
assign trunc_ln42_7_fu_722_p1 = bitcast_ln42_7_fu_708_p1[51:0];
assign trunc_ln42_8_fu_833_p1 = bitcast_ln42_8_fu_820_p1[51:0];
assign trunc_ln42_9_fu_850_p1 = bitcast_ln42_9_fu_837_p1[51:0];
assign trunc_ln42_fu_434_p1 = bitcast_ln42_fu_421_p1[51:0];
assign zext_ln20_fu_211_p1 = ap_sig_allocacmp_s;
assign zext_ln41_1_fu_262_p1 = tmp_184_cast_fu_254_p3;
assign zext_ln41_2_fu_281_p1 = tmp_185_cast_fu_273_p3;
assign zext_ln41_3_fu_310_p1 = tmp_187_cast_fu_302_p3;
assign zext_ln41_4_fu_342_p1 = tmp_188_cast_fu_334_p3;
assign zext_ln41_5_fu_370_p1 = tmp_190_cast_fu_362_p3;
assign zext_ln41_6_fu_388_p1 = tmp_191_cast_fu_380_p3;
assign zext_ln41_7_fu_402_p1 = lshr_ln9_2_fu_393_p4;
assign zext_ln41_8_fu_412_p1 = add_ln41_fu_406_p2;
assign zext_ln41_fu_233_p1 = tmp_182_cast_fu_225_p3;
assign zext_ln42_1_fu_610_p1 = add_ln40_reg_1289;
assign zext_ln42_2_fu_794_p1 = add_ln42_fu_789_p2;
assign zext_ln42_3_fu_810_p1 = add_ln40_1_reg_1304;
assign zext_ln42_4_fu_1083_p1 = add_ln42_1_fu_1078_p2;
assign zext_ln42_5_fu_1093_p1 = add_ln40_2_reg_1357;
assign zext_ln42_6_fu_1108_p1 = add_ln42_2_fu_1103_p2;
assign zext_ln42_7_fu_1226_p1 = trunc_ln42_16_fu_1223_p1;
assign zext_ln42_fu_594_p1 = s_reg_1268;
endmodule 