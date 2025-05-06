
module needwun_needwun_Pipeline_pad_b (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_str_idx_7,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedB_0_address1,alignedB_0_ce1,alignedB_0_we1,alignedB_0_d1,alignedB_3_address0,alignedB_3_ce0,alignedB_3_we0,alignedB_3_d0,alignedB_3_address1,alignedB_3_ce1,alignedB_3_we1,alignedB_3_d1,alignedB_2_address0,alignedB_2_ce0,alignedB_2_we0,alignedB_2_d0,alignedB_2_address1,alignedB_2_ce1,alignedB_2_we1,alignedB_2_d1,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_1_address1,alignedB_1_ce1,alignedB_1_we1,alignedB_1_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] b_str_idx_7;
output  [5:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [5:0] alignedB_0_address1;
output   alignedB_0_ce1;
output   alignedB_0_we1;
output  [7:0] alignedB_0_d1;
output  [5:0] alignedB_3_address0;
output   alignedB_3_ce0;
output   alignedB_3_we0;
output  [7:0] alignedB_3_d0;
output  [5:0] alignedB_3_address1;
output   alignedB_3_ce1;
output   alignedB_3_we1;
output  [7:0] alignedB_3_d1;
output  [5:0] alignedB_2_address0;
output   alignedB_2_ce0;
output   alignedB_2_we0;
output  [7:0] alignedB_2_d0;
output  [5:0] alignedB_2_address1;
output   alignedB_2_ce1;
output   alignedB_2_we1;
output  [7:0] alignedB_2_d1;
output  [5:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [5:0] alignedB_1_address1;
output   alignedB_1_ce1;
output   alignedB_1_we1;
output  [7:0] alignedB_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln86_15_fu_1252_p2;
wire   [0:0] icmp_ln86_14_fu_1216_p2;
wire   [0:0] icmp_ln86_13_fu_1180_p2;
wire   [0:0] icmp_ln86_12_fu_1144_p2;
wire   [0:0] icmp_ln86_11_fu_1108_p2;
wire   [0:0] icmp_ln86_10_fu_1072_p2;
wire   [0:0] icmp_ln86_9_fu_1036_p2;
wire   [0:0] icmp_ln86_8_fu_1000_p2;
wire   [0:0] icmp_ln86_7_fu_964_p2;
wire   [0:0] icmp_ln86_6_fu_924_p2;
wire   [0:0] icmp_ln86_5_fu_884_p2;
wire   [0:0] icmp_ln86_4_fu_844_p2;
wire   [0:0] icmp_ln86_3_fu_804_p2;
wire   [0:0] icmp_ln86_2_fu_764_p2;
wire   [0:0] icmp_ln86_1_fu_724_p2;
wire   [0:0] icmp_ln86_fu_662_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln86_reg_1276;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] trunc_ln86_fu_668_p1;
reg   [1:0] trunc_ln86_reg_1280;
reg   [0:0] icmp_ln86_1_reg_1284;
reg   [0:0] icmp_ln86_2_reg_1288;
reg   [0:0] icmp_ln86_3_reg_1292;
reg   [0:0] icmp_ln86_4_reg_1296;
reg   [0:0] icmp_ln86_5_reg_1300;
reg   [0:0] icmp_ln86_6_reg_1304;
reg   [0:0] icmp_ln86_7_reg_1308;
wire   [63:0] zext_ln86_7_fu_986_p1;
reg   [63:0] zext_ln86_7_reg_1312;
reg   [0:0] icmp_ln86_8_reg_1320;
wire   [63:0] zext_ln86_8_fu_1022_p1;
reg   [63:0] zext_ln86_8_reg_1324;
reg   [0:0] icmp_ln86_9_reg_1332;
wire   [63:0] zext_ln86_9_fu_1058_p1;
reg   [63:0] zext_ln86_9_reg_1336;
reg   [0:0] icmp_ln86_10_reg_1344;
wire   [63:0] zext_ln86_10_fu_1094_p1;
reg   [63:0] zext_ln86_10_reg_1348;
reg   [0:0] icmp_ln86_11_reg_1356;
wire   [63:0] zext_ln86_11_fu_1130_p1;
reg   [63:0] zext_ln86_11_reg_1360;
reg   [0:0] icmp_ln86_12_reg_1368;
wire   [63:0] zext_ln86_12_fu_1166_p1;
reg   [63:0] zext_ln86_12_reg_1372;
reg   [0:0] icmp_ln86_13_reg_1380;
wire   [63:0] zext_ln86_13_fu_1202_p1;
reg   [63:0] zext_ln86_13_reg_1384;
reg   [0:0] icmp_ln86_14_reg_1392;
wire   [63:0] zext_ln86_14_fu_1238_p1;
reg   [63:0] zext_ln86_14_reg_1396;
reg   [0:0] icmp_ln86_15_reg_1404;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln18_fu_682_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln86_fu_706_p1;
wire   [63:0] zext_ln86_1_fu_746_p1;
wire   [63:0] zext_ln86_2_fu_786_p1;
wire   [63:0] zext_ln86_3_fu_826_p1;
wire   [63:0] zext_ln86_4_fu_866_p1;
wire   [63:0] zext_ln86_5_fu_906_p1;
wire   [63:0] zext_ln86_6_fu_946_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] b_str_idx_fu_78;
wire   [31:0] add_ln86_15_fu_1258_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_11001;
reg    alignedB_2_we1_local;
reg    alignedB_2_ce1_local;
reg   [5:0] alignedB_2_address1_local;
reg    alignedB_2_we0_local;
reg    alignedB_2_ce0_local;
reg   [5:0] alignedB_2_address0_local;
reg    alignedB_1_we1_local;
reg    alignedB_1_ce1_local;
reg   [5:0] alignedB_1_address1_local;
reg    alignedB_1_we0_local;
reg    alignedB_1_ce0_local;
reg   [5:0] alignedB_1_address0_local;
reg    alignedB_0_we1_local;
reg    alignedB_0_ce1_local;
reg   [5:0] alignedB_0_address1_local;
reg    alignedB_0_we0_local;
reg    alignedB_0_ce0_local;
reg   [5:0] alignedB_0_address0_local;
reg    alignedB_3_we1_local;
reg    alignedB_3_ce1_local;
reg   [5:0] alignedB_3_address1_local;
reg    alignedB_3_we0_local;
reg    alignedB_3_ce0_local;
reg   [5:0] alignedB_3_address0_local;
wire   [23:0] tmp_fu_652_p4;
wire   [5:0] lshr_ln18_2_fu_672_p4;
wire   [31:0] add_ln86_fu_690_p2;
wire   [5:0] lshr_ln_fu_696_p4;
wire   [23:0] tmp_1_fu_714_p4;
wire   [31:0] add_ln86_1_fu_730_p2;
wire   [5:0] lshr_ln86_1_fu_736_p4;
wire   [23:0] tmp_2_fu_754_p4;
wire   [31:0] add_ln86_2_fu_770_p2;
wire   [5:0] lshr_ln86_2_fu_776_p4;
wire   [23:0] tmp_3_fu_794_p4;
wire   [31:0] add_ln86_3_fu_810_p2;
wire   [5:0] lshr_ln86_3_fu_816_p4;
wire   [23:0] tmp_4_fu_834_p4;
wire   [31:0] add_ln86_4_fu_850_p2;
wire   [5:0] lshr_ln86_4_fu_856_p4;
wire   [23:0] tmp_5_fu_874_p4;
wire   [31:0] add_ln86_5_fu_890_p2;
wire   [5:0] lshr_ln86_5_fu_896_p4;
wire   [23:0] tmp_6_fu_914_p4;
wire   [31:0] add_ln86_6_fu_930_p2;
wire   [5:0] lshr_ln86_6_fu_936_p4;
wire   [23:0] tmp_7_fu_954_p4;
wire   [31:0] add_ln86_7_fu_970_p2;
wire   [5:0] lshr_ln86_7_fu_976_p4;
wire   [23:0] tmp_8_fu_990_p4;
wire   [31:0] add_ln86_8_fu_1006_p2;
wire   [5:0] lshr_ln86_8_fu_1012_p4;
wire   [23:0] tmp_9_fu_1026_p4;
wire   [31:0] add_ln86_9_fu_1042_p2;
wire   [5:0] lshr_ln86_9_fu_1048_p4;
wire   [23:0] tmp_10_fu_1062_p4;
wire   [31:0] add_ln86_10_fu_1078_p2;
wire   [5:0] lshr_ln86_s_fu_1084_p4;
wire   [23:0] tmp_11_fu_1098_p4;
wire   [31:0] add_ln86_11_fu_1114_p2;
wire   [5:0] lshr_ln86_10_fu_1120_p4;
wire   [23:0] tmp_12_fu_1134_p4;
wire   [31:0] add_ln86_12_fu_1150_p2;
wire   [5:0] lshr_ln86_11_fu_1156_p4;
wire   [23:0] tmp_13_fu_1170_p4;
wire   [31:0] add_ln86_13_fu_1186_p2;
wire   [5:0] lshr_ln86_12_fu_1192_p4;
wire   [23:0] tmp_14_fu_1206_p4;
wire   [31:0] add_ln86_14_fu_1222_p2;
wire   [5:0] lshr_ln86_13_fu_1228_p4;
wire   [23:0] tmp_15_fu_1242_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 b_str_idx_fu_78 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_str_idx_fu_78 <= b_str_idx_7;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (icmp_ln86_8_fu_1000_p2 == 1'd1) & (icmp_ln86_9_fu_1036_p2 == 1'd1) & (icmp_ln86_10_fu_1072_p2 == 1'd1) & (icmp_ln86_11_fu_1108_p2 == 1'd1) & (icmp_ln86_12_fu_1144_p2 == 1'd1) & (icmp_ln86_13_fu_1180_p2 == 1'd1) & (icmp_ln86_14_fu_1216_p2 == 1'd1) & (icmp_ln86_15_fu_1252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_str_idx_fu_78 <= add_ln86_15_fu_1258_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln86_10_reg_1344 <= icmp_ln86_10_fu_1072_p2;
        icmp_ln86_11_reg_1356 <= icmp_ln86_11_fu_1108_p2;
        icmp_ln86_12_reg_1368 <= icmp_ln86_12_fu_1144_p2;
        icmp_ln86_13_reg_1380 <= icmp_ln86_13_fu_1180_p2;
        icmp_ln86_14_reg_1392 <= icmp_ln86_14_fu_1216_p2;
        icmp_ln86_15_reg_1404 <= icmp_ln86_15_fu_1252_p2;
        icmp_ln86_1_reg_1284 <= icmp_ln86_1_fu_724_p2;
        icmp_ln86_2_reg_1288 <= icmp_ln86_2_fu_764_p2;
        icmp_ln86_3_reg_1292 <= icmp_ln86_3_fu_804_p2;
        icmp_ln86_4_reg_1296 <= icmp_ln86_4_fu_844_p2;
        icmp_ln86_5_reg_1300 <= icmp_ln86_5_fu_884_p2;
        icmp_ln86_6_reg_1304 <= icmp_ln86_6_fu_924_p2;
        icmp_ln86_7_reg_1308 <= icmp_ln86_7_fu_964_p2;
        icmp_ln86_8_reg_1320 <= icmp_ln86_8_fu_1000_p2;
        icmp_ln86_9_reg_1332 <= icmp_ln86_9_fu_1036_p2;
        icmp_ln86_reg_1276 <= icmp_ln86_fu_662_p2;
        trunc_ln86_reg_1280 <= trunc_ln86_fu_668_p1;
        zext_ln86_10_reg_1348[5 : 0] <= zext_ln86_10_fu_1094_p1[5 : 0];
        zext_ln86_11_reg_1360[5 : 0] <= zext_ln86_11_fu_1130_p1[5 : 0];
        zext_ln86_12_reg_1372[5 : 0] <= zext_ln86_12_fu_1166_p1[5 : 0];
        zext_ln86_13_reg_1384[5 : 0] <= zext_ln86_13_fu_1202_p1[5 : 0];
        zext_ln86_14_reg_1396[5 : 0] <= zext_ln86_14_fu_1238_p1[5 : 0];
        zext_ln86_7_reg_1312[5 : 0] <= zext_ln86_7_fu_986_p1[5 : 0];
        zext_ln86_8_reg_1324[5 : 0] <= zext_ln86_8_fu_1022_p1[5 : 0];
        zext_ln86_9_reg_1336[5 : 0] <= zext_ln86_9_fu_1058_p1[5 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1404 == 1'd1) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_0_address0_local = zext_ln86_14_reg_1396;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_0_address0_local = zext_ln86_13_reg_1384;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_0_address0_local = zext_ln86_12_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_0_address0_local = zext_ln86_11_reg_1360;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1))) begin
        alignedB_0_address0_local = zext_ln86_6_fu_946_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2))) begin
        alignedB_0_address0_local = zext_ln86_5_fu_906_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3))) begin
        alignedB_0_address0_local = zext_ln86_4_fu_866_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0))) begin
        alignedB_0_address0_local = zext_ln86_3_fu_826_p1;
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_0_address1_local = zext_ln86_10_reg_1348;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_0_address1_local = zext_ln86_9_reg_1336;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_0_address1_local = zext_ln86_8_reg_1324;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_0_address1_local = zext_ln86_7_reg_1312;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1))) begin
        alignedB_0_address1_local = zext_ln86_2_fu_786_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2))) begin
        alignedB_0_address1_local = zext_ln86_1_fu_746_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3))) begin
        alignedB_0_address1_local = zext_ln86_fu_706_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0))) begin
        alignedB_0_address1_local = zext_ln18_fu_682_p1;
    end else begin
        alignedB_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1404 == 1'd1) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308== 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356== 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276== 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)))) begin
        alignedB_0_ce1_local = 1'b1;
    end else begin
        alignedB_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1404 == 1'd1) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308== 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356== 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276== 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)))) begin
        alignedB_0_we1_local = 1'b1;
    end else begin
        alignedB_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1404 == 1'd1) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_1_address0_local = zext_ln86_14_reg_1396;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_1_address0_local = zext_ln86_13_reg_1384;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_1_address0_local = zext_ln86_12_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_1_address0_local = zext_ln86_11_reg_1360;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2))) begin
        alignedB_1_address0_local = zext_ln86_6_fu_946_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3))) begin
        alignedB_1_address0_local = zext_ln86_5_fu_906_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0))) begin
        alignedB_1_address0_local = zext_ln86_4_fu_866_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1))) begin
        alignedB_1_address0_local = zext_ln86_3_fu_826_p1;
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_1_address1_local = zext_ln86_10_reg_1348;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_1_address1_local = zext_ln86_9_reg_1336;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_1_address1_local = zext_ln86_8_reg_1324;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_1_address1_local = zext_ln86_7_reg_1312;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2))) begin
        alignedB_1_address1_local = zext_ln86_2_fu_786_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3))) begin
        alignedB_1_address1_local = zext_ln86_1_fu_746_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0))) begin
        alignedB_1_address1_local = zext_ln86_fu_706_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1))) begin
        alignedB_1_address1_local = zext_ln18_fu_682_p1;
    end else begin
        alignedB_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1404 == 1'd1) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308== 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356== 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276== 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)))) begin
        alignedB_1_ce1_local = 1'b1;
    end else begin
        alignedB_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1404 == 1'd1) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308== 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356== 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276== 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)))) begin
        alignedB_1_we1_local = 1'b1;
    end else begin
        alignedB_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1404 == 1'd1) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_2_address0_local = zext_ln86_14_reg_1396;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_2_address0_local = zext_ln86_13_reg_1384;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_2_address0_local = zext_ln86_12_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_2_address0_local = zext_ln86_11_reg_1360;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3))) begin
        alignedB_2_address0_local = zext_ln86_6_fu_946_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0))) begin
        alignedB_2_address0_local = zext_ln86_5_fu_906_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1))) begin
        alignedB_2_address0_local = zext_ln86_4_fu_866_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2))) begin
        alignedB_2_address0_local = zext_ln86_3_fu_826_p1;
    end else begin
        alignedB_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_2_address1_local = zext_ln86_10_reg_1348;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_2_address1_local = zext_ln86_9_reg_1336;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_2_address1_local = zext_ln86_8_reg_1324;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_2_address1_local = zext_ln86_7_reg_1312;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3))) begin
        alignedB_2_address1_local = zext_ln86_2_fu_786_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0))) begin
        alignedB_2_address1_local = zext_ln86_1_fu_746_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1))) begin
        alignedB_2_address1_local = zext_ln86_fu_706_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2))) begin
        alignedB_2_address1_local = zext_ln18_fu_682_p1;
    end else begin
        alignedB_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1404 == 1'd1) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308== 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356== 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)))) begin
        alignedB_2_ce0_local = 1'b1;
    end else begin
        alignedB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276== 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)))) begin
        alignedB_2_ce1_local = 1'b1;
    end else begin
        alignedB_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1404 == 1'd1) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308== 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356== 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)))) begin
        alignedB_2_we0_local = 1'b1;
    end else begin
        alignedB_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276== 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)))) begin
        alignedB_2_we1_local = 1'b1;
    end else begin
        alignedB_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1404 == 1'd1) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_3_address0_local = zext_ln86_14_reg_1396;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_3_address0_local = zext_ln86_13_reg_1384;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_3_address0_local = zext_ln86_12_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_3_address0_local = zext_ln86_11_reg_1360;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0))) begin
        alignedB_3_address0_local = zext_ln86_6_fu_946_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1))) begin
        alignedB_3_address0_local = zext_ln86_5_fu_906_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2))) begin
        alignedB_3_address0_local = zext_ln86_4_fu_866_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3))) begin
        alignedB_3_address0_local = zext_ln86_3_fu_826_p1;
    end else begin
        alignedB_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_3_address1_local = zext_ln86_10_reg_1348;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_3_address1_local = zext_ln86_9_reg_1336;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_3_address1_local = zext_ln86_8_reg_1324;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1))) begin
        alignedB_3_address1_local = zext_ln86_7_reg_1312;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0))) begin
        alignedB_3_address1_local = zext_ln86_2_fu_786_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1))) begin
        alignedB_3_address1_local = zext_ln86_1_fu_746_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2))) begin
        alignedB_3_address1_local = zext_ln86_fu_706_p1;
    end else if (((icmp_ln86_fu_662_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3))) begin
        alignedB_3_address1_local = zext_ln18_fu_682_p1;
    end else begin
        alignedB_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1404 == 1'd1) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308== 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356== 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)))) begin
        alignedB_3_ce0_local = 1'b1;
    end else begin
        alignedB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276== 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)))) begin
        alignedB_3_ce1_local = 1'b1;
    end else begin
        alignedB_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1404 == 1'd1) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1392 == 1'd1) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308== 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1380 == 1'd1) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1368 == 1'd1) & (icmp_ln86_11_reg_1356== 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2 == 1'd1) & (icmp_ln86_7_fu_964_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (icmp_ln86_6_fu_924_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (icmp_ln86_5_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2 == 1'd1) & (icmp_ln86_4_fu_844_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)))) begin
        alignedB_3_we0_local = 1'b1;
    end else begin
        alignedB_3_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_11_reg_1356 == 1'd1) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd0) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_10_reg_1344 == 1'd1) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd1) & (icmp_ln86_reg_1276== 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_9_reg_1332 == 1'd1) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd2) & (icmp_ln86_reg_1276 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_8_reg_1320 == 1'd1) & (icmp_ln86_7_reg_1308 == 1'd1) & (icmp_ln86_6_reg_1304 == 1'd1) & (icmp_ln86_5_reg_1300 == 1'd1) & (icmp_ln86_4_reg_1296 == 1'd1) & (icmp_ln86_3_reg_1292 == 1'd1) & (icmp_ln86_2_reg_1288 == 1'd1) & (icmp_ln86_1_reg_1284 == 1'd1) & (trunc_ln86_reg_1280 == 2'd3) & (icmp_ln86_reg_1276 == 1'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (icmp_ln86_3_fu_804_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd0)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (icmp_ln86_2_fu_764_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd1)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (icmp_ln86_1_fu_724_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd2)) | ((icmp_ln86_fu_662_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_668_p1 == 2'd3)))) begin
        alignedB_3_we1_local = 1'b1;
    end else begin
        alignedB_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((icmp_ln86_fu_662_p2 == 1'd0) | ((icmp_ln86_1_fu_724_p2 == 1'd0) | ((icmp_ln86_2_fu_764_p2 == 1'd0) | ((icmp_ln86_3_fu_804_p2 == 1'd0) | ((icmp_ln86_4_fu_844_p2 == 1'd0) | ((icmp_ln86_5_fu_884_p2 == 1'd0) | ((icmp_ln86_6_fu_924_p2 == 1'd0) | ((icmp_ln86_7_fu_964_p2 == 1'd0) | ((icmp_ln86_8_fu_1000_p2 == 1'd0) | ((icmp_ln86_9_fu_1036_p2 == 1'd0) | ((icmp_ln86_10_fu_1072_p2 == 1'd0) | ((icmp_ln86_11_fu_1108_p2 == 1'd0) | ((icmp_ln86_12_fu_1144_p2 == 1'd0) | ((icmp_ln86_13_fu_1180_p2 == 1'd0) | ((icmp_ln86_14_fu_1216_p2 == 1'd0) | (icmp_ln86_15_fu_1252_p2 == 1'd0)))))))))))))))))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln86_reg_1276 == 1'd0) | ((icmp_ln86_1_reg_1284 == 1'd0) | ((icmp_ln86_2_reg_1288 == 1'd0) | ((icmp_ln86_3_reg_1292 == 1'd0) | ((icmp_ln86_4_reg_1296 == 1'd0) | ((icmp_ln86_5_reg_1300 == 1'd0) | ((icmp_ln86_6_reg_1304 == 1'd0) | ((icmp_ln86_7_reg_1308 == 1'd0) | ((icmp_ln86_8_reg_1320 == 1'd0) | ((icmp_ln86_9_reg_1332 == 1'd0) | ((icmp_ln86_10_reg_1344 == 1'd0) | ((icmp_ln86_11_reg_1356 == 1'd0) | ((icmp_ln86_12_reg_1368 == 1'd0) | ((icmp_ln86_13_reg_1380 == 1'd0) | ((icmp_ln86_15_reg_1404 == 1'd0) | (icmp_ln86_14_reg_1392 == 1'd0)))))))))))))))))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln86_10_fu_1078_p2 = (b_str_idx_fu_78 + 32'd11);
assign add_ln86_11_fu_1114_p2 = (b_str_idx_fu_78 + 32'd12);
assign add_ln86_12_fu_1150_p2 = (b_str_idx_fu_78 + 32'd13);
assign add_ln86_13_fu_1186_p2 = (b_str_idx_fu_78 + 32'd14);
assign add_ln86_14_fu_1222_p2 = (b_str_idx_fu_78 + 32'd15);
assign add_ln86_15_fu_1258_p2 = (b_str_idx_fu_78 + 32'd16);
assign add_ln86_1_fu_730_p2 = (b_str_idx_fu_78 + 32'd2);
assign add_ln86_2_fu_770_p2 = (b_str_idx_fu_78 + 32'd3);
assign add_ln86_3_fu_810_p2 = (b_str_idx_fu_78 + 32'd4);
assign add_ln86_4_fu_850_p2 = (b_str_idx_fu_78 + 32'd5);
assign add_ln86_5_fu_890_p2 = (b_str_idx_fu_78 + 32'd6);
assign add_ln86_6_fu_930_p2 = (b_str_idx_fu_78 + 32'd7);
assign add_ln86_7_fu_970_p2 = (b_str_idx_fu_78 + 32'd8);
assign add_ln86_8_fu_1006_p2 = (b_str_idx_fu_78 + 32'd9);
assign add_ln86_9_fu_1042_p2 = (b_str_idx_fu_78 + 32'd10);
assign add_ln86_fu_690_p2 = (b_str_idx_fu_78 + 32'd1);
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_address1 = alignedB_0_address1_local;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_ce1 = alignedB_0_ce1_local;
assign alignedB_0_d0 = 8'd95;
assign alignedB_0_d1 = 8'd95;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_0_we1 = alignedB_0_we1_local;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_address1 = alignedB_1_address1_local;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_ce1 = alignedB_1_ce1_local;
assign alignedB_1_d0 = 8'd95;
assign alignedB_1_d1 = 8'd95;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign alignedB_1_we1 = alignedB_1_we1_local;
assign alignedB_2_address0 = alignedB_2_address0_local;
assign alignedB_2_address1 = alignedB_2_address1_local;
assign alignedB_2_ce0 = alignedB_2_ce0_local;
assign alignedB_2_ce1 = alignedB_2_ce1_local;
assign alignedB_2_d0 = 8'd95;
assign alignedB_2_d1 = 8'd95;
assign alignedB_2_we0 = alignedB_2_we0_local;
assign alignedB_2_we1 = alignedB_2_we1_local;
assign alignedB_3_address0 = alignedB_3_address0_local;
assign alignedB_3_address1 = alignedB_3_address1_local;
assign alignedB_3_ce0 = alignedB_3_ce0_local;
assign alignedB_3_ce1 = alignedB_3_ce1_local;
assign alignedB_3_d0 = 8'd95;
assign alignedB_3_d1 = 8'd95;
assign alignedB_3_we0 = alignedB_3_we0_local;
assign alignedB_3_we1 = alignedB_3_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln86_10_fu_1072_p2 = (($signed(tmp_10_fu_1062_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_11_fu_1108_p2 = (($signed(tmp_11_fu_1098_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_12_fu_1144_p2 = (($signed(tmp_12_fu_1134_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_13_fu_1180_p2 = (($signed(tmp_13_fu_1170_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_14_fu_1216_p2 = (($signed(tmp_14_fu_1206_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_15_fu_1252_p2 = (($signed(tmp_15_fu_1242_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_1_fu_724_p2 = (($signed(tmp_1_fu_714_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_2_fu_764_p2 = (($signed(tmp_2_fu_754_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_3_fu_804_p2 = (($signed(tmp_3_fu_794_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_4_fu_844_p2 = (($signed(tmp_4_fu_834_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_5_fu_884_p2 = (($signed(tmp_5_fu_874_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_6_fu_924_p2 = (($signed(tmp_6_fu_914_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_7_fu_964_p2 = (($signed(tmp_7_fu_954_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_8_fu_1000_p2 = (($signed(tmp_8_fu_990_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_9_fu_1036_p2 = (($signed(tmp_9_fu_1026_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_fu_662_p2 = (($signed(tmp_fu_652_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign lshr_ln18_2_fu_672_p4 = {{b_str_idx_fu_78[7:2]}};
assign lshr_ln86_10_fu_1120_p4 = {{add_ln86_11_fu_1114_p2[7:2]}};
assign lshr_ln86_11_fu_1156_p4 = {{add_ln86_12_fu_1150_p2[7:2]}};
assign lshr_ln86_12_fu_1192_p4 = {{add_ln86_13_fu_1186_p2[7:2]}};
assign lshr_ln86_13_fu_1228_p4 = {{add_ln86_14_fu_1222_p2[7:2]}};
assign lshr_ln86_1_fu_736_p4 = {{add_ln86_1_fu_730_p2[7:2]}};
assign lshr_ln86_2_fu_776_p4 = {{add_ln86_2_fu_770_p2[7:2]}};
assign lshr_ln86_3_fu_816_p4 = {{add_ln86_3_fu_810_p2[7:2]}};
assign lshr_ln86_4_fu_856_p4 = {{add_ln86_4_fu_850_p2[7:2]}};
assign lshr_ln86_5_fu_896_p4 = {{add_ln86_5_fu_890_p2[7:2]}};
assign lshr_ln86_6_fu_936_p4 = {{add_ln86_6_fu_930_p2[7:2]}};
assign lshr_ln86_7_fu_976_p4 = {{add_ln86_7_fu_970_p2[7:2]}};
assign lshr_ln86_8_fu_1012_p4 = {{add_ln86_8_fu_1006_p2[7:2]}};
assign lshr_ln86_9_fu_1048_p4 = {{add_ln86_9_fu_1042_p2[7:2]}};
assign lshr_ln86_s_fu_1084_p4 = {{add_ln86_10_fu_1078_p2[7:2]}};
assign lshr_ln_fu_696_p4 = {{add_ln86_fu_690_p2[7:2]}};
assign tmp_10_fu_1062_p4 = {{add_ln86_9_fu_1042_p2[31:8]}};
assign tmp_11_fu_1098_p4 = {{add_ln86_10_fu_1078_p2[31:8]}};
assign tmp_12_fu_1134_p4 = {{add_ln86_11_fu_1114_p2[31:8]}};
assign tmp_13_fu_1170_p4 = {{add_ln86_12_fu_1150_p2[31:8]}};
assign tmp_14_fu_1206_p4 = {{add_ln86_13_fu_1186_p2[31:8]}};
assign tmp_15_fu_1242_p4 = {{add_ln86_14_fu_1222_p2[31:8]}};
assign tmp_1_fu_714_p4 = {{add_ln86_fu_690_p2[31:8]}};
assign tmp_2_fu_754_p4 = {{add_ln86_1_fu_730_p2[31:8]}};
assign tmp_3_fu_794_p4 = {{add_ln86_2_fu_770_p2[31:8]}};
assign tmp_4_fu_834_p4 = {{add_ln86_3_fu_810_p2[31:8]}};
assign tmp_5_fu_874_p4 = {{add_ln86_4_fu_850_p2[31:8]}};
assign tmp_6_fu_914_p4 = {{add_ln86_5_fu_890_p2[31:8]}};
assign tmp_7_fu_954_p4 = {{add_ln86_6_fu_930_p2[31:8]}};
assign tmp_8_fu_990_p4 = {{add_ln86_7_fu_970_p2[31:8]}};
assign tmp_9_fu_1026_p4 = {{add_ln86_8_fu_1006_p2[31:8]}};
assign tmp_fu_652_p4 = {{b_str_idx_fu_78[31:8]}};
assign trunc_ln86_fu_668_p1 = b_str_idx_fu_78[1:0];
assign zext_ln18_fu_682_p1 = lshr_ln18_2_fu_672_p4;
assign zext_ln86_10_fu_1094_p1 = lshr_ln86_s_fu_1084_p4;
assign zext_ln86_11_fu_1130_p1 = lshr_ln86_10_fu_1120_p4;
assign zext_ln86_12_fu_1166_p1 = lshr_ln86_11_fu_1156_p4;
assign zext_ln86_13_fu_1202_p1 = lshr_ln86_12_fu_1192_p4;
assign zext_ln86_14_fu_1238_p1 = lshr_ln86_13_fu_1228_p4;
assign zext_ln86_1_fu_746_p1 = lshr_ln86_1_fu_736_p4;
assign zext_ln86_2_fu_786_p1 = lshr_ln86_2_fu_776_p4;
assign zext_ln86_3_fu_826_p1 = lshr_ln86_3_fu_816_p4;
assign zext_ln86_4_fu_866_p1 = lshr_ln86_4_fu_856_p4;
assign zext_ln86_5_fu_906_p1 = lshr_ln86_5_fu_896_p4;
assign zext_ln86_6_fu_946_p1 = lshr_ln86_6_fu_936_p4;
assign zext_ln86_7_fu_986_p1 = lshr_ln86_7_fu_976_p4;
assign zext_ln86_8_fu_1022_p1 = lshr_ln86_8_fu_1012_p4;
assign zext_ln86_9_fu_1058_p1 = lshr_ln86_9_fu_1048_p4;
assign zext_ln86_fu_706_p1 = lshr_ln_fu_696_p4;
always @ (posedge ap_clk) begin
    zext_ln86_7_reg_1312[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln86_8_reg_1324[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln86_9_reg_1336[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln86_10_reg_1348[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln86_11_reg_1360[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln86_12_reg_1372[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln86_13_reg_1384[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln86_14_reg_1396[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
