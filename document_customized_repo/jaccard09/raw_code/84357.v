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
reg   [0:0] icmp_ln54_reg_975;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_542;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_546;
reg   [31:0] reg_550;
reg   [31:0] reg_554;
reg   [31:0] reg_558;
reg   [31:0] reg_562;
reg   [31:0] reg_566;
reg   [31:0] reg_570;
wire   [31:0] exp_cast5_fu_630_p1;
reg   [31:0] exp_cast5_reg_959;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] blockID_2_reg_967;
wire   [0:0] icmp_ln54_fu_642_p2;
reg   [0:0] icmp_ln54_reg_975_pp0_iter1_reg;
reg   [0:0] icmp_ln54_reg_975_pp0_iter2_reg;
wire   [31:0] select_ln57_fu_673_p3;
reg   [31:0] select_ln57_reg_1019;
wire   [31:0] select_ln57_1_fu_681_p3;
reg   [31:0] select_ln57_1_reg_1024;
wire   [31:0] select_ln57_2_fu_689_p3;
reg   [31:0] select_ln57_2_reg_1029;
wire   [31:0] select_ln57_3_fu_697_p3;
reg   [31:0] select_ln57_3_reg_1034;
wire   [9:0] add_ln54_fu_705_p2;
reg   [9:0] add_ln54_reg_1039;
wire   [2:0] trunc_ln57_fu_717_p1;
reg   [2:0] trunc_ln57_reg_1044;
reg   [2:0] trunc_ln57_reg_1044_pp0_iter1_reg;
reg   [2:0] trunc_ln57_reg_1044_pp0_iter2_reg;
wire   [9:0] add_ln57_fu_724_p2;
reg   [9:0] add_ln57_reg_1049;
wire   [1:0] trunc_ln57_1_fu_730_p1;
reg   [1:0] trunc_ln57_1_reg_1054;
wire   [10:0] zext_ln57_2_fu_734_p1;
reg   [10:0] zext_ln57_2_reg_1059;
reg   [7:0] bucket_0_addr_reg_1066;
reg   [7:0] bucket_1_addr_reg_1072;
reg   [7:0] bucket_2_addr_reg_1078;
reg   [7:0] bucket_3_addr_reg_1084;
reg   [7:0] bucket_4_addr_reg_1090;
reg   [7:0] bucket_5_addr_reg_1096;
reg   [7:0] bucket_6_addr_reg_1102;
reg   [7:0] bucket_7_addr_reg_1108;
wire   [1:0] trunc_ln57_2_fu_776_p1;
reg   [1:0] trunc_ln57_2_reg_1114;
wire   [31:0] tmp_1_fu_784_p19;
reg   [31:0] tmp_1_reg_1119;
wire   [1:0] trunc_ln57_3_fu_827_p1;
reg   [1:0] trunc_ln57_3_reg_1124;
reg   [7:0] lshr_ln52_1_reg_1129;
reg   [7:0] lshr_ln52_2_reg_1134;
reg   [7:0] lshr_ln52_3_reg_1139;
reg   [7:0] lshr_ln52_3_reg_1139_pp0_iter2_reg;
reg   [7:0] bucket_6_addr_130_reg_1144;
reg   [7:0] bucket_5_addr_130_reg_1150;
reg   [7:0] bucket_4_addr_130_reg_1156;
reg   [7:0] bucket_3_addr_130_reg_1162;
reg   [7:0] bucket_2_addr_130_reg_1168;
reg   [7:0] bucket_1_addr_130_reg_1174;
reg   [7:0] bucket_7_addr_161_reg_1180;
reg   [7:0] bucket_0_addr_130_reg_1186;
reg   [7:0] bucket_6_addr_131_reg_1192;
reg   [7:0] bucket_5_addr_131_reg_1198;
reg   [7:0] bucket_4_addr_131_reg_1204;
reg   [7:0] bucket_3_addr_131_reg_1210;
reg   [7:0] bucket_2_addr_131_reg_1216;
reg   [7:0] bucket_1_addr_131_reg_1222;
reg   [7:0] bucket_7_addr_162_reg_1228;
reg   [7:0] bucket_0_addr_131_reg_1234;
reg   [7:0] bucket_6_addr_132_reg_1240;
reg   [7:0] bucket_5_addr_132_reg_1246;
reg   [7:0] bucket_4_addr_132_reg_1252;
reg   [7:0] bucket_3_addr_132_reg_1258;
reg   [7:0] bucket_2_addr_132_reg_1264;
reg   [7:0] bucket_1_addr_132_reg_1270;
reg   [7:0] bucket_7_addr_163_reg_1276;
reg   [7:0] bucket_0_addr_132_reg_1282;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln57_fu_658_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln52_fu_760_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln52_1_fu_919_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln52_2_fu_930_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln52_3_fu_941_p1;
reg   [9:0] blockID_fu_100;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID_2;
reg    b_0_ce0_local;
reg    b_4_ce0_local;
reg    b_1_ce0_local;
reg    b_5_ce0_local;
reg    b_2_ce0_local;
reg    b_6_ce0_local;
reg    b_3_ce0_local;
reg    b_7_ce0_local;
reg    bucket_0_ce1_local;
reg   [7:0] bucket_0_address1_local;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire   [31:0] add_ln58_fu_831_p2;
reg    bucket_0_ce0_local;
reg   [7:0] bucket_0_address0_local;
wire   [31:0] grp_fu_623_p2;
reg    bucket_1_ce1_local;
reg   [7:0] bucket_1_address1_local;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
reg    bucket_1_ce0_local;
reg   [7:0] bucket_1_address0_local;
wire   [31:0] grp_fu_609_p2;
reg    bucket_2_ce1_local;
reg   [7:0] bucket_2_address1_local;
reg    bucket_2_we0_local;
reg   [31:0] bucket_2_d0_local;
reg    bucket_2_ce0_local;
reg   [7:0] bucket_2_address0_local;
wire   [31:0] grp_fu_602_p2;
reg    bucket_3_ce1_local;
reg   [7:0] bucket_3_address1_local;
reg    bucket_3_we0_local;
reg   [31:0] bucket_3_d0_local;
reg    bucket_3_ce0_local;
reg   [7:0] bucket_3_address0_local;
wire   [31:0] grp_fu_595_p2;
reg    bucket_4_ce1_local;
reg   [7:0] bucket_4_address1_local;
reg    bucket_4_we0_local;
reg   [31:0] bucket_4_d0_local;
reg    bucket_4_ce0_local;
reg   [7:0] bucket_4_address0_local;
wire   [31:0] grp_fu_588_p2;
reg    bucket_5_ce1_local;
reg   [7:0] bucket_5_address1_local;
reg    bucket_5_we0_local;
reg   [31:0] bucket_5_d0_local;
reg    bucket_5_ce0_local;
reg   [7:0] bucket_5_address0_local;
wire   [31:0] grp_fu_581_p2;
reg    bucket_6_ce1_local;
reg   [7:0] bucket_6_address1_local;
reg    bucket_6_we0_local;
reg   [31:0] bucket_6_d0_local;
reg    bucket_6_ce0_local;
reg   [7:0] bucket_6_address0_local;
wire   [31:0] grp_fu_574_p2;
reg    bucket_7_ce1_local;
reg   [7:0] bucket_7_address1_local;
reg    bucket_7_we0_local;
reg   [31:0] bucket_7_d0_local;
reg    bucket_7_ce0_local;
reg   [7:0] bucket_7_address0_local;
wire   [31:0] grp_fu_616_p2;
wire   [7:0] lshr_ln_fu_648_p4;
wire   [0:0] trunc_ln54_fu_670_p1;
wire   [8:0] trunc_ln54_1_fu_710_p1;
wire   [9:0] zext_ln57_1_fu_720_p1;
wire   [31:0] ashr_ln57_fu_713_p2;
wire   [10:0] shl_ln_fu_737_p3;
wire   [10:0] bucket_indx_fu_744_p2;
wire   [7:0] lshr_ln5_fu_750_p4;
wire   [31:0] ashr_ln57_1_fu_772_p2;
wire   [31:0] tmp_1_fu_784_p17;
wire   [31:0] ashr_ln57_2_fu_823_p2;
wire   [10:0] shl_ln57_1_fu_844_p3;
wire   [10:0] bucket_indx_1_fu_851_p2;
wire   [10:0] shl_ln57_2_fu_866_p3;
wire   [10:0] bucket_indx_2_fu_873_p2;
wire   [31:0] ashr_ln57_3_fu_888_p2;
wire   [1:0] trunc_ln57_4_fu_892_p1;
wire   [10:0] shl_ln57_3_fu_896_p3;
wire   [10:0] bucket_indx_3_fu_904_p2;
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
wire  signed [2:0] tmp_1_fu_784_p1;
wire   [2:0] tmp_1_fu_784_p3;
wire   [2:0] tmp_1_fu_784_p5;
wire   [2:0] tmp_1_fu_784_p7;
wire   [2:0] tmp_1_fu_784_p9;
wire  signed [2:0] tmp_1_fu_784_p11;
wire  signed [2:0] tmp_1_fu_784_p13;
wire  signed [2:0] tmp_1_fu_784_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 blockID_fu_100 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U9(.din0(bucket_0_q1),.din1(bucket_1_q1),.din2(bucket_2_q1),.din3(bucket_3_q1),.din4(bucket_4_q1),.din5(bucket_5_q1),.din6(bucket_6_q1),.din7(bucket_7_q1),.def(tmp_1_fu_784_p17),.sel(trunc_ln57_reg_1044),.dout(tmp_1_fu_784_p19));
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
        blockID_fu_100 <= 10'd0;
    end else if (((icmp_ln54_reg_975 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        blockID_fu_100 <= add_ln54_reg_1039;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln54_reg_1039 <= add_ln54_fu_705_p2;
        add_ln57_reg_1049 <= add_ln57_fu_724_p2;
        bucket_0_addr_130_reg_1186 <= zext_ln52_1_fu_919_p1;
        bucket_1_addr_130_reg_1174 <= zext_ln52_1_fu_919_p1;
        bucket_2_addr_130_reg_1168 <= zext_ln52_1_fu_919_p1;
        bucket_3_addr_130_reg_1162 <= zext_ln52_1_fu_919_p1;
        bucket_4_addr_130_reg_1156 <= zext_ln52_1_fu_919_p1;
        bucket_5_addr_130_reg_1150 <= zext_ln52_1_fu_919_p1;
        bucket_6_addr_130_reg_1144 <= zext_ln52_1_fu_919_p1;
        bucket_7_addr_161_reg_1180 <= zext_ln52_1_fu_919_p1;
        trunc_ln57_1_reg_1054 <= trunc_ln57_1_fu_730_p1;
        trunc_ln57_reg_1044 <= trunc_ln57_fu_717_p1;
        trunc_ln57_reg_1044_pp0_iter1_reg <= trunc_ln57_reg_1044;
        trunc_ln57_reg_1044_pp0_iter2_reg <= trunc_ln57_reg_1044_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_2_reg_967 <= ap_sig_allocacmp_blockID_2;
        bucket_0_addr_132_reg_1282 <= zext_ln52_3_fu_941_p1;
        bucket_1_addr_132_reg_1270 <= zext_ln52_3_fu_941_p1;
        bucket_2_addr_132_reg_1264 <= zext_ln52_3_fu_941_p1;
        bucket_3_addr_132_reg_1258 <= zext_ln52_3_fu_941_p1;
        bucket_4_addr_132_reg_1252 <= zext_ln52_3_fu_941_p1;
        bucket_5_addr_132_reg_1246 <= zext_ln52_3_fu_941_p1;
        bucket_6_addr_132_reg_1240 <= zext_ln52_3_fu_941_p1;
        bucket_7_addr_163_reg_1276 <= zext_ln52_3_fu_941_p1;
        exp_cast5_reg_959[4 : 0] <= exp_cast5_fu_630_p1[4 : 0];
        icmp_ln54_reg_975 <= icmp_ln54_fu_642_p2;
        icmp_ln54_reg_975_pp0_iter1_reg <= icmp_ln54_reg_975;
        icmp_ln54_reg_975_pp0_iter2_reg <= icmp_ln54_reg_975_pp0_iter1_reg;
        tmp_1_reg_1119 <= tmp_1_fu_784_p19;
        trunc_ln57_3_reg_1124 <= trunc_ln57_3_fu_827_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_addr_131_reg_1234 <= zext_ln52_2_fu_930_p1;
        bucket_1_addr_131_reg_1222 <= zext_ln52_2_fu_930_p1;
        bucket_2_addr_131_reg_1216 <= zext_ln52_2_fu_930_p1;
        bucket_3_addr_131_reg_1210 <= zext_ln52_2_fu_930_p1;
        bucket_4_addr_131_reg_1204 <= zext_ln52_2_fu_930_p1;
        bucket_5_addr_131_reg_1198 <= zext_ln52_2_fu_930_p1;
        bucket_6_addr_131_reg_1192 <= zext_ln52_2_fu_930_p1;
        bucket_7_addr_162_reg_1228 <= zext_ln52_2_fu_930_p1;
        lshr_ln52_1_reg_1129 <= {{bucket_indx_1_fu_851_p2[10:3]}};
        lshr_ln52_2_reg_1134 <= {{bucket_indx_2_fu_873_p2[10:3]}};
        lshr_ln52_3_reg_1139 <= {{bucket_indx_3_fu_904_p2[10:3]}};
        lshr_ln52_3_reg_1139_pp0_iter2_reg <= lshr_ln52_3_reg_1139;
        select_ln57_1_reg_1024 <= select_ln57_1_fu_681_p3;
        select_ln57_2_reg_1029 <= select_ln57_2_fu_689_p3;
        select_ln57_3_reg_1034 <= select_ln57_3_fu_697_p3;
        select_ln57_reg_1019 <= select_ln57_fu_673_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_addr_reg_1066 <= zext_ln52_fu_760_p1;
        bucket_1_addr_reg_1072 <= zext_ln52_fu_760_p1;
        bucket_2_addr_reg_1078 <= zext_ln52_fu_760_p1;
        bucket_3_addr_reg_1084 <= zext_ln52_fu_760_p1;
        bucket_4_addr_reg_1090 <= zext_ln52_fu_760_p1;
        bucket_5_addr_reg_1096 <= zext_ln52_fu_760_p1;
        bucket_6_addr_reg_1102 <= zext_ln52_fu_760_p1;
        bucket_7_addr_reg_1108 <= zext_ln52_fu_760_p1;
        trunc_ln57_2_reg_1114 <= trunc_ln57_2_fu_776_p1;
        zext_ln57_2_reg_1059[9 : 0] <= zext_ln57_2_fu_734_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_542 <= bucket_6_q1;
        reg_546 <= bucket_5_q1;
        reg_550 <= bucket_4_q1;
        reg_554 <= bucket_3_q1;
        reg_558 <= bucket_2_q1;
        reg_562 <= bucket_1_q1;
        reg_566 <= bucket_7_q1;
        reg_570 <= bucket_0_q1;
    end
end
always @ (*) begin
    if (((icmp_ln54_reg_975 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln54_reg_975_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        ap_sig_allocacmp_blockID_2 = blockID_fu_100;
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
        bucket_0_address0_local = bucket_0_addr_132_reg_1282;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = bucket_0_addr_131_reg_1234;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = bucket_0_addr_130_reg_1186;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address0_local = bucket_0_addr_reg_1066;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address1_local = zext_ln52_3_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address1_local = zext_ln52_2_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_address1_local = zext_ln52_1_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address1_local = zext_ln52_fu_760_p1;
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
        bucket_0_d0_local = grp_fu_623_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_d0_local = add_ln58_fu_831_p2;
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1044 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address0_local = bucket_1_addr_132_reg_1270;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address0_local = bucket_1_addr_131_reg_1222;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = bucket_1_addr_130_reg_1174;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address0_local = bucket_1_addr_reg_1072;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address1_local = zext_ln52_3_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address1_local = zext_ln52_2_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address1_local = zext_ln52_1_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address1_local = zext_ln52_fu_760_p1;
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
        bucket_1_d0_local = grp_fu_609_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_d0_local = add_ln58_fu_831_p2;
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1044 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_2_address0_local = bucket_2_addr_132_reg_1264;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address0_local = bucket_2_addr_131_reg_1216;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address0_local = bucket_2_addr_130_reg_1168;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_address0_local = bucket_2_addr_reg_1078;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address1_local = zext_ln52_3_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_address1_local = zext_ln52_2_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_2_address1_local = zext_ln52_1_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address1_local = zext_ln52_fu_760_p1;
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
        bucket_2_d0_local = grp_fu_602_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_d0_local = add_ln58_fu_831_p2;
    end else begin
        bucket_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1044 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_3_address0_local = bucket_3_addr_132_reg_1258;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_3_address0_local = bucket_3_addr_131_reg_1210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address0_local = bucket_3_addr_130_reg_1162;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_address0_local = bucket_3_addr_reg_1084;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address1_local = zext_ln52_3_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_address1_local = zext_ln52_2_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_3_address1_local = zext_ln52_1_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_3_address1_local = zext_ln52_fu_760_p1;
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
        bucket_3_d0_local = grp_fu_595_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_d0_local = add_ln58_fu_831_p2;
    end else begin
        bucket_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1044 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_4_address0_local = bucket_4_addr_132_reg_1252;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_4_address0_local = bucket_4_addr_131_reg_1204;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_4_address0_local = bucket_4_addr_130_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_4_address0_local = bucket_4_addr_reg_1090;
    end else begin
        bucket_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_4_address1_local = zext_ln52_3_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_4_address1_local = zext_ln52_2_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_4_address1_local = zext_ln52_1_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_4_address1_local = zext_ln52_fu_760_p1;
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
        bucket_4_d0_local = grp_fu_588_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_4_d0_local = add_ln58_fu_831_p2;
    end else begin
        bucket_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1044 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_4_we0_local = 1'b1;
    end else begin
        bucket_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_5_address0_local = bucket_5_addr_132_reg_1246;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_5_address0_local = bucket_5_addr_131_reg_1198;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_5_address0_local = bucket_5_addr_130_reg_1150;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_5_address0_local = bucket_5_addr_reg_1096;
    end else begin
        bucket_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_5_address1_local = zext_ln52_3_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_5_address1_local = zext_ln52_2_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_5_address1_local = zext_ln52_1_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_5_address1_local = zext_ln52_fu_760_p1;
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
        bucket_5_d0_local = grp_fu_581_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_5_d0_local = add_ln58_fu_831_p2;
    end else begin
        bucket_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1044 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_5_we0_local = 1'b1;
    end else begin
        bucket_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_6_address0_local = bucket_6_addr_132_reg_1240;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_6_address0_local = bucket_6_addr_131_reg_1192;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_6_address0_local = bucket_6_addr_130_reg_1144;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_6_address0_local = bucket_6_addr_reg_1102;
    end else begin
        bucket_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_6_address1_local = zext_ln52_3_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_6_address1_local = zext_ln52_2_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_6_address1_local = zext_ln52_1_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_6_address1_local = zext_ln52_fu_760_p1;
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
        bucket_6_d0_local = grp_fu_574_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_6_d0_local = add_ln58_fu_831_p2;
    end else begin
        bucket_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1044 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_6_we0_local = 1'b1;
    end else begin
        bucket_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_7_address0_local = bucket_7_addr_163_reg_1276;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_7_address0_local = bucket_7_addr_162_reg_1228;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_7_address0_local = bucket_7_addr_161_reg_1180;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_7_address0_local = bucket_7_addr_reg_1108;
    end else begin
        bucket_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_7_address1_local = zext_ln52_3_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_7_address1_local = zext_ln52_2_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_7_address1_local = zext_ln52_1_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_7_address1_local = zext_ln52_fu_760_p1;
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
        bucket_7_d0_local = grp_fu_616_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_7_d0_local = add_ln58_fu_831_p2;
    end else begin
        bucket_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln57_reg_1044 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_reg_1044_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
assign add_ln54_fu_705_p2 = (blockID_2_reg_967 + 10'd1);
assign add_ln57_fu_724_p2 = (zext_ln57_1_fu_720_p1 + 10'd1);
assign add_ln58_fu_831_p2 = (tmp_1_reg_1119 + 32'd1);
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
assign ashr_ln57_1_fu_772_p2 = $signed(select_ln57_1_reg_1024) >>> exp_cast5_reg_959;
assign ashr_ln57_2_fu_823_p2 = $signed(select_ln57_2_reg_1029) >>> exp_cast5_reg_959;
assign ashr_ln57_3_fu_888_p2 = $signed(select_ln57_3_reg_1034) >>> exp_cast5_reg_959;
assign ashr_ln57_fu_713_p2 = $signed(select_ln57_reg_1019) >>> exp_cast5_reg_959;
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
assign bucket_indx_1_fu_851_p2 = (shl_ln57_1_fu_844_p3 + zext_ln57_2_reg_1059);
assign bucket_indx_2_fu_873_p2 = (shl_ln57_2_fu_866_p3 + zext_ln57_2_reg_1059);
assign bucket_indx_3_fu_904_p2 = (shl_ln57_3_fu_896_p3 + zext_ln57_2_reg_1059);
assign bucket_indx_fu_744_p2 = (shl_ln_fu_737_p3 + zext_ln57_2_fu_734_p1);
assign exp_cast5_fu_630_p1 = exp;
assign grp_fu_574_p2 = (reg_542 + 32'd1);
assign grp_fu_581_p2 = (reg_546 + 32'd1);
assign grp_fu_588_p2 = (reg_550 + 32'd1);
assign grp_fu_595_p2 = (reg_554 + 32'd1);
assign grp_fu_602_p2 = (reg_558 + 32'd1);
assign grp_fu_609_p2 = (reg_562 + 32'd1);
assign grp_fu_616_p2 = (reg_566 + 32'd1);
assign grp_fu_623_p2 = (reg_570 + 32'd1);
assign icmp_ln54_fu_642_p2 = ((ap_sig_allocacmp_blockID_2 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_750_p4 = {{bucket_indx_fu_744_p2[10:3]}};
assign lshr_ln_fu_648_p4 = {{ap_sig_allocacmp_blockID_2[8:1]}};
assign select_ln57_1_fu_681_p3 = ((trunc_ln54_fu_670_p1[0:0] == 1'b1) ? b_5_q0 : b_1_q0);
assign select_ln57_2_fu_689_p3 = ((trunc_ln54_fu_670_p1[0:0] == 1'b1) ? b_6_q0 : b_2_q0);
assign select_ln57_3_fu_697_p3 = ((trunc_ln54_fu_670_p1[0:0] == 1'b1) ? b_7_q0 : b_3_q0);
assign select_ln57_fu_673_p3 = ((trunc_ln54_fu_670_p1[0:0] == 1'b1) ? b_4_q0 : b_0_q0);
assign shl_ln57_1_fu_844_p3 = {{trunc_ln57_2_reg_1114}, {9'd0}};
assign shl_ln57_2_fu_866_p3 = {{trunc_ln57_3_reg_1124}, {9'd0}};
assign shl_ln57_3_fu_896_p3 = {{trunc_ln57_4_fu_892_p1}, {9'd0}};
assign shl_ln_fu_737_p3 = {{trunc_ln57_1_reg_1054}, {9'd0}};
assign tmp_1_fu_784_p17 = 'bx;
assign trunc_ln54_1_fu_710_p1 = blockID_2_reg_967[8:0];
assign trunc_ln54_fu_670_p1 = blockID_2_reg_967[0:0];
assign trunc_ln57_1_fu_730_p1 = ashr_ln57_fu_713_p2[1:0];
assign trunc_ln57_2_fu_776_p1 = ashr_ln57_1_fu_772_p2[1:0];
assign trunc_ln57_3_fu_827_p1 = ashr_ln57_2_fu_823_p2[1:0];
assign trunc_ln57_4_fu_892_p1 = ashr_ln57_3_fu_888_p2[1:0];
assign trunc_ln57_fu_717_p1 = blockID_2_reg_967[2:0];
assign zext_ln52_1_fu_919_p1 = lshr_ln52_1_reg_1129;
assign zext_ln52_2_fu_930_p1 = lshr_ln52_2_reg_1134;
assign zext_ln52_3_fu_941_p1 = lshr_ln52_3_reg_1139_pp0_iter2_reg;
assign zext_ln52_fu_760_p1 = lshr_ln5_fu_750_p4;
assign zext_ln57_1_fu_720_p1 = trunc_ln54_1_fu_710_p1;
assign zext_ln57_2_fu_734_p1 = add_ln57_reg_1049;
assign zext_ln57_fu_658_p1 = lshr_ln_fu_648_p4;
always @ (posedge ap_clk) begin
    exp_cast5_reg_959[31:5] <= 27'b000000000000000000000000000;
    zext_ln57_2_reg_1059[10] <= 1'b0;
end
endmodule 