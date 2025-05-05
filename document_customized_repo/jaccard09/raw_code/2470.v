module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_14_reload,B_4_reload,C_15_reload,D_14_reload,E_4_reload,W_40_load_4,W_42_load_4,W_44_load_4,W_46_load_4,W_48_load_4,W_50_load_4,W_52_load_4,W_54_load_4,W_56_load_4,W_58_load_4,W_41_load_4,W_43_load_4,W_45_load_4,W_47_load_4,W_49_load_4,W_51_load_4,W_53_load_4,W_55_load_4,W_57_load_4,W_59_load_4,A_15_out,A_15_out_ap_vld,B_7_out,B_7_out_ap_vld,E_13_out,E_13_out_ap_vld,D_15_out,D_15_out_ap_vld,E_8_out,E_8_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_14_reload;
input  [31:0] B_4_reload;
input  [31:0] C_15_reload;
input  [31:0] D_14_reload;
input  [31:0] E_4_reload;
input  [31:0] W_40_load_4;
input  [31:0] W_42_load_4;
input  [31:0] W_44_load_4;
input  [31:0] W_46_load_4;
input  [31:0] W_48_load_4;
input  [31:0] W_50_load_4;
input  [31:0] W_52_load_4;
input  [31:0] W_54_load_4;
input  [31:0] W_56_load_4;
input  [31:0] W_58_load_4;
input  [31:0] W_41_load_4;
input  [31:0] W_43_load_4;
input  [31:0] W_45_load_4;
input  [31:0] W_47_load_4;
input  [31:0] W_49_load_4;
input  [31:0] W_51_load_4;
input  [31:0] W_53_load_4;
input  [31:0] W_55_load_4;
input  [31:0] W_57_load_4;
input  [31:0] W_59_load_4;
output  [31:0] A_15_out;
output   A_15_out_ap_vld;
output  [31:0] B_7_out;
output   B_7_out_ap_vld;
output  [31:0] E_13_out;
output   E_13_out_ap_vld;
output  [31:0] D_15_out;
output   D_15_out_ap_vld;
output  [31:0] E_8_out;
output   E_8_out_ap_vld;
reg ap_idle;
reg A_15_out_ap_vld;
reg B_7_out_ap_vld;
reg E_13_out_ap_vld;
reg D_15_out_ap_vld;
reg E_8_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln124_fu_372_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_2_reg_834;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_6_reg_839;
reg   [0:0] icmp_ln124_reg_848;
wire   [31:0] tmp_s_fu_378_p23;
reg   [31:0] tmp_s_reg_852;
wire   [31:0] tmp_2_fu_416_p23;
reg   [31:0] tmp_2_reg_857;
reg   [31:0] E_4_load_reg_862;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] B_5_fu_527_p2;
reg   [31:0] B_5_reg_867;
wire   [26:0] trunc_ln126_2_fu_555_p1;
reg   [26:0] trunc_ln126_2_reg_872;
reg   [4:0] lshr_ln126_2_reg_877;
wire   [31:0] or_ln126_4_fu_585_p2;
reg   [31:0] or_ln126_4_reg_882;
wire   [31:0] add_ln126_6_fu_638_p2;
reg   [31:0] add_ln126_6_reg_887;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [31:0] E_fu_126;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_4_fu_130;
wire   [31:0] D_4_fu_547_p3;
reg   [31:0] B_fu_134;
reg   [31:0] B_3_fu_138;
wire   [31:0] A_fu_662_p2;
reg   [5:0] i_fu_142;
wire   [5:0] add_ln124_fu_643_p2;
reg   [31:0] D_fu_146;
wire   [31:0] C_fu_605_p3;
wire    ap_block_pp0_stage1_01001;
wire    ap_block_pp0_stage0;
wire   [31:0] tmp_s_fu_378_p21;
wire   [31:0] tmp_2_fu_416_p21;
wire   [31:0] or_ln126_fu_480_p2;
wire   [31:0] and_ln126_fu_485_p2;
wire   [31:0] and_ln126_1_fu_491_p2;
wire   [26:0] trunc_ln126_fu_466_p1;
wire   [4:0] lshr_ln4_fu_470_p4;
wire   [31:0] or_ln126_2_fu_502_p3;
wire   [31:0] add_ln126_1_fu_510_p2;
wire   [31:0] or_ln126_1_fu_496_p2;
wire   [31:0] add_ln126_fu_521_p2;
wire   [31:0] add_ln126_2_fu_515_p2;
wire   [1:0] trunc_ln126_1_fu_533_p1;
wire   [29:0] lshr_ln126_1_fu_537_p4;
wire   [31:0] or_ln126_3_fu_569_p2;
wire   [31:0] and_ln126_2_fu_574_p2;
wire   [31:0] and_ln126_3_fu_580_p2;
wire   [1:0] trunc_ln126_3_fu_591_p1;
wire   [29:0] lshr_ln126_3_fu_595_p4;
wire   [31:0] or_ln126_6_fu_627_p3;
wire   [31:0] add_ln126_5_fu_633_p2;
wire   [31:0] add_ln126_4_fu_657_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire  signed [5:0] tmp_s_fu_378_p1;
wire  signed [5:0] tmp_s_fu_378_p3;
wire  signed [5:0] tmp_s_fu_378_p5;
wire  signed [5:0] tmp_s_fu_378_p7;
wire  signed [5:0] tmp_s_fu_378_p9;
wire  signed [5:0] tmp_s_fu_378_p11;
wire  signed [5:0] tmp_s_fu_378_p13;
wire  signed [5:0] tmp_s_fu_378_p15;
wire  signed [5:0] tmp_s_fu_378_p17;
wire  signed [5:0] tmp_s_fu_378_p19;
wire  signed [5:0] tmp_2_fu_416_p1;
wire  signed [5:0] tmp_2_fu_416_p3;
wire  signed [5:0] tmp_2_fu_416_p5;
wire  signed [5:0] tmp_2_fu_416_p7;
wire  signed [5:0] tmp_2_fu_416_p9;
wire  signed [5:0] tmp_2_fu_416_p11;
wire  signed [5:0] tmp_2_fu_416_p13;
wire  signed [5:0] tmp_2_fu_416_p15;
wire  signed [5:0] tmp_2_fu_416_p17;
wire  signed [5:0] tmp_2_fu_416_p19;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_126 = 32'd0;
#0 E_4_fu_130 = 32'd0;
#0 B_fu_134 = 32'd0;
#0 B_3_fu_138 = 32'd0;
#0 i_fu_142 = 6'd0;
#0 D_fu_146 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_21_6_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h2A ),.din1_WIDTH( 32 ),.CASE2( 6'h2C ),.din2_WIDTH( 32 ),.CASE3( 6'h2E ),.din3_WIDTH( 32 ),.CASE4( 6'h30 ),.din4_WIDTH( 32 ),.CASE5( 6'h32 ),.din5_WIDTH( 32 ),.CASE6( 6'h34 ),.din6_WIDTH( 32 ),.CASE7( 6'h36 ),.din7_WIDTH( 32 ),.CASE8( 6'h38 ),.din8_WIDTH( 32 ),.CASE9( 6'h3A ),.din9_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_21_6_32_1_1_x_U149(.din0(W_40_load_4),.din1(W_42_load_4),.din2(W_44_load_4),.din3(W_46_load_4),.din4(W_48_load_4),.din5(W_50_load_4),.din6(W_52_load_4),.din7(W_54_load_4),.din8(W_56_load_4),.din9(W_58_load_4),.def(tmp_s_fu_378_p21),.sel(i_fu_142),.dout(tmp_s_fu_378_p23));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_21_6_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h2A ),.din1_WIDTH( 32 ),.CASE2( 6'h2C ),.din2_WIDTH( 32 ),.CASE3( 6'h2E ),.din3_WIDTH( 32 ),.CASE4( 6'h30 ),.din4_WIDTH( 32 ),.CASE5( 6'h32 ),.din5_WIDTH( 32 ),.CASE6( 6'h34 ),.din6_WIDTH( 32 ),.CASE7( 6'h36 ),.din7_WIDTH( 32 ),.CASE8( 6'h38 ),.din8_WIDTH( 32 ),.CASE9( 6'h3A ),.din9_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_21_6_32_1_1_x_U150(.din0(W_41_load_4),.din1(W_43_load_4),.din2(W_45_load_4),.din3(W_47_load_4),.din4(W_49_load_4),.din5(W_51_load_4),.din6(W_53_load_4),.din7(W_55_load_4),.din8(W_57_load_4),.din9(W_59_load_4),.def(tmp_2_fu_416_p21),.sel(i_fu_142),.dout(tmp_2_fu_416_p23));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        B_3_fu_138 <= A_14_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_3_fu_138 <= A_fu_662_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_134 <= B_4_reload;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln124_reg_848 == 1'd1))) begin
            B_fu_134 <= B_5_reg_867;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        D_fu_146 <= C_15_reload;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_reg_848 == 1'd1))) begin
        D_fu_146 <= C_fu_605_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_4_fu_130 <= D_14_reload;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_reg_848 == 1'd1))) begin
        E_4_fu_130 <= D_4_fu_547_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_fu_126 <= E_4_reload;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_reg_848 == 1'd1))) begin
        E_fu_126 <= E_6_reg_839;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_142 <= 6'd40;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln124_reg_848 == 1'd1))) begin
            i_fu_142 <= add_ln124_fu_643_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_5_reg_867 <= B_5_fu_527_p2;
        E_4_load_reg_862 <= E_4_fu_130;
        lshr_ln126_2_reg_877 <= {{B_5_fu_527_p2[31:27]}};
        or_ln126_4_reg_882 <= or_ln126_4_fu_585_p2;
        trunc_ln126_2_reg_872 <= trunc_ln126_2_fu_555_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_6_reg_839 <= D_fu_146;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_6_reg_887 <= add_ln126_6_fu_638_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_reg_834 <= i_fu_142;
        icmp_ln124_reg_848 <= icmp_ln124_fu_372_p2;
        tmp_2_reg_857 <= tmp_2_fu_416_p23;
        tmp_s_reg_852 <= tmp_s_fu_378_p23;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_15_out_ap_vld = 1'b1;
    end else begin
        A_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_7_out_ap_vld = 1'b1;
    end else begin
        B_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_15_out_ap_vld = 1'b1;
    end else begin
        D_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_13_out_ap_vld = 1'b1;
    end else begin
        E_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_8_out_ap_vld = 1'b1;
    end else begin
        E_8_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
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
assign A_15_out = B_3_fu_138;
assign A_fu_662_p2 = (add_ln126_6_reg_887 + add_ln126_4_fu_657_p2);
assign B_5_fu_527_p2 = (add_ln126_fu_521_p2 + add_ln126_2_fu_515_p2);
assign B_7_out = B_fu_134;
assign C_fu_605_p3 = {{trunc_ln126_3_fu_591_p1}, {lshr_ln126_3_fu_595_p4}};
assign D_15_out = E_4_fu_130;
assign D_4_fu_547_p3 = {{trunc_ln126_1_fu_533_p1}, {lshr_ln126_1_fu_537_p4}};
assign E_13_out = D_fu_146;
assign E_8_out = E_fu_126;
assign add_ln124_fu_643_p2 = (i_2_reg_834 + 6'd2);
assign add_ln126_1_fu_510_p2 = ($signed(32'd2400959708) + $signed(tmp_s_reg_852));
assign add_ln126_2_fu_515_p2 = (or_ln126_2_fu_502_p3 + add_ln126_1_fu_510_p2);
assign add_ln126_4_fu_657_p2 = ($signed(E_4_load_reg_862) + $signed(32'd2400959708));
assign add_ln126_5_fu_633_p2 = (or_ln126_6_fu_627_p3 + tmp_2_reg_857);
assign add_ln126_6_fu_638_p2 = (add_ln126_5_fu_633_p2 + or_ln126_4_reg_882);
assign add_ln126_fu_521_p2 = (or_ln126_1_fu_496_p2 + E_fu_126);
assign and_ln126_1_fu_491_p2 = (E_6_reg_839 & E_4_fu_130);
assign and_ln126_2_fu_574_p2 = (or_ln126_3_fu_569_p2 & B_3_fu_138);
assign and_ln126_3_fu_580_p2 = (E_6_reg_839 & D_4_fu_547_p3);
assign and_ln126_fu_485_p2 = (or_ln126_fu_480_p2 & B_fu_134);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln124_fu_372_p2 = ((i_fu_142 < 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln126_1_fu_537_p4 = {{B_fu_134[31:2]}};
assign lshr_ln126_3_fu_595_p4 = {{B_3_fu_138[31:2]}};
assign lshr_ln4_fu_470_p4 = {{B_3_fu_138[31:27]}};
assign or_ln126_1_fu_496_p2 = (and_ln126_fu_485_p2 | and_ln126_1_fu_491_p2);
assign or_ln126_2_fu_502_p3 = {{trunc_ln126_fu_466_p1}, {lshr_ln4_fu_470_p4}};
assign or_ln126_3_fu_569_p2 = (E_6_reg_839 | D_4_fu_547_p3);
assign or_ln126_4_fu_585_p2 = (and_ln126_3_fu_580_p2 | and_ln126_2_fu_574_p2);
assign or_ln126_6_fu_627_p3 = {{trunc_ln126_2_reg_872}, {lshr_ln126_2_reg_877}};
assign or_ln126_fu_480_p2 = (E_6_reg_839 | E_4_fu_130);
assign tmp_2_fu_416_p21 = 'bx;
assign tmp_s_fu_378_p21 = 'bx;
assign trunc_ln126_1_fu_533_p1 = B_fu_134[1:0];
assign trunc_ln126_2_fu_555_p1 = B_5_fu_527_p2[26:0];
assign trunc_ln126_3_fu_591_p1 = B_3_fu_138[1:0];
assign trunc_ln126_fu_466_p1 = B_3_fu_138[26:0];
endmodule 