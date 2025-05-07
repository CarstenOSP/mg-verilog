module bicg_bicg_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_p_address0,buff_p_ce0,buff_p_q0,buff_p_1_address0,buff_p_1_ce0,buff_p_1_q0,buff_p_2_address0,buff_p_2_ce0,buff_p_2_q0,buff_p_3_address0,buff_p_3_ce0,buff_p_3_q0,buff_p_4_address0,buff_p_4_ce0,buff_p_4_q0,buff_p_5_address0,buff_p_5_ce0,buff_p_5_q0,buff_p_6_address0,buff_p_6_ce0,buff_p_6_q0,buff_p_7_address0,buff_p_7_ce0,buff_p_7_q0,buff_q_out_address0,buff_q_out_ce0,buff_q_out_we0,buff_q_out_d0,buff_q_out_q0,buff_q_out_1_address0,buff_q_out_1_ce0,buff_q_out_1_we0,buff_q_out_1_d0,buff_q_out_1_q0,buff_q_out_2_address0,buff_q_out_2_ce0,buff_q_out_2_we0,buff_q_out_2_d0,buff_q_out_2_q0,buff_q_out_3_address0,buff_q_out_3_ce0,buff_q_out_3_we0,buff_q_out_3_d0,buff_q_out_3_q0,buff_q_out_4_address0,buff_q_out_4_ce0,buff_q_out_4_we0,buff_q_out_4_d0,buff_q_out_4_q0,buff_q_out_5_address0,buff_q_out_5_ce0,buff_q_out_5_we0,buff_q_out_5_d0,buff_q_out_5_q0,buff_q_out_6_address0,buff_q_out_6_ce0,buff_q_out_6_we0,buff_q_out_6_d0,buff_q_out_6_q0,buff_q_out_7_address0,buff_q_out_7_ce0,buff_q_out_7_we0,buff_q_out_7_d0,buff_q_out_7_q0,grp_fu_3178_p_din0,grp_fu_3178_p_din1,grp_fu_3178_p_opcode,grp_fu_3178_p_dout0,grp_fu_3178_p_ce,grp_fu_3182_p_din0,grp_fu_3182_p_din1,grp_fu_3182_p_dout0,grp_fu_3182_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
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
output  [2:0] buff_p_address0;
output   buff_p_ce0;
input  [31:0] buff_p_q0;
output  [2:0] buff_p_1_address0;
output   buff_p_1_ce0;
input  [31:0] buff_p_1_q0;
output  [2:0] buff_p_2_address0;
output   buff_p_2_ce0;
input  [31:0] buff_p_2_q0;
output  [2:0] buff_p_3_address0;
output   buff_p_3_ce0;
input  [31:0] buff_p_3_q0;
output  [2:0] buff_p_4_address0;
output   buff_p_4_ce0;
input  [31:0] buff_p_4_q0;
output  [2:0] buff_p_5_address0;
output   buff_p_5_ce0;
input  [31:0] buff_p_5_q0;
output  [2:0] buff_p_6_address0;
output   buff_p_6_ce0;
input  [31:0] buff_p_6_q0;
output  [2:0] buff_p_7_address0;
output   buff_p_7_ce0;
input  [31:0] buff_p_7_q0;
output  [2:0] buff_q_out_address0;
output   buff_q_out_ce0;
output   buff_q_out_we0;
output  [31:0] buff_q_out_d0;
input  [31:0] buff_q_out_q0;
output  [2:0] buff_q_out_1_address0;
output   buff_q_out_1_ce0;
output   buff_q_out_1_we0;
output  [31:0] buff_q_out_1_d0;
input  [31:0] buff_q_out_1_q0;
output  [2:0] buff_q_out_2_address0;
output   buff_q_out_2_ce0;
output   buff_q_out_2_we0;
output  [31:0] buff_q_out_2_d0;
input  [31:0] buff_q_out_2_q0;
output  [2:0] buff_q_out_3_address0;
output   buff_q_out_3_ce0;
output   buff_q_out_3_we0;
output  [31:0] buff_q_out_3_d0;
input  [31:0] buff_q_out_3_q0;
output  [2:0] buff_q_out_4_address0;
output   buff_q_out_4_ce0;
output   buff_q_out_4_we0;
output  [31:0] buff_q_out_4_d0;
input  [31:0] buff_q_out_4_q0;
output  [2:0] buff_q_out_5_address0;
output   buff_q_out_5_ce0;
output   buff_q_out_5_we0;
output  [31:0] buff_q_out_5_d0;
input  [31:0] buff_q_out_5_q0;
output  [2:0] buff_q_out_6_address0;
output   buff_q_out_6_ce0;
output   buff_q_out_6_we0;
output  [31:0] buff_q_out_6_d0;
input  [31:0] buff_q_out_6_q0;
output  [2:0] buff_q_out_7_address0;
output   buff_q_out_7_ce0;
output   buff_q_out_7_we0;
output  [31:0] buff_q_out_7_d0;
input  [31:0] buff_q_out_7_q0;
output  [31:0] grp_fu_3178_p_din0;
output  [31:0] grp_fu_3178_p_din1;
output  [1:0] grp_fu_3178_p_opcode;
input  [31:0] grp_fu_3178_p_dout0;
output   grp_fu_3178_p_ce;
output  [31:0] grp_fu_3182_p_din0;
output  [31:0] grp_fu_3182_p_din1;
input  [31:0] grp_fu_3182_p_dout0;
output   grp_fu_3182_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln29_reg_771;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln29_fu_462_p2;
wire   [6:0] select_ln5_fu_492_p3;
reg   [6:0] select_ln5_reg_775;
wire   [5:0] empty_13_fu_508_p1;
reg   [5:0] empty_13_reg_781;
wire   [0:0] first_iter_0_fu_512_p2;
reg   [0:0] first_iter_0_reg_786;
wire   [2:0] trunc_ln29_fu_518_p1;
reg   [2:0] trunc_ln29_reg_790;
reg   [2:0] trunc_ln29_reg_790_pp0_iter1_reg;
reg   [2:0] buff_q_out_addr_reg_795;
reg   [2:0] buff_q_out_addr_reg_795_pp0_iter1_reg;
reg   [2:0] buff_q_out_1_addr_reg_800;
reg   [2:0] buff_q_out_1_addr_reg_800_pp0_iter1_reg;
reg   [2:0] buff_q_out_2_addr_reg_805;
reg   [2:0] buff_q_out_2_addr_reg_805_pp0_iter1_reg;
reg   [2:0] buff_q_out_3_addr_reg_810;
reg   [2:0] buff_q_out_3_addr_reg_810_pp0_iter1_reg;
reg   [2:0] buff_q_out_4_addr_reg_815;
reg   [2:0] buff_q_out_4_addr_reg_815_pp0_iter1_reg;
reg   [2:0] buff_q_out_5_addr_reg_820;
reg   [2:0] buff_q_out_5_addr_reg_820_pp0_iter1_reg;
reg   [2:0] buff_q_out_6_addr_reg_825;
reg   [2:0] buff_q_out_6_addr_reg_825_pp0_iter1_reg;
reg   [2:0] buff_q_out_7_addr_reg_830;
reg   [2:0] buff_q_out_7_addr_reg_830_pp0_iter1_reg;
wire   [2:0] lshr_ln5_5_fu_544_p4;
reg   [2:0] lshr_ln5_5_reg_835;
wire   [31:0] tmp_1_fu_576_p19;
reg   [31:0] tmp_1_reg_880;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [2:0] trunc_ln30_fu_615_p1;
reg   [2:0] trunc_ln30_reg_885;
wire   [31:0] tmp_3_fu_636_p19;
reg   [31:0] tmp_3_reg_930;
wire   [0:0] icmp_ln30_1_fu_681_p2;
reg   [0:0] icmp_ln30_1_reg_935;
reg   [0:0] icmp_ln30_1_reg_935_pp0_iter1_reg;
wire   [31:0] tmp_2_fu_692_p19;
reg   [31:0] tmp_2_reg_939;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] mul1_reg_944;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] add1_reg_954;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_532_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5_1_fu_554_p1;
wire   [63:0] zext_ln31_fu_624_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_1_fu_108;
wire   [6:0] add_ln30_fu_676_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1_load;
reg   [6:0] i_fu_112;
wire   [6:0] select_ln29_fu_500_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [12:0] indvar_flatten_fu_116;
wire   [12:0] add_ln29_1_fu_468_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [31:0] empty_fu_120;
wire    ap_block_pp0_stage7;
reg    buff_q_out_ce0_local;
reg   [2:0] buff_q_out_address0_local;
reg    buff_q_out_we0_local;
wire    ap_block_pp0_stage6;
reg    buff_q_out_1_ce0_local;
reg   [2:0] buff_q_out_1_address0_local;
reg    buff_q_out_1_we0_local;
reg    buff_q_out_2_ce0_local;
reg   [2:0] buff_q_out_2_address0_local;
reg    buff_q_out_2_we0_local;
reg    buff_q_out_3_ce0_local;
reg   [2:0] buff_q_out_3_address0_local;
reg    buff_q_out_3_we0_local;
reg    buff_q_out_4_ce0_local;
reg   [2:0] buff_q_out_4_address0_local;
reg    buff_q_out_4_we0_local;
reg    buff_q_out_5_ce0_local;
reg   [2:0] buff_q_out_5_address0_local;
reg    buff_q_out_5_we0_local;
reg    buff_q_out_6_ce0_local;
reg   [2:0] buff_q_out_6_address0_local;
reg    buff_q_out_6_we0_local;
reg    buff_q_out_7_ce0_local;
reg   [2:0] buff_q_out_7_address0_local;
reg    buff_q_out_7_we0_local;
reg    buff_p_ce0_local;
reg    buff_p_1_ce0_local;
reg    buff_p_2_ce0_local;
reg    buff_p_3_ce0_local;
reg    buff_p_4_ce0_local;
reg    buff_p_5_ce0_local;
reg    buff_p_6_ce0_local;
reg    buff_p_7_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_7_ce0_local;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln30_fu_486_p2;
wire   [6:0] add_ln29_fu_480_p2;
wire   [2:0] lshr_ln5_2_fu_522_p4;
wire   [31:0] tmp_1_fu_576_p17;
wire   [8:0] tmp_s_fu_618_p3;
wire   [31:0] tmp_3_fu_636_p17;
wire   [2:0] tmp_3_fu_636_p18;
wire   [31:0] tmp_2_fu_692_p17;
wire    ap_block_pp0_stage2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
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
wire    ap_block_pp0_stage7_00001;
reg    ap_condition_891;
wire   [2:0] tmp_1_fu_576_p1;
wire   [2:0] tmp_1_fu_576_p3;
wire   [2:0] tmp_1_fu_576_p5;
wire   [2:0] tmp_1_fu_576_p7;
wire  signed [2:0] tmp_1_fu_576_p9;
wire  signed [2:0] tmp_1_fu_576_p11;
wire  signed [2:0] tmp_1_fu_576_p13;
wire  signed [2:0] tmp_1_fu_576_p15;
wire   [2:0] tmp_3_fu_636_p1;
wire   [2:0] tmp_3_fu_636_p3;
wire   [2:0] tmp_3_fu_636_p5;
wire   [2:0] tmp_3_fu_636_p7;
wire  signed [2:0] tmp_3_fu_636_p9;
wire  signed [2:0] tmp_3_fu_636_p11;
wire  signed [2:0] tmp_3_fu_636_p13;
wire  signed [2:0] tmp_3_fu_636_p15;
wire   [2:0] tmp_2_fu_692_p1;
wire   [2:0] tmp_2_fu_692_p3;
wire   [2:0] tmp_2_fu_692_p5;
wire   [2:0] tmp_2_fu_692_p7;
wire  signed [2:0] tmp_2_fu_692_p9;
wire  signed [2:0] tmp_2_fu_692_p11;
wire  signed [2:0] tmp_2_fu_692_p13;
wire  signed [2:0] tmp_2_fu_692_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_1_fu_108 = 7'd0;
#0 i_fu_112 = 7'd0;
#0 indvar_flatten_fu_116 = 13'd0;
#0 empty_fu_120 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U184(.din0(buff_q_out_q0),.din1(buff_q_out_1_q0),.din2(buff_q_out_2_q0),.din3(buff_q_out_3_q0),.din4(buff_q_out_4_q0),.din5(buff_q_out_5_q0),.din6(buff_q_out_6_q0),.din7(buff_q_out_7_q0),.def(tmp_1_fu_576_p17),.sel(trunc_ln29_reg_790),.dout(tmp_1_fu_576_p19));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U185(.din0(buff_p_q0),.din1(buff_p_1_q0),.din2(buff_p_2_q0),.din3(buff_p_3_q0),.din4(buff_p_4_q0),.din5(buff_p_5_q0),.din6(buff_p_6_q0),.din7(buff_p_7_q0),.def(tmp_3_fu_636_p17),.sel(tmp_3_fu_636_p18),.dout(tmp_3_fu_636_p19));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U186(.din0(buff_A_q0),.din1(buff_A_1_q0),.din2(buff_A_2_q0),.din3(buff_A_3_q0),.din4(buff_A_4_q0),.din5(buff_A_5_q0),.din6(buff_A_6_q0),.din7(buff_A_7_q0),.def(tmp_2_fu_692_p17),.sel(trunc_ln30_reg_885),.dout(tmp_2_fu_692_p19));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_891)) begin
            empty_fu_120 <= tmp_1_reg_880;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_120 <= add1_reg_954;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_462_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_112 <= select_ln29_fu_500_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_112 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_462_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_116 <= add_ln29_1_fu_468_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_116 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_fu_108 <= 7'd0;
    end else if (((icmp_ln29_reg_771 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_1_fu_108 <= add_ln30_fu_676_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add1_reg_954 <= grp_fu_3178_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_1_addr_reg_800 <= zext_ln5_fu_532_p1;
        buff_q_out_1_addr_reg_800_pp0_iter1_reg <= buff_q_out_1_addr_reg_800;
        buff_q_out_2_addr_reg_805 <= zext_ln5_fu_532_p1;
        buff_q_out_2_addr_reg_805_pp0_iter1_reg <= buff_q_out_2_addr_reg_805;
        buff_q_out_3_addr_reg_810 <= zext_ln5_fu_532_p1;
        buff_q_out_3_addr_reg_810_pp0_iter1_reg <= buff_q_out_3_addr_reg_810;
        buff_q_out_4_addr_reg_815 <= zext_ln5_fu_532_p1;
        buff_q_out_4_addr_reg_815_pp0_iter1_reg <= buff_q_out_4_addr_reg_815;
        buff_q_out_5_addr_reg_820 <= zext_ln5_fu_532_p1;
        buff_q_out_5_addr_reg_820_pp0_iter1_reg <= buff_q_out_5_addr_reg_820;
        buff_q_out_6_addr_reg_825 <= zext_ln5_fu_532_p1;
        buff_q_out_6_addr_reg_825_pp0_iter1_reg <= buff_q_out_6_addr_reg_825;
        buff_q_out_7_addr_reg_830 <= zext_ln5_fu_532_p1;
        buff_q_out_7_addr_reg_830_pp0_iter1_reg <= buff_q_out_7_addr_reg_830;
        buff_q_out_addr_reg_795 <= zext_ln5_fu_532_p1;
        buff_q_out_addr_reg_795_pp0_iter1_reg <= buff_q_out_addr_reg_795;
        empty_13_reg_781 <= empty_13_fu_508_p1;
        first_iter_0_reg_786 <= first_iter_0_fu_512_p2;
        icmp_ln29_reg_771 <= icmp_ln29_fu_462_p2;
        lshr_ln5_5_reg_835 <= {{select_ln5_fu_492_p3[5:3]}};
        select_ln5_reg_775 <= select_ln5_fu_492_p3;
        trunc_ln29_reg_790 <= trunc_ln29_fu_518_p1;
        trunc_ln29_reg_790_pp0_iter1_reg <= trunc_ln29_reg_790;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln30_1_reg_935 <= icmp_ln30_1_fu_681_p2;
        icmp_ln30_1_reg_935_pp0_iter1_reg <= icmp_ln30_1_reg_935;
        tmp_1_reg_880 <= tmp_1_fu_576_p19;
        tmp_3_reg_930 <= tmp_3_fu_636_p19;
        trunc_ln30_reg_885 <= trunc_ln30_fu_615_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul1_reg_944 <= grp_fu_3182_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_2_reg_939 <= tmp_2_fu_692_p19;
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_771 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_112;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_116;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1_load = j_1_fu_108;
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
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_2_ce0_local = 1'b1;
    end else begin
        buff_p_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_3_ce0_local = 1'b1;
    end else begin
        buff_p_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_4_ce0_local = 1'b1;
    end else begin
        buff_p_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_5_ce0_local = 1'b1;
    end else begin
        buff_p_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_6_ce0_local = 1'b1;
    end else begin
        buff_p_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_7_ce0_local = 1'b1;
    end else begin
        buff_p_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_1_address0_local = buff_q_out_1_addr_reg_800_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_1_address0_local = zext_ln5_fu_532_p1;
    end else begin
        buff_q_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_q_out_1_ce0_local = 1'b1;
    end else begin
        buff_q_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln30_1_reg_935_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_790_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_2_address0_local = buff_q_out_2_addr_reg_805_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_2_address0_local = zext_ln5_fu_532_p1;
    end else begin
        buff_q_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_q_out_2_ce0_local = 1'b1;
    end else begin
        buff_q_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln30_1_reg_935_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_790_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_3_address0_local = buff_q_out_3_addr_reg_810_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_3_address0_local = zext_ln5_fu_532_p1;
    end else begin
        buff_q_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_q_out_3_ce0_local = 1'b1;
    end else begin
        buff_q_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln30_1_reg_935_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_790_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_4_address0_local = buff_q_out_4_addr_reg_815_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_4_address0_local = zext_ln5_fu_532_p1;
    end else begin
        buff_q_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_q_out_4_ce0_local = 1'b1;
    end else begin
        buff_q_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln30_1_reg_935_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_790_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_4_we0_local = 1'b1;
    end else begin
        buff_q_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_5_address0_local = buff_q_out_5_addr_reg_820_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_5_address0_local = zext_ln5_fu_532_p1;
    end else begin
        buff_q_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_q_out_5_ce0_local = 1'b1;
    end else begin
        buff_q_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln30_1_reg_935_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_790_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_5_we0_local = 1'b1;
    end else begin
        buff_q_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_6_address0_local = buff_q_out_6_addr_reg_825_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_6_address0_local = zext_ln5_fu_532_p1;
    end else begin
        buff_q_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_q_out_6_ce0_local = 1'b1;
    end else begin
        buff_q_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln30_1_reg_935_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_790_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_6_we0_local = 1'b1;
    end else begin
        buff_q_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_7_address0_local = buff_q_out_7_addr_reg_830_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_7_address0_local = zext_ln5_fu_532_p1;
    end else begin
        buff_q_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_q_out_7_ce0_local = 1'b1;
    end else begin
        buff_q_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln30_1_reg_935_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_790_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_7_we0_local = 1'b1;
    end else begin
        buff_q_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_address0_local = buff_q_out_addr_reg_795_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_address0_local = zext_ln5_fu_532_p1;
    end else begin
        buff_q_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_q_out_ce0_local = 1'b1;
    end else begin
        buff_q_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln30_1_reg_935_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_790_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln29_1_fu_468_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln29_fu_480_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln30_fu_676_p2 = (select_ln5_reg_775 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_891 = ((icmp_ln29_reg_771 == 1'd0) & (first_iter_0_reg_786 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln31_fu_624_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln31_fu_624_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln31_fu_624_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln31_fu_624_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln31_fu_624_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln31_fu_624_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln31_fu_624_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_address0 = zext_ln31_fu_624_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_p_1_address0 = zext_ln5_1_fu_554_p1;
assign buff_p_1_ce0 = buff_p_1_ce0_local;
assign buff_p_2_address0 = zext_ln5_1_fu_554_p1;
assign buff_p_2_ce0 = buff_p_2_ce0_local;
assign buff_p_3_address0 = zext_ln5_1_fu_554_p1;
assign buff_p_3_ce0 = buff_p_3_ce0_local;
assign buff_p_4_address0 = zext_ln5_1_fu_554_p1;
assign buff_p_4_ce0 = buff_p_4_ce0_local;
assign buff_p_5_address0 = zext_ln5_1_fu_554_p1;
assign buff_p_5_ce0 = buff_p_5_ce0_local;
assign buff_p_6_address0 = zext_ln5_1_fu_554_p1;
assign buff_p_6_ce0 = buff_p_6_ce0_local;
assign buff_p_7_address0 = zext_ln5_1_fu_554_p1;
assign buff_p_7_ce0 = buff_p_7_ce0_local;
assign buff_p_address0 = zext_ln5_1_fu_554_p1;
assign buff_p_ce0 = buff_p_ce0_local;
assign buff_q_out_1_address0 = buff_q_out_1_address0_local;
assign buff_q_out_1_ce0 = buff_q_out_1_ce0_local;
assign buff_q_out_1_d0 = add1_reg_954;
assign buff_q_out_1_we0 = buff_q_out_1_we0_local;
assign buff_q_out_2_address0 = buff_q_out_2_address0_local;
assign buff_q_out_2_ce0 = buff_q_out_2_ce0_local;
assign buff_q_out_2_d0 = add1_reg_954;
assign buff_q_out_2_we0 = buff_q_out_2_we0_local;
assign buff_q_out_3_address0 = buff_q_out_3_address0_local;
assign buff_q_out_3_ce0 = buff_q_out_3_ce0_local;
assign buff_q_out_3_d0 = add1_reg_954;
assign buff_q_out_3_we0 = buff_q_out_3_we0_local;
assign buff_q_out_4_address0 = buff_q_out_4_address0_local;
assign buff_q_out_4_ce0 = buff_q_out_4_ce0_local;
assign buff_q_out_4_d0 = add1_reg_954;
assign buff_q_out_4_we0 = buff_q_out_4_we0_local;
assign buff_q_out_5_address0 = buff_q_out_5_address0_local;
assign buff_q_out_5_ce0 = buff_q_out_5_ce0_local;
assign buff_q_out_5_d0 = add1_reg_954;
assign buff_q_out_5_we0 = buff_q_out_5_we0_local;
assign buff_q_out_6_address0 = buff_q_out_6_address0_local;
assign buff_q_out_6_ce0 = buff_q_out_6_ce0_local;
assign buff_q_out_6_d0 = add1_reg_954;
assign buff_q_out_6_we0 = buff_q_out_6_we0_local;
assign buff_q_out_7_address0 = buff_q_out_7_address0_local;
assign buff_q_out_7_ce0 = buff_q_out_7_ce0_local;
assign buff_q_out_7_d0 = add1_reg_954;
assign buff_q_out_7_we0 = buff_q_out_7_we0_local;
assign buff_q_out_address0 = buff_q_out_address0_local;
assign buff_q_out_ce0 = buff_q_out_ce0_local;
assign buff_q_out_d0 = add1_reg_954;
assign buff_q_out_we0 = buff_q_out_we0_local;
assign empty_13_fu_508_p1 = select_ln29_fu_500_p3[5:0];
assign first_iter_0_fu_512_p2 = ((select_ln5_fu_492_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_3178_p_ce = 1'b1;
assign grp_fu_3178_p_din0 = empty_fu_120;
assign grp_fu_3178_p_din1 = mul1_reg_944;
assign grp_fu_3178_p_opcode = 2'd0;
assign grp_fu_3182_p_ce = 1'b1;
assign grp_fu_3182_p_din0 = tmp_2_reg_939;
assign grp_fu_3182_p_din1 = tmp_3_reg_930;
assign icmp_ln29_fu_462_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_681_p2 = ((add_ln30_fu_676_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_486_p2 = ((ap_sig_allocacmp_j_1_load == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_2_fu_522_p4 = {{select_ln29_fu_500_p3[5:3]}};
assign lshr_ln5_5_fu_544_p4 = {{select_ln5_fu_492_p3[5:3]}};
assign select_ln29_fu_500_p3 = ((icmp_ln30_fu_486_p2[0:0] == 1'b1) ? add_ln29_fu_480_p2 : ap_sig_allocacmp_i_load);
assign select_ln5_fu_492_p3 = ((icmp_ln30_fu_486_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_1_load);
assign tmp_1_fu_576_p17 = 'bx;
assign tmp_2_fu_692_p17 = 'bx;
assign tmp_3_fu_636_p17 = 'bx;
assign tmp_3_fu_636_p18 = select_ln5_reg_775[2:0];
assign tmp_s_fu_618_p3 = {{empty_13_reg_781}, {lshr_ln5_5_reg_835}};
assign trunc_ln29_fu_518_p1 = select_ln29_fu_500_p3[2:0];
assign trunc_ln30_fu_615_p1 = select_ln5_reg_775[2:0];
assign zext_ln31_fu_624_p1 = tmp_s_fu_618_p3;
assign zext_ln5_1_fu_554_p1 = lshr_ln5_5_fu_544_p4;
assign zext_ln5_fu_532_p1 = lshr_ln5_2_fu_522_p4;
endmodule 