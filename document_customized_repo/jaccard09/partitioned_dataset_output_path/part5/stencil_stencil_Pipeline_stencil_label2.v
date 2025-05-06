
module stencil_stencil_Pipeline_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,r,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,indvars_iv_next93,tmp_1,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,tmp);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [10:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [10:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [10:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
input  [6:0] r;
output  [10:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [10:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [10:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [10:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [10:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [10:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
input  [6:0] indvars_iv_next93;
input  [10:0] tmp_1;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
output  [10:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [10:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
input  [12:0] tmp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln8_reg_1054;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_426_p2;
reg   [31:0] reg_470;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_430_p2;
reg   [31:0] reg_474;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_434_p2;
reg   [31:0] reg_478;
wire   [31:0] grp_fu_438_p2;
reg   [31:0] reg_482;
wire   [31:0] grp_fu_442_p2;
reg   [31:0] reg_486;
wire   [31:0] grp_fu_458_p2;
reg   [31:0] reg_490;
wire   [31:0] grp_fu_466_p2;
reg   [31:0] reg_494;
wire   [31:0] grp_fu_454_p2;
reg   [31:0] reg_498;
reg   [5:0] c_1_reg_997;
wire   [63:0] zext_ln12_fu_528_p1;
reg   [63:0] zext_ln12_reg_1002;
reg   [63:0] zext_ln12_reg_1002_pp0_iter1_reg;
reg   [63:0] zext_ln12_reg_1002_pp0_iter2_reg;
wire   [63:0] zext_ln12_1_fu_541_p1;
reg   [63:0] zext_ln12_1_reg_1013;
wire   [63:0] zext_ln12_2_fu_569_p1;
reg   [63:0] zext_ln12_2_reg_1024;
wire   [0:0] icmp_ln8_fu_584_p2;
reg   [0:0] icmp_ln8_reg_1054_pp0_iter1_reg;
reg   [0:0] icmp_ln8_reg_1054_pp0_iter2_reg;
wire   [12:0] zext_ln8_fu_590_p1;
reg   [12:0] zext_ln8_reg_1058;
wire   [12:0] empty_fu_623_p2;
reg   [12:0] empty_reg_1069;
wire   [12:0] zext_ln12_6_fu_637_p1;
reg   [12:0] zext_ln12_6_reg_1075;
reg  signed [31:0] orig_2_load_1_reg_1091;
reg  signed [31:0] orig_0_load_2_reg_1097;
reg  signed [31:0] orig_1_load_2_reg_1102;
reg  signed [31:0] orig_2_load_2_reg_1108;
reg  signed [31:0] orig_3_load_reg_1115;
reg  signed [31:0] orig_3_load_1_reg_1121;
reg  signed [31:0] orig_0_load_3_reg_1133;
reg  signed [31:0] orig_1_load_3_reg_1149;
reg  signed [31:0] orig_2_load_reg_1174;
reg  signed [31:0] orig_3_load_2_reg_1191;
reg  signed [31:0] orig_0_load_4_reg_1198;
reg  signed [31:0] orig_0_load_5_reg_1204;
reg  signed [31:0] orig_1_load_4_reg_1210;
reg  signed [31:0] orig_1_load_5_reg_1215;
reg  signed [31:0] orig_0_load_reg_1220;
reg  signed [31:0] orig_1_load_reg_1225;
reg  signed [31:0] orig_0_load_1_reg_1231;
reg  signed [31:0] orig_1_load_1_reg_1236;
wire   [31:0] grp_fu_422_p2;
reg   [31:0] mul_ln13_1_reg_1242;
wire   [31:0] grp_fu_446_p2;
reg   [31:0] mul_ln13_14_reg_1247;
wire   [31:0] grp_fu_450_p2;
reg   [31:0] mul_ln13_15_reg_1252;
reg   [31:0] mul_ln13_17_reg_1257;
wire   [31:0] grp_fu_462_p2;
reg   [31:0] mul_ln13_24_reg_1262;
reg   [31:0] mul_ln13_reg_1267;
wire   [31:0] add_ln13_5_fu_763_p2;
reg   [31:0] add_ln13_5_reg_1272;
reg   [31:0] mul_ln13_20_reg_1277;
reg   [31:0] mul_ln13_21_reg_1282;
reg   [31:0] mul_ln13_22_reg_1287;
reg   [31:0] mul_ln13_26_reg_1292;
reg   [31:0] mul_ln13_30_reg_1297;
reg   [31:0] mul_ln13_33_reg_1302;
reg   [31:0] mul_ln13_35_reg_1307;
reg   [31:0] mul_ln13_2_reg_1312;
reg   [31:0] mul_ln13_4_reg_1317;
wire   [31:0] add_ln13_13_fu_775_p2;
reg   [31:0] add_ln13_13_reg_1322;
reg   [31:0] mul_ln13_23_reg_1327;
reg   [31:0] mul_ln13_25_reg_1332;
wire   [31:0] add_ln13_21_fu_786_p2;
reg   [31:0] add_ln13_21_reg_1337;
reg   [31:0] mul_ln13_32_reg_1342;
wire   [31:0] add_ln13_29_fu_797_p2;
reg   [31:0] add_ln13_29_reg_1347;
wire   [31:0] add_ln13_fu_803_p2;
reg   [31:0] add_ln13_reg_1352;
wire   [31:0] add_ln13_1_fu_807_p2;
reg   [31:0] add_ln13_1_reg_1357;
wire   [31:0] add_ln13_6_fu_817_p2;
reg   [31:0] add_ln13_6_reg_1362;
wire   [31:0] add_ln13_8_fu_822_p2;
reg   [31:0] add_ln13_8_reg_1367;
wire   [31:0] add_ln13_9_fu_828_p2;
reg   [31:0] add_ln13_9_reg_1372;
wire   [31:0] add_ln13_14_fu_837_p2;
reg   [31:0] add_ln13_14_reg_1377;
wire   [31:0] add_ln13_16_fu_842_p2;
reg   [31:0] add_ln13_16_reg_1382;
wire   [31:0] add_ln13_17_fu_846_p2;
reg   [31:0] add_ln13_17_reg_1387;
wire   [31:0] add_ln13_22_fu_854_p2;
reg   [31:0] add_ln13_22_reg_1392;
wire   [31:0] add_ln13_24_fu_859_p2;
reg   [31:0] add_ln13_24_reg_1397;
wire   [31:0] add_ln13_25_fu_865_p2;
reg   [31:0] add_ln13_25_reg_1402;
wire   [31:0] add_ln13_30_fu_874_p2;
reg   [31:0] add_ln13_30_reg_1407;
wire   [31:0] temp_fu_883_p2;
reg   [31:0] temp_reg_1412;
wire   [31:0] temp_1_fu_892_p2;
reg   [31:0] temp_1_reg_1417;
wire   [31:0] temp_2_fu_901_p2;
reg   [31:0] temp_2_reg_1422;
wire   [31:0] temp_3_fu_910_p2;
reg   [31:0] temp_3_reg_1427;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_3_fu_618_p1;
wire   [63:0] zext_ln12_7_fu_657_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_4_fu_684_p1;
wire   [63:0] zext_ln12_5_fu_703_p1;
wire   [63:0] zext_ln12_8_fu_723_p1;
wire   [63:0] zext_ln12_9_fu_742_p1;
wire    ap_block_pp0_stage2;
reg   [5:0] c_fu_108;
wire   [5:0] add_ln8_fu_747_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_c_1;
reg    orig_2_ce1_local;
reg    orig_2_ce0_local;
reg   [10:0] orig_2_address0_local;
reg    orig_0_ce1_local;
reg   [10:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [10:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [10:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [10:0] orig_1_address0_local;
reg    orig_3_ce1_local;
reg    orig_3_ce0_local;
reg   [10:0] orig_3_address0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg  signed [31:0] grp_fu_422_p0;
reg  signed [31:0] grp_fu_422_p1;
reg  signed [31:0] grp_fu_426_p0;
reg  signed [31:0] grp_fu_426_p1;
reg  signed [31:0] grp_fu_430_p0;
reg  signed [31:0] grp_fu_430_p1;
reg  signed [31:0] grp_fu_434_p0;
reg  signed [31:0] grp_fu_434_p1;
reg  signed [31:0] grp_fu_438_p0;
reg  signed [31:0] grp_fu_438_p1;
reg  signed [31:0] grp_fu_442_p0;
reg  signed [31:0] grp_fu_442_p1;
reg  signed [31:0] grp_fu_446_p0;
reg  signed [31:0] grp_fu_446_p1;
reg  signed [31:0] grp_fu_450_p0;
reg  signed [31:0] grp_fu_450_p1;
reg  signed [31:0] grp_fu_454_p0;
reg  signed [31:0] grp_fu_454_p1;
reg  signed [31:0] grp_fu_458_p0;
reg  signed [31:0] grp_fu_458_p1;
reg  signed [31:0] grp_fu_462_p0;
reg  signed [31:0] grp_fu_462_p1;
reg  signed [31:0] grp_fu_466_p0;
reg  signed [31:0] grp_fu_466_p1;
wire   [3:0] lshr_ln_fu_510_p4;
wire   [10:0] add_ln_fu_520_p3;
wire   [10:0] add_ln5_fu_533_p3;
wire   [4:0] zext_ln5_fu_547_p1;
wire   [5:0] zext_ln5_cast_fu_551_p3;
wire   [10:0] zext_ln5_1_fu_559_p1;
wire   [10:0] add_ln5_1_fu_563_p2;
wire   [5:0] or_ln8_fu_576_p3;
wire   [12:0] tmp_5_fu_594_p3;
wire   [12:0] add_ln12_fu_602_p2;
wire   [10:0] lshr_ln12_1_fu_608_p4;
wire   [5:0] or_ln8_1_fu_629_p3;
wire   [12:0] add_ln12_3_fu_641_p2;
wire   [10:0] lshr_ln12_4_fu_647_p4;
wire   [12:0] tmp_6_fu_662_p3;
wire   [12:0] add_ln12_1_fu_669_p2;
wire   [10:0] lshr_ln12_2_fu_674_p4;
wire   [12:0] add_ln12_2_fu_689_p2;
wire   [10:0] lshr_ln12_3_fu_693_p4;
wire   [12:0] add_ln12_4_fu_708_p2;
wire   [10:0] lshr_ln12_5_fu_713_p4;
wire   [12:0] add_ln12_5_fu_728_p2;
wire   [10:0] lshr_ln12_6_fu_732_p4;
wire   [31:0] add_ln13_4_fu_757_p2;
wire   [31:0] add_ln13_12_fu_769_p2;
wire   [31:0] add_ln13_20_fu_781_p2;
wire   [31:0] add_ln13_28_fu_792_p2;
wire   [31:0] add_ln13_3_fu_812_p2;
wire   [31:0] add_ln13_11_fu_833_p2;
wire   [31:0] add_ln13_19_fu_850_p2;
wire   [31:0] add_ln13_27_fu_870_p2;
wire   [31:0] add_ln13_2_fu_879_p2;
wire   [31:0] add_ln13_10_fu_888_p2;
wire   [31:0] add_ln13_18_fu_897_p2;
wire   [31:0] add_ln13_26_fu_906_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 c_fu_108 = 6'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_422_p0),.din1(grp_fu_422_p1),.ce(1'b1),.dout(grp_fu_422_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_426_p0),.din1(grp_fu_426_p1),.ce(1'b1),.dout(grp_fu_426_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_430_p0),.din1(grp_fu_430_p1),.ce(1'b1),.dout(grp_fu_430_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_434_p0),.din1(grp_fu_434_p1),.ce(1'b1),.dout(grp_fu_434_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_438_p0),.din1(grp_fu_438_p1),.ce(1'b1),.dout(grp_fu_438_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_442_p0),.din1(grp_fu_442_p1),.ce(1'b1),.dout(grp_fu_442_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_446_p0),.din1(grp_fu_446_p1),.ce(1'b1),.dout(grp_fu_446_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_450_p0),.din1(grp_fu_450_p1),.ce(1'b1),.dout(grp_fu_450_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_454_p0),.din1(grp_fu_454_p1),.ce(1'b1),.dout(grp_fu_454_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_458_p0),.din1(grp_fu_458_p1),.ce(1'b1),.dout(grp_fu_458_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_462_p0),.din1(grp_fu_462_p1),.ce(1'b1),.dout(grp_fu_462_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_466_p0),.din1(grp_fu_466_p1),.ce(1'b1),.dout(grp_fu_466_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage2)) begin
        if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone))) begin
            ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage2_11001)) begin
            ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fu_108 <= 6'd0;
    end else if (((icmp_ln8_reg_1054 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c_fu_108 <= add_ln8_fu_747_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln13_13_reg_1322 <= add_ln13_13_fu_775_p2;
        add_ln13_21_reg_1337 <= add_ln13_21_fu_786_p2;
        add_ln13_29_reg_1347 <= add_ln13_29_fu_797_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_14_reg_1377 <= add_ln13_14_fu_837_p2;
        add_ln13_16_reg_1382 <= add_ln13_16_fu_842_p2;
        add_ln13_17_reg_1387 <= add_ln13_17_fu_846_p2;
        add_ln13_1_reg_1357 <= add_ln13_1_fu_807_p2;
        add_ln13_22_reg_1392 <= add_ln13_22_fu_854_p2;
        add_ln13_24_reg_1397 <= add_ln13_24_fu_859_p2;
        add_ln13_25_reg_1402 <= add_ln13_25_fu_865_p2;
        add_ln13_30_reg_1407 <= add_ln13_30_fu_874_p2;
        add_ln13_6_reg_1362 <= add_ln13_6_fu_817_p2;
        add_ln13_8_reg_1367 <= add_ln13_8_fu_822_p2;
        add_ln13_9_reg_1372 <= add_ln13_9_fu_828_p2;
        add_ln13_reg_1352 <= add_ln13_fu_803_p2;
        c_1_reg_997 <= ap_sig_allocacmp_c_1;
        empty_reg_1069 <= empty_fu_623_p2;
        icmp_ln8_reg_1054 <= icmp_ln8_fu_584_p2;
        icmp_ln8_reg_1054_pp0_iter1_reg <= icmp_ln8_reg_1054;
        icmp_ln8_reg_1054_pp0_iter2_reg <= icmp_ln8_reg_1054_pp0_iter1_reg;
        zext_ln12_1_reg_1013[10 : 0] <= zext_ln12_1_fu_541_p1[10 : 0];
        zext_ln12_2_reg_1024[10 : 0] <= zext_ln12_2_fu_569_p1[10 : 0];
        zext_ln12_6_reg_1075[5 : 2] <= zext_ln12_6_fu_637_p1[5 : 2];
        zext_ln12_reg_1002[10 : 0] <= zext_ln12_fu_528_p1[10 : 0];
        zext_ln12_reg_1002_pp0_iter1_reg[10 : 0] <= zext_ln12_reg_1002[10 : 0];
        zext_ln12_reg_1002_pp0_iter2_reg[10 : 0] <= zext_ln12_reg_1002_pp0_iter1_reg[10 : 0];
        zext_ln8_reg_1058[5 : 2] <= zext_ln8_fu_590_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_5_reg_1272 <= add_ln13_5_fu_763_p2;
        temp_1_reg_1417 <= temp_1_fu_892_p2;
        temp_2_reg_1422 <= temp_2_fu_901_p2;
        temp_3_reg_1427 <= temp_3_fu_910_p2;
        temp_reg_1412 <= temp_fu_883_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_14_reg_1247 <= grp_fu_446_p2;
        mul_ln13_15_reg_1252 <= grp_fu_450_p2;
        mul_ln13_17_reg_1257 <= grp_fu_454_p2;
        mul_ln13_1_reg_1242 <= grp_fu_422_p2;
        mul_ln13_24_reg_1262 <= grp_fu_462_p2;
        orig_0_load_1_reg_1231 <= orig_0_q0;
        orig_0_load_reg_1220 <= orig_0_q1;
        orig_1_load_1_reg_1236 <= orig_1_q0;
        orig_1_load_reg_1225 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_20_reg_1277 <= grp_fu_438_p2;
        mul_ln13_21_reg_1282 <= grp_fu_442_p2;
        mul_ln13_22_reg_1287 <= grp_fu_446_p2;
        mul_ln13_26_reg_1292 <= grp_fu_450_p2;
        mul_ln13_30_reg_1297 <= grp_fu_458_p2;
        mul_ln13_33_reg_1302 <= grp_fu_462_p2;
        mul_ln13_35_reg_1307 <= grp_fu_466_p2;
        mul_ln13_reg_1267 <= grp_fu_422_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln13_23_reg_1327 <= grp_fu_446_p2;
        mul_ln13_25_reg_1332 <= grp_fu_450_p2;
        mul_ln13_2_reg_1312 <= grp_fu_422_p2;
        mul_ln13_32_reg_1342 <= grp_fu_462_p2;
        mul_ln13_4_reg_1317 <= grp_fu_426_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_load_2_reg_1097 <= orig_0_q1;
        orig_0_load_3_reg_1133 <= orig_0_q0;
        orig_1_load_2_reg_1102 <= orig_1_q1;
        orig_1_load_3_reg_1149 <= orig_1_q0;
        orig_2_load_1_reg_1091 <= orig_2_q1;
        orig_2_load_2_reg_1108 <= orig_2_q0;
        orig_3_load_1_reg_1121 <= orig_3_q0;
        orig_3_load_reg_1115 <= orig_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_load_4_reg_1198 <= orig_0_q1;
        orig_0_load_5_reg_1204 <= orig_0_q0;
        orig_1_load_4_reg_1210 <= orig_1_q1;
        orig_1_load_5_reg_1215 <= orig_1_q0;
        orig_2_load_reg_1174 <= orig_2_q0;
        orig_3_load_2_reg_1191 <= orig_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_470 <= grp_fu_426_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_474 <= grp_fu_430_p2;
        reg_478 <= grp_fu_434_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_482 <= grp_fu_438_p2;
        reg_486 <= grp_fu_442_p2;
        reg_490 <= grp_fu_458_p2;
        reg_494 <= grp_fu_466_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_498 <= grp_fu_454_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_1054 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c_1 = 6'd0;
    end else begin
        ap_sig_allocacmp_c_1 = c_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_422_p0 = orig_1_load_reg_1225;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_422_p0 = orig_2_load_reg_1174;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_422_p0 = orig_2_load_1_reg_1091;
    end else begin
        grp_fu_422_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_422_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_422_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_422_p1 = filter_load_5;
    end else begin
        grp_fu_422_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_426_p0 = orig_0_load_reg_1220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_p0 = orig_2_load_reg_1174;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_426_p0 = orig_2_load_2_reg_1108;
    end else begin
        grp_fu_426_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_426_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_426_p1 = filter_load_8;
    end else begin
        grp_fu_426_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_430_p0 = orig_1_load_1_reg_1236;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_430_p0 = orig_3_load_2_reg_1191;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_430_p0 = orig_0_load_2_reg_1097;
    end else begin
        grp_fu_430_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_430_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_430_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_430_p1 = filter_load_6;
    end else begin
        grp_fu_430_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_434_p0 = orig_0_load_1_reg_1231;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_434_p0 = orig_0_load_4_reg_1198;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_434_p0 = orig_1_load_2_reg_1102;
    end else begin
        grp_fu_434_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_434_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_434_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_434_p1 = filter_load_7;
    end else begin
        grp_fu_434_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_438_p0 = orig_1_load_reg_1225;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_438_p0 = orig_3_load_reg_1115;
    end else begin
        grp_fu_438_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_438_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_438_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_438_p1 = filter_load_2;
    end else begin
        grp_fu_438_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_442_p0 = orig_1_load_1_reg_1236;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_442_p0 = orig_0_load_5_reg_1204;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_442_p0 = orig_3_load_1_reg_1121;
    end else begin
        grp_fu_442_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_442_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_442_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_442_p1 = filter_load_5;
    end else begin
        grp_fu_442_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_446_p0 = orig_2_load_2_reg_1108;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_446_p0 = orig_2_load_reg_1174;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_446_p0 = orig_1_load_2_reg_1102;
    end else begin
        grp_fu_446_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_446_p1 = filter_load;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_446_p1 = filter_load_6;
    end else begin
        grp_fu_446_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_450_p0 = orig_3_load_2_reg_1191;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_450_p0 = orig_2_load_1_reg_1091;
    end else begin
        grp_fu_450_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_450_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_450_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_450_p1 = filter_load_4;
    end else begin
        grp_fu_450_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_454_p0 = orig_0_load_3_reg_1133;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_454_p0 = orig_1_load_4_reg_1210;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_454_p0 = orig_2_load_2_reg_1108;
    end else begin
        grp_fu_454_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_454_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_454_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_454_p1 = filter_load_7;
    end else begin
        grp_fu_454_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_458_p0 = orig_3_load_reg_1115;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_458_p0 = orig_1_load_5_reg_1215;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_458_p0 = orig_0_load_3_reg_1133;
    end else begin
        grp_fu_458_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_458_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_458_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_458_p1 = filter_load_2;
    end else begin
        grp_fu_458_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_462_p0 = orig_3_load_2_reg_1191;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_462_p0 = orig_0_load_4_reg_1198;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_462_p0 = orig_3_load_1_reg_1121;
    end else begin
        grp_fu_462_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_462_p1 = filter_load_6;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_462_p1 = filter_load_4;
    end else begin
        grp_fu_462_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_466_p0 = orig_3_load_1_reg_1121;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_466_p0 = orig_0_load_5_reg_1204;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_466_p0 = orig_1_load_3_reg_1149;
    end else begin
        grp_fu_466_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_466_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_466_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_466_p1 = filter_load_2;
    end else begin
        grp_fu_466_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln12_1_reg_1013;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = zext_ln12_5_fu_703_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln12_3_fu_618_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln12_reg_1002;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln12_4_fu_684_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln12_2_fu_569_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address0_local = zext_ln12_1_reg_1013;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address0_local = zext_ln12_9_fu_742_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address0_local = zext_ln12_7_fu_657_p1;
        end else begin
            orig_1_address0_local = 'bx;
        end
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln12_reg_1002;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln12_8_fu_723_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln12_2_fu_569_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address0_local = zext_ln12_reg_1002;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address0_local = zext_ln12_2_fu_569_p1;
        end else begin
            orig_2_address0_local = 'bx;
        end
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address0_local = zext_ln12_2_reg_1024;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address0_local = zext_ln12_1_fu_541_p1;
        end else begin
            orig_3_address0_local = 'bx;
        end
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln8_reg_1054_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln8_reg_1054_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln12_1_fu_669_p2 = (zext_ln8_reg_1058 + tmp_6_fu_662_p3);
assign add_ln12_2_fu_689_p2 = (zext_ln8_reg_1058 + empty_reg_1069);
assign add_ln12_3_fu_641_p2 = (zext_ln12_6_fu_637_p1 + tmp_5_fu_594_p3);
assign add_ln12_4_fu_708_p2 = (zext_ln12_6_reg_1075 + tmp_6_fu_662_p3);
assign add_ln12_5_fu_728_p2 = (zext_ln12_6_reg_1075 + empty_reg_1069);
assign add_ln12_fu_602_p2 = (zext_ln8_fu_590_p1 + tmp_5_fu_594_p3);
assign add_ln13_10_fu_888_p2 = (add_ln13_9_reg_1372 + add_ln13_8_reg_1367);
assign add_ln13_11_fu_833_p2 = (mul_ln13_14_reg_1247 + mul_ln13_17_reg_1257);
assign add_ln13_12_fu_769_p2 = (reg_486 + reg_474);
assign add_ln13_13_fu_775_p2 = (add_ln13_12_fu_769_p2 + reg_482);
assign add_ln13_14_fu_837_p2 = (add_ln13_13_reg_1322 + add_ln13_11_fu_833_p2);
assign add_ln13_16_fu_842_p2 = (mul_ln13_25_reg_1332 + mul_ln13_22_reg_1287);
assign add_ln13_17_fu_846_p2 = (mul_ln13_23_reg_1327 + mul_ln13_20_reg_1277);
assign add_ln13_18_fu_897_p2 = (add_ln13_17_reg_1387 + add_ln13_16_reg_1382);
assign add_ln13_19_fu_850_p2 = (mul_ln13_24_reg_1262 + mul_ln13_26_reg_1292);
assign add_ln13_1_fu_807_p2 = (mul_ln13_reg_1267 + reg_478);
assign add_ln13_20_fu_781_p2 = (reg_478 + mul_ln13_21_reg_1282);
assign add_ln13_21_fu_786_p2 = (add_ln13_20_fu_781_p2 + reg_490);
assign add_ln13_22_fu_854_p2 = (add_ln13_21_reg_1337 + add_ln13_19_fu_850_p2);
assign add_ln13_24_fu_859_p2 = (reg_494 + reg_490);
assign add_ln13_25_fu_865_p2 = (mul_ln13_32_reg_1342 + reg_498);
assign add_ln13_26_fu_906_p2 = (add_ln13_25_reg_1402 + add_ln13_24_reg_1397);
assign add_ln13_27_fu_870_p2 = (mul_ln13_33_reg_1302 + mul_ln13_35_reg_1307);
assign add_ln13_28_fu_792_p2 = (reg_498 + mul_ln13_30_reg_1297);
assign add_ln13_29_fu_797_p2 = (add_ln13_28_fu_792_p2 + reg_494);
assign add_ln13_2_fu_879_p2 = (add_ln13_1_reg_1357 + add_ln13_reg_1352);
assign add_ln13_30_fu_874_p2 = (add_ln13_29_reg_1347 + add_ln13_27_fu_870_p2);
assign add_ln13_3_fu_812_p2 = (reg_474 + mul_ln13_1_reg_1242);
assign add_ln13_4_fu_757_p2 = (reg_478 + reg_470);
assign add_ln13_5_fu_763_p2 = (add_ln13_4_fu_757_p2 + reg_474);
assign add_ln13_6_fu_817_p2 = (add_ln13_5_reg_1272 + add_ln13_3_fu_812_p2);
assign add_ln13_8_fu_822_p2 = (reg_470 + reg_482);
assign add_ln13_9_fu_828_p2 = (reg_486 + mul_ln13_15_reg_1252);
assign add_ln13_fu_803_p2 = (mul_ln13_2_reg_1312 + mul_ln13_4_reg_1317);
assign add_ln5_1_fu_563_p2 = (zext_ln5_1_fu_559_p1 + tmp_1);
assign add_ln5_fu_533_p3 = {{indvars_iv_next93}, {lshr_ln_fu_510_p4}};
assign add_ln8_fu_747_p2 = (c_1_reg_997 + 6'd4);
assign add_ln_fu_520_p3 = {{r}, {lshr_ln_fu_510_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_fu_623_p2 = (tmp + 13'd130);
assign icmp_ln8_fu_584_p2 = ((or_ln8_fu_576_p3 == 6'd62) ? 1'b1 : 1'b0);
assign lshr_ln12_1_fu_608_p4 = {{add_ln12_fu_602_p2[12:2]}};
assign lshr_ln12_2_fu_674_p4 = {{add_ln12_1_fu_669_p2[12:2]}};
assign lshr_ln12_3_fu_693_p4 = {{add_ln12_2_fu_689_p2[12:2]}};
assign lshr_ln12_4_fu_647_p4 = {{add_ln12_3_fu_641_p2[12:2]}};
assign lshr_ln12_5_fu_713_p4 = {{add_ln12_4_fu_708_p2[12:2]}};
assign lshr_ln12_6_fu_732_p4 = {{add_ln12_5_fu_728_p2[12:2]}};
assign lshr_ln_fu_510_p4 = {{ap_sig_allocacmp_c_1[5:2]}};
assign or_ln8_1_fu_629_p3 = {{lshr_ln_fu_510_p4}, {2'd3}};
assign or_ln8_fu_576_p3 = {{lshr_ln_fu_510_p4}, {2'd2}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = zext_ln12_1_fu_541_p1;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = zext_ln12_fu_528_p1;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign sol_0_address0 = zext_ln12_reg_1002_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_1412;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln12_reg_1002_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_1_reg_1417;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln12_reg_1002_pp0_iter2_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = temp_2_reg_1422;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln12_reg_1002_pp0_iter2_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = temp_3_reg_1427;
assign sol_3_we0 = sol_3_we0_local;
assign temp_1_fu_892_p2 = (add_ln13_14_reg_1377 + add_ln13_10_fu_888_p2);
assign temp_2_fu_901_p2 = (add_ln13_22_reg_1392 + add_ln13_18_fu_897_p2);
assign temp_3_fu_910_p2 = (add_ln13_30_reg_1407 + add_ln13_26_fu_906_p2);
assign temp_fu_883_p2 = (add_ln13_6_reg_1362 + add_ln13_2_fu_879_p2);
assign tmp_5_fu_594_p3 = {{r}, {6'd2}};
assign tmp_6_fu_662_p3 = {{indvars_iv_next93}, {6'd2}};
assign zext_ln12_1_fu_541_p1 = add_ln5_fu_533_p3;
assign zext_ln12_2_fu_569_p1 = add_ln5_1_fu_563_p2;
assign zext_ln12_3_fu_618_p1 = lshr_ln12_1_fu_608_p4;
assign zext_ln12_4_fu_684_p1 = lshr_ln12_2_fu_674_p4;
assign zext_ln12_5_fu_703_p1 = lshr_ln12_3_fu_693_p4;
assign zext_ln12_6_fu_637_p1 = or_ln8_1_fu_629_p3;
assign zext_ln12_7_fu_657_p1 = lshr_ln12_4_fu_647_p4;
assign zext_ln12_8_fu_723_p1 = lshr_ln12_5_fu_713_p4;
assign zext_ln12_9_fu_742_p1 = lshr_ln12_6_fu_732_p4;
assign zext_ln12_fu_528_p1 = add_ln_fu_520_p3;
assign zext_ln5_1_fu_559_p1 = zext_ln5_cast_fu_551_p3;
assign zext_ln5_cast_fu_551_p3 = {{1'd1}, {zext_ln5_fu_547_p1}};
assign zext_ln5_fu_547_p1 = lshr_ln_fu_510_p4;
assign zext_ln8_fu_590_p1 = or_ln8_fu_576_p3;
always @ (posedge ap_clk) begin
    zext_ln12_reg_1002[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1002_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1002_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_1013[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_2_reg_1024[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln8_reg_1058[1:0] <= 2'b10;
    zext_ln8_reg_1058[12:6] <= 7'b0000000;
    zext_ln12_6_reg_1075[1:0] <= 2'b11;
    zext_ln12_6_reg_1075[12:6] <= 7'b0000000;
end
endmodule 
