module ss_sort_ss_sort_Pipeline_update_1_update_21 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_7_address0,a_7_ce0,a_7_we0,a_7_d0,a_6_address0,a_6_ce0,a_6_we0,a_6_d0,a_5_address0,a_5_ce0,a_5_we0,a_5_d0,a_4_address0,a_4_ce0,a_4_we0,a_4_d0,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,b_0_address0,b_0_ce0,b_0_q0,b_1_address0,b_1_ce0,b_1_q0,b_2_address0,b_2_ce0,b_2_q0,b_3_address0,b_3_ce0,b_3_q0,b_4_address0,b_4_ce0,b_4_q0,b_5_address0,b_5_ce0,b_5_q0,b_6_address0,b_6_ce0,b_6_q0,b_7_address0,b_7_ce0,b_7_q0,zext_ln63,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_q0,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_q0,bucket_4_address0,bucket_4_ce0,bucket_4_we0,bucket_4_d0,bucket_4_q0,bucket_5_address0,bucket_5_ce0,bucket_5_we0,bucket_5_d0,bucket_5_q0,bucket_6_address0,bucket_6_ce0,bucket_6_we0,bucket_6_d0,bucket_6_q0,bucket_7_address0,bucket_7_ce0,bucket_7_we0,bucket_7_d0,bucket_7_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
output  [7:0] a_7_address0;
output   a_7_ce0;
output   a_7_we0;
output  [31:0] a_7_d0;
output  [7:0] a_6_address0;
output   a_6_ce0;
output   a_6_we0;
output  [31:0] a_6_d0;
output  [7:0] a_5_address0;
output   a_5_ce0;
output   a_5_we0;
output  [31:0] a_5_d0;
output  [7:0] a_4_address0;
output   a_4_ce0;
output   a_4_we0;
output  [31:0] a_4_d0;
output  [7:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
output  [7:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
output  [7:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
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
input  [4:0] zext_ln63;
output  [7:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln68_reg_778;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] zext_ln63_cast_fu_452_p1;
reg   [31:0] zext_ln63_cast_reg_773;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln68_fu_474_p2;
wire   [2:0] select_ln65_fu_498_p3;
reg   [2:0] select_ln65_reg_782;
wire   [9:0] select_ln68_fu_512_p3;
reg   [9:0] select_ln68_reg_788;
wire   [8:0] empty_fu_520_p1;
reg   [8:0] empty_reg_793;
wire   [2:0] trunc_ln70_fu_550_p1;
reg   [2:0] trunc_ln70_reg_798;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_6_fu_586_p19;
reg   [31:0] tmp_6_reg_843;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] tmp_6_reg_843_pp0_iter1_reg;
wire   [2:0] trunc_ln72_fu_650_p1;
reg   [2:0] trunc_ln72_reg_856;
reg   [7:0] lshr_ln72_2_reg_861;
reg   [7:0] bucket_0_addr_reg_866;
reg   [7:0] bucket_1_addr_reg_871;
reg   [7:0] bucket_2_addr_reg_876;
reg   [7:0] bucket_3_addr_reg_881;
reg   [7:0] bucket_4_addr_reg_886;
reg   [7:0] bucket_5_addr_reg_891;
reg   [7:0] bucket_6_addr_reg_896;
reg   [7:0] bucket_7_addr_reg_901;
wire   [31:0] tmp_7_fu_675_p19;
reg   [31:0] tmp_7_reg_906;
wire   [2:0] trunc_ln72_1_fu_714_p1;
reg   [2:0] trunc_ln72_1_reg_911;
reg   [7:0] lshr_ln72_3_reg_915;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln70_fu_564_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln72_fu_664_p1;
wire   [63:0] zext_ln72_1_fu_728_p1;
wire    ap_block_pp0_stage0;
reg   [2:0] i_fu_122;
wire   [2:0] add_ln69_fu_576_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_load;
reg   [9:0] blockID_fu_126;
reg   [9:0] ap_sig_allocacmp_blockID_load;
reg   [11:0] indvar_flatten13_fu_130;
wire   [11:0] add_ln68_fu_480_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten13_load;
reg    b_0_ce0_local;
reg    b_1_ce0_local;
reg    b_2_ce0_local;
reg    b_3_ce0_local;
reg    b_4_ce0_local;
reg    b_5_ce0_local;
reg    b_6_ce0_local;
reg    b_7_ce0_local;
reg    bucket_0_ce0_local;
reg   [7:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
wire   [31:0] add_ln73_fu_739_p2;
reg    bucket_1_ce0_local;
reg   [7:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
reg    bucket_2_ce0_local;
reg   [7:0] bucket_2_address0_local;
reg    bucket_2_we0_local;
reg    bucket_3_ce0_local;
reg   [7:0] bucket_3_address0_local;
reg    bucket_3_we0_local;
reg    bucket_4_ce0_local;
reg   [7:0] bucket_4_address0_local;
reg    bucket_4_we0_local;
reg    bucket_5_ce0_local;
reg   [7:0] bucket_5_address0_local;
reg    bucket_5_we0_local;
reg    bucket_6_ce0_local;
reg   [7:0] bucket_6_address0_local;
reg    bucket_6_we0_local;
reg    bucket_7_ce0_local;
reg   [7:0] bucket_7_address0_local;
reg    bucket_7_we0_local;
reg    a_6_we0_local;
reg    a_6_ce0_local;
reg    a_5_we0_local;
reg    a_5_ce0_local;
reg    a_4_we0_local;
reg    a_4_ce0_local;
reg    a_3_we0_local;
reg    a_3_ce0_local;
reg    a_2_we0_local;
reg    a_2_ce0_local;
reg    a_1_we0_local;
reg    a_1_ce0_local;
reg    a_0_we0_local;
reg    a_0_ce0_local;
reg    a_7_we0_local;
reg    a_7_ce0_local;
wire   [0:0] icmp_ln69_fu_492_p2;
wire   [9:0] add_ln68_1_fu_506_p2;
wire   [10:0] zext_ln69_fu_541_p1;
wire   [10:0] tmp_s_fu_534_p3;
wire   [10:0] add_ln70_fu_544_p2;
wire   [7:0] lshr_ln70_1_fu_554_p4;
wire   [31:0] tmp_6_fu_586_p17;
wire    ap_block_pp0_stage2;
wire   [31:0] ashr_ln70_fu_628_p2;
wire   [1:0] trunc_ln70_1_fu_632_p1;
wire   [10:0] zext_ln68_fu_625_p1;
wire   [10:0] shl_ln70_1_fu_636_p3;
wire   [10:0] add_ln70_1_fu_644_p2;
wire   [31:0] tmp_7_fu_675_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_6_fu_586_p1;
wire   [2:0] tmp_6_fu_586_p3;
wire   [2:0] tmp_6_fu_586_p5;
wire   [2:0] tmp_6_fu_586_p7;
wire  signed [2:0] tmp_6_fu_586_p9;
wire  signed [2:0] tmp_6_fu_586_p11;
wire  signed [2:0] tmp_6_fu_586_p13;
wire  signed [2:0] tmp_6_fu_586_p15;
wire   [2:0] tmp_7_fu_675_p1;
wire   [2:0] tmp_7_fu_675_p3;
wire   [2:0] tmp_7_fu_675_p5;
wire   [2:0] tmp_7_fu_675_p7;
wire  signed [2:0] tmp_7_fu_675_p9;
wire  signed [2:0] tmp_7_fu_675_p11;
wire  signed [2:0] tmp_7_fu_675_p13;
wire  signed [2:0] tmp_7_fu_675_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_122 = 3'd0;
#0 blockID_fu_126 = 10'd0;
#0 indvar_flatten13_fu_130 = 12'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U96(.din0(b_0_q0),.din1(b_1_q0),.din2(b_2_q0),.din3(b_3_q0),.din4(b_4_q0),.din5(b_5_q0),.din6(b_6_q0),.din7(b_7_q0),.def(tmp_6_fu_586_p17),.sel(trunc_ln70_reg_798),.dout(tmp_6_fu_586_p19));
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U97(.din0(bucket_0_q0),.din1(bucket_1_q0),.din2(bucket_2_q0),.din3(bucket_3_q0),.din4(bucket_4_q0),.din5(bucket_5_q0),.din6(bucket_6_q0),.din7(bucket_7_q0),.def(tmp_7_fu_675_p17),.sel(trunc_ln72_reg_856),.dout(tmp_7_fu_675_p19));
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_474_p2 == 1'd0))) begin
            blockID_fu_126 <= select_ln68_fu_512_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            blockID_fu_126 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_122 <= 3'd0;
    end else if (((icmp_ln68_reg_778 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_122 <= add_ln69_fu_576_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_474_p2 == 1'd0))) begin
            indvar_flatten13_fu_130 <= add_ln68_fu_480_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten13_fu_130 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_addr_reg_866 <= zext_ln72_fu_664_p1;
        bucket_1_addr_reg_871 <= zext_ln72_fu_664_p1;
        bucket_2_addr_reg_876 <= zext_ln72_fu_664_p1;
        bucket_3_addr_reg_881 <= zext_ln72_fu_664_p1;
        bucket_4_addr_reg_886 <= zext_ln72_fu_664_p1;
        bucket_5_addr_reg_891 <= zext_ln72_fu_664_p1;
        bucket_6_addr_reg_896 <= zext_ln72_fu_664_p1;
        bucket_7_addr_reg_901 <= zext_ln72_fu_664_p1;
        trunc_ln70_reg_798 <= trunc_ln70_fu_550_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_793 <= empty_fu_520_p1;
        icmp_ln68_reg_778 <= icmp_ln68_fu_474_p2;
        lshr_ln72_2_reg_861 <= {{add_ln70_1_fu_644_p2[10:3]}};
        select_ln65_reg_782 <= select_ln65_fu_498_p3;
        select_ln68_reg_788 <= select_ln68_fu_512_p3;
        trunc_ln72_reg_856 <= trunc_ln72_fu_650_p1;
        zext_ln63_cast_reg_773[4 : 0] <= zext_ln63_cast_fu_452_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        lshr_ln72_3_reg_915 <= {{tmp_7_fu_675_p19[10:3]}};
        tmp_6_reg_843 <= tmp_6_fu_586_p19;
        tmp_6_reg_843_pp0_iter1_reg <= tmp_6_reg_843;
        tmp_7_reg_906 <= tmp_7_fu_675_p19;
        trunc_ln72_1_reg_911 <= trunc_ln72_1_fu_714_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln72_1_reg_911 == 3'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln72_1_reg_911 == 3'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln72_1_reg_911 == 3'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_2_we0_local = 1'b1;
    end else begin
        a_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln72_1_reg_911 == 3'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_3_we0_local = 1'b1;
    end else begin
        a_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_4_ce0_local = 1'b1;
    end else begin
        a_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln72_1_reg_911 == 3'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_4_we0_local = 1'b1;
    end else begin
        a_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_5_ce0_local = 1'b1;
    end else begin
        a_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln72_1_reg_911 == 3'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_5_we0_local = 1'b1;
    end else begin
        a_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_6_ce0_local = 1'b1;
    end else begin
        a_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln72_1_reg_911 == 3'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_6_we0_local = 1'b1;
    end else begin
        a_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_7_ce0_local = 1'b1;
    end else begin
        a_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln72_1_reg_911 == 3'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_7_we0_local = 1'b1;
    end else begin
        a_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_778 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_778 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
        ap_sig_allocacmp_blockID_load = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_load = blockID_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 3'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten13_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_ce0_local = 1'b1;
    end else begin
        b_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_1_ce0_local = 1'b1;
    end else begin
        b_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_2_ce0_local = 1'b1;
    end else begin
        b_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_3_ce0_local = 1'b1;
    end else begin
        b_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_4_ce0_local = 1'b1;
    end else begin
        b_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_5_ce0_local = 1'b1;
    end else begin
        b_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_6_ce0_local = 1'b1;
    end else begin
        b_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_7_ce0_local = 1'b1;
    end else begin
        b_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = bucket_0_addr_reg_866;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address0_local = zext_ln72_fu_664_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln72_reg_856 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = bucket_1_addr_reg_871;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address0_local = zext_ln72_fu_664_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln72_reg_856 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address0_local = bucket_2_addr_reg_876;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_address0_local = zext_ln72_fu_664_p1;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln72_reg_856 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address0_local = bucket_3_addr_reg_881;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_address0_local = zext_ln72_fu_664_p1;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln72_reg_856 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_4_address0_local = bucket_4_addr_reg_886;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_4_address0_local = zext_ln72_fu_664_p1;
    end else begin
        bucket_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_4_ce0_local = 1'b1;
    end else begin
        bucket_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln72_reg_856 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_4_we0_local = 1'b1;
    end else begin
        bucket_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_5_address0_local = bucket_5_addr_reg_891;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_5_address0_local = zext_ln72_fu_664_p1;
    end else begin
        bucket_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_5_ce0_local = 1'b1;
    end else begin
        bucket_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln72_reg_856 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_5_we0_local = 1'b1;
    end else begin
        bucket_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_6_address0_local = bucket_6_addr_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_6_address0_local = zext_ln72_fu_664_p1;
    end else begin
        bucket_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_6_ce0_local = 1'b1;
    end else begin
        bucket_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln72_reg_856 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_6_we0_local = 1'b1;
    end else begin
        bucket_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_7_address0_local = bucket_7_addr_reg_901;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_7_address0_local = zext_ln72_fu_664_p1;
    end else begin
        bucket_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_7_ce0_local = 1'b1;
    end else begin
        bucket_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln72_reg_856 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_7_we0_local = 1'b1;
    end else begin
        bucket_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign a_0_address0 = zext_ln72_1_fu_728_p1;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = tmp_6_reg_843_pp0_iter1_reg;
assign a_0_we0 = a_0_we0_local;
assign a_1_address0 = zext_ln72_1_fu_728_p1;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = tmp_6_reg_843_pp0_iter1_reg;
assign a_1_we0 = a_1_we0_local;
assign a_2_address0 = zext_ln72_1_fu_728_p1;
assign a_2_ce0 = a_2_ce0_local;
assign a_2_d0 = tmp_6_reg_843_pp0_iter1_reg;
assign a_2_we0 = a_2_we0_local;
assign a_3_address0 = zext_ln72_1_fu_728_p1;
assign a_3_ce0 = a_3_ce0_local;
assign a_3_d0 = tmp_6_reg_843_pp0_iter1_reg;
assign a_3_we0 = a_3_we0_local;
assign a_4_address0 = zext_ln72_1_fu_728_p1;
assign a_4_ce0 = a_4_ce0_local;
assign a_4_d0 = tmp_6_reg_843_pp0_iter1_reg;
assign a_4_we0 = a_4_we0_local;
assign a_5_address0 = zext_ln72_1_fu_728_p1;
assign a_5_ce0 = a_5_ce0_local;
assign a_5_d0 = tmp_6_reg_843_pp0_iter1_reg;
assign a_5_we0 = a_5_we0_local;
assign a_6_address0 = zext_ln72_1_fu_728_p1;
assign a_6_ce0 = a_6_ce0_local;
assign a_6_d0 = tmp_6_reg_843_pp0_iter1_reg;
assign a_6_we0 = a_6_we0_local;
assign a_7_address0 = zext_ln72_1_fu_728_p1;
assign a_7_ce0 = a_7_ce0_local;
assign a_7_d0 = tmp_6_reg_843_pp0_iter1_reg;
assign a_7_we0 = a_7_we0_local;
assign add_ln68_1_fu_506_p2 = (ap_sig_allocacmp_blockID_load + 10'd1);
assign add_ln68_fu_480_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 12'd1);
assign add_ln69_fu_576_p2 = (select_ln65_reg_782 + 3'd1);
assign add_ln70_1_fu_644_p2 = (zext_ln68_fu_625_p1 + shl_ln70_1_fu_636_p3);
assign add_ln70_fu_544_p2 = (zext_ln69_fu_541_p1 + tmp_s_fu_534_p3);
assign add_ln73_fu_739_p2 = (tmp_7_reg_906 + 32'd1);
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
assign ashr_ln70_fu_628_p2 = $signed(tmp_6_reg_843) >>> zext_ln63_cast_reg_773;
assign b_0_address0 = zext_ln70_fu_564_p1;
assign b_0_ce0 = b_0_ce0_local;
assign b_1_address0 = zext_ln70_fu_564_p1;
assign b_1_ce0 = b_1_ce0_local;
assign b_2_address0 = zext_ln70_fu_564_p1;
assign b_2_ce0 = b_2_ce0_local;
assign b_3_address0 = zext_ln70_fu_564_p1;
assign b_3_ce0 = b_3_ce0_local;
assign b_4_address0 = zext_ln70_fu_564_p1;
assign b_4_ce0 = b_4_ce0_local;
assign b_5_address0 = zext_ln70_fu_564_p1;
assign b_5_ce0 = b_5_ce0_local;
assign b_6_address0 = zext_ln70_fu_564_p1;
assign b_6_ce0 = b_6_ce0_local;
assign b_7_address0 = zext_ln70_fu_564_p1;
assign b_7_ce0 = b_7_ce0_local;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_d0 = add_ln73_fu_739_p2;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_d0 = add_ln73_fu_739_p2;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_2_address0 = bucket_2_address0_local;
assign bucket_2_ce0 = bucket_2_ce0_local;
assign bucket_2_d0 = add_ln73_fu_739_p2;
assign bucket_2_we0 = bucket_2_we0_local;
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_d0 = add_ln73_fu_739_p2;
assign bucket_3_we0 = bucket_3_we0_local;
assign bucket_4_address0 = bucket_4_address0_local;
assign bucket_4_ce0 = bucket_4_ce0_local;
assign bucket_4_d0 = add_ln73_fu_739_p2;
assign bucket_4_we0 = bucket_4_we0_local;
assign bucket_5_address0 = bucket_5_address0_local;
assign bucket_5_ce0 = bucket_5_ce0_local;
assign bucket_5_d0 = add_ln73_fu_739_p2;
assign bucket_5_we0 = bucket_5_we0_local;
assign bucket_6_address0 = bucket_6_address0_local;
assign bucket_6_ce0 = bucket_6_ce0_local;
assign bucket_6_d0 = add_ln73_fu_739_p2;
assign bucket_6_we0 = bucket_6_we0_local;
assign bucket_7_address0 = bucket_7_address0_local;
assign bucket_7_ce0 = bucket_7_ce0_local;
assign bucket_7_d0 = add_ln73_fu_739_p2;
assign bucket_7_we0 = bucket_7_we0_local;
assign empty_fu_520_p1 = select_ln68_fu_512_p3[8:0];
assign icmp_ln68_fu_474_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln69_fu_492_p2 = ((ap_sig_allocacmp_i_load == 3'd4) ? 1'b1 : 1'b0);
assign lshr_ln70_1_fu_554_p4 = {{add_ln70_fu_544_p2[10:3]}};
assign select_ln65_fu_498_p3 = ((icmp_ln69_fu_492_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_i_load);
assign select_ln68_fu_512_p3 = ((icmp_ln69_fu_492_p2[0:0] == 1'b1) ? add_ln68_1_fu_506_p2 : ap_sig_allocacmp_blockID_load);
assign shl_ln70_1_fu_636_p3 = {{trunc_ln70_1_fu_632_p1}, {9'd0}};
assign tmp_6_fu_586_p17 = 'bx;
assign tmp_7_fu_675_p17 = 'bx;
assign tmp_s_fu_534_p3 = {{empty_reg_793}, {2'd0}};
assign trunc_ln70_1_fu_632_p1 = ashr_ln70_fu_628_p2[1:0];
assign trunc_ln70_fu_550_p1 = add_ln70_fu_544_p2[2:0];
assign trunc_ln72_1_fu_714_p1 = tmp_7_fu_675_p19[2:0];
assign trunc_ln72_fu_650_p1 = add_ln70_1_fu_644_p2[2:0];
assign zext_ln63_cast_fu_452_p1 = zext_ln63;
assign zext_ln68_fu_625_p1 = select_ln68_reg_788;
assign zext_ln69_fu_541_p1 = select_ln65_reg_782;
assign zext_ln70_fu_564_p1 = lshr_ln70_1_fu_554_p4;
assign zext_ln72_1_fu_728_p1 = lshr_ln72_3_reg_915;
assign zext_ln72_fu_664_p1 = lshr_ln72_2_reg_861;
always @ (posedge ap_clk) begin
    zext_ln63_cast_reg_773[31:5] <= 27'b000000000000000000000000000;
end
endmodule 