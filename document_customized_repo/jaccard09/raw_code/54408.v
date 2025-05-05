module ss_sort_ss_sort_Pipeline_update_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_2_address0,b_2_ce0,b_2_we0,b_2_d0,zext_ln63,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_q0,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_q0,b_0_address0,b_0_ce0,b_0_we0,b_0_d0,b_3_address0,b_3_ce0,b_3_we0,b_3_d0,b_1_address0,b_1_ce0,b_1_we0,b_1_d0,a_0_address0,a_0_ce0,a_0_q0,a_1_address0,a_1_ce0,a_1_q0,a_2_address0,a_2_ce0,a_2_q0,a_3_address0,a_3_ce0,a_3_q0); 
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
output  [8:0] b_2_address0;
output   b_2_ce0;
output   b_2_we0;
output  [31:0] b_2_d0;
input  [4:0] zext_ln63;
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
output   b_0_we0;
output  [31:0] b_0_d0;
output  [8:0] b_3_address0;
output   b_3_ce0;
output   b_3_we0;
output  [31:0] b_3_d0;
output  [8:0] b_1_address0;
output   b_1_ce0;
output   b_1_we0;
output  [31:0] b_1_d0;
output  [8:0] a_0_address0;
output   a_0_ce0;
input  [31:0] a_0_q0;
output  [8:0] a_1_address0;
output   a_1_ce0;
input  [31:0] a_1_q0;
output  [8:0] a_2_address0;
output   a_2_ce0;
input  [31:0] a_2_q0;
output  [8:0] a_3_address0;
output   a_3_ce0;
input  [31:0] a_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln68_reg_880;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
wire   [31:0] zext_ln63_cast_fu_440_p1;
reg   [31:0] zext_ln63_cast_reg_866;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] blockID_2_reg_874;
wire   [0:0] icmp_ln68_fu_452_p2;
reg   [31:0] a_0_load_reg_904;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_1_load_reg_913;
reg   [31:0] a_2_load_reg_922;
reg   [31:0] a_3_load_reg_931;
reg   [31:0] a_3_load_reg_931_pp0_iter1_reg;
wire   [1:0] trunc_ln70_fu_470_p1;
reg   [1:0] trunc_ln70_reg_940;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [10:0] zext_ln68_2_fu_479_p1;
reg   [10:0] zext_ln68_2_reg_945;
wire    ap_block_pp0_stage3_11001;
wire   [1:0] trunc_ln72_fu_495_p1;
reg   [1:0] trunc_ln72_reg_952;
reg   [8:0] bucket_0_addr_reg_957;
reg   [8:0] bucket_1_addr_reg_962;
reg   [8:0] bucket_2_addr_reg_967;
reg   [8:0] bucket_3_addr_reg_972;
wire   [1:0] trunc_ln70_4_fu_521_p1;
reg   [1:0] trunc_ln70_4_reg_977;
wire   [31:0] tmp_2_fu_530_p11;
reg   [31:0] tmp_2_reg_982;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [1:0] trunc_ln72_8_fu_553_p1;
reg   [1:0] trunc_ln72_8_reg_987;
reg   [8:0] lshr_ln72_1_reg_991;
wire   [1:0] trunc_ln70_5_fu_571_p1;
reg   [1:0] trunc_ln70_5_reg_996;
wire   [1:0] trunc_ln70_6_fu_595_p1;
reg   [1:0] trunc_ln70_6_reg_1001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [1:0] trunc_ln72_9_fu_611_p1;
reg   [1:0] trunc_ln72_9_reg_1006;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [8:0] bucket_0_addr_4_reg_1011;
reg   [8:0] bucket_1_addr_4_reg_1016;
reg   [8:0] bucket_2_addr_4_reg_1021;
reg   [8:0] bucket_3_addr_19_reg_1026;
wire   [31:0] tmp_4_fu_633_p11;
reg   [31:0] tmp_4_reg_1031;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [1:0] trunc_ln72_10_fu_656_p1;
reg   [1:0] trunc_ln72_10_reg_1036;
reg   [8:0] lshr_ln72_5_reg_1040;
wire   [1:0] trunc_ln72_11_fu_698_p1;
reg   [1:0] trunc_ln72_11_reg_1045;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [8:0] bucket_0_addr_5_reg_1050;
reg   [8:0] bucket_1_addr_5_reg_1055;
reg   [8:0] bucket_2_addr_5_reg_1060;
reg   [8:0] bucket_3_addr_20_reg_1065;
wire   [1:0] trunc_ln72_13_fu_732_p1;
reg   [1:0] trunc_ln72_13_reg_1070;
reg   [8:0] lshr_ln72_s_reg_1075;
wire   [31:0] tmp_6_fu_746_p11;
reg   [31:0] tmp_6_reg_1080;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [1:0] trunc_ln72_12_fu_769_p1;
reg   [1:0] trunc_ln72_12_reg_1085;
reg   [8:0] lshr_ln72_9_reg_1089;
reg   [8:0] bucket_0_addr_6_reg_1094;
reg   [8:0] bucket_1_addr_6_reg_1099;
reg   [8:0] bucket_2_addr_6_reg_1104;
reg   [8:0] bucket_3_addr_21_reg_1109;
wire   [31:0] tmp_8_fu_806_p11;
reg   [31:0] tmp_8_reg_1114;
wire   [1:0] trunc_ln72_14_fu_829_p1;
reg   [1:0] trunc_ln72_14_reg_1119;
reg   [8:0] lshr_ln72_6_reg_1123;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln68_fu_458_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln72_8_fu_509_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln72_fu_575_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln72_9_fu_625_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln72_2_fu_670_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln72_10_fu_712_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln72_4_fu_783_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln72_11_fu_799_p1;
wire   [63:0] zext_ln72_6_fu_843_p1;
wire    ap_block_pp0_stage2;
reg   [9:0] blockID_fu_82;
wire   [9:0] add_ln68_fu_474_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID_2;
reg    a_0_ce0_local;
reg    a_1_ce0_local;
reg    a_2_ce0_local;
reg    a_3_ce0_local;
reg    bucket_0_ce0_local;
reg   [8:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire   [31:0] add_ln73_fu_582_p2;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] add_ln73_2_fu_677_p2;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] add_ln73_4_fu_790_p2;
wire   [31:0] add_ln73_5_fu_850_p2;
reg    bucket_1_ce0_local;
reg   [8:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
reg    bucket_2_ce0_local;
reg   [8:0] bucket_2_address0_local;
reg    bucket_2_we0_local;
reg   [31:0] bucket_2_d0_local;
reg    bucket_3_ce0_local;
reg   [8:0] bucket_3_address0_local;
reg    bucket_3_we0_local;
reg   [31:0] bucket_3_d0_local;
reg    b_2_we0_local;
reg   [31:0] b_2_d0_local;
reg    b_2_ce0_local;
reg   [8:0] b_2_address0_local;
reg    b_1_we0_local;
reg   [31:0] b_1_d0_local;
reg    b_1_ce0_local;
reg   [8:0] b_1_address0_local;
reg    b_0_we0_local;
reg   [31:0] b_0_d0_local;
reg    b_0_ce0_local;
reg   [8:0] b_0_address0_local;
reg    b_3_we0_local;
reg   [31:0] b_3_d0_local;
reg    b_3_ce0_local;
reg   [8:0] b_3_address0_local;
wire   [31:0] ashr_ln70_fu_466_p2;
wire   [10:0] shl_ln2_fu_482_p3;
wire   [10:0] add_ln70_fu_489_p2;
wire   [8:0] lshr_ln5_fu_499_p4;
wire   [31:0] ashr_ln70_2_fu_517_p2;
wire   [31:0] tmp_2_fu_530_p9;
wire    ap_block_pp0_stage4;
wire   [31:0] ashr_ln70_4_fu_567_p2;
wire   [31:0] ashr_ln70_5_fu_591_p2;
wire   [10:0] shl_ln70_2_fu_599_p3;
wire   [10:0] add_ln70_2_fu_606_p2;
wire   [8:0] lshr_ln72_4_fu_615_p4;
wire   [31:0] tmp_4_fu_633_p9;
wire    ap_block_pp0_stage7;
wire   [10:0] shl_ln70_4_fu_686_p3;
wire   [10:0] add_ln70_4_fu_693_p2;
wire   [8:0] lshr_ln72_8_fu_702_p4;
wire   [10:0] shl_ln70_6_fu_720_p3;
wire   [10:0] add_ln70_5_fu_727_p2;
wire   [31:0] tmp_6_fu_746_p9;
wire    ap_block_pp0_stage10;
wire   [31:0] tmp_8_fu_806_p9;
wire    ap_block_pp0_stage1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
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
wire   [1:0] tmp_2_fu_530_p1;
wire   [1:0] tmp_2_fu_530_p3;
wire  signed [1:0] tmp_2_fu_530_p5;
wire  signed [1:0] tmp_2_fu_530_p7;
wire   [1:0] tmp_4_fu_633_p1;
wire   [1:0] tmp_4_fu_633_p3;
wire  signed [1:0] tmp_4_fu_633_p5;
wire  signed [1:0] tmp_4_fu_633_p7;
wire   [1:0] tmp_6_fu_746_p1;
wire   [1:0] tmp_6_fu_746_p3;
wire  signed [1:0] tmp_6_fu_746_p5;
wire  signed [1:0] tmp_6_fu_746_p7;
wire   [1:0] tmp_8_fu_806_p1;
wire   [1:0] tmp_8_fu_806_p3;
wire  signed [1:0] tmp_8_fu_806_p5;
wire  signed [1:0] tmp_8_fu_806_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 blockID_fu_82 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_9_2_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_x_U48(.din0(bucket_0_q0),.din1(bucket_1_q0),.din2(bucket_2_q0),.din3(bucket_3_q0),.def(tmp_2_fu_530_p9),.sel(trunc_ln72_reg_952),.dout(tmp_2_fu_530_p11));
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_9_2_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_x_U49(.din0(bucket_0_q0),.din1(bucket_1_q0),.din2(bucket_2_q0),.din3(bucket_3_q0),.def(tmp_4_fu_633_p9),.sel(trunc_ln72_9_reg_1006),.dout(tmp_4_fu_633_p11));
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_9_2_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_x_U50(.din0(bucket_0_q0),.din1(bucket_1_q0),.din2(bucket_2_q0),.din3(bucket_3_q0),.def(tmp_6_fu_746_p9),.sel(trunc_ln72_11_reg_1045),.dout(tmp_6_fu_746_p11));
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_9_2_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_x_U51(.din0(bucket_0_q0),.din1(bucket_1_q0),.din2(bucket_2_q0),.din3(bucket_3_q0),.def(tmp_8_fu_806_p9),.sel(trunc_ln72_13_reg_1070),.dout(tmp_8_fu_806_p11));
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_fu_82 <= 10'd0;
    end else if (((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        blockID_fu_82 <= add_ln68_fu_474_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_0_load_reg_904 <= a_0_q0;
        a_1_load_reg_913 <= a_1_q0;
        a_2_load_reg_922 <= a_2_q0;
        a_3_load_reg_931 <= a_3_q0;
        a_3_load_reg_931_pp0_iter1_reg <= a_3_load_reg_931;
        lshr_ln72_6_reg_1123 <= {{tmp_8_fu_806_p11[10:2]}};
        tmp_8_reg_1114 <= tmp_8_fu_806_p11;
        trunc_ln72_14_reg_1119 <= trunc_ln72_14_fu_829_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_2_reg_874 <= ap_sig_allocacmp_blockID_2;
        bucket_0_addr_6_reg_1094 <= zext_ln72_11_fu_799_p1;
        bucket_1_addr_6_reg_1099 <= zext_ln72_11_fu_799_p1;
        bucket_2_addr_6_reg_1104 <= zext_ln72_11_fu_799_p1;
        bucket_3_addr_21_reg_1109 <= zext_ln72_11_fu_799_p1;
        icmp_ln68_reg_880 <= icmp_ln68_fu_452_p2;
        zext_ln63_cast_reg_866[4 : 0] <= zext_ln63_cast_fu_440_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_0_addr_4_reg_1011 <= zext_ln72_9_fu_625_p1;
        bucket_1_addr_4_reg_1016 <= zext_ln72_9_fu_625_p1;
        bucket_2_addr_4_reg_1021 <= zext_ln72_9_fu_625_p1;
        bucket_3_addr_19_reg_1026 <= zext_ln72_9_fu_625_p1;
        trunc_ln72_9_reg_1006 <= trunc_ln72_9_fu_611_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_0_addr_5_reg_1050 <= zext_ln72_10_fu_712_p1;
        bucket_1_addr_5_reg_1055 <= zext_ln72_10_fu_712_p1;
        bucket_2_addr_5_reg_1060 <= zext_ln72_10_fu_712_p1;
        bucket_3_addr_20_reg_1065 <= zext_ln72_10_fu_712_p1;
        lshr_ln72_s_reg_1075 <= {{add_ln70_5_fu_727_p2[10:2]}};
        trunc_ln72_11_reg_1045 <= trunc_ln72_11_fu_698_p1;
        trunc_ln72_13_reg_1070 <= trunc_ln72_13_fu_732_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_addr_reg_957 <= zext_ln72_8_fu_509_p1;
        bucket_1_addr_reg_962 <= zext_ln72_8_fu_509_p1;
        bucket_2_addr_reg_967 <= zext_ln72_8_fu_509_p1;
        bucket_3_addr_reg_972 <= zext_ln72_8_fu_509_p1;
        trunc_ln70_4_reg_977 <= trunc_ln70_4_fu_521_p1;
        trunc_ln72_reg_952 <= trunc_ln72_fu_495_p1;
        zext_ln68_2_reg_945[9 : 0] <= zext_ln68_2_fu_479_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln72_1_reg_991 <= {{tmp_2_fu_530_p11[10:2]}};
        tmp_2_reg_982 <= tmp_2_fu_530_p11;
        trunc_ln70_5_reg_996 <= trunc_ln70_5_fu_571_p1;
        trunc_ln72_8_reg_987 <= trunc_ln72_8_fu_553_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        lshr_ln72_5_reg_1040 <= {{tmp_4_fu_633_p11[10:2]}};
        tmp_4_reg_1031 <= tmp_4_fu_633_p11;
        trunc_ln72_10_reg_1036 <= trunc_ln72_10_fu_656_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        lshr_ln72_9_reg_1089 <= {{tmp_6_fu_746_p11[10:2]}};
        tmp_6_reg_1080 <= tmp_6_fu_746_p11;
        trunc_ln72_12_reg_1085 <= trunc_ln72_12_fu_769_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        trunc_ln70_6_reg_1001 <= trunc_ln70_6_fu_595_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln70_reg_940 <= trunc_ln70_fu_470_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_880 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_blockID_2 = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_2 = blockID_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_0_address0_local = zext_ln72_6_fu_843_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        b_0_address0_local = zext_ln72_4_fu_783_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        b_0_address0_local = zext_ln72_2_fu_670_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        b_0_address0_local = zext_ln72_fu_575_p1;
    end else begin
        b_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        b_0_ce0_local = 1'b1;
    end else begin
        b_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_0_d0_local = a_3_load_reg_931_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        b_0_d0_local = a_2_load_reg_922;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        b_0_d0_local = a_1_load_reg_913;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        b_0_d0_local = a_0_load_reg_904;
    end else begin
        b_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_12_reg_1085 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_10_reg_1036 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_8_reg_987 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_14_reg_1119 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        b_0_we0_local = 1'b1;
    end else begin
        b_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_1_address0_local = zext_ln72_6_fu_843_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        b_1_address0_local = zext_ln72_4_fu_783_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        b_1_address0_local = zext_ln72_2_fu_670_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        b_1_address0_local = zext_ln72_fu_575_p1;
    end else begin
        b_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        b_1_ce0_local = 1'b1;
    end else begin
        b_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_1_d0_local = a_3_load_reg_931_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        b_1_d0_local = a_2_load_reg_922;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        b_1_d0_local = a_1_load_reg_913;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        b_1_d0_local = a_0_load_reg_904;
    end else begin
        b_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_12_reg_1085 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_10_reg_1036 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_8_reg_987 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_14_reg_1119 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        b_1_we0_local = 1'b1;
    end else begin
        b_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_2_address0_local = zext_ln72_6_fu_843_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        b_2_address0_local = zext_ln72_4_fu_783_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        b_2_address0_local = zext_ln72_2_fu_670_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        b_2_address0_local = zext_ln72_fu_575_p1;
    end else begin
        b_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        b_2_ce0_local = 1'b1;
    end else begin
        b_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_2_d0_local = a_3_load_reg_931_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        b_2_d0_local = a_2_load_reg_922;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        b_2_d0_local = a_1_load_reg_913;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        b_2_d0_local = a_0_load_reg_904;
    end else begin
        b_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_12_reg_1085 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_10_reg_1036 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_8_reg_987 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_14_reg_1119 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        b_2_we0_local = 1'b1;
    end else begin
        b_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_3_address0_local = zext_ln72_6_fu_843_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        b_3_address0_local = zext_ln72_4_fu_783_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        b_3_address0_local = zext_ln72_2_fu_670_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        b_3_address0_local = zext_ln72_fu_575_p1;
    end else begin
        b_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        b_3_ce0_local = 1'b1;
    end else begin
        b_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_3_d0_local = a_3_load_reg_931_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        b_3_d0_local = a_2_load_reg_922;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        b_3_d0_local = a_1_load_reg_913;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        b_3_d0_local = a_0_load_reg_904;
    end else begin
        b_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_12_reg_1085 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_10_reg_1036 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_8_reg_987 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_14_reg_1119 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        b_3_we0_local = 1'b1;
    end else begin
        b_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_address0_local = bucket_0_addr_6_reg_1094;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = zext_ln72_11_fu_799_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_0_address0_local = bucket_0_addr_5_reg_1050;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_0_address0_local = zext_ln72_10_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_0_address0_local = bucket_0_addr_4_reg_1011;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_0_address0_local = zext_ln72_9_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_0_address0_local = bucket_0_addr_reg_957;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = zext_ln72_8_fu_509_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_d0_local = add_ln73_5_fu_850_p2;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_0_d0_local = add_ln73_4_fu_790_p2;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_0_d0_local = add_ln73_2_fu_677_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_0_d0_local = add_ln73_fu_582_p2;
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_11_reg_1045 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_9_reg_1006 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_reg_952 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_13_reg_1070 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address0_local = bucket_1_addr_6_reg_1099;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = zext_ln72_11_fu_799_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_1_address0_local = bucket_1_addr_5_reg_1055;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_1_address0_local = zext_ln72_10_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_1_address0_local = bucket_1_addr_4_reg_1016;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_1_address0_local = zext_ln72_9_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_address0_local = bucket_1_addr_reg_962;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address0_local = zext_ln72_8_fu_509_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_d0_local = add_ln73_5_fu_850_p2;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_1_d0_local = add_ln73_4_fu_790_p2;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_1_d0_local = add_ln73_2_fu_677_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_d0_local = add_ln73_fu_582_p2;
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_11_reg_1045 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_9_reg_1006 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_reg_952 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_13_reg_1070 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_2_address0_local = bucket_2_addr_6_reg_1104;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address0_local = zext_ln72_11_fu_799_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_2_address0_local = bucket_2_addr_5_reg_1060;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_2_address0_local = zext_ln72_10_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_2_address0_local = bucket_2_addr_4_reg_1021;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_2_address0_local = zext_ln72_9_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_2_address0_local = bucket_2_addr_reg_967;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address0_local = zext_ln72_8_fu_509_p1;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_2_d0_local = add_ln73_5_fu_850_p2;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_2_d0_local = add_ln73_4_fu_790_p2;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_2_d0_local = add_ln73_2_fu_677_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_2_d0_local = add_ln73_fu_582_p2;
    end else begin
        bucket_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_11_reg_1045 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_9_reg_1006 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_reg_952 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_13_reg_1070 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_3_address0_local = bucket_3_addr_21_reg_1109;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address0_local = zext_ln72_11_fu_799_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_3_address0_local = bucket_3_addr_20_reg_1065;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_3_address0_local = zext_ln72_10_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_3_address0_local = bucket_3_addr_19_reg_1026;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_3_address0_local = zext_ln72_9_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_3_address0_local = bucket_3_addr_reg_972;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_3_address0_local = zext_ln72_8_fu_509_p1;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_3_d0_local = add_ln73_5_fu_850_p2;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_3_d0_local = add_ln73_4_fu_790_p2;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_3_d0_local = add_ln73_2_fu_677_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_3_d0_local = add_ln73_fu_582_p2;
    end else begin
        bucket_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_11_reg_1045 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_9_reg_1006 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((icmp_ln68_reg_880 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln72_reg_952 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln72_13_reg_1070 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign a_0_address0 = zext_ln68_fu_458_p1;
assign a_0_ce0 = a_0_ce0_local;
assign a_1_address0 = zext_ln68_fu_458_p1;
assign a_1_ce0 = a_1_ce0_local;
assign a_2_address0 = zext_ln68_fu_458_p1;
assign a_2_ce0 = a_2_ce0_local;
assign a_3_address0 = zext_ln68_fu_458_p1;
assign a_3_ce0 = a_3_ce0_local;
assign add_ln68_fu_474_p2 = (blockID_2_reg_874 + 10'd1);
assign add_ln70_2_fu_606_p2 = (zext_ln68_2_reg_945 + shl_ln70_2_fu_599_p3);
assign add_ln70_4_fu_693_p2 = (zext_ln68_2_reg_945 + shl_ln70_4_fu_686_p3);
assign add_ln70_5_fu_727_p2 = (zext_ln68_2_reg_945 + shl_ln70_6_fu_720_p3);
assign add_ln70_fu_489_p2 = (zext_ln68_2_fu_479_p1 + shl_ln2_fu_482_p3);
assign add_ln73_2_fu_677_p2 = (tmp_4_reg_1031 + 32'd1);
assign add_ln73_4_fu_790_p2 = (tmp_6_reg_1080 + 32'd1);
assign add_ln73_5_fu_850_p2 = (tmp_8_reg_1114 + 32'd1);
assign add_ln73_fu_582_p2 = (tmp_2_reg_982 + 32'd1);
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
assign ashr_ln70_2_fu_517_p2 = $signed(a_1_load_reg_913) >>> zext_ln63_cast_reg_866;
assign ashr_ln70_4_fu_567_p2 = $signed(a_2_load_reg_922) >>> zext_ln63_cast_reg_866;
assign ashr_ln70_5_fu_591_p2 = $signed(a_3_load_reg_931) >>> zext_ln63_cast_reg_866;
assign ashr_ln70_fu_466_p2 = $signed(a_0_load_reg_904) >>> zext_ln63_cast_reg_866;
assign b_0_address0 = b_0_address0_local;
assign b_0_ce0 = b_0_ce0_local;
assign b_0_d0 = b_0_d0_local;
assign b_0_we0 = b_0_we0_local;
assign b_1_address0 = b_1_address0_local;
assign b_1_ce0 = b_1_ce0_local;
assign b_1_d0 = b_1_d0_local;
assign b_1_we0 = b_1_we0_local;
assign b_2_address0 = b_2_address0_local;
assign b_2_ce0 = b_2_ce0_local;
assign b_2_d0 = b_2_d0_local;
assign b_2_we0 = b_2_we0_local;
assign b_3_address0 = b_3_address0_local;
assign b_3_ce0 = b_3_ce0_local;
assign b_3_d0 = b_3_d0_local;
assign b_3_we0 = b_3_we0_local;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_d0 = bucket_0_d0_local;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_d0 = bucket_1_d0_local;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_2_address0 = bucket_2_address0_local;
assign bucket_2_ce0 = bucket_2_ce0_local;
assign bucket_2_d0 = bucket_2_d0_local;
assign bucket_2_we0 = bucket_2_we0_local;
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_d0 = bucket_3_d0_local;
assign bucket_3_we0 = bucket_3_we0_local;
assign icmp_ln68_fu_452_p2 = ((ap_sig_allocacmp_blockID_2 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_499_p4 = {{add_ln70_fu_489_p2[10:2]}};
assign lshr_ln72_4_fu_615_p4 = {{add_ln70_2_fu_606_p2[10:2]}};
assign lshr_ln72_8_fu_702_p4 = {{add_ln70_4_fu_693_p2[10:2]}};
assign shl_ln2_fu_482_p3 = {{trunc_ln70_reg_940}, {9'd0}};
assign shl_ln70_2_fu_599_p3 = {{trunc_ln70_4_reg_977}, {9'd0}};
assign shl_ln70_4_fu_686_p3 = {{trunc_ln70_5_reg_996}, {9'd0}};
assign shl_ln70_6_fu_720_p3 = {{trunc_ln70_6_reg_1001}, {9'd0}};
assign tmp_2_fu_530_p9 = 'bx;
assign tmp_4_fu_633_p9 = 'bx;
assign tmp_6_fu_746_p9 = 'bx;
assign tmp_8_fu_806_p9 = 'bx;
assign trunc_ln70_4_fu_521_p1 = ashr_ln70_2_fu_517_p2[1:0];
assign trunc_ln70_5_fu_571_p1 = ashr_ln70_4_fu_567_p2[1:0];
assign trunc_ln70_6_fu_595_p1 = ashr_ln70_5_fu_591_p2[1:0];
assign trunc_ln70_fu_470_p1 = ashr_ln70_fu_466_p2[1:0];
assign trunc_ln72_10_fu_656_p1 = tmp_4_fu_633_p11[1:0];
assign trunc_ln72_11_fu_698_p1 = add_ln70_4_fu_693_p2[1:0];
assign trunc_ln72_12_fu_769_p1 = tmp_6_fu_746_p11[1:0];
assign trunc_ln72_13_fu_732_p1 = add_ln70_5_fu_727_p2[1:0];
assign trunc_ln72_14_fu_829_p1 = tmp_8_fu_806_p11[1:0];
assign trunc_ln72_8_fu_553_p1 = tmp_2_fu_530_p11[1:0];
assign trunc_ln72_9_fu_611_p1 = add_ln70_2_fu_606_p2[1:0];
assign trunc_ln72_fu_495_p1 = add_ln70_fu_489_p2[1:0];
assign zext_ln63_cast_fu_440_p1 = zext_ln63;
assign zext_ln68_2_fu_479_p1 = blockID_2_reg_874;
assign zext_ln68_fu_458_p1 = ap_sig_allocacmp_blockID_2;
assign zext_ln72_10_fu_712_p1 = lshr_ln72_8_fu_702_p4;
assign zext_ln72_11_fu_799_p1 = lshr_ln72_s_reg_1075;
assign zext_ln72_2_fu_670_p1 = lshr_ln72_5_reg_1040;
assign zext_ln72_4_fu_783_p1 = lshr_ln72_9_reg_1089;
assign zext_ln72_6_fu_843_p1 = lshr_ln72_6_reg_1123;
assign zext_ln72_8_fu_509_p1 = lshr_ln5_fu_499_p4;
assign zext_ln72_9_fu_625_p1 = lshr_ln72_4_fu_615_p4;
assign zext_ln72_fu_575_p1 = lshr_ln72_1_reg_991;
always @ (posedge ap_clk) begin
    zext_ln63_cast_reg_866[31:5] <= 27'b000000000000000000000000000;
    zext_ln68_2_reg_945[10] <= 1'b0;
end
endmodule 