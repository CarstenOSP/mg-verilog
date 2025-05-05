module syrk_syrk_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_address1,buff_A0_ce1,buff_A0_q1,buff_A1_address0,buff_A1_ce0,buff_A1_q0,buff_A1_address1,buff_A1_ce1,buff_A1_q1,alpha,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_q0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_q0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_q0,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_we0,buff_C_out_4_d0,buff_C_out_4_q0,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_we0,buff_C_out_5_d0,buff_C_out_5_q0,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_we0,buff_C_out_6_d0,buff_C_out_6_q0,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_we0,buff_C_out_7_d0,buff_C_out_7_q0,grp_fu_206_p_din0,grp_fu_206_p_din1,grp_fu_206_p_opcode,grp_fu_206_p_dout0,grp_fu_206_p_ce,grp_fu_210_p_din0,grp_fu_210_p_din1,grp_fu_210_p_dout0,grp_fu_210_p_ce); 
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
output  [11:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [11:0] buff_A0_address1;
output   buff_A0_ce1;
input  [31:0] buff_A0_q1;
output  [11:0] buff_A1_address0;
output   buff_A1_ce0;
input  [31:0] buff_A1_q0;
output  [11:0] buff_A1_address1;
output   buff_A1_ce1;
input  [31:0] buff_A1_q1;
input  [31:0] alpha;
output  [8:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
input  [31:0] buff_C_out_q0;
output  [8:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
input  [31:0] buff_C_out_1_q0;
output  [8:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
input  [31:0] buff_C_out_2_q0;
output  [8:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
input  [31:0] buff_C_out_3_q0;
output  [8:0] buff_C_out_4_address0;
output   buff_C_out_4_ce0;
output   buff_C_out_4_we0;
output  [31:0] buff_C_out_4_d0;
input  [31:0] buff_C_out_4_q0;
output  [8:0] buff_C_out_5_address0;
output   buff_C_out_5_ce0;
output   buff_C_out_5_we0;
output  [31:0] buff_C_out_5_d0;
input  [31:0] buff_C_out_5_q0;
output  [8:0] buff_C_out_6_address0;
output   buff_C_out_6_ce0;
output   buff_C_out_6_we0;
output  [31:0] buff_C_out_6_d0;
input  [31:0] buff_C_out_6_q0;
output  [8:0] buff_C_out_7_address0;
output   buff_C_out_7_ce0;
output   buff_C_out_7_we0;
output  [31:0] buff_C_out_7_d0;
input  [31:0] buff_C_out_7_q0;
output  [31:0] grp_fu_206_p_din0;
output  [31:0] grp_fu_206_p_din1;
output  [1:0] grp_fu_206_p_opcode;
input  [31:0] grp_fu_206_p_dout0;
output   grp_fu_206_p_ce;
output  [31:0] grp_fu_210_p_din0;
output  [31:0] grp_fu_210_p_din1;
input  [31:0] grp_fu_210_p_dout0;
output   grp_fu_210_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln20_reg_717;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_296;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] reg_302;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln20_fu_346_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [6:0] select_ln5_fu_379_p3;
reg   [6:0] select_ln5_reg_721;
wire   [0:0] or_ln5_fu_409_p2;
reg   [0:0] or_ln5_reg_726;
wire   [5:0] trunc_ln21_fu_423_p1;
reg   [5:0] trunc_ln21_reg_731;
wire   [6:0] add_ln21_fu_427_p2;
reg   [6:0] add_ln21_reg_738;
wire   [6:0] k_mid2_fu_433_p3;
reg   [6:0] k_mid2_reg_743;
wire   [0:0] first_iter_1_fu_479_p2;
reg   [0:0] first_iter_1_reg_751;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [2:0] trunc_ln21_1_fu_491_p1;
reg   [2:0] trunc_ln21_1_reg_755;
reg   [2:0] trunc_ln21_1_reg_755_pp0_iter1_reg;
reg   [8:0] buff_C_out_addr_reg_760;
reg   [8:0] buff_C_out_addr_reg_760_pp0_iter1_reg;
reg   [8:0] buff_C_out_1_addr_reg_765;
reg   [8:0] buff_C_out_1_addr_reg_765_pp0_iter1_reg;
reg   [8:0] buff_C_out_2_addr_reg_770;
reg   [8:0] buff_C_out_2_addr_reg_770_pp0_iter1_reg;
reg   [8:0] buff_C_out_3_addr_reg_775;
reg   [8:0] buff_C_out_3_addr_reg_775_pp0_iter1_reg;
reg   [8:0] buff_C_out_4_addr_reg_780;
reg   [8:0] buff_C_out_4_addr_reg_780_pp0_iter1_reg;
reg   [8:0] buff_C_out_5_addr_reg_785;
reg   [8:0] buff_C_out_5_addr_reg_785_pp0_iter1_reg;
reg   [8:0] buff_C_out_6_addr_reg_790;
reg   [8:0] buff_C_out_6_addr_reg_790_pp0_iter1_reg;
reg   [8:0] buff_C_out_7_addr_reg_795;
reg   [8:0] buff_C_out_7_addr_reg_795_pp0_iter1_reg;
reg   [0:0] tmp_2_reg_820;
reg   [0:0] tmp_2_reg_820_pp0_iter1_reg;
wire   [31:0] tmp_fu_618_p19;
reg   [31:0] tmp_reg_824;
reg   [31:0] buff_A0_load_reg_829;
reg   [31:0] buff_A1_load_reg_834;
reg   [31:0] buff_A0_load_1_reg_839;
reg   [31:0] buff_A1_load_1_reg_844;
reg   [31:0] mul_1_reg_849;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [31:0] mul50_1_reg_859;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_6_cast_fu_512_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln24_1_fu_541_p1;
wire   [63:0] zext_ln24_4_fu_552_p1;
wire   [63:0] zext_ln24_2_fu_575_p1;
wire   [63:0] zext_ln24_3_fu_590_p1;
reg   [6:0] k_fu_104;
wire   [6:0] add_ln23_fu_595_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_108;
wire   [6:0] select_ln21_fu_470_p3;
reg   [12:0] indvar_flatten7_fu_112;
wire   [12:0] select_ln21_1_fu_447_p3;
reg   [6:0] i_fu_116;
wire   [6:0] select_ln20_fu_415_p3;
reg   [17:0] indvar_flatten21_fu_120;
wire   [17:0] add_ln20_1_fu_352_p2;
reg   [31:0] empty_fu_124;
wire    ap_block_pp0_stage12;
reg    buff_C_out_ce0_local;
reg   [8:0] buff_C_out_address0_local;
reg    buff_C_out_we0_local;
wire    ap_block_pp0_stage11;
reg    buff_C_out_1_ce0_local;
reg   [8:0] buff_C_out_1_address0_local;
reg    buff_C_out_1_we0_local;
reg    buff_C_out_2_ce0_local;
reg   [8:0] buff_C_out_2_address0_local;
reg    buff_C_out_2_we0_local;
reg    buff_C_out_3_ce0_local;
reg   [8:0] buff_C_out_3_address0_local;
reg    buff_C_out_3_we0_local;
reg    buff_C_out_4_ce0_local;
reg   [8:0] buff_C_out_4_address0_local;
reg    buff_C_out_4_we0_local;
reg    buff_C_out_5_ce0_local;
reg   [8:0] buff_C_out_5_address0_local;
reg    buff_C_out_5_we0_local;
reg    buff_C_out_6_ce0_local;
reg   [8:0] buff_C_out_6_address0_local;
reg    buff_C_out_6_we0_local;
reg    buff_C_out_7_ce0_local;
reg   [8:0] buff_C_out_7_address0_local;
reg    buff_C_out_7_we0_local;
reg    buff_A0_ce1_local;
reg    buff_A0_ce0_local;
reg    buff_A1_ce1_local;
reg    buff_A1_ce0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_288_p0;
reg   [31:0] grp_fu_288_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
reg   [31:0] grp_fu_292_p0;
reg   [31:0] grp_fu_292_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9;
wire   [0:0] icmp_ln21_fu_373_p2;
wire   [0:0] tmp_1_fu_395_p3;
wire   [0:0] xor_ln23_fu_403_p2;
wire   [6:0] add_ln20_fu_367_p2;
wire   [6:0] select_ln5_1_fu_387_p3;
wire   [12:0] add_ln21_1_fu_441_p2;
wire   [2:0] lshr_ln5_2_fu_495_p4;
wire   [8:0] tmp_6_fu_505_p3;
wire   [5:0] empty_10_fu_475_p1;
wire   [11:0] tmp_5_fu_484_p3;
wire   [11:0] zext_ln24_fu_532_p1;
wire   [11:0] add_ln24_fu_535_p2;
wire   [11:0] tmp_7_fu_524_p3;
wire   [11:0] add_ln24_1_fu_546_p2;
wire   [4:0] tmp_8_fu_557_p4;
wire   [11:0] tmp_9_fu_566_p4;
wire   [11:0] tmp_s_fu_580_p4;
wire   [31:0] tmp_fu_618_p17;
wire    ap_block_pp0_stage3;
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
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage4_00001;
reg    ap_condition_804;
wire   [2:0] tmp_fu_618_p1;
wire   [2:0] tmp_fu_618_p3;
wire   [2:0] tmp_fu_618_p5;
wire   [2:0] tmp_fu_618_p7;
wire  signed [2:0] tmp_fu_618_p9;
wire  signed [2:0] tmp_fu_618_p11;
wire  signed [2:0] tmp_fu_618_p13;
wire  signed [2:0] tmp_fu_618_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_104 = 7'd0;
#0 j_fu_108 = 7'd0;
#0 indvar_flatten7_fu_112 = 13'd0;
#0 i_fu_116 = 7'd0;
#0 indvar_flatten21_fu_120 = 18'd0;
#0 empty_fu_124 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U19(.din0(buff_C_out_q0),.din1(buff_C_out_1_q0),.din2(buff_C_out_2_q0),.din3(buff_C_out_3_q0),.din4(buff_C_out_4_q0),.din5(buff_C_out_5_q0),.din6(buff_C_out_6_q0),.din7(buff_C_out_7_q0),.def(tmp_fu_618_p17),.sel(trunc_ln21_1_reg_755),.dout(tmp_fu_618_p19));
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
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
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        if ((1'b1 == ap_condition_804)) begin
            empty_fu_124 <= tmp_reg_824;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_124 <= reg_302;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_116 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_fu_346_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_116 <= select_ln20_fu_415_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_120 <= 18'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_fu_346_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten21_fu_120 <= add_ln20_1_fu_352_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_112 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_fu_346_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten7_fu_112 <= select_ln21_1_fu_447_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_108 <= 7'd0;
    end else if (((icmp_ln20_reg_717 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_108 <= select_ln21_fu_470_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_104 <= 7'd0;
    end else if (((icmp_ln20_reg_717 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_104 <= add_ln23_fu_595_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln21_reg_738 <= add_ln21_fu_427_p2;
        icmp_ln20_reg_717 <= icmp_ln20_fu_346_p2;
        k_mid2_reg_743 <= k_mid2_fu_433_p3;
        or_ln5_reg_726 <= or_ln5_fu_409_p2;
        select_ln5_reg_721 <= select_ln5_fu_379_p3;
        trunc_ln21_reg_731 <= trunc_ln21_fu_423_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_A0_load_1_reg_839 <= buff_A0_q0;
        buff_A0_load_reg_829 <= buff_A0_q1;
        buff_A1_load_1_reg_844 <= buff_A1_q0;
        buff_A1_load_reg_834 <= buff_A1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_1_addr_reg_765 <= tmp_6_cast_fu_512_p1;
        buff_C_out_1_addr_reg_765_pp0_iter1_reg <= buff_C_out_1_addr_reg_765;
        buff_C_out_2_addr_reg_770 <= tmp_6_cast_fu_512_p1;
        buff_C_out_2_addr_reg_770_pp0_iter1_reg <= buff_C_out_2_addr_reg_770;
        buff_C_out_3_addr_reg_775 <= tmp_6_cast_fu_512_p1;
        buff_C_out_3_addr_reg_775_pp0_iter1_reg <= buff_C_out_3_addr_reg_775;
        buff_C_out_4_addr_reg_780 <= tmp_6_cast_fu_512_p1;
        buff_C_out_4_addr_reg_780_pp0_iter1_reg <= buff_C_out_4_addr_reg_780;
        buff_C_out_5_addr_reg_785 <= tmp_6_cast_fu_512_p1;
        buff_C_out_5_addr_reg_785_pp0_iter1_reg <= buff_C_out_5_addr_reg_785;
        buff_C_out_6_addr_reg_790 <= tmp_6_cast_fu_512_p1;
        buff_C_out_6_addr_reg_790_pp0_iter1_reg <= buff_C_out_6_addr_reg_790;
        buff_C_out_7_addr_reg_795 <= tmp_6_cast_fu_512_p1;
        buff_C_out_7_addr_reg_795_pp0_iter1_reg <= buff_C_out_7_addr_reg_795;
        buff_C_out_addr_reg_760 <= tmp_6_cast_fu_512_p1;
        buff_C_out_addr_reg_760_pp0_iter1_reg <= buff_C_out_addr_reg_760;
        first_iter_1_reg_751 <= first_iter_1_fu_479_p2;
        tmp_2_reg_820 <= add_ln23_fu_595_p2[32'd6];
        tmp_2_reg_820_pp0_iter1_reg <= tmp_2_reg_820;
        trunc_ln21_1_reg_755 <= trunc_ln21_1_fu_491_p1;
        trunc_ln21_1_reg_755_pp0_iter1_reg <= trunc_ln21_1_reg_755;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul50_1_reg_859 <= grp_fu_210_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_1_reg_849 <= grp_fu_210_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_296 <= grp_fu_210_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_302 <= grp_fu_206_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_reg_824 <= tmp_fu_618_p19;
    end
end
always @ (*) begin
    if (((icmp_ln20_reg_717 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce1_local = 1'b1;
    end else begin
        buff_A0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_ce0_local = 1'b1;
    end else begin
        buff_A1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_ce1_local = 1'b1;
    end else begin
        buff_A1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_reg_765_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_1_address0_local = tmp_6_cast_fu_512_p1;
    end else begin
        buff_C_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_820_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_755_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_2_address0_local = buff_C_out_2_addr_reg_770_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_2_address0_local = tmp_6_cast_fu_512_p1;
    end else begin
        buff_C_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_820_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_755_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_3_address0_local = buff_C_out_3_addr_reg_775_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_3_address0_local = tmp_6_cast_fu_512_p1;
    end else begin
        buff_C_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_820_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_755_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_4_address0_local = buff_C_out_4_addr_reg_780_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_4_address0_local = tmp_6_cast_fu_512_p1;
    end else begin
        buff_C_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        buff_C_out_4_ce0_local = 1'b1;
    end else begin
        buff_C_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_820_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_755_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_4_we0_local = 1'b1;
    end else begin
        buff_C_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_5_address0_local = buff_C_out_5_addr_reg_785_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_5_address0_local = tmp_6_cast_fu_512_p1;
    end else begin
        buff_C_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        buff_C_out_5_ce0_local = 1'b1;
    end else begin
        buff_C_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_820_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_755_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_5_we0_local = 1'b1;
    end else begin
        buff_C_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_6_address0_local = buff_C_out_6_addr_reg_790_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_6_address0_local = tmp_6_cast_fu_512_p1;
    end else begin
        buff_C_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        buff_C_out_6_ce0_local = 1'b1;
    end else begin
        buff_C_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_820_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_755_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_6_we0_local = 1'b1;
    end else begin
        buff_C_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_7_address0_local = buff_C_out_7_addr_reg_795_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_7_address0_local = tmp_6_cast_fu_512_p1;
    end else begin
        buff_C_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        buff_C_out_7_ce0_local = 1'b1;
    end else begin
        buff_C_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_820_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_755_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_7_we0_local = 1'b1;
    end else begin
        buff_C_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_address0_local = buff_C_out_addr_reg_760_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_address0_local = tmp_6_cast_fu_512_p1;
    end else begin
        buff_C_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_820_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_755_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_288_p0 = reg_302;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_288_p0 = empty_fu_124;
    end else begin
        grp_fu_288_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_288_p1 = mul50_1_reg_859;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_288_p1 = reg_296;
    end else begin
        grp_fu_288_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_292_p0 = mul_1_reg_849;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_292_p0 = reg_296;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_292_p0 = buff_A0_load_1_reg_839;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_292_p0 = buff_A0_load_reg_829;
        end else begin
            grp_fu_292_p0 = 'bx;
        end
    end else begin
        grp_fu_292_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_292_p1 = buff_A1_load_1_reg_844;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_292_p1 = buff_A1_load_reg_834;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_292_p1 = alpha;
    end else begin
        grp_fu_292_p1 = 'bx;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
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
assign add_ln20_1_fu_352_p2 = (indvar_flatten21_fu_120 + 18'd1);
assign add_ln20_fu_367_p2 = (i_fu_116 + 7'd1);
assign add_ln21_1_fu_441_p2 = (indvar_flatten7_fu_112 + 13'd1);
assign add_ln21_fu_427_p2 = (select_ln5_fu_379_p3 + 7'd1);
assign add_ln23_fu_595_p2 = (k_mid2_reg_743 + 7'd2);
assign add_ln24_1_fu_546_p2 = (tmp_7_fu_524_p3 + zext_ln24_fu_532_p1);
assign add_ln24_fu_535_p2 = (tmp_5_fu_484_p3 + zext_ln24_fu_532_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_804 = ((icmp_ln20_reg_717 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_751 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign buff_A0_address0 = zext_ln24_2_fu_575_p1;
assign buff_A0_address1 = zext_ln24_1_fu_541_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A0_ce1 = buff_A0_ce1_local;
assign buff_A1_address0 = zext_ln24_3_fu_590_p1;
assign buff_A1_address1 = zext_ln24_4_fu_552_p1;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_A1_ce1 = buff_A1_ce1_local;
assign buff_C_out_1_address0 = buff_C_out_1_address0_local;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_d0 = reg_302;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = buff_C_out_2_address0_local;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_d0 = reg_302;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = buff_C_out_3_address0_local;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_d0 = reg_302;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_4_address0 = buff_C_out_4_address0_local;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_4_d0 = reg_302;
assign buff_C_out_4_we0 = buff_C_out_4_we0_local;
assign buff_C_out_5_address0 = buff_C_out_5_address0_local;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_5_d0 = reg_302;
assign buff_C_out_5_we0 = buff_C_out_5_we0_local;
assign buff_C_out_6_address0 = buff_C_out_6_address0_local;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_6_d0 = reg_302;
assign buff_C_out_6_we0 = buff_C_out_6_we0_local;
assign buff_C_out_7_address0 = buff_C_out_7_address0_local;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_7_d0 = reg_302;
assign buff_C_out_7_we0 = buff_C_out_7_we0_local;
assign buff_C_out_address0 = buff_C_out_address0_local;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_d0 = reg_302;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign empty_10_fu_475_p1 = select_ln21_fu_470_p3[5:0];
assign first_iter_1_fu_479_p2 = ((k_mid2_reg_743 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_206_p_ce = 1'b1;
assign grp_fu_206_p_din0 = grp_fu_288_p0;
assign grp_fu_206_p_din1 = grp_fu_288_p1;
assign grp_fu_206_p_opcode = 2'd0;
assign grp_fu_210_p_ce = 1'b1;
assign grp_fu_210_p_din0 = grp_fu_292_p0;
assign grp_fu_210_p_din1 = grp_fu_292_p1;
assign icmp_ln20_fu_346_p2 = ((indvar_flatten21_fu_120 == 18'd131072) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_373_p2 = ((indvar_flatten7_fu_112 == 13'd2048) ? 1'b1 : 1'b0);
assign k_mid2_fu_433_p3 = ((or_ln5_fu_409_p2[0:0] == 1'b1) ? select_ln5_1_fu_387_p3 : 7'd0);
assign lshr_ln5_2_fu_495_p4 = {{select_ln21_fu_470_p3[5:3]}};
assign or_ln5_fu_409_p2 = (xor_ln23_fu_403_p2 | icmp_ln21_fu_373_p2);
assign select_ln20_fu_415_p3 = ((icmp_ln21_fu_373_p2[0:0] == 1'b1) ? add_ln20_fu_367_p2 : i_fu_116);
assign select_ln21_1_fu_447_p3 = ((icmp_ln21_fu_373_p2[0:0] == 1'b1) ? 13'd1 : add_ln21_1_fu_441_p2);
assign select_ln21_fu_470_p3 = ((or_ln5_reg_726[0:0] == 1'b1) ? select_ln5_reg_721 : add_ln21_reg_738);
assign select_ln5_1_fu_387_p3 = ((icmp_ln21_fu_373_p2[0:0] == 1'b1) ? 7'd0 : k_fu_104);
assign select_ln5_fu_379_p3 = ((icmp_ln21_fu_373_p2[0:0] == 1'b1) ? 7'd0 : j_fu_108);
assign tmp_1_fu_395_p3 = k_fu_104[32'd6];
assign tmp_5_fu_484_p3 = {{trunc_ln21_reg_731}, {6'd0}};
assign tmp_6_cast_fu_512_p1 = tmp_6_fu_505_p3;
assign tmp_6_fu_505_p3 = {{trunc_ln21_reg_731}, {lshr_ln5_2_fu_495_p4}};
assign tmp_7_fu_524_p3 = {{empty_10_fu_475_p1}, {6'd0}};
assign tmp_8_fu_557_p4 = {{k_mid2_reg_743[5:1]}};
assign tmp_9_fu_566_p4 = {{{trunc_ln21_reg_731}, {tmp_8_fu_557_p4}}, {1'd1}};
assign tmp_fu_618_p17 = 'bx;
assign tmp_s_fu_580_p4 = {{{empty_10_fu_475_p1}, {tmp_8_fu_557_p4}}, {1'd1}};
assign trunc_ln21_1_fu_491_p1 = select_ln21_fu_470_p3[2:0];
assign trunc_ln21_fu_423_p1 = select_ln20_fu_415_p3[5:0];
assign xor_ln23_fu_403_p2 = (tmp_1_fu_395_p3 ^ 1'd1);
assign zext_ln24_1_fu_541_p1 = add_ln24_fu_535_p2;
assign zext_ln24_2_fu_575_p1 = tmp_9_fu_566_p4;
assign zext_ln24_3_fu_590_p1 = tmp_s_fu_580_p4;
assign zext_ln24_4_fu_552_p1 = add_ln24_1_fu_546_p2;
assign zext_ln24_fu_532_p1 = k_mid2_reg_743;
endmodule 