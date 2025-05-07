module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,zext_ln104,zext_ln104_2,zext_ln104_4,zext_ln104_6,zext_ln104_8,zext_ln104_10,zext_ln104_12,zext_ln104_14,W_32_reload,W_34_reload,zext_ln104_1,zext_ln104_3,zext_ln104_5,zext_ln104_7,zext_ln104_9,zext_ln104_11,zext_ln104_13,zext_ln100,W_33_reload,W_35_reload,A_13_out,A_13_out_ap_vld,B_1_out,B_1_out_ap_vld,E_13_out,E_13_out_ap_vld,D_13_out,D_13_out_ap_vld,E_2_out,E_2_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A;
input  [31:0] B;
input  [31:0] C;
input  [31:0] D;
input  [31:0] E;
input  [30:0] zext_ln104;
input  [30:0] zext_ln104_2;
input  [30:0] zext_ln104_4;
input  [30:0] zext_ln104_6;
input  [30:0] zext_ln104_8;
input  [30:0] zext_ln104_10;
input  [30:0] zext_ln104_12;
input  [30:0] zext_ln104_14;
input  [31:0] W_32_reload;
input  [31:0] W_34_reload;
input  [30:0] zext_ln104_1;
input  [30:0] zext_ln104_3;
input  [30:0] zext_ln104_5;
input  [30:0] zext_ln104_7;
input  [30:0] zext_ln104_9;
input  [30:0] zext_ln104_11;
input  [30:0] zext_ln104_13;
input  [30:0] zext_ln100;
input  [31:0] W_33_reload;
input  [31:0] W_35_reload;
output  [31:0] A_13_out;
output   A_13_out_ap_vld;
output  [31:0] B_1_out;
output   B_1_out_ap_vld;
output  [31:0] E_13_out;
output   E_13_out_ap_vld;
output  [31:0] D_13_out;
output   D_13_out_ap_vld;
output  [31:0] E_2_out;
output   E_2_out_ap_vld;
reg ap_idle;
reg A_13_out_ap_vld;
reg B_1_out_ap_vld;
reg E_13_out_ap_vld;
reg D_13_out_ap_vld;
reg E_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln116_fu_436_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] zext_ln100_cast_fu_335_p1;
reg   [31:0] zext_ln100_cast_reg_820;
wire   [31:0] zext_ln104_13_cast_fu_339_p1;
reg   [31:0] zext_ln104_13_cast_reg_825;
wire   [31:0] zext_ln104_11_cast_fu_343_p1;
reg   [31:0] zext_ln104_11_cast_reg_830;
wire   [31:0] zext_ln104_9_cast_fu_347_p1;
reg   [31:0] zext_ln104_9_cast_reg_835;
wire   [31:0] zext_ln104_7_cast_fu_351_p1;
reg   [31:0] zext_ln104_7_cast_reg_840;
wire   [31:0] zext_ln104_5_cast_fu_355_p1;
reg   [31:0] zext_ln104_5_cast_reg_845;
wire   [31:0] zext_ln104_3_cast_fu_359_p1;
reg   [31:0] zext_ln104_3_cast_reg_850;
wire   [31:0] zext_ln104_1_cast_fu_363_p1;
reg   [31:0] zext_ln104_1_cast_reg_855;
wire   [31:0] zext_ln104_14_cast_fu_367_p1;
reg   [31:0] zext_ln104_14_cast_reg_860;
wire   [31:0] zext_ln104_12_cast_fu_371_p1;
reg   [31:0] zext_ln104_12_cast_reg_865;
wire   [31:0] zext_ln104_10_cast_fu_375_p1;
reg   [31:0] zext_ln104_10_cast_reg_870;
wire   [31:0] zext_ln104_8_cast_fu_379_p1;
reg   [31:0] zext_ln104_8_cast_reg_875;
wire   [31:0] zext_ln104_6_cast_fu_383_p1;
reg   [31:0] zext_ln104_6_cast_reg_880;
wire   [31:0] zext_ln104_4_cast_fu_387_p1;
reg   [31:0] zext_ln104_4_cast_reg_885;
wire   [31:0] zext_ln104_2_cast_fu_391_p1;
reg   [31:0] zext_ln104_2_cast_reg_890;
wire   [31:0] zext_ln104_cast_fu_395_p1;
reg   [31:0] zext_ln104_cast_reg_895;
reg   [4:0] i_reg_900;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_11_reg_905;
reg   [0:0] icmp_ln116_reg_912;
wire   [31:0] tmp_8_fu_442_p23;
reg   [31:0] tmp_8_reg_916;
wire   [31:0] tmp_9_fu_480_p23;
reg   [31:0] tmp_9_reg_921;
reg   [31:0] E_9_load_reg_926;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] B_10_fu_592_p2;
reg   [31:0] B_10_reg_931;
wire   [26:0] trunc_ln118_2_fu_620_p1;
reg   [26:0] trunc_ln118_2_reg_936;
reg   [4:0] lshr_ln118_2_reg_941;
wire   [31:0] or_ln118_2_fu_651_p2;
reg   [31:0] or_ln118_2_reg_946;
wire   [31:0] add_ln118_6_fu_704_p2;
reg   [31:0] add_ln118_6_reg_951;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [31:0] E_2_fu_126;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_9_fu_130;
wire   [31:0] D_11_fu_612_p3;
reg   [31:0] B_1_fu_134;
reg   [31:0] B_8_fu_138;
wire   [31:0] A_6_fu_728_p2;
reg   [4:0] i_1_fu_142;
wire   [4:0] add_ln116_fu_710_p2;
reg   [31:0] D_8_fu_146;
wire   [31:0] C_3_fu_671_p3;
wire    ap_block_pp0_stage1_01001;
wire    ap_block_pp0_stage0;
wire   [31:0] tmp_8_fu_442_p21;
wire   [31:0] tmp_9_fu_480_p21;
wire   [31:0] xor_ln118_fu_544_p2;
wire   [31:0] and_ln118_1_fu_555_p2;
wire   [31:0] and_ln118_fu_550_p2;
wire   [26:0] trunc_ln118_fu_530_p1;
wire   [4:0] lshr_ln_fu_534_p4;
wire   [31:0] add_ln118_1_fu_575_p2;
wire   [31:0] or_ln118_1_fu_567_p3;
wire   [31:0] or_ln118_fu_561_p2;
wire   [31:0] add_ln118_fu_586_p2;
wire   [31:0] add_ln118_2_fu_580_p2;
wire   [1:0] trunc_ln118_1_fu_598_p1;
wire   [29:0] lshr_ln118_1_fu_602_p4;
wire   [31:0] xor_ln118_1_fu_634_p2;
wire   [31:0] and_ln118_2_fu_640_p2;
wire   [31:0] and_ln118_3_fu_646_p2;
wire   [1:0] trunc_ln118_3_fu_657_p1;
wire   [29:0] lshr_ln118_3_fu_661_p4;
wire   [31:0] or_ln118_4_fu_693_p3;
wire   [31:0] add_ln118_5_fu_699_p2;
wire   [31:0] add_ln118_4_fu_724_p2;
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
wire   [4:0] tmp_8_fu_442_p1;
wire   [4:0] tmp_8_fu_442_p3;
wire   [4:0] tmp_8_fu_442_p5;
wire   [4:0] tmp_8_fu_442_p7;
wire   [4:0] tmp_8_fu_442_p9;
wire   [4:0] tmp_8_fu_442_p11;
wire   [4:0] tmp_8_fu_442_p13;
wire   [4:0] tmp_8_fu_442_p15;
wire  signed [4:0] tmp_8_fu_442_p17;
wire  signed [4:0] tmp_8_fu_442_p19;
wire   [4:0] tmp_9_fu_480_p1;
wire   [4:0] tmp_9_fu_480_p3;
wire   [4:0] tmp_9_fu_480_p5;
wire   [4:0] tmp_9_fu_480_p7;
wire   [4:0] tmp_9_fu_480_p9;
wire   [4:0] tmp_9_fu_480_p11;
wire   [4:0] tmp_9_fu_480_p13;
wire   [4:0] tmp_9_fu_480_p15;
wire  signed [4:0] tmp_9_fu_480_p17;
wire  signed [4:0] tmp_9_fu_480_p19;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_2_fu_126 = 32'd0;
#0 E_9_fu_130 = 32'd0;
#0 B_1_fu_134 = 32'd0;
#0 B_8_fu_138 = 32'd0;
#0 i_1_fu_142 = 5'd0;
#0 D_8_fu_146 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_21_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h2 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h6 ),.din3_WIDTH( 32 ),.CASE4( 5'h8 ),.din4_WIDTH( 32 ),.CASE5( 5'hA ),.din5_WIDTH( 32 ),.CASE6( 5'hC ),.din6_WIDTH( 32 ),.CASE7( 5'hE ),.din7_WIDTH( 32 ),.CASE8( 5'h10 ),.din8_WIDTH( 32 ),.CASE9( 5'h12 ),.din9_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_21_5_32_1_1_U95(.din0(zext_ln104_cast_reg_895),.din1(zext_ln104_2_cast_reg_890),.din2(zext_ln104_4_cast_reg_885),.din3(zext_ln104_6_cast_reg_880),.din4(zext_ln104_8_cast_reg_875),.din5(zext_ln104_10_cast_reg_870),.din6(zext_ln104_12_cast_reg_865),.din7(zext_ln104_14_cast_reg_860),.din8(W_32_reload),.din9(W_34_reload),.def(tmp_8_fu_442_p21),.sel(i_1_fu_142),.dout(tmp_8_fu_442_p23));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_21_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h2 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h6 ),.din3_WIDTH( 32 ),.CASE4( 5'h8 ),.din4_WIDTH( 32 ),.CASE5( 5'hA ),.din5_WIDTH( 32 ),.CASE6( 5'hC ),.din6_WIDTH( 32 ),.CASE7( 5'hE ),.din7_WIDTH( 32 ),.CASE8( 5'h10 ),.din8_WIDTH( 32 ),.CASE9( 5'h12 ),.din9_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_21_5_32_1_1_U96(.din0(zext_ln104_1_cast_reg_855),.din1(zext_ln104_3_cast_reg_850),.din2(zext_ln104_5_cast_reg_845),.din3(zext_ln104_7_cast_reg_840),.din4(zext_ln104_9_cast_reg_835),.din5(zext_ln104_11_cast_reg_830),.din6(zext_ln104_13_cast_reg_825),.din7(zext_ln100_cast_reg_820),.din8(W_33_reload),.din9(W_35_reload),.def(tmp_9_fu_480_p21),.sel(i_1_fu_142),.dout(tmp_9_fu_480_p23));
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
            B_1_fu_134 <= B;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln116_reg_912 == 1'd1))) begin
            B_1_fu_134 <= B_10_reg_931;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        B_8_fu_138 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_8_fu_138 <= A_6_fu_728_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        D_8_fu_146 <= C;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln116_reg_912 == 1'd1))) begin
        D_8_fu_146 <= C_3_fu_671_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_2_fu_126 <= E;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln116_reg_912 == 1'd1))) begin
        E_2_fu_126 <= E_11_reg_905;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_9_fu_130 <= D;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln116_reg_912 == 1'd1))) begin
        E_9_fu_130 <= D_11_fu_612_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_1_fu_142 <= 5'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln116_reg_912 == 1'd1))) begin
            i_1_fu_142 <= add_ln116_fu_710_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_10_reg_931 <= B_10_fu_592_p2;
        E_9_load_reg_926 <= E_9_fu_130;
        lshr_ln118_2_reg_941 <= {{B_10_fu_592_p2[31:27]}};
        or_ln118_2_reg_946 <= or_ln118_2_fu_651_p2;
        trunc_ln118_2_reg_936 <= trunc_ln118_2_fu_620_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_11_reg_905 <= D_8_fu_146;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_6_reg_951 <= add_ln118_6_fu_704_p2;
        zext_ln100_cast_reg_820[30 : 0] <= zext_ln100_cast_fu_335_p1[30 : 0];
        zext_ln104_10_cast_reg_870[30 : 0] <= zext_ln104_10_cast_fu_375_p1[30 : 0];
        zext_ln104_11_cast_reg_830[30 : 0] <= zext_ln104_11_cast_fu_343_p1[30 : 0];
        zext_ln104_12_cast_reg_865[30 : 0] <= zext_ln104_12_cast_fu_371_p1[30 : 0];
        zext_ln104_13_cast_reg_825[30 : 0] <= zext_ln104_13_cast_fu_339_p1[30 : 0];
        zext_ln104_14_cast_reg_860[30 : 0] <= zext_ln104_14_cast_fu_367_p1[30 : 0];
        zext_ln104_1_cast_reg_855[30 : 0] <= zext_ln104_1_cast_fu_363_p1[30 : 0];
        zext_ln104_2_cast_reg_890[30 : 0] <= zext_ln104_2_cast_fu_391_p1[30 : 0];
        zext_ln104_3_cast_reg_850[30 : 0] <= zext_ln104_3_cast_fu_359_p1[30 : 0];
        zext_ln104_4_cast_reg_885[30 : 0] <= zext_ln104_4_cast_fu_387_p1[30 : 0];
        zext_ln104_5_cast_reg_845[30 : 0] <= zext_ln104_5_cast_fu_355_p1[30 : 0];
        zext_ln104_6_cast_reg_880[30 : 0] <= zext_ln104_6_cast_fu_383_p1[30 : 0];
        zext_ln104_7_cast_reg_840[30 : 0] <= zext_ln104_7_cast_fu_351_p1[30 : 0];
        zext_ln104_8_cast_reg_875[30 : 0] <= zext_ln104_8_cast_fu_379_p1[30 : 0];
        zext_ln104_9_cast_reg_835[30 : 0] <= zext_ln104_9_cast_fu_347_p1[30 : 0];
        zext_ln104_cast_reg_895[30 : 0] <= zext_ln104_cast_fu_395_p1[30 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_reg_900 <= i_1_fu_142;
        icmp_ln116_reg_912 <= icmp_ln116_fu_436_p2;
        tmp_8_reg_916 <= tmp_8_fu_442_p23;
        tmp_9_reg_921 <= tmp_9_fu_480_p23;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_436_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_13_out_ap_vld = 1'b1;
    end else begin
        A_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_436_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_out_ap_vld = 1'b1;
    end else begin
        B_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_436_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_13_out_ap_vld = 1'b1;
    end else begin
        D_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_436_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_13_out_ap_vld = 1'b1;
    end else begin
        E_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_436_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_2_out_ap_vld = 1'b1;
    end else begin
        E_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_fu_436_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
assign A_13_out = B_8_fu_138;
assign A_6_fu_728_p2 = (add_ln118_6_reg_951 + add_ln118_4_fu_724_p2);
assign B_10_fu_592_p2 = (add_ln118_fu_586_p2 + add_ln118_2_fu_580_p2);
assign B_1_out = B_1_fu_134;
assign C_3_fu_671_p3 = {{trunc_ln118_3_fu_657_p1}, {lshr_ln118_3_fu_661_p4}};
assign D_11_fu_612_p3 = {{trunc_ln118_1_fu_598_p1}, {lshr_ln118_1_fu_602_p4}};
assign D_13_out = E_9_fu_130;
assign E_13_out = D_8_fu_146;
assign E_2_out = E_2_fu_126;
assign add_ln116_fu_710_p2 = (i_reg_900 + 5'd2);
assign add_ln118_1_fu_575_p2 = (tmp_8_reg_916 + 32'd1518500249);
assign add_ln118_2_fu_580_p2 = (add_ln118_1_fu_575_p2 + or_ln118_1_fu_567_p3);
assign add_ln118_4_fu_724_p2 = (E_9_load_reg_926 + or_ln118_2_reg_946);
assign add_ln118_5_fu_699_p2 = (tmp_9_reg_921 + 32'd1518500249);
assign add_ln118_6_fu_704_p2 = (or_ln118_4_fu_693_p3 + add_ln118_5_fu_699_p2);
assign add_ln118_fu_586_p2 = (or_ln118_fu_561_p2 + E_2_fu_126);
assign and_ln118_1_fu_555_p2 = (xor_ln118_fu_544_p2 & E_9_fu_130);
assign and_ln118_2_fu_640_p2 = (D_11_fu_612_p3 & B_8_fu_138);
assign and_ln118_3_fu_646_p2 = (xor_ln118_1_fu_634_p2 & E_11_reg_905);
assign and_ln118_fu_550_p2 = (E_11_reg_905 & B_1_fu_134);
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
assign icmp_ln116_fu_436_p2 = ((i_1_fu_142 < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_1_fu_602_p4 = {{B_1_fu_134[31:2]}};
assign lshr_ln118_3_fu_661_p4 = {{B_8_fu_138[31:2]}};
assign lshr_ln_fu_534_p4 = {{B_8_fu_138[31:27]}};
assign or_ln118_1_fu_567_p3 = {{trunc_ln118_fu_530_p1}, {lshr_ln_fu_534_p4}};
assign or_ln118_2_fu_651_p2 = (and_ln118_3_fu_646_p2 | and_ln118_2_fu_640_p2);
assign or_ln118_4_fu_693_p3 = {{trunc_ln118_2_reg_936}, {lshr_ln118_2_reg_941}};
assign or_ln118_fu_561_p2 = (and_ln118_fu_550_p2 | and_ln118_1_fu_555_p2);
assign tmp_8_fu_442_p21 = 'bx;
assign tmp_9_fu_480_p21 = 'bx;
assign trunc_ln118_1_fu_598_p1 = B_1_fu_134[1:0];
assign trunc_ln118_2_fu_620_p1 = B_10_fu_592_p2[26:0];
assign trunc_ln118_3_fu_657_p1 = B_8_fu_138[1:0];
assign trunc_ln118_fu_530_p1 = B_8_fu_138[26:0];
assign xor_ln118_1_fu_634_p2 = (32'd4294967295 ^ B_8_fu_138);
assign xor_ln118_fu_544_p2 = (32'd4294967295 ^ B_1_fu_134);
assign zext_ln100_cast_fu_335_p1 = zext_ln100;
assign zext_ln104_10_cast_fu_375_p1 = zext_ln104_10;
assign zext_ln104_11_cast_fu_343_p1 = zext_ln104_11;
assign zext_ln104_12_cast_fu_371_p1 = zext_ln104_12;
assign zext_ln104_13_cast_fu_339_p1 = zext_ln104_13;
assign zext_ln104_14_cast_fu_367_p1 = zext_ln104_14;
assign zext_ln104_1_cast_fu_363_p1 = zext_ln104_1;
assign zext_ln104_2_cast_fu_391_p1 = zext_ln104_2;
assign zext_ln104_3_cast_fu_359_p1 = zext_ln104_3;
assign zext_ln104_4_cast_fu_387_p1 = zext_ln104_4;
assign zext_ln104_5_cast_fu_355_p1 = zext_ln104_5;
assign zext_ln104_6_cast_fu_383_p1 = zext_ln104_6;
assign zext_ln104_7_cast_fu_351_p1 = zext_ln104_7;
assign zext_ln104_8_cast_fu_379_p1 = zext_ln104_8;
assign zext_ln104_9_cast_fu_347_p1 = zext_ln104_9;
assign zext_ln104_cast_fu_395_p1 = zext_ln104;
always @ (posedge ap_clk) begin
    zext_ln100_cast_reg_820[31] <= 1'b0;
    zext_ln104_13_cast_reg_825[31] <= 1'b0;
    zext_ln104_11_cast_reg_830[31] <= 1'b0;
    zext_ln104_9_cast_reg_835[31] <= 1'b0;
    zext_ln104_7_cast_reg_840[31] <= 1'b0;
    zext_ln104_5_cast_reg_845[31] <= 1'b0;
    zext_ln104_3_cast_reg_850[31] <= 1'b0;
    zext_ln104_1_cast_reg_855[31] <= 1'b0;
    zext_ln104_14_cast_reg_860[31] <= 1'b0;
    zext_ln104_12_cast_reg_865[31] <= 1'b0;
    zext_ln104_10_cast_reg_870[31] <= 1'b0;
    zext_ln104_8_cast_reg_875[31] <= 1'b0;
    zext_ln104_6_cast_reg_880[31] <= 1'b0;
    zext_ln104_4_cast_reg_885[31] <= 1'b0;
    zext_ln104_2_cast_reg_890[31] <= 1'b0;
    zext_ln104_cast_reg_895[31] <= 1'b0;
end
endmodule 