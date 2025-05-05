module needwun_needwun_Pipeline_fill_out_fill_in (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ptr_0_address0,ptr_0_ce0,ptr_0_we0,ptr_0_d0,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_q0,M_0_address1,M_0_ce1,M_0_q1,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_q0,M_1_address1,M_1_ce1,M_1_q1,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,ptr_1_address0,ptr_1_ce0,ptr_1_we0,ptr_1_d0); 
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
output  [13:0] ptr_0_address0;
output   ptr_0_ce0;
output   ptr_0_we0;
output  [7:0] ptr_0_d0;
output  [13:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
input  [31:0] M_0_q0;
output  [13:0] M_0_address1;
output   M_0_ce1;
input  [31:0] M_0_q1;
output  [5:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
output  [13:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
input  [31:0] M_1_q0;
output  [13:0] M_1_address1;
output   M_1_ce1;
input  [31:0] M_1_q1;
output  [5:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
output  [5:0] SEQB_0_address0;
output   SEQB_0_ce0;
input  [7:0] SEQB_0_q0;
output  [5:0] SEQB_1_address0;
output   SEQB_1_ce0;
input  [7:0] SEQB_1_q0;
output  [13:0] ptr_1_address0;
output   ptr_1_ce0;
output   ptr_1_we0;
output  [7:0] ptr_1_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln28_reg_1295;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire   [31:0] grp_fu_557_p2;
reg   [31:0] reg_563;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage15_11001;
wire   [0:0] icmp_ln28_fu_585_p2;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] select_ln17_fu_609_p3;
reg   [7:0] select_ln17_reg_1299;
wire   [7:0] select_ln28_fu_623_p3;
reg   [7:0] select_ln28_reg_1306;
wire   [0:0] trunc_ln28_fu_631_p1;
reg   [0:0] trunc_ln28_reg_1312;
reg   [5:0] tmp_5_reg_1317;
wire   [6:0] trunc_ln29_fu_655_p1;
reg   [6:0] trunc_ln29_reg_1322;
wire   [5:0] lshr_ln17_1_fu_659_p4;
reg   [5:0] lshr_ln17_1_reg_1329;
wire    ap_block_pp0_stage1_11001;
wire   [14:0] empty_20_fu_700_p2;
reg   [14:0] empty_20_reg_1354;
wire   [14:0] empty_21_fu_706_p2;
reg   [14:0] empty_21_reg_1363;
wire   [6:0] add_ln30_fu_712_p2;
reg   [6:0] add_ln30_reg_1372;
reg   [7:0] SEQA_0_load_reg_1377;
wire   [6:0] add_ln30_2_fu_717_p2;
reg   [6:0] add_ln30_2_reg_1382;
reg   [7:0] SEQA_1_load_reg_1387;
wire   [14:0] zext_ln29_fu_764_p1;
reg   [14:0] zext_ln29_reg_1402;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln30_fu_770_p2;
reg   [0:0] icmp_ln30_reg_1407;
reg   [13:0] lshr_ln2_reg_1412;
wire   [0:0] icmp_ln30_1_fu_832_p2;
reg   [0:0] icmp_ln30_1_reg_1437;
wire   [0:0] icmp_ln30_2_fu_837_p2;
reg   [0:0] icmp_ln30_2_reg_1442;
wire   [0:0] icmp_ln30_3_fu_843_p2;
reg   [0:0] icmp_ln30_3_reg_1447;
wire   [0:0] trunc_ln39_fu_853_p1;
reg   [0:0] trunc_ln39_reg_1452;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] select_ln40_fu_862_p3;
reg   [31:0] select_ln40_reg_1468;
wire   [31:0] select_ln41_fu_870_p3;
reg   [31:0] select_ln41_reg_1474;
reg   [13:0] lshr_ln5_reg_1479;
wire   [31:0] up_left_fu_895_p2;
reg   [31:0] up_left_reg_1484;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] up_fu_901_p2;
reg   [31:0] up_reg_1490;
wire   [31:0] left_fu_906_p2;
reg   [31:0] left_reg_1495;
wire   [31:0] select_ln43_fu_917_p3;
reg   [31:0] select_ln43_reg_1500;
wire   [31:0] up_left_1_fu_932_p2;
reg   [31:0] up_left_1_reg_1506;
wire   [31:0] max_fu_941_p3;
reg   [31:0] max_reg_1512;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] zext_ln45_fu_949_p1;
reg   [63:0] zext_ln45_reg_1517;
wire   [0:0] icmp_ln46_fu_954_p2;
reg   [0:0] icmp_ln46_reg_1527;
wire   [0:0] icmp_ln48_fu_959_p2;
reg   [0:0] icmp_ln48_reg_1531;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [13:0] lshr_ln45_1_reg_1545;
wire   [31:0] left_1_fu_1003_p2;
reg   [31:0] left_1_reg_1550;
wire   [31:0] up_left_2_fu_1015_p2;
reg   [31:0] up_left_2_reg_1557;
wire   [31:0] max_1_fu_1038_p3;
reg   [31:0] max_1_reg_1563;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [6:0] add_ln29_fu_1065_p2;
reg   [6:0] add_ln29_reg_1578;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [13:0] lshr_ln45_2_reg_1593;
reg   [13:0] lshr_ln40_3_reg_1598;
reg   [13:0] lshr_ln45_3_reg_1603;
wire   [31:0] up_2_fu_1155_p2;
reg   [31:0] up_2_reg_1608;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] left_2_fu_1161_p2;
reg   [31:0] left_2_reg_1615;
wire   [31:0] up_left_3_fu_1173_p2;
reg   [31:0] up_left_3_reg_1622;
wire   [31:0] max_2_fu_1194_p3;
reg   [31:0] max_2_reg_1628;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [31:0] left_3_fu_1225_p2;
reg   [31:0] left_3_reg_1653;
wire   [31:0] max_3_fu_1247_p3;
reg   [31:0] max_3_reg_1660;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln17_fu_669_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast13_fu_688_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln30_2_fu_732_p1;
wire   [63:0] zext_ln30_4_fu_742_p1;
wire   [63:0] zext_ln40_fu_805_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_826_p1;
wire   [63:0] zext_ln39_fu_857_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire   [13:0] ptr_0_addr_2_gep_fu_274_p3;
wire   [13:0] ptr_1_addr_2_gep_fu_283_p3;
wire   [13:0] ptr_0_addr_gep_fu_292_p3;
wire   [13:0] ptr_1_addr_gep_fu_301_p3;
wire   [63:0] zext_ln40_1_fu_982_p1;
wire   [63:0] zext_ln45_1_fu_1045_p1;
wire    ap_block_pp0_stage9;
wire   [0:0] icmp_ln46_1_fu_1056_p2;
wire   [0:0] icmp_ln48_1_fu_1060_p2;
wire   [13:0] ptr_1_addr_5_gep_fu_358_p3;
wire   [13:0] ptr_0_addr_5_gep_fu_366_p3;
wire   [13:0] ptr_1_addr_4_gep_fu_374_p3;
wire   [13:0] ptr_0_addr_4_gep_fu_382_p3;
wire   [63:0] zext_ln40_2_fu_1088_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln45_2_fu_1201_p1;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13;
wire   [0:0] icmp_ln46_2_fu_1212_p2;
wire   [0:0] icmp_ln48_2_fu_1216_p2;
wire   [13:0] ptr_0_addr_8_gep_fu_438_p3;
wire   [13:0] ptr_1_addr_8_gep_fu_446_p3;
wire   [13:0] ptr_0_addr_7_gep_fu_454_p3;
wire   [13:0] ptr_1_addr_7_gep_fu_462_p3;
wire   [63:0] zext_ln40_3_fu_1220_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln45_3_fu_1254_p1;
wire   [0:0] icmp_ln46_3_fu_1265_p2;
wire   [0:0] icmp_ln48_3_fu_1269_p2;
wire   [13:0] ptr_1_addr_11_gep_fu_518_p3;
wire   [13:0] ptr_0_addr_11_gep_fu_526_p3;
wire   [13:0] ptr_1_addr_10_gep_fu_534_p3;
wire   [13:0] ptr_0_addr_10_gep_fu_542_p3;
reg   [7:0] a_idx_2_fu_84;
wire   [7:0] add_ln29_2_fu_747_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_2_load;
reg   [7:0] b_idx_1_fu_88;
reg   [7:0] ap_sig_allocacmp_b_idx_1_load;
reg   [12:0] indvar_flatten_fu_92;
wire   [12:0] add_ln28_fu_591_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg    SEQA_0_ce0_local;
reg   [5:0] SEQA_0_address0_local;
reg    SEQA_1_ce0_local;
reg   [5:0] SEQA_1_address0_local;
reg    SEQB_0_ce0_local;
reg    SEQB_1_ce0_local;
reg    M_0_ce1_local;
reg   [13:0] M_0_address1_local;
reg    M_0_ce0_local;
reg   [13:0] M_0_address0_local;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
wire    ap_block_pp0_stage13_11001;
reg    M_1_ce1_local;
reg   [13:0] M_1_address1_local;
reg    M_1_ce0_local;
reg   [13:0] M_1_address0_local;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
reg    ptr_0_we0_local;
reg   [7:0] ptr_0_d0_local;
reg    ptr_0_ce0_local;
reg   [13:0] ptr_0_address0_local;
reg    ptr_1_we0_local;
reg   [7:0] ptr_1_d0_local;
reg    ptr_1_ce0_local;
reg   [13:0] ptr_1_address0_local;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage15;
wire   [31:0] grp_fu_550_p3;
wire   [0:0] icmp_ln29_fu_603_p2;
wire   [7:0] add_ln28_1_fu_617_p2;
wire   [6:0] trunc_ln28_1_fu_635_p1;
wire   [6:0] empty_fu_639_p2;
wire   [14:0] p_shl_fu_693_p3;
wire   [14:0] b_idx_1_cast3_fu_685_p1;
wire   [5:0] lshr_ln_fu_722_p4;
wire   [5:0] add_ln30_1_fu_737_p2;
wire   [7:0] tmp_fu_757_p3;
wire   [14:0] zext_ln30_fu_767_p1;
wire   [14:0] add_ln39_1_fu_775_p2;
wire   [14:0] add_ln40_fu_790_p2;
wire   [13:0] lshr_ln3_fu_795_p4;
wire   [14:0] add_ln41_fu_811_p2;
wire   [13:0] lshr_ln4_fu_816_p4;
wire   [14:0] add_ln39_fu_849_p2;
wire   [31:0] select_ln39_1_fu_888_p3;
wire   [0:0] icmp_ln43_fu_911_p2;
wire   [31:0] select_ln39_2_fu_925_p3;
wire   [0:0] icmp_ln43_1_fu_937_p2;
wire   [14:0] zext_ln30_1_fu_964_p1;
wire   [14:0] add_ln40_2_fu_967_p2;
wire   [13:0] lshr_ln40_1_fu_972_p4;
wire   [14:0] add_ln45_fu_988_p2;
wire   [31:0] select_ln39_3_fu_1008_p3;
wire    ap_block_pp0_stage8;
wire   [0:0] icmp_ln43_2_fu_1021_p2;
wire   [31:0] select_ln43_2_fu_1026_p3;
wire   [0:0] icmp_ln43_3_fu_1033_p2;
wire   [14:0] zext_ln30_3_fu_1070_p1;
wire   [14:0] add_ln40_4_fu_1073_p2;
wire   [13:0] lshr_ln40_2_fu_1078_p4;
wire   [14:0] add_ln45_1_fu_1094_p2;
wire   [7:0] add_ln29_1_fu_1109_p2;
wire   [14:0] zext_ln30_5_fu_1114_p1;
wire   [14:0] add_ln40_6_fu_1118_p2;
wire   [14:0] add_ln45_2_fu_1133_p2;
wire    ap_block_pp0_stage11;
wire   [31:0] select_ln40_2_fu_1148_p3;
wire   [31:0] select_ln39_4_fu_1166_p3;
wire    ap_block_pp0_stage12;
wire   [0:0] icmp_ln43_4_fu_1179_p2;
wire   [31:0] select_ln43_4_fu_1183_p3;
wire   [0:0] icmp_ln43_5_fu_1189_p2;
wire   [0:0] icmp_ln43_6_fu_1230_p2;
wire   [31:0] select_ln43_6_fu_1235_p3;
wire   [0:0] icmp_ln43_7_fu_1242_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_idx_2_fu_84 = 8'd0;
#0 b_idx_1_fu_88 = 8'd0;
#0 indvar_flatten_fu_92 = 13'd0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_fu_84 <= 8'd1;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_2_fu_84 <= add_ln29_2_fu_747_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_585_p2 == 1'd0))) begin
            b_idx_1_fu_88 <= select_ln28_fu_623_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            b_idx_1_fu_88 <= 8'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_585_p2 == 1'd0))) begin
            indvar_flatten_fu_92 <= add_ln28_fu_591_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_92 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_0_load_reg_1377 <= SEQA_0_q0;
        SEQA_1_load_reg_1387 <= SEQA_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln29_reg_1578 <= add_ln29_fu_1065_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln30_2_reg_1382 <= add_ln30_2_fu_717_p2;
        add_ln30_reg_1372 <= add_ln30_fu_712_p2;
        empty_20_reg_1354 <= empty_20_fu_700_p2;
        empty_21_reg_1363 <= empty_21_fu_706_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln28_reg_1295 <= icmp_ln28_fu_585_p2;
        lshr_ln17_1_reg_1329 <= {{select_ln17_fu_609_p3[6:1]}};
        max_3_reg_1660 <= max_3_fu_1247_p3;
        select_ln17_reg_1299 <= select_ln17_fu_609_p3;
        select_ln28_reg_1306 <= select_ln28_fu_623_p3;
        tmp_5_reg_1317 <= {{empty_fu_639_p2[6:1]}};
        trunc_ln28_reg_1312 <= trunc_ln28_fu_631_p1;
        trunc_ln29_reg_1322 <= trunc_ln29_fu_655_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln30_1_reg_1437 <= icmp_ln30_1_fu_832_p2;
        icmp_ln30_2_reg_1442 <= icmp_ln30_2_fu_837_p2;
        icmp_ln30_3_reg_1447 <= icmp_ln30_3_fu_843_p2;
        icmp_ln30_reg_1407 <= icmp_ln30_fu_770_p2;
        lshr_ln2_reg_1412 <= {{add_ln39_1_fu_775_p2[14:1]}};
        zext_ln29_reg_1402[7 : 0] <= zext_ln29_fu_764_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln46_reg_1527 <= icmp_ln46_fu_954_p2;
        icmp_ln48_reg_1531 <= icmp_ln48_fu_959_p2;
        max_reg_1512 <= max_fu_941_p3;
        zext_ln45_reg_1517[13 : 0] <= zext_ln45_fu_949_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        left_1_reg_1550 <= left_1_fu_1003_p2;
        up_left_2_reg_1557 <= up_left_2_fu_1015_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        left_2_reg_1615 <= left_2_fu_1161_p2;
        up_2_reg_1608 <= up_2_fu_1155_p2;
        up_left_3_reg_1622 <= up_left_3_fu_1173_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        left_3_reg_1653 <= left_3_fu_1225_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        left_reg_1495 <= left_fu_906_p2;
        select_ln43_reg_1500 <= select_ln43_fu_917_p3;
        up_left_1_reg_1506 <= up_left_1_fu_932_p2;
        up_left_reg_1484 <= up_left_fu_895_p2;
        up_reg_1490 <= up_fu_901_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        lshr_ln40_3_reg_1598 <= {{add_ln40_6_fu_1118_p2[14:1]}};
        lshr_ln45_2_reg_1593 <= {{add_ln45_1_fu_1094_p2[14:1]}};
        lshr_ln45_3_reg_1603 <= {{add_ln45_2_fu_1133_p2[14:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln45_1_reg_1545 <= {{add_ln45_fu_988_p2[14:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln5_reg_1479 <= {{add_ln39_fu_849_p2[14:1]}};
        select_ln40_reg_1468 <= select_ln40_fu_862_p3;
        select_ln41_reg_1474 <= select_ln41_fu_870_p3;
        trunc_ln39_reg_1452 <= trunc_ln39_fu_853_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        max_1_reg_1563 <= max_1_fu_1038_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        max_2_reg_1628 <= max_2_fu_1194_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_563 <= grp_fu_557_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_address0_local = zext_ln45_3_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        M_0_address0_local = zext_ln45_2_fu_1201_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        M_0_address0_local = zext_ln45_1_fu_1045_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_0_address0_local = zext_ln45_fu_949_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_address0_local = zext_ln41_fu_826_p1;
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            M_0_address1_local = zext_ln40_3_fu_1220_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            M_0_address1_local = zext_ln40_2_fu_1088_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_0_address1_local = zext_ln40_1_fu_982_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_address1_local = zext_ln39_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address1_local = zext_ln40_fu_805_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_d0_local = max_3_reg_1660;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        M_0_d0_local = max_2_reg_1628;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        M_0_d0_local = max_1_reg_1563;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_0_d0_local = max_fu_941_p3;
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln45_3_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        M_1_address0_local = zext_ln45_2_fu_1201_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        M_1_address0_local = zext_ln45_1_fu_1045_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_1_address0_local = zext_ln45_fu_949_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln41_fu_826_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            M_1_address1_local = zext_ln40_3_fu_1220_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            M_1_address1_local = zext_ln40_2_fu_1088_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_1_address1_local = zext_ln40_1_fu_982_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_1_address1_local = zext_ln39_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_address1_local = zext_ln40_fu_805_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_d0_local = max_3_reg_1660;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        M_1_d0_local = max_2_reg_1628;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        M_1_d0_local = max_1_reg_1563;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_1_d0_local = max_fu_941_p3;
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            SEQA_0_address0_local = zext_ln30_2_fu_732_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            SEQA_0_address0_local = zext_ln17_fu_669_p1;
        end else begin
            SEQA_0_address0_local = 'bx;
        end
    end else begin
        SEQA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            SEQA_1_address0_local = zext_ln30_4_fu_742_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            SEQA_1_address0_local = zext_ln17_fu_669_p1;
        end else begin
            SEQA_1_address0_local = 'bx;
        end
    end else begin
        SEQA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1295 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_a_idx_2_load = 8'd1;
    end else begin
        ap_sig_allocacmp_a_idx_2_load = a_idx_2_fu_84;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_idx_1_load = 8'd1;
    end else begin
        ap_sig_allocacmp_b_idx_1_load = b_idx_1_fu_88;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_92;
    end
end
always @ (*) begin
    if (((icmp_ln46_3_fu_1265_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_0_address0_local = ptr_0_addr_10_gep_fu_542_p3;
    end else if (((icmp_ln48_3_fu_1269_p2 == 1'd1) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_0_address0_local = ptr_0_addr_11_gep_fu_526_p3;
    end else if (((icmp_ln48_3_fu_1269_p2 == 1'd0) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_0_address0_local = zext_ln45_3_fu_1254_p1;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ptr_0_address0_local = ptr_0_addr_7_gep_fu_454_p3;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd1) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ptr_0_address0_local = ptr_0_addr_8_gep_fu_438_p3;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ptr_0_address0_local = zext_ln45_2_fu_1201_p1;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (icmp_ln46_1_fu_1056_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ptr_0_address0_local = ptr_0_addr_4_gep_fu_382_p3;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (icmp_ln48_1_fu_1060_p2 == 1'd1) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ptr_0_address0_local = ptr_0_addr_5_gep_fu_366_p3;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (icmp_ln48_1_fu_1060_p2 == 1'd0) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ptr_0_address0_local = zext_ln45_1_fu_1045_p1;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1527 == 1'd1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_0_address0_local = ptr_0_addr_gep_fu_292_p3;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd1) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_0_address0_local = ptr_0_addr_2_gep_fu_274_p3;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd0) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_0_address0_local = zext_ln45_reg_1517;
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_3_fu_1265_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln48_3_fu_1269_p2 == 1'd1) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln48_3_fu_1269_p2 == 1'd0) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd1) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 ==ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln46_1_fu_1056_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln48_1_fu_1060_p2 == 1'd1) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln48_1_fu_1060_p2 == 1'd0) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1527 == 1'd1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd1) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd0) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln46_3_fu_1265_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (icmp_ln46_1_fu_1056_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1527 == 1'd1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_0_d0_local = 8'd60;
    end else if ((((icmp_ln48_3_fu_1269_p2 == 1'd1) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd1) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (icmp_ln48_1_fu_1060_p2 == 1'd1) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd1) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_0_d0_local = 8'd94;
    end else if ((((icmp_ln48_3_fu_1269_p2 == 1'd0) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (icmp_ln48_1_fu_1060_p2 == 1'd0) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd0) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_0_d0_local = 8'd92;
    end else begin
        ptr_0_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_3_fu_1265_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln48_3_fu_1269_p2 == 1'd1) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln48_3_fu_1269_p2 == 1'd0) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd1) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 ==ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln46_1_fu_1056_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln48_1_fu_1060_p2 == 1'd1) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln48_1_fu_1060_p2 == 1'd0) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1527 == 1'd1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd1) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd0) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_0_we0_local = 1'b1;
    end else begin
        ptr_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln46_3_fu_1265_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_1_address0_local = ptr_1_addr_10_gep_fu_534_p3;
    end else if (((icmp_ln48_3_fu_1269_p2 == 1'd1) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_1_address0_local = ptr_1_addr_11_gep_fu_518_p3;
    end else if (((icmp_ln48_3_fu_1269_p2 == 1'd0) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_1_address0_local = zext_ln45_3_fu_1254_p1;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ptr_1_address0_local = ptr_1_addr_7_gep_fu_462_p3;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd1) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ptr_1_address0_local = ptr_1_addr_8_gep_fu_446_p3;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ptr_1_address0_local = zext_ln45_2_fu_1201_p1;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (icmp_ln46_1_fu_1056_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ptr_1_address0_local = ptr_1_addr_4_gep_fu_374_p3;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (icmp_ln48_1_fu_1060_p2 == 1'd1) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ptr_1_address0_local = ptr_1_addr_5_gep_fu_358_p3;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (icmp_ln48_1_fu_1060_p2 == 1'd0) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ptr_1_address0_local = zext_ln45_1_fu_1045_p1;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1527 == 1'd1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_1_address0_local = ptr_1_addr_gep_fu_301_p3;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd1) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_1_address0_local = ptr_1_addr_2_gep_fu_283_p3;
    end else if (((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd0) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_1_address0_local = zext_ln45_reg_1517;
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_3_fu_1265_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln48_3_fu_1269_p2 == 1'd1) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln48_3_fu_1269_p2 == 1'd0) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd1) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 ==ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln46_1_fu_1056_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln48_1_fu_1060_p2 == 1'd1) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln48_1_fu_1060_p2 == 1'd0) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1527 == 1'd1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd1) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd0) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln46_3_fu_1265_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (icmp_ln46_1_fu_1056_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1527 == 1'd1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_1_d0_local = 8'd60;
    end else if ((((icmp_ln48_3_fu_1269_p2 == 1'd1) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd1) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (icmp_ln48_1_fu_1060_p2 == 1'd1) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd1) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_1_d0_local = 8'd94;
    end else if ((((icmp_ln48_3_fu_1269_p2 == 1'd0) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (icmp_ln48_1_fu_1060_p2 == 1'd0) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd0) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_1_d0_local = 8'd92;
    end else begin
        ptr_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_3_fu_1265_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln48_3_fu_1269_p2 == 1'd1) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln48_3_fu_1269_p2 == 1'd0) & (icmp_ln46_3_fu_1265_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd1) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 ==ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (icmp_ln48_2_fu_1216_p2 == 1'd0) & (icmp_ln46_2_fu_1212_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln46_1_fu_1056_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln48_1_fu_1060_p2 == 1'd1) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln48_1_fu_1060_p2 == 1'd0) & (icmp_ln46_1_fu_1056_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1452 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1527 == 1'd1) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd1) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1531 == 1'd0) & (icmp_ln46_reg_1527 == 1'd0) & (trunc_ln39_reg_1452 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_1_we0_local = 1'b1;
    end else begin
        ptr_1_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
assign M_0_address0 = M_0_address0_local;
assign M_0_address1 = M_0_address1_local;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = M_0_d0_local;
assign M_0_we0 = M_0_we0_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = M_1_address1_local;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = M_1_d0_local;
assign M_1_we0 = M_1_we0_local;
assign SEQA_0_address0 = SEQA_0_address0_local;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = SEQA_1_address0_local;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQB_0_address0 = p_cast13_fu_688_p1;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = p_cast13_fu_688_p1;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign add_ln28_1_fu_617_p2 = (ap_sig_allocacmp_b_idx_1_load + 8'd1);
assign add_ln28_fu_591_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln29_1_fu_1109_p2 = (select_ln17_reg_1299 + 8'd3);
assign add_ln29_2_fu_747_p2 = (select_ln17_reg_1299 + 8'd4);
assign add_ln29_fu_1065_p2 = (trunc_ln29_reg_1322 + 7'd2);
assign add_ln30_1_fu_737_p2 = (lshr_ln17_1_reg_1329 + 6'd1);
assign add_ln30_2_fu_717_p2 = (trunc_ln29_reg_1322 + 7'd1);
assign add_ln30_fu_712_p2 = ($signed(trunc_ln29_reg_1322) + $signed(7'd127));
assign add_ln39_1_fu_775_p2 = (zext_ln30_fu_767_p1 + empty_21_reg_1363);
assign add_ln39_fu_849_p2 = (zext_ln29_reg_1402 + empty_20_reg_1354);
assign add_ln40_2_fu_967_p2 = (zext_ln30_1_fu_964_p1 + empty_21_reg_1363);
assign add_ln40_4_fu_1073_p2 = (zext_ln30_3_fu_1070_p1 + empty_21_reg_1363);
assign add_ln40_6_fu_1118_p2 = (zext_ln30_5_fu_1114_p1 + empty_21_reg_1363);
assign add_ln40_fu_790_p2 = (zext_ln29_fu_764_p1 + empty_21_reg_1363);
assign add_ln41_fu_811_p2 = (zext_ln30_fu_767_p1 + empty_20_reg_1354);
assign add_ln45_1_fu_1094_p2 = (zext_ln30_3_fu_1070_p1 + empty_20_reg_1354);
assign add_ln45_2_fu_1133_p2 = (zext_ln30_5_fu_1114_p1 + empty_20_reg_1354);
assign add_ln45_fu_988_p2 = (zext_ln30_1_fu_964_p1 + empty_20_reg_1354);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign b_idx_1_cast3_fu_685_p1 = select_ln28_reg_1306;
assign empty_20_fu_700_p2 = (p_shl_fu_693_p3 + b_idx_1_cast3_fu_685_p1);
assign empty_21_fu_706_p2 = ($signed(empty_20_fu_700_p2) + $signed(15'd32639));
assign empty_fu_639_p2 = ($signed(trunc_ln28_1_fu_635_p1) + $signed(7'd127));
assign grp_fu_550_p3 = ((trunc_ln39_reg_1452[0:0] == 1'b1) ? M_1_q1 : M_0_q1);
assign grp_fu_557_p2 = ($signed(grp_fu_550_p3) + $signed(32'd4294967295));
assign icmp_ln28_fu_585_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_603_p2 = ((ap_sig_allocacmp_a_idx_2_load < 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_832_p2 = ((SEQA_1_load_reg_1387 == tmp_fu_757_p3) ? 1'b1 : 1'b0);
assign icmp_ln30_2_fu_837_p2 = ((SEQA_0_q0 == tmp_fu_757_p3) ? 1'b1 : 1'b0);
assign icmp_ln30_3_fu_843_p2 = ((SEQA_1_q0 == tmp_fu_757_p3) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_770_p2 = ((SEQA_0_load_reg_1377 == tmp_fu_757_p3) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_937_p2 = (($signed(up_left_reg_1484) > $signed(select_ln43_reg_1500)) ? 1'b1 : 1'b0);
assign icmp_ln43_2_fu_1021_p2 = (($signed(reg_563) > $signed(left_1_reg_1550)) ? 1'b1 : 1'b0);
assign icmp_ln43_3_fu_1033_p2 = (($signed(up_left_1_reg_1506) > $signed(select_ln43_2_fu_1026_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_4_fu_1179_p2 = (($signed(up_2_reg_1608) > $signed(left_2_reg_1615)) ? 1'b1 : 1'b0);
assign icmp_ln43_5_fu_1189_p2 = (($signed(up_left_2_reg_1557) > $signed(select_ln43_4_fu_1183_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_6_fu_1230_p2 = (($signed(reg_563) > $signed(left_3_reg_1653)) ? 1'b1 : 1'b0);
assign icmp_ln43_7_fu_1242_p2 = (($signed(up_left_3_reg_1622) > $signed(select_ln43_6_fu_1235_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_911_p2 = (($signed(up_fu_901_p2) > $signed(left_fu_906_p2)) ? 1'b1 : 1'b0);
assign icmp_ln46_1_fu_1056_p2 = ((max_1_reg_1563 == left_1_reg_1550) ? 1'b1 : 1'b0);
assign icmp_ln46_2_fu_1212_p2 = ((max_2_reg_1628 == left_2_reg_1615) ? 1'b1 : 1'b0);
assign icmp_ln46_3_fu_1265_p2 = ((max_3_reg_1660 == left_3_reg_1653) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_954_p2 = ((max_fu_941_p3 == left_reg_1495) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_1060_p2 = ((max_1_reg_1563 == reg_563) ? 1'b1 : 1'b0);
assign icmp_ln48_2_fu_1216_p2 = ((max_2_reg_1628 == up_2_reg_1608) ? 1'b1 : 1'b0);
assign icmp_ln48_3_fu_1269_p2 = ((max_3_reg_1660 == reg_563) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_959_p2 = ((max_fu_941_p3 == up_reg_1490) ? 1'b1 : 1'b0);
assign left_1_fu_1003_p2 = ($signed(max_reg_1512) + $signed(32'd4294967295));
assign left_2_fu_1161_p2 = ($signed(max_1_reg_1563) + $signed(32'd4294967295));
assign left_3_fu_1225_p2 = ($signed(max_2_reg_1628) + $signed(32'd4294967295));
assign left_fu_906_p2 = ($signed(select_ln41_reg_1474) + $signed(32'd4294967295));
assign lshr_ln17_1_fu_659_p4 = {{select_ln17_fu_609_p3[6:1]}};
assign lshr_ln3_fu_795_p4 = {{add_ln40_fu_790_p2[14:1]}};
assign lshr_ln40_1_fu_972_p4 = {{add_ln40_2_fu_967_p2[14:1]}};
assign lshr_ln40_2_fu_1078_p4 = {{add_ln40_4_fu_1073_p2[14:1]}};
assign lshr_ln4_fu_816_p4 = {{add_ln41_fu_811_p2[14:1]}};
assign lshr_ln_fu_722_p4 = {{add_ln30_2_fu_717_p2[6:1]}};
assign max_1_fu_1038_p3 = ((icmp_ln43_3_fu_1033_p2[0:0] == 1'b1) ? up_left_1_reg_1506 : select_ln43_2_fu_1026_p3);
assign max_2_fu_1194_p3 = ((icmp_ln43_5_fu_1189_p2[0:0] == 1'b1) ? up_left_2_reg_1557 : select_ln43_4_fu_1183_p3);
assign max_3_fu_1247_p3 = ((icmp_ln43_7_fu_1242_p2[0:0] == 1'b1) ? up_left_3_reg_1622 : select_ln43_6_fu_1235_p3);
assign max_fu_941_p3 = ((icmp_ln43_1_fu_937_p2[0:0] == 1'b1) ? up_left_reg_1484 : select_ln43_reg_1500);
assign p_cast13_fu_688_p1 = tmp_5_reg_1317;
assign p_shl_fu_693_p3 = {{select_ln28_reg_1306}, {7'd0}};
assign ptr_0_addr_10_gep_fu_542_p3 = zext_ln45_3_fu_1254_p1;
assign ptr_0_addr_11_gep_fu_526_p3 = zext_ln45_3_fu_1254_p1;
assign ptr_0_addr_2_gep_fu_274_p3 = zext_ln45_reg_1517;
assign ptr_0_addr_4_gep_fu_382_p3 = zext_ln45_1_fu_1045_p1;
assign ptr_0_addr_5_gep_fu_366_p3 = zext_ln45_1_fu_1045_p1;
assign ptr_0_addr_7_gep_fu_454_p3 = zext_ln45_2_fu_1201_p1;
assign ptr_0_addr_8_gep_fu_438_p3 = zext_ln45_2_fu_1201_p1;
assign ptr_0_addr_gep_fu_292_p3 = zext_ln45_reg_1517;
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_0_d0 = ptr_0_d0_local;
assign ptr_0_we0 = ptr_0_we0_local;
assign ptr_1_addr_10_gep_fu_534_p3 = zext_ln45_3_fu_1254_p1;
assign ptr_1_addr_11_gep_fu_518_p3 = zext_ln45_3_fu_1254_p1;
assign ptr_1_addr_2_gep_fu_283_p3 = zext_ln45_reg_1517;
assign ptr_1_addr_4_gep_fu_374_p3 = zext_ln45_1_fu_1045_p1;
assign ptr_1_addr_5_gep_fu_358_p3 = zext_ln45_1_fu_1045_p1;
assign ptr_1_addr_7_gep_fu_462_p3 = zext_ln45_2_fu_1201_p1;
assign ptr_1_addr_8_gep_fu_446_p3 = zext_ln45_2_fu_1201_p1;
assign ptr_1_addr_gep_fu_301_p3 = zext_ln45_reg_1517;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_1_d0 = ptr_1_d0_local;
assign ptr_1_we0 = ptr_1_we0_local;
assign select_ln17_fu_609_p3 = ((icmp_ln29_fu_603_p2[0:0] == 1'b1) ? ap_sig_allocacmp_a_idx_2_load : 8'd1);
assign select_ln28_fu_623_p3 = ((icmp_ln29_fu_603_p2[0:0] == 1'b1) ? ap_sig_allocacmp_b_idx_1_load : add_ln28_1_fu_617_p2);
assign select_ln39_1_fu_888_p3 = ((icmp_ln30_reg_1407[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_2_fu_925_p3 = ((icmp_ln30_1_reg_1437[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_3_fu_1008_p3 = ((icmp_ln30_2_reg_1442[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_4_fu_1166_p3 = ((icmp_ln30_3_reg_1447[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln40_2_fu_1148_p3 = ((trunc_ln39_reg_1452[0:0] == 1'b1) ? M_0_q1 : M_1_q1);
assign select_ln40_fu_862_p3 = ((trunc_ln39_fu_853_p1[0:0] == 1'b1) ? M_0_q1 : M_1_q1);
assign select_ln41_fu_870_p3 = ((trunc_ln39_fu_853_p1[0:0] == 1'b1) ? M_0_q0 : M_1_q0);
assign select_ln43_2_fu_1026_p3 = ((icmp_ln43_2_fu_1021_p2[0:0] == 1'b1) ? reg_563 : left_1_reg_1550);
assign select_ln43_4_fu_1183_p3 = ((icmp_ln43_4_fu_1179_p2[0:0] == 1'b1) ? up_2_reg_1608 : left_2_reg_1615);
assign select_ln43_6_fu_1235_p3 = ((icmp_ln43_6_fu_1230_p2[0:0] == 1'b1) ? reg_563 : left_3_reg_1653);
assign select_ln43_fu_917_p3 = ((icmp_ln43_fu_911_p2[0:0] == 1'b1) ? up_fu_901_p2 : left_fu_906_p2);
assign tmp_fu_757_p3 = ((trunc_ln28_reg_1312[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign trunc_ln28_1_fu_635_p1 = select_ln28_fu_623_p3[6:0];
assign trunc_ln28_fu_631_p1 = select_ln28_fu_623_p3[0:0];
assign trunc_ln29_fu_655_p1 = select_ln17_fu_609_p3[6:0];
assign trunc_ln39_fu_853_p1 = add_ln39_fu_849_p2[0:0];
assign up_2_fu_1155_p2 = ($signed(select_ln40_2_fu_1148_p3) + $signed(32'd4294967295));
assign up_fu_901_p2 = ($signed(select_ln40_reg_1468) + $signed(32'd4294967295));
assign up_left_1_fu_932_p2 = (select_ln39_2_fu_925_p3 + select_ln40_reg_1468);
assign up_left_2_fu_1015_p2 = (select_ln39_3_fu_1008_p3 + grp_fu_550_p3);
assign up_left_3_fu_1173_p2 = (select_ln39_4_fu_1166_p3 + select_ln40_2_fu_1148_p3);
assign up_left_fu_895_p2 = (grp_fu_550_p3 + select_ln39_1_fu_888_p3);
assign zext_ln17_fu_669_p1 = lshr_ln17_1_fu_659_p4;
assign zext_ln29_fu_764_p1 = select_ln17_reg_1299;
assign zext_ln30_1_fu_964_p1 = add_ln30_2_reg_1382;
assign zext_ln30_2_fu_732_p1 = lshr_ln_fu_722_p4;
assign zext_ln30_3_fu_1070_p1 = add_ln29_reg_1578;
assign zext_ln30_4_fu_742_p1 = add_ln30_1_fu_737_p2;
assign zext_ln30_5_fu_1114_p1 = add_ln29_1_fu_1109_p2;
assign zext_ln30_fu_767_p1 = add_ln30_reg_1372;
assign zext_ln39_fu_857_p1 = lshr_ln2_reg_1412;
assign zext_ln40_1_fu_982_p1 = lshr_ln40_1_fu_972_p4;
assign zext_ln40_2_fu_1088_p1 = lshr_ln40_2_fu_1078_p4;
assign zext_ln40_3_fu_1220_p1 = lshr_ln40_3_reg_1598;
assign zext_ln40_fu_805_p1 = lshr_ln3_fu_795_p4;
assign zext_ln41_fu_826_p1 = lshr_ln4_fu_816_p4;
assign zext_ln45_1_fu_1045_p1 = lshr_ln45_1_reg_1545;
assign zext_ln45_2_fu_1201_p1 = lshr_ln45_2_reg_1593;
assign zext_ln45_3_fu_1254_p1 = lshr_ln45_3_reg_1603;
assign zext_ln45_fu_949_p1 = lshr_ln5_reg_1479;
always @ (posedge ap_clk) begin
    zext_ln29_reg_1402[14:8] <= 7'b0000000;
    zext_ln45_reg_1517[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 