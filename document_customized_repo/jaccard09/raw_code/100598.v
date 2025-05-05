module mvt_mvt_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_y2_address0,buff_y2_ce0,buff_y2_q0,buff_y2_2_address0,buff_y2_2_ce0,buff_y2_2_q0,buff_y2_1_address0,buff_y2_1_ce0,buff_y2_1_q0,buff_y2_3_address0,buff_y2_3_ce0,buff_y2_3_q0,buff_x2_address0,buff_x2_ce0,buff_x2_we0,buff_x2_d0,buff_x2_q0,buff_x2_1_address0,buff_x2_1_ce0,buff_x2_1_we0,buff_x2_1_d0,buff_x2_1_q0,buff_x2_2_address0,buff_x2_2_ce0,buff_x2_2_we0,buff_x2_2_d0,buff_x2_2_q0,buff_x2_3_address0,buff_x2_3_ce0,buff_x2_3_we0,buff_x2_3_d0,buff_x2_3_q0,grp_fu_1910_p_din0,grp_fu_1910_p_din1,grp_fu_1910_p_opcode,grp_fu_1910_p_dout0,grp_fu_1910_p_ce,grp_fu_1914_p_din0,grp_fu_1914_p_din1,grp_fu_1914_p_dout0,grp_fu_1914_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 15'd1;
parameter    ap_ST_fsm_pp0_stage1 = 15'd2;
parameter    ap_ST_fsm_pp0_stage2 = 15'd4;
parameter    ap_ST_fsm_pp0_stage3 = 15'd8;
parameter    ap_ST_fsm_pp0_stage4 = 15'd16;
parameter    ap_ST_fsm_pp0_stage5 = 15'd32;
parameter    ap_ST_fsm_pp0_stage6 = 15'd64;
parameter    ap_ST_fsm_pp0_stage7 = 15'd128;
parameter    ap_ST_fsm_pp0_stage8 = 15'd256;
parameter    ap_ST_fsm_pp0_stage9 = 15'd512;
parameter    ap_ST_fsm_pp0_stage10 = 15'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 15'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 15'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 15'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 15'd16384;
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
output  [3:0] buff_y2_address0;
output   buff_y2_ce0;
input  [31:0] buff_y2_q0;
output  [3:0] buff_y2_2_address0;
output   buff_y2_2_ce0;
input  [31:0] buff_y2_2_q0;
output  [3:0] buff_y2_1_address0;
output   buff_y2_1_ce0;
input  [31:0] buff_y2_1_q0;
output  [3:0] buff_y2_3_address0;
output   buff_y2_3_ce0;
input  [31:0] buff_y2_3_q0;
output  [3:0] buff_x2_address0;
output   buff_x2_ce0;
output   buff_x2_we0;
output  [31:0] buff_x2_d0;
input  [31:0] buff_x2_q0;
output  [3:0] buff_x2_1_address0;
output   buff_x2_1_ce0;
output   buff_x2_1_we0;
output  [31:0] buff_x2_1_d0;
input  [31:0] buff_x2_1_q0;
output  [3:0] buff_x2_2_address0;
output   buff_x2_2_ce0;
output   buff_x2_2_we0;
output  [31:0] buff_x2_2_d0;
input  [31:0] buff_x2_2_q0;
output  [3:0] buff_x2_3_address0;
output   buff_x2_3_ce0;
output   buff_x2_3_we0;
output  [31:0] buff_x2_3_d0;
input  [31:0] buff_x2_3_q0;
output  [31:0] grp_fu_1910_p_din0;
output  [31:0] grp_fu_1910_p_din1;
output  [1:0] grp_fu_1910_p_opcode;
input  [31:0] grp_fu_1910_p_dout0;
output   grp_fu_1910_p_ce;
output  [31:0] grp_fu_1914_p_din0;
output  [31:0] grp_fu_1914_p_din1;
input  [31:0] grp_fu_1914_p_dout0;
output   grp_fu_1914_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln29_reg_634;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_322;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln29_fu_349_p2;
wire   [6:0] select_ln6_fu_381_p3;
reg   [6:0] select_ln6_reg_638;
wire   [0:0] first_iter_0_fu_397_p2;
reg   [0:0] first_iter_0_reg_645;
wire   [1:0] trunc_ln29_fu_403_p1;
reg   [1:0] trunc_ln29_reg_649;
reg   [1:0] trunc_ln29_reg_649_pp0_iter1_reg;
wire   [3:0] lshr_ln6_4_fu_407_p4;
reg   [3:0] lshr_ln6_4_reg_656;
reg   [3:0] buff_x2_addr_reg_661;
reg   [3:0] buff_x2_addr_reg_661_pp0_iter1_reg;
reg   [3:0] buff_x2_1_addr_reg_666;
reg   [3:0] buff_x2_1_addr_reg_666_pp0_iter1_reg;
reg   [3:0] buff_x2_2_addr_reg_671;
reg   [3:0] buff_x2_2_addr_reg_671_pp0_iter1_reg;
reg   [3:0] buff_x2_3_addr_reg_676;
reg   [3:0] buff_x2_3_addr_reg_676_pp0_iter1_reg;
wire   [31:0] tmp_fu_453_p11;
reg   [31:0] tmp_reg_701;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] select_ln31_fu_513_p3;
reg   [31:0] select_ln31_reg_746;
wire   [31:0] select_ln31_1_fu_521_p3;
reg   [31:0] select_ln31_1_reg_751;
wire   [31:0] tmp_1_fu_529_p11;
reg   [31:0] tmp_1_reg_756;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_3_fu_552_p11;
reg   [31:0] tmp_3_reg_761;
reg   [31:0] mul1_reg_766;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul65_1_reg_776;
reg   [0:0] tmp_5_reg_781;
wire    ap_block_pp0_stage14_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln6_fu_417_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln6_1_fu_435_p1;
wire   [63:0] zext_ln31_fu_495_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_1_fu_90;
wire   [6:0] add_ln30_fu_583_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1_load;
reg   [6:0] i_fu_94;
wire   [6:0] select_ln29_fu_389_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [11:0] indvar_flatten_fu_98;
wire   [11:0] add_ln29_1_fu_355_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [31:0] empty_fu_102;
wire    ap_block_pp0_stage7;
reg    buff_x2_ce0_local;
reg   [3:0] buff_x2_address0_local;
reg    buff_x2_we0_local;
wire    ap_block_pp0_stage6;
reg    buff_x2_1_ce0_local;
reg   [3:0] buff_x2_1_address0_local;
reg    buff_x2_1_we0_local;
reg    buff_x2_2_ce0_local;
reg   [3:0] buff_x2_2_address0_local;
reg    buff_x2_2_we0_local;
reg    buff_x2_3_ce0_local;
reg   [3:0] buff_x2_3_address0_local;
reg    buff_x2_3_we0_local;
reg    buff_y2_ce0_local;
reg    buff_y2_2_ce0_local;
reg    buff_y2_1_ce0_local;
reg    buff_y2_3_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_7_ce0_local;
reg   [31:0] grp_fu_314_p0;
reg   [31:0] grp_fu_314_p1;
wire    ap_block_pp0_stage14;
reg   [31:0] grp_fu_318_p0;
reg   [31:0] grp_fu_318_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [0:0] tmp_4_fu_373_p3;
wire   [6:0] add_ln29_fu_367_p2;
wire   [3:0] lshr_ln6_8_fu_425_p4;
wire   [31:0] tmp_fu_453_p9;
wire   [4:0] lshr_ln6_7_fu_479_p4;
wire   [8:0] tmp_s_fu_488_p3;
wire   [1:0] trunc_ln30_fu_476_p1;
wire   [0:0] icmp_ln31_1_fu_507_p2;
wire   [31:0] tmp_1_fu_529_p9;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_3_fu_552_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [14:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage14_00001;
reg    ap_condition_845;
wire   [1:0] tmp_fu_453_p1;
wire   [1:0] tmp_fu_453_p3;
wire  signed [1:0] tmp_fu_453_p5;
wire  signed [1:0] tmp_fu_453_p7;
wire   [1:0] tmp_1_fu_529_p1;
wire   [1:0] tmp_1_fu_529_p3;
wire  signed [1:0] tmp_1_fu_529_p5;
wire  signed [1:0] tmp_1_fu_529_p7;
wire   [1:0] tmp_3_fu_552_p1;
wire   [1:0] tmp_3_fu_552_p3;
wire  signed [1:0] tmp_3_fu_552_p5;
wire  signed [1:0] tmp_3_fu_552_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_1_fu_90 = 7'd0;
#0 i_fu_94 = 7'd0;
#0 indvar_flatten_fu_98 = 12'd0;
#0 empty_fu_102 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U351(.din0(buff_x2_q0),.din1(buff_x2_1_q0),.din2(buff_x2_2_q0),.din3(buff_x2_3_q0),.def(tmp_fu_453_p9),.sel(trunc_ln29_reg_649),.dout(tmp_fu_453_p11));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U352(.din0(buff_A_q0),.din1(buff_A_2_q0),.din2(buff_A_4_q0),.din3(buff_A_6_q0),.def(tmp_1_fu_529_p9),.sel(trunc_ln29_reg_649),.dout(tmp_1_fu_529_p11));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U353(.din0(buff_A_1_q0),.din1(buff_A_3_q0),.din2(buff_A_5_q0),.din3(buff_A_7_q0),.def(tmp_3_fu_552_p9),.sel(trunc_ln29_reg_649),.dout(tmp_3_fu_552_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_845)) begin
            empty_fu_102 <= tmp_reg_701;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_102 <= reg_322;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_fu_349_p2 == 1'd0))) begin
            i_fu_94 <= select_ln29_fu_389_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_94 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_fu_349_p2 == 1'd0))) begin
            indvar_flatten_fu_98 <= add_ln29_1_fu_355_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_98 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_fu_90 <= 7'd0;
    end else if (((icmp_ln29_reg_634 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        j_1_fu_90 <= add_ln30_fu_583_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_1_addr_reg_666 <= zext_ln6_fu_417_p1;
        buff_x2_1_addr_reg_666_pp0_iter1_reg <= buff_x2_1_addr_reg_666;
        buff_x2_2_addr_reg_671 <= zext_ln6_fu_417_p1;
        buff_x2_2_addr_reg_671_pp0_iter1_reg <= buff_x2_2_addr_reg_671;
        buff_x2_3_addr_reg_676 <= zext_ln6_fu_417_p1;
        buff_x2_3_addr_reg_676_pp0_iter1_reg <= buff_x2_3_addr_reg_676;
        buff_x2_addr_reg_661 <= zext_ln6_fu_417_p1;
        buff_x2_addr_reg_661_pp0_iter1_reg <= buff_x2_addr_reg_661;
        first_iter_0_reg_645 <= first_iter_0_fu_397_p2;
        icmp_ln29_reg_634 <= icmp_ln29_fu_349_p2;
        lshr_ln6_4_reg_656 <= {{select_ln29_fu_389_p3[5:2]}};
        select_ln6_reg_638 <= select_ln6_fu_381_p3;
        trunc_ln29_reg_649 <= trunc_ln29_fu_403_p1;
        trunc_ln29_reg_649_pp0_iter1_reg <= trunc_ln29_reg_649;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul1_reg_766 <= grp_fu_1914_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul65_1_reg_776 <= grp_fu_1914_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_322 <= grp_fu_1910_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln31_1_reg_751 <= select_ln31_1_fu_521_p3;
        select_ln31_reg_746 <= select_ln31_fu_513_p3;
        tmp_reg_701 <= tmp_fu_453_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_1_reg_756 <= tmp_1_fu_529_p11;
        tmp_3_reg_761 <= tmp_3_fu_552_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        tmp_5_reg_781 <= add_ln30_fu_583_p2[32'd6];
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_634 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1_load = j_1_fu_90;
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
        buff_x2_1_address0_local = buff_x2_1_addr_reg_666_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_1_address0_local = zext_ln6_fu_417_p1;
    end else begin
        buff_x2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_1_ce0_local = 1'b1;
    end else begin
        buff_x2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (tmp_5_reg_781 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln29_reg_649_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_1_we0_local = 1'b1;
    end else begin
        buff_x2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_2_address0_local = buff_x2_2_addr_reg_671_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_2_address0_local = zext_ln6_fu_417_p1;
    end else begin
        buff_x2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_2_ce0_local = 1'b1;
    end else begin
        buff_x2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (tmp_5_reg_781 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln29_reg_649_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_2_we0_local = 1'b1;
    end else begin
        buff_x2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_3_address0_local = buff_x2_3_addr_reg_676_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_3_address0_local = zext_ln6_fu_417_p1;
    end else begin
        buff_x2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_3_ce0_local = 1'b1;
    end else begin
        buff_x2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (tmp_5_reg_781 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln29_reg_649_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_3_we0_local = 1'b1;
    end else begin
        buff_x2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_address0_local = buff_x2_addr_reg_661_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_address0_local = zext_ln6_fu_417_p1;
    end else begin
        buff_x2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_ce0_local = 1'b1;
    end else begin
        buff_x2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (tmp_5_reg_781 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln29_reg_649_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_we0_local = 1'b1;
    end else begin
        buff_x2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_1_ce0_local = 1'b1;
    end else begin
        buff_y2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_2_ce0_local = 1'b1;
    end else begin
        buff_y2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_3_ce0_local = 1'b1;
    end else begin
        buff_y2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_ce0_local = 1'b1;
    end else begin
        buff_y2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_314_p0 = reg_322;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_314_p0 = empty_fu_102;
        end else begin
            grp_fu_314_p0 = 'bx;
        end
    end else begin
        grp_fu_314_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_314_p1 = mul65_1_reg_776;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_314_p1 = mul1_reg_766;
        end else begin
            grp_fu_314_p1 = 'bx;
        end
    end else begin
        grp_fu_314_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_318_p0 = tmp_3_reg_761;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_318_p0 = tmp_1_reg_756;
        end else begin
            grp_fu_318_p0 = 'bx;
        end
    end else begin
        grp_fu_318_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_318_p1 = select_ln31_1_reg_751;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_318_p1 = select_ln31_reg_746;
        end else begin
            grp_fu_318_p1 = 'bx;
        end
    end else begin
        grp_fu_318_p1 = 'bx;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln29_1_fu_355_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln29_fu_367_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln30_fu_583_p2 = (select_ln6_reg_638 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_845 = ((icmp_ln29_reg_634 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_0_reg_645 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln31_fu_495_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln31_fu_495_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln31_fu_495_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln31_fu_495_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln31_fu_495_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln31_fu_495_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln31_fu_495_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_address0 = zext_ln31_fu_495_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_x2_1_address0 = buff_x2_1_address0_local;
assign buff_x2_1_ce0 = buff_x2_1_ce0_local;
assign buff_x2_1_d0 = reg_322;
assign buff_x2_1_we0 = buff_x2_1_we0_local;
assign buff_x2_2_address0 = buff_x2_2_address0_local;
assign buff_x2_2_ce0 = buff_x2_2_ce0_local;
assign buff_x2_2_d0 = reg_322;
assign buff_x2_2_we0 = buff_x2_2_we0_local;
assign buff_x2_3_address0 = buff_x2_3_address0_local;
assign buff_x2_3_ce0 = buff_x2_3_ce0_local;
assign buff_x2_3_d0 = reg_322;
assign buff_x2_3_we0 = buff_x2_3_we0_local;
assign buff_x2_address0 = buff_x2_address0_local;
assign buff_x2_ce0 = buff_x2_ce0_local;
assign buff_x2_d0 = reg_322;
assign buff_x2_we0 = buff_x2_we0_local;
assign buff_y2_1_address0 = zext_ln6_1_fu_435_p1;
assign buff_y2_1_ce0 = buff_y2_1_ce0_local;
assign buff_y2_2_address0 = zext_ln6_1_fu_435_p1;
assign buff_y2_2_ce0 = buff_y2_2_ce0_local;
assign buff_y2_3_address0 = zext_ln6_1_fu_435_p1;
assign buff_y2_3_ce0 = buff_y2_3_ce0_local;
assign buff_y2_address0 = zext_ln6_1_fu_435_p1;
assign buff_y2_ce0 = buff_y2_ce0_local;
assign first_iter_0_fu_397_p2 = ((select_ln6_fu_381_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_1910_p_ce = 1'b1;
assign grp_fu_1910_p_din0 = grp_fu_314_p0;
assign grp_fu_1910_p_din1 = grp_fu_314_p1;
assign grp_fu_1910_p_opcode = 2'd0;
assign grp_fu_1914_p_ce = 1'b1;
assign grp_fu_1914_p_din0 = grp_fu_318_p0;
assign grp_fu_1914_p_din1 = grp_fu_318_p1;
assign icmp_ln29_fu_349_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln31_1_fu_507_p2 = ((trunc_ln30_fu_476_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln6_4_fu_407_p4 = {{select_ln29_fu_389_p3[5:2]}};
assign lshr_ln6_7_fu_479_p4 = {{select_ln6_reg_638[5:1]}};
assign lshr_ln6_8_fu_425_p4 = {{select_ln6_fu_381_p3[5:2]}};
assign select_ln29_fu_389_p3 = ((tmp_4_fu_373_p3[0:0] == 1'b1) ? add_ln29_fu_367_p2 : ap_sig_allocacmp_i_load);
assign select_ln31_1_fu_521_p3 = ((icmp_ln31_1_fu_507_p2[0:0] == 1'b1) ? buff_y2_3_q0 : buff_y2_1_q0);
assign select_ln31_fu_513_p3 = ((icmp_ln31_1_fu_507_p2[0:0] == 1'b1) ? buff_y2_2_q0 : buff_y2_q0);
assign select_ln6_fu_381_p3 = ((tmp_4_fu_373_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_1_load);
assign tmp_1_fu_529_p9 = 'bx;
assign tmp_3_fu_552_p9 = 'bx;
assign tmp_4_fu_373_p3 = ap_sig_allocacmp_j_1_load[32'd6];
assign tmp_fu_453_p9 = 'bx;
assign tmp_s_fu_488_p3 = {{lshr_ln6_7_fu_479_p4}, {lshr_ln6_4_reg_656}};
assign trunc_ln29_fu_403_p1 = select_ln29_fu_389_p3[1:0];
assign trunc_ln30_fu_476_p1 = select_ln6_reg_638[1:0];
assign zext_ln31_fu_495_p1 = tmp_s_fu_488_p3;
assign zext_ln6_1_fu_435_p1 = lshr_ln6_8_fu_425_p4;
assign zext_ln6_fu_417_p1 = lshr_ln6_4_fu_407_p4;
endmodule 