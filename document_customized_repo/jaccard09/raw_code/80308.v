module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_address1,llike_ce1,llike_we1,llike_d1,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,zext_ln13,grp_fu_227_p_din0,grp_fu_227_p_din1,grp_fu_227_p_opcode,grp_fu_227_p_dout0,grp_fu_227_p_ce,grp_fu_492_p_din0,grp_fu_492_p_din1,grp_fu_492_p_opcode,grp_fu_492_p_dout0,grp_fu_492_p_ce); 
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
output  [13:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [13:0] llike_address1;
output   llike_ce1;
output   llike_we1;
output  [63:0] llike_d1;
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
output  [63:0] grp_fu_227_p_din0;
output  [63:0] grp_fu_227_p_din1;
output  [1:0] grp_fu_227_p_opcode;
input  [63:0] grp_fu_227_p_dout0;
output   grp_fu_227_p_ce;
output  [63:0] grp_fu_492_p_din0;
output  [63:0] grp_fu_492_p_din1;
output  [1:0] grp_fu_492_p_opcode;
input  [63:0] grp_fu_492_p_dout0;
output   grp_fu_492_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_1369;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_565;
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
reg   [63:0] reg_569;
reg   [63:0] reg_573;
reg   [63:0] reg_577;
reg   [63:0] reg_581;
reg   [63:0] reg_586;
wire   [11:0] zext_ln13_cast_fu_591_p1;
reg   [11:0] zext_ln13_cast_reg_1344;
reg   [6:0] s_1_reg_1359;
reg   [0:0] tmp_reg_1369_pp0_iter1_reg;
wire   [63:0] zext_ln13_1_fu_611_p1;
reg   [63:0] zext_ln13_1_reg_1373;
reg   [63:0] zext_ln13_1_reg_1373_pp0_iter1_reg;
wire   [3:0] tmp_cast_fu_616_p4;
reg   [3:0] tmp_cast_reg_1383;
wire   [63:0] zext_ln14_1_fu_657_p1;
reg   [63:0] zext_ln14_1_reg_1396;
reg   [63:0] zext_ln14_1_reg_1396_pp0_iter1_reg;
wire   [63:0] zext_ln14_3_fu_688_p1;
reg   [63:0] zext_ln14_3_reg_1411;
reg   [63:0] zext_ln14_3_reg_1411_pp0_iter1_reg;
wire   [63:0] zext_ln14_5_fu_717_p1;
reg   [63:0] zext_ln14_5_reg_1426;
reg   [63:0] zext_ln14_5_reg_1426_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_fu_739_p1;
wire   [63:0] bitcast_ln14_1_fu_744_p1;
wire   [63:0] bitcast_ln14_2_fu_749_p1;
wire   [63:0] bitcast_ln14_3_fu_754_p1;
wire   [2:0] tmp_66_fu_759_p4;
reg   [2:0] tmp_66_reg_1461;
wire   [63:0] zext_ln14_8_fu_776_p1;
reg   [63:0] zext_ln14_8_reg_1469;
reg   [63:0] zext_ln14_8_reg_1469_pp0_iter1_reg;
wire   [0:0] tmp_63_fu_795_p3;
reg   [0:0] tmp_63_reg_1484;
wire   [63:0] zext_ln14_10_fu_814_p1;
reg   [63:0] zext_ln14_10_reg_1490;
reg   [63:0] zext_ln14_10_reg_1490_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_4_fu_841_p1;
wire   [63:0] bitcast_ln14_5_fu_846_p1;
wire   [63:0] bitcast_ln14_6_fu_851_p1;
wire   [63:0] bitcast_ln14_7_fu_856_p1;
wire   [63:0] zext_ln14_12_fu_868_p1;
reg   [63:0] zext_ln14_12_reg_1525;
reg   [63:0] zext_ln14_12_reg_1525_pp0_iter1_reg;
wire   [63:0] zext_ln14_15_fu_897_p1;
reg   [63:0] zext_ln14_15_reg_1540;
reg   [63:0] zext_ln14_15_reg_1540_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_8_fu_919_p1;
wire   [63:0] bitcast_ln14_9_fu_924_p1;
wire   [63:0] bitcast_ln14_10_fu_929_p1;
wire   [63:0] bitcast_ln14_11_fu_934_p1;
wire   [1:0] tmp_67_fu_939_p4;
reg   [1:0] tmp_67_reg_1575;
wire   [63:0] zext_ln14_17_fu_956_p1;
reg   [63:0] zext_ln14_17_reg_1591;
reg   [63:0] zext_ln14_17_reg_1591_pp0_iter1_reg;
wire   [0:0] tmp_64_fu_961_p3;
reg   [0:0] tmp_64_reg_1601;
wire   [63:0] zext_ln14_19_fu_1005_p1;
reg   [63:0] zext_ln14_19_reg_1614;
reg   [63:0] zext_ln14_19_reg_1614_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_12_fu_1032_p1;
wire   [63:0] bitcast_ln14_13_fu_1037_p1;
wire   [63:0] bitcast_ln14_14_fu_1042_p1;
wire   [63:0] bitcast_ln14_15_fu_1047_p1;
wire   [63:0] zext_ln14_22_fu_1062_p1;
reg   [63:0] zext_ln14_22_reg_1649;
reg   [63:0] zext_ln14_22_reg_1649_pp0_iter1_reg;
wire   [63:0] zext_ln14_24_fu_1097_p1;
reg   [63:0] zext_ln14_24_reg_1664;
reg   [63:0] zext_ln14_24_reg_1664_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_16_fu_1122_p1;
wire   [63:0] bitcast_ln14_17_fu_1127_p1;
wire   [63:0] bitcast_ln14_18_fu_1132_p1;
wire   [63:0] bitcast_ln14_19_fu_1137_p1;
wire   [63:0] zext_ln14_26_fu_1149_p1;
reg   [63:0] zext_ln14_26_reg_1699;
reg   [63:0] zext_ln14_26_reg_1699_pp0_iter1_reg;
wire   [63:0] zext_ln14_28_fu_1177_p1;
reg   [63:0] zext_ln14_28_reg_1714;
reg   [63:0] zext_ln14_28_reg_1714_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_20_fu_1202_p1;
wire   [63:0] bitcast_ln14_21_fu_1207_p1;
wire   [63:0] bitcast_ln14_22_fu_1212_p1;
wire   [63:0] bitcast_ln14_23_fu_1217_p1;
wire   [63:0] zext_ln14_29_fu_1229_p1;
reg   [63:0] zext_ln14_29_reg_1749;
reg   [63:0] zext_ln14_29_reg_1749_pp0_iter1_reg;
wire   [63:0] zext_ln14_30_fu_1258_p1;
reg   [63:0] zext_ln14_30_reg_1764;
reg   [63:0] zext_ln14_30_reg_1764_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_24_fu_1290_p1;
wire   [63:0] bitcast_ln14_25_fu_1295_p1;
wire   [63:0] bitcast_ln14_26_fu_1300_p1;
wire   [63:0] bitcast_ln14_27_fu_1305_p1;
wire   [63:0] bitcast_ln14_28_fu_1310_p1;
wire   [63:0] bitcast_ln14_29_fu_1315_p1;
wire   [63:0] bitcast_ln14_30_fu_1320_p1;
wire   [63:0] bitcast_ln14_31_fu_1325_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_634_p1;
wire   [63:0] zext_ln14_2_fu_676_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_705_p1;
wire   [63:0] zext_ln14_6_fu_734_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_790_p1;
wire   [63:0] zext_ln14_9_fu_836_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_885_p1;
wire   [63:0] zext_ln14_13_fu_914_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_14_fu_979_p1;
wire   [63:0] zext_ln14_16_fu_1027_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_18_fu_1082_p1;
wire   [63:0] zext_ln14_20_fu_1117_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_21_fu_1162_p1;
wire   [63:0] zext_ln14_23_fu_1197_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_25_fu_1246_p1;
wire   [63:0] zext_ln14_27_fu_1275_p1;
reg   [6:0] s_fu_130;
wire   [6:0] add_ln13_fu_1280_p2;
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
reg    llike_we1_local;
reg    llike_ce1_local;
reg   [13:0] llike_address1_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
reg   [63:0] grp_fu_557_p0;
reg   [63:0] grp_fu_557_p1;
reg   [63:0] grp_fu_561_p0;
reg   [63:0] grp_fu_561_p1;
wire   [11:0] or_ln_fu_626_p3;
wire   [4:0] tmp_s_fu_639_p4;
wire   [5:0] or_ln1_fu_649_p3;
wire   [11:0] shl_ln_fu_662_p3;
wire   [11:0] add_ln14_fu_670_p2;
wire   [5:0] or_ln13_1_fu_681_p3;
wire   [11:0] shl_ln14_1_fu_693_p3;
wire   [11:0] add_ln14_1_fu_700_p2;
wire   [5:0] or_ln13_2_fu_710_p3;
wire   [11:0] shl_ln14_2_fu_722_p3;
wire   [11:0] add_ln14_2_fu_729_p2;
wire   [5:0] or_ln13_3_fu_768_p3;
wire   [11:0] or_ln14_1_fu_781_p4;
wire   [5:0] or_ln13_4_fu_802_p5;
wire   [11:0] shl_ln14_3_fu_819_p5;
wire   [11:0] add_ln14_3_fu_831_p2;
wire   [5:0] or_ln13_5_fu_861_p3;
wire   [11:0] shl_ln14_4_fu_873_p3;
wire   [11:0] add_ln14_4_fu_880_p2;
wire   [5:0] or_ln13_6_fu_890_p3;
wire   [11:0] shl_ln14_5_fu_902_p3;
wire   [11:0] add_ln14_5_fu_909_p2;
wire   [5:0] or_ln13_7_fu_948_p3;
wire   [11:0] or_ln14_2_fu_968_p5;
wire   [1:0] tmp_68_fu_984_p4;
wire   [5:0] or_ln13_8_fu_993_p5;
wire   [11:0] shl_ln14_6_fu_1010_p5;
wire   [11:0] add_ln14_6_fu_1022_p2;
wire   [5:0] or_ln13_9_fu_1052_p5;
wire   [11:0] shl_ln14_7_fu_1067_p5;
wire   [11:0] add_ln14_7_fu_1077_p2;
wire   [5:0] or_ln13_s_fu_1087_p5;
wire   [11:0] shl_ln14_8_fu_1102_p5;
wire   [11:0] add_ln14_8_fu_1112_p2;
wire   [5:0] or_ln13_10_fu_1142_p3;
wire   [11:0] or_ln14_3_fu_1154_p4;
wire   [5:0] or_ln13_11_fu_1167_p5;
wire   [11:0] shl_ln14_9_fu_1182_p5;
wire   [11:0] add_ln14_9_fu_1192_p2;
wire   [5:0] or_ln13_12_fu_1222_p3;
wire   [11:0] shl_ln14_s_fu_1234_p3;
wire   [11:0] add_ln14_10_fu_1241_p2;
wire   [5:0] or_ln13_13_fu_1251_p3;
wire   [11:0] shl_ln14_10_fu_1263_p3;
wire   [11:0] add_ln14_11_fu_1270_p2;
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
#0 s_fu_130 = 7'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_130 <= 7'd0;
    end else if (((tmp_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_130 <= add_ln13_fu_1280_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_565 <= init_q1;
        reg_569 <= emission_q1;
        reg_573 <= init_q0;
        reg_577 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_581 <= grp_fu_227_p_dout0;
        reg_586 <= grp_fu_492_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_1_reg_1359 <= ap_sig_allocacmp_s_1;
        tmp_cast_reg_1383 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_1369 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_reg_1369_pp0_iter1_reg <= tmp_reg_1369;
        zext_ln13_1_reg_1373[6 : 0] <= zext_ln13_1_fu_611_p1[6 : 0];
        zext_ln13_1_reg_1373_pp0_iter1_reg[6 : 0] <= zext_ln13_1_reg_1373[6 : 0];
        zext_ln13_cast_reg_1344[7 : 0] <= zext_ln13_cast_fu_591_p1[7 : 0];
        zext_ln14_1_reg_1396[5 : 1] <= zext_ln14_1_fu_657_p1[5 : 1];
        zext_ln14_1_reg_1396_pp0_iter1_reg[5 : 1] <= zext_ln14_1_reg_1396[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_63_reg_1484 <= s_1_reg_1359[32'd1];
        tmp_66_reg_1461 <= {{s_1_reg_1359[5:3]}};
        zext_ln14_10_reg_1490[1] <= zext_ln14_10_fu_814_p1[1];
zext_ln14_10_reg_1490[5 : 3] <= zext_ln14_10_fu_814_p1[5 : 3];
        zext_ln14_10_reg_1490_pp0_iter1_reg[1] <= zext_ln14_10_reg_1490[1];
zext_ln14_10_reg_1490_pp0_iter1_reg[5 : 3] <= zext_ln14_10_reg_1490[5 : 3];
        zext_ln14_8_reg_1469[5 : 3] <= zext_ln14_8_fu_776_p1[5 : 3];
        zext_ln14_8_reg_1469_pp0_iter1_reg[5 : 3] <= zext_ln14_8_reg_1469[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_64_reg_1601 <= s_1_reg_1359[32'd2];
        tmp_67_reg_1575 <= {{s_1_reg_1359[5:4]}};
        zext_ln14_17_reg_1591[5 : 4] <= zext_ln14_17_fu_956_p1[5 : 4];
        zext_ln14_17_reg_1591_pp0_iter1_reg[5 : 4] <= zext_ln14_17_reg_1591[5 : 4];
        zext_ln14_19_reg_1614[2 : 1] <= zext_ln14_19_fu_1005_p1[2 : 1];
zext_ln14_19_reg_1614[5 : 4] <= zext_ln14_19_fu_1005_p1[5 : 4];
        zext_ln14_19_reg_1614_pp0_iter1_reg[2 : 1] <= zext_ln14_19_reg_1614[2 : 1];
zext_ln14_19_reg_1614_pp0_iter1_reg[5 : 4] <= zext_ln14_19_reg_1614[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln14_12_reg_1525[5 : 3] <= zext_ln14_12_fu_868_p1[5 : 3];
        zext_ln14_12_reg_1525_pp0_iter1_reg[5 : 3] <= zext_ln14_12_reg_1525[5 : 3];
        zext_ln14_15_reg_1540[5 : 3] <= zext_ln14_15_fu_897_p1[5 : 3];
        zext_ln14_15_reg_1540_pp0_iter1_reg[5 : 3] <= zext_ln14_15_reg_1540[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        zext_ln14_22_reg_1649[2] <= zext_ln14_22_fu_1062_p1[2];
zext_ln14_22_reg_1649[5 : 4] <= zext_ln14_22_fu_1062_p1[5 : 4];
        zext_ln14_22_reg_1649_pp0_iter1_reg[2] <= zext_ln14_22_reg_1649[2];
zext_ln14_22_reg_1649_pp0_iter1_reg[5 : 4] <= zext_ln14_22_reg_1649[5 : 4];
        zext_ln14_24_reg_1664[2] <= zext_ln14_24_fu_1097_p1[2];
zext_ln14_24_reg_1664[5 : 4] <= zext_ln14_24_fu_1097_p1[5 : 4];
        zext_ln14_24_reg_1664_pp0_iter1_reg[2] <= zext_ln14_24_reg_1664[2];
zext_ln14_24_reg_1664_pp0_iter1_reg[5 : 4] <= zext_ln14_24_reg_1664[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln14_26_reg_1699[5 : 4] <= zext_ln14_26_fu_1149_p1[5 : 4];
        zext_ln14_26_reg_1699_pp0_iter1_reg[5 : 4] <= zext_ln14_26_reg_1699[5 : 4];
        zext_ln14_28_reg_1714[1] <= zext_ln14_28_fu_1177_p1[1];
zext_ln14_28_reg_1714[5 : 4] <= zext_ln14_28_fu_1177_p1[5 : 4];
        zext_ln14_28_reg_1714_pp0_iter1_reg[1] <= zext_ln14_28_reg_1714[1];
zext_ln14_28_reg_1714_pp0_iter1_reg[5 : 4] <= zext_ln14_28_reg_1714[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        zext_ln14_29_reg_1749[5 : 4] <= zext_ln14_29_fu_1229_p1[5 : 4];
        zext_ln14_29_reg_1749_pp0_iter1_reg[5 : 4] <= zext_ln14_29_reg_1749[5 : 4];
        zext_ln14_30_reg_1764[5 : 4] <= zext_ln14_30_fu_1258_p1[5 : 4];
        zext_ln14_30_reg_1764_pp0_iter1_reg[5 : 4] <= zext_ln14_30_reg_1764[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        zext_ln14_3_reg_1411[5 : 2] <= zext_ln14_3_fu_688_p1[5 : 2];
        zext_ln14_3_reg_1411_pp0_iter1_reg[5 : 2] <= zext_ln14_3_reg_1411[5 : 2];
        zext_ln14_5_reg_1426[5 : 2] <= zext_ln14_5_fu_717_p1[5 : 2];
        zext_ln14_5_reg_1426_pp0_iter1_reg[5 : 2] <= zext_ln14_5_reg_1426[5 : 2];
    end
end
always @ (*) begin
    if (((tmp_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1369_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_130;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address0_local = zext_ln14_27_fu_1275_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address0_local = zext_ln14_23_fu_1197_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address0_local = zext_ln14_20_fu_1117_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address0_local = zext_ln14_16_fu_1027_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_914_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_734_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_676_p1;
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
            emission_address1_local = zext_ln14_25_fu_1246_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address1_local = zext_ln14_21_fu_1162_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address1_local = zext_ln14_18_fu_1082_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address1_local = zext_ln14_14_fu_979_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_885_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_790_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_705_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_634_p1;
        end else begin
            emission_address1_local = 'bx;
        end
    end else begin
        emission_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_557_p0 = bitcast_ln14_28_fu_1310_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_557_p0 = bitcast_ln14_24_fu_1290_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_557_p0 = bitcast_ln14_20_fu_1202_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_557_p0 = bitcast_ln14_16_fu_1122_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_557_p0 = bitcast_ln14_12_fu_1032_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_557_p0 = bitcast_ln14_8_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_557_p0 = bitcast_ln14_4_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_557_p0 = bitcast_ln14_fu_739_p1;
    end else begin
        grp_fu_557_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_557_p1 = bitcast_ln14_29_fu_1315_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_557_p1 = bitcast_ln14_25_fu_1295_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_557_p1 = bitcast_ln14_21_fu_1207_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_557_p1 = bitcast_ln14_17_fu_1127_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_557_p1 = bitcast_ln14_13_fu_1037_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_557_p1 = bitcast_ln14_9_fu_924_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_557_p1 = bitcast_ln14_5_fu_846_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_557_p1 = bitcast_ln14_1_fu_744_p1;
    end else begin
        grp_fu_557_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_561_p0 = bitcast_ln14_30_fu_1320_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_561_p0 = bitcast_ln14_26_fu_1300_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_561_p0 = bitcast_ln14_22_fu_1212_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_561_p0 = bitcast_ln14_18_fu_1132_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_561_p0 = bitcast_ln14_14_fu_1042_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_561_p0 = bitcast_ln14_10_fu_929_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_561_p0 = bitcast_ln14_6_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_561_p0 = bitcast_ln14_2_fu_749_p1;
    end else begin
        grp_fu_561_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_561_p1 = bitcast_ln14_31_fu_1325_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_561_p1 = bitcast_ln14_27_fu_1305_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_561_p1 = bitcast_ln14_23_fu_1217_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_561_p1 = bitcast_ln14_19_fu_1137_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_561_p1 = bitcast_ln14_15_fu_1047_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_561_p1 = bitcast_ln14_11_fu_934_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_561_p1 = bitcast_ln14_7_fu_856_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_561_p1 = bitcast_ln14_3_fu_754_p1;
    end else begin
        grp_fu_561_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address0_local = zext_ln14_30_fu_1258_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address0_local = zext_ln14_28_fu_1177_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address0_local = zext_ln14_24_fu_1097_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address0_local = zext_ln14_19_fu_1005_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_15_fu_897_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_10_fu_814_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_657_p1;
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
            init_address1_local = zext_ln14_29_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address1_local = zext_ln14_26_fu_1149_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address1_local = zext_ln14_22_fu_1062_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address1_local = zext_ln14_17_fu_956_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_12_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_8_fu_776_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_688_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_1_fu_611_p1;
        end else begin
            init_address1_local = 'bx;
        end
    end else begin
        init_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address0_local = zext_ln14_30_reg_1764_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_28_reg_1714_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address0_local = zext_ln14_24_reg_1664_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_19_reg_1614_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address0_local = zext_ln14_15_reg_1540_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_10_reg_1490_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address0_local = zext_ln14_5_reg_1426_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln14_1_reg_1396_pp0_iter1_reg;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address1_local = zext_ln14_29_reg_1749_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address1_local = zext_ln14_26_reg_1699_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address1_local = zext_ln14_22_reg_1649_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address1_local = zext_ln14_17_reg_1591_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address1_local = zext_ln14_12_reg_1525_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address1_local = zext_ln14_8_reg_1469_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address1_local = zext_ln14_3_reg_1411_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address1_local = zext_ln13_1_reg_1373_pp0_iter1_reg;
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_we1_local = 1'b1;
    end else begin
        llike_we1_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
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
assign add_ln13_fu_1280_p2 = (s_1_reg_1359 + 7'd16);
assign add_ln14_10_fu_1241_p2 = (shl_ln14_s_fu_1234_p3 + zext_ln13_cast_reg_1344);
assign add_ln14_11_fu_1270_p2 = (shl_ln14_10_fu_1263_p3 + zext_ln13_cast_reg_1344);
assign add_ln14_1_fu_700_p2 = (shl_ln14_1_fu_693_p3 + zext_ln13_cast_reg_1344);
assign add_ln14_2_fu_729_p2 = (shl_ln14_2_fu_722_p3 + zext_ln13_cast_reg_1344);
assign add_ln14_3_fu_831_p2 = (shl_ln14_3_fu_819_p5 + zext_ln13_cast_reg_1344);
assign add_ln14_4_fu_880_p2 = (shl_ln14_4_fu_873_p3 + zext_ln13_cast_reg_1344);
assign add_ln14_5_fu_909_p2 = (shl_ln14_5_fu_902_p3 + zext_ln13_cast_reg_1344);
assign add_ln14_6_fu_1022_p2 = (shl_ln14_6_fu_1010_p5 + zext_ln13_cast_reg_1344);
assign add_ln14_7_fu_1077_p2 = (shl_ln14_7_fu_1067_p5 + zext_ln13_cast_reg_1344);
assign add_ln14_8_fu_1112_p2 = (shl_ln14_8_fu_1102_p5 + zext_ln13_cast_reg_1344);
assign add_ln14_9_fu_1192_p2 = (shl_ln14_9_fu_1182_p5 + zext_ln13_cast_reg_1344);
assign add_ln14_fu_670_p2 = (shl_ln_fu_662_p3 + zext_ln13_cast_fu_591_p1);
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
assign bitcast_ln14_10_fu_929_p1 = reg_573;
assign bitcast_ln14_11_fu_934_p1 = reg_577;
assign bitcast_ln14_12_fu_1032_p1 = reg_565;
assign bitcast_ln14_13_fu_1037_p1 = reg_569;
assign bitcast_ln14_14_fu_1042_p1 = reg_573;
assign bitcast_ln14_15_fu_1047_p1 = reg_577;
assign bitcast_ln14_16_fu_1122_p1 = reg_565;
assign bitcast_ln14_17_fu_1127_p1 = reg_569;
assign bitcast_ln14_18_fu_1132_p1 = reg_573;
assign bitcast_ln14_19_fu_1137_p1 = reg_577;
assign bitcast_ln14_1_fu_744_p1 = reg_569;
assign bitcast_ln14_20_fu_1202_p1 = reg_565;
assign bitcast_ln14_21_fu_1207_p1 = reg_569;
assign bitcast_ln14_22_fu_1212_p1 = reg_573;
assign bitcast_ln14_23_fu_1217_p1 = reg_577;
assign bitcast_ln14_24_fu_1290_p1 = reg_565;
assign bitcast_ln14_25_fu_1295_p1 = reg_569;
assign bitcast_ln14_26_fu_1300_p1 = reg_573;
assign bitcast_ln14_27_fu_1305_p1 = reg_577;
assign bitcast_ln14_28_fu_1310_p1 = reg_565;
assign bitcast_ln14_29_fu_1315_p1 = reg_569;
assign bitcast_ln14_2_fu_749_p1 = reg_573;
assign bitcast_ln14_30_fu_1320_p1 = reg_573;
assign bitcast_ln14_31_fu_1325_p1 = reg_577;
assign bitcast_ln14_3_fu_754_p1 = reg_577;
assign bitcast_ln14_4_fu_841_p1 = reg_565;
assign bitcast_ln14_5_fu_846_p1 = reg_569;
assign bitcast_ln14_6_fu_851_p1 = reg_573;
assign bitcast_ln14_7_fu_856_p1 = reg_577;
assign bitcast_ln14_8_fu_919_p1 = reg_565;
assign bitcast_ln14_9_fu_924_p1 = reg_569;
assign bitcast_ln14_fu_739_p1 = reg_565;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_227_p_ce = 1'b1;
assign grp_fu_227_p_din0 = grp_fu_557_p0;
assign grp_fu_227_p_din1 = grp_fu_557_p1;
assign grp_fu_227_p_opcode = 2'd0;
assign grp_fu_492_p_ce = 1'b1;
assign grp_fu_492_p_din0 = grp_fu_561_p0;
assign grp_fu_492_p_din1 = grp_fu_561_p1;
assign grp_fu_492_p_opcode = 2'd0;
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign llike_d0 = reg_586;
assign llike_d1 = reg_581;
assign llike_we0 = llike_we0_local;
assign llike_we1 = llike_we1_local;
assign or_ln13_10_fu_1142_p3 = {{tmp_67_reg_1575}, {4'd12}};
assign or_ln13_11_fu_1167_p5 = {{{{tmp_67_reg_1575}, {2'd3}}, {tmp_63_reg_1484}}, {1'd1}};
assign or_ln13_12_fu_1222_p3 = {{tmp_67_reg_1575}, {4'd14}};
assign or_ln13_13_fu_1251_p3 = {{tmp_67_reg_1575}, {4'd15}};
assign or_ln13_1_fu_681_p3 = {{tmp_cast_reg_1383}, {2'd2}};
assign or_ln13_2_fu_710_p3 = {{tmp_cast_reg_1383}, {2'd3}};
assign or_ln13_3_fu_768_p3 = {{tmp_66_fu_759_p4}, {3'd4}};
assign or_ln13_4_fu_802_p5 = {{{{tmp_66_fu_759_p4}, {1'd1}}, {tmp_63_fu_795_p3}}, {1'd1}};
assign or_ln13_5_fu_861_p3 = {{tmp_66_reg_1461}, {3'd6}};
assign or_ln13_6_fu_890_p3 = {{tmp_66_reg_1461}, {3'd7}};
assign or_ln13_7_fu_948_p3 = {{tmp_67_fu_939_p4}, {4'd8}};
assign or_ln13_8_fu_993_p5 = {{{{tmp_67_fu_939_p4}, {1'd1}}, {tmp_68_fu_984_p4}}, {1'd1}};
assign or_ln13_9_fu_1052_p5 = {{{{tmp_67_reg_1575}, {1'd1}}, {tmp_64_reg_1601}}, {2'd2}};
assign or_ln13_s_fu_1087_p5 = {{{{tmp_67_reg_1575}, {1'd1}}, {tmp_64_reg_1601}}, {2'd3}};
assign or_ln14_1_fu_781_p4 = {{{tmp_66_fu_759_p4}, {1'd1}}, {obs_load}};
assign or_ln14_2_fu_968_p5 = {{{{tmp_67_fu_939_p4}, {1'd1}}, {tmp_64_fu_961_p3}}, {obs_load}};
assign or_ln14_3_fu_1154_p4 = {{{tmp_67_reg_1575}, {2'd3}}, {obs_load}};
assign or_ln1_fu_649_p3 = {{tmp_s_fu_639_p4}, {1'd1}};
assign or_ln_fu_626_p3 = {{tmp_cast_fu_616_p4}, {obs_load}};
assign shl_ln14_10_fu_1263_p3 = {{tmp_67_reg_1575}, {10'd960}};
assign shl_ln14_1_fu_693_p3 = {{tmp_cast_reg_1383}, {8'd128}};
assign shl_ln14_2_fu_722_p3 = {{tmp_cast_reg_1383}, {8'd192}};
assign shl_ln14_3_fu_819_p5 = {{{{tmp_66_fu_759_p4}, {1'd1}}, {tmp_63_fu_795_p3}}, {7'd64}};
assign shl_ln14_4_fu_873_p3 = {{tmp_66_reg_1461}, {9'd384}};
assign shl_ln14_5_fu_902_p3 = {{tmp_66_reg_1461}, {9'd448}};
assign shl_ln14_6_fu_1010_p5 = {{{{tmp_67_fu_939_p4}, {1'd1}}, {tmp_68_fu_984_p4}}, {7'd64}};
assign shl_ln14_7_fu_1067_p5 = {{{{tmp_67_reg_1575}, {1'd1}}, {tmp_64_reg_1601}}, {8'd128}};
assign shl_ln14_8_fu_1102_p5 = {{{{tmp_67_reg_1575}, {1'd1}}, {tmp_64_reg_1601}}, {8'd192}};
assign shl_ln14_9_fu_1182_p5 = {{{{tmp_67_reg_1575}, {2'd3}}, {tmp_63_reg_1484}}, {7'd64}};
assign shl_ln14_s_fu_1234_p3 = {{tmp_67_reg_1575}, {10'd896}};
assign shl_ln_fu_662_p3 = {{tmp_s_fu_639_p4}, {7'd64}};
assign tmp_63_fu_795_p3 = s_1_reg_1359[32'd1];
assign tmp_64_fu_961_p3 = s_1_reg_1359[32'd2];
assign tmp_66_fu_759_p4 = {{s_1_reg_1359[5:3]}};
assign tmp_67_fu_939_p4 = {{s_1_reg_1359[5:4]}};
assign tmp_68_fu_984_p4 = {{s_1_reg_1359[2:1]}};
assign tmp_cast_fu_616_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_s_fu_639_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign zext_ln13_1_fu_611_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_591_p1 = zext_ln13;
assign zext_ln14_10_fu_814_p1 = or_ln13_4_fu_802_p5;
assign zext_ln14_11_fu_885_p1 = add_ln14_4_fu_880_p2;
assign zext_ln14_12_fu_868_p1 = or_ln13_5_fu_861_p3;
assign zext_ln14_13_fu_914_p1 = add_ln14_5_fu_909_p2;
assign zext_ln14_14_fu_979_p1 = or_ln14_2_fu_968_p5;
assign zext_ln14_15_fu_897_p1 = or_ln13_6_fu_890_p3;
assign zext_ln14_16_fu_1027_p1 = add_ln14_6_fu_1022_p2;
assign zext_ln14_17_fu_956_p1 = or_ln13_7_fu_948_p3;
assign zext_ln14_18_fu_1082_p1 = add_ln14_7_fu_1077_p2;
assign zext_ln14_19_fu_1005_p1 = or_ln13_8_fu_993_p5;
assign zext_ln14_1_fu_657_p1 = or_ln1_fu_649_p3;
assign zext_ln14_20_fu_1117_p1 = add_ln14_8_fu_1112_p2;
assign zext_ln14_21_fu_1162_p1 = or_ln14_3_fu_1154_p4;
assign zext_ln14_22_fu_1062_p1 = or_ln13_9_fu_1052_p5;
assign zext_ln14_23_fu_1197_p1 = add_ln14_9_fu_1192_p2;
assign zext_ln14_24_fu_1097_p1 = or_ln13_s_fu_1087_p5;
assign zext_ln14_25_fu_1246_p1 = add_ln14_10_fu_1241_p2;
assign zext_ln14_26_fu_1149_p1 = or_ln13_10_fu_1142_p3;
assign zext_ln14_27_fu_1275_p1 = add_ln14_11_fu_1270_p2;
assign zext_ln14_28_fu_1177_p1 = or_ln13_11_fu_1167_p5;
assign zext_ln14_29_fu_1229_p1 = or_ln13_12_fu_1222_p3;
assign zext_ln14_2_fu_676_p1 = add_ln14_fu_670_p2;
assign zext_ln14_30_fu_1258_p1 = or_ln13_13_fu_1251_p3;
assign zext_ln14_3_fu_688_p1 = or_ln13_1_fu_681_p3;
assign zext_ln14_4_fu_705_p1 = add_ln14_1_fu_700_p2;
assign zext_ln14_5_fu_717_p1 = or_ln13_2_fu_710_p3;
assign zext_ln14_6_fu_734_p1 = add_ln14_2_fu_729_p2;
assign zext_ln14_7_fu_790_p1 = or_ln14_1_fu_781_p4;
assign zext_ln14_8_fu_776_p1 = or_ln13_3_fu_768_p3;
assign zext_ln14_9_fu_836_p1 = add_ln14_3_fu_831_p2;
assign zext_ln14_fu_634_p1 = or_ln_fu_626_p3;
always @ (posedge ap_clk) begin
    zext_ln13_cast_reg_1344[11:8] <= 4'b0000;
    zext_ln13_1_reg_1373[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln13_1_reg_1373_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln14_1_reg_1396[0] <= 1'b1;
    zext_ln14_1_reg_1396[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_1_reg_1396_pp0_iter1_reg[0] <= 1'b1;
    zext_ln14_1_reg_1396_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_3_reg_1411[1:0] <= 2'b10;
    zext_ln14_3_reg_1411[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_3_reg_1411_pp0_iter1_reg[1:0] <= 2'b10;
    zext_ln14_3_reg_1411_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_5_reg_1426[1:0] <= 2'b11;
    zext_ln14_5_reg_1426[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_5_reg_1426_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln14_5_reg_1426_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_8_reg_1469[2:0] <= 3'b100;
    zext_ln14_8_reg_1469[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_8_reg_1469_pp0_iter1_reg[2:0] <= 3'b100;
    zext_ln14_8_reg_1469_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_10_reg_1490[0] <= 1'b1;
    zext_ln14_10_reg_1490[2:2] <= 1'b1;
    zext_ln14_10_reg_1490[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_10_reg_1490_pp0_iter1_reg[0] <= 1'b1;
    zext_ln14_10_reg_1490_pp0_iter1_reg[2:2] <= 1'b1;
    zext_ln14_10_reg_1490_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_12_reg_1525[2:0] <= 3'b110;
    zext_ln14_12_reg_1525[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_12_reg_1525_pp0_iter1_reg[2:0] <= 3'b110;
    zext_ln14_12_reg_1525_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_15_reg_1540[2:0] <= 3'b111;
    zext_ln14_15_reg_1540[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_15_reg_1540_pp0_iter1_reg[2:0] <= 3'b111;
    zext_ln14_15_reg_1540_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_17_reg_1591[3:0] <= 4'b1000;
    zext_ln14_17_reg_1591[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_17_reg_1591_pp0_iter1_reg[3:0] <= 4'b1000;
    zext_ln14_17_reg_1591_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_19_reg_1614[0] <= 1'b1;
    zext_ln14_19_reg_1614[3:3] <= 1'b1;
    zext_ln14_19_reg_1614[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_19_reg_1614_pp0_iter1_reg[0] <= 1'b1;
    zext_ln14_19_reg_1614_pp0_iter1_reg[3:3] <= 1'b1;
    zext_ln14_19_reg_1614_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_22_reg_1649[1:0] <= 2'b10;
    zext_ln14_22_reg_1649[3:3] <= 1'b1;
    zext_ln14_22_reg_1649[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_22_reg_1649_pp0_iter1_reg[1:0] <= 2'b10;
    zext_ln14_22_reg_1649_pp0_iter1_reg[3:3] <= 1'b1;
    zext_ln14_22_reg_1649_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_24_reg_1664[1:0] <= 2'b11;
    zext_ln14_24_reg_1664[3:3] <= 1'b1;
    zext_ln14_24_reg_1664[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_24_reg_1664_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln14_24_reg_1664_pp0_iter1_reg[3:3] <= 1'b1;
    zext_ln14_24_reg_1664_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_26_reg_1699[3:0] <= 4'b1100;
    zext_ln14_26_reg_1699[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_26_reg_1699_pp0_iter1_reg[3:0] <= 4'b1100;
    zext_ln14_26_reg_1699_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_28_reg_1714[0] <= 1'b1;
    zext_ln14_28_reg_1714[3:2] <= 2'b11;
    zext_ln14_28_reg_1714[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_28_reg_1714_pp0_iter1_reg[0] <= 1'b1;
    zext_ln14_28_reg_1714_pp0_iter1_reg[3:2] <= 2'b11;
    zext_ln14_28_reg_1714_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_29_reg_1749[3:0] <= 4'b1110;
    zext_ln14_29_reg_1749[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_29_reg_1749_pp0_iter1_reg[3:0] <= 4'b1110;
    zext_ln14_29_reg_1749_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_30_reg_1764[3:0] <= 4'b1111;
    zext_ln14_30_reg_1764[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln14_30_reg_1764_pp0_iter1_reg[3:0] <= 4'b1111;
    zext_ln14_30_reg_1764_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 