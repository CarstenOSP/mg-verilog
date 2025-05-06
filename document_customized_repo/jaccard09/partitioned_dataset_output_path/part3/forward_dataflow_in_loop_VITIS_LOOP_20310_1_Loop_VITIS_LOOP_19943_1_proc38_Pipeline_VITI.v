
module forward_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_19943_1_proc38_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v15428_0_0_0_address0,v15428_0_0_0_ce0,v15428_0_0_0_we0,v15428_0_0_0_d0,v15428_0_0_1_address0,v15428_0_0_1_ce0,v15428_0_0_1_we0,v15428_0_0_1_d0,v15428_0_0_2_address0,v15428_0_0_2_ce0,v15428_0_0_2_we0,v15428_0_0_2_d0,v15428_0_0_3_address0,v15428_0_0_3_ce0,v15428_0_0_3_we0,v15428_0_0_3_d0,v15428_0_1_0_address0,v15428_0_1_0_ce0,v15428_0_1_0_we0,v15428_0_1_0_d0,v15428_0_1_1_address0,v15428_0_1_1_ce0,v15428_0_1_1_we0,v15428_0_1_1_d0,v15428_0_1_2_address0,v15428_0_1_2_ce0,v15428_0_1_2_we0,v15428_0_1_2_d0,v15428_0_1_3_address0,v15428_0_1_3_ce0,v15428_0_1_3_we0,v15428_0_1_3_d0,v15428_1_0_0_address0,v15428_1_0_0_ce0,v15428_1_0_0_we0,v15428_1_0_0_d0,v15428_1_0_1_address0,v15428_1_0_1_ce0,v15428_1_0_1_we0,v15428_1_0_1_d0,v15428_1_0_2_address0,v15428_1_0_2_ce0,v15428_1_0_2_we0,v15428_1_0_2_d0,v15428_1_0_3_address0,v15428_1_0_3_ce0,v15428_1_0_3_we0,v15428_1_0_3_d0,v15428_1_1_0_address0,v15428_1_1_0_ce0,v15428_1_1_0_we0,v15428_1_1_0_d0,v15428_1_1_1_address0,v15428_1_1_1_ce0,v15428_1_1_1_we0,v15428_1_1_1_d0,v15428_1_1_2_address0,v15428_1_1_2_ce0,v15428_1_1_2_we0,v15428_1_1_2_d0,v15428_1_1_3_address0,v15428_1_1_3_ce0,v15428_1_1_3_we0,v15428_1_1_3_d0,and_ln,empty,mul9_i115,p_udiv14_cast,v15400_15_address0,v15400_15_ce0,v15400_15_q0,v15400_14_address0,v15400_14_ce0,v15400_14_q0,v15400_13_address0,v15400_13_ce0,v15400_13_q0,v15400_12_address0,v15400_12_ce0,v15400_12_q0,v15400_11_address0,v15400_11_ce0,v15400_11_q0,v15400_10_address0,v15400_10_ce0,v15400_10_q0,v15400_9_address0,v15400_9_ce0,v15400_9_q0,v15400_8_address0,v15400_8_ce0,v15400_8_q0,v15400_7_address0,v15400_7_ce0,v15400_7_q0,v15400_6_address0,v15400_6_ce0,v15400_6_q0,v15400_5_address0,v15400_5_ce0,v15400_5_q0,v15400_4_address0,v15400_4_ce0,v15400_4_q0,v15400_3_address0,v15400_3_ce0,v15400_3_q0,v15400_2_address0,v15400_2_ce0,v15400_2_q0,v15400_1_address0,v15400_1_ce0,v15400_1_q0,v15400_address0,v15400_ce0,v15400_q0,mul13_i,trunc_ln);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v15428_0_0_0_address0;
output   v15428_0_0_0_ce0;
output   v15428_0_0_0_we0;
output  [7:0] v15428_0_0_0_d0;
output  [14:0] v15428_0_0_1_address0;
output   v15428_0_0_1_ce0;
output   v15428_0_0_1_we0;
output  [7:0] v15428_0_0_1_d0;
output  [14:0] v15428_0_0_2_address0;
output   v15428_0_0_2_ce0;
output   v15428_0_0_2_we0;
output  [7:0] v15428_0_0_2_d0;
output  [14:0] v15428_0_0_3_address0;
output   v15428_0_0_3_ce0;
output   v15428_0_0_3_we0;
output  [7:0] v15428_0_0_3_d0;
output  [14:0] v15428_0_1_0_address0;
output   v15428_0_1_0_ce0;
output   v15428_0_1_0_we0;
output  [7:0] v15428_0_1_0_d0;
output  [14:0] v15428_0_1_1_address0;
output   v15428_0_1_1_ce0;
output   v15428_0_1_1_we0;
output  [7:0] v15428_0_1_1_d0;
output  [14:0] v15428_0_1_2_address0;
output   v15428_0_1_2_ce0;
output   v15428_0_1_2_we0;
output  [7:0] v15428_0_1_2_d0;
output  [14:0] v15428_0_1_3_address0;
output   v15428_0_1_3_ce0;
output   v15428_0_1_3_we0;
output  [7:0] v15428_0_1_3_d0;
output  [14:0] v15428_1_0_0_address0;
output   v15428_1_0_0_ce0;
output   v15428_1_0_0_we0;
output  [7:0] v15428_1_0_0_d0;
output  [14:0] v15428_1_0_1_address0;
output   v15428_1_0_1_ce0;
output   v15428_1_0_1_we0;
output  [7:0] v15428_1_0_1_d0;
output  [14:0] v15428_1_0_2_address0;
output   v15428_1_0_2_ce0;
output   v15428_1_0_2_we0;
output  [7:0] v15428_1_0_2_d0;
output  [14:0] v15428_1_0_3_address0;
output   v15428_1_0_3_ce0;
output   v15428_1_0_3_we0;
output  [7:0] v15428_1_0_3_d0;
output  [14:0] v15428_1_1_0_address0;
output   v15428_1_1_0_ce0;
output   v15428_1_1_0_we0;
output  [7:0] v15428_1_1_0_d0;
output  [14:0] v15428_1_1_1_address0;
output   v15428_1_1_1_ce0;
output   v15428_1_1_1_we0;
output  [7:0] v15428_1_1_1_d0;
output  [14:0] v15428_1_1_2_address0;
output   v15428_1_1_2_ce0;
output   v15428_1_1_2_we0;
output  [7:0] v15428_1_1_2_d0;
output  [14:0] v15428_1_1_3_address0;
output   v15428_1_1_3_ce0;
output   v15428_1_1_3_we0;
output  [7:0] v15428_1_1_3_d0;
input  [4:0] and_ln;
input  [0:0] empty;
input  [6:0] mul9_i115;
input  [5:0] p_udiv14_cast;
output  [9:0] v15400_15_address0;
output   v15400_15_ce0;
input  [7:0] v15400_15_q0;
output  [9:0] v15400_14_address0;
output   v15400_14_ce0;
input  [7:0] v15400_14_q0;
output  [9:0] v15400_13_address0;
output   v15400_13_ce0;
input  [7:0] v15400_13_q0;
output  [9:0] v15400_12_address0;
output   v15400_12_ce0;
input  [7:0] v15400_12_q0;
output  [9:0] v15400_11_address0;
output   v15400_11_ce0;
input  [7:0] v15400_11_q0;
output  [9:0] v15400_10_address0;
output   v15400_10_ce0;
input  [7:0] v15400_10_q0;
output  [9:0] v15400_9_address0;
output   v15400_9_ce0;
input  [7:0] v15400_9_q0;
output  [9:0] v15400_8_address0;
output   v15400_8_ce0;
input  [7:0] v15400_8_q0;
output  [9:0] v15400_7_address0;
output   v15400_7_ce0;
input  [7:0] v15400_7_q0;
output  [9:0] v15400_6_address0;
output   v15400_6_ce0;
input  [7:0] v15400_6_q0;
output  [9:0] v15400_5_address0;
output   v15400_5_ce0;
input  [7:0] v15400_5_q0;
output  [9:0] v15400_4_address0;
output   v15400_4_ce0;
input  [7:0] v15400_4_q0;
output  [9:0] v15400_3_address0;
output   v15400_3_ce0;
input  [7:0] v15400_3_q0;
output  [9:0] v15400_2_address0;
output   v15400_2_ce0;
input  [7:0] v15400_2_q0;
output  [9:0] v15400_1_address0;
output   v15400_1_ce0;
input  [7:0] v15400_1_q0;
output  [9:0] v15400_address0;
output   v15400_ce0;
input  [7:0] v15400_q0;
input  [6:0] mul13_i;
input  [4:0] trunc_ln;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln19943_fu_956_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] lshr_ln_fu_796_p4;
reg   [2:0] lshr_ln_reg_1382;
reg   [3:0] tmp_70_reg_1388;
wire   [3:0] lshr_ln19944_1_fu_852_p4;
reg   [3:0] lshr_ln19944_1_reg_1394;
wire   [6:0] add_ln19947_fu_866_p2;
reg   [6:0] add_ln19947_reg_1399;
reg   [5:0] lshr_ln12_reg_1405;
reg   [5:0] lshr_ln12_reg_1405_pp0_iter1_reg;
reg   [2:0] lshr_ln19945_1_reg_1410;
reg   [2:0] lshr_ln19945_1_reg_1410_pp0_iter1_reg;
reg   [4:0] lshr_ln13_reg_1416;
reg   [4:0] lshr_ln13_reg_1416_pp0_iter1_reg;
wire   [0:0] icmp_ln19945_fu_944_p2;
reg   [0:0] icmp_ln19945_reg_1421;
wire   [0:0] icmp_ln19944_fu_950_p2;
reg   [0:0] icmp_ln19944_reg_1426;
reg   [0:0] icmp_ln19943_reg_1431;
wire   [9:0] sub_ln19962_fu_1007_p2;
reg   [9:0] sub_ln19962_reg_1435;
wire   [9:0] sub_ln19978_fu_1031_p2;
reg   [9:0] sub_ln19978_reg_1441;
wire   [5:0] empty_198_fu_1056_p2;
reg   [5:0] empty_198_reg_1447;
reg   [0:0] ap_phi_mux_icmp_ln19944291_phi_fu_677_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln19945290_phi_fu_687_p4;
wire   [63:0] zext_ln19947_4_fu_1070_p1;
wire   [63:0] zext_ln19972_1_fu_1238_p1;
wire   [63:0] zext_ln19964_fu_1249_p1;
wire   [63:0] zext_ln19956_fu_1260_p1;
wire   [63:0] zext_ln19948_fu_1271_p1;
wire   [63:0] zext_ln19978_4_fu_1285_p1;
wire   [63:0] zext_ln19970_2_fu_1298_p1;
wire   [63:0] zext_ln19962_2_fu_1311_p1;
wire   [63:0] zext_ln19954_1_fu_1324_p1;
reg   [9:0] indvar_flatten12285_fu_186;
wire   [9:0] add_ln19943_1_fu_938_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12285_load;
reg   [4:0] v15161286_fu_190;
wire   [4:0] v15161_fu_760_p3;
reg   [4:0] ap_sig_allocacmp_v15161286_load;
reg   [6:0] indvar_flatten287_fu_194;
wire   [6:0] select_ln19944_1_fu_930_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten287_load;
reg   [4:0] v15162288_fu_198;
wire   [4:0] v15162_fu_788_p3;
reg   [4:0] ap_sig_allocacmp_v15162288_load;
reg   [4:0] v15163289_fu_202;
wire   [4:0] v15163_fu_918_p2;
reg   [4:0] ap_sig_allocacmp_v15163289_load;
reg    v15400_15_ce0_local;
reg    v15400_14_ce0_local;
reg    v15400_13_ce0_local;
reg    v15400_12_ce0_local;
reg    v15400_11_ce0_local;
reg    v15400_10_ce0_local;
reg    v15400_9_ce0_local;
reg    v15400_8_ce0_local;
reg    v15400_7_ce0_local;
reg    v15400_6_ce0_local;
reg    v15400_5_ce0_local;
reg    v15400_4_ce0_local;
reg    v15400_3_ce0_local;
reg    v15400_2_ce0_local;
reg    v15400_1_ce0_local;
reg    v15400_ce0_local;
reg    v15428_0_0_0_we0_local;
reg    v15428_0_0_0_ce0_local;
reg    v15428_0_0_1_we0_local;
reg    v15428_0_0_1_ce0_local;
reg    v15428_0_0_2_we0_local;
reg    v15428_0_0_2_ce0_local;
reg    v15428_0_0_3_we0_local;
reg    v15428_0_0_3_ce0_local;
reg    v15428_0_1_0_we0_local;
reg    v15428_0_1_0_ce0_local;
reg    v15428_0_1_1_we0_local;
reg    v15428_0_1_1_ce0_local;
reg    v15428_0_1_2_we0_local;
reg    v15428_0_1_2_ce0_local;
reg    v15428_0_1_3_we0_local;
reg    v15428_0_1_3_ce0_local;
reg    v15428_1_0_0_we0_local;
reg    v15428_1_0_0_ce0_local;
reg    v15428_1_0_1_we0_local;
reg    v15428_1_0_1_ce0_local;
reg    v15428_1_0_2_we0_local;
reg    v15428_1_0_2_ce0_local;
reg    v15428_1_0_3_we0_local;
reg    v15428_1_0_3_ce0_local;
reg    v15428_1_1_0_we0_local;
reg    v15428_1_1_0_ce0_local;
reg    v15428_1_1_1_we0_local;
reg    v15428_1_1_1_ce0_local;
reg    v15428_1_1_2_we0_local;
reg    v15428_1_1_2_ce0_local;
reg    v15428_1_1_3_we0_local;
reg    v15428_1_1_3_ce0_local;
wire   [0:0] xor_ln19943_fu_748_p2;
wire   [4:0] add_ln19943_fu_734_p2;
wire   [4:0] select_ln19943_fu_740_p3;
wire   [0:0] and_ln19943_fu_754_p2;
wire   [0:0] empty_195_fu_774_p2;
wire   [4:0] add_ln19944_fu_768_p2;
wire   [3:0] tmp_68_fu_814_p3;
wire   [6:0] p_shl45_fu_806_p3;
wire   [6:0] zext_ln19947_fu_822_p1;
wire   [4:0] empty_196_fu_832_p2;
wire   [6:0] sub_ln19947_fu_826_p2;
wire   [6:0] zext_ln19947_1_fu_862_p1;
wire   [6:0] zext_ln19944_fu_848_p1;
wire   [6:0] empty_197_fu_872_p2;
wire   [4:0] v15163_mid2_fu_780_p3;
wire   [6:0] zext_ln19945_fu_888_p1;
wire   [6:0] add_ln19948_fu_902_p2;
wire   [6:0] add_ln19944_1_fu_924_p2;
wire   [6:0] tmp_69_fu_995_p4;
wire   [9:0] p_shl43_fu_987_p4;
wire   [9:0] zext_ln19962_fu_1003_p1;
wire   [6:0] tmp_71_fu_1020_p3;
wire   [9:0] p_shl41_fu_1013_p3;
wire   [9:0] zext_ln19978_fu_1027_p1;
wire   [9:0] p_shl40_fu_1040_p3;
wire   [9:0] zext_ln19947_2_fu_1037_p1;
wire   [5:0] zext_ln19944_1_fu_1053_p1;
wire   [9:0] sub_ln19947_1_fu_1047_p2;
wire   [9:0] zext_ln19947_3_fu_1061_p1;
wire   [9:0] add_ln19947_1_fu_1064_p2;
wire   [9:0] zext_ln19970_fu_1090_p1;
wire   [9:0] add_ln19970_fu_1093_p2;
wire   [11:0] tmp_72_fu_1106_p3;
wire   [14:0] p_shl38_fu_1098_p3;
wire   [14:0] zext_ln19970_1_fu_1114_p1;
wire   [9:0] add_ln19954_fu_1124_p2;
wire   [11:0] tmp_73_fu_1137_p3;
wire   [14:0] p_shl36_fu_1129_p3;
wire   [14:0] zext_ln19954_fu_1145_p1;
wire   [9:0] zext_ln19978_1_fu_1155_p1;
wire   [9:0] add_ln19978_fu_1158_p2;
wire   [11:0] tmp_74_fu_1171_p3;
wire   [14:0] p_shl34_fu_1163_p3;
wire   [14:0] zext_ln19978_2_fu_1179_p1;
wire   [9:0] add_ln19962_fu_1189_p2;
wire   [11:0] tmp_75_fu_1202_p3;
wire   [14:0] p_shl_fu_1194_p3;
wire   [14:0] zext_ln19962_1_fu_1210_p1;
wire   [4:0] zext_ln19945_1_fu_1220_p1;
wire   [4:0] add_ln19948_1_fu_1223_p2;
wire   [14:0] sub_ln19978_1_fu_1183_p2;
wire   [14:0] zext_ln19972_fu_1228_p1;
wire   [14:0] add_ln19972_fu_1232_p2;
wire   [14:0] sub_ln19970_fu_1118_p2;
wire   [14:0] add_ln19964_fu_1243_p2;
wire   [14:0] sub_ln19962_1_fu_1214_p2;
wire   [14:0] add_ln19956_fu_1254_p2;
wire   [14:0] sub_ln19954_fu_1149_p2;
wire   [14:0] add_ln19948_2_fu_1265_p2;
wire   [14:0] zext_ln19978_3_fu_1276_p1;
wire   [14:0] add_ln19978_1_fu_1279_p2;
wire   [14:0] add_ln19970_1_fu_1292_p2;
wire   [14:0] add_ln19962_1_fu_1305_p2;
wire   [14:0] add_ln19954_1_fu_1318_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_913;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 indvar_flatten12285_fu_186 = 10'd0;
#0 v15161286_fu_190 = 5'd0;
#0 indvar_flatten287_fu_194 = 7'd0;
#0 v15162288_fu_198 = 5'd0;
#0 v15163289_fu_202 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12285_fu_186 <= add_ln19943_1_fu_938_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12285_fu_186 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten287_fu_194 <= select_ln19944_1_fu_930_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten287_fu_194 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v15161286_fu_190 <= v15161_fu_760_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v15161286_fu_190 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v15162288_fu_198 <= v15162_fu_788_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v15162288_fu_198 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v15163289_fu_202 <= v15163_fu_918_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v15163289_fu_202 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln19947_reg_1399 <= add_ln19947_fu_866_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_198_reg_1447 <= empty_198_fu_1056_p2;
        icmp_ln19943_reg_1431 <= icmp_ln19943_fu_956_p2;
        lshr_ln12_reg_1405 <= {{empty_197_fu_872_p2[6:1]}};
        lshr_ln12_reg_1405_pp0_iter1_reg <= lshr_ln12_reg_1405;
        lshr_ln13_reg_1416 <= {{add_ln19948_fu_902_p2[6:2]}};
        lshr_ln13_reg_1416_pp0_iter1_reg <= lshr_ln13_reg_1416;
        lshr_ln19944_1_reg_1394 <= {{v15162_fu_788_p3[4:1]}};
        lshr_ln19945_1_reg_1410 <= {{v15163_mid2_fu_780_p3[4:2]}};
        lshr_ln19945_1_reg_1410_pp0_iter1_reg <= lshr_ln19945_1_reg_1410;
        lshr_ln_reg_1382 <= {{v15161_fu_760_p3[3:1]}};
        sub_ln19962_reg_1435[9 : 3] <= sub_ln19962_fu_1007_p2[9 : 3];
        sub_ln19978_reg_1441[9 : 3] <= sub_ln19978_fu_1031_p2[9 : 3];
        tmp_70_reg_1388 <= {{empty_196_fu_832_p2[4:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln19944_reg_1426 <= icmp_ln19944_fu_950_p2;
        icmp_ln19945_reg_1421 <= icmp_ln19945_fu_944_p2;
    end
end
always @ (*) begin
    if (((icmp_ln19943_fu_956_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_913)) begin
            ap_phi_mux_icmp_ln19944291_phi_fu_677_p4 = icmp_ln19944_reg_1426;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln19944291_phi_fu_677_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln19944291_phi_fu_677_p4 = icmp_ln19944_reg_1426;
        end
    end else begin
        ap_phi_mux_icmp_ln19944291_phi_fu_677_p4 = icmp_ln19944_reg_1426;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_913)) begin
            ap_phi_mux_icmp_ln19945290_phi_fu_687_p4 = icmp_ln19945_reg_1421;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln19945290_phi_fu_687_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln19945290_phi_fu_687_p4 = icmp_ln19945_reg_1421;
        end
    end else begin
        ap_phi_mux_icmp_ln19945290_phi_fu_687_p4 = icmp_ln19945_reg_1421;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12285_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12285_load = indvar_flatten12285_fu_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten287_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten287_load = indvar_flatten287_fu_194;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15161286_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v15161286_load = v15161286_fu_190;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15162288_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v15162288_load = v15162288_fu_198;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15163289_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v15163289_load = v15163289_fu_202;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_10_ce0_local = 1'b1;
    end else begin
        v15400_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_11_ce0_local = 1'b1;
    end else begin
        v15400_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_12_ce0_local = 1'b1;
    end else begin
        v15400_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_13_ce0_local = 1'b1;
    end else begin
        v15400_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_14_ce0_local = 1'b1;
    end else begin
        v15400_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_15_ce0_local = 1'b1;
    end else begin
        v15400_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_1_ce0_local = 1'b1;
    end else begin
        v15400_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_2_ce0_local = 1'b1;
    end else begin
        v15400_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_3_ce0_local = 1'b1;
    end else begin
        v15400_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_4_ce0_local = 1'b1;
    end else begin
        v15400_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_5_ce0_local = 1'b1;
    end else begin
        v15400_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_6_ce0_local = 1'b1;
    end else begin
        v15400_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_7_ce0_local = 1'b1;
    end else begin
        v15400_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_8_ce0_local = 1'b1;
    end else begin
        v15400_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_9_ce0_local = 1'b1;
    end else begin
        v15400_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15400_ce0_local = 1'b1;
    end else begin
        v15400_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_0_0_ce0_local = 1'b1;
    end else begin
        v15428_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_0_0_we0_local = 1'b1;
    end else begin
        v15428_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_0_1_ce0_local = 1'b1;
    end else begin
        v15428_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_0_1_we0_local = 1'b1;
    end else begin
        v15428_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_0_2_ce0_local = 1'b1;
    end else begin
        v15428_0_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_0_2_we0_local = 1'b1;
    end else begin
        v15428_0_0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_0_3_ce0_local = 1'b1;
    end else begin
        v15428_0_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_0_3_we0_local = 1'b1;
    end else begin
        v15428_0_0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_1_0_ce0_local = 1'b1;
    end else begin
        v15428_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_1_0_we0_local = 1'b1;
    end else begin
        v15428_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_1_1_ce0_local = 1'b1;
    end else begin
        v15428_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_1_1_we0_local = 1'b1;
    end else begin
        v15428_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_1_2_ce0_local = 1'b1;
    end else begin
        v15428_0_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_1_2_we0_local = 1'b1;
    end else begin
        v15428_0_1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_1_3_ce0_local = 1'b1;
    end else begin
        v15428_0_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_0_1_3_we0_local = 1'b1;
    end else begin
        v15428_0_1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_0_0_ce0_local = 1'b1;
    end else begin
        v15428_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_0_0_we0_local = 1'b1;
    end else begin
        v15428_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_0_1_ce0_local = 1'b1;
    end else begin
        v15428_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_0_1_we0_local = 1'b1;
    end else begin
        v15428_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_0_2_ce0_local = 1'b1;
    end else begin
        v15428_1_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_0_2_we0_local = 1'b1;
    end else begin
        v15428_1_0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_0_3_ce0_local = 1'b1;
    end else begin
        v15428_1_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_0_3_we0_local = 1'b1;
    end else begin
        v15428_1_0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_1_0_ce0_local = 1'b1;
    end else begin
        v15428_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_1_0_we0_local = 1'b1;
    end else begin
        v15428_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_1_1_ce0_local = 1'b1;
    end else begin
        v15428_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_1_1_we0_local = 1'b1;
    end else begin
        v15428_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_1_2_ce0_local = 1'b1;
    end else begin
        v15428_1_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_1_2_we0_local = 1'b1;
    end else begin
        v15428_1_1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_1_3_ce0_local = 1'b1;
    end else begin
        v15428_1_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15428_1_1_3_we0_local = 1'b1;
    end else begin
        v15428_1_1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln19943_1_fu_938_p2 = (ap_sig_allocacmp_indvar_flatten12285_load + 10'd1);
assign add_ln19943_fu_734_p2 = (ap_sig_allocacmp_v15161286_load + 5'd2);
assign add_ln19944_1_fu_924_p2 = (ap_sig_allocacmp_indvar_flatten287_load + 7'd1);
assign add_ln19944_fu_768_p2 = (select_ln19943_fu_740_p3 + 5'd2);
assign add_ln19947_1_fu_1064_p2 = (sub_ln19947_1_fu_1047_p2 + zext_ln19947_3_fu_1061_p1);
assign add_ln19947_fu_866_p2 = (sub_ln19947_fu_826_p2 + zext_ln19947_1_fu_862_p1);
assign add_ln19948_1_fu_1223_p2 = (zext_ln19945_1_fu_1220_p1 + trunc_ln);
assign add_ln19948_2_fu_1265_p2 = (sub_ln19954_fu_1149_p2 + zext_ln19972_fu_1228_p1);
assign add_ln19948_fu_902_p2 = (mul13_i + zext_ln19945_fu_888_p1);
assign add_ln19954_1_fu_1318_p2 = (sub_ln19954_fu_1149_p2 + zext_ln19978_3_fu_1276_p1);
assign add_ln19954_fu_1124_p2 = (sub_ln19962_reg_1435 + zext_ln19970_fu_1090_p1);
assign add_ln19956_fu_1254_p2 = (sub_ln19962_1_fu_1214_p2 + zext_ln19972_fu_1228_p1);
assign add_ln19962_1_fu_1305_p2 = (sub_ln19962_1_fu_1214_p2 + zext_ln19978_3_fu_1276_p1);
assign add_ln19962_fu_1189_p2 = (sub_ln19962_reg_1435 + zext_ln19978_1_fu_1155_p1);
assign add_ln19964_fu_1243_p2 = (sub_ln19970_fu_1118_p2 + zext_ln19972_fu_1228_p1);
assign add_ln19970_1_fu_1292_p2 = (sub_ln19970_fu_1118_p2 + zext_ln19978_3_fu_1276_p1);
assign add_ln19970_fu_1093_p2 = (sub_ln19978_reg_1441 + zext_ln19970_fu_1090_p1);
assign add_ln19972_fu_1232_p2 = (sub_ln19978_1_fu_1183_p2 + zext_ln19972_fu_1228_p1);
assign add_ln19978_1_fu_1279_p2 = (sub_ln19978_1_fu_1183_p2 + zext_ln19978_3_fu_1276_p1);
assign add_ln19978_fu_1158_p2 = (sub_ln19978_reg_1441 + zext_ln19978_1_fu_1155_p1);
assign and_ln19943_fu_754_p2 = (xor_ln19943_fu_748_p2 & ap_phi_mux_icmp_ln19945290_phi_fu_687_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_913 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln19943_reg_1431 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_195_fu_774_p2 = (ap_phi_mux_icmp_ln19944291_phi_fu_677_p4 | and_ln19943_fu_754_p2);
assign empty_196_fu_832_p2 = (v15161_fu_760_p3 + and_ln);
assign empty_197_fu_872_p2 = (mul9_i115 + zext_ln19944_fu_848_p1);
assign empty_198_fu_1056_p2 = (p_udiv14_cast + zext_ln19944_1_fu_1053_p1);
assign icmp_ln19943_fu_956_p2 = ((ap_sig_allocacmp_indvar_flatten12285_load == 10'd783) ? 1'b1 : 1'b0);
assign icmp_ln19944_fu_950_p2 = ((select_ln19944_1_fu_930_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln19945_fu_944_p2 = ((v15163_fu_918_p2 == 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln19944_1_fu_852_p4 = {{v15162_fu_788_p3[4:1]}};
assign lshr_ln_fu_796_p4 = {{v15161_fu_760_p3[3:1]}};
assign p_shl34_fu_1163_p3 = {{add_ln19978_fu_1158_p2}, {5'd0}};
assign p_shl36_fu_1129_p3 = {{add_ln19954_fu_1124_p2}, {5'd0}};
assign p_shl38_fu_1098_p3 = {{add_ln19970_fu_1093_p2}, {5'd0}};
assign p_shl40_fu_1040_p3 = {{add_ln19947_reg_1399}, {3'd0}};
assign p_shl41_fu_1013_p3 = {{tmp_70_reg_1388}, {6'd0}};
assign p_shl43_fu_987_p4 = {{{empty}, {lshr_ln_reg_1382}}, {6'd0}};
assign p_shl45_fu_806_p3 = {{lshr_ln_fu_796_p4}, {4'd0}};
assign p_shl_fu_1194_p3 = {{add_ln19962_fu_1189_p2}, {5'd0}};
assign select_ln19943_fu_740_p3 = ((ap_phi_mux_icmp_ln19944291_phi_fu_677_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v15162288_load);
assign select_ln19944_1_fu_930_p3 = ((ap_phi_mux_icmp_ln19944291_phi_fu_677_p4[0:0] == 1'b1) ? 7'd1 : add_ln19944_1_fu_924_p2);
assign sub_ln19947_1_fu_1047_p2 = (p_shl40_fu_1040_p3 - zext_ln19947_2_fu_1037_p1);
assign sub_ln19947_fu_826_p2 = (p_shl45_fu_806_p3 - zext_ln19947_fu_822_p1);
assign sub_ln19954_fu_1149_p2 = (p_shl36_fu_1129_p3 - zext_ln19954_fu_1145_p1);
assign sub_ln19962_1_fu_1214_p2 = (p_shl_fu_1194_p3 - zext_ln19962_1_fu_1210_p1);
assign sub_ln19962_fu_1007_p2 = (p_shl43_fu_987_p4 - zext_ln19962_fu_1003_p1);
assign sub_ln19970_fu_1118_p2 = (p_shl38_fu_1098_p3 - zext_ln19970_1_fu_1114_p1);
assign sub_ln19978_1_fu_1183_p2 = (p_shl34_fu_1163_p3 - zext_ln19978_2_fu_1179_p1);
assign sub_ln19978_fu_1031_p2 = (p_shl41_fu_1013_p3 - zext_ln19978_fu_1027_p1);
assign tmp_68_fu_814_p3 = {{lshr_ln_fu_796_p4}, {1'd0}};
assign tmp_69_fu_995_p4 = {{{empty}, {lshr_ln_reg_1382}}, {3'd0}};
assign tmp_71_fu_1020_p3 = {{tmp_70_reg_1388}, {3'd0}};
assign tmp_72_fu_1106_p3 = {{add_ln19970_fu_1093_p2}, {2'd0}};
assign tmp_73_fu_1137_p3 = {{add_ln19954_fu_1124_p2}, {2'd0}};
assign tmp_74_fu_1171_p3 = {{add_ln19978_fu_1158_p2}, {2'd0}};
assign tmp_75_fu_1202_p3 = {{add_ln19962_fu_1189_p2}, {2'd0}};
assign v15161_fu_760_p3 = ((ap_phi_mux_icmp_ln19944291_phi_fu_677_p4[0:0] == 1'b1) ? add_ln19943_fu_734_p2 : ap_sig_allocacmp_v15161286_load);
assign v15162_fu_788_p3 = ((and_ln19943_fu_754_p2[0:0] == 1'b1) ? add_ln19944_fu_768_p2 : select_ln19943_fu_740_p3);
assign v15163_fu_918_p2 = (v15163_mid2_fu_780_p3 + 5'd4);
assign v15163_mid2_fu_780_p3 = ((empty_195_fu_774_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v15163289_load);
assign v15400_10_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_10_ce0 = v15400_10_ce0_local;
assign v15400_11_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_11_ce0 = v15400_11_ce0_local;
assign v15400_12_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_12_ce0 = v15400_12_ce0_local;
assign v15400_13_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_13_ce0 = v15400_13_ce0_local;
assign v15400_14_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_14_ce0 = v15400_14_ce0_local;
assign v15400_15_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_15_ce0 = v15400_15_ce0_local;
assign v15400_1_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_1_ce0 = v15400_1_ce0_local;
assign v15400_2_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_2_ce0 = v15400_2_ce0_local;
assign v15400_3_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_3_ce0 = v15400_3_ce0_local;
assign v15400_4_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_4_ce0 = v15400_4_ce0_local;
assign v15400_5_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_5_ce0 = v15400_5_ce0_local;
assign v15400_6_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_6_ce0 = v15400_6_ce0_local;
assign v15400_7_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_7_ce0 = v15400_7_ce0_local;
assign v15400_8_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_8_ce0 = v15400_8_ce0_local;
assign v15400_9_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_9_ce0 = v15400_9_ce0_local;
assign v15400_address0 = zext_ln19947_4_fu_1070_p1;
assign v15400_ce0 = v15400_ce0_local;
assign v15428_0_0_0_address0 = zext_ln19948_fu_1271_p1;
assign v15428_0_0_0_ce0 = v15428_0_0_0_ce0_local;
assign v15428_0_0_0_d0 = v15400_15_q0;
assign v15428_0_0_0_we0 = v15428_0_0_0_we0_local;
assign v15428_0_0_1_address0 = zext_ln19954_1_fu_1324_p1;
assign v15428_0_0_1_ce0 = v15428_0_0_1_ce0_local;
assign v15428_0_0_1_d0 = v15400_14_q0;
assign v15428_0_0_1_we0 = v15428_0_0_1_we0_local;
assign v15428_0_0_2_address0 = zext_ln19954_1_fu_1324_p1;
assign v15428_0_0_2_ce0 = v15428_0_0_2_ce0_local;
assign v15428_0_0_2_d0 = v15400_13_q0;
assign v15428_0_0_2_we0 = v15428_0_0_2_we0_local;
assign v15428_0_0_3_address0 = zext_ln19954_1_fu_1324_p1;
assign v15428_0_0_3_ce0 = v15428_0_0_3_ce0_local;
assign v15428_0_0_3_d0 = v15400_12_q0;
assign v15428_0_0_3_we0 = v15428_0_0_3_we0_local;
assign v15428_0_1_0_address0 = zext_ln19956_fu_1260_p1;
assign v15428_0_1_0_ce0 = v15428_0_1_0_ce0_local;
assign v15428_0_1_0_d0 = v15400_11_q0;
assign v15428_0_1_0_we0 = v15428_0_1_0_we0_local;
assign v15428_0_1_1_address0 = zext_ln19962_2_fu_1311_p1;
assign v15428_0_1_1_ce0 = v15428_0_1_1_ce0_local;
assign v15428_0_1_1_d0 = v15400_10_q0;
assign v15428_0_1_1_we0 = v15428_0_1_1_we0_local;
assign v15428_0_1_2_address0 = zext_ln19962_2_fu_1311_p1;
assign v15428_0_1_2_ce0 = v15428_0_1_2_ce0_local;
assign v15428_0_1_2_d0 = v15400_9_q0;
assign v15428_0_1_2_we0 = v15428_0_1_2_we0_local;
assign v15428_0_1_3_address0 = zext_ln19962_2_fu_1311_p1;
assign v15428_0_1_3_ce0 = v15428_0_1_3_ce0_local;
assign v15428_0_1_3_d0 = v15400_8_q0;
assign v15428_0_1_3_we0 = v15428_0_1_3_we0_local;
assign v15428_1_0_0_address0 = zext_ln19964_fu_1249_p1;
assign v15428_1_0_0_ce0 = v15428_1_0_0_ce0_local;
assign v15428_1_0_0_d0 = v15400_7_q0;
assign v15428_1_0_0_we0 = v15428_1_0_0_we0_local;
assign v15428_1_0_1_address0 = zext_ln19970_2_fu_1298_p1;
assign v15428_1_0_1_ce0 = v15428_1_0_1_ce0_local;
assign v15428_1_0_1_d0 = v15400_6_q0;
assign v15428_1_0_1_we0 = v15428_1_0_1_we0_local;
assign v15428_1_0_2_address0 = zext_ln19970_2_fu_1298_p1;
assign v15428_1_0_2_ce0 = v15428_1_0_2_ce0_local;
assign v15428_1_0_2_d0 = v15400_5_q0;
assign v15428_1_0_2_we0 = v15428_1_0_2_we0_local;
assign v15428_1_0_3_address0 = zext_ln19970_2_fu_1298_p1;
assign v15428_1_0_3_ce0 = v15428_1_0_3_ce0_local;
assign v15428_1_0_3_d0 = v15400_4_q0;
assign v15428_1_0_3_we0 = v15428_1_0_3_we0_local;
assign v15428_1_1_0_address0 = zext_ln19972_1_fu_1238_p1;
assign v15428_1_1_0_ce0 = v15428_1_1_0_ce0_local;
assign v15428_1_1_0_d0 = v15400_3_q0;
assign v15428_1_1_0_we0 = v15428_1_1_0_we0_local;
assign v15428_1_1_1_address0 = zext_ln19978_4_fu_1285_p1;
assign v15428_1_1_1_ce0 = v15428_1_1_1_ce0_local;
assign v15428_1_1_1_d0 = v15400_2_q0;
assign v15428_1_1_1_we0 = v15428_1_1_1_we0_local;
assign v15428_1_1_2_address0 = zext_ln19978_4_fu_1285_p1;
assign v15428_1_1_2_ce0 = v15428_1_1_2_ce0_local;
assign v15428_1_1_2_d0 = v15400_1_q0;
assign v15428_1_1_2_we0 = v15428_1_1_2_we0_local;
assign v15428_1_1_3_address0 = zext_ln19978_4_fu_1285_p1;
assign v15428_1_1_3_ce0 = v15428_1_1_3_ce0_local;
assign v15428_1_1_3_d0 = v15400_q0;
assign v15428_1_1_3_we0 = v15428_1_1_3_we0_local;
assign xor_ln19943_fu_748_p2 = (ap_phi_mux_icmp_ln19944291_phi_fu_677_p4 ^ 1'd1);
assign zext_ln19944_1_fu_1053_p1 = lshr_ln19944_1_reg_1394;
assign zext_ln19944_fu_848_p1 = v15162_fu_788_p3;
assign zext_ln19945_1_fu_1220_p1 = lshr_ln19945_1_reg_1410_pp0_iter1_reg;
assign zext_ln19945_fu_888_p1 = v15163_mid2_fu_780_p3;
assign zext_ln19947_1_fu_862_p1 = lshr_ln19944_1_fu_852_p4;
assign zext_ln19947_2_fu_1037_p1 = add_ln19947_reg_1399;
assign zext_ln19947_3_fu_1061_p1 = lshr_ln19945_1_reg_1410;
assign zext_ln19947_4_fu_1070_p1 = add_ln19947_1_fu_1064_p2;
assign zext_ln19947_fu_822_p1 = tmp_68_fu_814_p3;
assign zext_ln19948_fu_1271_p1 = add_ln19948_2_fu_1265_p2;
assign zext_ln19954_1_fu_1324_p1 = add_ln19954_1_fu_1318_p2;
assign zext_ln19954_fu_1145_p1 = tmp_73_fu_1137_p3;
assign zext_ln19956_fu_1260_p1 = add_ln19956_fu_1254_p2;
assign zext_ln19962_1_fu_1210_p1 = tmp_75_fu_1202_p3;
assign zext_ln19962_2_fu_1311_p1 = add_ln19962_1_fu_1305_p2;
assign zext_ln19962_fu_1003_p1 = tmp_69_fu_995_p4;
assign zext_ln19964_fu_1249_p1 = add_ln19964_fu_1243_p2;
assign zext_ln19970_1_fu_1114_p1 = tmp_72_fu_1106_p3;
assign zext_ln19970_2_fu_1298_p1 = add_ln19970_1_fu_1292_p2;
assign zext_ln19970_fu_1090_p1 = empty_198_reg_1447;
assign zext_ln19972_1_fu_1238_p1 = add_ln19972_fu_1232_p2;
assign zext_ln19972_fu_1228_p1 = add_ln19948_1_fu_1223_p2;
assign zext_ln19978_1_fu_1155_p1 = lshr_ln12_reg_1405_pp0_iter1_reg;
assign zext_ln19978_2_fu_1179_p1 = tmp_74_fu_1171_p3;
assign zext_ln19978_3_fu_1276_p1 = lshr_ln13_reg_1416_pp0_iter1_reg;
assign zext_ln19978_4_fu_1285_p1 = add_ln19978_1_fu_1279_p2;
assign zext_ln19978_fu_1027_p1 = tmp_71_fu_1020_p3;
always @ (posedge ap_clk) begin
    sub_ln19962_reg_1435[2:0] <= 3'b000;
    sub_ln19978_reg_1441[2:0] <= 3'b000;
end
endmodule 
