module ss_sort_hist (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_address1,bucket_0_ce1,bucket_0_q1,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_address1,bucket_1_ce1,bucket_1_q1,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_address1,bucket_2_ce1,bucket_2_q1,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_address1,bucket_3_ce1,bucket_3_q1,bucket_4_address0,bucket_4_ce0,bucket_4_we0,bucket_4_d0,bucket_4_address1,bucket_4_ce1,bucket_4_q1,bucket_5_address0,bucket_5_ce0,bucket_5_we0,bucket_5_d0,bucket_5_address1,bucket_5_ce1,bucket_5_q1,bucket_6_address0,bucket_6_ce0,bucket_6_we0,bucket_6_d0,bucket_6_address1,bucket_6_ce1,bucket_6_q1,bucket_7_address0,bucket_7_ce0,bucket_7_we0,bucket_7_d0,bucket_7_address1,bucket_7_ce1,bucket_7_q1,b_0_address0,b_0_ce0,b_0_q0,b_1_address0,b_1_ce0,b_1_q0,b_2_address0,b_2_ce0,b_2_q0,b_3_address0,b_3_ce0,b_3_q0,b_4_address0,b_4_ce0,b_4_q0,b_5_address0,b_5_ce0,b_5_q0,b_6_address0,b_6_ce0,b_6_q0,b_7_address0,b_7_ce0,b_7_q0,exp); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
output  [7:0] bucket_0_address1;
output   bucket_0_ce1;
input  [31:0] bucket_0_q1;
output  [7:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
output  [7:0] bucket_1_address1;
output   bucket_1_ce1;
input  [31:0] bucket_1_q1;
output  [7:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
output  [7:0] bucket_2_address1;
output   bucket_2_ce1;
input  [31:0] bucket_2_q1;
output  [7:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
output  [7:0] bucket_3_address1;
output   bucket_3_ce1;
input  [31:0] bucket_3_q1;
output  [7:0] bucket_4_address0;
output   bucket_4_ce0;
output   bucket_4_we0;
output  [31:0] bucket_4_d0;
output  [7:0] bucket_4_address1;
output   bucket_4_ce1;
input  [31:0] bucket_4_q1;
output  [7:0] bucket_5_address0;
output   bucket_5_ce0;
output   bucket_5_we0;
output  [31:0] bucket_5_d0;
output  [7:0] bucket_5_address1;
output   bucket_5_ce1;
input  [31:0] bucket_5_q1;
output  [7:0] bucket_6_address0;
output   bucket_6_ce0;
output   bucket_6_we0;
output  [31:0] bucket_6_d0;
output  [7:0] bucket_6_address1;
output   bucket_6_ce1;
input  [31:0] bucket_6_q1;
output  [7:0] bucket_7_address0;
output   bucket_7_ce0;
output   bucket_7_we0;
output  [31:0] bucket_7_d0;
output  [7:0] bucket_7_address1;
output   bucket_7_ce1;
input  [31:0] bucket_7_q1;
output  [7:0] b_0_address0;
output   b_0_ce0;
input  [31:0] b_0_q0;
output  [7:0] b_1_address0;
output   b_1_ce0;
input  [31:0] b_1_q0;
output  [7:0] b_2_address0;
output   b_2_ce0;
input  [31:0] b_2_q0;
output  [7:0] b_3_address0;
output   b_3_ce0;
input  [31:0] b_3_q0;
output  [7:0] b_4_address0;
output   b_4_ce0;
input  [31:0] b_4_q0;
output  [7:0] b_5_address0;
output   b_5_ce0;
input  [31:0] b_5_q0;
output  [7:0] b_6_address0;
output   b_6_ce0;
input  [31:0] b_6_q0;
output  [7:0] b_7_address0;
output   b_7_ce0;
input  [31:0] b_7_q0;
input  [4:0] exp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_9_reg_1040;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_540;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_544;
reg   [31:0] reg_548;
reg   [31:0] reg_552;
reg   [31:0] reg_556;
reg   [31:0] reg_560;
reg   [31:0] reg_564;
reg   [31:0] reg_568;
wire   [31:0] exp_cast5_fu_628_p1;
reg   [31:0] exp_cast5_reg_1020;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] blockID_2_reg_1032;
reg   [0:0] tmp_9_reg_1040_pp0_iter1_reg;
reg   [0:0] tmp_9_reg_1040_pp0_iter2_reg;
reg   [31:0] b_0_load_reg_1084;
reg   [31:0] b_1_load_reg_1089;
reg   [31:0] b_2_load_reg_1094;
reg   [31:0] b_3_load_reg_1099;
reg   [31:0] b_4_load_reg_1104;
reg   [31:0] b_5_load_reg_1109;
reg   [31:0] b_6_load_reg_1114;
reg   [31:0] b_7_load_reg_1119;
wire   [1:0] trunc_ln57_1_fu_681_p1;
reg   [1:0] trunc_ln57_1_reg_1124;
wire   [9:0] add_ln57_fu_689_p2;
reg   [9:0] add_ln57_reg_1129;
wire   [1:0] trunc_ln57_5_fu_695_p1;
reg   [1:0] trunc_ln57_5_reg_1134;
wire   [2:0] trunc_ln57_fu_699_p1;
reg   [2:0] trunc_ln57_reg_1139;
reg   [2:0] trunc_ln57_reg_1139_pp0_iter1_reg;
reg   [2:0] trunc_ln57_reg_1139_pp0_iter2_reg;
wire   [5:0] tmp_s_fu_702_p4;
reg   [5:0] tmp_s_reg_1145;
reg   [5:0] tmp_s_reg_1145_pp0_iter1_reg;
reg   [5:0] tmp_s_reg_1145_pp0_iter2_reg;
reg   [7:0] bucket_1_addr_reg_1152;
reg   [7:0] bucket_3_addr_reg_1158;
reg   [7:0] bucket_5_addr_reg_1164;
reg   [7:0] bucket_7_addr_reg_1170;
wire   [1:0] trunc_ln57_2_fu_730_p1;
reg   [1:0] trunc_ln57_2_reg_1176;
wire   [10:0] zext_ln57_2_fu_734_p1;
reg   [10:0] zext_ln57_2_reg_1181;
reg   [10:0] zext_ln57_2_reg_1181_pp0_iter1_reg;
reg   [7:0] bucket_0_addr_reg_1188;
reg   [7:0] bucket_2_addr_reg_1194;
reg   [7:0] bucket_4_addr_reg_1200;
reg   [7:0] bucket_6_addr_reg_1206;
wire   [1:0] trunc_ln57_6_fu_772_p1;
reg   [1:0] trunc_ln57_6_reg_1212;
wire   [31:0] tmp_fu_786_p11;
reg   [31:0] tmp_reg_1217;
wire   [1:0] trunc_ln57_3_fu_813_p1;
reg   [1:0] trunc_ln57_3_reg_1222;
reg   [1:0] trunc_ln57_3_reg_1222_pp0_iter2_reg;
wire   [31:0] tmp_4_fu_817_p11;
reg   [31:0] tmp_4_reg_1227;
wire   [1:0] trunc_ln57_7_fu_844_p1;
reg   [1:0] trunc_ln57_7_reg_1232;
reg   [1:0] trunc_ln57_7_reg_1232_pp0_iter2_reg;
wire   [1:0] trunc_ln57_4_fu_861_p1;
reg   [1:0] trunc_ln57_4_reg_1237;
reg   [1:0] trunc_ln57_4_reg_1237_pp0_iter2_reg;
wire   [1:0] trunc_ln57_8_fu_878_p1;
reg   [1:0] trunc_ln57_8_reg_1242;
reg   [7:0] bucket_5_addr_18_reg_1247;
reg   [7:0] bucket_6_addr_18_reg_1253;
reg   [7:0] bucket_3_addr_18_reg_1259;
reg   [7:0] bucket_4_addr_18_reg_1265;
reg   [7:0] bucket_1_addr_18_reg_1271;
reg   [7:0] bucket_2_addr_18_reg_1277;
reg   [7:0] bucket_7_addr_18_reg_1283;
reg   [7:0] bucket_0_addr_18_reg_1289;
reg   [7:0] lshr_ln52_7_reg_1295;
reg   [7:0] bucket_5_addr_19_reg_1300;
reg   [7:0] bucket_6_addr_19_reg_1306;
reg   [7:0] bucket_3_addr_19_reg_1312;
reg   [7:0] bucket_4_addr_19_reg_1318;
reg   [7:0] bucket_1_addr_19_reg_1324;
reg   [7:0] bucket_2_addr_19_reg_1330;
reg   [7:0] bucket_7_addr_19_reg_1336;
reg   [7:0] bucket_0_addr_19_reg_1342;
reg   [7:0] bucket_5_addr_20_reg_1348;
reg   [7:0] bucket_6_addr_20_reg_1354;
reg   [7:0] bucket_3_addr_20_reg_1360;
reg   [7:0] bucket_4_addr_20_reg_1366;
reg   [7:0] bucket_1_addr_20_reg_1372;
reg   [7:0] bucket_2_addr_20_reg_1378;
reg   [7:0] bucket_7_addr_20_reg_1384;
reg   [7:0] bucket_0_addr_20_reg_1390;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln57_fu_658_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln52_fu_718_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln52_4_fu_760_p1;
wire   [63:0] zext_ln52_1_fu_888_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln52_5_fu_918_p1;
wire   [63:0] zext_ln52_2_fu_932_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln52_6_fu_962_p1;
wire   [63:0] zext_ln52_3_fu_998_p1;
wire   [63:0] zext_ln52_7_fu_1006_p1;
reg   [9:0] blockID_fu_98;
wire   [9:0] add_ln54_fu_776_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID_2;
reg    b_0_ce0_local;
reg    b_1_ce0_local;
reg    b_2_ce0_local;
reg    b_3_ce0_local;
reg    b_4_ce0_local;
reg    b_5_ce0_local;
reg    b_6_ce0_local;
reg    b_7_ce0_local;
reg    bucket_1_ce1_local;
reg   [7:0] bucket_1_address1_local;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
wire   [31:0] add_ln58_fu_848_p2;
reg    bucket_1_ce0_local;
reg   [7:0] bucket_1_address0_local;
wire   [31:0] grp_fu_600_p2;
reg    bucket_3_ce1_local;
reg   [7:0] bucket_3_address1_local;
reg    bucket_3_we0_local;
reg   [31:0] bucket_3_d0_local;
reg    bucket_3_ce0_local;
reg   [7:0] bucket_3_address0_local;
wire   [31:0] grp_fu_586_p2;
reg    bucket_5_ce1_local;
reg   [7:0] bucket_5_address1_local;
reg    bucket_5_we0_local;
reg   [31:0] bucket_5_d0_local;
reg    bucket_5_ce0_local;
reg   [7:0] bucket_5_address0_local;
wire   [31:0] grp_fu_572_p2;
reg    bucket_7_ce1_local;
reg   [7:0] bucket_7_address1_local;
reg    bucket_7_we0_local;
reg   [31:0] bucket_7_d0_local;
reg    bucket_7_ce0_local;
reg   [7:0] bucket_7_address0_local;
wire   [31:0] grp_fu_614_p2;
reg    bucket_0_ce1_local;
reg   [7:0] bucket_0_address1_local;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire   [31:0] add_ln58_1_fu_865_p2;
reg    bucket_0_ce0_local;
reg   [7:0] bucket_0_address0_local;
wire   [31:0] grp_fu_621_p2;
reg    bucket_2_ce1_local;
reg   [7:0] bucket_2_address1_local;
reg    bucket_2_we0_local;
reg   [31:0] bucket_2_d0_local;
reg    bucket_2_ce0_local;
reg   [7:0] bucket_2_address0_local;
wire   [31:0] grp_fu_607_p2;
reg    bucket_4_ce1_local;
reg   [7:0] bucket_4_address1_local;
reg    bucket_4_we0_local;
reg   [31:0] bucket_4_d0_local;
reg    bucket_4_ce0_local;
reg   [7:0] bucket_4_address0_local;
wire   [31:0] grp_fu_593_p2;
reg    bucket_6_ce1_local;
reg   [7:0] bucket_6_address1_local;
reg    bucket_6_we0_local;
reg   [31:0] bucket_6_d0_local;
reg    bucket_6_ce0_local;
reg   [7:0] bucket_6_address0_local;
wire   [31:0] grp_fu_579_p2;
wire   [7:0] lshr_ln_fu_648_p4;
wire   [8:0] trunc_ln54_fu_670_p1;
wire   [31:0] ashr_ln57_fu_673_p2;
wire   [9:0] zext_ln57_1_fu_677_p1;
wire   [31:0] ashr_ln57_4_fu_685_p2;
wire   [7:0] lshr_ln6_fu_711_p3;
wire   [31:0] ashr_ln57_1_fu_726_p2;
wire   [10:0] shl_ln_fu_737_p3;
wire   [10:0] bucket_indx_fu_744_p2;
wire   [7:0] lshr_ln52_4_fu_750_p4;
wire   [31:0] ashr_ln57_5_fu_768_p2;
wire   [31:0] tmp_fu_786_p9;
wire   [31:0] ashr_ln57_2_fu_809_p2;
wire   [31:0] tmp_4_fu_817_p9;
wire   [31:0] ashr_ln57_6_fu_840_p2;
wire   [31:0] ashr_ln57_3_fu_857_p2;
wire   [31:0] ashr_ln57_7_fu_874_p2;
wire   [7:0] lshr_ln52_1_fu_882_p3;
wire   [10:0] shl_ln57_1_fu_896_p3;
wire   [10:0] bucket_indx_1_fu_903_p2;
wire   [7:0] lshr_ln52_5_fu_908_p4;
wire   [7:0] lshr_ln52_2_fu_926_p3;
wire   [10:0] shl_ln57_2_fu_940_p3;
wire   [10:0] bucket_indx_2_fu_947_p2;
wire   [7:0] lshr_ln52_6_fu_952_p4;
wire   [10:0] shl_ln57_3_fu_970_p3;
wire   [10:0] bucket_indx_3_fu_977_p2;
wire   [7:0] lshr_ln52_3_fu_992_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage2;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_fu_786_p1;
wire   [2:0] tmp_fu_786_p3;
wire  signed [2:0] tmp_fu_786_p5;
wire  signed [2:0] tmp_fu_786_p7;
wire  signed [2:0] tmp_4_fu_817_p1;
wire   [2:0] tmp_4_fu_817_p3;
wire   [2:0] tmp_4_fu_817_p5;
wire  signed [2:0] tmp_4_fu_817_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 blockID_fu_98 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U9(.din0(bucket_1_q1),.din1(bucket_3_q1),.din2(bucket_5_q1),.din3(bucket_7_q1),.def(tmp_fu_786_p9),.sel(trunc_ln57_reg_1139),.dout(tmp_fu_786_p11));
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U10(.din0(bucket_0_q1),.din1(bucket_2_q1),.din2(bucket_4_q1),.din3(bucket_6_q1),.def(tmp_4_fu_817_p9),.sel(trunc_ln57_reg_1139),.dout(tmp_4_fu_817_p11));
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_fu_98 <= 10'd0;
    end else if (((tmp_9_reg_1040 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        blockID_fu_98 <= add_ln54_fu_776_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln57_reg_1129 <= add_ln57_fu_689_p2;
        bucket_0_addr_18_reg_1289 <= zext_ln52_5_fu_918_p1;
        bucket_1_addr_18_reg_1271 <= zext_ln52_1_fu_888_p1;
        bucket_2_addr_18_reg_1277 <= zext_ln52_5_fu_918_p1;
        bucket_3_addr_18_reg_1259 <= zext_ln52_1_fu_888_p1;
        bucket_4_addr_18_reg_1265 <= zext_ln52_5_fu_918_p1;
        bucket_5_addr_18_reg_1247 <= zext_ln52_1_fu_888_p1;
        bucket_6_addr_18_reg_1253 <= zext_ln52_5_fu_918_p1;
        bucket_7_addr_18_reg_1283 <= zext_ln52_1_fu_888_p1;
        trunc_ln57_1_reg_1124 <= trunc_ln57_1_fu_681_p1;
        trunc_ln57_5_reg_1134 <= trunc_ln57_5_fu_695_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_load_reg_1084 <= b_0_q0;
        b_1_load_reg_1089 <= b_1_q0;
        b_2_load_reg_1094 <= b_2_q0;
        b_3_load_reg_1099 <= b_3_q0;
        b_4_load_reg_1104 <= b_4_q0;
        b_5_load_reg_1109 <= b_5_q0;
        b_6_load_reg_1114 <= b_6_q0;
        b_7_load_reg_1119 <= b_7_q0;
        bucket_0_addr_19_reg_1342 <= zext_ln52_6_fu_962_p1;
        bucket_1_addr_19_reg_1324 <= zext_ln52_2_fu_932_p1;
        bucket_2_addr_19_reg_1330 <= zext_ln52_6_fu_962_p1;
        bucket_3_addr_19_reg_1312 <= zext_ln52_2_fu_932_p1;
        bucket_4_addr_19_reg_1318 <= zext_ln52_6_fu_962_p1;
        bucket_5_addr_19_reg_1300 <= zext_ln52_2_fu_932_p1;
        bucket_6_addr_19_reg_1306 <= zext_ln52_6_fu_962_p1;
        bucket_7_addr_19_reg_1336 <= zext_ln52_2_fu_932_p1;
        lshr_ln52_7_reg_1295 <= {{bucket_indx_3_fu_977_p2[10:3]}};
        trunc_ln57_4_reg_1237 <= trunc_ln57_4_fu_861_p1;
        trunc_ln57_4_reg_1237_pp0_iter2_reg <= trunc_ln57_4_reg_1237;
        trunc_ln57_8_reg_1242 <= trunc_ln57_8_fu_878_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_2_reg_1032 <= ap_sig_allocacmp_blockID_2;
        bucket_0_addr_20_reg_1390 <= zext_ln52_7_fu_1006_p1;
        bucket_1_addr_20_reg_1372 <= zext_ln52_3_fu_998_p1;
        bucket_2_addr_20_reg_1378 <= zext_ln52_7_fu_1006_p1;
        bucket_3_addr_20_reg_1360 <= zext_ln52_3_fu_998_p1;
        bucket_4_addr_20_reg_1366 <= zext_ln52_7_fu_1006_p1;
        bucket_5_addr_20_reg_1348 <= zext_ln52_3_fu_998_p1;
        bucket_6_addr_20_reg_1354 <= zext_ln52_7_fu_1006_p1;
        bucket_7_addr_20_reg_1384 <= zext_ln52_3_fu_998_p1;
        exp_cast5_reg_1020[4 : 0] <= exp_cast5_fu_628_p1[4 : 0];
        tmp_4_reg_1227 <= tmp_4_fu_817_p11;
        tmp_9_reg_1040 <= ap_sig_allocacmp_blockID_2[32'd9];
        tmp_9_reg_1040_pp0_iter1_reg <= tmp_9_reg_1040;
        tmp_9_reg_1040_pp0_iter2_reg <= tmp_9_reg_1040_pp0_iter1_reg;
        tmp_reg_1217 <= tmp_fu_786_p11;
        trunc_ln57_3_reg_1222 <= trunc_ln57_3_fu_813_p1;
        trunc_ln57_3_reg_1222_pp0_iter2_reg <= trunc_ln57_3_reg_1222;
        trunc_ln57_7_reg_1232 <= trunc_ln57_7_fu_844_p1;
        trunc_ln57_7_reg_1232_pp0_iter2_reg <= trunc_ln57_7_reg_1232;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_addr_reg_1188 <= zext_ln52_4_fu_760_p1;
        bucket_1_addr_reg_1152 <= zext_ln52_fu_718_p1;
        bucket_2_addr_reg_1194 <= zext_ln52_4_fu_760_p1;
        bucket_3_addr_reg_1158 <= zext_ln52_fu_718_p1;
        bucket_4_addr_reg_1200 <= zext_ln52_4_fu_760_p1;
        bucket_5_addr_reg_1164 <= zext_ln52_fu_718_p1;
        bucket_6_addr_reg_1206 <= zext_ln52_4_fu_760_p1;
        bucket_7_addr_reg_1170 <= zext_ln52_fu_718_p1;
        tmp_s_reg_1145 <= {{blockID_2_reg_1032[8:3]}};
        tmp_s_reg_1145_pp0_iter1_reg <= tmp_s_reg_1145;
        tmp_s_reg_1145_pp0_iter2_reg <= tmp_s_reg_1145_pp0_iter1_reg;
        trunc_ln57_2_reg_1176 <= trunc_ln57_2_fu_730_p1;
        trunc_ln57_6_reg_1212 <= trunc_ln57_6_fu_772_p1;
        trunc_ln57_reg_1139 <= trunc_ln57_fu_699_p1;
        trunc_ln57_reg_1139_pp0_iter1_reg <= trunc_ln57_reg_1139;
        trunc_ln57_reg_1139_pp0_iter2_reg <= trunc_ln57_reg_1139_pp0_iter1_reg;
        zext_ln57_2_reg_1181[9 : 0] <= zext_ln57_2_fu_734_p1[9 : 0];
        zext_ln57_2_reg_1181_pp0_iter1_reg[9 : 0] <= zext_ln57_2_reg_1181[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_540 <= bucket_5_q1;
        reg_544 <= bucket_6_q1;
        reg_548 <= bucket_3_q1;
        reg_552 <= bucket_4_q1;
        reg_556 <= bucket_1_q1;
        reg_560 <= bucket_2_q1;
        reg_564 <= bucket_7_q1;
        reg_568 <= bucket_0_q1;
    end
end
always @ (*) begin
    if (((tmp_9_reg_1040 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_9_reg_1040_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_blockID_2 = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_2 = blockID_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_0_ce0_local = 1'b1;
    end else begin
        b_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_1_ce0_local = 1'b1;
    end else begin
        b_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_2_ce0_local = 1'b1;
    end else begin
        b_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_3_ce0_local = 1'b1;
    end else begin
        b_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_4_ce0_local = 1'b1;
    end else begin
        b_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_5_ce0_local = 1'b1;
    end else begin
        b_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_6_ce0_local = 1'b1;
    end else begin
        b_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_7_ce0_local = 1'b1;
    end else begin
        b_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_address0_local = bucket_0_addr_20_reg_1390;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = bucket_0_addr_19_reg_1342;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = bucket_0_addr_18_reg_1289;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address0_local = bucket_0_addr_reg_1188;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address1_local = zext_ln52_7_fu_1006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address1_local = zext_ln52_6_fu_962_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_address1_local = zext_ln52_5_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address1_local = zext_ln52_4_fu_760_p1;
    end else begin
        bucket_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_0_ce1_local = 1'b1;
    end else begin
        bucket_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_d0_local = grp_fu_621_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_d0_local = add_ln58_1_fu_865_p2;
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln57_reg_1139_pp0_iter2_reg == 3'd0) & ~(trunc_ln57_reg_1139_pp0_iter2_reg == 3'd2) & ~(trunc_ln57_reg_1139_pp0_iter2_reg == 3'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln57_reg_1139_pp0_iter1_reg == 3'd0) & ~(trunc_ln57_reg_1139_pp0_iter1_reg == 3'd2) & ~(trunc_ln57_reg_1139_pp0_iter1_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln57_reg_1139_pp0_iter1_reg == 3'd0) & ~(trunc_ln57_reg_1139_pp0_iter1_reg == 3'd2) & ~(trunc_ln57_reg_1139_pp0_iter1_reg == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln57_reg_1139 == 3'd0) & ~(trunc_ln57_reg_1139 == 3'd2) & ~(trunc_ln57_reg_1139 == 3'd4) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address0_local = bucket_1_addr_20_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address0_local = bucket_1_addr_19_reg_1324;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = bucket_1_addr_18_reg_1271;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address0_local = bucket_1_addr_reg_1152;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address1_local = zext_ln52_3_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address1_local = zext_ln52_2_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address1_local = zext_ln52_1_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address1_local = zext_ln52_fu_718_p1;
    end else begin
        bucket_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_1_ce1_local = 1'b1;
    end else begin
        bucket_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_1_d0_local = grp_fu_600_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_d0_local = add_ln58_fu_848_p2;
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln57_reg_1139_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1139 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1139_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln57_reg_1139_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_2_address0_local = bucket_2_addr_20_reg_1378;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address0_local = bucket_2_addr_19_reg_1330;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address0_local = bucket_2_addr_18_reg_1277;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_address0_local = bucket_2_addr_reg_1194;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address1_local = zext_ln52_7_fu_1006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_address1_local = zext_ln52_6_fu_962_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_2_address1_local = zext_ln52_5_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address1_local = zext_ln52_4_fu_760_p1;
    end else begin
        bucket_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_2_ce1_local = 1'b1;
    end else begin
        bucket_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_2_d0_local = grp_fu_607_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_d0_local = add_ln58_1_fu_865_p2;
    end else begin
        bucket_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln57_reg_1139_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1139 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1139_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln57_reg_1139_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_3_address0_local = bucket_3_addr_20_reg_1360;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_3_address0_local = bucket_3_addr_19_reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address0_local = bucket_3_addr_18_reg_1259;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_address0_local = bucket_3_addr_reg_1158;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address1_local = zext_ln52_3_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_address1_local = zext_ln52_2_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_3_address1_local = zext_ln52_1_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_3_address1_local = zext_ln52_fu_718_p1;
    end else begin
        bucket_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_3_ce1_local = 1'b1;
    end else begin
        bucket_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_3_d0_local = grp_fu_586_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_d0_local = add_ln58_fu_848_p2;
    end else begin
        bucket_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln57_reg_1139_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1139 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1139_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln57_reg_1139_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_4_address0_local = bucket_4_addr_20_reg_1366;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_4_address0_local = bucket_4_addr_19_reg_1318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_4_address0_local = bucket_4_addr_18_reg_1265;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_4_address0_local = bucket_4_addr_reg_1200;
    end else begin
        bucket_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_4_address1_local = zext_ln52_7_fu_1006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_4_address1_local = zext_ln52_6_fu_962_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_4_address1_local = zext_ln52_5_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_4_address1_local = zext_ln52_4_fu_760_p1;
    end else begin
        bucket_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_4_ce0_local = 1'b1;
    end else begin
        bucket_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_4_ce1_local = 1'b1;
    end else begin
        bucket_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_4_d0_local = grp_fu_593_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_4_d0_local = add_ln58_1_fu_865_p2;
    end else begin
        bucket_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln57_reg_1139_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1139 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1139_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln57_reg_1139_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_4_we0_local = 1'b1;
    end else begin
        bucket_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_5_address0_local = bucket_5_addr_20_reg_1348;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_5_address0_local = bucket_5_addr_19_reg_1300;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_5_address0_local = bucket_5_addr_18_reg_1247;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_5_address0_local = bucket_5_addr_reg_1164;
    end else begin
        bucket_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_5_address1_local = zext_ln52_3_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_5_address1_local = zext_ln52_2_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_5_address1_local = zext_ln52_1_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_5_address1_local = zext_ln52_fu_718_p1;
    end else begin
        bucket_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_5_ce0_local = 1'b1;
    end else begin
        bucket_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_5_ce1_local = 1'b1;
    end else begin
        bucket_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_5_d0_local = grp_fu_572_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_5_d0_local = add_ln58_fu_848_p2;
    end else begin
        bucket_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln57_reg_1139_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1139 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1139_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln57_reg_1139_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_5_we0_local = 1'b1;
    end else begin
        bucket_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_6_address0_local = bucket_6_addr_20_reg_1354;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_6_address0_local = bucket_6_addr_19_reg_1306;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_6_address0_local = bucket_6_addr_18_reg_1253;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_6_address0_local = bucket_6_addr_reg_1206;
    end else begin
        bucket_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_6_address1_local = zext_ln52_7_fu_1006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_6_address1_local = zext_ln52_6_fu_962_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_6_address1_local = zext_ln52_5_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_6_address1_local = zext_ln52_4_fu_760_p1;
    end else begin
        bucket_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_6_ce0_local = 1'b1;
    end else begin
        bucket_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_6_ce1_local = 1'b1;
    end else begin
        bucket_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_6_d0_local = grp_fu_579_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_6_d0_local = add_ln58_1_fu_865_p2;
    end else begin
        bucket_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln57_reg_1139_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1139 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1139_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln57_reg_1139_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_6_we0_local = 1'b1;
    end else begin
        bucket_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_7_address0_local = bucket_7_addr_20_reg_1384;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_7_address0_local = bucket_7_addr_19_reg_1336;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_7_address0_local = bucket_7_addr_18_reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_7_address0_local = bucket_7_addr_reg_1170;
    end else begin
        bucket_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_7_address1_local = zext_ln52_3_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_7_address1_local = zext_ln52_2_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_7_address1_local = zext_ln52_1_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_7_address1_local = zext_ln52_fu_718_p1;
    end else begin
        bucket_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_7_ce0_local = 1'b1;
    end else begin
        bucket_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_7_ce1_local = 1'b1;
    end else begin
        bucket_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_7_d0_local = grp_fu_614_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_7_d0_local = add_ln58_fu_848_p2;
    end else begin
        bucket_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln57_reg_1139_pp0_iter2_reg == 3'd0) & ~(trunc_ln57_reg_1139_pp0_iter2_reg == 3'd2) & ~(trunc_ln57_reg_1139_pp0_iter2_reg == 3'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln57_reg_1139_pp0_iter1_reg == 3'd0) & ~(trunc_ln57_reg_1139_pp0_iter1_reg == 3'd2) & ~(trunc_ln57_reg_1139_pp0_iter1_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln57_reg_1139_pp0_iter1_reg == 3'd0) & ~(trunc_ln57_reg_1139_pp0_iter1_reg == 3'd2) & ~(trunc_ln57_reg_1139_pp0_iter1_reg == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln57_reg_1139 == 3'd0) & ~(trunc_ln57_reg_1139 == 3'd2) & ~(trunc_ln57_reg_1139 == 3'd4) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bucket_7_we0_local = 1'b1;
    end else begin
        bucket_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln54_fu_776_p2 = (blockID_2_reg_1032 + 10'd2);
assign add_ln57_fu_689_p2 = (zext_ln57_1_fu_677_p1 + 10'd2);
assign add_ln58_1_fu_865_p2 = (tmp_4_reg_1227 + 32'd1);
assign add_ln58_fu_848_p2 = (tmp_reg_1217 + 32'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign ashr_ln57_1_fu_726_p2 = $signed(b_1_load_reg_1089) >>> exp_cast5_reg_1020;
assign ashr_ln57_2_fu_809_p2 = $signed(b_2_load_reg_1094) >>> exp_cast5_reg_1020;
assign ashr_ln57_3_fu_857_p2 = $signed(b_3_load_reg_1099) >>> exp_cast5_reg_1020;
assign ashr_ln57_4_fu_685_p2 = $signed(b_4_load_reg_1104) >>> exp_cast5_reg_1020;
assign ashr_ln57_5_fu_768_p2 = $signed(b_5_load_reg_1109) >>> exp_cast5_reg_1020;
assign ashr_ln57_6_fu_840_p2 = $signed(b_6_load_reg_1114) >>> exp_cast5_reg_1020;
assign ashr_ln57_7_fu_874_p2 = $signed(b_7_load_reg_1119) >>> exp_cast5_reg_1020;
assign ashr_ln57_fu_673_p2 = $signed(b_0_load_reg_1084) >>> exp_cast5_reg_1020;
assign b_0_address0 = zext_ln57_fu_658_p1;
assign b_0_ce0 = b_0_ce0_local;
assign b_1_address0 = zext_ln57_fu_658_p1;
assign b_1_ce0 = b_1_ce0_local;
assign b_2_address0 = zext_ln57_fu_658_p1;
assign b_2_ce0 = b_2_ce0_local;
assign b_3_address0 = zext_ln57_fu_658_p1;
assign b_3_ce0 = b_3_ce0_local;
assign b_4_address0 = zext_ln57_fu_658_p1;
assign b_4_ce0 = b_4_ce0_local;
assign b_5_address0 = zext_ln57_fu_658_p1;
assign b_5_ce0 = b_5_ce0_local;
assign b_6_address0 = zext_ln57_fu_658_p1;
assign b_6_ce0 = b_6_ce0_local;
assign b_7_address0 = zext_ln57_fu_658_p1;
assign b_7_ce0 = b_7_ce0_local;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_address1 = bucket_0_address1_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_ce1 = bucket_0_ce1_local;
assign bucket_0_d0 = bucket_0_d0_local;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_address1 = bucket_1_address1_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_ce1 = bucket_1_ce1_local;
assign bucket_1_d0 = bucket_1_d0_local;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_2_address0 = bucket_2_address0_local;
assign bucket_2_address1 = bucket_2_address1_local;
assign bucket_2_ce0 = bucket_2_ce0_local;
assign bucket_2_ce1 = bucket_2_ce1_local;
assign bucket_2_d0 = bucket_2_d0_local;
assign bucket_2_we0 = bucket_2_we0_local;
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_address1 = bucket_3_address1_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_ce1 = bucket_3_ce1_local;
assign bucket_3_d0 = bucket_3_d0_local;
assign bucket_3_we0 = bucket_3_we0_local;
assign bucket_4_address0 = bucket_4_address0_local;
assign bucket_4_address1 = bucket_4_address1_local;
assign bucket_4_ce0 = bucket_4_ce0_local;
assign bucket_4_ce1 = bucket_4_ce1_local;
assign bucket_4_d0 = bucket_4_d0_local;
assign bucket_4_we0 = bucket_4_we0_local;
assign bucket_5_address0 = bucket_5_address0_local;
assign bucket_5_address1 = bucket_5_address1_local;
assign bucket_5_ce0 = bucket_5_ce0_local;
assign bucket_5_ce1 = bucket_5_ce1_local;
assign bucket_5_d0 = bucket_5_d0_local;
assign bucket_5_we0 = bucket_5_we0_local;
assign bucket_6_address0 = bucket_6_address0_local;
assign bucket_6_address1 = bucket_6_address1_local;
assign bucket_6_ce0 = bucket_6_ce0_local;
assign bucket_6_ce1 = bucket_6_ce1_local;
assign bucket_6_d0 = bucket_6_d0_local;
assign bucket_6_we0 = bucket_6_we0_local;
assign bucket_7_address0 = bucket_7_address0_local;
assign bucket_7_address1 = bucket_7_address1_local;
assign bucket_7_ce0 = bucket_7_ce0_local;
assign bucket_7_ce1 = bucket_7_ce1_local;
assign bucket_7_d0 = bucket_7_d0_local;
assign bucket_7_we0 = bucket_7_we0_local;
assign bucket_indx_1_fu_903_p2 = (shl_ln57_1_fu_896_p3 + zext_ln57_2_reg_1181);
assign bucket_indx_2_fu_947_p2 = (shl_ln57_2_fu_940_p3 + zext_ln57_2_reg_1181_pp0_iter1_reg);
assign bucket_indx_3_fu_977_p2 = (shl_ln57_3_fu_970_p3 + zext_ln57_2_reg_1181_pp0_iter1_reg);
assign bucket_indx_fu_744_p2 = (shl_ln_fu_737_p3 + zext_ln57_2_fu_734_p1);
assign exp_cast5_fu_628_p1 = exp;
assign grp_fu_572_p2 = (reg_540 + 32'd1);
assign grp_fu_579_p2 = (reg_544 + 32'd1);
assign grp_fu_586_p2 = (reg_548 + 32'd1);
assign grp_fu_593_p2 = (reg_552 + 32'd1);
assign grp_fu_600_p2 = (reg_556 + 32'd1);
assign grp_fu_607_p2 = (reg_560 + 32'd1);
assign grp_fu_614_p2 = (reg_564 + 32'd1);
assign grp_fu_621_p2 = (reg_568 + 32'd1);
assign lshr_ln52_1_fu_882_p3 = {{trunc_ln57_2_reg_1176}, {tmp_s_reg_1145}};
assign lshr_ln52_2_fu_926_p3 = {{trunc_ln57_3_reg_1222_pp0_iter2_reg}, {tmp_s_reg_1145_pp0_iter1_reg}};
assign lshr_ln52_3_fu_992_p3 = {{trunc_ln57_4_reg_1237_pp0_iter2_reg}, {tmp_s_reg_1145_pp0_iter2_reg}};
assign lshr_ln52_4_fu_750_p4 = {{bucket_indx_fu_744_p2[10:3]}};
assign lshr_ln52_5_fu_908_p4 = {{bucket_indx_1_fu_903_p2[10:3]}};
assign lshr_ln52_6_fu_952_p4 = {{bucket_indx_2_fu_947_p2[10:3]}};
assign lshr_ln6_fu_711_p3 = {{trunc_ln57_1_reg_1124}, {tmp_s_fu_702_p4}};
assign lshr_ln_fu_648_p4 = {{ap_sig_allocacmp_blockID_2[8:1]}};
assign shl_ln57_1_fu_896_p3 = {{trunc_ln57_6_reg_1212}, {9'd0}};
assign shl_ln57_2_fu_940_p3 = {{trunc_ln57_7_reg_1232_pp0_iter2_reg}, {9'd0}};
assign shl_ln57_3_fu_970_p3 = {{trunc_ln57_8_reg_1242}, {9'd0}};
assign shl_ln_fu_737_p3 = {{trunc_ln57_5_reg_1134}, {9'd0}};
assign tmp_4_fu_817_p9 = 'bx;
assign tmp_fu_786_p9 = 'bx;
assign tmp_s_fu_702_p4 = {{blockID_2_reg_1032[8:3]}};
assign trunc_ln54_fu_670_p1 = blockID_2_reg_1032[8:0];
assign trunc_ln57_1_fu_681_p1 = ashr_ln57_fu_673_p2[1:0];
assign trunc_ln57_2_fu_730_p1 = ashr_ln57_1_fu_726_p2[1:0];
assign trunc_ln57_3_fu_813_p1 = ashr_ln57_2_fu_809_p2[1:0];
assign trunc_ln57_4_fu_861_p1 = ashr_ln57_3_fu_857_p2[1:0];
assign trunc_ln57_5_fu_695_p1 = ashr_ln57_4_fu_685_p2[1:0];
assign trunc_ln57_6_fu_772_p1 = ashr_ln57_5_fu_768_p2[1:0];
assign trunc_ln57_7_fu_844_p1 = ashr_ln57_6_fu_840_p2[1:0];
assign trunc_ln57_8_fu_878_p1 = ashr_ln57_7_fu_874_p2[1:0];
assign trunc_ln57_fu_699_p1 = blockID_2_reg_1032[2:0];
assign zext_ln52_1_fu_888_p1 = lshr_ln52_1_fu_882_p3;
assign zext_ln52_2_fu_932_p1 = lshr_ln52_2_fu_926_p3;
assign zext_ln52_3_fu_998_p1 = lshr_ln52_3_fu_992_p3;
assign zext_ln52_4_fu_760_p1 = lshr_ln52_4_fu_750_p4;
assign zext_ln52_5_fu_918_p1 = lshr_ln52_5_fu_908_p4;
assign zext_ln52_6_fu_962_p1 = lshr_ln52_6_fu_952_p4;
assign zext_ln52_7_fu_1006_p1 = lshr_ln52_7_reg_1295;
assign zext_ln52_fu_718_p1 = lshr_ln6_fu_711_p3;
assign zext_ln57_1_fu_677_p1 = trunc_ln54_fu_670_p1;
assign zext_ln57_2_fu_734_p1 = add_ln57_reg_1129;
assign zext_ln57_fu_658_p1 = lshr_ln_fu_648_p4;
always @ (posedge ap_clk) begin
    exp_cast5_reg_1020[31:5] <= 27'b000000000000000000000000000;
    zext_ln57_2_reg_1181[10] <= 1'b0;
    zext_ln57_2_reg_1181_pp0_iter1_reg[10] <= 1'b0;
end
endmodule 