
module k3mm_k3mm_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_address1,buff_B_ce1,buff_B_q1,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_1_address1,buff_B_1_ce1,buff_B_1_q1,buff_B_2_address0,buff_B_2_ce0,buff_B_2_q0,buff_B_2_address1,buff_B_2_ce1,buff_B_2_q1,buff_B_3_address0,buff_B_3_ce0,buff_B_3_q0,buff_B_3_address1,buff_B_3_ce1,buff_B_3_q1,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp1_3_q0,grp_fu_4120_p_din0,grp_fu_4120_p_din1,grp_fu_4120_p_opcode,grp_fu_4120_p_dout0,grp_fu_4120_p_ce,grp_fu_4124_p_din0,grp_fu_4124_p_din1,grp_fu_4124_p_dout0,grp_fu_4124_p_ce);  
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
output  [9:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [9:0] buff_B_address1;
output   buff_B_ce1;
input  [31:0] buff_B_q1;
output  [9:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [9:0] buff_B_1_address1;
output   buff_B_1_ce1;
input  [31:0] buff_B_1_q1;
output  [9:0] buff_B_2_address0;
output   buff_B_2_ce0;
input  [31:0] buff_B_2_q0;
output  [9:0] buff_B_2_address1;
output   buff_B_2_ce1;
input  [31:0] buff_B_2_q1;
output  [9:0] buff_B_3_address0;
output   buff_B_3_ce0;
input  [31:0] buff_B_3_q0;
output  [9:0] buff_B_3_address1;
output   buff_B_3_ce1;
input  [31:0] buff_B_3_q1;
output  [9:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [9:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [9:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [9:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [9:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [9:0] tmp1_1_address0;
output   tmp1_1_ce0;
output   tmp1_1_we0;
output  [31:0] tmp1_1_d0;
input  [31:0] tmp1_1_q0;
output  [9:0] tmp1_2_address0;
output   tmp1_2_ce0;
output   tmp1_2_we0;
output  [31:0] tmp1_2_d0;
input  [31:0] tmp1_2_q0;
output  [9:0] tmp1_3_address0;
output   tmp1_3_ce0;
output   tmp1_3_we0;
output  [31:0] tmp1_3_d0;
input  [31:0] tmp1_3_q0;
output  [31:0] grp_fu_4120_p_din0;
output  [31:0] grp_fu_4120_p_din1;
output  [1:0] grp_fu_4120_p_opcode;
input  [31:0] grp_fu_4120_p_dout0;
output   grp_fu_4120_p_ce;
output  [31:0] grp_fu_4124_p_din0;
output  [31:0] grp_fu_4124_p_din1;
input  [31:0] grp_fu_4124_p_dout0;
output   grp_fu_4124_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln32_reg_778;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_328;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln32_fu_368_p2;
wire   [0:0] icmp_ln33_fu_380_p2;
reg   [0:0] icmp_ln33_reg_782;
wire   [0:0] first_iter_1_fu_495_p2;
reg   [0:0] first_iter_1_reg_790;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] trunc_ln33_2_fu_501_p1;
reg   [1:0] trunc_ln33_2_reg_794;
reg   [1:0] trunc_ln33_2_reg_794_pp0_iter1_reg;
reg   [9:0] tmp1_addr_1_reg_801;
reg   [9:0] tmp1_addr_1_reg_801_pp0_iter1_reg;
reg   [9:0] tmp1_1_addr_1_reg_806;
reg   [9:0] tmp1_1_addr_1_reg_806_pp0_iter1_reg;
reg   [9:0] tmp1_2_addr_1_reg_811;
reg   [9:0] tmp1_2_addr_1_reg_811_pp0_iter1_reg;
reg   [9:0] tmp1_3_addr_1_reg_816;
reg   [9:0] tmp1_3_addr_1_reg_816_pp0_iter1_reg;
wire   [0:0] icmp_ln35_1_fu_577_p2;
reg   [0:0] icmp_ln35_1_reg_861;
reg   [0:0] tmp_2_reg_887;
reg   [0:0] tmp_2_reg_887_pp0_iter1_reg;
wire   [31:0] tmp_fu_640_p11;
reg   [31:0] tmp_reg_891;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] select_ln35_fu_663_p3;
reg   [31:0] select_ln35_reg_896;
wire   [31:0] tmp_69_fu_670_p11;
reg   [31:0] tmp_69_reg_901;
wire   [31:0] select_ln35_1_fu_693_p3;
reg   [31:0] select_ln35_1_reg_906;
wire   [31:0] tmp_70_fu_700_p11;
reg   [31:0] tmp_70_reg_911;
reg   [31:0] mul_reg_916;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul_1_reg_926;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_72_cast_fu_523_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln35_fu_539_p1;
wire   [63:0] zext_ln35_1_fu_569_p1;
wire   [63:0] zext_ln35_2_fu_603_p1;
reg   [6:0] k_fu_92;
wire   [6:0] add_ln34_fu_611_p2;
wire    ap_loop_init;
reg   [6:0] j_fu_96;
wire   [6:0] select_ln33_fu_487_p3;
reg   [12:0] indvar_flatten9_fu_100;
wire   [12:0] select_ln33_1_fu_392_p3;
reg   [12:0] ap_sig_allocacmp_indvar_flatten9_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_104;
wire   [6:0] select_ln32_fu_458_p3;
reg   [17:0] indvar_flatten23_fu_108;
wire   [17:0] add_ln32_1_fu_374_p2;
reg   [17:0] ap_sig_allocacmp_indvar_flatten23_load;
reg   [31:0] empty_fu_112;
wire    ap_block_pp0_stage7;
reg    tmp1_ce0_local;
reg   [9:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage6;
reg    tmp1_1_ce0_local;
reg   [9:0] tmp1_1_address0_local;
reg    tmp1_1_we0_local;
reg    tmp1_2_ce0_local;
reg   [9:0] tmp1_2_address0_local;
reg    tmp1_2_we0_local;
reg    tmp1_3_ce0_local;
reg   [9:0] tmp1_3_address0_local;
reg    tmp1_3_we0_local;
reg    buff_A_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_B_ce1_local;
reg    buff_B_ce0_local;
reg    buff_B_1_ce1_local;
reg    buff_B_1_ce0_local;
reg    buff_B_2_ce1_local;
reg    buff_B_2_ce0_local;
reg    buff_B_3_ce1_local;
reg    buff_B_3_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_3_ce0_local;
reg   [31:0] grp_fu_320_p0;
reg   [31:0] grp_fu_320_p1;
wire    ap_block_pp0_stage14;
reg   [31:0] grp_fu_324_p0;
reg   [31:0] grp_fu_324_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [12:0] add_ln33_1_fu_386_p2;
wire   [0:0] tmp_1_fu_439_p3;
wire   [0:0] xor_ln34_fu_447_p2;
wire   [6:0] add_ln32_fu_419_p2;
wire   [6:0] select_ln10_fu_425_p3;
wire   [0:0] or_ln10_fu_453_p2;
wire   [6:0] select_ln10_1_fu_432_p3;
wire   [6:0] k_mid2_fu_475_p3;
wire   [6:0] add_ln33_fu_469_p2;
wire   [5:0] trunc_ln33_fu_465_p1;
wire   [3:0] lshr_ln10_1_fu_505_p4;
wire   [9:0] tmp_72_fu_515_p3;
wire   [5:0] trunc_ln33_1_fu_483_p1;
wire   [9:0] tmp_73_fu_531_p3;
wire   [3:0] lshr_ln10_3_fu_551_p4;
wire   [9:0] tmp_75_fu_561_p3;
wire   [1:0] trunc_ln34_fu_547_p1;
wire   [4:0] tmp_76_fu_583_p4;
wire   [9:0] tmp_77_fu_593_p4;
wire   [31:0] tmp_fu_640_p9;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_69_fu_670_p9;
wire   [31:0] tmp_70_fu_700_p9;
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
reg    ap_condition_834;
wire   [1:0] tmp_fu_640_p1;
wire   [1:0] tmp_fu_640_p3;
wire  signed [1:0] tmp_fu_640_p5;
wire  signed [1:0] tmp_fu_640_p7;
wire   [1:0] tmp_69_fu_670_p1;
wire   [1:0] tmp_69_fu_670_p3;
wire  signed [1:0] tmp_69_fu_670_p5;
wire  signed [1:0] tmp_69_fu_670_p7;
wire   [1:0] tmp_70_fu_700_p1;
wire   [1:0] tmp_70_fu_700_p3;
wire  signed [1:0] tmp_70_fu_700_p5;
wire  signed [1:0] tmp_70_fu_700_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_92 = 7'd0;
#0 j_fu_96 = 7'd0;
#0 indvar_flatten9_fu_100 = 13'd0;
#0 i_fu_104 = 7'd0;
#0 indvar_flatten23_fu_108 = 18'd0;
#0 empty_fu_112 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U551(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.def(tmp_fu_640_p9),.sel(trunc_ln33_2_reg_794),.dout(tmp_fu_640_p11));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U552(.din0(buff_B_q1),.din1(buff_B_1_q1),.din2(buff_B_2_q1),.din3(buff_B_3_q1),.def(tmp_69_fu_670_p9),.sel(trunc_ln33_2_reg_794),.dout(tmp_69_fu_670_p11));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U553(.din0(buff_B_q0),.din1(buff_B_1_q0),.din2(buff_B_2_q0),.din3(buff_B_3_q0),.def(tmp_70_fu_700_p9),.sel(trunc_ln33_2_reg_794),.dout(tmp_70_fu_700_p11));
k3mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_834)) begin
            empty_fu_112 <= tmp_reg_891;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_112 <= reg_328;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_104 <= 7'd0;
    end else if (((icmp_ln32_reg_778 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_104 <= select_ln32_fu_458_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln32_fu_368_p2 == 1'd0))) begin
            indvar_flatten23_fu_108 <= add_ln32_1_fu_374_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_fu_108 <= 18'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln32_fu_368_p2 == 1'd0))) begin
            indvar_flatten9_fu_100 <= select_ln33_1_fu_392_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten9_fu_100 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_96 <= 7'd0;
    end else if (((icmp_ln32_reg_778 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_96 <= select_ln33_fu_487_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_92 <= 7'd0;
    end else if (((icmp_ln32_reg_778 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_92 <= add_ln34_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        first_iter_1_reg_790 <= first_iter_1_fu_495_p2;
        icmp_ln35_1_reg_861 <= icmp_ln35_1_fu_577_p2;
        tmp1_1_addr_1_reg_806 <= tmp_72_cast_fu_523_p1;
        tmp1_1_addr_1_reg_806_pp0_iter1_reg <= tmp1_1_addr_1_reg_806;
        tmp1_2_addr_1_reg_811 <= tmp_72_cast_fu_523_p1;
        tmp1_2_addr_1_reg_811_pp0_iter1_reg <= tmp1_2_addr_1_reg_811;
        tmp1_3_addr_1_reg_816 <= tmp_72_cast_fu_523_p1;
        tmp1_3_addr_1_reg_816_pp0_iter1_reg <= tmp1_3_addr_1_reg_816;
        tmp1_addr_1_reg_801 <= tmp_72_cast_fu_523_p1;
        tmp1_addr_1_reg_801_pp0_iter1_reg <= tmp1_addr_1_reg_801;
        tmp_2_reg_887 <= add_ln34_fu_611_p2[32'd6];
        tmp_2_reg_887_pp0_iter1_reg <= tmp_2_reg_887;
        trunc_ln33_2_reg_794 <= trunc_ln33_2_fu_501_p1;
        trunc_ln33_2_reg_794_pp0_iter1_reg <= trunc_ln33_2_reg_794;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln32_reg_778 <= icmp_ln32_fu_368_p2;
        icmp_ln33_reg_782 <= icmp_ln33_fu_380_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_1_reg_926 <= grp_fu_4124_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_reg_916 <= grp_fu_4124_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_328 <= grp_fu_4120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln35_1_reg_906 <= select_ln35_1_fu_693_p3;
        select_ln35_reg_896 <= select_ln35_fu_663_p3;
        tmp_69_reg_901 <= tmp_69_fu_670_p11;
        tmp_70_reg_911 <= tmp_70_fu_700_p11;
        tmp_reg_891 <= tmp_fu_640_p11;
    end
end
always @ (*) begin
    if (((icmp_ln32_reg_778 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
        ap_sig_allocacmp_indvar_flatten23_load = 18'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten23_load = indvar_flatten23_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten9_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten9_load = indvar_flatten9_fu_100;
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
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce1_local = 1'b1;
    end else begin
        buff_B_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_2_ce1_local = 1'b1;
    end else begin
        buff_B_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_3_ce1_local = 1'b1;
    end else begin
        buff_B_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce1_local = 1'b1;
    end else begin
        buff_B_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_320_p0 = reg_328;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_320_p0 = empty_fu_112;
        end else begin
            grp_fu_320_p0 = 'bx;
        end
    end else begin
        grp_fu_320_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_320_p1 = mul_1_reg_926;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_320_p1 = mul_reg_916;
        end else begin
            grp_fu_320_p1 = 'bx;
        end
    end else begin
        grp_fu_320_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_324_p0 = select_ln35_1_reg_906;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_324_p0 = select_ln35_reg_896;
        end else begin
            grp_fu_324_p0 = 'bx;
        end
    end else begin
        grp_fu_324_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_324_p1 = tmp_70_reg_911;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_324_p1 = tmp_69_reg_901;
        end else begin
            grp_fu_324_p1 = 'bx;
        end
    end else begin
        grp_fu_324_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_1_address0_local = tmp1_1_addr_1_reg_806_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_1_address0_local = tmp_72_cast_fu_523_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_887_pp0_iter1_reg == 1'd1) & (trunc_ln33_2_reg_794_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_2_address0_local = tmp1_2_addr_1_reg_811_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_2_address0_local = tmp_72_cast_fu_523_p1;
    end else begin
        tmp1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_887_pp0_iter1_reg == 1'd1) & (trunc_ln33_2_reg_794_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_3_address0_local = tmp1_3_addr_1_reg_816_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_3_address0_local = tmp_72_cast_fu_523_p1;
    end else begin
        tmp1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_887_pp0_iter1_reg == 1'd1) & (trunc_ln33_2_reg_794_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_address0_local = tmp1_addr_1_reg_801_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_address0_local = tmp_72_cast_fu_523_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_887_pp0_iter1_reg == 1'd1) & (trunc_ln33_2_reg_794_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
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
assign add_ln32_1_fu_374_p2 = (ap_sig_allocacmp_indvar_flatten23_load + 18'd1);
assign add_ln32_fu_419_p2 = (i_fu_104 + 7'd1);
assign add_ln33_1_fu_386_p2 = (ap_sig_allocacmp_indvar_flatten9_load + 13'd1);
assign add_ln33_fu_469_p2 = (select_ln10_fu_425_p3 + 7'd1);
assign add_ln34_fu_611_p2 = (k_mid2_fu_475_p3 + 7'd2);
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
    ap_condition_834 = ((icmp_ln32_reg_778 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_790 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln35_1_fu_569_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln35_1_fu_569_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln35_1_fu_569_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_address0 = zext_ln35_1_fu_569_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_B_1_address0 = zext_ln35_2_fu_603_p1;
assign buff_B_1_address1 = zext_ln35_fu_539_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_ce1 = buff_B_1_ce1_local;
assign buff_B_2_address0 = zext_ln35_2_fu_603_p1;
assign buff_B_2_address1 = zext_ln35_fu_539_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_2_ce1 = buff_B_2_ce1_local;
assign buff_B_3_address0 = zext_ln35_2_fu_603_p1;
assign buff_B_3_address1 = zext_ln35_fu_539_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_3_ce1 = buff_B_3_ce1_local;
assign buff_B_address0 = zext_ln35_2_fu_603_p1;
assign buff_B_address1 = zext_ln35_fu_539_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_ce1 = buff_B_ce1_local;
assign first_iter_1_fu_495_p2 = ((k_mid2_fu_475_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_4120_p_ce = 1'b1;
assign grp_fu_4120_p_din0 = grp_fu_320_p0;
assign grp_fu_4120_p_din1 = grp_fu_320_p1;
assign grp_fu_4120_p_opcode = 2'd0;
assign grp_fu_4124_p_ce = 1'b1;
assign grp_fu_4124_p_din0 = grp_fu_324_p0;
assign grp_fu_4124_p_din1 = grp_fu_324_p1;
assign icmp_ln32_fu_368_p2 = ((ap_sig_allocacmp_indvar_flatten23_load == 18'd131072) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_380_p2 = ((ap_sig_allocacmp_indvar_flatten9_load == 13'd2048) ? 1'b1 : 1'b0);
assign icmp_ln35_1_fu_577_p2 = ((trunc_ln34_fu_547_p1 != 2'd0) ? 1'b1 : 1'b0);
assign k_mid2_fu_475_p3 = ((or_ln10_fu_453_p2[0:0] == 1'b1) ? select_ln10_1_fu_432_p3 : 7'd0);
assign lshr_ln10_1_fu_505_p4 = {{select_ln33_fu_487_p3[5:2]}};
assign lshr_ln10_3_fu_551_p4 = {{k_mid2_fu_475_p3[5:2]}};
assign or_ln10_fu_453_p2 = (xor_ln34_fu_447_p2 | icmp_ln33_reg_782);
assign select_ln10_1_fu_432_p3 = ((icmp_ln33_reg_782[0:0] == 1'b1) ? 7'd0 : k_fu_92);
assign select_ln10_fu_425_p3 = ((icmp_ln33_reg_782[0:0] == 1'b1) ? 7'd0 : j_fu_96);
assign select_ln32_fu_458_p3 = ((icmp_ln33_reg_782[0:0] == 1'b1) ? add_ln32_fu_419_p2 : i_fu_104);
assign select_ln33_1_fu_392_p3 = ((icmp_ln33_fu_380_p2[0:0] == 1'b1) ? 13'd1 : add_ln33_1_fu_386_p2);
assign select_ln33_fu_487_p3 = ((or_ln10_fu_453_p2[0:0] == 1'b1) ? select_ln10_fu_425_p3 : add_ln33_fu_469_p2);
assign select_ln35_1_fu_693_p3 = ((icmp_ln35_1_reg_861[0:0] == 1'b1) ? buff_A_3_q0 : buff_A_1_q0);
assign select_ln35_fu_663_p3 = ((icmp_ln35_1_reg_861[0:0] == 1'b1) ? buff_A_2_q0 : buff_A_q0);
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = reg_328;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = tmp1_2_address0_local;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = reg_328;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = tmp1_3_address0_local;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = reg_328;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = reg_328;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_1_fu_439_p3 = k_fu_92[32'd6];
assign tmp_69_fu_670_p9 = 'bx;
assign tmp_70_fu_700_p9 = 'bx;
assign tmp_72_cast_fu_523_p1 = tmp_72_fu_515_p3;
assign tmp_72_fu_515_p3 = {{trunc_ln33_fu_465_p1}, {lshr_ln10_1_fu_505_p4}};
assign tmp_73_fu_531_p3 = {{trunc_ln33_1_fu_483_p1}, {lshr_ln10_1_fu_505_p4}};
assign tmp_75_fu_561_p3 = {{trunc_ln33_fu_465_p1}, {lshr_ln10_3_fu_551_p4}};
assign tmp_76_fu_583_p4 = {{k_mid2_fu_475_p3[5:1]}};
assign tmp_77_fu_593_p4 = {{{tmp_76_fu_583_p4}, {1'd1}}, {lshr_ln10_1_fu_505_p4}};
assign tmp_fu_640_p9 = 'bx;
assign trunc_ln33_1_fu_483_p1 = k_mid2_fu_475_p3[5:0];
assign trunc_ln33_2_fu_501_p1 = select_ln33_fu_487_p3[1:0];
assign trunc_ln33_fu_465_p1 = select_ln32_fu_458_p3[5:0];
assign trunc_ln34_fu_547_p1 = k_mid2_fu_475_p3[1:0];
assign xor_ln34_fu_447_p2 = (tmp_1_fu_439_p3 ^ 1'd1);
assign zext_ln35_1_fu_569_p1 = tmp_75_fu_561_p3;
assign zext_ln35_2_fu_603_p1 = tmp_77_fu_593_p4;
assign zext_ln35_fu_539_p1 = tmp_73_fu_531_p3;
endmodule 
