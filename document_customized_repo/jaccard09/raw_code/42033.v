module stencil_stencil_Pipeline_stencil_label1_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
output  [10:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [10:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [10:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [10:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [10:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [10:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [10:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [10:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [10:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln7_fu_905_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln86_reg_462;
wire   [31:0] grp_fu_493_p2;
reg   [31:0] reg_537;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_501_p2;
reg   [31:0] reg_541;
wire   [31:0] grp_fu_505_p2;
reg   [31:0] reg_545;
reg   [6:0] r3_load_reg_1171;
wire   [5:0] select_ln4_fu_575_p3;
reg   [5:0] select_ln4_reg_1176;
wire   [6:0] indvars_iv_next80_mid1_fu_583_p2;
reg   [6:0] indvars_iv_next80_mid1_reg_1184;
reg   [3:0] lshr_ln_reg_1189;
wire   [0:0] icmp_ln12_fu_603_p2;
reg   [0:0] icmp_ln12_reg_1196;
reg   [0:0] icmp_ln12_reg_1196_pp0_iter1_reg;
wire   [0:0] icmp_ln16_fu_609_p2;
reg   [0:0] icmp_ln16_reg_1208;
reg   [0:0] icmp_ln16_reg_1208_pp0_iter1_reg;
reg   [0:0] icmp_ln16_reg_1208_pp0_iter2_reg;
reg   [0:0] icmp_ln16_reg_1208_pp0_iter3_reg;
reg   [0:0] icmp_ln16_reg_1208_pp0_iter4_reg;
wire   [5:0] or_ln8_fu_625_p3;
reg   [5:0] or_ln8_reg_1212;
wire   [7:0] add_ln12_5_fu_637_p2;
reg   [7:0] add_ln12_5_reg_1217;
wire   [6:0] r_fu_656_p3;
reg   [6:0] r_reg_1222;
wire   [63:0] zext_ln12_fu_685_p1;
reg   [63:0] zext_ln12_reg_1228;
reg   [63:0] zext_ln12_reg_1228_pp0_iter1_reg;
reg   [63:0] zext_ln12_reg_1228_pp0_iter2_reg;
reg   [63:0] zext_ln12_reg_1228_pp0_iter3_reg;
reg   [10:0] lshr_ln12_5_reg_1296;
reg   [10:0] lshr_ln12_6_reg_1301;
reg   [10:0] lshr_ln12_8_reg_1316;
wire   [0:0] icmp_ln8_fu_899_p2;
reg   [0:0] icmp_ln8_reg_1331;
reg   [0:0] icmp_ln7_reg_1336;
wire  signed [31:0] select_ln12_fu_933_p3;
reg  signed [31:0] select_ln12_reg_1340;
wire  signed [31:0] select_ln12_1_fu_940_p3;
reg  signed [31:0] select_ln12_1_reg_1345;
wire  signed [31:0] select_ln12_2_fu_947_p3;
reg  signed [31:0] select_ln12_2_reg_1351;
wire  signed [31:0] grp_fu_509_p3;
reg  signed [31:0] select_ln12_3_reg_1357;
wire  signed [31:0] grp_fu_516_p3;
reg  signed [31:0] select_ln12_4_reg_1362;
wire  signed [31:0] grp_fu_523_p3;
reg  signed [31:0] select_ln12_5_reg_1368;
wire  signed [31:0] select_ln12_9_fu_991_p3;
reg  signed [31:0] select_ln12_9_reg_1404;
wire  signed [31:0] grp_fu_530_p3;
reg  signed [31:0] select_ln12_11_reg_1419;
reg  signed [31:0] select_ln12_6_reg_1424;
reg  signed [31:0] select_ln12_7_reg_1429;
reg  signed [31:0] select_ln12_8_reg_1435;
reg  signed [31:0] select_ln12_10_reg_1441;
wire   [31:0] grp_fu_473_p2;
reg   [31:0] mul_ln13_reg_1446;
wire   [31:0] grp_fu_477_p2;
reg   [31:0] mul_ln13_2_reg_1451;
reg   [31:0] mul_ln13_2_reg_1451_pp0_iter3_reg;
wire   [31:0] grp_fu_481_p2;
reg   [31:0] mul_ln13_4_reg_1456;
reg   [31:0] mul_ln13_4_reg_1456_pp0_iter3_reg;
wire   [31:0] grp_fu_485_p2;
reg   [31:0] mul_ln13_7_reg_1461;
wire   [31:0] grp_fu_489_p2;
reg   [31:0] mul_ln13_11_reg_1466;
wire   [31:0] grp_fu_497_p2;
reg   [31:0] mul_ln13_13_reg_1471;
reg   [31:0] mul_ln13_1_reg_1476;
reg   [31:0] mul_ln13_3_reg_1481;
reg   [31:0] mul_ln13_5_reg_1486;
reg   [31:0] mul_ln13_6_reg_1491;
reg   [31:0] mul_ln13_8_reg_1496;
reg   [31:0] mul_ln13_10_reg_1501;
wire   [31:0] add_ln13_13_fu_1019_p2;
reg   [31:0] add_ln13_13_reg_1506;
wire   [31:0] add_ln13_fu_1025_p2;
reg   [31:0] add_ln13_reg_1511;
wire   [31:0] add_ln13_1_fu_1029_p2;
reg   [31:0] add_ln13_1_reg_1516;
wire   [31:0] add_ln13_5_fu_1037_p2;
reg   [31:0] add_ln13_5_reg_1521;
wire   [31:0] add_ln13_8_fu_1042_p2;
reg   [31:0] add_ln13_8_reg_1526;
wire   [31:0] add_ln13_9_fu_1047_p2;
reg   [31:0] add_ln13_9_reg_1531;
wire   [31:0] add_ln13_14_fu_1057_p2;
reg   [31:0] add_ln13_14_reg_1536;
wire   [31:0] add_ln13_6_fu_1066_p2;
reg   [31:0] add_ln13_6_reg_1541;
wire   [31:0] temp_1_fu_1075_p2;
reg   [31:0] temp_1_reg_1546;
wire   [31:0] temp_fu_1084_p2;
reg   [31:0] temp_reg_1552;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln86_phi_fu_465_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_709_p1;
wire   [63:0] zext_ln12_2_fu_729_p1;
wire   [63:0] zext_ln12_3_fu_753_p1;
wire   [63:0] zext_ln12_7_fu_833_p1;
wire   [63:0] zext_ln12_10_fu_882_p1;
wire   [63:0] zext_ln12_4_fu_975_p1;
wire   [63:0] zext_ln12_5_fu_981_p1;
wire   [63:0] zext_ln12_6_fu_986_p1;
wire   [63:0] zext_ln12_8_fu_998_p1;
reg   [11:0] indvar_flatten2_fu_112;
wire   [11:0] add_ln7_fu_888_p2;
reg   [6:0] r3_fu_116;
reg   [6:0] ap_sig_allocacmp_r3_load;
reg   [5:0] c4_fu_120;
wire   [5:0] c_fu_894_p2;
reg   [5:0] ap_sig_allocacmp_c4_load;
reg   [6:0] indvars_iv_next805_fu_124;
wire   [6:0] indvars_iv_next80_fu_1003_p2;
reg    orig_0_ce1_local;
reg   [10:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [10:0] orig_0_address0_local;
reg    orig_2_ce1_local;
reg   [10:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [10:0] orig_2_address0_local;
reg    orig_1_ce1_local;
reg   [10:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [10:0] orig_1_address0_local;
reg    orig_3_ce1_local;
reg   [10:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [10:0] orig_3_address0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg  signed [31:0] grp_fu_473_p0;
reg  signed [31:0] grp_fu_473_p1;
reg  signed [31:0] grp_fu_477_p0;
reg  signed [31:0] grp_fu_477_p1;
reg  signed [31:0] grp_fu_481_p0;
reg  signed [31:0] grp_fu_481_p1;
reg  signed [31:0] grp_fu_485_p0;
reg  signed [31:0] grp_fu_485_p1;
reg  signed [31:0] grp_fu_489_p0;
reg  signed [31:0] grp_fu_489_p1;
reg  signed [31:0] grp_fu_493_p0;
reg  signed [31:0] grp_fu_493_p1;
reg  signed [31:0] grp_fu_497_p0;
reg  signed [31:0] grp_fu_497_p1;
reg  signed [31:0] grp_fu_501_p0;
reg  signed [31:0] grp_fu_501_p1;
reg  signed [31:0] grp_fu_505_p0;
reg  signed [31:0] grp_fu_505_p1;
reg   [0:0] grp_fu_509_p0;
reg   [0:0] grp_fu_516_p0;
reg   [0:0] grp_fu_523_p0;
reg   [0:0] grp_fu_530_p0;
wire   [1:0] trunc_ln8_fu_589_p1;
wire   [4:0] tmp_8_fu_615_p4;
wire   [7:0] or_ln8_cast34_fu_633_p1;
wire   [10:0] add_ln_fu_678_p3;
wire   [12:0] tmp_fu_671_p3;
wire   [12:0] add_ln12_fu_693_p2;
wire   [10:0] lshr_ln12_2_fu_699_p4;
wire   [6:0] select_ln4_1_fu_649_p3;
wire   [10:0] add_ln5_fu_722_p3;
wire   [12:0] tmp_2_fu_715_p3;
wire   [12:0] add_ln12_1_fu_737_p2;
wire   [10:0] lshr_ln12_4_fu_743_p4;
wire   [6:0] select_ln4_cast1_fu_759_p1;
wire   [7:0] tmp_cast_cast_fu_762_p3;
wire   [12:0] tmp_cast_cast_cast_fu_770_p1;
wire   [12:0] tmp_1_fu_663_p3;
wire   [12:0] empty_fu_774_p2;
wire   [12:0] add_ln12_2_fu_790_p2;
wire   [12:0] or_ln8_cast_fu_806_p1;
wire   [12:0] tmp_9_fu_809_p3;
wire   [12:0] add_ln12_3_fu_817_p2;
wire   [10:0] lshr_ln12_7_fu_823_p4;
wire   [12:0] tmp_s_fu_839_p3;
wire   [12:0] add_ln12_4_fu_847_p2;
wire   [12:0] zext_ln12_9_fu_863_p1;
wire   [12:0] add_ln12_6_fu_866_p2;
wire   [10:0] lshr_ln12_9_fu_872_p4;
wire   [4:0] zext_ln5_fu_954_p1;
wire   [5:0] zext_ln5_cast_fu_957_p3;
wire   [10:0] zext_ln5_1_fu_965_p1;
wire   [10:0] tmp_3_fu_926_p3;
wire   [10:0] add_ln5_1_fu_969_p2;
wire   [31:0] add_ln13_12_fu_1013_p2;
wire   [31:0] add_ln13_4_fu_1033_p2;
wire   [31:0] add_ln13_11_fu_1053_p2;
wire   [31:0] add_ln13_3_fu_1062_p2;
wire   [31:0] add_ln13_10_fu_1071_p2;
wire   [31:0] add_ln13_2_fu_1080_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_888;
reg    ap_condition_894;
reg    ap_condition_382;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_112 = 12'd0;
#0 r3_fu_116 = 7'd0;
#0 c4_fu_120 = 6'd0;
#0 indvars_iv_next805_fu_124 = 7'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_473_p0),.din1(grp_fu_473_p1),.ce(1'b1),.dout(grp_fu_473_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_477_p0),.din1(grp_fu_477_p1),.ce(1'b1),.dout(grp_fu_477_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_481_p0),.din1(grp_fu_481_p1),.ce(1'b1),.dout(grp_fu_481_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_485_p0),.din1(grp_fu_485_p1),.ce(1'b1),.dout(grp_fu_485_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_489_p0),.din1(grp_fu_489_p1),.ce(1'b1),.dout(grp_fu_489_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_493_p0),.din1(grp_fu_493_p1),.ce(1'b1),.dout(grp_fu_493_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_497_p0),.din1(grp_fu_497_p1),.ce(1'b1),.dout(grp_fu_497_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_501_p0),.din1(grp_fu_501_p1),.ce(1'b1),.dout(grp_fu_501_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_505_p0),.din1(grp_fu_505_p1),.ce(1'b1),.dout(grp_fu_505_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
        if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage1_11001)) begin
            ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c4_fu_120 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c4_fu_120 <= c_fu_894_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_894)) begin
            icmp_ln86_reg_462 <= icmp_ln8_reg_1331;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln86_reg_462 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_112 <= 12'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten2_fu_112 <= add_ln7_fu_888_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvars_iv_next805_fu_124 <= 7'd1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvars_iv_next805_fu_124 <= indvars_iv_next80_fu_1003_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r3_fu_116 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r3_fu_116 <= r_fu_656_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12_5_reg_1217[7 : 1] <= add_ln12_5_fu_637_p2[7 : 1];
        add_ln13_14_reg_1536 <= add_ln13_14_fu_1057_p2;
        add_ln13_1_reg_1516 <= add_ln13_1_fu_1029_p2;
        add_ln13_5_reg_1521 <= add_ln13_5_fu_1037_p2;
        add_ln13_8_reg_1526 <= add_ln13_8_fu_1042_p2;
        add_ln13_9_reg_1531 <= add_ln13_9_fu_1047_p2;
        add_ln13_reg_1511 <= add_ln13_fu_1025_p2;
        icmp_ln12_reg_1196 <= icmp_ln12_fu_603_p2;
        icmp_ln12_reg_1196_pp0_iter1_reg <= icmp_ln12_reg_1196;
        icmp_ln16_reg_1208 <= icmp_ln16_fu_609_p2;
        icmp_ln16_reg_1208_pp0_iter1_reg <= icmp_ln16_reg_1208;
        icmp_ln16_reg_1208_pp0_iter2_reg <= icmp_ln16_reg_1208_pp0_iter1_reg;
        icmp_ln16_reg_1208_pp0_iter3_reg <= icmp_ln16_reg_1208_pp0_iter2_reg;
        icmp_ln16_reg_1208_pp0_iter4_reg <= icmp_ln16_reg_1208_pp0_iter3_reg;
        indvars_iv_next80_mid1_reg_1184 <= indvars_iv_next80_mid1_fu_583_p2;
        lshr_ln_reg_1189 <= {{select_ln4_fu_575_p3[5:2]}};
        mul_ln13_2_reg_1451_pp0_iter3_reg <= mul_ln13_2_reg_1451;
        mul_ln13_4_reg_1456_pp0_iter3_reg <= mul_ln13_4_reg_1456;
        or_ln8_reg_1212[5 : 1] <= or_ln8_fu_625_p3[5 : 1];
        r3_load_reg_1171 <= ap_sig_allocacmp_r3_load;
        select_ln12_1_reg_1345 <= select_ln12_1_fu_940_p3;
        select_ln12_2_reg_1351 <= select_ln12_2_fu_947_p3;
        select_ln12_9_reg_1404 <= select_ln12_9_fu_991_p3;
        select_ln12_reg_1340 <= select_ln12_fu_933_p3;
        select_ln4_reg_1176 <= select_ln4_fu_575_p3;
        temp_reg_1552 <= temp_fu_1084_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_13_reg_1506 <= add_ln13_13_fu_1019_p2;
        add_ln13_6_reg_1541 <= add_ln13_6_fu_1066_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        icmp_ln7_reg_1336 <= icmp_ln7_fu_905_p2;
        lshr_ln12_5_reg_1296 <= {{empty_fu_774_p2[12:2]}};
        lshr_ln12_6_reg_1301 <= {{add_ln12_2_fu_790_p2[12:2]}};
        lshr_ln12_8_reg_1316 <= {{add_ln12_4_fu_847_p2[12:2]}};
        r_reg_1222 <= r_fu_656_p3;
        temp_1_reg_1546 <= temp_1_fu_1075_p2;
        zext_ln12_reg_1228[10 : 0] <= zext_ln12_fu_685_p1[10 : 0];
        zext_ln12_reg_1228_pp0_iter1_reg[10 : 0] <= zext_ln12_reg_1228[10 : 0];
        zext_ln12_reg_1228_pp0_iter2_reg[10 : 0] <= zext_ln12_reg_1228_pp0_iter1_reg[10 : 0];
        zext_ln12_reg_1228_pp0_iter3_reg[10 : 0] <= zext_ln12_reg_1228_pp0_iter2_reg[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln8_reg_1331 <= icmp_ln8_fu_899_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_10_reg_1501 <= grp_fu_497_p2;
        mul_ln13_1_reg_1476 <= grp_fu_473_p2;
        mul_ln13_3_reg_1481 <= grp_fu_477_p2;
        mul_ln13_5_reg_1486 <= grp_fu_481_p2;
        mul_ln13_6_reg_1491 <= grp_fu_485_p2;
        mul_ln13_8_reg_1496 <= grp_fu_489_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_11_reg_1466 <= grp_fu_489_p2;
        mul_ln13_13_reg_1471 <= grp_fu_497_p2;
        mul_ln13_2_reg_1451 <= grp_fu_477_p2;
        mul_ln13_4_reg_1456 <= grp_fu_481_p2;
        mul_ln13_7_reg_1461 <= grp_fu_485_p2;
        mul_ln13_reg_1446 <= grp_fu_473_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_537 <= grp_fu_493_p2;
        reg_541 <= grp_fu_501_p2;
        reg_545 <= grp_fu_505_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln12_10_reg_1441 <= grp_fu_530_p3;
        select_ln12_6_reg_1424 <= grp_fu_509_p3;
        select_ln12_7_reg_1429 <= grp_fu_516_p3;
        select_ln12_8_reg_1435 <= grp_fu_523_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln12_11_reg_1419 <= grp_fu_530_p3;
        select_ln12_3_reg_1357 <= grp_fu_509_p3;
        select_ln12_4_reg_1362 <= grp_fu_516_p3;
        select_ln12_5_reg_1368 <= grp_fu_523_p3;
    end
end
always @ (*) begin
    if (((icmp_ln7_fu_905_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_888)) begin
            ap_phi_mux_icmp_ln86_phi_fu_465_p4 = icmp_ln8_reg_1331;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln86_phi_fu_465_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln86_phi_fu_465_p4 = icmp_ln8_reg_1331;
        end
    end else begin
        ap_phi_mux_icmp_ln86_phi_fu_465_p4 = icmp_ln8_reg_1331;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c4_load = 6'd0;
    end else begin
        ap_sig_allocacmp_c4_load = c4_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_r3_load = 7'd0;
    end else begin
        ap_sig_allocacmp_r3_load = r3_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_473_p0 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_473_p0 = filter_load_2;
    end else begin
        grp_fu_473_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_473_p1 = select_ln12_5_reg_1368;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_473_p1 = select_ln12_2_reg_1351;
    end else begin
        grp_fu_473_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p0 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p0 = filter_load_1;
    end else begin
        grp_fu_477_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p1 = select_ln12_8_reg_1435;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p1 = select_ln12_1_reg_1345;
    end else begin
        grp_fu_477_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_481_p0 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_481_p0 = filter_load;
    end else begin
        grp_fu_481_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_481_p1 = select_ln12_6_reg_1424;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_481_p1 = select_ln12_reg_1340;
    end else begin
        grp_fu_481_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_485_p0 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_485_p0 = filter_load_3;
    end else begin
        grp_fu_485_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_485_p1 = select_ln12_4_reg_1362;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_485_p1 = select_ln12_3_reg_1357;
    end else begin
        grp_fu_485_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_489_p0 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_489_p0 = filter_load_1;
    end else begin
        grp_fu_489_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_489_p1 = select_ln12_7_reg_1429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_489_p1 = select_ln12_2_reg_1351;
    end else begin
        grp_fu_489_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_493_p0 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_493_p0 = filter_load_8;
    end else begin
        grp_fu_493_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_493_p1 = select_ln12_9_reg_1404;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_493_p1 = select_ln12_11_reg_1419;
    end else begin
        grp_fu_493_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_497_p0 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_497_p0 = filter_load;
    end else begin
        grp_fu_497_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_497_p1 = select_ln12_10_reg_1441;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_497_p1 = select_ln12_1_reg_1345;
    end else begin
        grp_fu_497_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_501_p0 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_501_p0 = filter_load_4;
    end else begin
        grp_fu_501_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_501_p1 = select_ln12_7_reg_1429;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_501_p1 = select_ln12_5_reg_1368;
    end else begin
        grp_fu_501_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_505_p0 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_505_p0 = filter_load_3;
    end else begin
        grp_fu_505_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_505_p1 = select_ln12_8_reg_1435;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_505_p1 = select_ln12_4_reg_1362;
    end else begin
        grp_fu_505_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_509_p0 = icmp_ln12_reg_1196_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_509_p0 = icmp_ln12_reg_1196;
        end else begin
            grp_fu_509_p0 = 'bx;
        end
    end else begin
        grp_fu_509_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_516_p0 = icmp_ln12_reg_1196_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_516_p0 = icmp_ln12_reg_1196;
        end else begin
            grp_fu_516_p0 = 'bx;
        end
    end else begin
        grp_fu_516_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_523_p0 = icmp_ln12_reg_1196_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_523_p0 = icmp_ln12_reg_1196;
        end else begin
            grp_fu_523_p0 = 'bx;
        end
    end else begin
        grp_fu_523_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_530_p0 = icmp_ln12_reg_1196_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_530_p0 = icmp_ln12_reg_1196;
        end else begin
            grp_fu_530_p0 = 'bx;
        end
    end else begin
        grp_fu_530_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_6_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_4_fu_975_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_3_fu_753_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_2_fu_729_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_382)) begin
        if ((icmp_ln12_reg_1196 == 1'd1)) begin
            orig_0_address1_local = zext_ln12_1_fu_709_p1;
        end else if ((icmp_ln12_reg_1196 == 1'd0)) begin
            orig_0_address1_local = zext_ln12_fu_685_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_8_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_5_fu_981_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_10_fu_882_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_2_fu_729_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_382)) begin
        if ((icmp_ln12_reg_1196 == 1'd1)) begin
            orig_1_address1_local = zext_ln12_7_fu_833_p1;
        end else if ((icmp_ln12_reg_1196 == 1'd0)) begin
            orig_1_address1_local = zext_ln12_fu_685_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_6_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_4_fu_975_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_3_fu_753_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_2_fu_729_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_382)) begin
        if ((icmp_ln12_reg_1196 == 1'd0)) begin
            orig_2_address1_local = zext_ln12_1_fu_709_p1;
        end else if ((icmp_ln12_reg_1196 == 1'd1)) begin
            orig_2_address1_local = zext_ln12_fu_685_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_8_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_5_fu_981_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_10_fu_882_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_2_fu_729_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_382)) begin
        if ((icmp_ln12_reg_1196 == 1'd0)) begin
            orig_3_address1_local = zext_ln12_7_fu_833_p1;
        end else if ((icmp_ln12_reg_1196 == 1'd1)) begin
            orig_3_address1_local = zext_ln12_fu_685_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln12_reg_1196 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln16_reg_1208_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln16_reg_1208_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln16_reg_1208_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln16_reg_1208_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln12_1_fu_737_p2 = (tmp_2_fu_715_p3 + 13'd2);
assign add_ln12_2_fu_790_p2 = (empty_fu_774_p2 + 13'd2);
assign add_ln12_3_fu_817_p2 = (or_ln8_cast_fu_806_p1 + tmp_9_fu_809_p3);
assign add_ln12_4_fu_847_p2 = (or_ln8_cast_fu_806_p1 + tmp_s_fu_839_p3);
assign add_ln12_5_fu_637_p2 = ($signed(or_ln8_cast34_fu_633_p1) + $signed(8'd130));
assign add_ln12_6_fu_866_p2 = (zext_ln12_9_fu_863_p1 + tmp_1_fu_663_p3);
assign add_ln12_fu_693_p2 = (tmp_fu_671_p3 + 13'd2);
assign add_ln13_10_fu_1071_p2 = (add_ln13_9_reg_1531 + add_ln13_8_reg_1526);
assign add_ln13_11_fu_1053_p2 = (mul_ln13_13_reg_1471 + mul_ln13_11_reg_1466);
assign add_ln13_12_fu_1013_p2 = (reg_545 + reg_537);
assign add_ln13_13_fu_1019_p2 = (add_ln13_12_fu_1013_p2 + reg_541);
assign add_ln13_14_fu_1057_p2 = (add_ln13_13_reg_1506 + add_ln13_11_fu_1053_p2);
assign add_ln13_1_fu_1029_p2 = (mul_ln13_1_reg_1476 + mul_ln13_6_reg_1491);
assign add_ln13_2_fu_1080_p2 = (add_ln13_1_reg_1516 + add_ln13_reg_1511);
assign add_ln13_3_fu_1062_p2 = (mul_ln13_4_reg_1456_pp0_iter3_reg + mul_ln13_2_reg_1451_pp0_iter3_reg);
assign add_ln13_4_fu_1033_p2 = (mul_ln13_reg_1446 + mul_ln13_3_reg_1481);
assign add_ln13_5_fu_1037_p2 = (add_ln13_4_fu_1033_p2 + mul_ln13_7_reg_1461);
assign add_ln13_6_fu_1066_p2 = (add_ln13_5_reg_1521 + add_ln13_3_fu_1062_p2);
assign add_ln13_8_fu_1042_p2 = (reg_537 + mul_ln13_10_reg_1501);
assign add_ln13_9_fu_1047_p2 = (reg_545 + reg_541);
assign add_ln13_fu_1025_p2 = (mul_ln13_5_reg_1486 + mul_ln13_8_reg_1496);
assign add_ln5_1_fu_969_p2 = (zext_ln5_1_fu_965_p1 + tmp_3_fu_926_p3);
assign add_ln5_fu_722_p3 = {{select_ln4_1_fu_649_p3}, {lshr_ln_reg_1189}};
assign add_ln7_fu_888_p2 = (indvar_flatten2_fu_112 + 12'd1);
assign add_ln_fu_678_p3 = {{r_fu_656_p3}, {lshr_ln_reg_1189}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_382 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_888 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln7_reg_1336 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_894 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7_reg_1336 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign c_fu_894_p2 = (select_ln4_reg_1176 + 6'd2);
assign empty_fu_774_p2 = (tmp_cast_cast_cast_fu_770_p1 + tmp_1_fu_663_p3);
assign grp_fu_509_p3 = ((grp_fu_509_p0[0:0] == 1'b1) ? orig_2_q0 : orig_0_q0);
assign grp_fu_516_p3 = ((grp_fu_516_p0[0:0] == 1'b1) ? orig_3_q0 : orig_1_q0);
assign grp_fu_523_p3 = ((grp_fu_523_p0[0:0] == 1'b1) ? orig_0_q0 : orig_2_q0);
assign grp_fu_530_p3 = ((grp_fu_530_p0[0:0] == 1'b1) ? orig_1_q0 : orig_3_q0);
assign icmp_ln12_fu_603_p2 = ((trunc_ln8_fu_589_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_609_p2 = ((trunc_ln8_fu_589_p1 == 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_905_p2 = ((indvar_flatten2_fu_112 == 12'd3905) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_899_p2 = ((c_fu_894_p2 == 6'd62) ? 1'b1 : 1'b0);
assign indvars_iv_next80_fu_1003_p2 = (r_reg_1222 + 7'd1);
assign indvars_iv_next80_mid1_fu_583_p2 = (ap_sig_allocacmp_r3_load + 7'd2);
assign lshr_ln12_2_fu_699_p4 = {{add_ln12_fu_693_p2[12:2]}};
assign lshr_ln12_4_fu_743_p4 = {{add_ln12_1_fu_737_p2[12:2]}};
assign lshr_ln12_7_fu_823_p4 = {{add_ln12_3_fu_817_p2[12:2]}};
assign lshr_ln12_9_fu_872_p4 = {{add_ln12_6_fu_866_p2[12:2]}};
assign or_ln8_cast34_fu_633_p1 = or_ln8_fu_625_p3;
assign or_ln8_cast_fu_806_p1 = or_ln8_reg_1212;
assign or_ln8_fu_625_p3 = {{tmp_8_fu_615_p4}, {1'd1}};
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
assign r_fu_656_p3 = ((icmp_ln86_reg_462[0:0] == 1'b1) ? indvars_iv_next805_fu_124 : r3_load_reg_1171);
assign select_ln12_1_fu_940_p3 = ((icmp_ln12_reg_1196[0:0] == 1'b1) ? orig_3_q1 : orig_1_q1);
assign select_ln12_2_fu_947_p3 = ((icmp_ln12_reg_1196[0:0] == 1'b1) ? orig_0_q1 : orig_2_q1);
assign select_ln12_9_fu_991_p3 = ((icmp_ln12_reg_1196[0:0] == 1'b1) ? orig_1_q1 : orig_3_q1);
assign select_ln12_fu_933_p3 = ((icmp_ln12_reg_1196[0:0] == 1'b1) ? orig_2_q1 : orig_0_q1);
assign select_ln4_1_fu_649_p3 = ((icmp_ln86_reg_462[0:0] == 1'b1) ? indvars_iv_next80_mid1_reg_1184 : indvars_iv_next805_fu_124);
assign select_ln4_cast1_fu_759_p1 = select_ln4_reg_1176;
assign select_ln4_fu_575_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_465_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_c4_load);
assign sol_0_address0 = zext_ln12_reg_1228_pp0_iter3_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_1552;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln12_reg_1228_pp0_iter3_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_1_reg_1546;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln12_reg_1228_pp0_iter3_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = temp_reg_1552;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln12_reg_1228_pp0_iter3_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = temp_1_reg_1546;
assign sol_3_we0 = sol_3_we0_local;
assign temp_1_fu_1075_p2 = (add_ln13_14_reg_1536 + add_ln13_10_fu_1071_p2);
assign temp_fu_1084_p2 = (add_ln13_6_reg_1541 + add_ln13_2_fu_1080_p2);
assign tmp_1_fu_663_p3 = {{r_fu_656_p3}, {6'd0}};
assign tmp_2_fu_715_p3 = {{select_ln4_1_fu_649_p3}, {select_ln4_reg_1176}};
assign tmp_3_fu_926_p3 = {{r_reg_1222}, {4'd0}};
assign tmp_8_fu_615_p4 = {{select_ln4_fu_575_p3[5:1]}};
assign tmp_9_fu_809_p3 = {{r_fu_656_p3}, {6'd2}};
assign tmp_cast_cast_cast_fu_770_p1 = tmp_cast_cast_fu_762_p3;
assign tmp_cast_cast_fu_762_p3 = {{1'd1}, {select_ln4_cast1_fu_759_p1}};
assign tmp_fu_671_p3 = {{r_fu_656_p3}, {select_ln4_reg_1176}};
assign tmp_s_fu_839_p3 = {{select_ln4_1_fu_649_p3}, {6'd2}};
assign trunc_ln8_fu_589_p1 = select_ln4_fu_575_p3[1:0];
assign zext_ln12_10_fu_882_p1 = lshr_ln12_9_fu_872_p4;
assign zext_ln12_1_fu_709_p1 = lshr_ln12_2_fu_699_p4;
assign zext_ln12_2_fu_729_p1 = add_ln5_fu_722_p3;
assign zext_ln12_3_fu_753_p1 = lshr_ln12_4_fu_743_p4;
assign zext_ln12_4_fu_975_p1 = add_ln5_1_fu_969_p2;
assign zext_ln12_5_fu_981_p1 = lshr_ln12_5_reg_1296;
assign zext_ln12_6_fu_986_p1 = lshr_ln12_6_reg_1301;
assign zext_ln12_7_fu_833_p1 = lshr_ln12_7_fu_823_p4;
assign zext_ln12_8_fu_998_p1 = lshr_ln12_8_reg_1316;
assign zext_ln12_9_fu_863_p1 = add_ln12_5_reg_1217;
assign zext_ln12_fu_685_p1 = add_ln_fu_678_p3;
assign zext_ln5_1_fu_965_p1 = zext_ln5_cast_fu_957_p3;
assign zext_ln5_cast_fu_957_p3 = {{1'd1}, {zext_ln5_fu_954_p1}};
assign zext_ln5_fu_954_p1 = lshr_ln_reg_1189;
always @ (posedge ap_clk) begin
    or_ln8_reg_1212[0] <= 1'b1;
    add_ln12_5_reg_1217[0] <= 1'b1;
    zext_ln12_reg_1228[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1228_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1228_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1228_pp0_iter3_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 