module stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,C_load,C_load_1); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [10:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [10:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [10:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [10:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [10:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [10:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [10:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [10:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [10:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [10:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [10:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [10:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [10:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [10:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [10:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [10:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [10:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [10:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [10:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [10:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [10:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [10:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [10:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln36_reg_1431;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_819_p19;
reg   [31:0] reg_858;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_780_p19;
reg   [31:0] reg_862;
wire    ap_block_pp0_stage2_11001;
reg   [8:0] indvar_flatten_load_reg_1426;
wire   [0:0] icmp_ln36_fu_898_p2;
reg   [0:0] icmp_ln36_reg_1431_pp0_iter1_reg;
wire   [13:0] add_ln36_fu_904_p2;
reg   [13:0] add_ln36_reg_1435;
reg   [4:0] j_load_reg_1440;
wire   [0:0] icmp_ln37_fu_919_p2;
reg   [0:0] icmp_ln37_reg_1445;
wire   [4:0] select_ln11_fu_925_p3;
reg   [4:0] select_ln11_reg_1451;
wire   [0:0] and_ln11_fu_945_p2;
reg   [0:0] and_ln11_reg_1457;
wire   [4:0] select_ln36_fu_957_p3;
reg   [4:0] select_ln36_reg_1463;
wire   [4:0] indvars_iv_next73_dup_fu_965_p2;
reg   [4:0] indvars_iv_next73_dup_reg_1474;
wire   [3:0] k_mid2_fu_977_p3;
reg   [3:0] k_mid2_reg_1479;
wire   [2:0] trunc_ln38_fu_985_p1;
reg   [2:0] trunc_ln38_reg_1485;
reg   [2:0] trunc_ln38_reg_1485_pp0_iter1_reg;
reg   [2:0] trunc_ln38_reg_1485_pp0_iter2_reg;
reg   [0:0] tmp_6_reg_1493;
wire   [4:0] select_ln37_fu_1002_p3;
reg   [4:0] select_ln37_reg_1502;
wire   [9:0] empty_11_fu_1036_p2;
reg   [9:0] empty_11_reg_1507;
wire   [4:0] empty_12_fu_1079_p3;
reg   [4:0] empty_12_reg_1552;
reg   [31:0] tmp_reg_1677;
wire   [31:0] tmp_4_fu_1246_p19;
reg   [31:0] tmp_4_reg_1762;
wire   [31:0] tmp_5_fu_1285_p19;
reg   [31:0] tmp_5_reg_1767;
wire   [63:0] zext_ln39_fu_1331_p1;
reg   [63:0] zext_ln39_reg_1772;
reg   [63:0] zext_ln39_reg_1772_pp0_iter2_reg;
wire   [31:0] add_ln48_3_fu_1347_p2;
reg   [31:0] add_ln48_3_reg_1824;
wire  signed [31:0] add_ln48_4_fu_1364_p2;
reg  signed [31:0] add_ln48_4_reg_1829;
wire   [31:0] grp_fu_776_p2;
reg   [31:0] mul_ln48_reg_1834;
reg   [31:0] mul_ln48_1_reg_1839;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln40_fu_1055_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln43_fu_1094_p1;
wire   [63:0] zext_ln44_fu_1128_p1;
wire   [63:0] zext_ln45_fu_1162_p1;
wire   [63:0] zext_ln41_fu_1215_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln42_fu_1234_p1;
wire    ap_block_pp0_stage1;
reg   [3:0] k_fu_120;
wire   [3:0] add_ln44_fu_1106_p2;
wire    ap_loop_init;
reg   [4:0] j_fu_124;
reg   [8:0] indvar_flatten_fu_128;
wire   [8:0] select_ln37_1_fu_1179_p3;
reg   [4:0] i_fu_132;
reg   [13:0] indvar_flatten14_fu_136;
reg    orig_0_ce0_local;
reg   [10:0] orig_0_address0_local;
reg    orig_0_ce1_local;
reg   [10:0] orig_0_address1_local;
reg    orig_1_ce0_local;
reg   [10:0] orig_1_address0_local;
reg    orig_1_ce1_local;
reg   [10:0] orig_1_address1_local;
reg    orig_2_ce0_local;
reg   [10:0] orig_2_address0_local;
reg    orig_2_ce1_local;
reg   [10:0] orig_2_address1_local;
reg    orig_3_ce0_local;
reg   [10:0] orig_3_address0_local;
reg    orig_3_ce1_local;
reg   [10:0] orig_3_address1_local;
reg    orig_4_ce0_local;
reg   [10:0] orig_4_address0_local;
reg    orig_4_ce1_local;
reg   [10:0] orig_4_address1_local;
reg    orig_5_ce0_local;
reg   [10:0] orig_5_address0_local;
reg    orig_5_ce1_local;
reg   [10:0] orig_5_address1_local;
reg    orig_6_ce0_local;
reg   [10:0] orig_6_address0_local;
reg    orig_6_ce1_local;
reg   [10:0] orig_6_address1_local;
reg    orig_7_ce0_local;
reg   [10:0] orig_7_address0_local;
reg    orig_7_ce1_local;
reg   [10:0] orig_7_address1_local;
reg    sol_6_we0_local;
wire   [31:0] add_ln48_5_fu_1369_p2;
reg    sol_6_ce0_local;
reg    sol_5_we0_local;
reg    sol_5_ce0_local;
reg    sol_4_we0_local;
reg    sol_4_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_7_we0_local;
reg    sol_7_ce0_local;
reg  signed [31:0] grp_fu_776_p0;
reg  signed [31:0] grp_fu_776_p1;
wire   [31:0] grp_fu_780_p17;
reg   [2:0] grp_fu_780_p18;
wire   [31:0] grp_fu_819_p17;
wire   [0:0] icmp_ln38_fu_939_p2;
wire   [0:0] xor_ln11_fu_933_p2;
wire   [4:0] indvars_iv_next8717_fu_951_p2;
wire   [0:0] empty_fu_971_p2;
wire  signed [5:0] tmp1_cast_cast_fu_1014_p3;
wire   [9:0] tmp1_cast_cast_cast_fu_1022_p1;
wire   [9:0] tmp_s_fu_1007_p3;
wire  signed [9:0] tmp2_cast_fu_1032_p1;
wire   [9:0] empty_10_fu_1026_p2;
wire   [10:0] add_ln1_fu_1048_p3;
wire   [4:0] indvars_iv_next7324_fu_1067_p2;
wire   [4:0] indvars_iv_next73_mid1_fu_997_p2;
wire   [4:0] select_ln11_1_fu_1072_p3;
wire   [4:0] tmp3_fu_1042_p2;
wire   [10:0] add_ln4_fu_1086_p4;
wire   [0:0] tmp_7_fu_1111_p3;
wire   [10:0] add_ln44_1_fu_1119_p4;
wire   [3:0] add_ln45_fu_1140_p2;
wire   [0:0] tmp_8_fu_1145_p3;
wire   [10:0] add_ln45_1_fu_1153_p4;
wire   [8:0] add_ln37_fu_1174_p2;
wire   [10:0] add_ln2_fu_1209_p3;
wire   [10:0] add_ln3_fu_1227_p4;
wire   [31:0] tmp_4_fu_1246_p17;
wire   [31:0] tmp_5_fu_1285_p17;
wire   [10:0] add_ln_fu_1324_p4;
wire   [31:0] add_ln48_2_fu_1343_p2;
wire   [31:0] add_ln48_fu_1353_p2;
wire   [31:0] add_ln48_1_fu_1358_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] grp_fu_780_p1;
wire   [2:0] grp_fu_780_p3;
wire   [2:0] grp_fu_780_p5;
wire   [2:0] grp_fu_780_p7;
wire  signed [2:0] grp_fu_780_p9;
wire  signed [2:0] grp_fu_780_p11;
wire  signed [2:0] grp_fu_780_p13;
wire  signed [2:0] grp_fu_780_p15;
wire   [2:0] grp_fu_819_p1;
wire   [2:0] grp_fu_819_p3;
wire   [2:0] grp_fu_819_p5;
wire   [2:0] grp_fu_819_p7;
wire  signed [2:0] grp_fu_819_p9;
wire  signed [2:0] grp_fu_819_p11;
wire  signed [2:0] grp_fu_819_p13;
wire  signed [2:0] grp_fu_819_p15;
wire  signed [2:0] tmp_4_fu_1246_p1;
wire   [2:0] tmp_4_fu_1246_p3;
wire   [2:0] tmp_4_fu_1246_p5;
wire   [2:0] tmp_4_fu_1246_p7;
wire   [2:0] tmp_4_fu_1246_p9;
wire  signed [2:0] tmp_4_fu_1246_p11;
wire  signed [2:0] tmp_4_fu_1246_p13;
wire  signed [2:0] tmp_4_fu_1246_p15;
wire   [2:0] tmp_5_fu_1285_p1;
wire   [2:0] tmp_5_fu_1285_p3;
wire   [2:0] tmp_5_fu_1285_p5;
wire  signed [2:0] tmp_5_fu_1285_p7;
wire  signed [2:0] tmp_5_fu_1285_p9;
wire  signed [2:0] tmp_5_fu_1285_p11;
wire  signed [2:0] tmp_5_fu_1285_p13;
wire   [2:0] tmp_5_fu_1285_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_120 = 4'd0;
#0 j_fu_124 = 5'd0;
#0 indvar_flatten_fu_128 = 9'd0;
#0 i_fu_132 = 5'd0;
#0 indvar_flatten14_fu_136 = 14'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U37(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_776_p0),.din1(grp_fu_776_p1),.ce(1'b1),.dout(grp_fu_776_p2));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U38(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(grp_fu_780_p17),.sel(grp_fu_780_p18),.dout(grp_fu_780_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U39(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(grp_fu_819_p17),.sel(trunc_ln38_reg_1485),.dout(grp_fu_819_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U40(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_4_fu_1246_p17),.sel(trunc_ln38_reg_1485),.dout(tmp_4_fu_1246_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h3 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.CASE4( 3'h5 ),.din4_WIDTH( 32 ),.CASE5( 3'h6 ),.din5_WIDTH( 32 ),.CASE6( 3'h7 ),.din6_WIDTH( 32 ),.CASE7( 3'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U41(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_5_fu_1285_p17),.sel(trunc_ln38_reg_1485),.dout(tmp_5_fu_1285_p19));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_132 <= 5'd1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_132 <= select_ln36_reg_1463;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten14_fu_136 <= 14'd0;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten14_fu_136 <= add_ln36_reg_1435;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_128 <= 9'd0;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten_fu_128 <= select_ln37_1_fu_1179_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_124 <= 5'd1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_124 <= select_ln37_fu_1002_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_120 <= 4'd1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_120 <= add_ln44_fu_1106_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln36_reg_1435 <= add_ln36_fu_904_p2;
        add_ln48_3_reg_1824 <= add_ln48_3_fu_1347_p2;
        and_ln11_reg_1457 <= and_ln11_fu_945_p2;
        icmp_ln36_reg_1431 <= icmp_ln36_fu_898_p2;
        icmp_ln36_reg_1431_pp0_iter1_reg <= icmp_ln36_reg_1431;
        icmp_ln37_reg_1445 <= icmp_ln37_fu_919_p2;
        indvar_flatten_load_reg_1426 <= indvar_flatten_fu_128;
        indvars_iv_next73_dup_reg_1474 <= indvars_iv_next73_dup_fu_965_p2;
        j_load_reg_1440 <= j_fu_124;
        k_mid2_reg_1479 <= k_mid2_fu_977_p3;
        select_ln11_reg_1451 <= select_ln11_fu_925_p3;
        select_ln36_reg_1463 <= select_ln36_fu_957_p3;
        tmp_6_reg_1493 <= k_mid2_fu_977_p3[32'd3];
        trunc_ln38_reg_1485 <= trunc_ln38_fu_985_p1;
        trunc_ln38_reg_1485_pp0_iter1_reg <= trunc_ln38_reg_1485;
        trunc_ln38_reg_1485_pp0_iter2_reg <= trunc_ln38_reg_1485_pp0_iter1_reg;
        zext_ln39_reg_1772[10 : 0] <= zext_ln39_fu_1331_p1[10 : 0];
        zext_ln39_reg_1772_pp0_iter2_reg[10 : 0] <= zext_ln39_reg_1772[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_4_reg_1829 <= add_ln48_4_fu_1364_p2;
        empty_11_reg_1507 <= empty_11_fu_1036_p2;
        empty_12_reg_1552 <= empty_12_fu_1079_p3;
        select_ln37_reg_1502 <= select_ln37_fu_1002_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_1_reg_1839 <= grp_fu_776_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_reg_1834 <= grp_fu_776_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_858 <= grp_fu_819_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_862 <= grp_fu_780_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_4_reg_1762 <= tmp_4_fu_1246_p19;
        tmp_5_reg_1767 <= tmp_5_fu_1285_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_1677 <= grp_fu_780_p19;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_1431 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln36_reg_1431_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
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
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_776_p0 = C_load_1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_776_p0 = C_load;
        end else begin
            grp_fu_776_p0 = 'bx;
        end
    end else begin
        grp_fu_776_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_776_p1 = add_ln48_4_reg_1829;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_776_p1 = reg_862;
        end else begin
            grp_fu_776_p1 = 'bx;
        end
    end else begin
        grp_fu_776_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_780_p18 = trunc_ln38_reg_1485_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_780_p18 = trunc_ln38_reg_1485;
    end else begin
        grp_fu_780_p18 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln39_fu_1331_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln42_fu_1234_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln40_fu_1055_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address1_local = zext_ln41_fu_1215_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address1_local = zext_ln45_fu_1162_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address1_local = zext_ln44_fu_1128_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address1_local = zext_ln43_fu_1094_p1;
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln39_fu_1331_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln42_fu_1234_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln40_fu_1055_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address1_local = zext_ln41_fu_1215_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address1_local = zext_ln45_fu_1162_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address1_local = zext_ln44_fu_1128_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address1_local = zext_ln43_fu_1094_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln39_fu_1331_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln42_fu_1234_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address0_local = zext_ln40_fu_1055_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address1_local = zext_ln41_fu_1215_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address1_local = zext_ln45_fu_1162_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address1_local = zext_ln44_fu_1128_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address1_local = zext_ln43_fu_1094_p1;
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln39_fu_1331_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln42_fu_1234_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = zext_ln40_fu_1055_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address1_local = zext_ln41_fu_1215_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address1_local = zext_ln45_fu_1162_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address1_local = zext_ln44_fu_1128_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address1_local = zext_ln43_fu_1094_p1;
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln39_fu_1331_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln42_fu_1234_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address0_local = zext_ln40_fu_1055_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address1_local = zext_ln41_fu_1215_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address1_local = zext_ln45_fu_1162_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address1_local = zext_ln44_fu_1128_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address1_local = zext_ln43_fu_1094_p1;
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln39_fu_1331_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln42_fu_1234_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = zext_ln40_fu_1055_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address1_local = zext_ln41_fu_1215_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address1_local = zext_ln45_fu_1162_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address1_local = zext_ln44_fu_1128_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address1_local = zext_ln43_fu_1094_p1;
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln39_fu_1331_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln42_fu_1234_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = zext_ln40_fu_1055_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address1_local = zext_ln41_fu_1215_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address1_local = zext_ln45_fu_1162_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address1_local = zext_ln44_fu_1128_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address1_local = zext_ln43_fu_1094_p1;
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln39_fu_1331_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln42_fu_1234_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = zext_ln40_fu_1055_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address1_local = zext_ln41_fu_1215_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address1_local = zext_ln45_fu_1162_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address1_local = zext_ln44_fu_1128_p1;
    end else if (((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_1485 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address1_local = zext_ln43_fu_1094_p1;
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_1431 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln38_reg_1485 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_1485_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_1485_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_1485_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_1485_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_1485_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_1485_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_1485_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_1485_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln1_fu_1048_p3 = {{empty_10_fu_1026_p2}, {tmp_6_reg_1493}};
assign add_ln2_fu_1209_p3 = {{empty_11_reg_1507}, {tmp_6_reg_1493}};
assign add_ln36_fu_904_p2 = (indvar_flatten14_fu_136 + 14'd1);
assign add_ln37_fu_1174_p2 = (indvar_flatten_load_reg_1426 + 9'd1);
assign add_ln3_fu_1227_p4 = {{{select_ln36_reg_1463}, {empty_12_reg_1552}}, {tmp_6_reg_1493}};
assign add_ln44_1_fu_1119_p4 = {{{select_ln36_reg_1463}, {select_ln37_fu_1002_p3}}, {tmp_7_fu_1111_p3}};
assign add_ln44_fu_1106_p2 = (k_mid2_reg_1479 + 4'd1);
assign add_ln45_1_fu_1153_p4 = {{{select_ln36_reg_1463}, {select_ln37_fu_1002_p3}}, {tmp_8_fu_1145_p3}};
assign add_ln45_fu_1140_p2 = ($signed(k_mid2_reg_1479) + $signed(4'd15));
assign add_ln48_1_fu_1358_p2 = (add_ln48_fu_1353_p2 + reg_858);
assign add_ln48_2_fu_1343_p2 = (tmp_4_reg_1762 + tmp_5_reg_1767);
assign add_ln48_3_fu_1347_p2 = (add_ln48_2_fu_1343_p2 + reg_858);
assign add_ln48_4_fu_1364_p2 = (add_ln48_3_reg_1824 + add_ln48_1_fu_1358_p2);
assign add_ln48_5_fu_1369_p2 = (mul_ln48_1_reg_1839 + mul_ln48_reg_1834);
assign add_ln48_fu_1353_p2 = (tmp_reg_1677 + reg_862);
assign add_ln4_fu_1086_p4 = {{{select_ln36_reg_1463}, {tmp3_fu_1042_p2}}, {tmp_6_reg_1493}};
assign add_ln_fu_1324_p4 = {{{select_ln36_reg_1463}, {select_ln37_reg_1502}}, {tmp_6_reg_1493}};
assign and_ln11_fu_945_p2 = (xor_ln11_fu_933_p2 & icmp_ln38_fu_939_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_10_fu_1026_p2 = (tmp1_cast_cast_cast_fu_1022_p1 + tmp_s_fu_1007_p3);
assign empty_11_fu_1036_p2 = ($signed(tmp2_cast_fu_1032_p1) + $signed(tmp_s_fu_1007_p3));
assign empty_12_fu_1079_p3 = ((and_ln11_reg_1457[0:0] == 1'b1) ? indvars_iv_next73_mid1_fu_997_p2 : select_ln11_1_fu_1072_p3);
assign empty_fu_971_p2 = (icmp_ln37_fu_919_p2 | and_ln11_fu_945_p2);
assign grp_fu_780_p17 = 'bx;
assign grp_fu_819_p17 = 'bx;
assign icmp_ln36_fu_898_p2 = ((indvar_flatten14_fu_136 == 14'd12600) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_919_p2 = ((indvar_flatten_fu_128 == 9'd420) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_939_p2 = ((k_fu_120 == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next7324_fu_1067_p2 = (j_load_reg_1440 + 5'd1);
assign indvars_iv_next73_dup_fu_965_p2 = (select_ln11_fu_925_p3 + 5'd1);
assign indvars_iv_next73_mid1_fu_997_p2 = (select_ln11_reg_1451 + 5'd2);
assign indvars_iv_next8717_fu_951_p2 = (i_fu_132 + 5'd1);
assign k_mid2_fu_977_p3 = ((empty_fu_971_p2[0:0] == 1'b1) ? 4'd1 : k_fu_120);
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = orig_4_address1_local;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = orig_5_address1_local;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = orig_6_address1_local;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = orig_7_address1_local;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign select_ln11_1_fu_1072_p3 = ((icmp_ln37_reg_1445[0:0] == 1'b1) ? 5'd2 : indvars_iv_next7324_fu_1067_p2);
assign select_ln11_fu_925_p3 = ((icmp_ln37_fu_919_p2[0:0] == 1'b1) ? 5'd1 : j_fu_124);
assign select_ln36_fu_957_p3 = ((icmp_ln37_fu_919_p2[0:0] == 1'b1) ? indvars_iv_next8717_fu_951_p2 : i_fu_132);
assign select_ln37_1_fu_1179_p3 = ((icmp_ln37_reg_1445[0:0] == 1'b1) ? 9'd1 : add_ln37_fu_1174_p2);
assign select_ln37_fu_1002_p3 = ((and_ln11_reg_1457[0:0] == 1'b1) ? indvars_iv_next73_dup_reg_1474 : select_ln11_reg_1451);
assign sol_0_address0 = zext_ln39_reg_1772_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = add_ln48_5_fu_1369_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln39_reg_1772_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_1369_p2;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln39_reg_1772_pp0_iter2_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = add_ln48_5_fu_1369_p2;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln39_reg_1772_pp0_iter2_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = add_ln48_5_fu_1369_p2;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = zext_ln39_reg_1772_pp0_iter2_reg;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = add_ln48_5_fu_1369_p2;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = zext_ln39_reg_1772_pp0_iter2_reg;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = add_ln48_5_fu_1369_p2;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = zext_ln39_reg_1772_pp0_iter2_reg;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = add_ln48_5_fu_1369_p2;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = zext_ln39_reg_1772_pp0_iter2_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = add_ln48_5_fu_1369_p2;
assign sol_7_we0 = sol_7_we0_local;
assign tmp1_cast_cast_cast_fu_1022_p1 = $unsigned(tmp1_cast_cast_fu_1014_p3);
assign tmp1_cast_cast_fu_1014_p3 = {{1'd1}, {select_ln37_fu_1002_p3}};
assign tmp2_cast_fu_1032_p1 = tmp1_cast_cast_fu_1014_p3;
assign tmp3_fu_1042_p2 = ($signed(select_ln37_fu_1002_p3) + $signed(5'd31));
assign tmp_4_fu_1246_p17 = 'bx;
assign tmp_5_fu_1285_p17 = 'bx;
assign tmp_7_fu_1111_p3 = add_ln44_fu_1106_p2[32'd3];
assign tmp_8_fu_1145_p3 = add_ln45_fu_1140_p2[32'd3];
assign tmp_s_fu_1007_p3 = {{select_ln36_reg_1463}, {5'd0}};
assign trunc_ln38_fu_985_p1 = k_mid2_fu_977_p3[2:0];
assign xor_ln11_fu_933_p2 = (icmp_ln37_fu_919_p2 ^ 1'd1);
assign zext_ln39_fu_1331_p1 = add_ln_fu_1324_p4;
assign zext_ln40_fu_1055_p1 = add_ln1_fu_1048_p3;
assign zext_ln41_fu_1215_p1 = add_ln2_fu_1209_p3;
assign zext_ln42_fu_1234_p1 = add_ln3_fu_1227_p4;
assign zext_ln43_fu_1094_p1 = add_ln4_fu_1086_p4;
assign zext_ln44_fu_1128_p1 = add_ln44_1_fu_1119_p4;
assign zext_ln45_fu_1162_p1 = add_ln45_1_fu_1153_p4;
always @ (posedge ap_clk) begin
    zext_ln39_reg_1772[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_1772_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 