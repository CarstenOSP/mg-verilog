module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,zext_ln13,grp_fu_300_p_din0,grp_fu_300_p_din1,grp_fu_300_p_opcode,grp_fu_300_p_dout0,grp_fu_300_p_ce,grp_fu_702_p_din0,grp_fu_702_p_din1,grp_fu_702_p_opcode,grp_fu_702_p_dout0,grp_fu_702_p_ce); 
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
output  [12:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [5:0] init_address1;
output   init_ce1;
input  [63:0] init_q1;
input  [7:0] obs_load;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
input  [7:0] zext_ln13;
output  [63:0] grp_fu_300_p_din0;
output  [63:0] grp_fu_300_p_din1;
output  [1:0] grp_fu_300_p_opcode;
input  [63:0] grp_fu_300_p_dout0;
output   grp_fu_300_p_ce;
output  [63:0] grp_fu_702_p_din0;
output  [63:0] grp_fu_702_p_din1;
output  [1:0] grp_fu_702_p_opcode;
input  [63:0] grp_fu_702_p_dout0;
output   grp_fu_702_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_1488;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_582;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_586;
reg   [63:0] reg_590;
reg   [63:0] reg_594;
reg   [63:0] reg_598;
reg   [63:0] reg_603;
wire   [11:0] zext_ln13_cast_fu_608_p1;
reg   [11:0] zext_ln13_cast_reg_1463;
reg   [6:0] s_1_reg_1478;
reg   [0:0] tmp_reg_1488_pp0_iter1_reg;
wire   [4:0] lshr_ln9_fu_633_p4;
reg   [4:0] lshr_ln9_reg_1492;
reg   [4:0] lshr_ln9_reg_1492_pp0_iter1_reg;
wire   [3:0] tmp_cast_fu_643_p4;
reg   [3:0] tmp_cast_reg_1502;
reg   [3:0] tmp_cast_reg_1502_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_fu_756_p1;
wire   [63:0] bitcast_ln14_1_fu_761_p1;
wire   [63:0] bitcast_ln14_2_fu_766_p1;
wire   [63:0] bitcast_ln14_3_fu_771_p1;
wire   [2:0] tmp_s_fu_776_p4;
reg   [2:0] tmp_s_reg_1566;
reg   [2:0] tmp_s_reg_1566_pp0_iter1_reg;
wire   [0:0] tmp_4_fu_798_p3;
reg   [0:0] tmp_4_reg_1576;
reg   [0:0] tmp_4_reg_1576_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_4_fu_858_p1;
wire   [63:0] bitcast_ln14_5_fu_863_p1;
wire   [63:0] bitcast_ln14_6_fu_868_p1;
wire   [63:0] bitcast_ln14_7_fu_873_p1;
wire   [63:0] bitcast_ln14_8_fu_936_p1;
wire   [63:0] bitcast_ln14_9_fu_941_p1;
wire   [63:0] bitcast_ln14_10_fu_946_p1;
wire   [63:0] bitcast_ln14_11_fu_951_p1;
wire   [1:0] tmp_80_fu_956_p4;
reg   [1:0] tmp_80_reg_1664;
reg   [1:0] tmp_80_reg_1664_pp0_iter1_reg;
wire   [1:0] tmp_81_fu_978_p4;
reg   [1:0] tmp_81_reg_1684;
reg   [1:0] tmp_81_reg_1684_pp0_iter1_reg;
wire   [0:0] tmp_5_fu_987_p3;
reg   [0:0] tmp_5_reg_1694;
reg   [0:0] tmp_5_reg_1694_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_12_fu_1049_p1;
wire   [63:0] bitcast_ln14_13_fu_1054_p1;
wire   [63:0] bitcast_ln14_14_fu_1059_p1;
wire   [63:0] bitcast_ln14_15_fu_1064_p1;
wire   [63:0] bitcast_ln14_16_fu_1139_p1;
wire   [63:0] bitcast_ln14_17_fu_1144_p1;
wire   [63:0] bitcast_ln14_18_fu_1149_p1;
wire   [63:0] bitcast_ln14_19_fu_1154_p1;
wire   [63:0] bitcast_ln14_20_fu_1219_p1;
wire   [63:0] bitcast_ln14_21_fu_1224_p1;
wire   [63:0] bitcast_ln14_22_fu_1229_p1;
wire   [63:0] bitcast_ln14_23_fu_1234_p1;
wire   [63:0] bitcast_ln14_24_fu_1307_p1;
wire   [63:0] bitcast_ln14_25_fu_1312_p1;
wire   [63:0] bitcast_ln14_26_fu_1317_p1;
wire   [63:0] bitcast_ln14_27_fu_1322_p1;
wire   [63:0] bitcast_ln14_28_fu_1327_p1;
wire   [63:0] bitcast_ln14_29_fu_1332_p1;
wire   [63:0] bitcast_ln14_30_fu_1337_p1;
wire   [63:0] bitcast_ln14_31_fu_1342_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln13_1_fu_628_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_661_p1;
wire   [63:0] zext_ln14_1_fu_674_p1;
wire   [63:0] zext_ln14_2_fu_693_p1;
wire   [63:0] zext_ln14_3_fu_705_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_722_p1;
wire   [63:0] zext_ln14_8_fu_734_p1;
wire   [63:0] zext_ln14_6_fu_751_p1;
wire   [63:0] zext_ln14_10_fu_793_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_814_p1;
wire   [63:0] zext_ln14_15_fu_831_p1;
wire   [63:0] zext_ln14_9_fu_853_p1;
wire   [63:0] zext_ln14_17_fu_885_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_902_p1;
wire   [63:0] zext_ln14_22_fu_914_p1;
wire   [63:0] zext_ln14_13_fu_931_p1;
wire   [63:0] zext_ln14_24_fu_973_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_14_fu_1005_p1;
wire   [63:0] zext_ln14_28_fu_1022_p1;
wire   [63:0] zext_ln14_16_fu_1044_p1;
wire   [63:0] zext_ln14_29_fu_1079_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_18_fu_1099_p1;
wire   [63:0] zext_ln14_31_fu_1114_p1;
wire   [63:0] zext_ln14_20_fu_1134_p1;
wire   [63:0] zext_ln14_32_fu_1166_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_21_fu_1179_p1;
wire   [63:0] zext_ln14_34_fu_1194_p1;
wire   [63:0] zext_ln14_23_fu_1214_p1;
wire   [63:0] zext_ln14_35_fu_1246_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_25_fu_1263_p1;
wire   [63:0] zext_ln14_37_fu_1275_p1;
wire   [63:0] zext_ln14_27_fu_1292_p1;
wire   [63:0] zext_ln9_fu_1347_p1;
wire   [63:0] zext_ln14_5_fu_1359_p1;
wire   [63:0] zext_ln14_12_fu_1373_p1;
wire   [63:0] zext_ln14_19_fu_1386_p1;
wire   [63:0] zext_ln14_26_fu_1400_p1;
wire   [63:0] zext_ln14_30_fu_1416_p1;
wire   [63:0] zext_ln14_33_fu_1430_p1;
wire   [63:0] zext_ln14_36_fu_1443_p1;
reg   [6:0] s_fu_146;
wire   [6:0] add_ln13_fu_1297_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_ce1_local;
reg   [5:0] init_address1_local;
reg    init_ce0_local;
reg   [5:0] init_address0_local;
reg    emission_ce1_local;
reg   [11:0] emission_address1_local;
reg    emission_ce0_local;
reg   [11:0] emission_address0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg   [63:0] grp_fu_574_p0;
reg   [63:0] grp_fu_574_p1;
reg   [63:0] grp_fu_578_p0;
reg   [63:0] grp_fu_578_p1;
wire   [11:0] or_ln_fu_653_p3;
wire   [5:0] or_ln1_fu_666_p3;
wire   [11:0] shl_ln_fu_679_p3;
wire   [11:0] add_ln14_fu_687_p2;
wire   [5:0] or_ln13_1_fu_698_p3;
wire   [11:0] shl_ln14_1_fu_710_p3;
wire   [11:0] add_ln14_1_fu_717_p2;
wire   [5:0] or_ln13_2_fu_727_p3;
wire   [11:0] shl_ln14_2_fu_739_p3;
wire   [11:0] add_ln14_2_fu_746_p2;
wire   [5:0] or_ln13_3_fu_785_p3;
wire   [11:0] or_ln14_3_fu_805_p4;
wire   [5:0] or_ln13_4_fu_819_p5;
wire   [11:0] shl_ln14_3_fu_836_p5;
wire   [11:0] add_ln14_3_fu_848_p2;
wire   [5:0] or_ln13_5_fu_878_p3;
wire   [11:0] shl_ln14_4_fu_890_p3;
wire   [11:0] add_ln14_4_fu_897_p2;
wire   [5:0] or_ln13_6_fu_907_p3;
wire   [11:0] shl_ln14_5_fu_919_p3;
wire   [11:0] add_ln14_5_fu_926_p2;
wire   [5:0] or_ln13_7_fu_965_p3;
wire   [11:0] or_ln14_6_fu_994_p5;
wire   [5:0] or_ln13_8_fu_1010_p5;
wire   [11:0] shl_ln14_6_fu_1027_p5;
wire   [11:0] add_ln14_6_fu_1039_p2;
wire   [5:0] or_ln13_9_fu_1069_p5;
wire   [11:0] shl_ln14_7_fu_1084_p5;
wire   [11:0] add_ln14_7_fu_1094_p2;
wire   [5:0] or_ln13_s_fu_1104_p5;
wire   [11:0] shl_ln14_8_fu_1119_p5;
wire   [11:0] add_ln14_8_fu_1129_p2;
wire   [5:0] or_ln13_10_fu_1159_p3;
wire   [11:0] or_ln14_9_fu_1171_p4;
wire   [5:0] or_ln13_11_fu_1184_p5;
wire   [11:0] shl_ln14_9_fu_1199_p5;
wire   [11:0] add_ln14_9_fu_1209_p2;
wire   [5:0] or_ln13_12_fu_1239_p3;
wire   [11:0] shl_ln14_s_fu_1251_p3;
wire   [11:0] add_ln14_10_fu_1258_p2;
wire   [5:0] or_ln13_13_fu_1268_p3;
wire   [11:0] shl_ln14_10_fu_1280_p3;
wire   [11:0] add_ln14_11_fu_1287_p2;
wire   [4:0] or_ln14_1_fu_1352_p3;
wire   [4:0] or_ln14_2_fu_1365_p4;
wire   [4:0] or_ln14_4_fu_1379_p3;
wire   [4:0] or_ln14_5_fu_1392_p4;
wire   [4:0] or_ln14_7_fu_1406_p5;
wire   [4:0] or_ln14_8_fu_1422_p4;
wire   [4:0] or_ln14_s_fu_1436_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_146 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage1) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_146 <= 7'd0;
    end else if (((tmp_reg_1488 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_146 <= add_ln13_fu_1297_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln9_reg_1492 <= {{ap_sig_allocacmp_s_1[5:1]}};
        lshr_ln9_reg_1492_pp0_iter1_reg <= lshr_ln9_reg_1492;
        s_1_reg_1478 <= ap_sig_allocacmp_s_1;
        tmp_cast_reg_1502 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_cast_reg_1502_pp0_iter1_reg <= tmp_cast_reg_1502;
        tmp_reg_1488 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_reg_1488_pp0_iter1_reg <= tmp_reg_1488;
        zext_ln13_cast_reg_1463[7 : 0] <= zext_ln13_cast_fu_608_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_582 <= init_q1;
        reg_586 <= emission_q1;
        reg_590 <= init_q0;
        reg_594 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_598 <= grp_fu_300_p_dout0;
        reg_603 <= grp_fu_702_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_4_reg_1576 <= s_1_reg_1478[32'd1];
        tmp_4_reg_1576_pp0_iter1_reg <= tmp_4_reg_1576;
        tmp_s_reg_1566 <= {{s_1_reg_1478[5:3]}};
        tmp_s_reg_1566_pp0_iter1_reg <= tmp_s_reg_1566;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_5_reg_1694 <= s_1_reg_1478[32'd2];
        tmp_5_reg_1694_pp0_iter1_reg <= tmp_5_reg_1694;
        tmp_80_reg_1664 <= {{s_1_reg_1478[5:4]}};
        tmp_80_reg_1664_pp0_iter1_reg <= tmp_80_reg_1664;
        tmp_81_reg_1684 <= {{s_1_reg_1478[2:1]}};
        tmp_81_reg_1684_pp0_iter1_reg <= tmp_81_reg_1684;
    end
end
always @ (*) begin
    if (((tmp_reg_1488 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1488_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_146;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address0_local = zext_ln14_27_fu_1292_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address0_local = zext_ln14_23_fu_1214_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address0_local = zext_ln14_20_fu_1134_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address0_local = zext_ln14_16_fu_1044_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_931_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_853_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_751_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_693_p1;
        end else begin
            emission_address0_local = 'bx;
        end
    end else begin
        emission_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address1_local = zext_ln14_25_fu_1263_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address1_local = zext_ln14_21_fu_1179_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address1_local = zext_ln14_18_fu_1099_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address1_local = zext_ln14_14_fu_1005_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_902_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_814_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_722_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_661_p1;
        end else begin
            emission_address1_local = 'bx;
        end
    end else begin
        emission_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p0 = bitcast_ln14_28_fu_1327_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p0 = bitcast_ln14_24_fu_1307_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_574_p0 = bitcast_ln14_20_fu_1219_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_574_p0 = bitcast_ln14_16_fu_1139_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_574_p0 = bitcast_ln14_12_fu_1049_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_574_p0 = bitcast_ln14_8_fu_936_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_574_p0 = bitcast_ln14_4_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_574_p0 = bitcast_ln14_fu_756_p1;
    end else begin
        grp_fu_574_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p1 = bitcast_ln14_29_fu_1332_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p1 = bitcast_ln14_25_fu_1312_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_574_p1 = bitcast_ln14_21_fu_1224_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_574_p1 = bitcast_ln14_17_fu_1144_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_574_p1 = bitcast_ln14_13_fu_1054_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_574_p1 = bitcast_ln14_9_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_574_p1 = bitcast_ln14_5_fu_863_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_574_p1 = bitcast_ln14_1_fu_761_p1;
    end else begin
        grp_fu_574_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_578_p0 = bitcast_ln14_30_fu_1337_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_578_p0 = bitcast_ln14_26_fu_1317_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_578_p0 = bitcast_ln14_22_fu_1229_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_578_p0 = bitcast_ln14_18_fu_1149_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_578_p0 = bitcast_ln14_14_fu_1059_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_578_p0 = bitcast_ln14_10_fu_946_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_578_p0 = bitcast_ln14_6_fu_868_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_578_p0 = bitcast_ln14_2_fu_766_p1;
    end else begin
        grp_fu_578_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_578_p1 = bitcast_ln14_31_fu_1342_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_578_p1 = bitcast_ln14_27_fu_1322_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_578_p1 = bitcast_ln14_23_fu_1234_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_578_p1 = bitcast_ln14_19_fu_1154_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_578_p1 = bitcast_ln14_15_fu_1064_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_578_p1 = bitcast_ln14_11_fu_951_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_578_p1 = bitcast_ln14_7_fu_873_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_578_p1 = bitcast_ln14_3_fu_771_p1;
    end else begin
        grp_fu_578_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address0_local = zext_ln14_37_fu_1275_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address0_local = zext_ln14_34_fu_1194_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address0_local = zext_ln14_31_fu_1114_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address0_local = zext_ln14_28_fu_1022_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_22_fu_914_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_15_fu_831_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_8_fu_734_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_674_p1;
        end else begin
            init_address0_local = 'bx;
        end
    end else begin
        init_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address1_local = zext_ln14_35_fu_1246_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address1_local = zext_ln14_32_fu_1166_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address1_local = zext_ln14_29_fu_1079_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address1_local = zext_ln14_24_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_17_fu_885_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_10_fu_793_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_705_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_1_fu_628_p1;
        end else begin
            init_address1_local = 'bx;
        end
    end else begin
        init_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_address0_local = zext_ln14_36_fu_1443_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_33_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_1_address0_local = zext_ln14_30_fu_1416_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_1_address0_local = zext_ln14_26_fu_1400_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_1_address0_local = zext_ln14_19_fu_1386_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_1_address0_local = zext_ln14_12_fu_1373_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_1_address0_local = zext_ln14_5_fu_1359_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln9_fu_1347_p1;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address0_local = zext_ln14_36_fu_1443_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_33_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address0_local = zext_ln14_30_fu_1416_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_26_fu_1400_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address0_local = zext_ln14_19_fu_1386_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_12_fu_1373_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address0_local = zext_ln14_5_fu_1359_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln9_fu_1347_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage1) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign add_ln13_fu_1297_p2 = (s_1_reg_1478 + 7'd16);
assign add_ln14_10_fu_1258_p2 = (shl_ln14_s_fu_1251_p3 + zext_ln13_cast_reg_1463);
assign add_ln14_11_fu_1287_p2 = (shl_ln14_10_fu_1280_p3 + zext_ln13_cast_reg_1463);
assign add_ln14_1_fu_717_p2 = (shl_ln14_1_fu_710_p3 + zext_ln13_cast_reg_1463);
assign add_ln14_2_fu_746_p2 = (shl_ln14_2_fu_739_p3 + zext_ln13_cast_reg_1463);
assign add_ln14_3_fu_848_p2 = (shl_ln14_3_fu_836_p5 + zext_ln13_cast_reg_1463);
assign add_ln14_4_fu_897_p2 = (shl_ln14_4_fu_890_p3 + zext_ln13_cast_reg_1463);
assign add_ln14_5_fu_926_p2 = (shl_ln14_5_fu_919_p3 + zext_ln13_cast_reg_1463);
assign add_ln14_6_fu_1039_p2 = (shl_ln14_6_fu_1027_p5 + zext_ln13_cast_reg_1463);
assign add_ln14_7_fu_1094_p2 = (shl_ln14_7_fu_1084_p5 + zext_ln13_cast_reg_1463);
assign add_ln14_8_fu_1129_p2 = (shl_ln14_8_fu_1119_p5 + zext_ln13_cast_reg_1463);
assign add_ln14_9_fu_1209_p2 = (shl_ln14_9_fu_1199_p5 + zext_ln13_cast_reg_1463);
assign add_ln14_fu_687_p2 = (shl_ln_fu_679_p3 + zext_ln13_cast_fu_608_p1);
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
assign bitcast_ln14_10_fu_946_p1 = reg_590;
assign bitcast_ln14_11_fu_951_p1 = reg_594;
assign bitcast_ln14_12_fu_1049_p1 = reg_582;
assign bitcast_ln14_13_fu_1054_p1 = reg_586;
assign bitcast_ln14_14_fu_1059_p1 = reg_590;
assign bitcast_ln14_15_fu_1064_p1 = reg_594;
assign bitcast_ln14_16_fu_1139_p1 = reg_582;
assign bitcast_ln14_17_fu_1144_p1 = reg_586;
assign bitcast_ln14_18_fu_1149_p1 = reg_590;
assign bitcast_ln14_19_fu_1154_p1 = reg_594;
assign bitcast_ln14_1_fu_761_p1 = reg_586;
assign bitcast_ln14_20_fu_1219_p1 = reg_582;
assign bitcast_ln14_21_fu_1224_p1 = reg_586;
assign bitcast_ln14_22_fu_1229_p1 = reg_590;
assign bitcast_ln14_23_fu_1234_p1 = reg_594;
assign bitcast_ln14_24_fu_1307_p1 = reg_582;
assign bitcast_ln14_25_fu_1312_p1 = reg_586;
assign bitcast_ln14_26_fu_1317_p1 = reg_590;
assign bitcast_ln14_27_fu_1322_p1 = reg_594;
assign bitcast_ln14_28_fu_1327_p1 = reg_582;
assign bitcast_ln14_29_fu_1332_p1 = reg_586;
assign bitcast_ln14_2_fu_766_p1 = reg_590;
assign bitcast_ln14_30_fu_1337_p1 = reg_590;
assign bitcast_ln14_31_fu_1342_p1 = reg_594;
assign bitcast_ln14_3_fu_771_p1 = reg_594;
assign bitcast_ln14_4_fu_858_p1 = reg_582;
assign bitcast_ln14_5_fu_863_p1 = reg_586;
assign bitcast_ln14_6_fu_868_p1 = reg_590;
assign bitcast_ln14_7_fu_873_p1 = reg_594;
assign bitcast_ln14_8_fu_936_p1 = reg_582;
assign bitcast_ln14_9_fu_941_p1 = reg_586;
assign bitcast_ln14_fu_756_p1 = reg_582;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_300_p_ce = 1'b1;
assign grp_fu_300_p_din0 = grp_fu_574_p0;
assign grp_fu_300_p_din1 = grp_fu_574_p1;
assign grp_fu_300_p_opcode = 2'd0;
assign grp_fu_702_p_ce = 1'b1;
assign grp_fu_702_p_din0 = grp_fu_578_p0;
assign grp_fu_702_p_din1 = grp_fu_578_p1;
assign grp_fu_702_p_opcode = 2'd0;
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_603;
assign llike_1_we0 = llike_1_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_598;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_633_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln13_10_fu_1159_p3 = {{tmp_80_reg_1664}, {4'd12}};
assign or_ln13_11_fu_1184_p5 = {{{{tmp_80_reg_1664}, {2'd3}}, {tmp_4_reg_1576}}, {1'd1}};
assign or_ln13_12_fu_1239_p3 = {{tmp_80_reg_1664}, {4'd14}};
assign or_ln13_13_fu_1268_p3 = {{tmp_80_reg_1664}, {4'd15}};
assign or_ln13_1_fu_698_p3 = {{tmp_cast_reg_1502}, {2'd2}};
assign or_ln13_2_fu_727_p3 = {{tmp_cast_reg_1502}, {2'd3}};
assign or_ln13_3_fu_785_p3 = {{tmp_s_fu_776_p4}, {3'd4}};
assign or_ln13_4_fu_819_p5 = {{{{tmp_s_fu_776_p4}, {1'd1}}, {tmp_4_fu_798_p3}}, {1'd1}};
assign or_ln13_5_fu_878_p3 = {{tmp_s_reg_1566}, {3'd6}};
assign or_ln13_6_fu_907_p3 = {{tmp_s_reg_1566}, {3'd7}};
assign or_ln13_7_fu_965_p3 = {{tmp_80_fu_956_p4}, {4'd8}};
assign or_ln13_8_fu_1010_p5 = {{{{tmp_80_fu_956_p4}, {1'd1}}, {tmp_81_fu_978_p4}}, {1'd1}};
assign or_ln13_9_fu_1069_p5 = {{{{tmp_80_reg_1664}, {1'd1}}, {tmp_5_reg_1694}}, {2'd2}};
assign or_ln13_s_fu_1104_p5 = {{{{tmp_80_reg_1664}, {1'd1}}, {tmp_5_reg_1694}}, {2'd3}};
assign or_ln14_1_fu_1352_p3 = {{tmp_cast_reg_1502_pp0_iter1_reg}, {1'd1}};
assign or_ln14_2_fu_1365_p4 = {{{tmp_s_reg_1566_pp0_iter1_reg}, {1'd1}}, {tmp_4_reg_1576_pp0_iter1_reg}};
assign or_ln14_3_fu_805_p4 = {{{tmp_s_fu_776_p4}, {1'd1}}, {obs_load}};
assign or_ln14_4_fu_1379_p3 = {{tmp_s_reg_1566_pp0_iter1_reg}, {2'd3}};
assign or_ln14_5_fu_1392_p4 = {{{tmp_80_reg_1664_pp0_iter1_reg}, {1'd1}}, {tmp_81_reg_1684_pp0_iter1_reg}};
assign or_ln14_6_fu_994_p5 = {{{{tmp_80_fu_956_p4}, {1'd1}}, {tmp_5_fu_987_p3}}, {obs_load}};
assign or_ln14_7_fu_1406_p5 = {{{{tmp_80_reg_1664_pp0_iter1_reg}, {1'd1}}, {tmp_5_reg_1694_pp0_iter1_reg}}, {1'd1}};
assign or_ln14_8_fu_1422_p4 = {{{tmp_80_reg_1664_pp0_iter1_reg}, {2'd3}}, {tmp_4_reg_1576_pp0_iter1_reg}};
assign or_ln14_9_fu_1171_p4 = {{{tmp_80_reg_1664}, {2'd3}}, {obs_load}};
assign or_ln14_s_fu_1436_p3 = {{tmp_80_reg_1664_pp0_iter1_reg}, {3'd7}};
assign or_ln1_fu_666_p3 = {{lshr_ln9_fu_633_p4}, {1'd1}};
assign or_ln_fu_653_p3 = {{tmp_cast_fu_643_p4}, {obs_load}};
assign shl_ln14_10_fu_1280_p3 = {{tmp_80_reg_1664}, {10'd960}};
assign shl_ln14_1_fu_710_p3 = {{tmp_cast_reg_1502}, {8'd128}};
assign shl_ln14_2_fu_739_p3 = {{tmp_cast_reg_1502}, {8'd192}};
assign shl_ln14_3_fu_836_p5 = {{{{tmp_s_fu_776_p4}, {1'd1}}, {tmp_4_fu_798_p3}}, {7'd64}};
assign shl_ln14_4_fu_890_p3 = {{tmp_s_reg_1566}, {9'd384}};
assign shl_ln14_5_fu_919_p3 = {{tmp_s_reg_1566}, {9'd448}};
assign shl_ln14_6_fu_1027_p5 = {{{{tmp_80_fu_956_p4}, {1'd1}}, {tmp_81_fu_978_p4}}, {7'd64}};
assign shl_ln14_7_fu_1084_p5 = {{{{tmp_80_reg_1664}, {1'd1}}, {tmp_5_reg_1694}}, {8'd128}};
assign shl_ln14_8_fu_1119_p5 = {{{{tmp_80_reg_1664}, {1'd1}}, {tmp_5_reg_1694}}, {8'd192}};
assign shl_ln14_9_fu_1199_p5 = {{{{tmp_80_reg_1664}, {2'd3}}, {tmp_4_reg_1576}}, {7'd64}};
assign shl_ln14_s_fu_1251_p3 = {{tmp_80_reg_1664}, {10'd896}};
assign shl_ln_fu_679_p3 = {{lshr_ln9_fu_633_p4}, {7'd64}};
assign tmp_4_fu_798_p3 = s_1_reg_1478[32'd1];
assign tmp_5_fu_987_p3 = s_1_reg_1478[32'd2];
assign tmp_80_fu_956_p4 = {{s_1_reg_1478[5:4]}};
assign tmp_81_fu_978_p4 = {{s_1_reg_1478[2:1]}};
assign tmp_cast_fu_643_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_s_fu_776_p4 = {{s_1_reg_1478[5:3]}};
assign zext_ln13_1_fu_628_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_608_p1 = zext_ln13;
assign zext_ln14_10_fu_793_p1 = or_ln13_3_fu_785_p3;
assign zext_ln14_11_fu_902_p1 = add_ln14_4_fu_897_p2;
assign zext_ln14_12_fu_1373_p1 = or_ln14_2_fu_1365_p4;
assign zext_ln14_13_fu_931_p1 = add_ln14_5_fu_926_p2;
assign zext_ln14_14_fu_1005_p1 = or_ln14_6_fu_994_p5;
assign zext_ln14_15_fu_831_p1 = or_ln13_4_fu_819_p5;
assign zext_ln14_16_fu_1044_p1 = add_ln14_6_fu_1039_p2;
assign zext_ln14_17_fu_885_p1 = or_ln13_5_fu_878_p3;
assign zext_ln14_18_fu_1099_p1 = add_ln14_7_fu_1094_p2;
assign zext_ln14_19_fu_1386_p1 = or_ln14_4_fu_1379_p3;
assign zext_ln14_1_fu_674_p1 = or_ln1_fu_666_p3;
assign zext_ln14_20_fu_1134_p1 = add_ln14_8_fu_1129_p2;
assign zext_ln14_21_fu_1179_p1 = or_ln14_9_fu_1171_p4;
assign zext_ln14_22_fu_914_p1 = or_ln13_6_fu_907_p3;
assign zext_ln14_23_fu_1214_p1 = add_ln14_9_fu_1209_p2;
assign zext_ln14_24_fu_973_p1 = or_ln13_7_fu_965_p3;
assign zext_ln14_25_fu_1263_p1 = add_ln14_10_fu_1258_p2;
assign zext_ln14_26_fu_1400_p1 = or_ln14_5_fu_1392_p4;
assign zext_ln14_27_fu_1292_p1 = add_ln14_11_fu_1287_p2;
assign zext_ln14_28_fu_1022_p1 = or_ln13_8_fu_1010_p5;
assign zext_ln14_29_fu_1079_p1 = or_ln13_9_fu_1069_p5;
assign zext_ln14_2_fu_693_p1 = add_ln14_fu_687_p2;
assign zext_ln14_30_fu_1416_p1 = or_ln14_7_fu_1406_p5;
assign zext_ln14_31_fu_1114_p1 = or_ln13_s_fu_1104_p5;
assign zext_ln14_32_fu_1166_p1 = or_ln13_10_fu_1159_p3;
assign zext_ln14_33_fu_1430_p1 = or_ln14_8_fu_1422_p4;
assign zext_ln14_34_fu_1194_p1 = or_ln13_11_fu_1184_p5;
assign zext_ln14_35_fu_1246_p1 = or_ln13_12_fu_1239_p3;
assign zext_ln14_36_fu_1443_p1 = or_ln14_s_fu_1436_p3;
assign zext_ln14_37_fu_1275_p1 = or_ln13_13_fu_1268_p3;
assign zext_ln14_3_fu_705_p1 = or_ln13_1_fu_698_p3;
assign zext_ln14_4_fu_722_p1 = add_ln14_1_fu_717_p2;
assign zext_ln14_5_fu_1359_p1 = or_ln14_1_fu_1352_p3;
assign zext_ln14_6_fu_751_p1 = add_ln14_2_fu_746_p2;
assign zext_ln14_7_fu_814_p1 = or_ln14_3_fu_805_p4;
assign zext_ln14_8_fu_734_p1 = or_ln13_2_fu_727_p3;
assign zext_ln14_9_fu_853_p1 = add_ln14_3_fu_848_p2;
assign zext_ln14_fu_661_p1 = or_ln_fu_653_p3;
assign zext_ln9_fu_1347_p1 = lshr_ln9_reg_1492_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln13_cast_reg_1463[11:8] <= 4'b0000;
end
endmodule 