
module ss_sort_update (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,b_0_address0,b_0_ce0,b_0_q0,b_0_address1,b_0_ce1,b_0_q1,b_1_address0,b_1_ce0,b_1_q0,b_1_address1,b_1_ce1,b_1_q1,exp);  
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
output  [9:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
output  [9:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
output  [9:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [9:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [9:0] b_0_address0;
output   b_0_ce0;
input  [31:0] b_0_q0;
output  [9:0] b_0_address1;
output   b_0_ce1;
input  [31:0] b_0_q1;
output  [9:0] b_1_address0;
output   b_1_ce0;
input  [31:0] b_1_q0;
output  [9:0] b_1_address1;
output   b_1_ce1;
input  [31:0] b_1_q1;
input  [4:0] exp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_reg_856;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [9:0] reg_400;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_404;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_408;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] exp_cast12_fu_426_p1;
reg   [31:0] exp_cast12_reg_837;
reg   [9:0] blockID_1_reg_849;
wire   [7:0] tmp_5_fu_458_p4;
reg   [7:0] tmp_5_reg_870;
reg   [7:0] tmp_5_reg_870_pp0_iter1_reg;
reg   [31:0] b_0_load_reg_889;
reg   [31:0] b_1_load_reg_896;
reg   [31:0] b_0_load_2_reg_913;
reg   [31:0] b_0_load_2_reg_913_pp0_iter1_reg;
reg   [31:0] b_1_load_2_reg_920;
reg   [31:0] b_1_load_2_reg_920_pp0_iter1_reg;
wire   [1:0] trunc_ln70_1_fu_516_p1;
reg   [1:0] trunc_ln70_1_reg_937;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] b_0_load_1_reg_942;
reg   [31:0] b_1_load_1_reg_949;
reg   [31:0] b_0_load_3_reg_956;
reg   [31:0] b_0_load_3_reg_956_pp0_iter1_reg;
reg   [31:0] b_1_load_3_reg_963;
reg   [31:0] b_1_load_3_reg_963_pp0_iter1_reg;
wire   [10:0] zext_ln68_fu_520_p1;
reg   [10:0] zext_ln68_reg_970;
reg   [9:0] bucket_0_addr_reg_977;
wire   [1:0] trunc_ln70_2_fu_555_p1;
reg   [1:0] trunc_ln70_2_reg_982;
wire   [0:0] trunc_ln72_fu_559_p1;
reg   [0:0] trunc_ln72_reg_987;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [9:0] grp_fu_380_p4;
reg   [9:0] lshr_ln72_1_reg_991;
wire   [31:0] add_ln73_fu_563_p2;
reg   [31:0] add_ln73_reg_996;
wire   [1:0] trunc_ln70_5_fu_573_p1;
reg   [1:0] trunc_ln70_5_reg_1001;
wire   [1:0] trunc_ln70_3_fu_581_p1;
reg   [1:0] trunc_ln70_3_reg_1006;
wire    ap_block_pp0_stage5_11001;
reg   [9:0] bucket_1_addr_reg_1011;
reg   [9:0] bucket_0_addr_1_reg_1016;
wire   [0:0] trunc_ln72_4_fu_628_p1;
reg   [0:0] trunc_ln72_4_reg_1021;
wire   [31:0] add_ln73_4_fu_632_p2;
reg   [31:0] add_ln73_4_reg_1025;
wire   [1:0] trunc_ln70_6_fu_642_p1;
reg   [1:0] trunc_ln70_6_reg_1030;
wire   [1:0] trunc_ln70_4_fu_660_p1;
reg   [1:0] trunc_ln70_4_reg_1038;
reg   [9:0] bucket_1_addr_1_reg_1043;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [1:0] trunc_ln70_7_fu_679_p1;
reg   [1:0] trunc_ln70_7_reg_1048;
reg   [9:0] bucket_0_addr_2_reg_1053;
reg   [9:0] lshr_ln72_6_reg_1058;
wire   [0:0] trunc_ln72_5_fu_732_p1;
reg   [0:0] trunc_ln72_5_reg_1063;
reg   [9:0] lshr_ln72_10_reg_1067;
wire   [1:0] trunc_ln70_8_fu_740_p1;
reg   [1:0] trunc_ln70_8_reg_1072;
reg   [9:0] bucket_1_addr_2_reg_1080;
wire    ap_block_pp0_stage11_11001;
reg   [9:0] bucket_0_addr_3_reg_1085;
wire   [0:0] trunc_ln72_6_fu_779_p1;
reg   [0:0] trunc_ln72_6_reg_1090;
reg   [9:0] lshr_ln72_12_reg_1094;
reg   [9:0] bucket_1_addr_3_reg_1102;
wire   [0:0] trunc_ln72_7_fu_815_p1;
reg   [0:0] trunc_ln72_7_reg_1107;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln70_fu_452_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_2_fu_476_p1;
wire   [63:0] zext_ln70_1_fu_493_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln70_3_fu_506_p1;
wire   [63:0] zext_ln72_8_fu_546_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln72_12_fu_591_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln72_fu_596_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln72_9_fu_623_p1;
wire   [63:0] zext_ln72_1_fu_650_p1;
wire    ap_block_pp0_stage7;
wire   [0:0] trunc_ln72_1_fu_646_p1;
wire   [63:0] zext_ln72_13_fu_670_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln72_10_fu_705_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln72_2_fu_748_p1;
wire    ap_block_pp0_stage10;
wire   [0:0] trunc_ln72_2_fu_744_p1;
wire   [63:0] zext_ln72_14_fu_760_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln72_11_fu_775_p1;
wire   [63:0] zext_ln72_3_fu_787_p1;
wire   [0:0] trunc_ln72_3_fu_783_p1;
wire   [63:0] zext_ln72_4_fu_793_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln72_15_fu_805_p1;
wire   [63:0] zext_ln72_5_fu_810_p1;
wire   [63:0] zext_ln72_6_fu_819_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln72_7_fu_824_p1;
reg   [9:0] blockID_fu_76;
wire   [9:0] add_ln68_fu_765_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID_1;
reg    b_0_ce1_local;
reg   [9:0] b_0_address1_local;
reg    b_0_ce0_local;
reg   [9:0] b_0_address0_local;
reg    b_1_ce1_local;
reg   [9:0] b_1_address1_local;
reg    b_1_ce0_local;
reg   [9:0] b_1_address0_local;
reg    bucket_0_ce0_local;
reg   [9:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire   [31:0] grp_fu_412_p2;
reg    bucket_1_ce0_local;
reg   [9:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
wire   [31:0] grp_fu_419_p2;
reg    a_0_we0_local;
reg   [31:0] a_0_d0_local;
reg    a_0_ce0_local;
reg   [9:0] a_0_address0_local;
reg    a_1_we0_local;
reg   [31:0] a_1_d0_local;
reg    a_1_ce0_local;
reg   [9:0] a_1_address0_local;
wire   [9:0] shl_ln70_fu_446_p2;
wire   [9:0] shl_ln70_5_fu_468_p3;
wire   [8:0] trunc_ln70_fu_482_p1;
wire   [9:0] or_ln_fu_485_p3;
wire   [9:0] or_ln70_1_fu_499_p3;
wire   [31:0] ashr_ln70_fu_512_p2;
wire   [10:0] shl_ln70_1_fu_523_p3;
wire   [10:0] add_ln70_fu_530_p2;
wire   [9:0] lshr_ln_fu_536_p4;
wire   [31:0] ashr_ln70_1_fu_551_p2;
wire   [31:0] ashr_ln70_4_fu_569_p2;
wire   [31:0] ashr_ln70_2_fu_577_p2;
wire   [9:0] lshr_ln72_8_fu_585_p3;
wire   [10:0] shl_ln70_2_fu_601_p3;
wire   [10:0] add_ln70_1_fu_608_p2;
wire   [9:0] lshr_ln72_2_fu_613_p4;
wire   [31:0] ashr_ln70_5_fu_638_p2;
wire   [31:0] ashr_ln70_3_fu_656_p2;
wire   [9:0] lshr_ln72_s_fu_664_p3;
wire   [31:0] ashr_ln70_6_fu_675_p2;
wire   [10:0] shl_ln70_3_fu_683_p3;
wire   [10:0] add_ln70_2_fu_690_p2;
wire   [9:0] lshr_ln72_4_fu_695_p4;
wire   [10:0] shl_ln70_4_fu_710_p3;
wire   [10:0] add_ln70_3_fu_717_p2;
wire   [31:0] ashr_ln70_7_fu_736_p2;
wire   [9:0] lshr_ln72_11_fu_754_p3;
wire   [9:0] lshr_ln72_13_fu_799_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
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
#0 blockID_fu_76 = 10'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_fu_76 <= 10'd0;
    end else if (((tmp_reg_856 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        blockID_fu_76 <= add_ln68_fu_765_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln73_4_reg_1025 <= add_ln73_4_fu_632_p2;
        bucket_0_addr_1_reg_1016 <= zext_ln72_9_fu_623_p1;
        trunc_ln70_6_reg_1030 <= trunc_ln70_6_fu_642_p1;
        trunc_ln72_4_reg_1021 <= trunc_ln72_4_fu_628_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln73_reg_996 <= add_ln73_fu_563_p2;
        trunc_ln70_5_reg_1001 <= trunc_ln70_5_fu_573_p1;
        trunc_ln72_reg_987 <= trunc_ln72_fu_559_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_0_load_1_reg_942 <= b_0_q1;
        b_0_load_3_reg_956 <= b_0_q0;
        b_1_load_1_reg_949 <= b_1_q1;
        b_1_load_3_reg_963 <= b_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_load_2_reg_913 <= b_0_q0;
        b_0_load_reg_889 <= b_0_q1;
        b_1_load_2_reg_920 <= b_1_q0;
        b_1_load_reg_896 <= b_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_load_2_reg_913_pp0_iter1_reg <= b_0_load_2_reg_913;
        b_1_load_2_reg_920_pp0_iter1_reg <= b_1_load_2_reg_920;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_0_load_3_reg_956_pp0_iter1_reg <= b_0_load_3_reg_956;
        b_1_load_3_reg_963_pp0_iter1_reg <= b_1_load_3_reg_963;
        bucket_1_addr_3_reg_1102 <= zext_ln72_15_fu_805_p1;
        trunc_ln70_1_reg_937 <= trunc_ln70_1_fu_516_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_1_reg_849 <= ap_sig_allocacmp_blockID_1;
        bucket_0_addr_3_reg_1085 <= zext_ln72_11_fu_775_p1;
        exp_cast12_reg_837[4 : 0] <= exp_cast12_fu_426_p1[4 : 0];
        tmp_5_reg_870 <= {{ap_sig_allocacmp_blockID_1[8:1]}};
        tmp_5_reg_870_pp0_iter1_reg <= tmp_5_reg_870;
        tmp_reg_856 <= ap_sig_allocacmp_blockID_1[32'd9];
        trunc_ln72_6_reg_1090 <= trunc_ln72_6_fu_779_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_0_addr_2_reg_1053 <= zext_ln72_10_fu_705_p1;
        lshr_ln72_6_reg_1058 <= {{add_ln70_3_fu_717_p2[10:1]}};
        trunc_ln70_8_reg_1072 <= trunc_ln70_8_fu_740_p1;
        trunc_ln72_5_reg_1063 <= trunc_ln72_5_fu_732_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_addr_reg_977 <= zext_ln72_8_fu_546_p1;
        trunc_ln70_2_reg_982 <= trunc_ln70_2_fu_555_p1;
        trunc_ln72_7_reg_1107 <= trunc_ln72_7_fu_815_p1;
        zext_ln68_reg_970[9 : 0] <= zext_ln68_fu_520_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_1_addr_1_reg_1043 <= zext_ln72_13_fu_670_p1;
        trunc_ln70_7_reg_1048 <= trunc_ln70_7_fu_679_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_1_addr_2_reg_1080 <= zext_ln72_14_fu_760_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_addr_reg_1011 <= zext_ln72_12_fu_591_p1;
        trunc_ln70_3_reg_1006 <= trunc_ln70_3_fu_581_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln72_10_reg_1067 <= {{bucket_1_q0[10:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln72_12_reg_1094 <= {{bucket_1_q0[10:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln72_1_reg_991 <= {{bucket_0_q0[10:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_400 <= {{bucket_1_q0[10:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_404 <= bucket_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_408 <= bucket_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        trunc_ln70_4_reg_1038 <= trunc_ln70_4_fu_660_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_0_address0_local = zext_ln72_7_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_0_address0_local = zext_ln72_6_fu_819_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_0_address0_local = zext_ln72_5_fu_810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_0_address0_local = zext_ln72_4_fu_793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_0_address0_local = zext_ln72_3_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        a_0_address0_local = zext_ln72_2_fu_748_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_0_address0_local = zext_ln72_1_fu_650_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_0_address0_local = zext_ln72_fu_596_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_0_d0_local = b_1_load_3_reg_963_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_0_d0_local = b_0_load_3_reg_956_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_0_d0_local = b_1_load_2_reg_920_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_0_d0_local = b_0_load_2_reg_913_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_0_d0_local = b_1_load_1_reg_949;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        a_0_d0_local = b_0_load_1_reg_942;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_0_d0_local = b_1_load_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_0_d0_local = b_0_load_reg_889;
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_856 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln72_2_fu_744_p1 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_856 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln72_1_fu_646_p1 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_856 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_reg_987 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln72_7_reg_1107 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_6_reg_1090 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_4_reg_1021 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln72_3_fu_783_p1 == 1'd0) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_5_reg_1063 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_1_address0_local = zext_ln72_7_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_1_address0_local = zext_ln72_6_fu_819_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_1_address0_local = zext_ln72_5_fu_810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_1_address0_local = zext_ln72_4_fu_793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_1_address0_local = zext_ln72_3_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        a_1_address0_local = zext_ln72_2_fu_748_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_1_address0_local = zext_ln72_1_fu_650_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_1_address0_local = zext_ln72_fu_596_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_1_d0_local = b_1_load_3_reg_963_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_1_d0_local = b_0_load_3_reg_956_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_1_d0_local = b_1_load_2_reg_920_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_1_d0_local = b_0_load_2_reg_913_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_1_d0_local = b_1_load_1_reg_949;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        a_1_d0_local = b_0_load_1_reg_942;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_1_d0_local = b_1_load_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_1_d0_local = b_0_load_reg_889;
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_856 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (trunc_ln72_2_fu_744_p1 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_856 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (trunc_ln72_1_fu_646_p1 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_856 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_reg_987 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln72_7_reg_1107 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_6_reg_1090 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_4_reg_1021 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln72_3_fu_783_p1 == 1'd1) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_5_reg_1063 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_856 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_blockID_1 = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_1 = blockID_fu_76;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_0_address0_local = zext_ln70_3_fu_506_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_0_address0_local = zext_ln70_2_fu_476_p1;
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
            b_0_address1_local = zext_ln70_1_fu_493_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_0_address1_local = zext_ln70_fu_452_p1;
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
            b_1_address0_local = zext_ln70_3_fu_506_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_1_address0_local = zext_ln70_2_fu_476_p1;
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
            b_1_address1_local = zext_ln70_1_fu_493_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_1_address1_local = zext_ln70_fu_452_p1;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_address0_local = bucket_0_addr_3_reg_1085;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = zext_ln72_11_fu_775_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_0_address0_local = bucket_0_addr_2_reg_1053;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_0_address0_local = zext_ln72_10_fu_705_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_0_address0_local = bucket_0_addr_1_reg_1016;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_0_address0_local = zext_ln72_9_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_0_address0_local = bucket_0_addr_reg_977;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = zext_ln72_8_fu_546_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        bucket_0_d0_local = grp_fu_412_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_0_d0_local = add_ln73_reg_996;
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_856 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_856 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_856 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_1_address0_local = bucket_1_addr_3_reg_1102;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address0_local = zext_ln72_15_fu_805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address0_local = bucket_1_addr_2_reg_1080;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_1_address0_local = zext_ln72_14_fu_760_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_1_address0_local = bucket_1_addr_1_reg_1043;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_1_address0_local = zext_ln72_13_fu_670_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_1_address0_local = bucket_1_addr_reg_1011;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_address0_local = zext_ln72_12_fu_591_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bucket_1_d0_local = grp_fu_419_p2;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_1_d0_local = add_ln73_4_reg_1025;
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_856 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_856 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
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
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign add_ln68_fu_765_p2 = (blockID_1_reg_849 + 10'd2);
assign add_ln70_1_fu_608_p2 = (zext_ln68_reg_970 + shl_ln70_2_fu_601_p3);
assign add_ln70_2_fu_690_p2 = (zext_ln68_reg_970 + shl_ln70_3_fu_683_p3);
assign add_ln70_3_fu_717_p2 = (zext_ln68_reg_970 + shl_ln70_4_fu_710_p3);
assign add_ln70_fu_530_p2 = (zext_ln68_fu_520_p1 + shl_ln70_1_fu_523_p3);
assign add_ln73_4_fu_632_p2 = (bucket_1_q0 + 32'd1);
assign add_ln73_fu_563_p2 = (bucket_0_q0 + 32'd1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign ashr_ln70_1_fu_551_p2 = $signed(b_1_load_reg_896) >>> exp_cast12_reg_837;
assign ashr_ln70_2_fu_577_p2 = $signed(b_0_load_1_reg_942) >>> exp_cast12_reg_837;
assign ashr_ln70_3_fu_656_p2 = $signed(b_1_load_1_reg_949) >>> exp_cast12_reg_837;
assign ashr_ln70_4_fu_569_p2 = $signed(b_0_load_2_reg_913) >>> exp_cast12_reg_837;
assign ashr_ln70_5_fu_638_p2 = $signed(b_1_load_2_reg_920) >>> exp_cast12_reg_837;
assign ashr_ln70_6_fu_675_p2 = $signed(b_0_load_3_reg_956) >>> exp_cast12_reg_837;
assign ashr_ln70_7_fu_736_p2 = $signed(b_1_load_3_reg_963) >>> exp_cast12_reg_837;
assign ashr_ln70_fu_512_p2 = $signed(b_0_load_reg_889) >>> exp_cast12_reg_837;
assign b_0_address0 = b_0_address0_local;
assign b_0_address1 = b_0_address1_local;
assign b_0_ce0 = b_0_ce0_local;
assign b_0_ce1 = b_0_ce1_local;
assign b_1_address0 = b_1_address0_local;
assign b_1_address1 = b_1_address1_local;
assign b_1_ce0 = b_1_ce0_local;
assign b_1_ce1 = b_1_ce1_local;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_d0 = bucket_0_d0_local;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_d0 = bucket_1_d0_local;
assign bucket_1_we0 = bucket_1_we0_local;
assign exp_cast12_fu_426_p1 = exp;
assign grp_fu_380_p4 = {{bucket_0_q0[10:1]}};
assign grp_fu_412_p2 = (reg_404 + 32'd1);
assign grp_fu_419_p2 = (reg_408 + 32'd1);
assign lshr_ln72_11_fu_754_p3 = {{trunc_ln70_7_reg_1048}, {tmp_5_reg_870}};
assign lshr_ln72_13_fu_799_p3 = {{trunc_ln70_8_reg_1072}, {tmp_5_reg_870_pp0_iter1_reg}};
assign lshr_ln72_2_fu_613_p4 = {{add_ln70_1_fu_608_p2[10:1]}};
assign lshr_ln72_4_fu_695_p4 = {{add_ln70_2_fu_690_p2[10:1]}};
assign lshr_ln72_8_fu_585_p3 = {{trunc_ln70_5_reg_1001}, {tmp_5_reg_870}};
assign lshr_ln72_s_fu_664_p3 = {{trunc_ln70_6_reg_1030}, {tmp_5_reg_870}};
assign lshr_ln_fu_536_p4 = {{add_ln70_fu_530_p2[10:1]}};
assign or_ln70_1_fu_499_p3 = {{tmp_5_reg_870}, {2'd3}};
assign or_ln_fu_485_p3 = {{trunc_ln70_fu_482_p1}, {1'd1}};
assign shl_ln70_1_fu_523_p3 = {{trunc_ln70_1_reg_937}, {9'd0}};
assign shl_ln70_2_fu_601_p3 = {{trunc_ln70_2_reg_982}, {9'd0}};
assign shl_ln70_3_fu_683_p3 = {{trunc_ln70_3_reg_1006}, {9'd0}};
assign shl_ln70_4_fu_710_p3 = {{trunc_ln70_4_reg_1038}, {9'd0}};
assign shl_ln70_5_fu_468_p3 = {{tmp_5_fu_458_p4}, {2'd2}};
assign shl_ln70_fu_446_p2 = ap_sig_allocacmp_blockID_1 << 10'd1;
assign tmp_5_fu_458_p4 = {{ap_sig_allocacmp_blockID_1[8:1]}};
assign trunc_ln70_1_fu_516_p1 = ashr_ln70_fu_512_p2[1:0];
assign trunc_ln70_2_fu_555_p1 = ashr_ln70_1_fu_551_p2[1:0];
assign trunc_ln70_3_fu_581_p1 = ashr_ln70_2_fu_577_p2[1:0];
assign trunc_ln70_4_fu_660_p1 = ashr_ln70_3_fu_656_p2[1:0];
assign trunc_ln70_5_fu_573_p1 = ashr_ln70_4_fu_569_p2[1:0];
assign trunc_ln70_6_fu_642_p1 = ashr_ln70_5_fu_638_p2[1:0];
assign trunc_ln70_7_fu_679_p1 = ashr_ln70_6_fu_675_p2[1:0];
assign trunc_ln70_8_fu_740_p1 = ashr_ln70_7_fu_736_p2[1:0];
assign trunc_ln70_fu_482_p1 = blockID_1_reg_849[8:0];
assign trunc_ln72_1_fu_646_p1 = bucket_0_q0[0:0];
assign trunc_ln72_2_fu_744_p1 = bucket_0_q0[0:0];
assign trunc_ln72_3_fu_783_p1 = bucket_0_q0[0:0];
assign trunc_ln72_4_fu_628_p1 = bucket_1_q0[0:0];
assign trunc_ln72_5_fu_732_p1 = bucket_1_q0[0:0];
assign trunc_ln72_6_fu_779_p1 = bucket_1_q0[0:0];
assign trunc_ln72_7_fu_815_p1 = bucket_1_q0[0:0];
assign trunc_ln72_fu_559_p1 = bucket_0_q0[0:0];
assign zext_ln68_fu_520_p1 = blockID_1_reg_849;
assign zext_ln70_1_fu_493_p1 = or_ln_fu_485_p3;
assign zext_ln70_2_fu_476_p1 = shl_ln70_5_fu_468_p3;
assign zext_ln70_3_fu_506_p1 = or_ln70_1_fu_499_p3;
assign zext_ln70_fu_452_p1 = shl_ln70_fu_446_p2;
assign zext_ln72_10_fu_705_p1 = lshr_ln72_4_fu_695_p4;
assign zext_ln72_11_fu_775_p1 = lshr_ln72_6_reg_1058;
assign zext_ln72_12_fu_591_p1 = lshr_ln72_8_fu_585_p3;
assign zext_ln72_13_fu_670_p1 = lshr_ln72_s_fu_664_p3;
assign zext_ln72_14_fu_760_p1 = lshr_ln72_11_fu_754_p3;
assign zext_ln72_15_fu_805_p1 = lshr_ln72_13_fu_799_p3;
assign zext_ln72_1_fu_650_p1 = grp_fu_380_p4;
assign zext_ln72_2_fu_748_p1 = grp_fu_380_p4;
assign zext_ln72_3_fu_787_p1 = grp_fu_380_p4;
assign zext_ln72_4_fu_793_p1 = reg_400;
assign zext_ln72_5_fu_810_p1 = lshr_ln72_10_reg_1067;
assign zext_ln72_6_fu_819_p1 = lshr_ln72_12_reg_1094;
assign zext_ln72_7_fu_824_p1 = reg_400;
assign zext_ln72_8_fu_546_p1 = lshr_ln_fu_536_p4;
assign zext_ln72_9_fu_623_p1 = lshr_ln72_2_fu_613_p4;
assign zext_ln72_fu_596_p1 = lshr_ln72_1_reg_991;
always @ (posedge ap_clk) begin
    exp_cast12_reg_837[31:5] <= 27'b000000000000000000000000000;
    zext_ln68_reg_970[10] <= 1'b0;
end
endmodule 
