module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_15_reload,B_7_reload,C_13_reload,D_15_reload,E_7_reload,W_60_load_1_reload,W_62_load_1_reload,W_64_load_1_reload,W_66_load_1_reload,W_68_load_1_reload,W_70_load_1_reload,W_72_load_1_reload,W_74_load_1_reload,W_76_load_1_reload,W_78_load_reload,W_61_load_1_reload,W_63_load_1_reload,W_65_load_1_reload,W_67_load_1_reload,W_69_load_1_reload,W_71_load_1_reload,W_73_load_1_reload,W_75_load_1_reload,W_77_load_reload,W_79_load_reload,A_16_out,A_16_out_ap_vld,B_10_out,B_10_out_ap_vld,C_15_out,C_15_out_ap_vld,D_16_out,D_16_out_ap_vld,E_10_out,E_10_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_15_reload;
input  [31:0] B_7_reload;
input  [31:0] C_13_reload;
input  [31:0] D_15_reload;
input  [31:0] E_7_reload;
input  [31:0] W_60_load_1_reload;
input  [31:0] W_62_load_1_reload;
input  [31:0] W_64_load_1_reload;
input  [31:0] W_66_load_1_reload;
input  [31:0] W_68_load_1_reload;
input  [31:0] W_70_load_1_reload;
input  [31:0] W_72_load_1_reload;
input  [31:0] W_74_load_1_reload;
input  [31:0] W_76_load_1_reload;
input  [31:0] W_78_load_reload;
input  [31:0] W_61_load_1_reload;
input  [31:0] W_63_load_1_reload;
input  [31:0] W_65_load_1_reload;
input  [31:0] W_67_load_1_reload;
input  [31:0] W_69_load_1_reload;
input  [31:0] W_71_load_1_reload;
input  [31:0] W_73_load_1_reload;
input  [31:0] W_75_load_1_reload;
input  [31:0] W_77_load_reload;
input  [31:0] W_79_load_reload;
output  [31:0] A_16_out;
output   A_16_out_ap_vld;
output  [31:0] B_10_out;
output   B_10_out_ap_vld;
output  [31:0] C_15_out;
output   C_15_out_ap_vld;
output  [31:0] D_16_out;
output   D_16_out_ap_vld;
output  [31:0] E_10_out;
output   E_10_out_ap_vld;
reg ap_idle;
reg A_16_out_ap_vld;
reg B_10_out_ap_vld;
reg C_15_out_ap_vld;
reg D_16_out_ap_vld;
reg E_10_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln128_fu_372_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_812;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_2_reg_817;
reg   [0:0] icmp_ln128_reg_824;
wire   [31:0] tmp_9_fu_378_p23;
reg   [31:0] tmp_9_reg_828;
wire   [31:0] tmp_s_fu_416_p23;
reg   [31:0] tmp_s_reg_833;
reg   [31:0] E_1_load_reg_838;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] temp_fu_516_p2;
reg   [31:0] temp_reg_843;
wire   [26:0] trunc_ln130_2_fu_544_p1;
reg   [26:0] trunc_ln130_2_reg_848;
reg   [4:0] lshr_ln130_2_reg_853;
wire   [31:0] xor_ln130_3_fu_564_p2;
reg   [31:0] xor_ln130_3_reg_858;
wire   [31:0] add_ln130_6_fu_616_p2;
reg   [31:0] add_ln130_6_reg_863;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [31:0] E_fu_126;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_1_fu_130;
wire   [31:0] C_3_fu_536_p3;
reg   [31:0] B_fu_134;
reg   [31:0] B_1_fu_138;
wire   [31:0] temp_1_fu_640_p2;
reg   [6:0] i_fu_142;
wire   [6:0] add_ln128_fu_622_p2;
reg   [31:0] E_2_fu_146;
wire   [31:0] C_fu_583_p3;
wire    ap_block_pp0_stage1_01001;
wire    ap_block_pp0_stage0;
wire   [31:0] tmp_9_fu_378_p21;
wire   [31:0] tmp_s_fu_416_p21;
wire   [31:0] xor_ln130_fu_480_p2;
wire   [26:0] trunc_ln130_fu_466_p1;
wire   [4:0] lshr_ln3_fu_470_p4;
wire   [31:0] add_ln130_1_fu_499_p2;
wire   [31:0] or_ln1_fu_491_p3;
wire   [31:0] xor_ln130_1_fu_485_p2;
wire   [31:0] add_ln130_fu_510_p2;
wire   [31:0] add_ln130_2_fu_504_p2;
wire   [1:0] trunc_ln130_1_fu_522_p1;
wire   [29:0] lshr_ln130_1_fu_526_p4;
wire   [31:0] xor_ln130_2_fu_558_p2;
wire   [1:0] trunc_ln130_3_fu_569_p1;
wire   [29:0] lshr_ln130_3_fu_573_p4;
wire   [31:0] or_ln130_2_fu_605_p3;
wire   [31:0] add_ln130_5_fu_611_p2;
wire   [31:0] add_ln130_4_fu_636_p2;
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
wire   [6:0] tmp_9_fu_378_p1;
wire   [6:0] tmp_9_fu_378_p3;
wire  signed [6:0] tmp_9_fu_378_p5;
wire  signed [6:0] tmp_9_fu_378_p7;
wire  signed [6:0] tmp_9_fu_378_p9;
wire  signed [6:0] tmp_9_fu_378_p11;
wire  signed [6:0] tmp_9_fu_378_p13;
wire  signed [6:0] tmp_9_fu_378_p15;
wire  signed [6:0] tmp_9_fu_378_p17;
wire  signed [6:0] tmp_9_fu_378_p19;
wire   [6:0] tmp_s_fu_416_p1;
wire   [6:0] tmp_s_fu_416_p3;
wire  signed [6:0] tmp_s_fu_416_p5;
wire  signed [6:0] tmp_s_fu_416_p7;
wire  signed [6:0] tmp_s_fu_416_p9;
wire  signed [6:0] tmp_s_fu_416_p11;
wire  signed [6:0] tmp_s_fu_416_p13;
wire  signed [6:0] tmp_s_fu_416_p15;
wire  signed [6:0] tmp_s_fu_416_p17;
wire  signed [6:0] tmp_s_fu_416_p19;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_126 = 32'd0;
#0 E_1_fu_130 = 32'd0;
#0 B_fu_134 = 32'd0;
#0 B_1_fu_138 = 32'd0;
#0 i_fu_142 = 7'd0;
#0 E_2_fu_146 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_21_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h3E ),.din1_WIDTH( 32 ),.CASE2( 7'h40 ),.din2_WIDTH( 32 ),.CASE3( 7'h42 ),.din3_WIDTH( 32 ),.CASE4( 7'h44 ),.din4_WIDTH( 32 ),.CASE5( 7'h46 ),.din5_WIDTH( 32 ),.CASE6( 7'h48 ),.din6_WIDTH( 32 ),.CASE7( 7'h4A ),.din7_WIDTH( 32 ),.CASE8( 7'h4C ),.din8_WIDTH( 32 ),.CASE9( 7'h4E ),.din9_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_21_7_32_1_1_U188(.din0(W_60_load_1_reload),.din1(W_62_load_1_reload),.din2(W_64_load_1_reload),.din3(W_66_load_1_reload),.din4(W_68_load_1_reload),.din5(W_70_load_1_reload),.din6(W_72_load_1_reload),.din7(W_74_load_1_reload),.din8(W_76_load_1_reload),.din9(W_78_load_reload),.def(tmp_9_fu_378_p21),.sel(i_fu_142),.dout(tmp_9_fu_378_p23));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_21_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h3E ),.din1_WIDTH( 32 ),.CASE2( 7'h40 ),.din2_WIDTH( 32 ),.CASE3( 7'h42 ),.din3_WIDTH( 32 ),.CASE4( 7'h44 ),.din4_WIDTH( 32 ),.CASE5( 7'h46 ),.din5_WIDTH( 32 ),.CASE6( 7'h48 ),.din6_WIDTH( 32 ),.CASE7( 7'h4A ),.din7_WIDTH( 32 ),.CASE8( 7'h4C ),.din8_WIDTH( 32 ),.CASE9( 7'h4E ),.din9_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_21_7_32_1_1_U189(.din0(W_61_load_1_reload),.din1(W_63_load_1_reload),.din2(W_65_load_1_reload),.din3(W_67_load_1_reload),.din4(W_69_load_1_reload),.din5(W_71_load_1_reload),.din6(W_73_load_1_reload),.din7(W_75_load_1_reload),.din8(W_77_load_reload),.din9(W_79_load_reload),.def(tmp_s_fu_416_p21),.sel(i_fu_142),.dout(tmp_s_fu_416_p23));
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
        B_1_fu_138 <= A_15_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_fu_138 <= temp_1_fu_640_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_134 <= B_7_reload;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln128_reg_824 == 1'd1))) begin
            B_fu_134 <= temp_reg_843;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_1_fu_130 <= D_15_reload;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln128_reg_824 == 1'd1))) begin
        E_1_fu_130 <= C_3_fu_536_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_2_fu_146 <= C_13_reload;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln128_reg_824 == 1'd1))) begin
        E_2_fu_146 <= C_fu_583_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_fu_126 <= E_7_reload;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln128_reg_824 == 1'd1))) begin
        E_fu_126 <= C_2_reg_817;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_142 <= 7'd60;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln128_reg_824 == 1'd1))) begin
            i_fu_142 <= add_ln128_fu_622_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_2_reg_817 <= E_2_fu_146;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_1_load_reg_838 <= E_1_fu_130;
        lshr_ln130_2_reg_853 <= {{temp_fu_516_p2[31:27]}};
        temp_reg_843 <= temp_fu_516_p2;
        trunc_ln130_2_reg_848 <= trunc_ln130_2_fu_544_p1;
        xor_ln130_3_reg_858 <= xor_ln130_3_fu_564_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln130_6_reg_863 <= add_ln130_6_fu_616_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_1_reg_812 <= i_fu_142;
        icmp_ln128_reg_824 <= icmp_ln128_fu_372_p2;
        tmp_9_reg_828 <= tmp_9_fu_378_p23;
        tmp_s_reg_833 <= tmp_s_fu_416_p23;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_16_out_ap_vld = 1'b1;
    end else begin
        A_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_10_out_ap_vld = 1'b1;
    end else begin
        B_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_15_out_ap_vld = 1'b1;
    end else begin
        C_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_16_out_ap_vld = 1'b1;
    end else begin
        D_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_10_out_ap_vld = 1'b1;
    end else begin
        E_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
assign A_16_out = B_1_fu_138;
assign B_10_out = B_fu_134;
assign C_15_out = E_2_fu_146;
assign C_3_fu_536_p3 = {{trunc_ln130_1_fu_522_p1}, {lshr_ln130_1_fu_526_p4}};
assign C_fu_583_p3 = {{trunc_ln130_3_fu_569_p1}, {lshr_ln130_3_fu_573_p4}};
assign D_16_out = E_1_fu_130;
assign E_10_out = E_fu_126;
assign add_ln128_fu_622_p2 = (i_1_reg_812 + 7'd2);
assign add_ln130_1_fu_499_p2 = ($signed(tmp_9_reg_828) + $signed(32'd3395469782));
assign add_ln130_2_fu_504_p2 = (add_ln130_1_fu_499_p2 + or_ln1_fu_491_p3);
assign add_ln130_4_fu_636_p2 = (E_1_load_reg_838 + xor_ln130_3_reg_858);
assign add_ln130_5_fu_611_p2 = ($signed(tmp_s_reg_833) + $signed(32'd3395469782));
assign add_ln130_6_fu_616_p2 = (or_ln130_2_fu_605_p3 + add_ln130_5_fu_611_p2);
assign add_ln130_fu_510_p2 = (xor_ln130_1_fu_485_p2 + E_fu_126);
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
assign icmp_ln128_fu_372_p2 = ((i_fu_142 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln130_1_fu_526_p4 = {{B_fu_134[31:2]}};
assign lshr_ln130_3_fu_573_p4 = {{B_1_fu_138[31:2]}};
assign lshr_ln3_fu_470_p4 = {{B_1_fu_138[31:27]}};
assign or_ln130_2_fu_605_p3 = {{trunc_ln130_2_reg_848}, {lshr_ln130_2_reg_853}};
assign or_ln1_fu_491_p3 = {{trunc_ln130_fu_466_p1}, {lshr_ln3_fu_470_p4}};
assign temp_1_fu_640_p2 = (add_ln130_6_reg_863 + add_ln130_4_fu_636_p2);
assign temp_fu_516_p2 = (add_ln130_fu_510_p2 + add_ln130_2_fu_504_p2);
assign tmp_9_fu_378_p21 = 'bx;
assign tmp_s_fu_416_p21 = 'bx;
assign trunc_ln130_1_fu_522_p1 = B_fu_134[1:0];
assign trunc_ln130_2_fu_544_p1 = temp_fu_516_p2[26:0];
assign trunc_ln130_3_fu_569_p1 = B_1_fu_138[1:0];
assign trunc_ln130_fu_466_p1 = B_1_fu_138[26:0];
assign xor_ln130_1_fu_485_p2 = (xor_ln130_fu_480_p2 ^ B_fu_134);
assign xor_ln130_2_fu_558_p2 = (C_3_fu_536_p3 ^ B_1_fu_138);
assign xor_ln130_3_fu_564_p2 = (xor_ln130_2_fu_558_p2 ^ C_2_reg_817);
assign xor_ln130_fu_480_p2 = (E_1_fu_130 ^ C_2_reg_817);
endmodule 