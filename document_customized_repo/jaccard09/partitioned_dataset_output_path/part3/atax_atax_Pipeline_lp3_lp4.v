
module atax_atax_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_q0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_q0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_q0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,buff_y_out_q0,buff_y_out_4_address0,buff_y_out_4_ce0,buff_y_out_4_we0,buff_y_out_4_d0,buff_y_out_4_q0,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,buff_y_out_1_q0,buff_y_out_5_address0,buff_y_out_5_ce0,buff_y_out_5_we0,buff_y_out_5_d0,buff_y_out_5_q0,buff_y_out_2_address0,buff_y_out_2_ce0,buff_y_out_2_we0,buff_y_out_2_d0,buff_y_out_2_q0,buff_y_out_6_address0,buff_y_out_6_ce0,buff_y_out_6_we0,buff_y_out_6_d0,buff_y_out_6_q0,buff_y_out_3_address0,buff_y_out_3_ce0,buff_y_out_3_we0,buff_y_out_3_d0,buff_y_out_3_q0,buff_y_out_7_address0,buff_y_out_7_ce0,buff_y_out_7_we0,buff_y_out_7_d0,buff_y_out_7_q0,grp_fu_753_p_din0,grp_fu_753_p_din1,grp_fu_753_p_opcode,grp_fu_753_p_dout0,grp_fu_753_p_ce,grp_fu_757_p_din0,grp_fu_757_p_din1,grp_fu_757_p_dout0,grp_fu_757_p_ce);  
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
output  [2:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [2:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [2:0] tmp1_2_address0;
output   tmp1_2_ce0;
input  [31:0] tmp1_2_q0;
output  [2:0] tmp1_3_address0;
output   tmp1_3_ce0;
input  [31:0] tmp1_3_q0;
output  [2:0] tmp1_4_address0;
output   tmp1_4_ce0;
input  [31:0] tmp1_4_q0;
output  [2:0] tmp1_5_address0;
output   tmp1_5_ce0;
input  [31:0] tmp1_5_q0;
output  [2:0] tmp1_6_address0;
output   tmp1_6_ce0;
input  [31:0] tmp1_6_q0;
output  [2:0] tmp1_7_address0;
output   tmp1_7_ce0;
input  [31:0] tmp1_7_q0;
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
output  [2:0] buff_y_out_address0;
output   buff_y_out_ce0;
output   buff_y_out_we0;
output  [31:0] buff_y_out_d0;
input  [31:0] buff_y_out_q0;
output  [2:0] buff_y_out_4_address0;
output   buff_y_out_4_ce0;
output   buff_y_out_4_we0;
output  [31:0] buff_y_out_4_d0;
input  [31:0] buff_y_out_4_q0;
output  [2:0] buff_y_out_1_address0;
output   buff_y_out_1_ce0;
output   buff_y_out_1_we0;
output  [31:0] buff_y_out_1_d0;
input  [31:0] buff_y_out_1_q0;
output  [2:0] buff_y_out_5_address0;
output   buff_y_out_5_ce0;
output   buff_y_out_5_we0;
output  [31:0] buff_y_out_5_d0;
input  [31:0] buff_y_out_5_q0;
output  [2:0] buff_y_out_2_address0;
output   buff_y_out_2_ce0;
output   buff_y_out_2_we0;
output  [31:0] buff_y_out_2_d0;
input  [31:0] buff_y_out_2_q0;
output  [2:0] buff_y_out_6_address0;
output   buff_y_out_6_ce0;
output   buff_y_out_6_we0;
output  [31:0] buff_y_out_6_d0;
input  [31:0] buff_y_out_6_q0;
output  [2:0] buff_y_out_3_address0;
output   buff_y_out_3_ce0;
output   buff_y_out_3_we0;
output  [31:0] buff_y_out_3_d0;
input  [31:0] buff_y_out_3_q0;
output  [2:0] buff_y_out_7_address0;
output   buff_y_out_7_ce0;
output   buff_y_out_7_we0;
output  [31:0] buff_y_out_7_d0;
input  [31:0] buff_y_out_7_q0;
output  [31:0] grp_fu_753_p_din0;
output  [31:0] grp_fu_753_p_din1;
output  [1:0] grp_fu_753_p_opcode;
input  [31:0] grp_fu_753_p_dout0;
output   grp_fu_753_p_ce;
output  [31:0] grp_fu_757_p_din0;
output  [31:0] grp_fu_757_p_din1;
input  [31:0] grp_fu_757_p_dout0;
output   grp_fu_757_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln26_reg_736;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [31:0] reg_440;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] icmp_ln26_fu_470_p2;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln5_fu_502_p3;
reg   [6:0] select_ln5_reg_740;
wire   [5:0] trunc_ln26_fu_518_p1;
reg   [5:0] trunc_ln26_reg_745;
wire   [2:0] trunc_ln26_1_fu_522_p1;
reg   [2:0] trunc_ln26_1_reg_750;
wire   [2:0] lshr_ln5_6_fu_552_p4;
reg   [2:0] lshr_ln5_6_reg_795;
reg   [2:0] buff_y_out_addr_reg_800;
reg   [2:0] buff_y_out_addr_reg_800_pp0_iter1_reg;
reg   [2:0] buff_y_out_4_addr_reg_805;
reg   [2:0] buff_y_out_4_addr_reg_805_pp0_iter1_reg;
wire   [0:0] icmp_ln28_1_fu_574_p2;
reg   [0:0] icmp_ln28_1_reg_810;
reg   [2:0] buff_y_out_1_addr_reg_822;
reg   [2:0] buff_y_out_1_addr_reg_822_pp0_iter1_reg;
reg   [2:0] buff_y_out_5_addr_reg_827;
reg   [2:0] buff_y_out_5_addr_reg_827_pp0_iter1_reg;
reg   [2:0] buff_y_out_2_addr_reg_832;
reg   [2:0] buff_y_out_2_addr_reg_832_pp0_iter1_reg;
reg   [2:0] buff_y_out_6_addr_reg_837;
reg   [2:0] buff_y_out_6_addr_reg_837_pp0_iter1_reg;
reg   [2:0] buff_y_out_3_addr_reg_842;
reg   [2:0] buff_y_out_3_addr_reg_842_pp0_iter1_reg;
reg   [2:0] buff_y_out_7_addr_reg_847;
reg   [2:0] buff_y_out_7_addr_reg_847_pp0_iter1_reg;
wire   [0:0] icmp_ln28_fu_580_p2;
reg   [0:0] icmp_ln28_reg_852;
reg   [0:0] icmp_ln28_reg_852_pp0_iter1_reg;
wire   [31:0] tmp_1_fu_596_p19;
reg   [31:0] tmp_1_reg_856;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] buff_y_out_load_reg_901;
reg   [31:0] buff_y_out_1_load_reg_906;
reg   [31:0] buff_y_out_2_load_reg_911;
reg   [31:0] buff_y_out_3_load_reg_916;
wire   [31:0] select_ln28_1_fu_653_p3;
reg   [31:0] select_ln28_1_reg_921;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] select_ln28_2_fu_660_p3;
reg   [31:0] select_ln28_2_reg_926;
wire   [31:0] select_ln28_3_fu_667_p3;
reg   [31:0] select_ln28_3_reg_931;
wire   [31:0] select_ln28_4_fu_674_p3;
reg   [31:0] select_ln28_4_reg_936;
wire   [31:0] select_ln28_fu_681_p3;
reg   [31:0] select_ln28_reg_941;
reg   [31:0] mul1_reg_946;
reg   [31:0] mul57_1_reg_951;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] select_ln28_5_fu_687_p3;
reg   [31:0] select_ln28_5_reg_956;
reg   [31:0] mul57_2_reg_961;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] select_ln28_6_fu_693_p3;
reg   [31:0] select_ln28_6_reg_966;
reg   [31:0] mul57_3_reg_971;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] select_ln28_7_fu_699_p3;
reg   [31:0] select_ln28_7_reg_976;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_536_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5_1_fu_562_p1;
wire   [63:0] zext_ln28_fu_641_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_112;
wire   [6:0] add_ln27_fu_705_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_116;
wire   [6:0] select_ln26_fu_510_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [10:0] indvar_flatten8_fu_120;
wire   [10:0] add_ln26_1_fu_476_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten8_load;
reg    tmp1_ce0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_3_ce0_local;
reg    tmp1_4_ce0_local;
reg    tmp1_5_ce0_local;
reg    tmp1_6_ce0_local;
reg    tmp1_7_ce0_local;
reg    buff_y_out_ce0_local;
reg   [2:0] buff_y_out_address0_local;
reg    buff_y_out_we0_local;
wire    ap_block_pp0_stage4;
reg    buff_y_out_1_ce0_local;
reg   [2:0] buff_y_out_1_address0_local;
reg    buff_y_out_1_we0_local;
wire    ap_block_pp0_stage5;
reg    buff_y_out_2_ce0_local;
reg   [2:0] buff_y_out_2_address0_local;
reg    buff_y_out_2_we0_local;
wire    ap_block_pp0_stage6;
reg    buff_y_out_3_ce0_local;
reg   [2:0] buff_y_out_3_address0_local;
reg    buff_y_out_3_we0_local;
wire    ap_block_pp0_stage7;
reg    buff_A_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_7_ce0_local;
reg    buff_y_out_4_ce0_local;
reg   [2:0] buff_y_out_4_address0_local;
reg    buff_y_out_4_we0_local;
reg    buff_y_out_5_ce0_local;
reg   [2:0] buff_y_out_5_address0_local;
reg    buff_y_out_5_we0_local;
reg    buff_y_out_6_ce0_local;
reg   [2:0] buff_y_out_6_address0_local;
reg    buff_y_out_6_we0_local;
reg    buff_y_out_7_ce0_local;
reg   [2:0] buff_y_out_7_address0_local;
wire    ap_block_pp0_stage8;
reg    buff_y_out_7_we0_local;
reg   [31:0] grp_fu_432_p0;
reg   [31:0] grp_fu_432_p1;
wire    ap_block_pp0_stage9;
reg   [31:0] grp_fu_436_p0;
wire    ap_block_pp0_stage3;
wire   [0:0] tmp_fu_494_p3;
wire   [6:0] add_ln26_fu_488_p2;
wire   [2:0] lshr_ln5_2_fu_526_p4;
wire   [2:0] trunc_ln27_fu_548_p1;
wire   [31:0] tmp_1_fu_596_p17;
wire   [8:0] tmp_7_fu_635_p3;
wire    ap_block_pp0_stage2;
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
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage0_00001;
wire   [2:0] tmp_1_fu_596_p1;
wire   [2:0] tmp_1_fu_596_p3;
wire   [2:0] tmp_1_fu_596_p5;
wire   [2:0] tmp_1_fu_596_p7;
wire  signed [2:0] tmp_1_fu_596_p9;
wire  signed [2:0] tmp_1_fu_596_p11;
wire  signed [2:0] tmp_1_fu_596_p13;
wire  signed [2:0] tmp_1_fu_596_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_112 = 7'd0;
#0 i_fu_116 = 7'd0;
#0 indvar_flatten8_fu_120 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U53(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.din4(tmp1_4_q0),.din5(tmp1_5_q0),.din6(tmp1_6_q0),.din7(tmp1_7_q0),.def(tmp_1_fu_596_p17),.sel(trunc_ln26_1_reg_750),.dout(tmp_1_fu_596_p19));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
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
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln26_fu_470_p2 == 1'd0))) begin
            i_fu_116 <= select_ln26_fu_510_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_116 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln26_fu_470_p2 == 1'd0))) begin
            indvar_flatten8_fu_120 <= add_ln26_1_fu_476_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten8_fu_120 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_112 <= 7'd0;
    end else if (((icmp_ln26_reg_736 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        j_fu_112 <= add_ln27_fu_705_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_addr_reg_822 <= zext_ln5_1_fu_562_p1;
        buff_y_out_1_addr_reg_822_pp0_iter1_reg <= buff_y_out_1_addr_reg_822;
        buff_y_out_2_addr_reg_832 <= zext_ln5_1_fu_562_p1;
        buff_y_out_2_addr_reg_832_pp0_iter1_reg <= buff_y_out_2_addr_reg_832;
        buff_y_out_3_addr_reg_842 <= zext_ln5_1_fu_562_p1;
        buff_y_out_3_addr_reg_842_pp0_iter1_reg <= buff_y_out_3_addr_reg_842;
        buff_y_out_4_addr_reg_805 <= zext_ln5_1_fu_562_p1;
        buff_y_out_4_addr_reg_805_pp0_iter1_reg <= buff_y_out_4_addr_reg_805;
        buff_y_out_5_addr_reg_827 <= zext_ln5_1_fu_562_p1;
        buff_y_out_5_addr_reg_827_pp0_iter1_reg <= buff_y_out_5_addr_reg_827;
        buff_y_out_6_addr_reg_837 <= zext_ln5_1_fu_562_p1;
        buff_y_out_6_addr_reg_837_pp0_iter1_reg <= buff_y_out_6_addr_reg_837;
        buff_y_out_7_addr_reg_847 <= zext_ln5_1_fu_562_p1;
        buff_y_out_7_addr_reg_847_pp0_iter1_reg <= buff_y_out_7_addr_reg_847;
        buff_y_out_addr_reg_800 <= zext_ln5_1_fu_562_p1;
        buff_y_out_addr_reg_800_pp0_iter1_reg <= buff_y_out_addr_reg_800;
        icmp_ln26_reg_736 <= icmp_ln26_fu_470_p2;
        icmp_ln28_1_reg_810 <= icmp_ln28_1_fu_574_p2;
        icmp_ln28_reg_852 <= icmp_ln28_fu_580_p2;
        icmp_ln28_reg_852_pp0_iter1_reg <= icmp_ln28_reg_852;
        lshr_ln5_6_reg_795 <= {{select_ln5_fu_502_p3[5:3]}};
        select_ln5_reg_740 <= select_ln5_fu_502_p3;
        trunc_ln26_1_reg_750 <= trunc_ln26_1_fu_522_p1;
        trunc_ln26_reg_745 <= trunc_ln26_fu_518_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_load_reg_906 <= buff_y_out_1_q0;
        buff_y_out_2_load_reg_911 <= buff_y_out_2_q0;
        buff_y_out_3_load_reg_916 <= buff_y_out_3_q0;
        buff_y_out_load_reg_901 <= buff_y_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul1_reg_946 <= grp_fu_757_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul57_1_reg_951 <= grp_fu_757_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul57_2_reg_961 <= grp_fu_757_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul57_3_reg_971 <= grp_fu_757_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_440 <= grp_fu_753_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln28_1_reg_921 <= select_ln28_1_fu_653_p3;
        select_ln28_2_reg_926 <= select_ln28_2_fu_660_p3;
        select_ln28_3_reg_931 <= select_ln28_3_fu_667_p3;
        select_ln28_4_reg_936 <= select_ln28_4_fu_674_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        select_ln28_5_reg_956 <= select_ln28_5_fu_687_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        select_ln28_6_reg_966 <= select_ln28_6_fu_693_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        select_ln28_7_reg_976 <= select_ln28_7_fu_699_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        select_ln28_reg_941 <= select_ln28_fu_681_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_856 <= tmp_1_fu_596_p19;
    end
end
always @ (*) begin
    if (((icmp_ln26_reg_736 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_116;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten8_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten8_load = indvar_flatten8_fu_120;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_reg_822_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_address0_local = zext_ln5_1_fu_562_p1;
    end else begin
        buff_y_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln28_reg_852_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_reg_832_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_2_address0_local = zext_ln5_1_fu_562_p1;
    end else begin
        buff_y_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln28_reg_852_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_reg_842_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_3_address0_local = zext_ln5_1_fu_562_p1;
    end else begin
        buff_y_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln28_reg_852_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_reg_805_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_reg_805;
    end else begin
        buff_y_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        buff_y_out_4_ce0_local = 1'b1;
    end else begin
        buff_y_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln28_reg_852_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        buff_y_out_4_we0_local = 1'b1;
    end else begin
        buff_y_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_reg_827_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_reg_827;
    end else begin
        buff_y_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        buff_y_out_5_ce0_local = 1'b1;
    end else begin
        buff_y_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln28_reg_852_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        buff_y_out_5_we0_local = 1'b1;
    end else begin
        buff_y_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_reg_837_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_reg_837;
    end else begin
        buff_y_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        buff_y_out_6_ce0_local = 1'b1;
    end else begin
        buff_y_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln28_reg_852_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_y_out_6_we0_local = 1'b1;
    end else begin
        buff_y_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_reg_847_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_reg_847;
    end else begin
        buff_y_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        buff_y_out_7_ce0_local = 1'b1;
    end else begin
        buff_y_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln28_reg_852_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        buff_y_out_7_we0_local = 1'b1;
    end else begin
        buff_y_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        buff_y_out_address0_local = buff_y_out_addr_reg_800_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_address0_local = zext_ln5_1_fu_562_p1;
    end else begin
        buff_y_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln28_reg_852_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_432_p0 = select_ln28_7_reg_976;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_432_p0 = select_ln28_6_reg_966;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_432_p0 = select_ln28_5_reg_956;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_432_p0 = select_ln28_reg_941;
    end else begin
        grp_fu_432_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_432_p1 = mul57_3_reg_971;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_432_p1 = mul57_2_reg_961;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_432_p1 = mul57_1_reg_951;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_432_p1 = mul1_reg_946;
    end else begin
        grp_fu_432_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_436_p0 = select_ln28_4_reg_936;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_436_p0 = select_ln28_3_reg_931;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_436_p0 = select_ln28_2_reg_926;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_436_p0 = select_ln28_1_reg_921;
        end else begin
            grp_fu_436_p0 = 'bx;
        end
    end else begin
        grp_fu_436_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
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
assign add_ln26_1_fu_476_p2 = (ap_sig_allocacmp_indvar_flatten8_load + 11'd1);
assign add_ln26_fu_488_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln27_fu_705_p2 = (select_ln5_reg_740 + 7'd4);
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
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln28_fu_641_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln28_fu_641_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln28_fu_641_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln28_fu_641_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln28_fu_641_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln28_fu_641_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln28_fu_641_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_address0 = zext_ln28_fu_641_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_y_out_1_address0 = buff_y_out_1_address0_local;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_d0 = reg_440;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_2_address0 = buff_y_out_2_address0_local;
assign buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
assign buff_y_out_2_d0 = reg_440;
assign buff_y_out_2_we0 = buff_y_out_2_we0_local;
assign buff_y_out_3_address0 = buff_y_out_3_address0_local;
assign buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
assign buff_y_out_3_d0 = reg_440;
assign buff_y_out_3_we0 = buff_y_out_3_we0_local;
assign buff_y_out_4_address0 = buff_y_out_4_address0_local;
assign buff_y_out_4_ce0 = buff_y_out_4_ce0_local;
assign buff_y_out_4_d0 = reg_440;
assign buff_y_out_4_we0 = buff_y_out_4_we0_local;
assign buff_y_out_5_address0 = buff_y_out_5_address0_local;
assign buff_y_out_5_ce0 = buff_y_out_5_ce0_local;
assign buff_y_out_5_d0 = reg_440;
assign buff_y_out_5_we0 = buff_y_out_5_we0_local;
assign buff_y_out_6_address0 = buff_y_out_6_address0_local;
assign buff_y_out_6_ce0 = buff_y_out_6_ce0_local;
assign buff_y_out_6_d0 = reg_440;
assign buff_y_out_6_we0 = buff_y_out_6_we0_local;
assign buff_y_out_7_address0 = buff_y_out_7_address0_local;
assign buff_y_out_7_ce0 = buff_y_out_7_ce0_local;
assign buff_y_out_7_d0 = reg_440;
assign buff_y_out_7_we0 = buff_y_out_7_we0_local;
assign buff_y_out_address0 = buff_y_out_address0_local;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_d0 = reg_440;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign grp_fu_753_p_ce = 1'b1;
assign grp_fu_753_p_din0 = grp_fu_432_p0;
assign grp_fu_753_p_din1 = grp_fu_432_p1;
assign grp_fu_753_p_opcode = 2'd0;
assign grp_fu_757_p_ce = 1'b1;
assign grp_fu_757_p_din0 = grp_fu_436_p0;
assign grp_fu_757_p_din1 = tmp_1_reg_856;
assign icmp_ln26_fu_470_p2 = ((ap_sig_allocacmp_indvar_flatten8_load == 11'd1024) ? 1'b1 : 1'b0);
assign icmp_ln28_1_fu_574_p2 = ((trunc_ln27_fu_548_p1 != 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_580_p2 = ((trunc_ln27_fu_548_p1 == 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln5_2_fu_526_p4 = {{select_ln26_fu_510_p3[5:3]}};
assign lshr_ln5_6_fu_552_p4 = {{select_ln5_fu_502_p3[5:3]}};
assign select_ln26_fu_510_p3 = ((tmp_fu_494_p3[0:0] == 1'b1) ? add_ln26_fu_488_p2 : ap_sig_allocacmp_i_load);
assign select_ln28_1_fu_653_p3 = ((icmp_ln28_1_reg_810[0:0] == 1'b1) ? buff_A_4_q0 : buff_A_q0);
assign select_ln28_2_fu_660_p3 = ((icmp_ln28_1_reg_810[0:0] == 1'b1) ? buff_A_5_q0 : buff_A_1_q0);
assign select_ln28_3_fu_667_p3 = ((icmp_ln28_1_reg_810[0:0] == 1'b1) ? buff_A_6_q0 : buff_A_2_q0);
assign select_ln28_4_fu_674_p3 = ((icmp_ln28_1_reg_810[0:0] == 1'b1) ? buff_A_7_q0 : buff_A_3_q0);
assign select_ln28_5_fu_687_p3 = ((icmp_ln28_1_reg_810[0:0] == 1'b1) ? buff_y_out_5_q0 : buff_y_out_1_load_reg_906);
assign select_ln28_6_fu_693_p3 = ((icmp_ln28_1_reg_810[0:0] == 1'b1) ? buff_y_out_6_q0 : buff_y_out_2_load_reg_911);
assign select_ln28_7_fu_699_p3 = ((icmp_ln28_1_reg_810[0:0] == 1'b1) ? buff_y_out_7_q0 : buff_y_out_3_load_reg_916);
assign select_ln28_fu_681_p3 = ((icmp_ln28_1_reg_810[0:0] == 1'b1) ? buff_y_out_4_q0 : buff_y_out_load_reg_901);
assign select_ln5_fu_502_p3 = ((tmp_fu_494_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp1_1_address0 = zext_ln5_fu_536_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_2_address0 = zext_ln5_fu_536_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_3_address0 = zext_ln5_fu_536_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_4_address0 = zext_ln5_fu_536_p1;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_5_address0 = zext_ln5_fu_536_p1;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_6_address0 = zext_ln5_fu_536_p1;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_7_address0 = zext_ln5_fu_536_p1;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_address0 = zext_ln5_fu_536_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp_1_fu_596_p17 = 'bx;
assign tmp_7_fu_635_p3 = {{trunc_ln26_reg_745}, {lshr_ln5_6_reg_795}};
assign tmp_fu_494_p3 = ap_sig_allocacmp_j_load[32'd6];
assign trunc_ln26_1_fu_522_p1 = select_ln26_fu_510_p3[2:0];
assign trunc_ln26_fu_518_p1 = select_ln26_fu_510_p3[5:0];
assign trunc_ln27_fu_548_p1 = select_ln5_fu_502_p3[2:0];
assign zext_ln28_fu_641_p1 = tmp_7_fu_635_p3;
assign zext_ln5_1_fu_562_p1 = lshr_ln5_6_fu_552_p4;
assign zext_ln5_fu_536_p1 = lshr_ln5_2_fu_526_p4;
endmodule 
