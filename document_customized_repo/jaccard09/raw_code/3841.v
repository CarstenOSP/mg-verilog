module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_36_reload,B_23_reload,C_35_reload,D_36_reload,E_23_reload,W_8_load_3,W_10_load_3,W_12_load_3,W_14_load_3,W_16_load_2,W_18_load_2,W_20_load_2,W_22_load_2,W_24_load_2,W_26_load_2,W_9_load_3,W_11_load_3,W_13_load_3,W_15_load_3,W_17_load_2,W_19_load_2,W_21_load_2,W_23_load_2,W_25_load_2,W_27_load_2,A_44_out,A_44_out_ap_vld,B_36_out,B_36_out_ap_vld,E_42_out,E_42_out_ap_vld,D_44_out,D_44_out_ap_vld,E_28_out,E_28_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_36_reload;
input  [31:0] B_23_reload;
input  [31:0] C_35_reload;
input  [31:0] D_36_reload;
input  [31:0] E_23_reload;
input  [31:0] W_8_load_3;
input  [31:0] W_10_load_3;
input  [31:0] W_12_load_3;
input  [31:0] W_14_load_3;
input  [31:0] W_16_load_2;
input  [31:0] W_18_load_2;
input  [31:0] W_20_load_2;
input  [31:0] W_22_load_2;
input  [31:0] W_24_load_2;
input  [31:0] W_26_load_2;
input  [31:0] W_9_load_3;
input  [31:0] W_11_load_3;
input  [31:0] W_13_load_3;
input  [31:0] W_15_load_3;
input  [31:0] W_17_load_2;
input  [31:0] W_19_load_2;
input  [31:0] W_21_load_2;
input  [31:0] W_23_load_2;
input  [31:0] W_25_load_2;
input  [31:0] W_27_load_2;
output  [31:0] A_44_out;
output   A_44_out_ap_vld;
output  [31:0] B_36_out;
output   B_36_out_ap_vld;
output  [31:0] E_42_out;
output   E_42_out_ap_vld;
output  [31:0] D_44_out;
output   D_44_out_ap_vld;
output  [31:0] E_28_out;
output   E_28_out_ap_vld;
reg ap_idle;
reg A_44_out_ap_vld;
reg B_36_out_ap_vld;
reg E_42_out_ap_vld;
reg D_44_out_ap_vld;
reg E_28_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln124_fu_374_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_2_reg_840;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_6_reg_845;
reg   [0:0] icmp_ln124_reg_854;
wire   [31:0] tmp_s_fu_384_p23;
reg   [31:0] tmp_s_reg_858;
wire   [31:0] tmp_2_fu_422_p23;
reg   [31:0] tmp_2_reg_863;
reg   [31:0] E_4_load_reg_868;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] B_5_fu_533_p2;
reg   [31:0] B_5_reg_873;
wire   [26:0] trunc_ln126_2_fu_561_p1;
reg   [26:0] trunc_ln126_2_reg_878;
reg   [4:0] lshr_ln126_2_reg_883;
wire   [31:0] or_ln126_4_fu_591_p2;
reg   [31:0] or_ln126_4_reg_888;
wire   [31:0] add_ln126_6_fu_644_p2;
reg   [31:0] add_ln126_6_reg_893;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [31:0] E_fu_128;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_4_fu_132;
wire   [31:0] D_4_fu_553_p3;
reg   [31:0] B_fu_136;
reg   [31:0] B_3_fu_140;
wire   [31:0] A_fu_668_p2;
reg   [5:0] i_fu_144;
wire   [5:0] add_ln124_fu_649_p2;
reg   [31:0] D_fu_148;
wire   [31:0] C_fu_611_p3;
wire    ap_block_pp0_stage1_01001;
wire    ap_block_pp0_stage0;
wire   [31:0] tmp_s_fu_384_p21;
wire   [4:0] trunc_ln100_fu_380_p1;
wire   [31:0] tmp_2_fu_422_p21;
wire   [31:0] or_ln126_fu_486_p2;
wire   [31:0] and_ln126_fu_491_p2;
wire   [31:0] and_ln126_1_fu_497_p2;
wire   [26:0] trunc_ln126_fu_472_p1;
wire   [4:0] lshr_ln5_fu_476_p4;
wire   [31:0] or_ln126_2_fu_508_p3;
wire   [31:0] add_ln126_1_fu_516_p2;
wire   [31:0] or_ln126_1_fu_502_p2;
wire   [31:0] add_ln126_fu_527_p2;
wire   [31:0] add_ln126_2_fu_521_p2;
wire   [1:0] trunc_ln126_1_fu_539_p1;
wire   [29:0] lshr_ln126_1_fu_543_p4;
wire   [31:0] or_ln126_3_fu_575_p2;
wire   [31:0] and_ln126_2_fu_580_p2;
wire   [31:0] and_ln126_3_fu_586_p2;
wire   [1:0] trunc_ln126_3_fu_597_p1;
wire   [29:0] lshr_ln126_3_fu_601_p4;
wire   [31:0] or_ln126_6_fu_633_p3;
wire   [31:0] add_ln126_5_fu_639_p2;
wire   [31:0] add_ln126_4_fu_663_p2;
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
wire   [4:0] tmp_s_fu_384_p1;
wire   [4:0] tmp_s_fu_384_p3;
wire   [4:0] tmp_s_fu_384_p5;
wire   [4:0] tmp_s_fu_384_p7;
wire  signed [4:0] tmp_s_fu_384_p9;
wire  signed [4:0] tmp_s_fu_384_p11;
wire  signed [4:0] tmp_s_fu_384_p13;
wire  signed [4:0] tmp_s_fu_384_p15;
wire  signed [4:0] tmp_s_fu_384_p17;
wire  signed [4:0] tmp_s_fu_384_p19;
wire   [4:0] tmp_2_fu_422_p1;
wire   [4:0] tmp_2_fu_422_p3;
wire   [4:0] tmp_2_fu_422_p5;
wire   [4:0] tmp_2_fu_422_p7;
wire  signed [4:0] tmp_2_fu_422_p9;
wire  signed [4:0] tmp_2_fu_422_p11;
wire  signed [4:0] tmp_2_fu_422_p13;
wire  signed [4:0] tmp_2_fu_422_p15;
wire  signed [4:0] tmp_2_fu_422_p17;
wire  signed [4:0] tmp_2_fu_422_p19;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_128 = 32'd0;
#0 E_4_fu_132 = 32'd0;
#0 B_fu_136 = 32'd0;
#0 B_3_fu_140 = 32'd0;
#0 i_fu_144 = 6'd0;
#0 D_fu_148 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_21_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'hA ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'hE ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h12 ),.din5_WIDTH( 32 ),.CASE6( 5'h14 ),.din6_WIDTH( 32 ),.CASE7( 5'h16 ),.din7_WIDTH( 32 ),.CASE8( 5'h18 ),.din8_WIDTH( 32 ),.CASE9( 5'h1A ),.din9_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_21_5_32_1_1_U156(.din0(W_8_load_3),.din1(W_10_load_3),.din2(W_12_load_3),.din3(W_14_load_3),.din4(W_16_load_2),.din5(W_18_load_2),.din6(W_20_load_2),.din7(W_22_load_2),.din8(W_24_load_2),.din9(W_26_load_2),.def(tmp_s_fu_384_p21),.sel(trunc_ln100_fu_380_p1),.dout(tmp_s_fu_384_p23));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_21_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'hA ),.din1_WIDTH( 32 ),.CASE2( 5'hC ),.din2_WIDTH( 32 ),.CASE3( 5'hE ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h12 ),.din5_WIDTH( 32 ),.CASE6( 5'h14 ),.din6_WIDTH( 32 ),.CASE7( 5'h16 ),.din7_WIDTH( 32 ),.CASE8( 5'h18 ),.din8_WIDTH( 32 ),.CASE9( 5'h1A ),.din9_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_21_5_32_1_1_U157(.din0(W_9_load_3),.din1(W_11_load_3),.din2(W_13_load_3),.din3(W_15_load_3),.din4(W_17_load_2),.din5(W_19_load_2),.din6(W_21_load_2),.din7(W_23_load_2),.din8(W_25_load_2),.din9(W_27_load_2),.def(tmp_2_fu_422_p21),.sel(trunc_ln100_fu_380_p1),.dout(tmp_2_fu_422_p23));
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
        B_3_fu_140 <= A_36_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_3_fu_140 <= A_fu_668_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_136 <= B_23_reload;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln124_reg_854 == 1'd1))) begin
            B_fu_136 <= B_5_reg_873;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        D_fu_148 <= C_35_reload;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_reg_854 == 1'd1))) begin
        D_fu_148 <= C_fu_611_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_4_fu_132 <= D_36_reload;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_reg_854 == 1'd1))) begin
        E_4_fu_132 <= D_4_fu_553_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_fu_128 <= E_23_reload;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_reg_854 == 1'd1))) begin
        E_fu_128 <= E_6_reg_845;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_144 <= 6'd40;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln124_reg_854 == 1'd1))) begin
            i_fu_144 <= add_ln124_fu_649_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_5_reg_873 <= B_5_fu_533_p2;
        E_4_load_reg_868 <= E_4_fu_132;
        lshr_ln126_2_reg_883 <= {{B_5_fu_533_p2[31:27]}};
        or_ln126_4_reg_888 <= or_ln126_4_fu_591_p2;
        trunc_ln126_2_reg_878 <= trunc_ln126_2_fu_561_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_6_reg_845 <= D_fu_148;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_6_reg_893 <= add_ln126_6_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_reg_840 <= i_fu_144;
        icmp_ln124_reg_854 <= icmp_ln124_fu_374_p2;
        tmp_2_reg_863 <= tmp_2_fu_422_p23;
        tmp_s_reg_858 <= tmp_s_fu_384_p23;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_374_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_44_out_ap_vld = 1'b1;
    end else begin
        A_44_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_374_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_36_out_ap_vld = 1'b1;
    end else begin
        B_36_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_374_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_44_out_ap_vld = 1'b1;
    end else begin
        D_44_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_374_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_28_out_ap_vld = 1'b1;
    end else begin
        E_28_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_374_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_42_out_ap_vld = 1'b1;
    end else begin
        E_42_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_fu_374_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
assign A_44_out = B_3_fu_140;
assign A_fu_668_p2 = (add_ln126_6_reg_893 + add_ln126_4_fu_663_p2);
assign B_36_out = B_fu_136;
assign B_5_fu_533_p2 = (add_ln126_fu_527_p2 + add_ln126_2_fu_521_p2);
assign C_fu_611_p3 = {{trunc_ln126_3_fu_597_p1}, {lshr_ln126_3_fu_601_p4}};
assign D_44_out = E_4_fu_132;
assign D_4_fu_553_p3 = {{trunc_ln126_1_fu_539_p1}, {lshr_ln126_1_fu_543_p4}};
assign E_28_out = E_fu_128;
assign E_42_out = D_fu_148;
assign add_ln124_fu_649_p2 = (i_2_reg_840 + 6'd2);
assign add_ln126_1_fu_516_p2 = ($signed(32'd2400959708) + $signed(tmp_s_reg_858));
assign add_ln126_2_fu_521_p2 = (or_ln126_2_fu_508_p3 + add_ln126_1_fu_516_p2);
assign add_ln126_4_fu_663_p2 = ($signed(E_4_load_reg_868) + $signed(32'd2400959708));
assign add_ln126_5_fu_639_p2 = (or_ln126_6_fu_633_p3 + tmp_2_reg_863);
assign add_ln126_6_fu_644_p2 = (add_ln126_5_fu_639_p2 + or_ln126_4_reg_888);
assign add_ln126_fu_527_p2 = (or_ln126_1_fu_502_p2 + E_fu_128);
assign and_ln126_1_fu_497_p2 = (E_6_reg_845 & E_4_fu_132);
assign and_ln126_2_fu_580_p2 = (or_ln126_3_fu_575_p2 & B_3_fu_140);
assign and_ln126_3_fu_586_p2 = (E_6_reg_845 & D_4_fu_553_p3);
assign and_ln126_fu_491_p2 = (or_ln126_fu_486_p2 & B_fu_136);
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
assign icmp_ln124_fu_374_p2 = ((i_fu_144 < 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln126_1_fu_543_p4 = {{B_fu_136[31:2]}};
assign lshr_ln126_3_fu_601_p4 = {{B_3_fu_140[31:2]}};
assign lshr_ln5_fu_476_p4 = {{B_3_fu_140[31:27]}};
assign or_ln126_1_fu_502_p2 = (and_ln126_fu_491_p2 | and_ln126_1_fu_497_p2);
assign or_ln126_2_fu_508_p3 = {{trunc_ln126_fu_472_p1}, {lshr_ln5_fu_476_p4}};
assign or_ln126_3_fu_575_p2 = (E_6_reg_845 | D_4_fu_553_p3);
assign or_ln126_4_fu_591_p2 = (and_ln126_3_fu_586_p2 | and_ln126_2_fu_580_p2);
assign or_ln126_6_fu_633_p3 = {{trunc_ln126_2_reg_878}, {lshr_ln126_2_reg_883}};
assign or_ln126_fu_486_p2 = (E_6_reg_845 | E_4_fu_132);
assign tmp_2_fu_422_p21 = 'bx;
assign tmp_s_fu_384_p21 = 'bx;
assign trunc_ln100_fu_380_p1 = i_fu_144[4:0];
assign trunc_ln126_1_fu_539_p1 = B_fu_136[1:0];
assign trunc_ln126_2_fu_561_p1 = B_5_fu_533_p2[26:0];
assign trunc_ln126_3_fu_597_p1 = B_3_fu_140[1:0];
assign trunc_ln126_fu_472_p1 = B_3_fu_140[26:0];
endmodule 