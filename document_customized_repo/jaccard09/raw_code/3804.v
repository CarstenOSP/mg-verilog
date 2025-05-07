module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_25_reload,B_1_reload,E_25_reload,D_25_reload,E_2_reload,W_36_reload,W_38_reload,W_40_reload,W_42_reload,W_44_reload,W_46_reload,W_48_reload,W_50_reload,W_52_reload,W_54_reload,W_37_reload,W_39_reload,W_41_reload,W_43_reload,W_45_reload,W_47_reload,W_49_reload,W_51_reload,W_53_reload,W_55_reload,A_27_out,A_27_out_ap_vld,B_4_out,B_4_out_ap_vld,E_26_out,E_26_out_ap_vld,D_27_out,D_27_out_ap_vld,E_5_out,E_5_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_25_reload;
input  [31:0] B_1_reload;
input  [31:0] E_25_reload;
input  [31:0] D_25_reload;
input  [31:0] E_2_reload;
input  [31:0] W_36_reload;
input  [31:0] W_38_reload;
input  [31:0] W_40_reload;
input  [31:0] W_42_reload;
input  [31:0] W_44_reload;
input  [31:0] W_46_reload;
input  [31:0] W_48_reload;
input  [31:0] W_50_reload;
input  [31:0] W_52_reload;
input  [31:0] W_54_reload;
input  [31:0] W_37_reload;
input  [31:0] W_39_reload;
input  [31:0] W_41_reload;
input  [31:0] W_43_reload;
input  [31:0] W_45_reload;
input  [31:0] W_47_reload;
input  [31:0] W_49_reload;
input  [31:0] W_51_reload;
input  [31:0] W_53_reload;
input  [31:0] W_55_reload;
output  [31:0] A_27_out;
output   A_27_out_ap_vld;
output  [31:0] B_4_out;
output   B_4_out_ap_vld;
output  [31:0] E_26_out;
output   E_26_out_ap_vld;
output  [31:0] D_27_out;
output   D_27_out_ap_vld;
output  [31:0] E_5_out;
output   E_5_out_ap_vld;
reg ap_idle;
reg A_27_out_ap_vld;
reg B_4_out_ap_vld;
reg E_26_out_ap_vld;
reg D_27_out_ap_vld;
reg E_5_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln120_fu_372_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_reg_812;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_24_reg_817;
reg   [0:0] icmp_ln120_reg_824;
wire   [31:0] tmp_1_fu_378_p23;
reg   [31:0] tmp_1_reg_828;
wire   [31:0] tmp_10_fu_416_p23;
reg   [31:0] tmp_10_reg_833;
reg   [31:0] E_load_reg_838;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] B_22_fu_516_p2;
reg   [31:0] B_22_reg_843;
wire   [26:0] trunc_ln122_2_fu_544_p1;
reg   [26:0] trunc_ln122_2_reg_848;
reg   [4:0] lshr_ln122_2_reg_853;
wire   [31:0] xor_ln122_3_fu_564_p2;
reg   [31:0] xor_ln122_3_reg_858;
wire   [31:0] add_ln122_6_fu_616_p2;
reg   [31:0] add_ln122_6_reg_863;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [31:0] E_5_fu_126;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_fu_130;
wire   [31:0] D_11_fu_536_p3;
reg   [31:0] B_4_fu_134;
reg   [31:0] B_fu_138;
wire   [31:0] A_fu_640_p2;
reg   [5:0] i_2_fu_142;
wire   [5:0] add_ln120_fu_622_p2;
reg   [31:0] D_fu_146;
wire   [31:0] C_6_fu_583_p3;
wire    ap_block_pp0_stage1_01001;
wire    ap_block_pp0_stage0;
wire   [31:0] tmp_1_fu_378_p21;
wire   [31:0] tmp_10_fu_416_p21;
wire   [31:0] xor_ln122_fu_480_p2;
wire   [26:0] trunc_ln122_fu_466_p1;
wire   [4:0] lshr_ln1_fu_470_p4;
wire   [31:0] add_ln122_1_fu_499_p2;
wire   [31:0] or_ln_fu_491_p3;
wire   [31:0] xor_ln122_1_fu_485_p2;
wire   [31:0] add_ln122_fu_510_p2;
wire   [31:0] add_ln122_2_fu_504_p2;
wire   [1:0] trunc_ln122_1_fu_522_p1;
wire   [29:0] lshr_ln122_1_fu_526_p4;
wire   [31:0] xor_ln122_2_fu_558_p2;
wire   [1:0] trunc_ln122_3_fu_569_p1;
wire   [29:0] lshr_ln122_3_fu_573_p4;
wire   [31:0] or_ln122_2_fu_605_p3;
wire   [31:0] add_ln122_5_fu_611_p2;
wire   [31:0] add_ln122_4_fu_636_p2;
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
wire   [5:0] tmp_1_fu_378_p1;
wire   [5:0] tmp_1_fu_378_p3;
wire   [5:0] tmp_1_fu_378_p5;
wire   [5:0] tmp_1_fu_378_p7;
wire   [5:0] tmp_1_fu_378_p9;
wire   [5:0] tmp_1_fu_378_p11;
wire  signed [5:0] tmp_1_fu_378_p13;
wire  signed [5:0] tmp_1_fu_378_p15;
wire  signed [5:0] tmp_1_fu_378_p17;
wire  signed [5:0] tmp_1_fu_378_p19;
wire   [5:0] tmp_10_fu_416_p1;
wire   [5:0] tmp_10_fu_416_p3;
wire   [5:0] tmp_10_fu_416_p5;
wire   [5:0] tmp_10_fu_416_p7;
wire   [5:0] tmp_10_fu_416_p9;
wire   [5:0] tmp_10_fu_416_p11;
wire  signed [5:0] tmp_10_fu_416_p13;
wire  signed [5:0] tmp_10_fu_416_p15;
wire  signed [5:0] tmp_10_fu_416_p17;
wire  signed [5:0] tmp_10_fu_416_p19;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_5_fu_126 = 32'd0;
#0 E_fu_130 = 32'd0;
#0 B_4_fu_134 = 32'd0;
#0 B_fu_138 = 32'd0;
#0 i_2_fu_142 = 6'd0;
#0 D_fu_146 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_21_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h16 ),.din1_WIDTH( 32 ),.CASE2( 6'h18 ),.din2_WIDTH( 32 ),.CASE3( 6'h1A ),.din3_WIDTH( 32 ),.CASE4( 6'h1C ),.din4_WIDTH( 32 ),.CASE5( 6'h1E ),.din5_WIDTH( 32 ),.CASE6( 6'h20 ),.din6_WIDTH( 32 ),.CASE7( 6'h22 ),.din7_WIDTH( 32 ),.CASE8( 6'h24 ),.din8_WIDTH( 32 ),.CASE9( 6'h26 ),.din9_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_21_6_32_1_1_U128(.din0(W_36_reload),.din1(W_38_reload),.din2(W_40_reload),.din3(W_42_reload),.din4(W_44_reload),.din5(W_46_reload),.din6(W_48_reload),.din7(W_50_reload),.din8(W_52_reload),.din9(W_54_reload),.def(tmp_1_fu_378_p21),.sel(i_2_fu_142),.dout(tmp_1_fu_378_p23));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_21_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h16 ),.din1_WIDTH( 32 ),.CASE2( 6'h18 ),.din2_WIDTH( 32 ),.CASE3( 6'h1A ),.din3_WIDTH( 32 ),.CASE4( 6'h1C ),.din4_WIDTH( 32 ),.CASE5( 6'h1E ),.din5_WIDTH( 32 ),.CASE6( 6'h20 ),.din6_WIDTH( 32 ),.CASE7( 6'h22 ),.din7_WIDTH( 32 ),.CASE8( 6'h24 ),.din8_WIDTH( 32 ),.CASE9( 6'h26 ),.din9_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_21_6_32_1_1_U129(.din0(W_37_reload),.din1(W_39_reload),.din2(W_41_reload),.din3(W_43_reload),.din4(W_45_reload),.din5(W_47_reload),.din6(W_49_reload),.din7(W_51_reload),.din8(W_53_reload),.din9(W_55_reload),.def(tmp_10_fu_416_p21),.sel(i_2_fu_142),.dout(tmp_10_fu_416_p23));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_4_fu_134 <= B_1_reload;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln120_reg_824 == 1'd1))) begin
            B_4_fu_134 <= B_22_reg_843;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        B_fu_138 <= A_25_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_fu_138 <= A_fu_640_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        D_fu_146 <= E_25_reload;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln120_reg_824 == 1'd1))) begin
        D_fu_146 <= C_6_fu_583_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_5_fu_126 <= E_2_reload;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln120_reg_824 == 1'd1))) begin
        E_5_fu_126 <= E_24_reg_817;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_fu_130 <= D_25_reload;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln120_reg_824 == 1'd1))) begin
        E_fu_130 <= D_11_fu_536_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_2_fu_142 <= 6'd20;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln120_reg_824 == 1'd1))) begin
            i_2_fu_142 <= add_ln120_fu_622_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_22_reg_843 <= B_22_fu_516_p2;
        E_load_reg_838 <= E_fu_130;
        lshr_ln122_2_reg_853 <= {{B_22_fu_516_p2[31:27]}};
        trunc_ln122_2_reg_848 <= trunc_ln122_2_fu_544_p1;
        xor_ln122_3_reg_858 <= xor_ln122_3_fu_564_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_24_reg_817 <= D_fu_146;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln122_6_reg_863 <= add_ln122_6_fu_616_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_reg_812 <= i_2_fu_142;
        icmp_ln120_reg_824 <= icmp_ln120_fu_372_p2;
        tmp_10_reg_833 <= tmp_10_fu_416_p23;
        tmp_1_reg_828 <= tmp_1_fu_378_p23;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_27_out_ap_vld = 1'b1;
    end else begin
        A_27_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_4_out_ap_vld = 1'b1;
    end else begin
        B_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_27_out_ap_vld = 1'b1;
    end else begin
        D_27_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_26_out_ap_vld = 1'b1;
    end else begin
        E_26_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_5_out_ap_vld = 1'b1;
    end else begin
        E_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_fu_372_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
assign A_27_out = B_fu_138;
assign A_fu_640_p2 = (add_ln122_6_reg_863 + add_ln122_4_fu_636_p2);
assign B_22_fu_516_p2 = (add_ln122_fu_510_p2 + add_ln122_2_fu_504_p2);
assign B_4_out = B_4_fu_134;
assign C_6_fu_583_p3 = {{trunc_ln122_3_fu_569_p1}, {lshr_ln122_3_fu_573_p4}};
assign D_11_fu_536_p3 = {{trunc_ln122_1_fu_522_p1}, {lshr_ln122_1_fu_526_p4}};
assign D_27_out = E_fu_130;
assign E_26_out = D_fu_146;
assign E_5_out = E_5_fu_126;
assign add_ln120_fu_622_p2 = (i_reg_812 + 6'd2);
assign add_ln122_1_fu_499_p2 = (tmp_1_reg_828 + 32'd1859775393);
assign add_ln122_2_fu_504_p2 = (add_ln122_1_fu_499_p2 + or_ln_fu_491_p3);
assign add_ln122_4_fu_636_p2 = (E_load_reg_838 + xor_ln122_3_reg_858);
assign add_ln122_5_fu_611_p2 = (tmp_10_reg_833 + 32'd1859775393);
assign add_ln122_6_fu_616_p2 = (or_ln122_2_fu_605_p3 + add_ln122_5_fu_611_p2);
assign add_ln122_fu_510_p2 = (xor_ln122_1_fu_485_p2 + E_5_fu_126);
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
assign icmp_ln120_fu_372_p2 = ((i_2_fu_142 < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln122_1_fu_526_p4 = {{B_4_fu_134[31:2]}};
assign lshr_ln122_3_fu_573_p4 = {{B_fu_138[31:2]}};
assign lshr_ln1_fu_470_p4 = {{B_fu_138[31:27]}};
assign or_ln122_2_fu_605_p3 = {{trunc_ln122_2_reg_848}, {lshr_ln122_2_reg_853}};
assign or_ln_fu_491_p3 = {{trunc_ln122_fu_466_p1}, {lshr_ln1_fu_470_p4}};
assign tmp_10_fu_416_p21 = 'bx;
assign tmp_1_fu_378_p21 = 'bx;
assign trunc_ln122_1_fu_522_p1 = B_4_fu_134[1:0];
assign trunc_ln122_2_fu_544_p1 = B_22_fu_516_p2[26:0];
assign trunc_ln122_3_fu_569_p1 = B_fu_138[1:0];
assign trunc_ln122_fu_466_p1 = B_fu_138[26:0];
assign xor_ln122_1_fu_485_p2 = (xor_ln122_fu_480_p2 ^ B_4_fu_134);
assign xor_ln122_2_fu_558_p2 = (D_11_fu_536_p3 ^ B_fu_138);
assign xor_ln122_3_fu_564_p2 = (xor_ln122_2_fu_558_p2 ^ E_24_reg_817);
assign xor_ln122_fu_480_p2 = (E_fu_130 ^ E_24_reg_817);
endmodule 