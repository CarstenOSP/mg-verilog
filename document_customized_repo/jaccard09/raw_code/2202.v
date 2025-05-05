module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,B_24_reload,B_4_reload,D_24_reload,E_24_reload,E_4_reload,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,W_2_address0,W_2_ce0,W_2_q0,W_2_address1,W_2_ce1,W_2_q1,W_3_address0,W_3_ce0,W_3_q0,W_3_address1,W_3_ce1,W_3_q1,E_25_out,E_25_out_ap_vld,B_25_out,B_25_out_ap_vld,D_27_out,D_27_out_ap_vld,A_27_out,A_27_out_ap_vld,C_30_out,C_30_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 11'd1;
parameter    ap_ST_fsm_pp0_stage1 = 11'd2;
parameter    ap_ST_fsm_pp0_stage2 = 11'd4;
parameter    ap_ST_fsm_pp0_stage3 = 11'd8;
parameter    ap_ST_fsm_pp0_stage4 = 11'd16;
parameter    ap_ST_fsm_pp0_stage5 = 11'd32;
parameter    ap_ST_fsm_pp0_stage6 = 11'd64;
parameter    ap_ST_fsm_pp0_stage7 = 11'd128;
parameter    ap_ST_fsm_pp0_stage8 = 11'd256;
parameter    ap_ST_fsm_pp0_stage9 = 11'd512;
parameter    ap_ST_fsm_pp0_stage10 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] B_24_reload;
input  [31:0] B_4_reload;
input  [31:0] D_24_reload;
input  [31:0] E_24_reload;
input  [31:0] E_4_reload;
output  [4:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [4:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [4:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [4:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [4:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [4:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
output  [4:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [4:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [31:0] E_25_out;
output   E_25_out_ap_vld;
output  [31:0] B_25_out;
output   B_25_out_ap_vld;
output  [31:0] D_27_out;
output   D_27_out_ap_vld;
output  [31:0] A_27_out;
output   A_27_out_ap_vld;
output  [31:0] C_30_out;
output   C_30_out_ap_vld;
reg ap_idle;
reg E_25_out_ap_vld;
reg B_25_out_ap_vld;
reg D_27_out_ap_vld;
reg A_27_out_ap_vld;
reg C_30_out_ap_vld;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln124_reg_1194;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [31:0] D_8_reg_1132;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_reg_1137;
reg   [31:0] A_8_reg_1144;
wire   [31:0] add_ln126_2_fu_394_p2;
reg   [31:0] add_ln126_2_reg_1154;
wire   [1:0] trunc_ln126_1_fu_400_p1;
reg   [1:0] trunc_ln126_1_reg_1159;
reg   [29:0] lshr_ln126_1_reg_1164;
wire   [31:0] E_22_fu_428_p3;
reg   [31:0] E_22_reg_1174;
wire   [0:0] icmp_ln124_fu_454_p2;
wire   [31:0] temp_fu_496_p2;
reg   [31:0] temp_reg_1218;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [26:0] trunc_ln126_2_fu_501_p1;
reg   [26:0] trunc_ln126_2_reg_1223;
reg   [4:0] lshr_ln126_2_reg_1228;
reg   [31:0] W_1_load_reg_1233;
reg   [31:0] W_2_load_reg_1238;
wire   [1:0] trunc_ln126_5_fu_515_p1;
reg   [1:0] trunc_ln126_5_reg_1243;
reg   [29:0] lshr_ln126_5_reg_1248;
reg   [31:0] W_3_load_reg_1253;
reg   [31:0] W_load_2_reg_1258;
reg   [31:0] W_1_load_2_reg_1263;
reg   [31:0] W_2_load_2_reg_1268;
reg   [31:0] W_3_load_2_reg_1273;
wire   [31:0] C_11_fu_529_p3;
reg   [31:0] C_11_reg_1278;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] temp_9_fu_578_p2;
reg   [31:0] temp_9_reg_1283;
wire   [26:0] trunc_ln126_4_fu_584_p1;
reg   [26:0] trunc_ln126_4_reg_1288;
reg   [4:0] lshr_ln126_4_reg_1293;
wire   [31:0] or_ln126_7_fu_613_p2;
reg   [31:0] or_ln126_7_reg_1298;
wire   [1:0] trunc_ln126_7_fu_619_p1;
reg   [1:0] trunc_ln126_7_reg_1303;
reg   [29:0] lshr_ln126_7_reg_1308;
wire   [31:0] B_20_fu_654_p2;
reg   [31:0] B_20_reg_1313;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] D_fu_660_p3;
reg   [31:0] D_reg_1321;
wire   [26:0] trunc_ln126_6_fu_666_p1;
reg   [26:0] trunc_ln126_6_reg_1329;
reg   [4:0] lshr_ln126_6_reg_1334;
wire   [31:0] or_ln126_9_fu_695_p2;
reg   [31:0] or_ln126_9_reg_1339;
wire   [31:0] A_fu_722_p2;
reg   [31:0] A_reg_1344;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_12_fu_729_p3;
reg   [31:0] C_12_reg_1353;
wire   [31:0] or_ln126_12_fu_761_p2;
reg   [31:0] or_ln126_12_reg_1362;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] add_ln126_18_fu_780_p2;
reg   [31:0] add_ln126_18_reg_1367;
wire   [31:0] temp_10_fu_790_p2;
reg   [31:0] temp_10_reg_1372;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] add_ln126_20_fu_817_p2;
reg   [31:0] add_ln126_20_reg_1377;
wire   [31:0] add_ln126_21_fu_822_p2;
reg   [31:0] add_ln126_21_reg_1382;
wire   [1:0] trunc_ln126_13_fu_827_p1;
reg   [1:0] trunc_ln126_13_reg_1387;
reg   [29:0] lshr_ln126_12_reg_1392;
wire   [31:0] C_13_fu_853_p3;
reg   [31:0] C_13_reg_1397;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] temp_11_fu_887_p2;
reg   [31:0] temp_11_reg_1404;
wire   [26:0] trunc_ln126_12_fu_892_p1;
reg   [26:0] trunc_ln126_12_reg_1409;
reg   [4:0] lshr_ln126_11_reg_1414;
wire   [31:0] temp_12_fu_996_p2;
reg   [31:0] temp_12_reg_1419;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln126_14_fu_1008_p1;
reg   [26:0] trunc_ln126_14_reg_1424;
reg   [4:0] lshr_ln126_13_reg_1429;
wire   [31:0] or_ln126_21_fu_1039_p2;
reg   [31:0] or_ln126_21_reg_1434;
wire   [31:0] add_ln126_30_fu_1066_p2;
reg   [31:0] add_ln126_30_reg_1439;
wire    ap_block_pp0_stage10_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_fu_334_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln124_fu_468_p1;
reg   [31:0] E_5_fu_90;
wire   [31:0] C_14_fu_945_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage2;
reg   [31:0] E_fu_94;
wire   [31:0] C_15_fu_1002_p3;
reg   [31:0] B_5_fu_98;
reg   [31:0] E_12_fu_102;
wire   [31:0] C_10_fu_920_p3;
reg   [31:0] B_fu_106;
wire   [31:0] temp_13_fu_1080_p2;
reg   [5:0] i_fu_110;
wire   [5:0] add_ln124_fu_476_p2;
wire    ap_block_pp0_stage5_01001;
reg    W_ce1_local;
reg    W_ce0_local;
reg    W_1_ce1_local;
reg    W_1_ce0_local;
reg    W_2_ce1_local;
reg    W_2_ce0_local;
reg    W_3_ce1_local;
reg    W_3_ce0_local;
wire    ap_block_pp0_stage0;
wire   [3:0] lshr_ln100_2_fu_324_p4;
wire   [31:0] or_ln126_fu_356_p2;
wire   [31:0] and_ln126_fu_362_p2;
wire   [31:0] and_ln126_1_fu_368_p2;
wire   [26:0] trunc_ln126_fu_342_p1;
wire   [4:0] lshr_ln5_fu_346_p4;
wire   [31:0] or_ln126_2_fu_380_p3;
wire   [31:0] or_ln126_1_fu_374_p2;
wire   [31:0] add_ln126_1_fu_388_p2;
wire   [1:0] trunc_ln126_3_fu_414_p1;
wire   [29:0] lshr_ln126_3_fu_418_p4;
wire   [2:0] tmp_s_fu_436_p4;
wire   [5:0] or_ln1_fu_446_p3;
wire   [3:0] or_ln2_fu_460_p3;
wire   [31:0] add_ln126_fu_490_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln126_3_fu_535_p2;
wire   [31:0] and_ln126_2_fu_540_p2;
wire   [31:0] and_ln126_3_fu_545_p2;
wire   [31:0] add_ln126_4_fu_562_p2;
wire   [31:0] or_ln126_4_fu_550_p2;
wire   [31:0] or_ln126_6_fu_556_p3;
wire   [31:0] add_ln126_5_fu_573_p2;
wire   [31:0] add_ln126_6_fu_567_p2;
wire   [31:0] or_ln126_5_fu_598_p2;
wire   [31:0] and_ln126_4_fu_603_p2;
wire   [31:0] and_ln126_5_fu_608_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln126_8_fu_639_p2;
wire   [31:0] or_ln126_s_fu_633_p3;
wire   [31:0] add_ln126_9_fu_649_p2;
wire   [31:0] add_ln126_10_fu_644_p2;
wire   [31:0] or_ln126_8_fu_680_p2;
wire   [31:0] and_ln126_6_fu_685_p2;
wire   [31:0] and_ln126_7_fu_690_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] add_ln126_12_fu_707_p2;
wire   [31:0] or_ln126_10_fu_701_p3;
wire   [31:0] add_ln126_13_fu_717_p2;
wire   [31:0] add_ln126_14_fu_712_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln126_11_fu_748_p2;
wire   [31:0] and_ln126_8_fu_752_p2;
wire   [31:0] and_ln126_9_fu_757_p2;
wire   [26:0] trunc_ln126_8_fu_736_p1;
wire   [4:0] lshr_ln126_8_fu_739_p4;
wire   [31:0] or_ln126_13_fu_767_p3;
wire   [31:0] add_ln126_17_fu_775_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] add_ln126_16_fu_786_p2;
wire   [26:0] trunc_ln126_10_fu_795_p1;
wire   [4:0] lshr_ln126_s_fu_799_p4;
wire   [31:0] or_ln126_16_fu_809_p3;
wire    ap_block_pp0_stage8;
wire   [1:0] trunc_ln126_9_fu_841_p1;
wire   [29:0] lshr_ln126_9_fu_844_p4;
wire   [31:0] or_ln126_14_fu_861_p2;
wire   [31:0] and_ln126_10_fu_866_p2;
wire   [31:0] and_ln126_11_fu_871_p2;
wire   [31:0] or_ln126_15_fu_876_p2;
wire   [31:0] add_ln126_22_fu_882_p2;
wire   [1:0] trunc_ln126_15_fu_906_p1;
wire   [29:0] lshr_ln126_14_fu_910_p4;
wire    ap_block_pp0_stage9;
wire   [1:0] trunc_ln126_11_fu_933_p1;
wire   [29:0] lshr_ln126_10_fu_936_p4;
wire   [31:0] or_ln126_17_fu_953_p2;
wire   [31:0] and_ln126_12_fu_958_p2;
wire   [31:0] and_ln126_13_fu_963_p2;
wire   [31:0] add_ln126_24_fu_980_p2;
wire   [31:0] or_ln126_18_fu_968_p2;
wire   [31:0] or_ln126_19_fu_974_p3;
wire   [31:0] add_ln126_25_fu_991_p2;
wire   [31:0] add_ln126_26_fu_985_p2;
wire   [31:0] or_ln126_20_fu_1022_p2;
wire   [31:0] and_ln126_14_fu_1028_p2;
wire   [31:0] and_ln126_15_fu_1033_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln126_22_fu_1055_p3;
wire   [31:0] add_ln126_29_fu_1061_p2;
wire   [31:0] add_ln126_28_fu_1076_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [10:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_5_fu_90 = 32'd0;
#0 E_fu_94 = 32'd0;
#0 B_5_fu_98 = 32'd0;
#0 E_12_fu_102 = 32'd0;
#0 B_fu_106 = 32'd0;
#0 i_fu_110 = 6'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_5_fu_98 <= B_4_reload;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        B_5_fu_98 <= temp_12_reg_1419;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_106 <= B_24_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_fu_106 <= temp_13_fu_1080_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_12_fu_102 <= D_24_reload;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_12_fu_102 <= C_10_fu_920_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_fu_90 <= E_4_reload;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        E_5_fu_90 <= C_14_fu_945_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_94 <= E_24_reload;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        E_fu_94 <= C_15_fu_1002_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_110 <= 6'd40;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln124_fu_454_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_110 <= add_ln124_fu_476_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_8_reg_1144 <= B_fu_106;
        C_reg_1137 <= E_12_fu_102;
        D_8_reg_1132 <= E_fu_94;
        add_ln126_2_reg_1154 <= add_ln126_2_fu_394_p2;
        icmp_ln124_reg_1194 <= icmp_ln124_fu_454_p2;
        lshr_ln126_1_reg_1164 <= {{B_5_fu_98[31:2]}};
        trunc_ln126_1_reg_1159 <= trunc_ln126_1_fu_400_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_reg_1344 <= A_fu_722_p2;
        C_12_reg_1353 <= C_12_fu_729_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_20_reg_1313 <= B_20_fu_654_p2;
        D_reg_1321 <= D_fu_660_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_11_reg_1278 <= C_11_fu_529_p3;
        lshr_ln126_4_reg_1293 <= {{temp_9_fu_578_p2[31:27]}};
        lshr_ln126_7_reg_1308 <= {{temp_9_fu_578_p2[31:2]}};
        or_ln126_7_reg_1298 <= or_ln126_7_fu_613_p2;
        temp_9_reg_1283 <= temp_9_fu_578_p2;
        trunc_ln126_4_reg_1288 <= trunc_ln126_4_fu_584_p1;
        trunc_ln126_7_reg_1303 <= trunc_ln126_7_fu_619_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_13_reg_1397 <= C_13_fu_853_p3;
        lshr_ln126_11_reg_1414 <= {{temp_11_fu_887_p2[31:27]}};
        temp_11_reg_1404 <= temp_11_fu_887_p2;
        trunc_ln126_12_reg_1409 <= trunc_ln126_12_fu_892_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_22_reg_1174 <= E_22_fu_428_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_1_load_2_reg_1263 <= W_1_q0;
        W_1_load_reg_1233 <= W_1_q1;
        W_2_load_2_reg_1268 <= W_2_q0;
        W_2_load_reg_1238 <= W_2_q1;
        W_3_load_2_reg_1273 <= W_3_q0;
        W_3_load_reg_1253 <= W_3_q1;
        W_load_2_reg_1258 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln126_18_reg_1367 <= add_ln126_18_fu_780_p2;
        or_ln126_12_reg_1362 <= or_ln126_12_fu_761_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln126_20_reg_1377 <= add_ln126_20_fu_817_p2;
        add_ln126_21_reg_1382 <= add_ln126_21_fu_822_p2;
        lshr_ln126_12_reg_1392 <= {{temp_10_fu_790_p2[31:2]}};
        temp_10_reg_1372 <= temp_10_fu_790_p2;
        trunc_ln126_13_reg_1387 <= trunc_ln126_13_fu_827_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln126_30_reg_1439 <= add_ln126_30_fu_1066_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln126_13_reg_1429 <= {{temp_12_fu_996_p2[31:27]}};
        or_ln126_21_reg_1434 <= or_ln126_21_fu_1039_p2;
        temp_12_reg_1419 <= temp_12_fu_996_p2;
        trunc_ln126_14_reg_1424 <= trunc_ln126_14_fu_1008_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        lshr_ln126_2_reg_1228 <= {{temp_fu_496_p2[31:27]}};
        lshr_ln126_5_reg_1248 <= {{temp_fu_496_p2[31:2]}};
        temp_reg_1218 <= temp_fu_496_p2;
        trunc_ln126_2_reg_1223 <= trunc_ln126_2_fu_501_p1;
        trunc_ln126_5_reg_1243 <= trunc_ln126_5_fu_515_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln126_6_reg_1334 <= {{B_20_fu_654_p2[31:27]}};
        or_ln126_9_reg_1339 <= or_ln126_9_fu_695_p2;
        trunc_ln126_6_reg_1329 <= trunc_ln126_6_fu_666_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1194 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_27_out_ap_vld = 1'b1;
    end else begin
        A_27_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1194 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_25_out_ap_vld = 1'b1;
    end else begin
        B_25_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1194 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_30_out_ap_vld = 1'b1;
    end else begin
        C_30_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1194 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        D_27_out_ap_vld = 1'b1;
    end else begin
        D_27_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1194 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_25_out_ap_vld = 1'b1;
    end else begin
        E_25_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_1194 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to1 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_27_out = (add_ln126_13_fu_717_p2 + add_ln126_14_fu_712_p2);
assign A_fu_722_p2 = (add_ln126_13_fu_717_p2 + add_ln126_14_fu_712_p2);
assign B_20_fu_654_p2 = (add_ln126_9_fu_649_p2 + add_ln126_10_fu_644_p2);
assign B_25_out = B_20_reg_1313;
assign C_10_fu_920_p3 = {{trunc_ln126_15_fu_906_p1}, {lshr_ln126_14_fu_910_p4}};
assign C_11_fu_529_p3 = {{trunc_ln126_1_reg_1159}, {lshr_ln126_1_reg_1164}};
assign C_12_fu_729_p3 = {{trunc_ln126_7_reg_1303}, {lshr_ln126_7_reg_1308}};
assign C_13_fu_853_p3 = {{trunc_ln126_9_fu_841_p1}, {lshr_ln126_9_fu_844_p4}};
assign C_14_fu_945_p3 = {{trunc_ln126_11_fu_933_p1}, {lshr_ln126_10_fu_936_p4}};
assign C_15_fu_1002_p3 = {{trunc_ln126_13_reg_1387}, {lshr_ln126_12_reg_1392}};
assign C_30_out = {{trunc_ln126_7_reg_1303}, {lshr_ln126_7_reg_1308}};
assign D_27_out = D_reg_1321;
assign D_fu_660_p3 = {{trunc_ln126_5_reg_1243}, {lshr_ln126_5_reg_1248}};
assign E_22_fu_428_p3 = {{trunc_ln126_3_fu_414_p1}, {lshr_ln126_3_fu_418_p4}};
assign E_25_out = E_22_reg_1174;
assign W_1_address0 = zext_ln124_fu_468_p1;
assign W_1_address1 = zext_ln100_fu_334_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_2_address0 = zext_ln124_fu_468_p1;
assign W_2_address1 = zext_ln100_fu_334_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_3_address0 = zext_ln124_fu_468_p1;
assign W_3_address1 = zext_ln100_fu_334_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_address0 = zext_ln124_fu_468_p1;
assign W_address1 = zext_ln100_fu_334_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln124_fu_476_p2 = (i_fu_110 + 6'd8);
assign add_ln126_10_fu_644_p2 = (add_ln126_8_fu_639_p2 + or_ln126_7_reg_1298);
assign add_ln126_12_fu_707_p2 = ($signed(W_3_load_reg_1253) + $signed(32'd2400959708));
assign add_ln126_13_fu_717_p2 = (or_ln126_10_fu_701_p3 + C_11_reg_1278);
assign add_ln126_14_fu_712_p2 = (add_ln126_12_fu_707_p2 + or_ln126_9_reg_1339);
assign add_ln126_16_fu_786_p2 = (W_load_2_reg_1258 + or_ln126_12_reg_1362);
assign add_ln126_17_fu_775_p2 = ($signed(E_22_reg_1174) + $signed(32'd2400959708));
assign add_ln126_18_fu_780_p2 = (or_ln126_13_fu_767_p3 + add_ln126_17_fu_775_p2);
assign add_ln126_1_fu_388_p2 = ($signed(or_ln126_2_fu_380_p3) + $signed(32'd2400959708));
assign add_ln126_20_fu_817_p2 = ($signed(W_1_load_2_reg_1263) + $signed(32'd2400959708));
assign add_ln126_21_fu_822_p2 = (or_ln126_16_fu_809_p3 + D_reg_1321);
assign add_ln126_22_fu_882_p2 = (add_ln126_20_reg_1377 + or_ln126_15_fu_876_p2);
assign add_ln126_24_fu_980_p2 = ($signed(W_2_load_2_reg_1268) + $signed(32'd2400959708));
assign add_ln126_25_fu_991_p2 = (or_ln126_19_fu_974_p3 + C_12_reg_1353);
assign add_ln126_26_fu_985_p2 = (add_ln126_24_fu_980_p2 + or_ln126_18_fu_968_p2);
assign add_ln126_28_fu_1076_p2 = (W_3_load_2_reg_1273 + C_13_reg_1397);
assign add_ln126_29_fu_1061_p2 = ($signed(32'd2400959708) + $signed(or_ln126_21_reg_1434));
assign add_ln126_2_fu_394_p2 = (or_ln126_1_fu_374_p2 + add_ln126_1_fu_388_p2);
assign add_ln126_30_fu_1066_p2 = (or_ln126_22_fu_1055_p3 + add_ln126_29_fu_1061_p2);
assign add_ln126_4_fu_562_p2 = ($signed(W_1_load_reg_1233) + $signed(32'd2400959708));
assign add_ln126_5_fu_573_p2 = (or_ln126_6_fu_556_p3 + D_8_reg_1132);
assign add_ln126_6_fu_567_p2 = (add_ln126_4_fu_562_p2 + or_ln126_4_fu_550_p2);
assign add_ln126_8_fu_639_p2 = ($signed(W_2_load_reg_1238) + $signed(32'd2400959708));
assign add_ln126_9_fu_649_p2 = (or_ln126_s_fu_633_p3 + C_reg_1137);
assign add_ln126_fu_490_p2 = (W_q1 + E_5_fu_90);
assign and_ln126_10_fu_866_p2 = (or_ln126_14_fu_861_p2 & A_reg_1344);
assign and_ln126_11_fu_871_p2 = (C_13_fu_853_p3 & C_12_reg_1353);
assign and_ln126_12_fu_958_p2 = (temp_10_reg_1372 & or_ln126_17_fu_953_p2);
assign and_ln126_13_fu_963_p2 = (C_14_fu_945_p3 & C_13_reg_1397);
assign and_ln126_14_fu_1028_p2 = (temp_11_reg_1404 & or_ln126_20_fu_1022_p2);
assign and_ln126_15_fu_1033_p2 = (C_15_fu_1002_p3 & C_14_fu_945_p3);
assign and_ln126_1_fu_368_p2 = (E_fu_94 & E_12_fu_102);
assign and_ln126_2_fu_540_p2 = (or_ln126_3_fu_535_p2 & A_8_reg_1144);
assign and_ln126_3_fu_545_p2 = (C_reg_1137 & C_11_fu_529_p3);
assign and_ln126_4_fu_603_p2 = (temp_reg_1218 & or_ln126_5_fu_598_p2);
assign and_ln126_5_fu_608_p2 = (E_22_reg_1174 & C_11_fu_529_p3);
assign and_ln126_6_fu_685_p2 = (temp_9_reg_1283 & or_ln126_8_fu_680_p2);
assign and_ln126_7_fu_690_p2 = (E_22_reg_1174 & D_fu_660_p3);
assign and_ln126_8_fu_752_p2 = (or_ln126_11_fu_748_p2 & B_20_reg_1313);
assign and_ln126_9_fu_757_p2 = (D_reg_1321 & C_12_reg_1353);
assign and_ln126_fu_362_p2 = (or_ln126_fu_356_p2 & B_5_fu_98);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
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
assign ap_block_pp0_stage5_01001 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign icmp_ln124_fu_454_p2 = ((or_ln1_fu_446_p3 == 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln100_2_fu_324_p4 = {{i_fu_110[5:2]}};
assign lshr_ln126_10_fu_936_p4 = {{A_reg_1344[31:2]}};
assign lshr_ln126_14_fu_910_p4 = {{temp_11_fu_887_p2[31:2]}};
assign lshr_ln126_3_fu_418_p4 = {{B_fu_106[31:2]}};
assign lshr_ln126_8_fu_739_p4 = {{A_reg_1344[31:27]}};
assign lshr_ln126_9_fu_844_p4 = {{B_20_reg_1313[31:2]}};
assign lshr_ln126_s_fu_799_p4 = {{temp_10_fu_790_p2[31:27]}};
assign lshr_ln5_fu_346_p4 = {{B_fu_106[31:27]}};
assign or_ln126_10_fu_701_p3 = {{trunc_ln126_6_reg_1329}, {lshr_ln126_6_reg_1334}};
assign or_ln126_11_fu_748_p2 = (D_reg_1321 | C_12_reg_1353);
assign or_ln126_12_fu_761_p2 = (and_ln126_9_fu_757_p2 | and_ln126_8_fu_752_p2);
assign or_ln126_13_fu_767_p3 = {{trunc_ln126_8_fu_736_p1}, {lshr_ln126_8_fu_739_p4}};
assign or_ln126_14_fu_861_p2 = (C_13_fu_853_p3 | C_12_reg_1353);
assign or_ln126_15_fu_876_p2 = (and_ln126_11_fu_871_p2 | and_ln126_10_fu_866_p2);
assign or_ln126_16_fu_809_p3 = {{trunc_ln126_10_fu_795_p1}, {lshr_ln126_s_fu_799_p4}};
assign or_ln126_17_fu_953_p2 = (C_14_fu_945_p3 | C_13_reg_1397);
assign or_ln126_18_fu_968_p2 = (and_ln126_13_fu_963_p2 | and_ln126_12_fu_958_p2);
assign or_ln126_19_fu_974_p3 = {{trunc_ln126_12_reg_1409}, {lshr_ln126_11_reg_1414}};
assign or_ln126_1_fu_374_p2 = (and_ln126_fu_362_p2 | and_ln126_1_fu_368_p2);
assign or_ln126_20_fu_1022_p2 = (C_15_fu_1002_p3 | C_14_fu_945_p3);
assign or_ln126_21_fu_1039_p2 = (and_ln126_15_fu_1033_p2 | and_ln126_14_fu_1028_p2);
assign or_ln126_22_fu_1055_p3 = {{trunc_ln126_14_reg_1424}, {lshr_ln126_13_reg_1429}};
assign or_ln126_2_fu_380_p3 = {{trunc_ln126_fu_342_p1}, {lshr_ln5_fu_346_p4}};
assign or_ln126_3_fu_535_p2 = (C_reg_1137 | C_11_fu_529_p3);
assign or_ln126_4_fu_550_p2 = (and_ln126_3_fu_545_p2 | and_ln126_2_fu_540_p2);
assign or_ln126_5_fu_598_p2 = (E_22_reg_1174 | C_11_fu_529_p3);
assign or_ln126_6_fu_556_p3 = {{trunc_ln126_2_reg_1223}, {lshr_ln126_2_reg_1228}};
assign or_ln126_7_fu_613_p2 = (and_ln126_5_fu_608_p2 | and_ln126_4_fu_603_p2);
assign or_ln126_8_fu_680_p2 = (E_22_reg_1174 | D_fu_660_p3);
assign or_ln126_9_fu_695_p2 = (and_ln126_7_fu_690_p2 | and_ln126_6_fu_685_p2);
assign or_ln126_fu_356_p2 = (E_fu_94 | E_12_fu_102);
assign or_ln126_s_fu_633_p3 = {{trunc_ln126_4_reg_1288}, {lshr_ln126_4_reg_1293}};
assign or_ln1_fu_446_p3 = {{tmp_s_fu_436_p4}, {3'd4}};
assign or_ln2_fu_460_p3 = {{tmp_s_fu_436_p4}, {1'd1}};
assign temp_10_fu_790_p2 = (add_ln126_18_reg_1367 + add_ln126_16_fu_786_p2);
assign temp_11_fu_887_p2 = (add_ln126_21_reg_1382 + add_ln126_22_fu_882_p2);
assign temp_12_fu_996_p2 = (add_ln126_25_fu_991_p2 + add_ln126_26_fu_985_p2);
assign temp_13_fu_1080_p2 = (add_ln126_30_reg_1439 + add_ln126_28_fu_1076_p2);
assign temp_9_fu_578_p2 = (add_ln126_5_fu_573_p2 + add_ln126_6_fu_567_p2);
assign temp_fu_496_p2 = (add_ln126_2_reg_1154 + add_ln126_fu_490_p2);
assign tmp_s_fu_436_p4 = {{i_fu_110[5:3]}};
assign trunc_ln126_10_fu_795_p1 = temp_10_fu_790_p2[26:0];
assign trunc_ln126_11_fu_933_p1 = A_reg_1344[1:0];
assign trunc_ln126_12_fu_892_p1 = temp_11_fu_887_p2[26:0];
assign trunc_ln126_13_fu_827_p1 = temp_10_fu_790_p2[1:0];
assign trunc_ln126_14_fu_1008_p1 = temp_12_fu_996_p2[26:0];
assign trunc_ln126_15_fu_906_p1 = temp_11_fu_887_p2[1:0];
assign trunc_ln126_1_fu_400_p1 = B_5_fu_98[1:0];
assign trunc_ln126_2_fu_501_p1 = temp_fu_496_p2[26:0];
assign trunc_ln126_3_fu_414_p1 = B_fu_106[1:0];
assign trunc_ln126_4_fu_584_p1 = temp_9_fu_578_p2[26:0];
assign trunc_ln126_5_fu_515_p1 = temp_fu_496_p2[1:0];
assign trunc_ln126_6_fu_666_p1 = B_20_fu_654_p2[26:0];
assign trunc_ln126_7_fu_619_p1 = temp_9_fu_578_p2[1:0];
assign trunc_ln126_8_fu_736_p1 = A_reg_1344[26:0];
assign trunc_ln126_9_fu_841_p1 = B_20_reg_1313[1:0];
assign trunc_ln126_fu_342_p1 = B_fu_106[26:0];
assign zext_ln100_fu_334_p1 = lshr_ln100_2_fu_324_p4;
assign zext_ln124_fu_468_p1 = or_ln2_fu_460_p3;
endmodule 