module bicg_bicg_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_r_address0,buff_r_ce0,buff_r_q0,buff_r_1_address0,buff_r_1_ce0,buff_r_1_q0,buff_r_2_address0,buff_r_2_ce0,buff_r_2_q0,buff_r_3_address0,buff_r_3_ce0,buff_r_3_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_s_out_address0,buff_s_out_ce0,buff_s_out_we0,buff_s_out_d0,buff_s_out_q0,buff_s_out_2_address0,buff_s_out_2_ce0,buff_s_out_2_we0,buff_s_out_2_d0,buff_s_out_2_q0,buff_s_out_1_address0,buff_s_out_1_ce0,buff_s_out_1_we0,buff_s_out_1_d0,buff_s_out_1_q0,buff_s_out_3_address0,buff_s_out_3_ce0,buff_s_out_3_we0,buff_s_out_3_d0,buff_s_out_3_q0,grp_fu_1873_p_din0,grp_fu_1873_p_din1,grp_fu_1873_p_opcode,grp_fu_1873_p_dout0,grp_fu_1873_p_ce,grp_fu_1877_p_din0,grp_fu_1877_p_din1,grp_fu_1877_p_dout0,grp_fu_1877_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 10'd1;
parameter    ap_ST_fsm_pp0_stage1 = 10'd2;
parameter    ap_ST_fsm_pp0_stage2 = 10'd4;
parameter    ap_ST_fsm_pp0_stage3 = 10'd8;
parameter    ap_ST_fsm_pp0_stage4 = 10'd16;
parameter    ap_ST_fsm_pp0_stage5 = 10'd32;
parameter    ap_ST_fsm_pp0_stage6 = 10'd64;
parameter    ap_ST_fsm_pp0_stage7 = 10'd128;
parameter    ap_ST_fsm_pp0_stage8 = 10'd256;
parameter    ap_ST_fsm_pp0_stage9 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] buff_r_address0;
output   buff_r_ce0;
input  [31:0] buff_r_q0;
output  [3:0] buff_r_1_address0;
output   buff_r_1_ce0;
input  [31:0] buff_r_1_q0;
output  [3:0] buff_r_2_address0;
output   buff_r_2_ce0;
input  [31:0] buff_r_2_q0;
output  [3:0] buff_r_3_address0;
output   buff_r_3_ce0;
input  [31:0] buff_r_3_q0;
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
output  [3:0] buff_s_out_address0;
output   buff_s_out_ce0;
output   buff_s_out_we0;
output  [31:0] buff_s_out_d0;
input  [31:0] buff_s_out_q0;
output  [3:0] buff_s_out_2_address0;
output   buff_s_out_2_ce0;
output   buff_s_out_2_we0;
output  [31:0] buff_s_out_2_d0;
input  [31:0] buff_s_out_2_q0;
output  [3:0] buff_s_out_1_address0;
output   buff_s_out_1_ce0;
output   buff_s_out_1_we0;
output  [31:0] buff_s_out_1_d0;
input  [31:0] buff_s_out_1_q0;
output  [3:0] buff_s_out_3_address0;
output   buff_s_out_3_ce0;
output   buff_s_out_3_we0;
output  [31:0] buff_s_out_3_d0;
input  [31:0] buff_s_out_3_q0;
output  [31:0] grp_fu_1873_p_din0;
output  [31:0] grp_fu_1873_p_din1;
output  [1:0] grp_fu_1873_p_opcode;
input  [31:0] grp_fu_1873_p_dout0;
output   grp_fu_1873_p_ce;
output  [31:0] grp_fu_1877_p_din0;
output  [31:0] grp_fu_1877_p_din1;
input  [31:0] grp_fu_1877_p_dout0;
output   grp_fu_1877_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln23_reg_596;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [31:0] reg_316;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] icmp_ln23_fu_342_p2;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln5_fu_374_p3;
reg   [6:0] select_ln5_reg_600;
wire   [1:0] trunc_ln23_fu_390_p1;
reg   [1:0] trunc_ln23_reg_605;
wire   [0:0] trunc_ln23_1_fu_394_p1;
reg   [0:0] trunc_ln23_1_reg_610;
wire   [3:0] lshr_ln5_6_fu_420_p4;
reg   [3:0] lshr_ln5_6_reg_638;
reg   [4:0] tmp_1_reg_643;
reg   [3:0] buff_s_out_addr_reg_648;
reg   [3:0] buff_s_out_addr_reg_648_pp0_iter1_reg;
reg   [3:0] buff_s_out_2_addr_reg_653;
reg   [3:0] buff_s_out_2_addr_reg_653_pp0_iter1_reg;
wire   [0:0] icmp_ln25_1_fu_448_p2;
reg   [0:0] icmp_ln25_1_reg_658;
reg   [3:0] buff_s_out_1_addr_reg_666;
reg   [3:0] buff_s_out_1_addr_reg_666_pp0_iter1_reg;
reg   [3:0] buff_s_out_3_addr_reg_671;
reg   [3:0] buff_s_out_3_addr_reg_671_pp0_iter1_reg;
wire   [0:0] icmp_ln25_fu_454_p2;
reg   [0:0] icmp_ln25_reg_676;
reg   [0:0] icmp_ln25_reg_676_pp0_iter1_reg;
wire   [31:0] tmp_fu_470_p11;
reg   [31:0] tmp_reg_680;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] buff_s_out_load_reg_725;
reg   [31:0] buff_s_out_1_load_reg_730;
wire   [31:0] select_ln25_3_fu_525_p3;
reg   [31:0] select_ln25_3_reg_735;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] select_ln25_6_fu_546_p3;
reg   [31:0] select_ln25_6_reg_740;
wire   [31:0] select_ln25_fu_553_p3;
reg   [31:0] select_ln25_reg_745;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [31:0] mul_reg_750;
reg   [31:0] mul_1_reg_755;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] select_ln25_7_fu_559_p3;
reg   [31:0] select_ln25_7_reg_760;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_408_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5_1_fu_430_p1;
wire   [63:0] zext_ln25_fu_499_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_90;
wire   [6:0] add_ln24_fu_565_p2;
wire    ap_block_pp0_stage9_11001;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_1_fu_94;
wire   [6:0] select_ln23_fu_382_p3;
reg   [6:0] ap_sig_allocacmp_i_1_load;
reg   [11:0] indvar_flatten_fu_98;
wire   [11:0] add_ln23_1_fu_348_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg    buff_r_ce0_local;
reg    buff_r_1_ce0_local;
reg    buff_r_2_ce0_local;
reg    buff_r_3_ce0_local;
reg    buff_s_out_ce0_local;
reg   [3:0] buff_s_out_address0_local;
reg    buff_s_out_we0_local;
wire    ap_block_pp0_stage4;
reg    buff_s_out_1_ce0_local;
reg   [3:0] buff_s_out_1_address0_local;
reg    buff_s_out_1_we0_local;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage5;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_7_ce0_local;
reg    buff_s_out_2_ce0_local;
reg   [3:0] buff_s_out_2_address0_local;
reg    buff_s_out_2_we0_local;
reg    buff_s_out_3_ce0_local;
reg   [3:0] buff_s_out_3_address0_local;
wire    ap_block_pp0_stage6;
reg    buff_s_out_3_we0_local;
reg   [31:0] grp_fu_308_p0;
reg   [31:0] grp_fu_308_p1;
wire    ap_block_pp0_stage7;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8;
reg   [31:0] grp_fu_312_p0;
wire    ap_block_pp0_stage3;
wire   [0:0] tmp_36_fu_366_p3;
wire   [6:0] add_ln23_fu_360_p2;
wire   [3:0] lshr_ln5_3_fu_398_p4;
wire   [1:0] trunc_ln24_fu_416_p1;
wire   [31:0] tmp_fu_470_p9;
wire   [8:0] tmp_2_fu_493_p3;
wire    ap_block_pp0_stage2;
wire   [31:0] select_ln25_2_fu_518_p3;
wire   [31:0] select_ln25_1_fu_511_p3;
wire   [31:0] select_ln25_5_fu_539_p3;
wire   [31:0] select_ln25_4_fu_532_p3;
wire    ap_block_pp0_stage9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [9:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage8_00001;
wire   [1:0] tmp_fu_470_p1;
wire   [1:0] tmp_fu_470_p3;
wire  signed [1:0] tmp_fu_470_p5;
wire  signed [1:0] tmp_fu_470_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_90 = 7'd0;
#0 i_1_fu_94 = 7'd0;
#0 indvar_flatten_fu_98 = 12'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U17(.din0(buff_r_q0),.din1(buff_r_1_q0),.din2(buff_r_2_q0),.din3(buff_r_3_q0),.def(tmp_fu_470_p9),.sel(trunc_ln23_reg_605),.dout(tmp_fu_470_p11));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
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
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_342_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_94 <= select_ln23_fu_382_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_94 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_342_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_98 <= add_ln23_1_fu_348_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_98 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_90 <= 7'd0;
    end else if (((icmp_ln23_reg_596 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        j_fu_90 <= add_ln24_fu_565_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_addr_reg_666 <= zext_ln5_1_fu_430_p1;
        buff_s_out_1_addr_reg_666_pp0_iter1_reg <= buff_s_out_1_addr_reg_666;
        buff_s_out_2_addr_reg_653 <= zext_ln5_1_fu_430_p1;
        buff_s_out_2_addr_reg_653_pp0_iter1_reg <= buff_s_out_2_addr_reg_653;
        buff_s_out_3_addr_reg_671 <= zext_ln5_1_fu_430_p1;
        buff_s_out_3_addr_reg_671_pp0_iter1_reg <= buff_s_out_3_addr_reg_671;
        buff_s_out_addr_reg_648 <= zext_ln5_1_fu_430_p1;
        buff_s_out_addr_reg_648_pp0_iter1_reg <= buff_s_out_addr_reg_648;
        icmp_ln23_reg_596 <= icmp_ln23_fu_342_p2;
        icmp_ln25_1_reg_658 <= icmp_ln25_1_fu_448_p2;
        icmp_ln25_reg_676 <= icmp_ln25_fu_454_p2;
        icmp_ln25_reg_676_pp0_iter1_reg <= icmp_ln25_reg_676;
        lshr_ln5_6_reg_638 <= {{select_ln5_fu_374_p3[5:2]}};
        select_ln5_reg_600 <= select_ln5_fu_374_p3;
        tmp_1_reg_643 <= {{select_ln23_fu_382_p3[5:1]}};
        trunc_ln23_1_reg_610 <= trunc_ln23_1_fu_394_p1;
        trunc_ln23_reg_605 <= trunc_ln23_fu_390_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_1_load_reg_730 <= buff_s_out_1_q0;
        buff_s_out_load_reg_725 <= buff_s_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_1_reg_755 <= grp_fu_1877_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_reg_750 <= grp_fu_1877_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_316 <= grp_fu_1873_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln25_3_reg_735 <= select_ln25_3_fu_525_p3;
        select_ln25_6_reg_740 <= select_ln25_6_fu_546_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        select_ln25_7_reg_760 <= select_ln25_7_fu_559_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        select_ln25_reg_745 <= select_ln25_fu_553_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_reg_680 <= tmp_fu_470_p11;
    end
end
always @ (*) begin
    if (((icmp_ln23_reg_596 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1_load = i_1_fu_94;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_98;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_90;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_1_ce0_local = 1'b1;
    end else begin
        buff_r_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_2_ce0_local = 1'b1;
    end else begin
        buff_r_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_3_ce0_local = 1'b1;
    end else begin
        buff_r_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        buff_s_out_1_address0_local = buff_s_out_1_addr_reg_666_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_address0_local = zext_ln5_1_fu_430_p1;
    end else begin
        buff_s_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln25_reg_676_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_reg_653_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        buff_s_out_2_address0_local = buff_s_out_2_addr_reg_653;
    end else begin
        buff_s_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln25_reg_676_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_reg_671_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_s_out_3_address0_local = buff_s_out_3_addr_reg_671;
    end else begin
        buff_s_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln25_reg_676_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        buff_s_out_address0_local = buff_s_out_addr_reg_648_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_address0_local = zext_ln5_1_fu_430_p1;
    end else begin
        buff_s_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln25_reg_676_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_308_p0 = select_ln25_7_reg_760;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_308_p0 = select_ln25_reg_745;
        end else begin
            grp_fu_308_p0 = 'bx;
        end
    end else begin
        grp_fu_308_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_308_p1 = mul_1_reg_755;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_308_p1 = mul_reg_750;
        end else begin
            grp_fu_308_p1 = 'bx;
        end
    end else begin
        grp_fu_308_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_312_p0 = select_ln25_6_reg_740;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_312_p0 = select_ln25_3_reg_735;
        end else begin
            grp_fu_312_p0 = 'bx;
        end
    end else begin
        grp_fu_312_p0 = 'bx;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln23_1_fu_348_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln23_fu_360_p2 = (ap_sig_allocacmp_i_1_load + 7'd1);
assign add_ln24_fu_565_p2 = (select_ln5_reg_600 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
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
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln25_fu_499_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln25_fu_499_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln25_fu_499_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln25_fu_499_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln25_fu_499_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln25_fu_499_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln25_fu_499_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_address0 = zext_ln25_fu_499_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_r_1_address0 = zext_ln5_fu_408_p1;
assign buff_r_1_ce0 = buff_r_1_ce0_local;
assign buff_r_2_address0 = zext_ln5_fu_408_p1;
assign buff_r_2_ce0 = buff_r_2_ce0_local;
assign buff_r_3_address0 = zext_ln5_fu_408_p1;
assign buff_r_3_ce0 = buff_r_3_ce0_local;
assign buff_r_address0 = zext_ln5_fu_408_p1;
assign buff_r_ce0 = buff_r_ce0_local;
assign buff_s_out_1_address0 = buff_s_out_1_address0_local;
assign buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
assign buff_s_out_1_d0 = reg_316;
assign buff_s_out_1_we0 = buff_s_out_1_we0_local;
assign buff_s_out_2_address0 = buff_s_out_2_address0_local;
assign buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
assign buff_s_out_2_d0 = reg_316;
assign buff_s_out_2_we0 = buff_s_out_2_we0_local;
assign buff_s_out_3_address0 = buff_s_out_3_address0_local;
assign buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
assign buff_s_out_3_d0 = reg_316;
assign buff_s_out_3_we0 = buff_s_out_3_we0_local;
assign buff_s_out_address0 = buff_s_out_address0_local;
assign buff_s_out_ce0 = buff_s_out_ce0_local;
assign buff_s_out_d0 = reg_316;
assign buff_s_out_we0 = buff_s_out_we0_local;
assign grp_fu_1873_p_ce = 1'b1;
assign grp_fu_1873_p_din0 = grp_fu_308_p0;
assign grp_fu_1873_p_din1 = grp_fu_308_p1;
assign grp_fu_1873_p_opcode = 2'd0;
assign grp_fu_1877_p_ce = 1'b1;
assign grp_fu_1877_p_din0 = grp_fu_312_p0;
assign grp_fu_1877_p_din1 = tmp_reg_680;
assign icmp_ln23_fu_342_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln25_1_fu_448_p2 = ((trunc_ln24_fu_416_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln25_fu_454_p2 = ((trunc_ln24_fu_416_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln5_3_fu_398_p4 = {{select_ln23_fu_382_p3[5:2]}};
assign lshr_ln5_6_fu_420_p4 = {{select_ln5_fu_374_p3[5:2]}};
assign select_ln23_fu_382_p3 = ((tmp_36_fu_366_p3[0:0] == 1'b1) ? add_ln23_fu_360_p2 : ap_sig_allocacmp_i_1_load);
assign select_ln25_1_fu_511_p3 = ((trunc_ln23_1_reg_610[0:0] == 1'b1) ? buff_A_1_q0 : buff_A_q0);
assign select_ln25_2_fu_518_p3 = ((trunc_ln23_1_reg_610[0:0] == 1'b1) ? buff_A_5_q0 : buff_A_4_q0);
assign select_ln25_3_fu_525_p3 = ((icmp_ln25_1_reg_658[0:0] == 1'b1) ? select_ln25_2_fu_518_p3 : select_ln25_1_fu_511_p3);
assign select_ln25_4_fu_532_p3 = ((trunc_ln23_1_reg_610[0:0] == 1'b1) ? buff_A_3_q0 : buff_A_2_q0);
assign select_ln25_5_fu_539_p3 = ((trunc_ln23_1_reg_610[0:0] == 1'b1) ? buff_A_7_q0 : buff_A_6_q0);
assign select_ln25_6_fu_546_p3 = ((icmp_ln25_1_reg_658[0:0] == 1'b1) ? select_ln25_5_fu_539_p3 : select_ln25_4_fu_532_p3);
assign select_ln25_7_fu_559_p3 = ((icmp_ln25_1_reg_658[0:0] == 1'b1) ? buff_s_out_3_q0 : buff_s_out_1_load_reg_730);
assign select_ln25_fu_553_p3 = ((icmp_ln25_1_reg_658[0:0] == 1'b1) ? buff_s_out_2_q0 : buff_s_out_load_reg_725);
assign select_ln5_fu_374_p3 = ((tmp_36_fu_366_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp_2_fu_493_p3 = {{tmp_1_reg_643}, {lshr_ln5_6_reg_638}};
assign tmp_36_fu_366_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_fu_470_p9 = 'bx;
assign trunc_ln23_1_fu_394_p1 = select_ln23_fu_382_p3[0:0];
assign trunc_ln23_fu_390_p1 = select_ln23_fu_382_p3[1:0];
assign trunc_ln24_fu_416_p1 = select_ln5_fu_374_p3[1:0];
assign zext_ln25_fu_499_p1 = tmp_2_fu_493_p3;
assign zext_ln5_1_fu_430_p1 = lshr_ln5_6_fu_420_p4;
assign zext_ln5_fu_408_p1 = lshr_ln5_3_fu_398_p4;
endmodule 