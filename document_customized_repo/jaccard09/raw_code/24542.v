module ss_sort_ss_sort_Pipeline_hist_1_hist_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,a_0_address0,a_0_ce0,a_0_q0,a_2_address0,a_2_ce0,a_2_q0,a_4_address0,a_4_ce0,a_4_q0,a_6_address0,a_6_ce0,a_6_q0,zext_ln50,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_q0,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_q0,bucket_4_address0,bucket_4_ce0,bucket_4_we0,bucket_4_d0,bucket_4_q0,bucket_5_address0,bucket_5_ce0,bucket_5_we0,bucket_5_d0,bucket_5_q0,bucket_6_address0,bucket_6_ce0,bucket_6_we0,bucket_6_d0,bucket_6_q0,bucket_7_address0,bucket_7_ce0,bucket_7_we0,bucket_7_d0,bucket_7_q0,a_1_address0,a_1_ce0,a_1_q0,a_3_address0,a_3_ce0,a_3_q0,a_5_address0,a_5_ce0,a_5_q0,a_7_address0,a_7_ce0,a_7_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
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
input  [31:0] bucket_0_q0;
output  [7:0] a_0_address0;
output   a_0_ce0;
input  [31:0] a_0_q0;
output  [7:0] a_2_address0;
output   a_2_ce0;
input  [31:0] a_2_q0;
output  [7:0] a_4_address0;
output   a_4_ce0;
input  [31:0] a_4_q0;
output  [7:0] a_6_address0;
output   a_6_ce0;
input  [31:0] a_6_q0;
input  [4:0] zext_ln50;
output  [7:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [7:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
input  [31:0] bucket_2_q0;
output  [7:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
input  [31:0] bucket_3_q0;
output  [7:0] bucket_4_address0;
output   bucket_4_ce0;
output   bucket_4_we0;
output  [31:0] bucket_4_d0;
input  [31:0] bucket_4_q0;
output  [7:0] bucket_5_address0;
output   bucket_5_ce0;
output   bucket_5_we0;
output  [31:0] bucket_5_d0;
input  [31:0] bucket_5_q0;
output  [7:0] bucket_6_address0;
output   bucket_6_ce0;
output   bucket_6_we0;
output  [31:0] bucket_6_d0;
input  [31:0] bucket_6_q0;
output  [7:0] bucket_7_address0;
output   bucket_7_ce0;
output   bucket_7_we0;
output  [31:0] bucket_7_d0;
input  [31:0] bucket_7_q0;
output  [7:0] a_1_address0;
output   a_1_ce0;
input  [31:0] a_1_q0;
output  [7:0] a_3_address0;
output   a_3_ce0;
input  [31:0] a_3_q0;
output  [7:0] a_5_address0;
output   a_5_ce0;
input  [31:0] a_5_q0;
output  [7:0] a_7_address0;
output   a_7_ce0;
input  [31:0] a_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln54_reg_826;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
wire   [31:0] zext_ln50_cast_fu_404_p1;
reg   [31:0] zext_ln50_cast_reg_820;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln54_fu_426_p2;
wire   [10:0] add_ln54_fu_432_p2;
reg   [10:0] add_ln54_reg_830;
wire   [2:0] select_ln52_fu_452_p3;
reg   [2:0] select_ln52_reg_835;
wire   [9:0] select_ln54_fu_466_p3;
reg   [9:0] select_ln54_reg_841;
wire   [8:0] empty_fu_474_p1;
reg   [8:0] empty_reg_846;
wire   [2:0] empty_25_fu_478_p1;
reg   [2:0] empty_25_reg_852;
reg   [2:0] empty_25_reg_852_pp0_iter1_reg;
reg   [8:0] tmp_6_reg_857;
wire   [2:0] trunc_ln57_fu_508_p1;
reg   [2:0] trunc_ln57_reg_862;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_8_fu_545_p11;
reg   [31:0] tmp_8_reg_908;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_s_fu_568_p11;
reg   [31:0] tmp_s_reg_913;
wire   [9:0] thr_add166_fu_594_p2;
reg   [9:0] thr_add166_reg_918;
wire    ap_block_pp0_stage3_11001;
wire   [1:0] trunc_ln57_3_fu_604_p1;
reg   [1:0] trunc_ln57_3_reg_923;
reg   [7:0] bucket_0_addr_4_reg_928;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [7:0] bucket_1_addr_4_reg_933;
reg   [7:0] bucket_2_addr_4_reg_938;
reg   [7:0] bucket_3_addr_4_reg_943;
reg   [7:0] bucket_4_addr_4_reg_948;
reg   [7:0] bucket_5_addr_4_reg_953;
reg   [7:0] bucket_6_addr_4_reg_958;
reg   [7:0] bucket_7_addr_5_reg_963;
reg   [7:0] lshr_ln52_1_reg_968;
wire   [31:0] tmp_9_fu_678_p19;
reg   [31:0] tmp_9_reg_973;
wire    ap_block_pp0_stage5_11001;
reg   [7:0] bucket_6_addr_reg_978;
reg   [7:0] bucket_5_addr_reg_983;
reg   [7:0] bucket_4_addr_reg_988;
reg   [7:0] bucket_3_addr_reg_993;
reg   [7:0] bucket_2_addr_reg_998;
reg   [7:0] bucket_1_addr_reg_1003;
reg   [7:0] bucket_7_addr_reg_1008;
reg   [7:0] bucket_0_addr_reg_1013;
reg   [31:0] bucket_6_load_5_reg_1018;
reg   [31:0] bucket_5_load_5_reg_1023;
reg   [31:0] bucket_4_load_5_reg_1028;
reg   [31:0] bucket_3_load_5_reg_1033;
reg   [31:0] bucket_2_load_5_reg_1038;
reg   [31:0] bucket_1_load_5_reg_1043;
reg   [31:0] bucket_7_load_reg_1048;
reg   [31:0] bucket_0_load_5_reg_1053;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln57_fu_522_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln57_2_fu_530_p1;
wire   [63:0] zext_ln52_fu_634_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln52_1_fu_740_p1;
reg   [2:0] i_1_fu_114;
wire   [2:0] add_ln55_fu_717_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_1_load;
wire    ap_block_pp0_stage0;
reg   [9:0] blockID_fu_118;
reg   [9:0] ap_sig_allocacmp_blockID_load;
reg   [10:0] indvar_flatten_fu_122;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg    a_0_ce0_local;
reg    a_2_ce0_local;
reg    a_4_ce0_local;
reg    a_6_ce0_local;
reg    a_1_ce0_local;
reg    a_3_ce0_local;
reg    a_5_ce0_local;
reg    a_7_ce0_local;
reg    bucket_0_ce0_local;
reg   [7:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire   [31:0] add_ln58_fu_727_p2;
wire   [31:0] add_ln58_2_fu_793_p2;
wire    ap_block_pp0_stage3;
reg    bucket_1_ce0_local;
reg   [7:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
wire   [31:0] add_ln58_4_fu_781_p2;
reg    bucket_2_ce0_local;
reg   [7:0] bucket_2_address0_local;
reg    bucket_2_we0_local;
reg   [31:0] bucket_2_d0_local;
wire   [31:0] add_ln58_5_fu_775_p2;
reg    bucket_3_ce0_local;
reg   [7:0] bucket_3_address0_local;
reg    bucket_3_we0_local;
reg   [31:0] bucket_3_d0_local;
wire   [31:0] add_ln58_6_fu_769_p2;
reg    bucket_4_ce0_local;
reg   [7:0] bucket_4_address0_local;
reg    bucket_4_we0_local;
reg   [31:0] bucket_4_d0_local;
wire   [31:0] add_ln58_7_fu_763_p2;
reg    bucket_5_ce0_local;
reg   [7:0] bucket_5_address0_local;
reg    bucket_5_we0_local;
reg   [31:0] bucket_5_d0_local;
wire   [31:0] add_ln58_8_fu_757_p2;
reg    bucket_6_ce0_local;
reg   [7:0] bucket_6_address0_local;
reg    bucket_6_we0_local;
reg   [31:0] bucket_6_d0_local;
wire   [31:0] add_ln58_9_fu_751_p2;
reg    bucket_7_ce0_local;
reg   [7:0] bucket_7_address0_local;
reg    bucket_7_we0_local;
reg   [31:0] bucket_7_d0_local;
wire   [31:0] add_ln58_3_fu_787_p2;
wire   [0:0] tmp_fu_444_p3;
wire   [9:0] add_ln54_2_fu_460_p2;
wire   [10:0] zext_ln55_fu_499_p1;
wire   [10:0] tmp_5_fu_492_p3;
wire   [10:0] add_ln56_fu_502_p2;
wire   [7:0] lshr_ln2_fu_512_p4;
wire   [31:0] tmp_8_fu_545_p9;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_s_fu_568_p9;
wire   [9:0] blockID_cast2_cast3_fu_591_p1;
wire   [31:0] ashr_ln57_fu_600_p2;
wire   [10:0] shl_ln_fu_611_p3;
wire   [10:0] zext_ln55_1_fu_608_p1;
wire   [10:0] bucket_indx_fu_618_p2;
wire   [7:0] lshr_ln3_fu_624_p4;
wire   [31:0] ashr_ln57_1_fu_646_p2;
wire   [1:0] trunc_ln57_4_fu_650_p1;
wire   [10:0] shl_ln57_1_fu_654_p3;
wire   [10:0] bucket_indx_2_fu_662_p2;
wire   [31:0] tmp_9_fu_678_p17;
wire    ap_block_pp0_stage5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_8_fu_545_p1;
wire   [2:0] tmp_8_fu_545_p3;
wire  signed [2:0] tmp_8_fu_545_p5;
wire  signed [2:0] tmp_8_fu_545_p7;
wire   [2:0] tmp_s_fu_568_p1;
wire   [2:0] tmp_s_fu_568_p3;
wire  signed [2:0] tmp_s_fu_568_p5;
wire  signed [2:0] tmp_s_fu_568_p7;
wire  signed [2:0] tmp_9_fu_678_p1;
wire   [2:0] tmp_9_fu_678_p3;
wire   [2:0] tmp_9_fu_678_p5;
wire   [2:0] tmp_9_fu_678_p7;
wire   [2:0] tmp_9_fu_678_p9;
wire  signed [2:0] tmp_9_fu_678_p11;
wire  signed [2:0] tmp_9_fu_678_p13;
wire  signed [2:0] tmp_9_fu_678_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_1_fu_114 = 3'd0;
#0 blockID_fu_118 = 10'd0;
#0 indvar_flatten_fu_122 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U9(.din0(a_0_q0),.din1(a_2_q0),.din2(a_4_q0),.din3(a_6_q0),.def(tmp_8_fu_545_p9),.sel(trunc_ln57_reg_862),.dout(tmp_8_fu_545_p11));
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U10(.din0(a_1_q0),.din1(a_3_q0),.din2(a_5_q0),.din3(a_7_q0),.def(tmp_s_fu_568_p9),.sel(trunc_ln57_reg_862),.dout(tmp_s_fu_568_p11));
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U11(.din0(bucket_0_q0),.din1(bucket_1_q0),.din2(bucket_2_q0),.din3(bucket_3_q0),.din4(bucket_4_q0),.din5(bucket_5_q0),.din6(bucket_6_q0),.din7(bucket_7_q0),.def(tmp_9_fu_678_p17),.sel(empty_25_reg_852),.dout(tmp_9_fu_678_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_fu_118 <= 10'd0;
    end else if (((icmp_ln54_reg_826 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        blockID_fu_118 <= select_ln54_reg_841;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_114 <= 3'd0;
    end else if (((icmp_ln54_reg_826 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        i_1_fu_114 <= add_ln55_fu_717_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_122 <= 11'd0;
    end else if (((icmp_ln54_reg_826 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_122 <= add_ln54_reg_830;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln54_reg_830 <= add_ln54_fu_432_p2;
        empty_25_reg_852 <= empty_25_fu_478_p1;
        empty_25_reg_852_pp0_iter1_reg <= empty_25_reg_852;
        empty_reg_846 <= empty_fu_474_p1;
        icmp_ln54_reg_826 <= icmp_ln54_fu_426_p2;
        select_ln52_reg_835 <= select_ln52_fu_452_p3;
        select_ln54_reg_841 <= select_ln54_fu_466_p3;
        tmp_6_reg_857 <= {{select_ln54_fu_466_p3[9:1]}};
        zext_ln50_cast_reg_820[4 : 0] <= zext_ln50_cast_fu_404_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_0_addr_4_reg_928 <= zext_ln52_fu_634_p1;
        bucket_1_addr_4_reg_933 <= zext_ln52_fu_634_p1;
        bucket_2_addr_4_reg_938 <= zext_ln52_fu_634_p1;
        bucket_3_addr_4_reg_943 <= zext_ln52_fu_634_p1;
        bucket_4_addr_4_reg_948 <= zext_ln52_fu_634_p1;
        bucket_5_addr_4_reg_953 <= zext_ln52_fu_634_p1;
        bucket_6_addr_4_reg_958 <= zext_ln52_fu_634_p1;
        bucket_7_addr_5_reg_963 <= zext_ln52_fu_634_p1;
        lshr_ln52_1_reg_968 <= {{bucket_indx_2_fu_662_p2[10:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_addr_reg_1013 <= zext_ln52_1_fu_740_p1;
        bucket_1_addr_reg_1003 <= zext_ln52_1_fu_740_p1;
        bucket_2_addr_reg_998 <= zext_ln52_1_fu_740_p1;
        bucket_3_addr_reg_993 <= zext_ln52_1_fu_740_p1;
        bucket_4_addr_reg_988 <= zext_ln52_1_fu_740_p1;
        bucket_5_addr_reg_983 <= zext_ln52_1_fu_740_p1;
        bucket_6_addr_reg_978 <= zext_ln52_1_fu_740_p1;
        bucket_7_addr_reg_1008 <= zext_ln52_1_fu_740_p1;
        trunc_ln57_reg_862 <= trunc_ln57_fu_508_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_load_5_reg_1053 <= bucket_0_q0;
        bucket_1_load_5_reg_1043 <= bucket_1_q0;
        bucket_2_load_5_reg_1038 <= bucket_2_q0;
        bucket_3_load_5_reg_1033 <= bucket_3_q0;
        bucket_4_load_5_reg_1028 <= bucket_4_q0;
        bucket_5_load_5_reg_1023 <= bucket_5_q0;
        bucket_6_load_5_reg_1018 <= bucket_6_q0;
        bucket_7_load_reg_1048 <= bucket_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        thr_add166_reg_918 <= thr_add166_fu_594_p2;
        trunc_ln57_3_reg_923 <= trunc_ln57_3_fu_604_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_8_reg_908 <= tmp_8_fu_545_p11;
        tmp_s_reg_913 <= tmp_s_fu_568_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_9_reg_973 <= tmp_9_fu_678_p19;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_4_ce0_local = 1'b1;
    end else begin
        a_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_5_ce0_local = 1'b1;
    end else begin
        a_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_6_ce0_local = 1'b1;
    end else begin
        a_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_7_ce0_local = 1'b1;
    end else begin
        a_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln54_reg_826 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_blockID_load = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_load = blockID_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1_load = 3'd0;
    end else begin
        ap_sig_allocacmp_i_1_load = i_1_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = bucket_0_addr_reg_1013;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address0_local = zext_ln52_1_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = bucket_0_addr_4_reg_928;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_0_address0_local = zext_ln52_fu_634_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_0_d0_local = add_ln58_2_fu_793_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_0_d0_local = add_ln58_fu_727_p2;
        end else begin
            bucket_0_d0_local = 'bx;
        end
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (empty_25_reg_852_pp0_iter1_reg == 3'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_25_reg_852 == 3'd7)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address0_local = bucket_1_addr_reg_1003;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address0_local = zext_ln52_1_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = bucket_1_addr_4_reg_933;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_1_address0_local = zext_ln52_fu_634_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_1_d0_local = add_ln58_4_fu_781_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_1_d0_local = add_ln58_fu_727_p2;
        end else begin
            bucket_1_d0_local = 'bx;
        end
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (empty_25_reg_852_pp0_iter1_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_25_reg_852 == 3'd0)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address0_local = bucket_2_addr_reg_998;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_address0_local = zext_ln52_1_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address0_local = bucket_2_addr_4_reg_938;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_2_address0_local = zext_ln52_fu_634_p1;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_2_d0_local = add_ln58_5_fu_775_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_2_d0_local = add_ln58_fu_727_p2;
        end else begin
            bucket_2_d0_local = 'bx;
        end
    end else begin
        bucket_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (empty_25_reg_852_pp0_iter1_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_25_reg_852 == 3'd1)))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_3_address0_local = bucket_3_addr_reg_993;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_address0_local = zext_ln52_1_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address0_local = bucket_3_addr_4_reg_943;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_3_address0_local = zext_ln52_fu_634_p1;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_3_d0_local = add_ln58_6_fu_769_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_3_d0_local = add_ln58_fu_727_p2;
        end else begin
            bucket_3_d0_local = 'bx;
        end
    end else begin
        bucket_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (empty_25_reg_852_pp0_iter1_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_25_reg_852 == 3'd2)))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_4_address0_local = bucket_4_addr_reg_988;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_4_address0_local = zext_ln52_1_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_4_address0_local = bucket_4_addr_4_reg_948;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_4_address0_local = zext_ln52_fu_634_p1;
    end else begin
        bucket_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_4_ce0_local = 1'b1;
    end else begin
        bucket_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_4_d0_local = add_ln58_7_fu_763_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_4_d0_local = add_ln58_fu_727_p2;
        end else begin
            bucket_4_d0_local = 'bx;
        end
    end else begin
        bucket_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (empty_25_reg_852_pp0_iter1_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_25_reg_852 == 3'd3)))) begin
        bucket_4_we0_local = 1'b1;
    end else begin
        bucket_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_5_address0_local = bucket_5_addr_reg_983;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_5_address0_local = zext_ln52_1_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_5_address0_local = bucket_5_addr_4_reg_953;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_5_address0_local = zext_ln52_fu_634_p1;
    end else begin
        bucket_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_5_ce0_local = 1'b1;
    end else begin
        bucket_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_5_d0_local = add_ln58_8_fu_757_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_5_d0_local = add_ln58_fu_727_p2;
        end else begin
            bucket_5_d0_local = 'bx;
        end
    end else begin
        bucket_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (empty_25_reg_852_pp0_iter1_reg == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_25_reg_852 == 3'd4)))) begin
        bucket_5_we0_local = 1'b1;
    end else begin
        bucket_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_6_address0_local = bucket_6_addr_reg_978;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_6_address0_local = zext_ln52_1_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_6_address0_local = bucket_6_addr_4_reg_958;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_6_address0_local = zext_ln52_fu_634_p1;
    end else begin
        bucket_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_6_ce0_local = 1'b1;
    end else begin
        bucket_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_6_d0_local = add_ln58_9_fu_751_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_6_d0_local = add_ln58_fu_727_p2;
        end else begin
            bucket_6_d0_local = 'bx;
        end
    end else begin
        bucket_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (empty_25_reg_852_pp0_iter1_reg == 3'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_25_reg_852 == 3'd5)))) begin
        bucket_6_we0_local = 1'b1;
    end else begin
        bucket_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_7_address0_local = bucket_7_addr_reg_1008;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_7_address0_local = zext_ln52_1_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_7_address0_local = bucket_7_addr_5_reg_963;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_7_address0_local = zext_ln52_fu_634_p1;
    end else begin
        bucket_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_7_ce0_local = 1'b1;
    end else begin
        bucket_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_7_d0_local = add_ln58_3_fu_787_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_7_d0_local = add_ln58_fu_727_p2;
        end else begin
            bucket_7_d0_local = 'bx;
        end
    end else begin
        bucket_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (empty_25_reg_852_pp0_iter1_reg == 3'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_25_reg_852 == 3'd6)))) begin
        bucket_7_we0_local = 1'b1;
    end else begin
        bucket_7_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_address0 = zext_ln57_fu_522_p1;
assign a_0_ce0 = a_0_ce0_local;
assign a_1_address0 = zext_ln57_2_fu_530_p1;
assign a_1_ce0 = a_1_ce0_local;
assign a_2_address0 = zext_ln57_fu_522_p1;
assign a_2_ce0 = a_2_ce0_local;
assign a_3_address0 = zext_ln57_2_fu_530_p1;
assign a_3_ce0 = a_3_ce0_local;
assign a_4_address0 = zext_ln57_fu_522_p1;
assign a_4_ce0 = a_4_ce0_local;
assign a_5_address0 = zext_ln57_2_fu_530_p1;
assign a_5_ce0 = a_5_ce0_local;
assign a_6_address0 = zext_ln57_fu_522_p1;
assign a_6_ce0 = a_6_ce0_local;
assign a_7_address0 = zext_ln57_2_fu_530_p1;
assign a_7_ce0 = a_7_ce0_local;
assign add_ln54_2_fu_460_p2 = (ap_sig_allocacmp_blockID_load + 10'd1);
assign add_ln54_fu_432_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);
assign add_ln55_fu_717_p2 = (select_ln52_reg_835 + 3'd2);
assign add_ln56_fu_502_p2 = (zext_ln55_fu_499_p1 + tmp_5_fu_492_p3);
assign add_ln58_2_fu_793_p2 = (bucket_0_load_5_reg_1053 + 32'd1);
assign add_ln58_3_fu_787_p2 = (bucket_7_load_reg_1048 + 32'd1);
assign add_ln58_4_fu_781_p2 = (bucket_1_load_5_reg_1043 + 32'd1);
assign add_ln58_5_fu_775_p2 = (bucket_2_load_5_reg_1038 + 32'd1);
assign add_ln58_6_fu_769_p2 = (bucket_3_load_5_reg_1033 + 32'd1);
assign add_ln58_7_fu_763_p2 = (bucket_4_load_5_reg_1028 + 32'd1);
assign add_ln58_8_fu_757_p2 = (bucket_5_load_5_reg_1023 + 32'd1);
assign add_ln58_9_fu_751_p2 = (bucket_6_load_5_reg_1018 + 32'd1);
assign add_ln58_fu_727_p2 = (tmp_9_reg_973 + 32'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign ashr_ln57_1_fu_646_p2 = $signed(tmp_s_reg_913) >>> zext_ln50_cast_reg_820;
assign ashr_ln57_fu_600_p2 = $signed(tmp_8_reg_908) >>> zext_ln50_cast_reg_820;
assign blockID_cast2_cast3_fu_591_p1 = empty_reg_846;
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
assign bucket_4_address0 = bucket_4_address0_local;
assign bucket_4_ce0 = bucket_4_ce0_local;
assign bucket_4_d0 = bucket_4_d0_local;
assign bucket_4_we0 = bucket_4_we0_local;
assign bucket_5_address0 = bucket_5_address0_local;
assign bucket_5_ce0 = bucket_5_ce0_local;
assign bucket_5_d0 = bucket_5_d0_local;
assign bucket_5_we0 = bucket_5_we0_local;
assign bucket_6_address0 = bucket_6_address0_local;
assign bucket_6_ce0 = bucket_6_ce0_local;
assign bucket_6_d0 = bucket_6_d0_local;
assign bucket_6_we0 = bucket_6_we0_local;
assign bucket_7_address0 = bucket_7_address0_local;
assign bucket_7_ce0 = bucket_7_ce0_local;
assign bucket_7_d0 = bucket_7_d0_local;
assign bucket_7_we0 = bucket_7_we0_local;
assign bucket_indx_2_fu_662_p2 = (shl_ln57_1_fu_654_p3 + zext_ln55_1_fu_608_p1);
assign bucket_indx_fu_618_p2 = (shl_ln_fu_611_p3 + zext_ln55_1_fu_608_p1);
assign empty_25_fu_478_p1 = select_ln54_fu_466_p3[2:0];
assign empty_fu_474_p1 = select_ln54_fu_466_p3[8:0];
assign icmp_ln54_fu_426_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_512_p4 = {{add_ln56_fu_502_p2[10:3]}};
assign lshr_ln3_fu_624_p4 = {{bucket_indx_fu_618_p2[10:3]}};
assign select_ln52_fu_452_p3 = ((tmp_fu_444_p3[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_i_1_load);
assign select_ln54_fu_466_p3 = ((tmp_fu_444_p3[0:0] == 1'b1) ? add_ln54_2_fu_460_p2 : ap_sig_allocacmp_blockID_load);
assign shl_ln57_1_fu_654_p3 = {{trunc_ln57_4_fu_650_p1}, {9'd0}};
assign shl_ln_fu_611_p3 = {{trunc_ln57_3_reg_923}, {9'd0}};
assign thr_add166_fu_594_p2 = (blockID_cast2_cast3_fu_591_p1 + 10'd1);
assign tmp_5_fu_492_p3 = {{empty_reg_846}, {2'd0}};
assign tmp_8_fu_545_p9 = 'bx;
assign tmp_9_fu_678_p17 = 'bx;
assign tmp_fu_444_p3 = ap_sig_allocacmp_i_1_load[32'd2];
assign tmp_s_fu_568_p9 = 'bx;
assign trunc_ln57_3_fu_604_p1 = ashr_ln57_fu_600_p2[1:0];
assign trunc_ln57_4_fu_650_p1 = ashr_ln57_1_fu_646_p2[1:0];
assign trunc_ln57_fu_508_p1 = add_ln56_fu_502_p2[2:0];
assign zext_ln50_cast_fu_404_p1 = zext_ln50;
assign zext_ln52_1_fu_740_p1 = lshr_ln52_1_reg_968;
assign zext_ln52_fu_634_p1 = lshr_ln3_fu_624_p4;
assign zext_ln55_1_fu_608_p1 = thr_add166_reg_918;
assign zext_ln55_fu_499_p1 = select_ln52_reg_835;
assign zext_ln57_2_fu_530_p1 = tmp_6_reg_857;
assign zext_ln57_fu_522_p1 = lshr_ln2_fu_512_p4;
always @ (posedge ap_clk) begin
    zext_ln50_cast_reg_820[31:5] <= 27'b000000000000000000000000000;
end
endmodule 