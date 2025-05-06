
module bicg_bicg_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,v1_0_address0,v1_0_ce0,v1_0_q0,v1_0_address1,v1_0_ce1,v1_0_q1,v1_1_address0,v1_1_ce0,v1_1_q0,v1_1_address1,v1_1_ce1,v1_1_q1,v141_address0,v141_ce0,v141_we0,v141_d0,v141_address1,v141_ce1,v141_we1,v141_d1,v142_address0,v142_ce0,v142_we0,v142_d0,v142_address1,v142_ce1,v142_we1,v142_d1);  
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
output  [5:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
output  [5:0] v0_address1;
output   v0_ce1;
input  [31:0] v0_q1;
output  [4:0] v1_0_address0;
output   v1_0_ce0;
input  [31:0] v1_0_q0;
output  [4:0] v1_0_address1;
output   v1_0_ce1;
input  [31:0] v1_0_q1;
output  [4:0] v1_1_address0;
output   v1_1_ce0;
input  [31:0] v1_1_q0;
output  [4:0] v1_1_address1;
output   v1_1_ce1;
input  [31:0] v1_1_q1;
output  [5:0] v141_address0;
output   v141_ce0;
output   v141_we0;
output  [31:0] v141_d0;
output  [5:0] v141_address1;
output   v141_ce1;
output   v141_we1;
output  [31:0] v141_d1;
output  [5:0] v142_address0;
output   v142_ce0;
output   v142_we0;
output  [31:0] v142_d0;
output  [5:0] v142_address1;
output   v142_ce1;
output   v142_we1;
output  [31:0] v142_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_697_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [31:0] reg_669;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_674;
reg   [31:0] reg_679;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_684;
reg   [6:0] v4_1_reg_1248;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_1257;
wire   [63:0] zext_ln27_fu_705_p1;
reg   [63:0] zext_ln27_reg_1261;
wire   [63:0] zext_ln28_fu_734_p1;
reg   [63:0] zext_ln28_reg_1277;
wire   [3:0] tmp_s_fu_739_p4;
reg   [3:0] tmp_s_reg_1293;
wire   [63:0] zext_ln28_1_fu_801_p1;
reg   [63:0] zext_ln28_1_reg_1309;
wire   [63:0] zext_ln28_3_fu_813_p1;
reg   [63:0] zext_ln28_3_reg_1320;
wire   [2:0] tmp_517_fu_818_p4;
reg   [2:0] tmp_517_reg_1331;
wire   [0:0] tmp_325_fu_827_p3;
reg   [0:0] tmp_325_reg_1339;
reg   [1:0] tmp_518_reg_1366;
reg   [1:0] tmp_519_reg_1382;
reg   [0:0] tmp_326_reg_1388;
wire   [63:0] zext_ln28_4_fu_916_p1;
reg   [63:0] zext_ln28_4_reg_1395;
wire   [63:0] zext_ln28_6_fu_931_p1;
reg   [63:0] zext_ln28_6_reg_1406;
wire   [63:0] zext_ln28_7_fu_993_p1;
reg   [63:0] zext_ln28_7_reg_1437;
wire   [63:0] zext_ln28_9_fu_1005_p1;
reg   [63:0] zext_ln28_9_reg_1448;
reg   [31:0] v6_10_reg_1459;
reg   [31:0] v6_11_reg_1464;
wire   [63:0] zext_ln28_10_fu_1064_p1;
reg   [63:0] zext_ln28_10_reg_1489;
wire   [63:0] zext_ln28_12_fu_1079_p1;
reg   [63:0] zext_ln28_12_reg_1500;
reg   [31:0] v6_14_reg_1511;
reg   [31:0] v6_15_reg_1516;
wire   [63:0] zext_ln28_13_fu_1114_p1;
reg   [63:0] zext_ln28_13_reg_1521;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] zext_ln28_15_fu_1129_p1;
reg   [63:0] zext_ln28_15_reg_1532;
wire   [63:0] zext_ln28_16_fu_1159_p1;
reg   [63:0] zext_ln28_16_reg_1543;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] zext_ln28_18_fu_1174_p1;
reg   [63:0] zext_ln28_18_reg_1554;
wire   [63:0] zext_ln28_19_fu_1206_p1;
reg   [63:0] zext_ln28_19_reg_1565;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] zext_ln28_21_fu_1218_p1;
reg   [63:0] zext_ln28_21_reg_1576;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_1_fu_720_p1;
wire   [63:0] zext_ln28_2_fu_757_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln28_5_fu_844_p1;
wire   [63:0] zext_ln28_8_fu_858_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln28_11_fu_944_p1;
wire   [63:0] zext_ln28_14_fu_960_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln28_17_fu_1018_p1;
wire   [63:0] zext_ln28_20_fu_1031_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
reg   [6:0] v4_fu_108;
wire   [6:0] add_ln27_fu_763_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v4_1;
reg    v0_ce1_local;
reg   [5:0] v0_address1_local;
reg    v0_ce0_local;
reg   [5:0] v0_address0_local;
reg    v1_0_ce1_local;
reg   [4:0] v1_0_address1_local;
reg    v1_0_ce0_local;
reg   [4:0] v1_0_address0_local;
reg    v1_1_ce1_local;
reg   [4:0] v1_1_address1_local;
reg    v1_1_ce0_local;
reg   [4:0] v1_1_address0_local;
reg    v141_we1_local;
reg   [31:0] v141_d1_local;
wire   [31:0] bitcast_ln29_fu_774_p1;
reg    v141_ce1_local;
reg   [5:0] v141_address1_local;
reg    v141_we0_local;
reg   [31:0] v141_d0_local;
wire   [31:0] bitcast_ln29_1_fu_784_p1;
reg    v141_ce0_local;
reg   [5:0] v141_address0_local;
wire   [31:0] bitcast_ln29_2_fu_889_p1;
wire   [31:0] bitcast_ln29_3_fu_899_p1;
wire   [31:0] bitcast_ln29_4_fu_966_p1;
wire   [31:0] bitcast_ln29_5_fu_976_p1;
wire   [31:0] bitcast_ln29_6_fu_1037_p1;
wire   [31:0] bitcast_ln29_7_fu_1047_p1;
wire   [31:0] bitcast_ln29_8_fu_1084_p1;
wire   [31:0] bitcast_ln29_9_fu_1094_p1;
wire   [31:0] bitcast_ln29_10_fu_1134_p1;
wire   [31:0] bitcast_ln29_11_fu_1143_p1;
wire   [31:0] bitcast_ln29_12_fu_1179_p1;
wire   [31:0] bitcast_ln29_13_fu_1189_p1;
wire   [31:0] bitcast_ln29_14_fu_1223_p1;
wire   [31:0] bitcast_ln29_15_fu_1232_p1;
reg    v142_we1_local;
reg   [31:0] v142_d1_local;
wire   [31:0] bitcast_ln31_fu_779_p1;
reg    v142_ce1_local;
reg   [5:0] v142_address1_local;
reg    v142_we0_local;
reg   [31:0] v142_d0_local;
wire   [31:0] bitcast_ln31_1_fu_789_p1;
reg    v142_ce0_local;
reg   [5:0] v142_address0_local;
wire   [31:0] bitcast_ln31_2_fu_894_p1;
wire   [31:0] bitcast_ln31_3_fu_904_p1;
wire   [31:0] bitcast_ln31_4_fu_971_p1;
wire   [31:0] bitcast_ln31_5_fu_981_p1;
wire   [31:0] bitcast_ln31_6_fu_1042_p1;
wire   [31:0] bitcast_ln31_7_fu_1052_p1;
wire   [31:0] bitcast_ln31_8_fu_1089_p1;
wire   [31:0] bitcast_ln31_9_fu_1099_p1;
wire   [31:0] bitcast_ln31_10_fu_1139_p1;
wire   [31:0] bitcast_ln31_11_fu_1148_p1;
wire   [31:0] bitcast_ln31_12_fu_1184_p1;
wire   [31:0] bitcast_ln31_13_fu_1194_p1;
wire   [31:0] bitcast_ln31_14_fu_1228_p1;
wire   [31:0] bitcast_ln31_15_fu_1237_p1;
wire   [4:0] lshr_ln_fu_710_p4;
wire   [5:0] or_ln_fu_726_p3;
wire   [4:0] or_ln7_fu_749_p3;
wire   [5:0] or_ln27_1_fu_794_p3;
wire   [5:0] or_ln27_2_fu_806_p3;
wire   [4:0] or_ln28_1_fu_834_p4;
wire   [4:0] or_ln28_2_fu_850_p3;
wire   [5:0] or_ln27_3_fu_909_p3;
wire   [5:0] or_ln27_4_fu_921_p5;
wire   [4:0] or_ln28_3_fu_936_p4;
wire   [4:0] or_ln28_4_fu_950_p5;
wire   [5:0] or_ln27_5_fu_986_p3;
wire   [5:0] or_ln27_6_fu_998_p3;
wire   [4:0] or_ln28_5_fu_1010_p4;
wire   [4:0] or_ln28_6_fu_1024_p3;
wire   [5:0] or_ln27_7_fu_1057_p3;
wire   [5:0] or_ln27_8_fu_1069_p5;
wire   [5:0] or_ln27_9_fu_1104_p5;
wire   [5:0] or_ln27_s_fu_1119_p5;
wire   [5:0] or_ln27_10_fu_1152_p3;
wire   [5:0] or_ln27_11_fu_1164_p5;
wire   [5:0] or_ln27_12_fu_1199_p3;
wire   [5:0] or_ln27_13_fu_1211_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v4_fu_108 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_669 <= v1_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_669 <= v1_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_674 <= v1_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_674 <= v1_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_679 <= v1_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_679 <= v1_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_684 <= v1_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_684 <= v1_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_697_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v4_fu_108 <= add_ln27_fu_763_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_108 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_325_reg_1339 <= v4_1_reg_1248[32'd1];
        tmp_326_reg_1388 <= v4_1_reg_1248[32'd2];
        tmp_517_reg_1331 <= {{v4_1_reg_1248[5:3]}};
        tmp_518_reg_1366 <= {{v4_1_reg_1248[5:4]}};
        tmp_519_reg_1382 <= {{v4_1_reg_1248[2:1]}};
        zext_ln28_1_reg_1309[5 : 2] <= zext_ln28_1_fu_801_p1[5 : 2];
        zext_ln28_3_reg_1320[5 : 2] <= zext_ln28_3_fu_813_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_1257 <= ap_sig_allocacmp_v4_1[32'd6];
        tmp_s_reg_1293 <= {{ap_sig_allocacmp_v4_1[5:2]}};
        v4_1_reg_1248 <= ap_sig_allocacmp_v4_1;
        zext_ln27_reg_1261[6 : 0] <= zext_ln27_fu_705_p1[6 : 0];
        zext_ln28_reg_1277[5 : 1] <= zext_ln28_fu_734_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v6_10_reg_1459 <= v1_0_q0;
        v6_11_reg_1464 <= v1_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v6_14_reg_1511 <= v1_0_q0;
        v6_15_reg_1516 <= v1_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        zext_ln28_10_reg_1489[5 : 4] <= zext_ln28_10_fu_1064_p1[5 : 4];
        zext_ln28_12_reg_1500[2 : 1] <= zext_ln28_12_fu_1079_p1[2 : 1];
zext_ln28_12_reg_1500[5 : 4] <= zext_ln28_12_fu_1079_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        zext_ln28_13_reg_1521[2] <= zext_ln28_13_fu_1114_p1[2];
zext_ln28_13_reg_1521[5 : 4] <= zext_ln28_13_fu_1114_p1[5 : 4];
        zext_ln28_15_reg_1532[2] <= zext_ln28_15_fu_1129_p1[2];
zext_ln28_15_reg_1532[5 : 4] <= zext_ln28_15_fu_1129_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln28_16_reg_1543[5 : 4] <= zext_ln28_16_fu_1159_p1[5 : 4];
        zext_ln28_18_reg_1554[1] <= zext_ln28_18_fu_1174_p1[1];
zext_ln28_18_reg_1554[5 : 4] <= zext_ln28_18_fu_1174_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        zext_ln28_19_reg_1565[5 : 4] <= zext_ln28_19_fu_1206_p1[5 : 4];
        zext_ln28_21_reg_1576[5 : 4] <= zext_ln28_21_fu_1218_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        zext_ln28_4_reg_1395[5 : 3] <= zext_ln28_4_fu_916_p1[5 : 3];
        zext_ln28_6_reg_1406[1] <= zext_ln28_6_fu_931_p1[1];
zext_ln28_6_reg_1406[5 : 3] <= zext_ln28_6_fu_931_p1[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln28_7_reg_1437[5 : 3] <= zext_ln28_7_fu_993_p1[5 : 3];
        zext_ln28_9_reg_1448[5 : 3] <= zext_ln28_9_fu_1005_p1[5 : 3];
    end
end
always @ (*) begin
    if (((tmp_fu_697_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_1 = v4_fu_108;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v0_address0_local = zext_ln28_21_fu_1218_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v0_address0_local = zext_ln28_18_fu_1174_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v0_address0_local = zext_ln28_15_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v0_address0_local = zext_ln28_12_fu_1079_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v0_address0_local = zext_ln28_9_fu_1005_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v0_address0_local = zext_ln28_6_fu_931_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address0_local = zext_ln28_3_fu_813_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address0_local = zext_ln28_fu_734_p1;
        end else begin
            v0_address0_local = 'bx;
        end
    end else begin
        v0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v0_address1_local = zext_ln28_19_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v0_address1_local = zext_ln28_16_fu_1159_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v0_address1_local = zext_ln28_13_fu_1114_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v0_address1_local = zext_ln28_10_fu_1064_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v0_address1_local = zext_ln28_7_fu_993_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v0_address1_local = zext_ln28_4_fu_916_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address1_local = zext_ln28_1_fu_801_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address1_local = zext_ln27_fu_705_p1;
        end else begin
            v0_address1_local = 'bx;
        end
    end else begin
        v0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce1_local = 1'b1;
    end else begin
        v0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_address0_local = zext_ln28_21_reg_1576;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v141_address0_local = zext_ln28_18_reg_1554;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v141_address0_local = zext_ln28_15_reg_1532;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v141_address0_local = zext_ln28_12_reg_1500;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v141_address0_local = zext_ln28_9_reg_1448;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_address0_local = zext_ln28_6_reg_1406;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_address0_local = zext_ln28_3_reg_1320;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_address0_local = zext_ln28_reg_1277;
    end else begin
        v141_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_address1_local = zext_ln28_19_reg_1565;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v141_address1_local = zext_ln28_16_reg_1543;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v141_address1_local = zext_ln28_13_reg_1521;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v141_address1_local = zext_ln28_10_reg_1489;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v141_address1_local = zext_ln28_7_reg_1437;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_address1_local = zext_ln28_4_reg_1395;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_address1_local = zext_ln28_1_reg_1309;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_address1_local = zext_ln27_reg_1261;
    end else begin
        v141_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v141_ce0_local = 1'b1;
    end else begin
        v141_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v141_ce1_local = 1'b1;
    end else begin
        v141_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_d0_local = bitcast_ln29_15_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v141_d0_local = bitcast_ln29_13_fu_1189_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v141_d0_local = bitcast_ln29_11_fu_1143_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v141_d0_local = bitcast_ln29_9_fu_1094_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v141_d0_local = bitcast_ln29_7_fu_1047_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_d0_local = bitcast_ln29_5_fu_976_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_d0_local = bitcast_ln29_3_fu_899_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_d0_local = bitcast_ln29_1_fu_784_p1;
    end else begin
        v141_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_d1_local = bitcast_ln29_14_fu_1223_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v141_d1_local = bitcast_ln29_12_fu_1179_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v141_d1_local = bitcast_ln29_10_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v141_d1_local = bitcast_ln29_8_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v141_d1_local = bitcast_ln29_6_fu_1037_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_d1_local = bitcast_ln29_4_fu_966_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_d1_local = bitcast_ln29_2_fu_889_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_d1_local = bitcast_ln29_fu_774_p1;
    end else begin
        v141_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_1257== 1'd0)))) begin
        v141_we0_local = 1'b1;
    end else begin
        v141_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_1257== 1'd0)))) begin
        v141_we1_local = 1'b1;
    end else begin
        v141_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_address0_local = zext_ln28_21_reg_1576;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v142_address0_local = zext_ln28_18_reg_1554;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v142_address0_local = zext_ln28_15_reg_1532;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v142_address0_local = zext_ln28_12_reg_1500;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v142_address0_local = zext_ln28_9_reg_1448;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_address0_local = zext_ln28_6_reg_1406;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_address0_local = zext_ln28_3_reg_1320;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_address0_local = zext_ln28_reg_1277;
    end else begin
        v142_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_address1_local = zext_ln28_19_reg_1565;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v142_address1_local = zext_ln28_16_reg_1543;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v142_address1_local = zext_ln28_13_reg_1521;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v142_address1_local = zext_ln28_10_reg_1489;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v142_address1_local = zext_ln28_7_reg_1437;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_address1_local = zext_ln28_4_reg_1395;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_address1_local = zext_ln28_1_reg_1309;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_address1_local = zext_ln27_reg_1261;
    end else begin
        v142_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v142_ce0_local = 1'b1;
    end else begin
        v142_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v142_ce1_local = 1'b1;
    end else begin
        v142_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_d0_local = bitcast_ln31_15_fu_1237_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v142_d0_local = bitcast_ln31_13_fu_1194_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v142_d0_local = bitcast_ln31_11_fu_1148_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v142_d0_local = bitcast_ln31_9_fu_1099_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v142_d0_local = bitcast_ln31_7_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_d0_local = bitcast_ln31_5_fu_981_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_d0_local = bitcast_ln31_3_fu_904_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_d0_local = bitcast_ln31_1_fu_789_p1;
    end else begin
        v142_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_d1_local = bitcast_ln31_14_fu_1228_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v142_d1_local = bitcast_ln31_12_fu_1184_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v142_d1_local = bitcast_ln31_10_fu_1139_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v142_d1_local = bitcast_ln31_8_fu_1089_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v142_d1_local = bitcast_ln31_6_fu_1042_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_d1_local = bitcast_ln31_4_fu_971_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_d1_local = bitcast_ln31_2_fu_894_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_d1_local = bitcast_ln31_fu_779_p1;
    end else begin
        v142_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_1257== 1'd0)))) begin
        v142_we0_local = 1'b1;
    end else begin
        v142_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_1257 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_1257== 1'd0)))) begin
        v142_we1_local = 1'b1;
    end else begin
        v142_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v1_0_address0_local = zext_ln28_20_fu_1031_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v1_0_address0_local = zext_ln28_14_fu_960_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v1_0_address0_local = zext_ln28_8_fu_858_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v1_0_address0_local = zext_ln28_2_fu_757_p1;
        end else begin
            v1_0_address0_local = 'bx;
        end
    end else begin
        v1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v1_0_address1_local = zext_ln28_17_fu_1018_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v1_0_address1_local = zext_ln28_11_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v1_0_address1_local = zext_ln28_5_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v1_0_address1_local = zext_ln27_1_fu_720_p1;
        end else begin
            v1_0_address1_local = 'bx;
        end
    end else begin
        v1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v1_0_ce0_local = 1'b1;
    end else begin
        v1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v1_0_ce1_local = 1'b1;
    end else begin
        v1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v1_1_address0_local = zext_ln28_20_fu_1031_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v1_1_address0_local = zext_ln28_14_fu_960_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v1_1_address0_local = zext_ln28_8_fu_858_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v1_1_address0_local = zext_ln28_2_fu_757_p1;
        end else begin
            v1_1_address0_local = 'bx;
        end
    end else begin
        v1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v1_1_address1_local = zext_ln28_17_fu_1018_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v1_1_address1_local = zext_ln28_11_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v1_1_address1_local = zext_ln28_5_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v1_1_address1_local = zext_ln27_1_fu_720_p1;
        end else begin
            v1_1_address1_local = 'bx;
        end
    end else begin
        v1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v1_1_ce0_local = 1'b1;
    end else begin
        v1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v1_1_ce1_local = 1'b1;
    end else begin
        v1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
assign add_ln27_fu_763_p2 = (ap_sig_allocacmp_v4_1 + 7'd16);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln29_10_fu_1134_p1 = v0_q1;
assign bitcast_ln29_11_fu_1143_p1 = v0_q0;
assign bitcast_ln29_12_fu_1179_p1 = v0_q1;
assign bitcast_ln29_13_fu_1189_p1 = v0_q0;
assign bitcast_ln29_14_fu_1223_p1 = v0_q1;
assign bitcast_ln29_15_fu_1232_p1 = v0_q0;
assign bitcast_ln29_1_fu_784_p1 = v0_q0;
assign bitcast_ln29_2_fu_889_p1 = v0_q1;
assign bitcast_ln29_3_fu_899_p1 = v0_q0;
assign bitcast_ln29_4_fu_966_p1 = v0_q1;
assign bitcast_ln29_5_fu_976_p1 = v0_q0;
assign bitcast_ln29_6_fu_1037_p1 = v0_q1;
assign bitcast_ln29_7_fu_1047_p1 = v0_q0;
assign bitcast_ln29_8_fu_1084_p1 = v0_q1;
assign bitcast_ln29_9_fu_1094_p1 = v0_q0;
assign bitcast_ln29_fu_774_p1 = v0_q1;
assign bitcast_ln31_10_fu_1139_p1 = v6_10_reg_1459;
assign bitcast_ln31_11_fu_1148_p1 = v6_11_reg_1464;
assign bitcast_ln31_12_fu_1184_p1 = reg_679;
assign bitcast_ln31_13_fu_1194_p1 = reg_684;
assign bitcast_ln31_14_fu_1228_p1 = v6_14_reg_1511;
assign bitcast_ln31_15_fu_1237_p1 = v6_15_reg_1516;
assign bitcast_ln31_1_fu_789_p1 = v1_1_q1;
assign bitcast_ln31_2_fu_894_p1 = reg_669;
assign bitcast_ln31_3_fu_904_p1 = reg_674;
assign bitcast_ln31_4_fu_971_p1 = reg_669;
assign bitcast_ln31_5_fu_981_p1 = reg_674;
assign bitcast_ln31_6_fu_1042_p1 = reg_679;
assign bitcast_ln31_7_fu_1052_p1 = reg_684;
assign bitcast_ln31_8_fu_1089_p1 = reg_669;
assign bitcast_ln31_9_fu_1099_p1 = reg_674;
assign bitcast_ln31_fu_779_p1 = v1_0_q1;
assign lshr_ln_fu_710_p4 = {{ap_sig_allocacmp_v4_1[5:1]}};
assign or_ln27_10_fu_1152_p3 = {{tmp_518_reg_1366}, {4'd12}};
assign or_ln27_11_fu_1164_p5 = {{{{tmp_518_reg_1366}, {2'd3}}, {tmp_325_reg_1339}}, {1'd1}};
assign or_ln27_12_fu_1199_p3 = {{tmp_518_reg_1366}, {4'd14}};
assign or_ln27_13_fu_1211_p3 = {{tmp_518_reg_1366}, {4'd15}};
assign or_ln27_1_fu_794_p3 = {{tmp_s_reg_1293}, {2'd2}};
assign or_ln27_2_fu_806_p3 = {{tmp_s_reg_1293}, {2'd3}};
assign or_ln27_3_fu_909_p3 = {{tmp_517_reg_1331}, {3'd4}};
assign or_ln27_4_fu_921_p5 = {{{{tmp_517_reg_1331}, {1'd1}}, {tmp_325_reg_1339}}, {1'd1}};
assign or_ln27_5_fu_986_p3 = {{tmp_517_reg_1331}, {3'd6}};
assign or_ln27_6_fu_998_p3 = {{tmp_517_reg_1331}, {3'd7}};
assign or_ln27_7_fu_1057_p3 = {{tmp_518_reg_1366}, {4'd8}};
assign or_ln27_8_fu_1069_p5 = {{{{tmp_518_reg_1366}, {1'd1}}, {tmp_519_reg_1382}}, {1'd1}};
assign or_ln27_9_fu_1104_p5 = {{{{tmp_518_reg_1366}, {1'd1}}, {tmp_326_reg_1388}}, {2'd2}};
assign or_ln27_s_fu_1119_p5 = {{{{tmp_518_reg_1366}, {1'd1}}, {tmp_326_reg_1388}}, {2'd3}};
assign or_ln28_1_fu_834_p4 = {{{tmp_517_fu_818_p4}, {1'd1}}, {tmp_325_fu_827_p3}};
assign or_ln28_2_fu_850_p3 = {{tmp_517_fu_818_p4}, {2'd3}};
assign or_ln28_3_fu_936_p4 = {{{tmp_518_reg_1366}, {1'd1}}, {tmp_519_reg_1382}};
assign or_ln28_4_fu_950_p5 = {{{{tmp_518_reg_1366}, {1'd1}}, {tmp_326_reg_1388}}, {1'd1}};
assign or_ln28_5_fu_1010_p4 = {{{tmp_518_reg_1366}, {2'd3}}, {tmp_325_reg_1339}};
assign or_ln28_6_fu_1024_p3 = {{tmp_518_reg_1366}, {3'd7}};
assign or_ln7_fu_749_p3 = {{tmp_s_fu_739_p4}, {1'd1}};
assign or_ln_fu_726_p3 = {{lshr_ln_fu_710_p4}, {1'd1}};
assign tmp_325_fu_827_p3 = v4_1_reg_1248[32'd1];
assign tmp_517_fu_818_p4 = {{v4_1_reg_1248[5:3]}};
assign tmp_fu_697_p3 = ap_sig_allocacmp_v4_1[32'd6];
assign tmp_s_fu_739_p4 = {{ap_sig_allocacmp_v4_1[5:2]}};
assign v0_address0 = v0_address0_local;
assign v0_address1 = v0_address1_local;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v141_address0 = v141_address0_local;
assign v141_address1 = v141_address1_local;
assign v141_ce0 = v141_ce0_local;
assign v141_ce1 = v141_ce1_local;
assign v141_d0 = v141_d0_local;
assign v141_d1 = v141_d1_local;
assign v141_we0 = v141_we0_local;
assign v141_we1 = v141_we1_local;
assign v142_address0 = v142_address0_local;
assign v142_address1 = v142_address1_local;
assign v142_ce0 = v142_ce0_local;
assign v142_ce1 = v142_ce1_local;
assign v142_d0 = v142_d0_local;
assign v142_d1 = v142_d1_local;
assign v142_we0 = v142_we0_local;
assign v142_we1 = v142_we1_local;
assign v1_0_address0 = v1_0_address0_local;
assign v1_0_address1 = v1_0_address1_local;
assign v1_0_ce0 = v1_0_ce0_local;
assign v1_0_ce1 = v1_0_ce1_local;
assign v1_1_address0 = v1_1_address0_local;
assign v1_1_address1 = v1_1_address1_local;
assign v1_1_ce0 = v1_1_ce0_local;
assign v1_1_ce1 = v1_1_ce1_local;
assign zext_ln27_1_fu_720_p1 = lshr_ln_fu_710_p4;
assign zext_ln27_fu_705_p1 = ap_sig_allocacmp_v4_1;
assign zext_ln28_10_fu_1064_p1 = or_ln27_7_fu_1057_p3;
assign zext_ln28_11_fu_944_p1 = or_ln28_3_fu_936_p4;
assign zext_ln28_12_fu_1079_p1 = or_ln27_8_fu_1069_p5;
assign zext_ln28_13_fu_1114_p1 = or_ln27_9_fu_1104_p5;
assign zext_ln28_14_fu_960_p1 = or_ln28_4_fu_950_p5;
assign zext_ln28_15_fu_1129_p1 = or_ln27_s_fu_1119_p5;
assign zext_ln28_16_fu_1159_p1 = or_ln27_10_fu_1152_p3;
assign zext_ln28_17_fu_1018_p1 = or_ln28_5_fu_1010_p4;
assign zext_ln28_18_fu_1174_p1 = or_ln27_11_fu_1164_p5;
assign zext_ln28_19_fu_1206_p1 = or_ln27_12_fu_1199_p3;
assign zext_ln28_1_fu_801_p1 = or_ln27_1_fu_794_p3;
assign zext_ln28_20_fu_1031_p1 = or_ln28_6_fu_1024_p3;
assign zext_ln28_21_fu_1218_p1 = or_ln27_13_fu_1211_p3;
assign zext_ln28_2_fu_757_p1 = or_ln7_fu_749_p3;
assign zext_ln28_3_fu_813_p1 = or_ln27_2_fu_806_p3;
assign zext_ln28_4_fu_916_p1 = or_ln27_3_fu_909_p3;
assign zext_ln28_5_fu_844_p1 = or_ln28_1_fu_834_p4;
assign zext_ln28_6_fu_931_p1 = or_ln27_4_fu_921_p5;
assign zext_ln28_7_fu_993_p1 = or_ln27_5_fu_986_p3;
assign zext_ln28_8_fu_858_p1 = or_ln28_2_fu_850_p3;
assign zext_ln28_9_fu_1005_p1 = or_ln27_6_fu_998_p3;
assign zext_ln28_fu_734_p1 = or_ln_fu_726_p3;
always @ (posedge ap_clk) begin
    zext_ln27_reg_1261[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln28_reg_1277[0] <= 1'b1;
    zext_ln28_reg_1277[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_1_reg_1309[1:0] <= 2'b10;
    zext_ln28_1_reg_1309[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_3_reg_1320[1:0] <= 2'b11;
    zext_ln28_3_reg_1320[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_4_reg_1395[2:0] <= 3'b100;
    zext_ln28_4_reg_1395[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_6_reg_1406[0] <= 1'b1;
    zext_ln28_6_reg_1406[2:2] <= 1'b1;
    zext_ln28_6_reg_1406[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_7_reg_1437[2:0] <= 3'b110;
    zext_ln28_7_reg_1437[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_9_reg_1448[2:0] <= 3'b111;
    zext_ln28_9_reg_1448[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_10_reg_1489[3:0] <= 4'b1000;
    zext_ln28_10_reg_1489[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_12_reg_1500[0] <= 1'b1;
    zext_ln28_12_reg_1500[3:3] <= 1'b1;
    zext_ln28_12_reg_1500[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_13_reg_1521[1:0] <= 2'b10;
    zext_ln28_13_reg_1521[3:3] <= 1'b1;
    zext_ln28_13_reg_1521[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_15_reg_1532[1:0] <= 2'b11;
    zext_ln28_15_reg_1532[3:3] <= 1'b1;
    zext_ln28_15_reg_1532[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_16_reg_1543[3:0] <= 4'b1100;
    zext_ln28_16_reg_1543[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_18_reg_1554[0] <= 1'b1;
    zext_ln28_18_reg_1554[3:2] <= 2'b11;
    zext_ln28_18_reg_1554[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_19_reg_1565[3:0] <= 4'b1110;
    zext_ln28_19_reg_1565[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_21_reg_1576[3:0] <= 4'b1111;
    zext_ln28_21_reg_1576[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
