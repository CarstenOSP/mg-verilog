module ms_mergesort_merge_Pipeline_merge_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,j,stop,a_0_address0,a_0_ce0,a_0_q0,a_1_address0,a_1_ce0,a_1_q0,a_2_address0,a_2_ce0,a_2_q0,a_3_address0,a_3_ce0,a_3_q0,a_4_address0,a_4_ce0,a_4_q0,a_5_address0,a_5_ce0,a_5_q0,a_6_address0,a_6_ce0,a_6_q0,a_7_address0,a_7_ce0,a_7_q0,add9,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1,temp_1_address0,temp_1_ce0,temp_1_we0,temp_1_d0,temp_1_address1,temp_1_ce1,temp_1_we1,temp_1_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] j;
input  [31:0] stop;
output  [7:0] a_0_address0;
output   a_0_ce0;
input  [31:0] a_0_q0;
output  [7:0] a_1_address0;
output   a_1_ce0;
input  [31:0] a_1_q0;
output  [7:0] a_2_address0;
output   a_2_ce0;
input  [31:0] a_2_q0;
output  [7:0] a_3_address0;
output   a_3_ce0;
input  [31:0] a_3_q0;
output  [7:0] a_4_address0;
output   a_4_ce0;
input  [31:0] a_4_q0;
output  [7:0] a_5_address0;
output   a_5_ce0;
input  [31:0] a_5_q0;
output  [7:0] a_6_address0;
output   a_6_ce0;
input  [31:0] a_6_q0;
output  [7:0] a_7_address0;
output   a_7_ce0;
input  [31:0] a_7_q0;
input  [10:0] add9;
output  [9:0] temp_address0;
output   temp_ce0;
output   temp_we0;
output  [31:0] temp_d0;
output  [9:0] temp_address1;
output   temp_ce1;
output   temp_we1;
output  [31:0] temp_d1;
output  [9:0] temp_1_address0;
output   temp_1_ce0;
output   temp_1_we0;
output  [31:0] temp_1_d0;
output  [9:0] temp_1_address1;
output   temp_1_ce1;
output   temp_1_we1;
output  [31:0] temp_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11_3_fu_572_p2;
wire   [0:0] icmp_ln11_2_fu_530_p2;
wire   [0:0] icmp_ln11_1_fu_504_p2;
wire   [0:0] icmp_ln11_fu_494_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] j_10_reg_901;
reg   [0:0] icmp_ln11_reg_908;
reg   [0:0] icmp_ln11_reg_908_pp0_iter1_reg;
reg   [0:0] icmp_ln11_reg_908_pp0_iter2_reg;
wire   [2:0] trunc_ln11_fu_500_p1;
reg   [2:0] trunc_ln11_reg_912;
reg   [2:0] trunc_ln11_reg_912_pp0_iter1_reg;
reg   [0:0] icmp_ln11_1_reg_920;
reg   [0:0] icmp_ln11_1_reg_920_pp0_iter1_reg;
reg   [0:0] icmp_ln11_1_reg_920_pp0_iter2_reg;
reg   [7:0] lshr_ln11_1_reg_924;
reg   [0:0] icmp_ln11_2_reg_929;
reg   [0:0] icmp_ln11_2_reg_929_pp0_iter1_reg;
reg   [0:0] icmp_ln11_2_reg_929_pp0_iter2_reg;
reg   [9:0] lshr_ln12_2_reg_933;
reg   [9:0] lshr_ln12_2_reg_933_pp0_iter1_reg;
reg   [9:0] lshr_ln12_2_reg_933_pp0_iter2_reg;
reg   [7:0] lshr_ln11_2_reg_938;
reg   [0:0] icmp_ln11_3_reg_943;
reg   [0:0] icmp_ln11_3_reg_943_pp0_iter1_reg;
reg   [9:0] lshr_ln12_3_reg_947;
reg   [9:0] lshr_ln12_3_reg_947_pp0_iter1_reg;
reg   [9:0] lshr_ln12_3_reg_947_pp0_iter2_reg;
wire   [0:0] trunc_ln12_fu_623_p1;
reg   [0:0] trunc_ln12_reg_992;
reg   [0:0] trunc_ln12_reg_992_pp0_iter2_reg;
reg   [9:0] lshr_ln_reg_996;
reg   [9:0] lshr_ln_reg_996_pp0_iter2_reg;
reg   [9:0] lshr_ln12_1_reg_1041;
reg   [9:0] lshr_ln12_1_reg_1041_pp0_iter2_reg;
wire   [31:0] tmp_4_fu_712_p19;
reg   [31:0] tmp_4_reg_1126;
wire   [31:0] tmp_5_fu_751_p19;
reg   [31:0] tmp_5_reg_1132;
wire   [31:0] tmp_6_fu_790_p19;
reg   [31:0] tmp_6_reg_1138;
wire   [31:0] tmp_7_fu_829_p19;
reg   [31:0] tmp_7_reg_1144;
wire   [63:0] zext_ln5_4_fu_606_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln11_fu_653_p1;
wire   [63:0] zext_ln11_1_fu_680_p1;
wire   [63:0] zext_ln11_2_fu_691_p1;
wire   [63:0] zext_ln12_fu_868_p1;
wire   [63:0] zext_ln12_1_fu_873_p1;
wire   [63:0] zext_ln12_2_fu_878_p1;
wire   [63:0] zext_ln12_3_fu_883_p1;
reg   [31:0] j_1_fu_86;
wire   [31:0] add_ln11_3_fu_702_p2;
reg   [31:0] ap_sig_allocacmp_j_10;
wire    ap_loop_init;
reg    a_0_ce0_local;
reg   [7:0] a_0_address0_local;
reg    a_1_ce0_local;
reg   [7:0] a_1_address0_local;
reg    a_2_ce0_local;
reg   [7:0] a_2_address0_local;
reg    a_3_ce0_local;
reg   [7:0] a_3_address0_local;
reg    a_4_ce0_local;
reg   [7:0] a_4_address0_local;
reg    a_5_ce0_local;
reg   [7:0] a_5_address0_local;
reg    a_6_ce0_local;
reg   [7:0] a_6_address0_local;
reg    a_7_ce0_local;
reg   [7:0] a_7_address0_local;
reg    temp_we1_local;
reg   [31:0] temp_d1_local;
reg    temp_ce1_local;
reg   [9:0] temp_address1_local;
reg    temp_we0_local;
reg   [31:0] temp_d0_local;
reg    temp_ce0_local;
reg   [9:0] temp_address0_local;
reg    ap_predicate_pred509_state4;
reg    temp_1_we1_local;
reg   [31:0] temp_1_d1_local;
reg    temp_1_ce1_local;
reg   [9:0] temp_1_address1_local;
reg    temp_1_we0_local;
reg   [31:0] temp_1_d0_local;
reg    temp_1_ce0_local;
reg   [9:0] temp_1_address0_local;
reg    ap_predicate_pred535_state4;
wire   [31:0] add_ln11_1_fu_510_p2;
wire   [10:0] trunc_ln11_2_fu_516_p1;
wire   [10:0] sub_ln12_2_fu_536_p2;
wire   [31:0] add_ln11_2_fu_552_p2;
wire   [10:0] trunc_ln11_3_fu_558_p1;
wire   [10:0] sub_ln12_3_fu_578_p2;
wire   [7:0] lshr_ln5_2_fu_597_p4;
wire   [10:0] trunc_ln11_1_fu_594_p1;
wire   [10:0] sub_ln12_fu_618_p2;
wire   [10:0] add_ln11_fu_637_p2;
wire   [7:0] lshr_ln1_fu_643_p4;
wire   [10:0] sub_ln12_1_fu_665_p2;
wire   [31:0] tmp_4_fu_712_p17;
wire   [31:0] tmp_5_fu_751_p17;
wire   [31:0] tmp_6_fu_790_p17;
wire   [31:0] tmp_7_fu_829_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_782;
reg    ap_condition_787;
reg    ap_condition_779;
reg    ap_condition_793;
reg    ap_condition_796;
reg    ap_condition_800;
reg    ap_condition_803;
reg    ap_condition_807;
reg    ap_condition_810;
reg    ap_condition_814;
reg    ap_condition_817;
reg    ap_condition_821;
reg    ap_condition_824;
reg    ap_condition_828;
reg    ap_condition_831;
reg    ap_condition_835;
reg    ap_condition_838;
reg    ap_condition_844;
reg    ap_condition_525;
reg    ap_condition_360;
reg    ap_condition_495;
wire   [2:0] tmp_4_fu_712_p1;
wire   [2:0] tmp_4_fu_712_p3;
wire   [2:0] tmp_4_fu_712_p5;
wire   [2:0] tmp_4_fu_712_p7;
wire  signed [2:0] tmp_4_fu_712_p9;
wire  signed [2:0] tmp_4_fu_712_p11;
wire  signed [2:0] tmp_4_fu_712_p13;
wire  signed [2:0] tmp_4_fu_712_p15;
wire  signed [2:0] tmp_5_fu_751_p1;
wire   [2:0] tmp_5_fu_751_p3;
wire   [2:0] tmp_5_fu_751_p5;
wire   [2:0] tmp_5_fu_751_p7;
wire   [2:0] tmp_5_fu_751_p9;
wire  signed [2:0] tmp_5_fu_751_p11;
wire  signed [2:0] tmp_5_fu_751_p13;
wire  signed [2:0] tmp_5_fu_751_p15;
wire  signed [2:0] tmp_6_fu_790_p1;
wire  signed [2:0] tmp_6_fu_790_p3;
wire   [2:0] tmp_6_fu_790_p5;
wire   [2:0] tmp_6_fu_790_p7;
wire   [2:0] tmp_6_fu_790_p9;
wire   [2:0] tmp_6_fu_790_p11;
wire  signed [2:0] tmp_6_fu_790_p13;
wire  signed [2:0] tmp_6_fu_790_p15;
wire  signed [2:0] tmp_7_fu_829_p1;
wire  signed [2:0] tmp_7_fu_829_p3;
wire  signed [2:0] tmp_7_fu_829_p5;
wire   [2:0] tmp_7_fu_829_p7;
wire   [2:0] tmp_7_fu_829_p9;
wire   [2:0] tmp_7_fu_829_p11;
wire   [2:0] tmp_7_fu_829_p13;
wire  signed [2:0] tmp_7_fu_829_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 j_1_fu_86 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U21(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.din4(a_4_q0),.din5(a_5_q0),.din6(a_6_q0),.din7(a_7_q0),.def(tmp_4_fu_712_p17),.sel(trunc_ln11_reg_912_pp0_iter1_reg),.dout(tmp_4_fu_712_p19));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U22(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.din4(a_4_q0),.din5(a_5_q0),.din6(a_6_q0),.din7(a_7_q0),.def(tmp_5_fu_751_p17),.sel(trunc_ln11_reg_912_pp0_iter1_reg),.dout(tmp_5_fu_751_p19));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h7 ),.din1_WIDTH( 32 ),.CASE2( 3'h0 ),.din2_WIDTH( 32 ),.CASE3( 3'h1 ),.din3_WIDTH( 32 ),.CASE4( 3'h2 ),.din4_WIDTH( 32 ),.CASE5( 3'h3 ),.din5_WIDTH( 32 ),.CASE6( 3'h4 ),.din6_WIDTH( 32 ),.CASE7( 3'h5 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U23(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.din4(a_4_q0),.din5(a_5_q0),.din6(a_6_q0),.din7(a_7_q0),.def(tmp_6_fu_790_p17),.sel(trunc_ln11_reg_912_pp0_iter1_reg),.dout(tmp_6_fu_790_p19));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 32 ),.CASE1( 3'h6 ),.din1_WIDTH( 32 ),.CASE2( 3'h7 ),.din2_WIDTH( 32 ),.CASE3( 3'h0 ),.din3_WIDTH( 32 ),.CASE4( 3'h1 ),.din4_WIDTH( 32 ),.CASE5( 3'h2 ),.din5_WIDTH( 32 ),.CASE6( 3'h3 ),.din6_WIDTH( 32 ),.CASE7( 3'h4 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U24(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.din4(a_4_q0),.din5(a_5_q0),.din6(a_6_q0),.din7(a_7_q0),.def(tmp_7_fu_829_p17),.sel(trunc_ln11_reg_912_pp0_iter1_reg),.dout(tmp_7_fu_829_p19));
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_1_fu_86 <= j;
        end else if ((1'b1 == ap_condition_844)) begin
            j_1_fu_86 <= add_ln11_3_fu_702_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln11_1_reg_920 <= icmp_ln11_1_fu_504_p2;
        icmp_ln11_1_reg_920_pp0_iter1_reg <= icmp_ln11_1_reg_920;
        icmp_ln11_2_reg_929 <= icmp_ln11_2_fu_530_p2;
        icmp_ln11_2_reg_929_pp0_iter1_reg <= icmp_ln11_2_reg_929;
        icmp_ln11_3_reg_943 <= icmp_ln11_3_fu_572_p2;
        icmp_ln11_3_reg_943_pp0_iter1_reg <= icmp_ln11_3_reg_943;
        icmp_ln11_reg_908 <= icmp_ln11_fu_494_p2;
        icmp_ln11_reg_908_pp0_iter1_reg <= icmp_ln11_reg_908;
        j_10_reg_901 <= ap_sig_allocacmp_j_10;
        lshr_ln11_1_reg_924 <= {{add_ln11_1_fu_510_p2[10:3]}};
        lshr_ln11_2_reg_938 <= {{add_ln11_2_fu_552_p2[10:3]}};
        lshr_ln12_1_reg_1041 <= {{sub_ln12_1_fu_665_p2[10:1]}};
        lshr_ln12_2_reg_933 <= {{sub_ln12_2_fu_536_p2[10:1]}};
        lshr_ln12_2_reg_933_pp0_iter1_reg <= lshr_ln12_2_reg_933;
        lshr_ln12_3_reg_947 <= {{sub_ln12_3_fu_578_p2[10:1]}};
        lshr_ln12_3_reg_947_pp0_iter1_reg <= lshr_ln12_3_reg_947;
        lshr_ln_reg_996 <= {{sub_ln12_fu_618_p2[10:1]}};
        trunc_ln11_reg_912 <= trunc_ln11_fu_500_p1;
        trunc_ln11_reg_912_pp0_iter1_reg <= trunc_ln11_reg_912;
        trunc_ln12_reg_992 <= trunc_ln12_fu_623_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_predicate_pred509_state4 <= ((trunc_ln12_reg_992 == 1'd1) & (icmp_ln11_3_reg_943_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_929_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_920_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter1_reg == 1'd0));
        ap_predicate_pred535_state4 <= ((trunc_ln12_reg_992 == 1'd0) & (icmp_ln11_3_reg_943_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_929_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_920_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter1_reg == 1'd0));
        icmp_ln11_1_reg_920_pp0_iter2_reg <= icmp_ln11_1_reg_920_pp0_iter1_reg;
        icmp_ln11_2_reg_929_pp0_iter2_reg <= icmp_ln11_2_reg_929_pp0_iter1_reg;
        icmp_ln11_reg_908_pp0_iter2_reg <= icmp_ln11_reg_908_pp0_iter1_reg;
        lshr_ln12_1_reg_1041_pp0_iter2_reg <= lshr_ln12_1_reg_1041;
        lshr_ln12_2_reg_933_pp0_iter2_reg <= lshr_ln12_2_reg_933_pp0_iter1_reg;
        lshr_ln12_3_reg_947_pp0_iter2_reg <= lshr_ln12_3_reg_947_pp0_iter1_reg;
        lshr_ln_reg_996_pp0_iter2_reg <= lshr_ln_reg_996;
        tmp_4_reg_1126 <= tmp_4_fu_712_p19;
        tmp_5_reg_1132 <= tmp_5_fu_751_p19;
        tmp_6_reg_1138 <= tmp_6_fu_790_p19;
        tmp_7_reg_1144 <= tmp_7_fu_829_p19;
        trunc_ln12_reg_992_pp0_iter2_reg <= trunc_ln12_reg_992;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_779)) begin
        if ((1'b1 == ap_condition_787)) begin
            a_0_address0_local = zext_ln11_2_fu_691_p1;
        end else if ((1'b1 == ap_condition_782)) begin
            a_0_address0_local = zext_ln11_1_fu_680_p1;
        end else if (((icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd7))) begin
            a_0_address0_local = zext_ln11_fu_653_p1;
        end else if ((trunc_ln11_reg_912 == 3'd0)) begin
            a_0_address0_local = zext_ln5_4_fu_606_p1;
        end else begin
            a_0_address0_local = 'bx;
        end
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd5) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd6) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd7) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_912 == 3'd0) & (icmp_ln11_reg_908 == 1'd0)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_779)) begin
        if ((1'b1 == ap_condition_796)) begin
            a_1_address0_local = zext_ln11_2_fu_691_p1;
        end else if ((1'b1 == ap_condition_793)) begin
            a_1_address0_local = zext_ln11_1_fu_680_p1;
        end else if (((icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd0))) begin
            a_1_address0_local = zext_ln11_fu_653_p1;
        end else if ((trunc_ln11_reg_912 == 3'd1)) begin
            a_1_address0_local = zext_ln5_4_fu_606_p1;
        end else begin
            a_1_address0_local = 'bx;
        end
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd6) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd7) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd0) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_912 == 3'd1) & (icmp_ln11_reg_908 == 1'd0)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_779)) begin
        if ((1'b1 == ap_condition_803)) begin
            a_2_address0_local = zext_ln11_2_fu_691_p1;
        end else if ((1'b1 == ap_condition_800)) begin
            a_2_address0_local = zext_ln11_1_fu_680_p1;
        end else if (((icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd1))) begin
            a_2_address0_local = zext_ln11_fu_653_p1;
        end else if ((trunc_ln11_reg_912 == 3'd2)) begin
            a_2_address0_local = zext_ln5_4_fu_606_p1;
        end else begin
            a_2_address0_local = 'bx;
        end
    end else begin
        a_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd7) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd0) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd1) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_912 == 3'd2) & (icmp_ln11_reg_908 == 1'd0)))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_779)) begin
        if ((1'b1 == ap_condition_810)) begin
            a_3_address0_local = zext_ln11_2_fu_691_p1;
        end else if ((1'b1 == ap_condition_807)) begin
            a_3_address0_local = zext_ln11_1_fu_680_p1;
        end else if (((icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd2))) begin
            a_3_address0_local = zext_ln11_fu_653_p1;
        end else if ((trunc_ln11_reg_912 == 3'd3)) begin
            a_3_address0_local = zext_ln5_4_fu_606_p1;
        end else begin
            a_3_address0_local = 'bx;
        end
    end else begin
        a_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd0) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd1) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd2) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_912 == 3'd3) & (icmp_ln11_reg_908 == 1'd0)))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_779)) begin
        if ((1'b1 == ap_condition_817)) begin
            a_4_address0_local = zext_ln11_2_fu_691_p1;
        end else if ((1'b1 == ap_condition_814)) begin
            a_4_address0_local = zext_ln11_1_fu_680_p1;
        end else if (((icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd3))) begin
            a_4_address0_local = zext_ln11_fu_653_p1;
        end else if ((trunc_ln11_reg_912 == 3'd4)) begin
            a_4_address0_local = zext_ln5_4_fu_606_p1;
        end else begin
            a_4_address0_local = 'bx;
        end
    end else begin
        a_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd1) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd2) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd3) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_912 == 3'd4) & (icmp_ln11_reg_908 == 1'd0)))) begin
        a_4_ce0_local = 1'b1;
    end else begin
        a_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_779)) begin
        if ((1'b1 == ap_condition_824)) begin
            a_5_address0_local = zext_ln11_2_fu_691_p1;
        end else if ((1'b1 == ap_condition_821)) begin
            a_5_address0_local = zext_ln11_1_fu_680_p1;
        end else if (((icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd4))) begin
            a_5_address0_local = zext_ln11_fu_653_p1;
        end else if ((trunc_ln11_reg_912 == 3'd5)) begin
            a_5_address0_local = zext_ln5_4_fu_606_p1;
        end else begin
            a_5_address0_local = 'bx;
        end
    end else begin
        a_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd2) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd3) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd4) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_912 == 3'd5) & (icmp_ln11_reg_908 == 1'd0)))) begin
        a_5_ce0_local = 1'b1;
    end else begin
        a_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_779)) begin
        if ((1'b1 == ap_condition_831)) begin
            a_6_address0_local = zext_ln11_2_fu_691_p1;
        end else if ((1'b1 == ap_condition_828)) begin
            a_6_address0_local = zext_ln11_1_fu_680_p1;
        end else if (((icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd5))) begin
            a_6_address0_local = zext_ln11_fu_653_p1;
        end else if ((trunc_ln11_reg_912 == 3'd6)) begin
            a_6_address0_local = zext_ln5_4_fu_606_p1;
        end else begin
            a_6_address0_local = 'bx;
        end
    end else begin
        a_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd3) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd4) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd5) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_912 == 3'd6) & (icmp_ln11_reg_908 == 1'd0)))) begin
        a_6_ce0_local = 1'b1;
    end else begin
        a_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_779)) begin
        if ((1'b1 == ap_condition_838)) begin
            a_7_address0_local = zext_ln11_2_fu_691_p1;
        end else if ((1'b1 == ap_condition_835)) begin
            a_7_address0_local = zext_ln11_1_fu_680_p1;
        end else if (((icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd6))) begin
            a_7_address0_local = zext_ln11_fu_653_p1;
        end else if ((trunc_ln11_reg_912 == 3'd7)) begin
            a_7_address0_local = zext_ln5_4_fu_606_p1;
        end else begin
            a_7_address0_local = 'bx;
        end
    end else begin
        a_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd4) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd5) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd6) & (icmp_ln11_reg_908 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_912 == 3'd7) & (icmp_ln11_reg_908 == 1'd0)))) begin
        a_7_ce0_local = 1'b1;
    end else begin
        a_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln11_fu_494_p2 == 1'd1) | ((icmp_ln11_1_fu_504_p2 == 1'd0) | ((icmp_ln11_2_fu_530_p2 == 1'd1) | (icmp_ln11_3_fu_572_p2 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_j_10 = j;
        end else if ((1'b1 == ap_condition_844)) begin
            ap_sig_allocacmp_j_10 = add_ln11_3_fu_702_p2;
        end else begin
            ap_sig_allocacmp_j_10 = j_1_fu_86;
        end
    end else begin
        ap_sig_allocacmp_j_10 = j_1_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred535_state4 == 1'b1)) begin
            temp_1_address0_local = zext_ln12_3_fu_883_p1;
        end else if ((1'b1 == ap_condition_525)) begin
            temp_1_address0_local = zext_ln12_2_fu_878_p1;
        end else begin
            temp_1_address0_local = 'bx;
        end
    end else begin
        temp_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_360)) begin
        if (((trunc_ln12_reg_992_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1))) begin
            temp_1_address1_local = zext_ln12_1_fu_873_p1;
        end else if ((trunc_ln12_reg_992_pp0_iter2_reg == 1'd1)) begin
            temp_1_address1_local = zext_ln12_fu_868_p1;
        end else begin
            temp_1_address1_local = 'bx;
        end
    end else begin
        temp_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred535_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_992_pp0_iter2_reg == 1'd1) & (icmp_ln11_2_reg_929_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0)))) begin
        temp_1_ce0_local = 1'b1;
    end else begin
        temp_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_992_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_992_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0)))) begin
        temp_1_ce1_local = 1'b1;
    end else begin
        temp_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred535_state4 == 1'b1)) begin
            temp_1_d0_local = tmp_7_reg_1144;
        end else if ((1'b1 == ap_condition_525)) begin
            temp_1_d0_local = tmp_6_reg_1138;
        end else begin
            temp_1_d0_local = 'bx;
        end
    end else begin
        temp_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_360)) begin
        if (((trunc_ln12_reg_992_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1))) begin
            temp_1_d1_local = tmp_5_reg_1132;
        end else if ((trunc_ln12_reg_992_pp0_iter2_reg == 1'd1)) begin
            temp_1_d1_local = tmp_4_reg_1126;
        end else begin
            temp_1_d1_local = 'bx;
        end
    end else begin
        temp_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred535_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_992_pp0_iter2_reg == 1'd1) & (icmp_ln11_2_reg_929_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0)))) begin
        temp_1_we0_local = 1'b1;
    end else begin
        temp_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_992_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_992_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0)))) begin
        temp_1_we1_local = 1'b1;
    end else begin
        temp_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred509_state4 == 1'b1)) begin
            temp_address0_local = zext_ln12_3_fu_883_p1;
        end else if ((1'b1 == ap_condition_495)) begin
            temp_address0_local = zext_ln12_2_fu_878_p1;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_360)) begin
        if (((trunc_ln12_reg_992_pp0_iter2_reg == 1'd1) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1))) begin
            temp_address1_local = zext_ln12_1_fu_873_p1;
        end else if ((trunc_ln12_reg_992_pp0_iter2_reg == 1'd0)) begin
            temp_address1_local = zext_ln12_fu_868_p1;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred509_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_992_pp0_iter2_reg == 1'd0) & (icmp_ln11_2_reg_929_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_992_pp0_iter2_reg == 1'd1) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_992_pp0_iter2_reg == 1'd0) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred509_state4 == 1'b1)) begin
            temp_d0_local = tmp_7_reg_1144;
        end else if ((1'b1 == ap_condition_495)) begin
            temp_d0_local = tmp_6_reg_1138;
        end else begin
            temp_d0_local = 'bx;
        end
    end else begin
        temp_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_360)) begin
        if (((trunc_ln12_reg_992_pp0_iter2_reg == 1'd1) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1))) begin
            temp_d1_local = tmp_5_reg_1132;
        end else if ((trunc_ln12_reg_992_pp0_iter2_reg == 1'd0)) begin
            temp_d1_local = tmp_4_reg_1126;
        end else begin
            temp_d1_local = 'bx;
        end
    end else begin
        temp_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred509_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_992_pp0_iter2_reg == 1'd0) & (icmp_ln11_2_reg_929_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0)))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_992_pp0_iter2_reg == 1'd1) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_992_pp0_iter2_reg == 1'd0) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0)))) begin
        temp_we1_local = 1'b1;
    end else begin
        temp_we1_local = 1'b0;
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
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_2_address0 = a_2_address0_local;
assign a_2_ce0 = a_2_ce0_local;
assign a_3_address0 = a_3_address0_local;
assign a_3_ce0 = a_3_ce0_local;
assign a_4_address0 = a_4_address0_local;
assign a_4_ce0 = a_4_ce0_local;
assign a_5_address0 = a_5_address0_local;
assign a_5_ce0 = a_5_ce0_local;
assign a_6_address0 = a_6_address0_local;
assign a_6_ce0 = a_6_ce0_local;
assign a_7_address0 = a_7_address0_local;
assign a_7_ce0 = a_7_ce0_local;
assign add_ln11_1_fu_510_p2 = (ap_sig_allocacmp_j_10 + 32'd2);
assign add_ln11_2_fu_552_p2 = (ap_sig_allocacmp_j_10 + 32'd3);
assign add_ln11_3_fu_702_p2 = (j_10_reg_901 + 32'd4);
assign add_ln11_fu_637_p2 = (trunc_ln11_1_fu_594_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_360 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_495 = ((trunc_ln12_reg_992_pp0_iter2_reg == 1'd0) & (icmp_ln11_2_reg_929_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_525 = ((trunc_ln12_reg_992_pp0_iter2_reg == 1'd1) & (icmp_ln11_2_reg_929_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_920_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_908_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_779 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_reg_908 == 1'd0));
end
always @ (*) begin
    ap_condition_782 = ((icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd6));
end
always @ (*) begin
    ap_condition_787 = ((icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd5));
end
always @ (*) begin
    ap_condition_793 = ((icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd7));
end
always @ (*) begin
    ap_condition_796 = ((icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd6));
end
always @ (*) begin
    ap_condition_800 = ((icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd0));
end
always @ (*) begin
    ap_condition_803 = ((icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd7));
end
always @ (*) begin
    ap_condition_807 = ((icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd1));
end
always @ (*) begin
    ap_condition_810 = ((icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd0));
end
always @ (*) begin
    ap_condition_814 = ((icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd2));
end
always @ (*) begin
    ap_condition_817 = ((icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd1));
end
always @ (*) begin
    ap_condition_821 = ((icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd3));
end
always @ (*) begin
    ap_condition_824 = ((icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd2));
end
always @ (*) begin
    ap_condition_828 = ((icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd4));
end
always @ (*) begin
    ap_condition_831 = ((icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd3));
end
always @ (*) begin
    ap_condition_835 = ((icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd5));
end
always @ (*) begin
    ap_condition_838 = ((icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (trunc_ln11_reg_912 == 3'd4));
end
always @ (*) begin
    ap_condition_844 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_3_reg_943 == 1'd0) & (icmp_ln11_2_reg_929 == 1'd0) & (icmp_ln11_1_reg_920 == 1'd1) & (icmp_ln11_reg_908 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln11_1_fu_504_p2 = (($signed(ap_sig_allocacmp_j_10) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_2_fu_530_p2 = (($signed(add_ln11_1_fu_510_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_3_fu_572_p2 = (($signed(add_ln11_2_fu_552_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_494_p2 = (($signed(ap_sig_allocacmp_j_10) > $signed(stop)) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_643_p4 = {{add_ln11_fu_637_p2[10:3]}};
assign lshr_ln5_2_fu_597_p4 = {{j_10_reg_901[10:3]}};
assign sub_ln12_1_fu_665_p2 = (add9 - add_ln11_fu_637_p2);
assign sub_ln12_2_fu_536_p2 = (add9 - trunc_ln11_2_fu_516_p1);
assign sub_ln12_3_fu_578_p2 = (add9 - trunc_ln11_3_fu_558_p1);
assign sub_ln12_fu_618_p2 = (add9 - trunc_ln11_1_fu_594_p1);
assign temp_1_address0 = temp_1_address0_local;
assign temp_1_address1 = temp_1_address1_local;
assign temp_1_ce0 = temp_1_ce0_local;
assign temp_1_ce1 = temp_1_ce1_local;
assign temp_1_d0 = temp_1_d0_local;
assign temp_1_d1 = temp_1_d1_local;
assign temp_1_we0 = temp_1_we0_local;
assign temp_1_we1 = temp_1_we1_local;
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign temp_d0 = temp_d0_local;
assign temp_d1 = temp_d1_local;
assign temp_we0 = temp_we0_local;
assign temp_we1 = temp_we1_local;
assign tmp_4_fu_712_p17 = 'bx;
assign tmp_5_fu_751_p17 = 'bx;
assign tmp_6_fu_790_p17 = 'bx;
assign tmp_7_fu_829_p17 = 'bx;
assign trunc_ln11_1_fu_594_p1 = j_10_reg_901[10:0];
assign trunc_ln11_2_fu_516_p1 = add_ln11_1_fu_510_p2[10:0];
assign trunc_ln11_3_fu_558_p1 = add_ln11_2_fu_552_p2[10:0];
assign trunc_ln11_fu_500_p1 = ap_sig_allocacmp_j_10[2:0];
assign trunc_ln12_fu_623_p1 = sub_ln12_fu_618_p2[0:0];
assign zext_ln11_1_fu_680_p1 = lshr_ln11_1_reg_924;
assign zext_ln11_2_fu_691_p1 = lshr_ln11_2_reg_938;
assign zext_ln11_fu_653_p1 = lshr_ln1_fu_643_p4;
assign zext_ln12_1_fu_873_p1 = lshr_ln12_1_reg_1041_pp0_iter2_reg;
assign zext_ln12_2_fu_878_p1 = lshr_ln12_2_reg_933_pp0_iter2_reg;
assign zext_ln12_3_fu_883_p1 = lshr_ln12_3_reg_947_pp0_iter2_reg;
assign zext_ln12_fu_868_p1 = lshr_ln_reg_996_pp0_iter2_reg;
assign zext_ln5_4_fu_606_p1 = lshr_ln5_2_fu_597_p4;
endmodule 