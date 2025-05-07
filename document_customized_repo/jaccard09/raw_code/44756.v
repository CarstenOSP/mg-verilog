module ss_sort_hist (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_q0,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_q0,b_0_address0,b_0_ce0,b_0_q0,b_0_address1,b_0_ce1,b_0_q1,b_1_address0,b_1_ce0,b_1_q0,b_1_address1,b_1_ce1,b_1_q1,b_2_address0,b_2_ce0,b_2_q0,b_2_address1,b_2_ce1,b_2_q1,b_3_address0,b_3_ce0,b_3_q0,b_3_address1,b_3_ce1,b_3_q1,exp); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [8:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [8:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
input  [31:0] bucket_2_q0;
output  [8:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
input  [31:0] bucket_3_q0;
output  [8:0] b_0_address0;
output   b_0_ce0;
input  [31:0] b_0_q0;
output  [8:0] b_0_address1;
output   b_0_ce1;
input  [31:0] b_0_q1;
output  [8:0] b_1_address0;
output   b_1_ce0;
input  [31:0] b_1_q0;
output  [8:0] b_1_address1;
output   b_1_ce1;
input  [31:0] b_1_q1;
output  [8:0] b_2_address0;
output   b_2_ce0;
input  [31:0] b_2_q0;
output  [8:0] b_2_address1;
output   b_2_ce1;
input  [31:0] b_2_q1;
output  [8:0] b_3_address0;
output   b_3_ce0;
input  [31:0] b_3_q0;
output  [8:0] b_3_address1;
output   b_3_ce1;
input  [31:0] b_3_q1;
input  [4:0] exp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_1_reg_1042;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [31:0] reg_404;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_408;
reg   [31:0] reg_412;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [31:0] reg_416;
reg   [31:0] reg_420;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] reg_424;
wire   [31:0] exp_cast6_fu_466_p1;
reg   [31:0] exp_cast6_reg_1018;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] blockID_2_reg_1036;
wire   [8:0] or_ln_fu_504_p3;
reg   [8:0] or_ln_reg_1051;
wire   [6:0] tmp_s_fu_520_p4;
reg   [6:0] tmp_s_reg_1091;
reg   [31:0] b_1_load_reg_1103;
reg   [31:0] b_2_load_reg_1108;
reg   [31:0] b_3_load_reg_1113;
reg   [31:0] b_1_load_4_reg_1118;
reg   [31:0] b_2_load_4_reg_1123;
reg   [31:0] b_3_load_4_reg_1128;
wire   [8:0] or_ln57_1_fu_545_p3;
reg   [8:0] or_ln57_1_reg_1138;
wire   [1:0] trunc_ln57_fu_564_p1;
reg   [1:0] trunc_ln57_reg_1178;
wire   [9:0] add_ln57_fu_568_p2;
reg   [9:0] add_ln57_reg_1183;
wire   [1:0] trunc_ln57_4_fu_574_p1;
reg   [1:0] trunc_ln57_4_reg_1188;
reg   [31:0] b_1_load_5_reg_1193;
reg   [31:0] b_2_load_5_reg_1198;
reg   [31:0] b_3_load_5_reg_1203;
reg   [31:0] b_1_load_6_reg_1208;
reg   [31:0] b_2_load_6_reg_1213;
reg   [31:0] b_3_load_6_reg_1218;
reg   [8:0] bucket_1_addr_reg_1223;
wire    ap_block_pp0_stage3_11001;
wire   [10:0] zext_ln57_2_fu_589_p1;
reg   [10:0] zext_ln57_2_reg_1228;
reg   [8:0] bucket_2_addr_reg_1235;
wire   [1:0] trunc_ln57_8_fu_623_p1;
reg   [1:0] trunc_ln57_8_reg_1240;
wire   [9:0] add_ln57_5_fu_627_p2;
reg   [9:0] add_ln57_5_reg_1245;
wire   [1:0] trunc_ln57_12_fu_633_p1;
reg   [1:0] trunc_ln57_12_reg_1250;
wire   [1:0] trunc_ln57_1_fu_641_p1;
reg   [1:0] trunc_ln57_1_reg_1255;
wire   [1:0] trunc_ln57_5_fu_649_p1;
reg   [1:0] trunc_ln57_5_reg_1260;
reg   [8:0] bucket_3_addr_reg_1265;
wire   [10:0] zext_ln57_6_fu_664_p1;
reg   [10:0] zext_ln57_6_reg_1270;
reg   [8:0] bucket_0_addr_reg_1277;
wire   [1:0] trunc_ln57_9_fu_699_p1;
reg   [1:0] trunc_ln57_9_reg_1282;
wire   [1:0] trunc_ln57_13_fu_707_p1;
reg   [1:0] trunc_ln57_13_reg_1287;
reg   [8:0] bucket_1_addr_8_reg_1292;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [1:0] trunc_ln57_2_fu_726_p1;
reg   [1:0] trunc_ln57_2_reg_1297;
reg   [8:0] bucket_2_addr_8_reg_1302;
wire   [1:0] trunc_ln57_6_fu_761_p1;
reg   [1:0] trunc_ln57_6_reg_1307;
reg   [8:0] bucket_3_addr_8_reg_1312;
wire   [1:0] trunc_ln57_10_fu_780_p1;
reg   [1:0] trunc_ln57_10_reg_1317;
reg   [8:0] bucket_0_addr_8_reg_1322;
wire   [1:0] trunc_ln57_14_fu_815_p1;
reg   [1:0] trunc_ln57_14_reg_1327;
wire   [1:0] trunc_ln57_3_fu_823_p1;
reg   [1:0] trunc_ln57_3_reg_1332;
wire   [1:0] trunc_ln57_7_fu_831_p1;
reg   [1:0] trunc_ln57_7_reg_1337;
reg   [8:0] bucket_1_addr_9_reg_1342;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [8:0] bucket_2_addr_9_reg_1347;
reg   [8:0] lshr_ln52_7_reg_1352;
wire   [1:0] trunc_ln57_11_fu_899_p1;
reg   [1:0] trunc_ln57_11_reg_1357;
reg   [8:0] lshr_ln52_13_reg_1362;
reg   [8:0] lshr_ln52_14_reg_1367;
reg   [8:0] bucket_3_addr_9_reg_1372;
reg   [8:0] bucket_0_addr_9_reg_1377;
reg   [8:0] bucket_1_addr_10_reg_1382;
reg   [8:0] bucket_2_addr_10_reg_1387;
reg   [8:0] bucket_3_addr_10_reg_1392;
reg   [8:0] bucket_0_addr_10_reg_1397;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln54_fu_486_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln57_1_fu_512_p1;
wire   [63:0] zext_ln57_3_fu_537_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln57_5_fu_553_p1;
wire   [63:0] zext_ln52_fu_584_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln52_4_fu_615_p1;
wire   [63:0] zext_ln52_8_fu_659_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln52_12_fu_690_p1;
wire   [63:0] zext_ln52_1_fu_717_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln52_5_fu_752_p1;
wire   [63:0] zext_ln52_9_fu_771_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln52_13_fu_806_p1;
wire   [63:0] zext_ln52_2_fu_841_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln52_6_fu_868_p1;
wire   [63:0] zext_ln52_10_fu_962_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln52_14_fu_967_p1;
wire   [63:0] zext_ln52_3_fu_987_p1;
wire   [63:0] zext_ln52_7_fu_992_p1;
wire   [63:0] zext_ln52_11_fu_1002_p1;
wire   [63:0] zext_ln52_15_fu_1007_p1;
reg   [9:0] blockID_fu_82;
wire   [9:0] add_ln54_fu_971_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID_2;
reg    b_0_ce1_local;
reg   [8:0] b_0_address1_local;
reg    b_0_ce0_local;
reg   [8:0] b_0_address0_local;
reg    b_1_ce1_local;
reg   [8:0] b_1_address1_local;
reg    b_1_ce0_local;
reg   [8:0] b_1_address0_local;
reg    b_2_ce1_local;
reg   [8:0] b_2_address1_local;
reg    b_2_ce0_local;
reg   [8:0] b_2_address0_local;
reg    b_3_ce1_local;
reg   [8:0] b_3_address1_local;
reg    b_3_ce0_local;
reg   [8:0] b_3_address0_local;
reg    bucket_1_ce0_local;
reg   [8:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
wire   [31:0] grp_fu_438_p2;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage2;
reg    bucket_2_ce0_local;
reg   [8:0] bucket_2_address0_local;
reg    bucket_2_we0_local;
wire   [31:0] grp_fu_445_p2;
reg    bucket_3_ce0_local;
reg   [8:0] bucket_3_address0_local;
reg    bucket_3_we0_local;
wire   [31:0] grp_fu_452_p2;
reg    bucket_0_ce0_local;
reg   [8:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
wire   [31:0] grp_fu_459_p2;
wire   [7:0] tmp_fu_494_p4;
wire   [8:0] or_ln54_1_fu_529_p3;
wire   [31:0] grp_fu_428_p2;
wire   [9:0] zext_ln57_fu_561_p1;
wire   [31:0] grp_fu_433_p2;
wire   [8:0] lshr_ln_fu_578_p3;
wire   [10:0] shl_ln_fu_592_p3;
wire   [10:0] bucket_indx_fu_599_p2;
wire   [8:0] lshr_ln52_4_fu_605_p4;
wire   [9:0] zext_ln57_4_fu_620_p1;
wire   [31:0] ashr_ln57_1_fu_637_p2;
wire   [31:0] ashr_ln57_5_fu_645_p2;
wire   [8:0] lshr_ln52_8_fu_653_p3;
wire   [10:0] shl_ln57_4_fu_667_p3;
wire   [10:0] bucket_indx_4_fu_674_p2;
wire   [8:0] lshr_ln52_11_fu_680_p4;
wire   [31:0] ashr_ln57_9_fu_695_p2;
wire   [31:0] ashr_ln57_13_fu_703_p2;
wire   [8:0] lshr_ln52_1_fu_711_p3;
wire   [31:0] ashr_ln57_2_fu_722_p2;
wire   [10:0] shl_ln57_1_fu_730_p3;
wire   [10:0] bucket_indx_1_fu_737_p2;
wire   [8:0] lshr_ln52_5_fu_742_p4;
wire   [31:0] ashr_ln57_6_fu_757_p2;
wire   [8:0] lshr_ln52_9_fu_765_p3;
wire   [31:0] ashr_ln57_10_fu_776_p2;
wire   [10:0] shl_ln57_5_fu_784_p3;
wire   [10:0] bucket_indx_5_fu_791_p2;
wire   [8:0] lshr_ln52_12_fu_796_p4;
wire   [31:0] ashr_ln57_14_fu_811_p2;
wire   [31:0] ashr_ln57_3_fu_819_p2;
wire   [31:0] ashr_ln57_7_fu_827_p2;
wire   [8:0] lshr_ln52_2_fu_835_p3;
wire   [10:0] shl_ln57_2_fu_846_p3;
wire   [10:0] bucket_indx_2_fu_853_p2;
wire   [8:0] lshr_ln52_6_fu_858_p4;
wire   [10:0] shl_ln57_3_fu_873_p3;
wire   [10:0] bucket_indx_3_fu_880_p2;
wire   [31:0] ashr_ln57_11_fu_895_p2;
wire   [10:0] shl_ln57_6_fu_903_p3;
wire   [10:0] bucket_indx_6_fu_910_p2;
wire   [31:0] ashr_ln57_15_fu_925_p2;
wire   [1:0] trunc_ln57_15_fu_929_p1;
wire   [10:0] shl_ln57_7_fu_933_p3;
wire   [10:0] bucket_indx_7_fu_941_p2;
wire   [8:0] lshr_ln52_s_fu_956_p3;
wire   [8:0] lshr_ln52_3_fu_981_p3;
wire   [8:0] lshr_ln52_10_fu_996_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 blockID_fu_82 = 10'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_fu_82 <= 10'd0;
    end else if (((tmp_1_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        blockID_fu_82 <= add_ln54_fu_971_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln57_5_reg_1245[9 : 2] <= add_ln57_5_fu_627_p2[9 : 2];
        bucket_1_addr_reg_1223 <= zext_ln52_fu_584_p1;
        bucket_2_addr_reg_1235 <= zext_ln52_4_fu_615_p1;
        trunc_ln57_12_reg_1250 <= trunc_ln57_12_fu_633_p1;
        trunc_ln57_8_reg_1240 <= trunc_ln57_8_fu_623_p1;
        zext_ln57_2_reg_1228[9 : 1] <= zext_ln57_2_fu_589_p1[9 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln57_reg_1183[9 : 1] <= add_ln57_fu_568_p2[9 : 1];
        trunc_ln57_4_reg_1188 <= trunc_ln57_4_fu_574_p1;
        trunc_ln57_reg_1178 <= trunc_ln57_fu_564_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_1_load_4_reg_1118 <= b_1_q0;
        b_1_load_reg_1103 <= b_1_q1;
        b_2_load_4_reg_1123 <= b_2_q0;
        b_2_load_reg_1108 <= b_2_q1;
        b_3_load_4_reg_1128 <= b_3_q0;
        b_3_load_reg_1113 <= b_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_1_load_5_reg_1193 <= b_1_q1;
        b_1_load_6_reg_1208 <= b_1_q0;
        b_2_load_5_reg_1198 <= b_2_q1;
        b_2_load_6_reg_1213 <= b_2_q0;
        b_3_load_5_reg_1203 <= b_3_q1;
        b_3_load_6_reg_1218 <= b_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_2_reg_1036 <= ap_sig_allocacmp_blockID_2;
        bucket_1_addr_10_reg_1382 <= zext_ln52_3_fu_987_p1;
        bucket_2_addr_10_reg_1387 <= zext_ln52_7_fu_992_p1;
        exp_cast6_reg_1018[4 : 0] <= exp_cast6_fu_466_p1[4 : 0];
        or_ln_reg_1051[8 : 1] <= or_ln_fu_504_p3[8 : 1];
        tmp_1_reg_1042 <= ap_sig_allocacmp_blockID_2[32'd9];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_addr_10_reg_1397 <= zext_ln52_15_fu_1007_p1;
        bucket_3_addr_10_reg_1392 <= zext_ln52_11_fu_1002_p1;
        or_ln57_1_reg_1138[8 : 2] <= or_ln57_1_fu_545_p3[8 : 2];
        tmp_s_reg_1091 <= {{blockID_2_reg_1036[8:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_0_addr_8_reg_1322 <= zext_ln52_13_fu_806_p1;
        bucket_3_addr_8_reg_1312 <= zext_ln52_9_fu_771_p1;
        trunc_ln57_10_reg_1317 <= trunc_ln57_10_fu_780_p1;
        trunc_ln57_14_reg_1327 <= trunc_ln57_14_fu_815_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_0_addr_9_reg_1377 <= zext_ln52_14_fu_967_p1;
        bucket_3_addr_9_reg_1372 <= zext_ln52_10_fu_962_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_0_addr_reg_1277 <= zext_ln52_12_fu_690_p1;
        bucket_3_addr_reg_1265 <= zext_ln52_8_fu_659_p1;
        trunc_ln57_1_reg_1255 <= trunc_ln57_1_fu_641_p1;
        trunc_ln57_5_reg_1260 <= trunc_ln57_5_fu_649_p1;
        zext_ln57_6_reg_1270[9 : 2] <= zext_ln57_6_fu_664_p1[9 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_1_addr_8_reg_1292 <= zext_ln52_1_fu_717_p1;
        bucket_2_addr_8_reg_1302 <= zext_ln52_5_fu_752_p1;
        trunc_ln57_2_reg_1297 <= trunc_ln57_2_fu_726_p1;
        trunc_ln57_6_reg_1307 <= trunc_ln57_6_fu_761_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_1_addr_9_reg_1342 <= zext_ln52_2_fu_841_p1;
        bucket_2_addr_9_reg_1347 <= zext_ln52_6_fu_868_p1;
        lshr_ln52_13_reg_1362 <= {{bucket_indx_6_fu_910_p2[10:2]}};
        lshr_ln52_14_reg_1367 <= {{bucket_indx_7_fu_941_p2[10:2]}};
        lshr_ln52_7_reg_1352 <= {{bucket_indx_3_fu_880_p2[10:2]}};
        trunc_ln57_11_reg_1357 <= trunc_ln57_11_fu_899_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_404 <= b_0_q1;
        reg_408 <= b_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_412 <= bucket_1_q0;
        reg_416 <= bucket_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_420 <= bucket_3_q0;
        reg_424 <= bucket_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        trunc_ln57_13_reg_1287 <= trunc_ln57_13_fu_707_p1;
        trunc_ln57_9_reg_1282 <= trunc_ln57_9_fu_699_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln57_3_reg_1332 <= trunc_ln57_3_fu_823_p1;
        trunc_ln57_7_reg_1337 <= trunc_ln57_7_fu_831_p1;
    end
end
always @ (*) begin
    if (((tmp_1_reg_1042 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_blockID_2 = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_2 = blockID_fu_82;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_0_address0_local = zext_ln57_5_fu_553_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_0_address0_local = zext_ln57_1_fu_512_p1;
        end else begin
            b_0_address0_local = 'bx;
        end
    end else begin
        b_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_0_address1_local = zext_ln57_3_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_0_address1_local = zext_ln54_fu_486_p1;
        end else begin
            b_0_address1_local = 'bx;
        end
    end else begin
        b_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_0_ce0_local = 1'b1;
    end else begin
        b_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_0_ce1_local = 1'b1;
    end else begin
        b_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_1_address0_local = zext_ln57_5_fu_553_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_1_address0_local = zext_ln57_1_fu_512_p1;
        end else begin
            b_1_address0_local = 'bx;
        end
    end else begin
        b_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_1_address1_local = zext_ln57_3_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_1_address1_local = zext_ln54_fu_486_p1;
        end else begin
            b_1_address1_local = 'bx;
        end
    end else begin
        b_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_1_ce0_local = 1'b1;
    end else begin
        b_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_1_ce1_local = 1'b1;
    end else begin
        b_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_2_address0_local = zext_ln57_5_fu_553_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_2_address0_local = zext_ln57_1_fu_512_p1;
        end else begin
            b_2_address0_local = 'bx;
        end
    end else begin
        b_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_2_address1_local = zext_ln57_3_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_2_address1_local = zext_ln54_fu_486_p1;
        end else begin
            b_2_address1_local = 'bx;
        end
    end else begin
        b_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_2_ce0_local = 1'b1;
    end else begin
        b_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_2_ce1_local = 1'b1;
    end else begin
        b_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_3_address0_local = zext_ln57_5_fu_553_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_3_address0_local = zext_ln57_1_fu_512_p1;
        end else begin
            b_3_address0_local = 'bx;
        end
    end else begin
        b_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_3_address1_local = zext_ln57_3_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_3_address1_local = zext_ln54_fu_486_p1;
        end else begin
            b_3_address1_local = 'bx;
        end
    end else begin
        b_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_3_ce0_local = 1'b1;
    end else begin
        b_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_3_ce1_local = 1'b1;
    end else begin
        b_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = bucket_0_addr_10_reg_1397;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address0_local = zext_ln52_15_fu_1007_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = bucket_0_addr_9_reg_1377;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_0_address0_local = zext_ln52_14_fu_967_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_0_address0_local = bucket_0_addr_8_reg_1322;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_0_address0_local = zext_ln52_13_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_0_address0_local = bucket_0_addr_reg_1277;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_0_address0_local = zext_ln52_12_fu_690_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_1_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address0_local = bucket_1_addr_10_reg_1382;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = zext_ln52_3_fu_987_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_1_address0_local = bucket_1_addr_9_reg_1342;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_1_address0_local = zext_ln52_2_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_1_address0_local = bucket_1_addr_8_reg_1292;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_1_address0_local = zext_ln52_1_fu_717_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_address0_local = bucket_1_addr_reg_1223;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address0_local = zext_ln52_fu_584_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_1_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_1_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_2_address0_local = bucket_2_addr_10_reg_1387;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address0_local = zext_ln52_7_fu_992_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_2_address0_local = bucket_2_addr_9_reg_1347;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_2_address0_local = zext_ln52_6_fu_868_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_2_address0_local = bucket_2_addr_8_reg_1302;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_2_address0_local = zext_ln52_5_fu_752_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_2_address0_local = bucket_2_addr_reg_1235;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address0_local = zext_ln52_4_fu_615_p1;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_1_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_1_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_3_address0_local = bucket_3_addr_10_reg_1392;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_address0_local = zext_ln52_11_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address0_local = bucket_3_addr_9_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_3_address0_local = zext_ln52_10_fu_962_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_3_address0_local = bucket_3_addr_8_reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_3_address0_local = zext_ln52_9_fu_771_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_3_address0_local = bucket_3_addr_reg_1265;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_3_address0_local = zext_ln52_8_fu_659_p1;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_1_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln54_fu_971_p2 = (blockID_2_reg_1036 + 10'd4);
assign add_ln57_5_fu_627_p2 = (zext_ln57_4_fu_620_p1 + 10'd1);
assign add_ln57_fu_568_p2 = (zext_ln57_fu_561_p1 + 10'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign ashr_ln57_10_fu_776_p2 = $signed(b_2_load_5_reg_1198) >>> exp_cast6_reg_1018;
assign ashr_ln57_11_fu_895_p2 = $signed(b_3_load_5_reg_1203) >>> exp_cast6_reg_1018;
assign ashr_ln57_13_fu_703_p2 = $signed(b_1_load_6_reg_1208) >>> exp_cast6_reg_1018;
assign ashr_ln57_14_fu_811_p2 = $signed(b_2_load_6_reg_1213) >>> exp_cast6_reg_1018;
assign ashr_ln57_15_fu_925_p2 = $signed(b_3_load_6_reg_1218) >>> exp_cast6_reg_1018;
assign ashr_ln57_1_fu_637_p2 = $signed(b_1_load_reg_1103) >>> exp_cast6_reg_1018;
assign ashr_ln57_2_fu_722_p2 = $signed(b_2_load_reg_1108) >>> exp_cast6_reg_1018;
assign ashr_ln57_3_fu_819_p2 = $signed(b_3_load_reg_1113) >>> exp_cast6_reg_1018;
assign ashr_ln57_5_fu_645_p2 = $signed(b_1_load_4_reg_1118) >>> exp_cast6_reg_1018;
assign ashr_ln57_6_fu_757_p2 = $signed(b_2_load_4_reg_1123) >>> exp_cast6_reg_1018;
assign ashr_ln57_7_fu_827_p2 = $signed(b_3_load_4_reg_1128) >>> exp_cast6_reg_1018;
assign ashr_ln57_9_fu_695_p2 = $signed(b_1_load_5_reg_1193) >>> exp_cast6_reg_1018;
assign b_0_address0 = b_0_address0_local;
assign b_0_address1 = b_0_address1_local;
assign b_0_ce0 = b_0_ce0_local;
assign b_0_ce1 = b_0_ce1_local;
assign b_1_address0 = b_1_address0_local;
assign b_1_address1 = b_1_address1_local;
assign b_1_ce0 = b_1_ce0_local;
assign b_1_ce1 = b_1_ce1_local;
assign b_2_address0 = b_2_address0_local;
assign b_2_address1 = b_2_address1_local;
assign b_2_ce0 = b_2_ce0_local;
assign b_2_ce1 = b_2_ce1_local;
assign b_3_address0 = b_3_address0_local;
assign b_3_address1 = b_3_address1_local;
assign b_3_ce0 = b_3_ce0_local;
assign b_3_ce1 = b_3_ce1_local;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_d0 = grp_fu_459_p2;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_d0 = grp_fu_438_p2;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_2_address0 = bucket_2_address0_local;
assign bucket_2_ce0 = bucket_2_ce0_local;
assign bucket_2_d0 = grp_fu_445_p2;
assign bucket_2_we0 = bucket_2_we0_local;
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_d0 = grp_fu_452_p2;
assign bucket_3_we0 = bucket_3_we0_local;
assign bucket_indx_1_fu_737_p2 = (shl_ln57_1_fu_730_p3 + zext_ln57_2_reg_1228);
assign bucket_indx_2_fu_853_p2 = (shl_ln57_2_fu_846_p3 + zext_ln57_2_reg_1228);
assign bucket_indx_3_fu_880_p2 = (shl_ln57_3_fu_873_p3 + zext_ln57_2_reg_1228);
assign bucket_indx_4_fu_674_p2 = (shl_ln57_4_fu_667_p3 + zext_ln57_6_fu_664_p1);
assign bucket_indx_5_fu_791_p2 = (shl_ln57_5_fu_784_p3 + zext_ln57_6_reg_1270);
assign bucket_indx_6_fu_910_p2 = (shl_ln57_6_fu_903_p3 + zext_ln57_6_reg_1270);
assign bucket_indx_7_fu_941_p2 = (shl_ln57_7_fu_933_p3 + zext_ln57_6_reg_1270);
assign bucket_indx_fu_599_p2 = (shl_ln_fu_592_p3 + zext_ln57_2_fu_589_p1);
assign exp_cast6_fu_466_p1 = exp;
assign grp_fu_428_p2 = $signed(reg_404) >>> exp_cast6_reg_1018;
assign grp_fu_433_p2 = $signed(reg_408) >>> exp_cast6_reg_1018;
assign grp_fu_438_p2 = (reg_412 + 32'd1);
assign grp_fu_445_p2 = (reg_416 + 32'd1);
assign grp_fu_452_p2 = (reg_420 + 32'd1);
assign grp_fu_459_p2 = (reg_424 + 32'd1);
assign lshr_ln52_10_fu_996_p3 = {{trunc_ln57_11_reg_1357}, {tmp_s_reg_1091}};
assign lshr_ln52_11_fu_680_p4 = {{bucket_indx_4_fu_674_p2[10:2]}};
assign lshr_ln52_12_fu_796_p4 = {{bucket_indx_5_fu_791_p2[10:2]}};
assign lshr_ln52_1_fu_711_p3 = {{trunc_ln57_1_reg_1255}, {tmp_s_reg_1091}};
assign lshr_ln52_2_fu_835_p3 = {{trunc_ln57_2_reg_1297}, {tmp_s_reg_1091}};
assign lshr_ln52_3_fu_981_p3 = {{trunc_ln57_3_reg_1332}, {tmp_s_reg_1091}};
assign lshr_ln52_4_fu_605_p4 = {{bucket_indx_fu_599_p2[10:2]}};
assign lshr_ln52_5_fu_742_p4 = {{bucket_indx_1_fu_737_p2[10:2]}};
assign lshr_ln52_6_fu_858_p4 = {{bucket_indx_2_fu_853_p2[10:2]}};
assign lshr_ln52_8_fu_653_p3 = {{trunc_ln57_8_reg_1240}, {tmp_s_reg_1091}};
assign lshr_ln52_9_fu_765_p3 = {{trunc_ln57_9_reg_1282}, {tmp_s_reg_1091}};
assign lshr_ln52_s_fu_956_p3 = {{trunc_ln57_10_reg_1317}, {tmp_s_reg_1091}};
assign lshr_ln_fu_578_p3 = {{trunc_ln57_reg_1178}, {tmp_s_reg_1091}};
assign or_ln54_1_fu_529_p3 = {{tmp_s_fu_520_p4}, {2'd2}};
assign or_ln57_1_fu_545_p3 = {{tmp_s_fu_520_p4}, {2'd3}};
assign or_ln_fu_504_p3 = {{tmp_fu_494_p4}, {1'd1}};
assign shl_ln57_1_fu_730_p3 = {{trunc_ln57_5_reg_1260}, {9'd0}};
assign shl_ln57_2_fu_846_p3 = {{trunc_ln57_6_reg_1307}, {9'd0}};
assign shl_ln57_3_fu_873_p3 = {{trunc_ln57_7_reg_1337}, {9'd0}};
assign shl_ln57_4_fu_667_p3 = {{trunc_ln57_12_reg_1250}, {9'd0}};
assign shl_ln57_5_fu_784_p3 = {{trunc_ln57_13_reg_1287}, {9'd0}};
assign shl_ln57_6_fu_903_p3 = {{trunc_ln57_14_reg_1327}, {9'd0}};
assign shl_ln57_7_fu_933_p3 = {{trunc_ln57_15_fu_929_p1}, {9'd0}};
assign shl_ln_fu_592_p3 = {{trunc_ln57_4_reg_1188}, {9'd0}};
assign tmp_fu_494_p4 = {{ap_sig_allocacmp_blockID_2[8:1]}};
assign tmp_s_fu_520_p4 = {{blockID_2_reg_1036[8:2]}};
assign trunc_ln57_10_fu_780_p1 = ashr_ln57_10_fu_776_p2[1:0];
assign trunc_ln57_11_fu_899_p1 = ashr_ln57_11_fu_895_p2[1:0];
assign trunc_ln57_12_fu_633_p1 = grp_fu_433_p2[1:0];
assign trunc_ln57_13_fu_707_p1 = ashr_ln57_13_fu_703_p2[1:0];
assign trunc_ln57_14_fu_815_p1 = ashr_ln57_14_fu_811_p2[1:0];
assign trunc_ln57_15_fu_929_p1 = ashr_ln57_15_fu_925_p2[1:0];
assign trunc_ln57_1_fu_641_p1 = ashr_ln57_1_fu_637_p2[1:0];
assign trunc_ln57_2_fu_726_p1 = ashr_ln57_2_fu_722_p2[1:0];
assign trunc_ln57_3_fu_823_p1 = ashr_ln57_3_fu_819_p2[1:0];
assign trunc_ln57_4_fu_574_p1 = grp_fu_433_p2[1:0];
assign trunc_ln57_5_fu_649_p1 = ashr_ln57_5_fu_645_p2[1:0];
assign trunc_ln57_6_fu_761_p1 = ashr_ln57_6_fu_757_p2[1:0];
assign trunc_ln57_7_fu_831_p1 = ashr_ln57_7_fu_827_p2[1:0];
assign trunc_ln57_8_fu_623_p1 = grp_fu_428_p2[1:0];
assign trunc_ln57_9_fu_699_p1 = ashr_ln57_9_fu_695_p2[1:0];
assign trunc_ln57_fu_564_p1 = grp_fu_428_p2[1:0];
assign zext_ln52_10_fu_962_p1 = lshr_ln52_s_fu_956_p3;
assign zext_ln52_11_fu_1002_p1 = lshr_ln52_10_fu_996_p3;
assign zext_ln52_12_fu_690_p1 = lshr_ln52_11_fu_680_p4;
assign zext_ln52_13_fu_806_p1 = lshr_ln52_12_fu_796_p4;
assign zext_ln52_14_fu_967_p1 = lshr_ln52_13_reg_1362;
assign zext_ln52_15_fu_1007_p1 = lshr_ln52_14_reg_1367;
assign zext_ln52_1_fu_717_p1 = lshr_ln52_1_fu_711_p3;
assign zext_ln52_2_fu_841_p1 = lshr_ln52_2_fu_835_p3;
assign zext_ln52_3_fu_987_p1 = lshr_ln52_3_fu_981_p3;
assign zext_ln52_4_fu_615_p1 = lshr_ln52_4_fu_605_p4;
assign zext_ln52_5_fu_752_p1 = lshr_ln52_5_fu_742_p4;
assign zext_ln52_6_fu_868_p1 = lshr_ln52_6_fu_858_p4;
assign zext_ln52_7_fu_992_p1 = lshr_ln52_7_reg_1352;
assign zext_ln52_8_fu_659_p1 = lshr_ln52_8_fu_653_p3;
assign zext_ln52_9_fu_771_p1 = lshr_ln52_9_fu_765_p3;
assign zext_ln52_fu_584_p1 = lshr_ln_fu_578_p3;
assign zext_ln54_fu_486_p1 = ap_sig_allocacmp_blockID_2;
assign zext_ln57_1_fu_512_p1 = or_ln_fu_504_p3;
assign zext_ln57_2_fu_589_p1 = add_ln57_reg_1183;
assign zext_ln57_3_fu_537_p1 = or_ln54_1_fu_529_p3;
assign zext_ln57_4_fu_620_p1 = or_ln57_1_reg_1138;
assign zext_ln57_5_fu_553_p1 = or_ln57_1_fu_545_p3;
assign zext_ln57_6_fu_664_p1 = add_ln57_5_reg_1245;
assign zext_ln57_fu_561_p1 = or_ln_reg_1051;
always @ (posedge ap_clk) begin
    exp_cast6_reg_1018[31:5] <= 27'b000000000000000000000000000;
    or_ln_reg_1051[0] <= 1'b1;
    or_ln57_1_reg_1138[1:0] <= 2'b11;
    add_ln57_reg_1183[0] <= 1'b0;
    zext_ln57_2_reg_1228[0] <= 1'b0;
    zext_ln57_2_reg_1228[10] <= 1'b0;
    add_ln57_5_reg_1245[1:0] <= 2'b00;
    zext_ln57_6_reg_1270[1:0] <= 2'b00;
    zext_ln57_6_reg_1270[10] <= 1'b0;
end
endmodule 