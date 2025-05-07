module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_20_reload,B_7_reload,C_17_reload,D_20_reload,E_7_reload,W_60_load_1_reload,W_64_load_1_reload,W_68_load_1_reload,W_72_load_1_reload,W_76_load_1_reload,W_61_load_1_reload,W_65_load_1_reload,W_69_load_1_reload,W_73_load_1_reload,W_77_load_reload,W_62_load_1_reload,W_66_load_1_reload,W_70_load_1_reload,W_74_load_1_reload,W_78_load_reload,W_63_load_1_reload,W_67_load_1_reload,W_71_load_1_reload,W_75_load_1_reload,W_79_load_reload,A_21_out,A_21_out_ap_vld,B_12_out,B_12_out_ap_vld,C_21_out,C_21_out_ap_vld,D_21_out,D_21_out_ap_vld,E_12_out,E_12_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_20_reload;
input  [31:0] B_7_reload;
input  [31:0] C_17_reload;
input  [31:0] D_20_reload;
input  [31:0] E_7_reload;
input  [31:0] W_60_load_1_reload;
input  [31:0] W_64_load_1_reload;
input  [31:0] W_68_load_1_reload;
input  [31:0] W_72_load_1_reload;
input  [31:0] W_76_load_1_reload;
input  [31:0] W_61_load_1_reload;
input  [31:0] W_65_load_1_reload;
input  [31:0] W_69_load_1_reload;
input  [31:0] W_73_load_1_reload;
input  [31:0] W_77_load_reload;
input  [31:0] W_62_load_1_reload;
input  [31:0] W_66_load_1_reload;
input  [31:0] W_70_load_1_reload;
input  [31:0] W_74_load_1_reload;
input  [31:0] W_78_load_reload;
input  [31:0] W_63_load_1_reload;
input  [31:0] W_67_load_1_reload;
input  [31:0] W_71_load_1_reload;
input  [31:0] W_75_load_1_reload;
input  [31:0] W_79_load_reload;
output  [31:0] A_21_out;
output   A_21_out_ap_vld;
output  [31:0] B_12_out;
output   B_12_out_ap_vld;
output  [31:0] C_21_out;
output   C_21_out_ap_vld;
output  [31:0] D_21_out;
output   D_21_out_ap_vld;
output  [31:0] E_12_out;
output   E_12_out_ap_vld;
reg ap_idle;
reg A_21_out_ap_vld;
reg B_12_out_ap_vld;
reg C_21_out_ap_vld;
reg D_21_out_ap_vld;
reg E_12_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln128_fu_358_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [6:0] i_1_reg_885;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln128_reg_890;
wire   [31:0] tmp_s_fu_364_p13;
reg   [31:0] tmp_s_reg_894;
wire   [31:0] tmp_1_fu_392_p13;
reg   [31:0] tmp_1_reg_899;
wire   [31:0] tmp_2_fu_420_p13;
reg   [31:0] tmp_2_reg_904;
wire   [31:0] tmp_3_fu_448_p13;
reg   [31:0] tmp_3_reg_909;
reg   [31:0] E_1_load_reg_914;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] B_1_load_reg_919;
reg   [31:0] E_2_load_reg_924;
wire   [31:0] temp_fu_542_p2;
reg   [31:0] temp_reg_930;
wire   [1:0] trunc_ln130_1_fu_548_p1;
reg   [1:0] trunc_ln130_1_reg_935;
reg   [29:0] lshr_ln130_1_reg_940;
wire   [26:0] trunc_ln130_2_fu_562_p1;
reg   [26:0] trunc_ln130_2_reg_945;
reg   [4:0] lshr_ln130_2_reg_950;
wire   [1:0] trunc_ln130_3_fu_576_p1;
reg   [1:0] trunc_ln130_3_reg_955;
reg   [29:0] lshr_ln130_3_reg_960;
wire   [1:0] trunc_ln130_5_fu_590_p1;
reg   [1:0] trunc_ln130_5_reg_965;
reg   [29:0] lshr_ln130_5_reg_970;
wire   [31:0] add_ln130_6_fu_616_p2;
reg   [31:0] add_ln130_6_reg_975;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_fu_621_p3;
reg   [31:0] C_reg_980;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] C_3_fu_647_p3;
reg   [31:0] C_3_reg_986;
wire   [26:0] trunc_ln130_4_fu_653_p1;
reg   [26:0] trunc_ln130_4_reg_991;
reg   [4:0] lshr_ln130_4_reg_996;
wire   [31:0] xor_ln130_7_fu_679_p2;
reg   [31:0] xor_ln130_7_reg_1001;
wire   [31:0] add_ln130_10_fu_734_p2;
reg   [31:0] add_ln130_10_reg_1006;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [26:0] trunc_ln130_6_fu_758_p1;
reg   [26:0] trunc_ln130_6_reg_1011;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [4:0] lshr_ln130_6_reg_1016;
wire   [31:0] add_ln130_14_fu_789_p2;
reg   [31:0] add_ln130_14_reg_1021;
wire    ap_block_pp0_stage6_11001;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [31:0] E_fu_116;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
reg   [31:0] E_1_fu_120;
wire   [31:0] C_4_fu_667_p3;
reg   [31:0] B_fu_124;
wire   [31:0] temp_2_fu_753_p2;
reg   [31:0] B_1_fu_128;
wire   [31:0] temp_3_fu_808_p2;
reg   [31:0] E_2_fu_132;
wire   [31:0] C_2_fu_699_p3;
reg   [6:0] i_fu_136;
wire   [6:0] add_ln128_fu_794_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_s_fu_364_p11;
wire   [31:0] tmp_1_fu_392_p11;
wire   [31:0] tmp_2_fu_420_p11;
wire   [31:0] tmp_3_fu_448_p11;
wire   [31:0] xor_ln130_fu_505_p2;
wire   [26:0] trunc_ln130_fu_491_p1;
wire   [4:0] lshr_ln3_fu_495_p4;
wire   [31:0] add_ln130_1_fu_525_p2;
wire   [31:0] or_ln1_fu_517_p3;
wire   [31:0] xor_ln130_1_fu_511_p2;
wire   [31:0] add_ln130_fu_536_p2;
wire   [31:0] add_ln130_2_fu_530_p2;
wire    ap_block_pp0_stage2;
wire   [31:0] or_ln130_2_fu_604_p3;
wire   [31:0] add_ln130_5_fu_610_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] xor_ln130_2_fu_627_p2;
wire   [31:0] xor_ln130_3_fu_632_p2;
wire   [31:0] add_ln130_4_fu_637_p2;
wire   [31:0] temp_1_fu_642_p2;
wire   [31:0] xor_ln130_6_fu_673_p2;
wire   [1:0] trunc_ln130_7_fu_685_p1;
wire   [29:0] lshr_ln130_7_fu_689_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln130_4_fu_722_p3;
wire   [31:0] add_ln130_9_fu_728_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] xor_ln130_4_fu_739_p2;
wire   [31:0] xor_ln130_5_fu_743_p2;
wire   [31:0] add_ln130_8_fu_748_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln130_6_fu_777_p3;
wire   [31:0] add_ln130_13_fu_783_p2;
wire   [31:0] add_ln130_12_fu_804_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [6:0] tmp_s_fu_364_p1;
wire  signed [6:0] tmp_s_fu_364_p3;
wire  signed [6:0] tmp_s_fu_364_p5;
wire  signed [6:0] tmp_s_fu_364_p7;
wire  signed [6:0] tmp_s_fu_364_p9;
wire   [6:0] tmp_1_fu_392_p1;
wire  signed [6:0] tmp_1_fu_392_p3;
wire  signed [6:0] tmp_1_fu_392_p5;
wire  signed [6:0] tmp_1_fu_392_p7;
wire  signed [6:0] tmp_1_fu_392_p9;
wire   [6:0] tmp_2_fu_420_p1;
wire  signed [6:0] tmp_2_fu_420_p3;
wire  signed [6:0] tmp_2_fu_420_p5;
wire  signed [6:0] tmp_2_fu_420_p7;
wire  signed [6:0] tmp_2_fu_420_p9;
wire   [6:0] tmp_3_fu_448_p1;
wire  signed [6:0] tmp_3_fu_448_p3;
wire  signed [6:0] tmp_3_fu_448_p5;
wire  signed [6:0] tmp_3_fu_448_p7;
wire  signed [6:0] tmp_3_fu_448_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_116 = 32'd0;
#0 E_1_fu_120 = 32'd0;
#0 B_fu_124 = 32'd0;
#0 B_1_fu_128 = 32'd0;
#0 E_2_fu_132 = 32'd0;
#0 i_fu_136 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h40 ),.din1_WIDTH( 32 ),.CASE2( 7'h44 ),.din2_WIDTH( 32 ),.CASE3( 7'h48 ),.din3_WIDTH( 32 ),.CASE4( 7'h4C ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_11_7_32_1_1_U190(.din0(W_60_load_1_reload),.din1(W_64_load_1_reload),.din2(W_68_load_1_reload),.din3(W_72_load_1_reload),.din4(W_76_load_1_reload),.def(tmp_s_fu_364_p11),.sel(ap_sig_allocacmp_i_1),.dout(tmp_s_fu_364_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h40 ),.din1_WIDTH( 32 ),.CASE2( 7'h44 ),.din2_WIDTH( 32 ),.CASE3( 7'h48 ),.din3_WIDTH( 32 ),.CASE4( 7'h4C ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_11_7_32_1_1_U191(.din0(W_61_load_1_reload),.din1(W_65_load_1_reload),.din2(W_69_load_1_reload),.din3(W_73_load_1_reload),.din4(W_77_load_reload),.def(tmp_1_fu_392_p11),.sel(ap_sig_allocacmp_i_1),.dout(tmp_1_fu_392_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h40 ),.din1_WIDTH( 32 ),.CASE2( 7'h44 ),.din2_WIDTH( 32 ),.CASE3( 7'h48 ),.din3_WIDTH( 32 ),.CASE4( 7'h4C ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_11_7_32_1_1_U192(.din0(W_62_load_1_reload),.din1(W_66_load_1_reload),.din2(W_70_load_1_reload),.din3(W_74_load_1_reload),.din4(W_78_load_reload),.def(tmp_2_fu_420_p11),.sel(ap_sig_allocacmp_i_1),.dout(tmp_2_fu_420_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h40 ),.din1_WIDTH( 32 ),.CASE2( 7'h44 ),.din2_WIDTH( 32 ),.CASE3( 7'h48 ),.din3_WIDTH( 32 ),.CASE4( 7'h4C ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_11_7_32_1_1_U193(.din0(W_63_load_1_reload),.din1(W_67_load_1_reload),.din2(W_71_load_1_reload),.din3(W_75_load_1_reload),.din4(W_79_load_reload),.def(tmp_3_fu_448_p11),.sel(ap_sig_allocacmp_i_1),.dout(tmp_3_fu_448_p13));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_1_fu_128 <= A_20_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_128 <= temp_3_fu_808_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_124 <= B_7_reload;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln128_reg_890 == 1'd1))) begin
        B_fu_124 <= temp_2_fu_753_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_120 <= D_20_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln128_reg_890 == 1'd1))) begin
        E_1_fu_120 <= C_4_fu_667_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_132 <= C_17_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln128_reg_890 == 1'd1))) begin
        E_2_fu_132 <= C_2_fu_699_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_116 <= E_7_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln128_reg_890 == 1'd1))) begin
        E_fu_116 <= C_3_fu_647_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_136 <= 7'd60;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln128_reg_890 == 1'd1))) begin
        i_fu_136 <= add_ln128_fu_794_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_load_reg_919 <= B_1_fu_128;
        E_1_load_reg_914 <= E_1_fu_120;
        E_2_load_reg_924 <= E_2_fu_132;
        lshr_ln130_1_reg_940 <= {{B_fu_124[31:2]}};
        lshr_ln130_2_reg_950 <= {{temp_fu_542_p2[31:27]}};
        lshr_ln130_3_reg_960 <= {{B_1_fu_128[31:2]}};
        lshr_ln130_5_reg_970 <= {{temp_fu_542_p2[31:2]}};
        temp_reg_930 <= temp_fu_542_p2;
        trunc_ln130_1_reg_935 <= trunc_ln130_1_fu_548_p1;
        trunc_ln130_2_reg_945 <= trunc_ln130_2_fu_562_p1;
        trunc_ln130_3_reg_955 <= trunc_ln130_3_fu_576_p1;
        trunc_ln130_5_reg_965 <= trunc_ln130_5_fu_590_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_3_reg_986 <= C_3_fu_647_p3;
        C_reg_980 <= C_fu_621_p3;
        lshr_ln130_4_reg_996 <= {{temp_1_fu_642_p2[31:27]}};
        trunc_ln130_4_reg_991 <= trunc_ln130_4_fu_653_p1;
        xor_ln130_7_reg_1001 <= xor_ln130_7_fu_679_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln130_10_reg_1006 <= add_ln130_10_fu_734_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln130_14_reg_1021 <= add_ln130_14_fu_789_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln130_6_reg_975 <= add_ln130_6_fu_616_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_885 <= ap_sig_allocacmp_i_1;
        icmp_ln128_reg_890 <= icmp_ln128_fu_358_p2;
        tmp_1_reg_899 <= tmp_1_fu_392_p13;
        tmp_2_reg_904 <= tmp_2_fu_420_p13;
        tmp_3_reg_909 <= tmp_3_fu_448_p13;
        tmp_s_reg_894 <= tmp_s_fu_364_p13;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln130_6_reg_1016 <= {{temp_2_fu_753_p2[31:27]}};
        trunc_ln130_6_reg_1011 <= trunc_ln130_6_fu_758_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_358_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_21_out_ap_vld = 1'b1;
    end else begin
        A_21_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_358_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_12_out_ap_vld = 1'b1;
    end else begin
        B_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_358_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_21_out_ap_vld = 1'b1;
    end else begin
        C_21_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_358_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_21_out_ap_vld = 1'b1;
    end else begin
        D_21_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_358_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_12_out_ap_vld = 1'b1;
    end else begin
        E_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_fu_358_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_136;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_21_out = B_1_fu_128;
assign B_12_out = B_fu_124;
assign C_21_out = E_2_fu_132;
assign C_2_fu_699_p3 = {{trunc_ln130_7_fu_685_p1}, {lshr_ln130_7_fu_689_p4}};
assign C_3_fu_647_p3 = {{trunc_ln130_3_reg_955}, {lshr_ln130_3_reg_960}};
assign C_4_fu_667_p3 = {{trunc_ln130_5_reg_965}, {lshr_ln130_5_reg_970}};
assign C_fu_621_p3 = {{trunc_ln130_1_reg_935}, {lshr_ln130_1_reg_940}};
assign D_21_out = E_1_fu_120;
assign E_12_out = E_fu_116;
assign add_ln128_fu_794_p2 = (i_1_reg_885 + 7'd4);
assign add_ln130_10_fu_734_p2 = (add_ln130_9_fu_728_p2 + E_2_load_reg_924);
assign add_ln130_12_fu_804_p2 = (C_reg_980 + tmp_3_reg_909);
assign add_ln130_13_fu_783_p2 = ($signed(or_ln130_6_fu_777_p3) + $signed(32'd3395469782));
assign add_ln130_14_fu_789_p2 = (add_ln130_13_fu_783_p2 + xor_ln130_7_reg_1001);
assign add_ln130_1_fu_525_p2 = ($signed(tmp_s_reg_894) + $signed(32'd3395469782));
assign add_ln130_2_fu_530_p2 = (add_ln130_1_fu_525_p2 + or_ln1_fu_517_p3);
assign add_ln130_4_fu_637_p2 = (tmp_1_reg_899 + xor_ln130_3_fu_632_p2);
assign add_ln130_5_fu_610_p2 = ($signed(or_ln130_2_fu_604_p3) + $signed(32'd3395469782));
assign add_ln130_6_fu_616_p2 = (add_ln130_5_fu_610_p2 + E_1_load_reg_914);
assign add_ln130_8_fu_748_p2 = (xor_ln130_5_fu_743_p2 + tmp_2_reg_904);
assign add_ln130_9_fu_728_p2 = ($signed(or_ln130_4_fu_722_p3) + $signed(32'd3395469782));
assign add_ln130_fu_536_p2 = (xor_ln130_1_fu_511_p2 + E_fu_116);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln128_fu_358_p2 = ((ap_sig_allocacmp_i_1 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln130_7_fu_689_p4 = {{temp_1_fu_642_p2[31:2]}};
assign lshr_ln3_fu_495_p4 = {{B_1_fu_128[31:27]}};
assign or_ln130_2_fu_604_p3 = {{trunc_ln130_2_reg_945}, {lshr_ln130_2_reg_950}};
assign or_ln130_4_fu_722_p3 = {{trunc_ln130_4_reg_991}, {lshr_ln130_4_reg_996}};
assign or_ln130_6_fu_777_p3 = {{trunc_ln130_6_reg_1011}, {lshr_ln130_6_reg_1016}};
assign or_ln1_fu_517_p3 = {{trunc_ln130_fu_491_p1}, {lshr_ln3_fu_495_p4}};
assign temp_1_fu_642_p2 = (add_ln130_6_reg_975 + add_ln130_4_fu_637_p2);
assign temp_2_fu_753_p2 = (add_ln130_10_reg_1006 + add_ln130_8_fu_748_p2);
assign temp_3_fu_808_p2 = (add_ln130_14_reg_1021 + add_ln130_12_fu_804_p2);
assign temp_fu_542_p2 = (add_ln130_fu_536_p2 + add_ln130_2_fu_530_p2);
assign tmp_1_fu_392_p11 = 'bx;
assign tmp_2_fu_420_p11 = 'bx;
assign tmp_3_fu_448_p11 = 'bx;
assign tmp_s_fu_364_p11 = 'bx;
assign trunc_ln130_1_fu_548_p1 = B_fu_124[1:0];
assign trunc_ln130_2_fu_562_p1 = temp_fu_542_p2[26:0];
assign trunc_ln130_3_fu_576_p1 = B_1_fu_128[1:0];
assign trunc_ln130_4_fu_653_p1 = temp_1_fu_642_p2[26:0];
assign trunc_ln130_5_fu_590_p1 = temp_fu_542_p2[1:0];
assign trunc_ln130_6_fu_758_p1 = temp_2_fu_753_p2[26:0];
assign trunc_ln130_7_fu_685_p1 = temp_1_fu_642_p2[1:0];
assign trunc_ln130_fu_491_p1 = B_1_fu_128[26:0];
assign xor_ln130_1_fu_511_p2 = (xor_ln130_fu_505_p2 ^ E_2_fu_132);
assign xor_ln130_2_fu_627_p2 = (C_fu_621_p3 ^ B_1_load_reg_919);
assign xor_ln130_3_fu_632_p2 = (xor_ln130_2_fu_627_p2 ^ E_2_load_reg_924);
assign xor_ln130_4_fu_739_p2 = (temp_reg_930 ^ C_3_reg_986);
assign xor_ln130_5_fu_743_p2 = (xor_ln130_4_fu_739_p2 ^ C_reg_980);
assign xor_ln130_6_fu_673_p2 = (temp_1_fu_642_p2 ^ C_3_fu_647_p3);
assign xor_ln130_7_fu_679_p2 = (xor_ln130_6_fu_673_p2 ^ C_4_fu_667_p3);
assign xor_ln130_fu_505_p2 = (E_1_fu_120 ^ B_fu_124);
endmodule 