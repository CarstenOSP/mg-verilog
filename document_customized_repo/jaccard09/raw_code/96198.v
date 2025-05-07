module mvt_mvt_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_y1_address0,buff_y1_ce0,buff_y1_q0,buff_y1_4_address0,buff_y1_4_ce0,buff_y1_4_q0,buff_y1_1_address0,buff_y1_1_ce0,buff_y1_1_q0,buff_y1_5_address0,buff_y1_5_ce0,buff_y1_5_q0,buff_y1_2_address0,buff_y1_2_ce0,buff_y1_2_q0,buff_y1_6_address0,buff_y1_6_ce0,buff_y1_6_q0,buff_y1_3_address0,buff_y1_3_ce0,buff_y1_3_q0,buff_y1_7_address0,buff_y1_7_ce0,buff_y1_7_q0,buff_x1_address0,buff_x1_ce0,buff_x1_we0,buff_x1_d0,buff_x1_q0,buff_x1_1_address0,buff_x1_1_ce0,buff_x1_1_we0,buff_x1_1_d0,buff_x1_1_q0,buff_x1_2_address0,buff_x1_2_ce0,buff_x1_2_we0,buff_x1_2_d0,buff_x1_2_q0,buff_x1_3_address0,buff_x1_3_ce0,buff_x1_3_we0,buff_x1_3_d0,buff_x1_3_q0,buff_x1_4_address0,buff_x1_4_ce0,buff_x1_4_we0,buff_x1_4_d0,buff_x1_4_q0,buff_x1_5_address0,buff_x1_5_ce0,buff_x1_5_we0,buff_x1_5_d0,buff_x1_5_q0,buff_x1_6_address0,buff_x1_6_ce0,buff_x1_6_we0,buff_x1_6_d0,buff_x1_6_q0,buff_x1_7_address0,buff_x1_7_ce0,buff_x1_7_we0,buff_x1_7_d0,buff_x1_7_q0,grp_fu_971_p_din0,grp_fu_971_p_din1,grp_fu_971_p_opcode,grp_fu_971_p_dout0,grp_fu_971_p_ce,grp_fu_975_p_din0,grp_fu_975_p_din1,grp_fu_975_p_dout0,grp_fu_975_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 29'd1;
parameter    ap_ST_fsm_pp0_stage1 = 29'd2;
parameter    ap_ST_fsm_pp0_stage2 = 29'd4;
parameter    ap_ST_fsm_pp0_stage3 = 29'd8;
parameter    ap_ST_fsm_pp0_stage4 = 29'd16;
parameter    ap_ST_fsm_pp0_stage5 = 29'd32;
parameter    ap_ST_fsm_pp0_stage6 = 29'd64;
parameter    ap_ST_fsm_pp0_stage7 = 29'd128;
parameter    ap_ST_fsm_pp0_stage8 = 29'd256;
parameter    ap_ST_fsm_pp0_stage9 = 29'd512;
parameter    ap_ST_fsm_pp0_stage10 = 29'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 29'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 29'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 29'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 29'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 29'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 29'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 29'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 29'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 29'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 29'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 29'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 29'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 29'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 29'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 29'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 29'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 29'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 29'd268435456;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [8:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [8:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [8:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [8:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [8:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [8:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [8:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [2:0] buff_y1_address0;
output   buff_y1_ce0;
input  [31:0] buff_y1_q0;
output  [2:0] buff_y1_4_address0;
output   buff_y1_4_ce0;
input  [31:0] buff_y1_4_q0;
output  [2:0] buff_y1_1_address0;
output   buff_y1_1_ce0;
input  [31:0] buff_y1_1_q0;
output  [2:0] buff_y1_5_address0;
output   buff_y1_5_ce0;
input  [31:0] buff_y1_5_q0;
output  [2:0] buff_y1_2_address0;
output   buff_y1_2_ce0;
input  [31:0] buff_y1_2_q0;
output  [2:0] buff_y1_6_address0;
output   buff_y1_6_ce0;
input  [31:0] buff_y1_6_q0;
output  [2:0] buff_y1_3_address0;
output   buff_y1_3_ce0;
input  [31:0] buff_y1_3_q0;
output  [2:0] buff_y1_7_address0;
output   buff_y1_7_ce0;
input  [31:0] buff_y1_7_q0;
output  [2:0] buff_x1_address0;
output   buff_x1_ce0;
output   buff_x1_we0;
output  [31:0] buff_x1_d0;
input  [31:0] buff_x1_q0;
output  [2:0] buff_x1_1_address0;
output   buff_x1_1_ce0;
output   buff_x1_1_we0;
output  [31:0] buff_x1_1_d0;
input  [31:0] buff_x1_1_q0;
output  [2:0] buff_x1_2_address0;
output   buff_x1_2_ce0;
output   buff_x1_2_we0;
output  [31:0] buff_x1_2_d0;
input  [31:0] buff_x1_2_q0;
output  [2:0] buff_x1_3_address0;
output   buff_x1_3_ce0;
output   buff_x1_3_we0;
output  [31:0] buff_x1_3_d0;
input  [31:0] buff_x1_3_q0;
output  [2:0] buff_x1_4_address0;
output   buff_x1_4_ce0;
output   buff_x1_4_we0;
output  [31:0] buff_x1_4_d0;
input  [31:0] buff_x1_4_q0;
output  [2:0] buff_x1_5_address0;
output   buff_x1_5_ce0;
output   buff_x1_5_we0;
output  [31:0] buff_x1_5_d0;
input  [31:0] buff_x1_5_q0;
output  [2:0] buff_x1_6_address0;
output   buff_x1_6_ce0;
output   buff_x1_6_we0;
output  [31:0] buff_x1_6_d0;
input  [31:0] buff_x1_6_q0;
output  [2:0] buff_x1_7_address0;
output   buff_x1_7_ce0;
output   buff_x1_7_we0;
output  [31:0] buff_x1_7_d0;
input  [31:0] buff_x1_7_q0;
output  [31:0] grp_fu_971_p_din0;
output  [31:0] grp_fu_971_p_din1;
output  [1:0] grp_fu_971_p_opcode;
input  [31:0] grp_fu_971_p_dout0;
output   grp_fu_971_p_ce;
output  [31:0] grp_fu_975_p_din0;
output  [31:0] grp_fu_975_p_din1;
input  [31:0] grp_fu_975_p_dout0;
output   grp_fu_975_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [28:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln23_reg_780;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_subdone;
reg   [31:0] reg_448;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln23_fu_479_p2;
wire   [6:0] select_ln6_fu_511_p3;
reg   [6:0] select_ln6_reg_784;
wire   [5:0] empty_12_fu_527_p1;
reg   [5:0] empty_12_reg_790;
wire   [0:0] first_iter_0_fu_531_p2;
reg   [0:0] first_iter_0_reg_795;
wire   [2:0] trunc_ln23_fu_537_p1;
reg   [2:0] trunc_ln23_reg_799;
reg   [2:0] trunc_ln23_reg_799_pp0_iter1_reg;
reg   [2:0] buff_x1_addr_reg_804;
reg   [2:0] buff_x1_addr_reg_804_pp0_iter1_reg;
reg   [2:0] buff_x1_1_addr_reg_809;
reg   [2:0] buff_x1_1_addr_reg_809_pp0_iter1_reg;
reg   [2:0] buff_x1_2_addr_reg_814;
reg   [2:0] buff_x1_2_addr_reg_814_pp0_iter1_reg;
reg   [2:0] buff_x1_3_addr_reg_819;
reg   [2:0] buff_x1_3_addr_reg_819_pp0_iter1_reg;
reg   [2:0] buff_x1_4_addr_reg_824;
reg   [2:0] buff_x1_4_addr_reg_824_pp0_iter1_reg;
reg   [2:0] buff_x1_5_addr_reg_829;
reg   [2:0] buff_x1_5_addr_reg_829_pp0_iter1_reg;
reg   [2:0] buff_x1_6_addr_reg_834;
reg   [2:0] buff_x1_6_addr_reg_834_pp0_iter1_reg;
reg   [2:0] buff_x1_7_addr_reg_839;
reg   [2:0] buff_x1_7_addr_reg_839_pp0_iter1_reg;
wire   [2:0] lshr_ln6_3_fu_563_p4;
reg   [2:0] lshr_ln6_3_reg_844;
wire   [31:0] tmp_fu_595_p19;
reg   [31:0] tmp_reg_889;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln25_1_fu_655_p2;
reg   [0:0] icmp_ln25_1_reg_934;
wire   [31:0] select_ln25_1_fu_661_p3;
reg   [31:0] select_ln25_1_reg_942;
wire   [31:0] select_ln25_3_fu_669_p3;
reg   [31:0] select_ln25_3_reg_947;
wire   [31:0] select_ln25_5_fu_677_p3;
reg   [31:0] select_ln25_5_reg_952;
wire   [31:0] select_ln25_7_fu_685_p3;
reg   [31:0] select_ln25_7_reg_957;
wire   [31:0] select_ln25_fu_693_p3;
reg   [31:0] select_ln25_reg_962;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] select_ln25_2_fu_700_p3;
reg   [31:0] select_ln25_2_reg_967;
wire   [31:0] select_ln25_4_fu_707_p3;
reg   [31:0] select_ln25_4_reg_972;
wire   [31:0] select_ln25_6_fu_714_p3;
reg   [31:0] select_ln25_6_reg_977;
reg   [31:0] mul_reg_982;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul_1_reg_992;
reg   [31:0] mul_2_reg_997;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [31:0] mul_3_reg_1002;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [0:0] tmp_8_reg_1007;
wire    ap_block_pp0_stage28_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln6_1_fu_551_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln6_fu_573_p1;
wire   [63:0] zext_ln25_fu_643_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_112;
wire   [6:0] add_ln24_fu_729_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_1_fu_116;
wire   [6:0] select_ln23_fu_519_p3;
reg   [6:0] ap_sig_allocacmp_i_1_load;
reg   [10:0] indvar_flatten_fu_120;
wire   [10:0] add_ln23_1_fu_485_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [31:0] empty_fu_124;
wire    ap_block_pp0_stage7;
reg    buff_x1_ce0_local;
reg   [2:0] buff_x1_address0_local;
reg    buff_x1_we0_local;
wire    ap_block_pp0_stage6;
reg    buff_x1_1_ce0_local;
reg   [2:0] buff_x1_1_address0_local;
reg    buff_x1_1_we0_local;
reg    buff_x1_2_ce0_local;
reg   [2:0] buff_x1_2_address0_local;
reg    buff_x1_2_we0_local;
reg    buff_x1_3_ce0_local;
reg   [2:0] buff_x1_3_address0_local;
reg    buff_x1_3_we0_local;
reg    buff_x1_4_ce0_local;
reg   [2:0] buff_x1_4_address0_local;
reg    buff_x1_4_we0_local;
reg    buff_x1_5_ce0_local;
reg   [2:0] buff_x1_5_address0_local;
reg    buff_x1_5_we0_local;
reg    buff_x1_6_ce0_local;
reg   [2:0] buff_x1_6_address0_local;
reg    buff_x1_6_we0_local;
reg    buff_x1_7_ce0_local;
reg   [2:0] buff_x1_7_address0_local;
reg    buff_x1_7_we0_local;
reg    buff_y1_ce0_local;
reg    buff_y1_4_ce0_local;
reg    buff_y1_1_ce0_local;
reg    buff_y1_5_ce0_local;
reg    buff_y1_2_ce0_local;
reg    buff_y1_6_ce0_local;
reg    buff_y1_3_ce0_local;
reg    buff_y1_7_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_7_ce0_local;
reg   [31:0] grp_fu_440_p0;
reg   [31:0] grp_fu_440_p1;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21;
wire    ap_block_pp0_stage28;
reg   [31:0] grp_fu_444_p0;
reg   [31:0] grp_fu_444_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire   [0:0] tmp_7_fu_503_p3;
wire   [6:0] add_ln23_fu_497_p2;
wire   [2:0] lshr_ln6_1_fu_541_p4;
wire   [31:0] tmp_fu_595_p17;
wire   [8:0] tmp_5_fu_637_p3;
wire   [2:0] trunc_ln24_fu_634_p1;
wire    ap_block_pp0_stage2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [28:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage21_00001;
wire    ap_block_pp0_stage28_00001;
reg    ap_condition_1015;
wire   [2:0] tmp_fu_595_p1;
wire   [2:0] tmp_fu_595_p3;
wire   [2:0] tmp_fu_595_p5;
wire   [2:0] tmp_fu_595_p7;
wire  signed [2:0] tmp_fu_595_p9;
wire  signed [2:0] tmp_fu_595_p11;
wire  signed [2:0] tmp_fu_595_p13;
wire  signed [2:0] tmp_fu_595_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 29'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_112 = 7'd0;
#0 i_1_fu_116 = 7'd0;
#0 indvar_flatten_fu_120 = 11'd0;
#0 empty_fu_124 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U20(.din0(buff_x1_q0),.din1(buff_x1_1_q0),.din2(buff_x1_2_q0),.din3(buff_x1_3_q0),.din4(buff_x1_4_q0),.din5(buff_x1_5_q0),.din6(buff_x1_6_q0),.din7(buff_x1_7_q0),.def(tmp_fu_595_p17),.sel(trunc_ln23_reg_799),.dout(tmp_fu_595_p19));
mvt_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage28_subdone) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_1015)) begin
            empty_fu_124 <= tmp_reg_889;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_124 <= reg_448;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln23_fu_479_p2 == 1'd0))) begin
            i_1_fu_116 <= select_ln23_fu_519_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_116 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln23_fu_479_p2 == 1'd0))) begin
            indvar_flatten_fu_120 <= add_ln23_1_fu_485_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_120 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_112 <= 7'd0;
    end else if (((icmp_ln23_reg_780 == 1'd0) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        j_fu_112 <= add_ln24_fu_729_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_1_addr_reg_809 <= zext_ln6_1_fu_551_p1;
        buff_x1_1_addr_reg_809_pp0_iter1_reg <= buff_x1_1_addr_reg_809;
        buff_x1_2_addr_reg_814 <= zext_ln6_1_fu_551_p1;
        buff_x1_2_addr_reg_814_pp0_iter1_reg <= buff_x1_2_addr_reg_814;
        buff_x1_3_addr_reg_819 <= zext_ln6_1_fu_551_p1;
        buff_x1_3_addr_reg_819_pp0_iter1_reg <= buff_x1_3_addr_reg_819;
        buff_x1_4_addr_reg_824 <= zext_ln6_1_fu_551_p1;
        buff_x1_4_addr_reg_824_pp0_iter1_reg <= buff_x1_4_addr_reg_824;
        buff_x1_5_addr_reg_829 <= zext_ln6_1_fu_551_p1;
        buff_x1_5_addr_reg_829_pp0_iter1_reg <= buff_x1_5_addr_reg_829;
        buff_x1_6_addr_reg_834 <= zext_ln6_1_fu_551_p1;
        buff_x1_6_addr_reg_834_pp0_iter1_reg <= buff_x1_6_addr_reg_834;
        buff_x1_7_addr_reg_839 <= zext_ln6_1_fu_551_p1;
        buff_x1_7_addr_reg_839_pp0_iter1_reg <= buff_x1_7_addr_reg_839;
        buff_x1_addr_reg_804 <= zext_ln6_1_fu_551_p1;
        buff_x1_addr_reg_804_pp0_iter1_reg <= buff_x1_addr_reg_804;
        empty_12_reg_790 <= empty_12_fu_527_p1;
        first_iter_0_reg_795 <= first_iter_0_fu_531_p2;
        icmp_ln23_reg_780 <= icmp_ln23_fu_479_p2;
        lshr_ln6_3_reg_844 <= {{select_ln6_fu_511_p3[5:3]}};
        select_ln6_reg_784 <= select_ln6_fu_511_p3;
        trunc_ln23_reg_799 <= trunc_ln23_fu_537_p1;
        trunc_ln23_reg_799_pp0_iter1_reg <= trunc_ln23_reg_799;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln25_1_reg_934 <= icmp_ln25_1_fu_655_p2;
        select_ln25_1_reg_942 <= select_ln25_1_fu_661_p3;
        select_ln25_3_reg_947 <= select_ln25_3_fu_669_p3;
        select_ln25_5_reg_952 <= select_ln25_5_fu_677_p3;
        select_ln25_7_reg_957 <= select_ln25_7_fu_685_p3;
        tmp_reg_889 <= tmp_fu_595_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_1_reg_992 <= grp_fu_975_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_2_reg_997 <= grp_fu_975_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul_3_reg_1002 <= grp_fu_975_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_reg_982 <= grp_fu_975_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_448 <= grp_fu_971_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln25_2_reg_967 <= select_ln25_2_fu_700_p3;
        select_ln25_4_reg_972 <= select_ln25_4_fu_707_p3;
        select_ln25_6_reg_977 <= select_ln25_6_fu_714_p3;
        select_ln25_reg_962 <= select_ln25_fu_693_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        tmp_8_reg_1007 <= add_ln24_fu_729_p2[32'd6];
    end
end
always @ (*) begin
    if (((icmp_ln23_reg_780 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage28_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1_load = i_1_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_1_address0_local = buff_x1_1_addr_reg_809_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_1_address0_local = zext_ln6_1_fu_551_p1;
    end else begin
        buff_x1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_1_ce0_local = 1'b1;
    end else begin
        buff_x1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_1007 == 1'd1) & (trunc_ln23_reg_799_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_1_we0_local = 1'b1;
    end else begin
        buff_x1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_2_address0_local = buff_x1_2_addr_reg_814_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_2_address0_local = zext_ln6_1_fu_551_p1;
    end else begin
        buff_x1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_2_ce0_local = 1'b1;
    end else begin
        buff_x1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_1007 == 1'd1) & (trunc_ln23_reg_799_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_2_we0_local = 1'b1;
    end else begin
        buff_x1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_3_address0_local = buff_x1_3_addr_reg_819_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_3_address0_local = zext_ln6_1_fu_551_p1;
    end else begin
        buff_x1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_3_ce0_local = 1'b1;
    end else begin
        buff_x1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_1007 == 1'd1) & (trunc_ln23_reg_799_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_3_we0_local = 1'b1;
    end else begin
        buff_x1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_4_address0_local = buff_x1_4_addr_reg_824_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_4_address0_local = zext_ln6_1_fu_551_p1;
    end else begin
        buff_x1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_4_ce0_local = 1'b1;
    end else begin
        buff_x1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_1007 == 1'd1) & (trunc_ln23_reg_799_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_4_we0_local = 1'b1;
    end else begin
        buff_x1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_5_address0_local = buff_x1_5_addr_reg_829_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_5_address0_local = zext_ln6_1_fu_551_p1;
    end else begin
        buff_x1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_5_ce0_local = 1'b1;
    end else begin
        buff_x1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_1007 == 1'd1) & (trunc_ln23_reg_799_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_5_we0_local = 1'b1;
    end else begin
        buff_x1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_6_address0_local = buff_x1_6_addr_reg_834_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_6_address0_local = zext_ln6_1_fu_551_p1;
    end else begin
        buff_x1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_6_ce0_local = 1'b1;
    end else begin
        buff_x1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_1007 == 1'd1) & (trunc_ln23_reg_799_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_6_we0_local = 1'b1;
    end else begin
        buff_x1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_7_address0_local = buff_x1_7_addr_reg_839_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_7_address0_local = zext_ln6_1_fu_551_p1;
    end else begin
        buff_x1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_7_ce0_local = 1'b1;
    end else begin
        buff_x1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_1007 == 1'd1) & (trunc_ln23_reg_799_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_7_we0_local = 1'b1;
    end else begin
        buff_x1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_address0_local = buff_x1_addr_reg_804_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_address0_local = zext_ln6_1_fu_551_p1;
    end else begin
        buff_x1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_ce0_local = 1'b1;
    end else begin
        buff_x1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_1007 == 1'd1) & (trunc_ln23_reg_799_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_we0_local = 1'b1;
    end else begin
        buff_x1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_1_ce0_local = 1'b1;
    end else begin
        buff_y1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_2_ce0_local = 1'b1;
    end else begin
        buff_y1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_3_ce0_local = 1'b1;
    end else begin
        buff_y1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_4_ce0_local = 1'b1;
    end else begin
        buff_y1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_5_ce0_local = 1'b1;
    end else begin
        buff_y1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_6_ce0_local = 1'b1;
    end else begin
        buff_y1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_7_ce0_local = 1'b1;
    end else begin
        buff_y1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_ce0_local = 1'b1;
    end else begin
        buff_y1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_440_p0 = reg_448;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_440_p0 = empty_fu_124;
    end else begin
        grp_fu_440_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            grp_fu_440_p1 = mul_3_reg_1002;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_440_p1 = mul_2_reg_997;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_440_p1 = mul_1_reg_992;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_440_p1 = mul_reg_982;
        end else begin
            grp_fu_440_p1 = 'bx;
        end
    end else begin
        grp_fu_440_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_444_p0 = select_ln25_6_reg_977;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_444_p0 = select_ln25_4_reg_972;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_444_p0 = select_ln25_2_reg_967;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_444_p0 = select_ln25_reg_962;
        end else begin
            grp_fu_444_p0 = 'bx;
        end
    end else begin
        grp_fu_444_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_444_p1 = select_ln25_7_reg_957;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_444_p1 = select_ln25_5_reg_952;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_444_p1 = select_ln25_3_reg_947;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_444_p1 = select_ln25_1_reg_942;
        end else begin
            grp_fu_444_p1 = 'bx;
        end
    end else begin
        grp_fu_444_p1 = 'bx;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln23_1_fu_485_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);
assign add_ln23_fu_497_p2 = (ap_sig_allocacmp_i_1_load + 7'd1);
assign add_ln24_fu_729_p2 = (select_ln6_reg_784 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1015 = ((icmp_ln23_reg_780 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_0_reg_795 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln25_fu_643_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln25_fu_643_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln25_fu_643_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln25_fu_643_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln25_fu_643_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln25_fu_643_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln25_fu_643_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_address0 = zext_ln25_fu_643_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_x1_1_address0 = buff_x1_1_address0_local;
assign buff_x1_1_ce0 = buff_x1_1_ce0_local;
assign buff_x1_1_d0 = reg_448;
assign buff_x1_1_we0 = buff_x1_1_we0_local;
assign buff_x1_2_address0 = buff_x1_2_address0_local;
assign buff_x1_2_ce0 = buff_x1_2_ce0_local;
assign buff_x1_2_d0 = reg_448;
assign buff_x1_2_we0 = buff_x1_2_we0_local;
assign buff_x1_3_address0 = buff_x1_3_address0_local;
assign buff_x1_3_ce0 = buff_x1_3_ce0_local;
assign buff_x1_3_d0 = reg_448;
assign buff_x1_3_we0 = buff_x1_3_we0_local;
assign buff_x1_4_address0 = buff_x1_4_address0_local;
assign buff_x1_4_ce0 = buff_x1_4_ce0_local;
assign buff_x1_4_d0 = reg_448;
assign buff_x1_4_we0 = buff_x1_4_we0_local;
assign buff_x1_5_address0 = buff_x1_5_address0_local;
assign buff_x1_5_ce0 = buff_x1_5_ce0_local;
assign buff_x1_5_d0 = reg_448;
assign buff_x1_5_we0 = buff_x1_5_we0_local;
assign buff_x1_6_address0 = buff_x1_6_address0_local;
assign buff_x1_6_ce0 = buff_x1_6_ce0_local;
assign buff_x1_6_d0 = reg_448;
assign buff_x1_6_we0 = buff_x1_6_we0_local;
assign buff_x1_7_address0 = buff_x1_7_address0_local;
assign buff_x1_7_ce0 = buff_x1_7_ce0_local;
assign buff_x1_7_d0 = reg_448;
assign buff_x1_7_we0 = buff_x1_7_we0_local;
assign buff_x1_address0 = buff_x1_address0_local;
assign buff_x1_ce0 = buff_x1_ce0_local;
assign buff_x1_d0 = reg_448;
assign buff_x1_we0 = buff_x1_we0_local;
assign buff_y1_1_address0 = zext_ln6_fu_573_p1;
assign buff_y1_1_ce0 = buff_y1_1_ce0_local;
assign buff_y1_2_address0 = zext_ln6_fu_573_p1;
assign buff_y1_2_ce0 = buff_y1_2_ce0_local;
assign buff_y1_3_address0 = zext_ln6_fu_573_p1;
assign buff_y1_3_ce0 = buff_y1_3_ce0_local;
assign buff_y1_4_address0 = zext_ln6_fu_573_p1;
assign buff_y1_4_ce0 = buff_y1_4_ce0_local;
assign buff_y1_5_address0 = zext_ln6_fu_573_p1;
assign buff_y1_5_ce0 = buff_y1_5_ce0_local;
assign buff_y1_6_address0 = zext_ln6_fu_573_p1;
assign buff_y1_6_ce0 = buff_y1_6_ce0_local;
assign buff_y1_7_address0 = zext_ln6_fu_573_p1;
assign buff_y1_7_ce0 = buff_y1_7_ce0_local;
assign buff_y1_address0 = zext_ln6_fu_573_p1;
assign buff_y1_ce0 = buff_y1_ce0_local;
assign empty_12_fu_527_p1 = select_ln23_fu_519_p3[5:0];
assign first_iter_0_fu_531_p2 = ((select_ln6_fu_511_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_971_p_ce = 1'b1;
assign grp_fu_971_p_din0 = grp_fu_440_p0;
assign grp_fu_971_p_din1 = grp_fu_440_p1;
assign grp_fu_971_p_opcode = 2'd0;
assign grp_fu_975_p_ce = 1'b1;
assign grp_fu_975_p_din0 = grp_fu_444_p0;
assign grp_fu_975_p_din1 = grp_fu_444_p1;
assign icmp_ln23_fu_479_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1024) ? 1'b1 : 1'b0);
assign icmp_ln25_1_fu_655_p2 = ((trunc_ln24_fu_634_p1 != 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln6_1_fu_541_p4 = {{select_ln23_fu_519_p3[5:3]}};
assign lshr_ln6_3_fu_563_p4 = {{select_ln6_fu_511_p3[5:3]}};
assign select_ln23_fu_519_p3 = ((tmp_7_fu_503_p3[0:0] == 1'b1) ? add_ln23_fu_497_p2 : ap_sig_allocacmp_i_1_load);
assign select_ln25_1_fu_661_p3 = ((icmp_ln25_1_fu_655_p2[0:0] == 1'b1) ? buff_y1_4_q0 : buff_y1_q0);
assign select_ln25_2_fu_700_p3 = ((icmp_ln25_1_reg_934[0:0] == 1'b1) ? buff_A_5_q0 : buff_A_1_q0);
assign select_ln25_3_fu_669_p3 = ((icmp_ln25_1_fu_655_p2[0:0] == 1'b1) ? buff_y1_5_q0 : buff_y1_1_q0);
assign select_ln25_4_fu_707_p3 = ((icmp_ln25_1_reg_934[0:0] == 1'b1) ? buff_A_6_q0 : buff_A_2_q0);
assign select_ln25_5_fu_677_p3 = ((icmp_ln25_1_fu_655_p2[0:0] == 1'b1) ? buff_y1_6_q0 : buff_y1_2_q0);
assign select_ln25_6_fu_714_p3 = ((icmp_ln25_1_reg_934[0:0] == 1'b1) ? buff_A_7_q0 : buff_A_3_q0);
assign select_ln25_7_fu_685_p3 = ((icmp_ln25_1_fu_655_p2[0:0] == 1'b1) ? buff_y1_7_q0 : buff_y1_3_q0);
assign select_ln25_fu_693_p3 = ((icmp_ln25_1_reg_934[0:0] == 1'b1) ? buff_A_4_q0 : buff_A_q0);
assign select_ln6_fu_511_p3 = ((tmp_7_fu_503_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp_5_fu_637_p3 = {{empty_12_reg_790}, {lshr_ln6_3_reg_844}};
assign tmp_7_fu_503_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_fu_595_p17 = 'bx;
assign trunc_ln23_fu_537_p1 = select_ln23_fu_519_p3[2:0];
assign trunc_ln24_fu_634_p1 = select_ln6_reg_784[2:0];
assign zext_ln25_fu_643_p1 = tmp_5_fu_637_p3;
assign zext_ln6_1_fu_551_p1 = lshr_ln6_1_fu_541_p4;
assign zext_ln6_fu_573_p1 = lshr_ln6_3_fu_563_p4;
endmodule 