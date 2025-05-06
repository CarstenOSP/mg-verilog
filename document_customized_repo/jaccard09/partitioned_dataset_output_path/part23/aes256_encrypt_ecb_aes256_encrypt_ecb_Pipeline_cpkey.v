
module aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_cpkey (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ctx5_reload,buf_0_i,buf_0_o,buf_0_o_ap_vld,buf_15_i,buf_15_o,buf_15_o_ap_vld,buf_14_i,buf_14_o,buf_14_o_ap_vld,buf_13_i,buf_13_o,buf_13_o_ap_vld,buf_12_i,buf_12_o,buf_12_o_ap_vld,buf_11_i,buf_11_o,buf_11_o_ap_vld,buf_10_i,buf_10_o,buf_10_o_ap_vld,buf_9_i,buf_9_o,buf_9_o_ap_vld,buf_8_i,buf_8_o,buf_8_o_ap_vld,buf_7_i,buf_7_o,buf_7_o_ap_vld,buf_6_i,buf_6_o,buf_6_o_ap_vld,buf_5_i,buf_5_o,buf_5_o_ap_vld,buf_4_i,buf_4_o,buf_4_o_ap_vld,buf_3_i,buf_3_o,buf_3_o_ap_vld,buf_2_i,buf_2_o,buf_2_o_ap_vld,buf_1_i,buf_1_o,buf_1_o_ap_vld,p_partset410_out,p_partset410_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [767:0] ctx5_reload;
input  [7:0] buf_0_i;
output  [7:0] buf_0_o;
output   buf_0_o_ap_vld;
input  [7:0] buf_15_i;
output  [7:0] buf_15_o;
output   buf_15_o_ap_vld;
input  [7:0] buf_14_i;
output  [7:0] buf_14_o;
output   buf_14_o_ap_vld;
input  [7:0] buf_13_i;
output  [7:0] buf_13_o;
output   buf_13_o_ap_vld;
input  [7:0] buf_12_i;
output  [7:0] buf_12_o;
output   buf_12_o_ap_vld;
input  [7:0] buf_11_i;
output  [7:0] buf_11_o;
output   buf_11_o_ap_vld;
input  [7:0] buf_10_i;
output  [7:0] buf_10_o;
output   buf_10_o_ap_vld;
input  [7:0] buf_9_i;
output  [7:0] buf_9_o;
output   buf_9_o_ap_vld;
input  [7:0] buf_8_i;
output  [7:0] buf_8_o;
output   buf_8_o_ap_vld;
input  [7:0] buf_7_i;
output  [7:0] buf_7_o;
output   buf_7_o_ap_vld;
input  [7:0] buf_6_i;
output  [7:0] buf_6_o;
output   buf_6_o_ap_vld;
input  [7:0] buf_5_i;
output  [7:0] buf_5_o;
output   buf_5_o_ap_vld;
input  [7:0] buf_4_i;
output  [7:0] buf_4_o;
output   buf_4_o_ap_vld;
input  [7:0] buf_3_i;
output  [7:0] buf_3_o;
output   buf_3_o_ap_vld;
input  [7:0] buf_2_i;
output  [7:0] buf_2_o;
output   buf_2_o_ap_vld;
input  [7:0] buf_1_i;
output  [7:0] buf_1_o;
output   buf_1_o_ap_vld;
output  [767:0] p_partset410_out;
output   p_partset410_out_ap_vld;
reg ap_idle;
reg[7:0] buf_0_o;
reg buf_0_o_ap_vld;
reg[7:0] buf_15_o;
reg buf_15_o_ap_vld;
reg[7:0] buf_14_o;
reg buf_14_o_ap_vld;
reg[7:0] buf_13_o;
reg buf_13_o_ap_vld;
reg[7:0] buf_12_o;
reg buf_12_o_ap_vld;
reg[7:0] buf_11_o;
reg buf_11_o_ap_vld;
reg[7:0] buf_10_o;
reg buf_10_o_ap_vld;
reg[7:0] buf_9_o;
reg buf_9_o_ap_vld;
reg[7:0] buf_8_o;
reg buf_8_o_ap_vld;
reg[7:0] buf_7_o;
reg buf_7_o_ap_vld;
reg[7:0] buf_6_o;
reg buf_6_o_ap_vld;
reg[7:0] buf_5_o;
reg buf_5_o_ap_vld;
reg[7:0] buf_4_o;
reg buf_4_o_ap_vld;
reg[7:0] buf_3_o;
reg buf_3_o_ap_vld;
reg[7:0] buf_2_o;
reg buf_2_o_ap_vld;
reg[7:0] buf_1_o;
reg buf_1_o_ap_vld;
reg p_partset410_out_ap_vld;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln74_fu_384_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [4:0] i_reg_752;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln74_reg_758;
wire   [4:0] add_ln74_fu_390_p2;
reg   [4:0] add_ln74_reg_762;
wire   [6:0] shl_ln1_fu_400_p3;
reg   [6:0] shl_ln1_reg_767;
wire   [127:0] zext_ln74_2_fu_408_p1;
reg   [127:0] zext_ln74_2_reg_772;
wire   [127:0] shl_ln74_fu_412_p2;
reg   [127:0] shl_ln74_reg_777;
reg   [767:0] p_partset410_load_reg_782;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [7:0] trunc_ln74_1_fu_442_p1;
reg   [7:0] trunc_ln74_1_reg_788;
wire   [127:0] or_ln74_2_fu_578_p2;
reg   [127:0] or_ln74_2_reg_793;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [639:0] tmp_s_reg_799;
reg   [127:0] trunc_ln74_4_reg_804;
wire   [767:0] or_ln_fu_604_p3;
reg   [767:0] or_ln_reg_809;
wire    ap_block_pp0_stage3_11001;
wire   [4:0] add_ln74_1_fu_610_p2;
reg   [4:0] add_ln74_1_reg_814;
wire   [7:0] trunc_ln74_5_fu_635_p1;
reg   [7:0] trunc_ln74_5_reg_819;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [4:0] i_2_fu_142;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0;
reg   [767:0] p_partset410_fu_146;
wire   [767:0] or_ln74_1_fu_720_p3;
wire    ap_block_pp0_stage1;
wire   [7:0] xor_ln74_1_fu_517_p2;
wire    ap_block_pp0_stage1_01001;
wire    ap_block_pp0_stage0_01001;
wire   [3:0] trunc_ln74_fu_396_p1;
wire   [7:0] zext_ln74_fu_421_p1;
wire   [8:0] zext_ln74_cast_fu_424_p3;
wire   [767:0] zext_ln74_1_fu_432_p1;
wire   [767:0] lshr_ln74_fu_436_p2;
wire   [7:0] tmp_8_fu_446_p33;
wire   [7:0] tmp_8_fu_446_p35;
wire    ap_block_pp0_stage2;
wire   [127:0] zext_ln74_4_fu_542_p1;
wire   [128:0] zext_ln74_3_fu_539_p1;
wire  signed [128:0] xor_ln74_fu_550_p2;
wire  signed [767:0] sext_ln74_fu_556_p1;
wire   [127:0] trunc_ln74_3_fu_564_p1;
wire   [127:0] trunc_ln74_2_fu_560_p1;
wire   [127:0] and_ln74_2_fu_572_p2;
wire   [127:0] shl_ln74_1_fu_545_p2;
wire   [767:0] and_ln74_fu_567_p2;
wire    ap_block_pp0_stage3;
wire   [8:0] zext_ln74_3_cast_fu_615_p4;
wire   [767:0] zext_ln74_5_fu_625_p1;
wire   [767:0] lshr_ln74_1_fu_629_p2;
wire   [7:0] shl_ln74_3_fu_643_p3;
wire   [255:0] zext_ln74_6_fu_650_p1;
wire   [255:0] shl_ln74_2_fu_654_p2;
wire   [255:0] zext_ln74_8_fu_664_p1;
wire   [256:0] zext_ln74_7_fu_660_p1;
wire  signed [256:0] xor_ln74_2_fu_673_p2;
wire  signed [767:0] sext_ln74_1_fu_679_p1;
wire   [255:0] tmp_99_fu_687_p3;
wire   [255:0] trunc_ln74_6_fu_683_p1;
wire   [255:0] and_ln74_3_fu_698_p2;
wire   [255:0] shl_ln74_4_fu_667_p2;
wire   [767:0] and_ln74_1_fu_693_p2;
wire   [511:0] tmp_100_fu_710_p4;
wire   [255:0] or_ln74_fu_704_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_8_fu_446_p1;
wire   [4:0] tmp_8_fu_446_p3;
wire   [4:0] tmp_8_fu_446_p5;
wire   [4:0] tmp_8_fu_446_p7;
wire   [4:0] tmp_8_fu_446_p9;
wire   [4:0] tmp_8_fu_446_p11;
wire   [4:0] tmp_8_fu_446_p13;
wire   [4:0] tmp_8_fu_446_p15;
wire   [4:0] tmp_8_fu_446_p17;
wire   [4:0] tmp_8_fu_446_p19;
wire   [4:0] tmp_8_fu_446_p21;
wire   [4:0] tmp_8_fu_446_p23;
wire   [4:0] tmp_8_fu_446_p25;
wire   [4:0] tmp_8_fu_446_p27;
wire   [4:0] tmp_8_fu_446_p29;
wire  signed [4:0] tmp_8_fu_446_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_2_fu_142 = 5'd0;
#0 p_partset410_fu_146 = 768'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_33_5_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1 ),.din0_WIDTH( 8 ),.CASE1( 5'h2 ),.din1_WIDTH( 8 ),.CASE2( 5'h3 ),.din2_WIDTH( 8 ),.CASE3( 5'h4 ),.din3_WIDTH( 8 ),.CASE4( 5'h5 ),.din4_WIDTH( 8 ),.CASE5( 5'h6 ),.din5_WIDTH( 8 ),.CASE6( 5'h7 ),.din6_WIDTH( 8 ),.CASE7( 5'h8 ),.din7_WIDTH( 8 ),.CASE8( 5'h9 ),.din8_WIDTH( 8 ),.CASE9( 5'hA ),.din9_WIDTH( 8 ),.CASE10( 5'hB ),.din10_WIDTH( 8 ),.CASE11( 5'hC ),.din11_WIDTH( 8 ),.CASE12( 5'hD ),.din12_WIDTH( 8 ),.CASE13( 5'hE ),.din13_WIDTH( 8 ),.CASE14( 5'hF ),.din14_WIDTH( 8 ),.CASE15( 5'h10 ),.din15_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 5 ),.dout_WIDTH( 8 ))
sparsemux_33_5_8_1_1_U50(.din0(buf_0_i),.din1(buf_1_i),.din2(buf_2_i),.din3(buf_3_i),.din4(buf_4_i),.din5(buf_5_i),.din6(buf_6_i),.din7(buf_7_i),.din8(buf_8_i),.din9(buf_9_i),.din10(buf_10_i),.din11(buf_11_i),.din12(buf_12_i),.din13(buf_13_i),.din14(buf_14_i),.din15(buf_15_i),.def(tmp_8_fu_446_p33),.sel(i_reg_752),.dout(tmp_8_fu_446_p35));
aes256_encrypt_ecb_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_2_fu_142 <= 5'd16;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln74_reg_758 == 1'd0))) begin
        i_2_fu_142 <= add_ln74_reg_762;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            p_partset410_fu_146 <= ctx5_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            p_partset410_fu_146 <= or_ln74_1_fu_720_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln74_1_reg_814 <= add_ln74_1_fu_610_p2;
        or_ln_reg_809 <= or_ln_fu_604_p3;
        trunc_ln74_5_reg_819 <= trunc_ln74_5_fu_635_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln74_reg_762 <= add_ln74_fu_390_p2;
        i_reg_752 <= ap_sig_allocacmp_i;
        icmp_ln74_reg_758 <= icmp_ln74_fu_384_p2;
        shl_ln1_reg_767[6 : 3] <= shl_ln1_fu_400_p3[6 : 3];
        shl_ln74_reg_777 <= shl_ln74_fu_412_p2;
        zext_ln74_2_reg_772[6 : 3] <= zext_ln74_2_fu_408_p1[6 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        or_ln74_2_reg_793 <= or_ln74_2_fu_578_p2;
        tmp_s_reg_799 <= {{and_ln74_fu_567_p2[767:128]}};
        trunc_ln74_4_reg_804 <= {{and_ln74_fu_567_p2[255:128]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_partset410_load_reg_782 <= p_partset410_fu_146;
        trunc_ln74_1_reg_788 <= trunc_ln74_1_fu_442_p1;
    end
end
always @ (*) begin
    if (((icmp_ln74_fu_384_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 5'd16;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd1))) begin
        buf_0_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_0_o = buf_0_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd1))) begin
        buf_0_o_ap_vld = 1'b1;
    end else begin
        buf_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd11))) begin
        buf_10_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_10_o = buf_10_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd11))) begin
        buf_10_o_ap_vld = 1'b1;
    end else begin
        buf_10_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd12))) begin
        buf_11_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_11_o = buf_11_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd12))) begin
        buf_11_o_ap_vld = 1'b1;
    end else begin
        buf_11_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd13))) begin
        buf_12_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_12_o = buf_12_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd13))) begin
        buf_12_o_ap_vld = 1'b1;
    end else begin
        buf_12_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd14))) begin
        buf_13_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_13_o = buf_13_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd14))) begin
        buf_13_o_ap_vld = 1'b1;
    end else begin
        buf_13_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd15))) begin
        buf_14_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_14_o = buf_14_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd15))) begin
        buf_14_o_ap_vld = 1'b1;
    end else begin
        buf_14_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((~(i_reg_752 == 5'd1) & ~(i_reg_752 == 5'd2) & ~(i_reg_752 == 5'd3) & ~(i_reg_752 == 5'd4) & ~(i_reg_752 == 5'd5) & ~(i_reg_752 == 5'd6) & ~(i_reg_752 == 5'd7) & ~(i_reg_752 == 5'd8) & ~(i_reg_752 == 5'd9) & ~(i_reg_752 == 5'd10) & ~(i_reg_752 == 5'd11) & ~(i_reg_752 == 5'd12) & ~(i_reg_752 == 5'd13) & ~(i_reg_752 == 5'd14) & ~(i_reg_752 == 5'd15) & (1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0))) begin
        buf_15_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_15_o = buf_15_i;
    end
end
always @ (*) begin
    if ((~(i_reg_752 == 5'd1) & ~(i_reg_752 == 5'd2) & ~(i_reg_752 == 5'd3) & ~(i_reg_752 == 5'd4) & ~(i_reg_752 == 5'd5) & ~(i_reg_752 == 5'd6) & ~(i_reg_752 == 5'd7) & ~(i_reg_752 == 5'd8) & ~(i_reg_752 == 5'd9) & ~(i_reg_752 == 5'd10) & ~(i_reg_752 == 5'd11) & ~(i_reg_752 == 5'd12) & ~(i_reg_752 == 5'd13) & ~(i_reg_752 == 5'd14) & ~(i_reg_752 == 5'd15) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0))) begin
        buf_15_o_ap_vld = 1'b1;
    end else begin
        buf_15_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd2))) begin
        buf_1_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_1_o = buf_1_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd2))) begin
        buf_1_o_ap_vld = 1'b1;
    end else begin
        buf_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd3))) begin
        buf_2_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_2_o = buf_2_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd3))) begin
        buf_2_o_ap_vld = 1'b1;
    end else begin
        buf_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd4))) begin
        buf_3_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_3_o = buf_3_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd4))) begin
        buf_3_o_ap_vld = 1'b1;
    end else begin
        buf_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd5))) begin
        buf_4_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_4_o = buf_4_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd5))) begin
        buf_4_o_ap_vld = 1'b1;
    end else begin
        buf_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd6))) begin
        buf_5_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_5_o = buf_5_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd6))) begin
        buf_5_o_ap_vld = 1'b1;
    end else begin
        buf_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd7))) begin
        buf_6_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_6_o = buf_6_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd7))) begin
        buf_6_o_ap_vld = 1'b1;
    end else begin
        buf_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd8))) begin
        buf_7_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_7_o = buf_7_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd8))) begin
        buf_7_o_ap_vld = 1'b1;
    end else begin
        buf_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd9))) begin
        buf_8_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_8_o = buf_8_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd9))) begin
        buf_8_o_ap_vld = 1'b1;
    end else begin
        buf_8_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd10))) begin
        buf_9_o = xor_ln74_1_fu_517_p2;
    end else begin
        buf_9_o = buf_9_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln74_reg_758 == 1'd0) & (i_reg_752 == 5'd10))) begin
        buf_9_o_ap_vld = 1'b1;
    end else begin
        buf_9_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln74_fu_384_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_partset410_out_ap_vld = 1'b1;
    end else begin
        p_partset410_out_ap_vld = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln74_1_fu_610_p2 = (i_reg_752 + 5'd15);
assign add_ln74_fu_390_p2 = ($signed(ap_sig_allocacmp_i) + $signed(5'd31));
assign and_ln74_1_fu_693_p2 = (sext_ln74_1_fu_679_p1 & or_ln_reg_809);
assign and_ln74_2_fu_572_p2 = (trunc_ln74_3_fu_564_p1 & trunc_ln74_2_fu_560_p1);
assign and_ln74_3_fu_698_p2 = (trunc_ln74_6_fu_683_p1 & tmp_99_fu_687_p3);
assign and_ln74_fu_567_p2 = (sext_ln74_fu_556_p1 & p_partset410_load_reg_782);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln74_fu_384_p2 = ((ap_sig_allocacmp_i == 5'd0) ? 1'b1 : 1'b0);
assign lshr_ln74_1_fu_629_p2 = or_ln_fu_604_p3 >> zext_ln74_5_fu_625_p1;
assign lshr_ln74_fu_436_p2 = p_partset410_fu_146 >> zext_ln74_1_fu_432_p1;
assign or_ln74_1_fu_720_p3 = {{tmp_100_fu_710_p4}, {or_ln74_fu_704_p2}};
assign or_ln74_2_fu_578_p2 = (shl_ln74_1_fu_545_p2 | and_ln74_2_fu_572_p2);
assign or_ln74_fu_704_p2 = (shl_ln74_4_fu_667_p2 | and_ln74_3_fu_698_p2);
assign or_ln_fu_604_p3 = {{tmp_s_reg_799}, {or_ln74_2_reg_793}};
assign p_partset410_out = p_partset410_fu_146;
assign sext_ln74_1_fu_679_p1 = xor_ln74_2_fu_673_p2;
assign sext_ln74_fu_556_p1 = xor_ln74_fu_550_p2;
assign shl_ln1_fu_400_p3 = {{trunc_ln74_fu_396_p1}, {3'd0}};
assign shl_ln74_1_fu_545_p2 = zext_ln74_4_fu_542_p1 << zext_ln74_2_reg_772;
assign shl_ln74_2_fu_654_p2 = 256'd255 << zext_ln74_6_fu_650_p1;
assign shl_ln74_3_fu_643_p3 = {{add_ln74_1_reg_814}, {3'd0}};
assign shl_ln74_4_fu_667_p2 = zext_ln74_8_fu_664_p1 << zext_ln74_6_fu_650_p1;
assign shl_ln74_fu_412_p2 = 128'd255 << zext_ln74_2_fu_408_p1;
assign tmp_100_fu_710_p4 = {{and_ln74_1_fu_693_p2[767:256]}};
assign tmp_8_fu_446_p33 = 'bx;
assign tmp_99_fu_687_p3 = {{trunc_ln74_4_reg_804}, {or_ln74_2_reg_793}};
assign trunc_ln74_1_fu_442_p1 = lshr_ln74_fu_436_p2[7:0];
assign trunc_ln74_2_fu_560_p1 = xor_ln74_fu_550_p2[127:0];
assign trunc_ln74_3_fu_564_p1 = p_partset410_load_reg_782[127:0];
assign trunc_ln74_5_fu_635_p1 = lshr_ln74_1_fu_629_p2[7:0];
assign trunc_ln74_6_fu_683_p1 = xor_ln74_2_fu_673_p2[255:0];
assign trunc_ln74_fu_396_p1 = add_ln74_fu_390_p2[3:0];
assign xor_ln74_1_fu_517_p2 = (trunc_ln74_1_fu_442_p1 ^ tmp_8_fu_446_p35);
assign xor_ln74_2_fu_673_p2 = (zext_ln74_7_fu_660_p1 ^ 257'd231584178474632390847141970017375815706539969331281128078915168015826259279871);
assign xor_ln74_fu_550_p2 = (zext_ln74_3_fu_539_p1 ^ 129'd680564733841876926926749214863536422911);
assign zext_ln74_1_fu_432_p1 = zext_ln74_cast_fu_424_p3;
assign zext_ln74_2_fu_408_p1 = shl_ln1_fu_400_p3;
assign zext_ln74_3_cast_fu_615_p4 = {{{{1'd1}, {add_ln74_1_fu_610_p2}}}, {3'd0}};
assign zext_ln74_3_fu_539_p1 = shl_ln74_reg_777;
assign zext_ln74_4_fu_542_p1 = trunc_ln74_1_reg_788;
assign zext_ln74_5_fu_625_p1 = zext_ln74_3_cast_fu_615_p4;
assign zext_ln74_6_fu_650_p1 = shl_ln74_3_fu_643_p3;
assign zext_ln74_7_fu_660_p1 = shl_ln74_2_fu_654_p2;
assign zext_ln74_8_fu_664_p1 = trunc_ln74_5_reg_819;
assign zext_ln74_cast_fu_424_p3 = {{1'd1}, {zext_ln74_fu_421_p1}};
assign zext_ln74_fu_421_p1 = shl_ln1_reg_767;
always @ (posedge ap_clk) begin
    shl_ln1_reg_767[2:0] <= 3'b000;
    zext_ln74_2_reg_772[2:0] <= 3'b000;
    zext_ln74_2_reg_772[127:7] <= 121'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
