module stencil_stencil_Pipeline_stencil_label1_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,filter_load_7,filter_load_8,filter_load_2,filter_load_1,filter_load_5,filter_load_3,filter_load_4,filter_load_6,filter_load); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [11:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [11:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [11:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [11:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [11:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
input  [31:0] filter_load_7;
input  [31:0] filter_load_8;
input  [31:0] filter_load_2;
input  [31:0] filter_load_1;
input  [31:0] filter_load_5;
input  [31:0] filter_load_3;
input  [31:0] filter_load_4;
input  [31:0] filter_load_6;
input  [31:0] filter_load;
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
wire   [0:0] icmp_ln7_fu_723_p2;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln85_reg_354;
wire   [31:0] grp_fu_365_p2;
reg   [31:0] reg_391;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_373_p2;
reg   [31:0] reg_395;
wire   [31:0] grp_fu_369_p2;
reg   [31:0] reg_399;
wire    ap_block_pp0_stage2_11001;
wire   [5:0] select_ln4_fu_426_p3;
reg   [5:0] select_ln4_reg_876;
wire   [0:0] trunc_ln8_fu_438_p1;
reg   [0:0] trunc_ln8_reg_883;
reg   [0:0] trunc_ln8_reg_883_pp0_iter1_reg;
reg   [0:0] trunc_ln8_reg_883_pp0_iter2_reg;
reg   [4:0] lshr_ln_reg_894;
wire   [6:0] add_ln12_3_fu_452_p2;
reg   [6:0] add_ln12_3_reg_901;
wire   [11:0] add_ln_fu_497_p3;
reg   [11:0] add_ln_reg_906;
wire   [11:0] add_ln12_2_fu_557_p2;
reg   [11:0] add_ln12_2_reg_931;
wire   [11:0] add_ln12_6_fu_606_p2;
reg   [11:0] add_ln12_6_reg_956;
reg   [11:0] lshr_ln12_3_reg_962;
wire   [63:0] zext_ln12_1_fu_657_p1;
reg   [63:0] zext_ln12_1_reg_967;
reg   [63:0] zext_ln12_1_reg_967_pp0_iter1_reg;
reg   [63:0] zext_ln12_1_reg_967_pp0_iter2_reg;
wire  signed [31:0] select_ln12_1_fu_662_p3;
reg  signed [31:0] select_ln12_1_reg_983;
wire  signed [31:0] select_ln12_2_fu_669_p3;
reg  signed [31:0] select_ln12_2_reg_988;
wire  signed [31:0] select_ln12_3_fu_676_p3;
reg  signed [31:0] select_ln12_3_reg_993;
wire  signed [31:0] select_ln12_4_fu_683_p3;
reg  signed [31:0] select_ln12_4_reg_998;
wire   [0:0] icmp_ln8_fu_717_p2;
reg   [0:0] icmp_ln8_reg_1023;
reg   [0:0] icmp_ln7_reg_1028;
reg   [0:0] icmp_ln7_reg_1028_pp0_iter1_reg;
reg   [0:0] icmp_ln7_reg_1028_pp0_iter2_reg;
wire  signed [31:0] grp_fu_377_p3;
reg  signed [31:0] select_ln12_reg_1032;
wire  signed [31:0] select_ln12_7_fu_755_p3;
reg  signed [31:0] select_ln12_7_reg_1057;
wire  signed [31:0] grp_fu_384_p3;
reg  signed [31:0] select_ln12_8_reg_1062;
reg  signed [31:0] select_ln12_5_reg_1067;
reg  signed [31:0] select_ln12_6_reg_1072;
reg   [31:0] mul_ln13_3_reg_1077;
reg   [31:0] mul_ln13_reg_1082;
reg   [31:0] mul_ln13_8_reg_1087;
wire   [31:0] add_ln13_5_fu_768_p2;
reg   [31:0] add_ln13_5_reg_1092;
wire   [31:0] add_ln13_fu_774_p2;
reg   [31:0] add_ln13_reg_1097;
wire   [31:0] add_ln13_1_fu_779_p2;
reg   [31:0] add_ln13_1_reg_1102;
wire   [31:0] add_ln13_6_fu_789_p2;
reg   [31:0] add_ln13_6_reg_1107;
wire   [31:0] temp_fu_798_p2;
reg   [31:0] temp_reg_1112;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln85_phi_fu_357_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_2_fu_528_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_3_fu_540_p1;
wire   [63:0] zext_ln12_5_fu_563_p1;
wire   [63:0] zext_ln12_7_fu_588_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_12_fu_690_p1;
wire   [63:0] zext_ln12_13_fu_700_p1;
wire   [63:0] zext_ln12_8_fu_744_p1;
wire   [63:0] zext_ln12_10_fu_750_p1;
reg   [12:0] indvar_flatten2_fu_96;
wire   [12:0] add_ln7_1_fu_706_p2;
reg   [6:0] r3_fu_100;
wire   [6:0] r_fu_464_p3;
reg   [5:0] c4_fu_104;
wire   [5:0] c_fu_712_p2;
reg   [5:0] ap_sig_allocacmp_c4_load;
reg   [6:0] add_ln76_fu_108;
wire   [6:0] add_ln7_fu_638_p2;
reg    orig_0_ce1_local;
reg   [11:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [11:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [11:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [11:0] orig_1_address0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg  signed [31:0] grp_fu_365_p0;
reg  signed [31:0] grp_fu_365_p1;
reg  signed [31:0] grp_fu_369_p0;
reg  signed [31:0] grp_fu_369_p1;
reg  signed [31:0] grp_fu_373_p0;
reg  signed [31:0] grp_fu_373_p1;
reg   [0:0] grp_fu_377_p0;
reg   [0:0] grp_fu_384_p0;
wire   [6:0] zext_ln8_1_fu_434_p1;
wire   [12:0] zext_ln8_2_fu_491_p1;
wire   [12:0] tmp_1_fu_504_p3;
wire   [12:0] add_ln12_fu_512_p2;
wire   [11:0] lshr_ln12_1_fu_518_p4;
wire   [11:0] add_ln12_1_fu_534_p2;
wire   [5:0] zext_ln12_4_cast_fu_546_p3;
wire   [11:0] zext_ln12_4_fu_553_p1;
wire   [11:0] p_udiv1_fu_472_p3;
wire   [12:0] zext_ln12_6_fu_569_p1;
wire   [12:0] tmp_fu_480_p3;
wire   [12:0] add_ln12_4_fu_572_p2;
wire   [11:0] lshr_ln12_2_fu_578_p4;
wire   [5:0] zext_ln12_fu_494_p1;
wire   [6:0] zext_ln12_9_cast_fu_594_p3;
wire   [11:0] zext_ln12_9_fu_602_p1;
wire   [7:0] zext_ln8_fu_488_p1;
wire   [7:0] add_ln12_9_fu_612_p2;
wire   [12:0] zext_ln12_11_fu_618_p1;
wire   [12:0] add_ln12_7_fu_622_p2;
wire   [11:0] add_ln12_8_fu_695_p2;
wire   [11:0] add_ln12_5_fu_739_p2;
wire   [31:0] add_ln13_4_fu_762_p2;
wire   [31:0] add_ln13_3_fu_785_p2;
wire   [31:0] add_ln13_2_fu_794_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_674;
reg    ap_condition_681;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_96 = 13'd0;
#0 r3_fu_100 = 7'd0;
#0 c4_fu_104 = 6'd0;
#0 add_ln76_fu_108 = 7'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_365_p0),.din1(grp_fu_365_p1),.ce(1'b1),.dout(grp_fu_365_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_369_p0),.din1(grp_fu_369_p1),.ce(1'b1),.dout(grp_fu_369_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_373_p0),.din1(grp_fu_373_p1),.ce(1'b1),.dout(grp_fu_373_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln76_fu_108 <= 7'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln76_fu_108 <= add_ln7_fu_638_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c4_fu_104 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c4_fu_104 <= c_fu_712_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_681)) begin
            icmp_ln85_reg_354 <= icmp_ln8_reg_1023;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln85_reg_354 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_96 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten2_fu_96 <= add_ln7_1_fu_706_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r3_fu_100 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r3_fu_100 <= r_fu_464_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln12_2_reg_931 <= add_ln12_2_fu_557_p2;
        add_ln12_6_reg_956 <= add_ln12_6_fu_606_p2;
        add_ln13_1_reg_1102 <= add_ln13_1_fu_779_p2;
        add_ln13_6_reg_1107 <= add_ln13_6_fu_789_p2;
        add_ln13_reg_1097 <= add_ln13_fu_774_p2;
        add_ln_reg_906 <= add_ln_fu_497_p3;
        lshr_ln12_3_reg_962 <= {{add_ln12_7_fu_622_p2[12:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12_3_reg_901 <= add_ln12_3_fu_452_p2;
        add_ln13_5_reg_1092 <= add_ln13_5_fu_768_p2;
        lshr_ln_reg_894 <= {{select_ln4_fu_426_p3[5:1]}};
        select_ln12_7_reg_1057 <= select_ln12_7_fu_755_p3;
        select_ln4_reg_876 <= select_ln4_fu_426_p3;
        trunc_ln8_reg_883 <= trunc_ln8_fu_438_p1;
        trunc_ln8_reg_883_pp0_iter1_reg <= trunc_ln8_reg_883;
        trunc_ln8_reg_883_pp0_iter2_reg <= trunc_ln8_reg_883_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln7_reg_1028 <= icmp_ln7_fu_723_p2;
        icmp_ln7_reg_1028_pp0_iter1_reg <= icmp_ln7_reg_1028;
        icmp_ln7_reg_1028_pp0_iter2_reg <= icmp_ln7_reg_1028_pp0_iter1_reg;
        select_ln12_1_reg_983 <= select_ln12_1_fu_662_p3;
        select_ln12_2_reg_988 <= select_ln12_2_fu_669_p3;
        select_ln12_3_reg_993 <= select_ln12_3_fu_676_p3;
        select_ln12_4_reg_998 <= select_ln12_4_fu_683_p3;
        temp_reg_1112 <= temp_fu_798_p2;
        zext_ln12_1_reg_967[11 : 0] <= zext_ln12_1_fu_657_p1[11 : 0];
        zext_ln12_1_reg_967_pp0_iter1_reg[11 : 0] <= zext_ln12_1_reg_967[11 : 0];
        zext_ln12_1_reg_967_pp0_iter2_reg[11 : 0] <= zext_ln12_1_reg_967_pp0_iter1_reg[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln8_reg_1023 <= icmp_ln8_fu_717_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_3_reg_1077 <= grp_fu_369_p2;
        select_ln12_5_reg_1067 <= grp_fu_377_p3;
        select_ln12_6_reg_1072 <= grp_fu_384_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln13_8_reg_1087 <= grp_fu_373_p2;
        mul_ln13_reg_1082 <= grp_fu_365_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_391 <= grp_fu_365_p2;
        reg_395 <= grp_fu_373_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_399 <= grp_fu_369_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln12_8_reg_1062 <= grp_fu_384_p3;
        select_ln12_reg_1032 <= grp_fu_377_p3;
    end
end
always @ (*) begin
    if (((icmp_ln7_fu_723_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln7_reg_1028_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_674)) begin
            ap_phi_mux_icmp_ln85_phi_fu_357_p4 = icmp_ln8_reg_1023;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln85_phi_fu_357_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln85_phi_fu_357_p4 = icmp_ln8_reg_1023;
        end
    end else begin
        ap_phi_mux_icmp_ln85_phi_fu_357_p4 = icmp_ln8_reg_1023;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c4_load = 6'd0;
    end else begin
        ap_sig_allocacmp_c4_load = c4_fu_104;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_365_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_365_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_365_p0 = filter_load_2;
        end else begin
            grp_fu_365_p0 = 'bx;
        end
    end else begin
        grp_fu_365_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_365_p1 = select_ln12_5_reg_1067;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_365_p1 = select_ln12_7_reg_1057;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_365_p1 = select_ln12_2_reg_988;
        end else begin
            grp_fu_365_p1 = 'bx;
        end
    end else begin
        grp_fu_365_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_369_p0 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_369_p0 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_369_p0 = filter_load_1;
        end else begin
            grp_fu_369_p0 = 'bx;
        end
    end else begin
        grp_fu_369_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_369_p1 = select_ln12_4_reg_998;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_369_p1 = select_ln12_8_reg_1062;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_369_p1 = select_ln12_1_reg_983;
        end else begin
            grp_fu_369_p1 = 'bx;
        end
    end else begin
        grp_fu_369_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_373_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_373_p0 = filter_load;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_373_p0 = filter_load_3;
        end else begin
            grp_fu_373_p0 = 'bx;
        end
    end else begin
        grp_fu_373_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_373_p1 = select_ln12_6_reg_1072;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_373_p1 = select_ln12_reg_1032;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_373_p1 = select_ln12_3_reg_993;
        end else begin
            grp_fu_373_p1 = 'bx;
        end
    end else begin
        grp_fu_373_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_377_p0 = trunc_ln8_reg_883_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_377_p0 = trunc_ln8_reg_883;
        end else begin
            grp_fu_377_p0 = 'bx;
        end
    end else begin
        grp_fu_377_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_384_p0 = trunc_ln8_reg_883_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_384_p0 = trunc_ln8_reg_883;
        end else begin
            grp_fu_384_p0 = 'bx;
        end
    end else begin
        grp_fu_384_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_10_fu_750_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_883 == 1'd0))) begin
        orig_0_address0_local = zext_ln12_13_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_883 == 1'd1))) begin
        orig_0_address0_local = zext_ln12_12_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd1))) begin
        orig_0_address0_local = zext_ln12_7_fu_588_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd0))) begin
        orig_0_address0_local = zext_ln12_5_fu_563_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address1_local = zext_ln12_8_fu_744_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address1_local = zext_ln12_1_fu_657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd0))) begin
        orig_0_address1_local = zext_ln12_3_fu_540_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd1))) begin
        orig_0_address1_local = zext_ln12_2_fu_528_p1;
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_883 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_883 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_10_fu_750_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_883 == 1'd1))) begin
        orig_1_address0_local = zext_ln12_13_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_883 == 1'd0))) begin
        orig_1_address0_local = zext_ln12_12_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd0))) begin
        orig_1_address0_local = zext_ln12_7_fu_588_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd1))) begin
        orig_1_address0_local = zext_ln12_5_fu_563_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address1_local = zext_ln12_8_fu_744_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address1_local = zext_ln12_1_fu_657_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd1))) begin
        orig_1_address1_local = zext_ln12_3_fu_540_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd0))) begin
        orig_1_address1_local = zext_ln12_2_fu_528_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_883 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_883 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_883 == 1'd1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_883_pp0_iter2_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_883_pp0_iter2_reg == 1'd1))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
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
assign add_ln12_1_fu_534_p2 = (add_ln_fu_497_p3 + 12'd1);
assign add_ln12_2_fu_557_p2 = (zext_ln12_4_fu_553_p1 + p_udiv1_fu_472_p3);
assign add_ln12_3_fu_452_p2 = ($signed(zext_ln8_1_fu_434_p1) + $signed(7'd65));
assign add_ln12_4_fu_572_p2 = (zext_ln12_6_fu_569_p1 + tmp_fu_480_p3);
assign add_ln12_5_fu_739_p2 = (add_ln12_2_reg_931 + 12'd1);
assign add_ln12_6_fu_606_p2 = (zext_ln12_9_fu_602_p1 + p_udiv1_fu_472_p3);
assign add_ln12_7_fu_622_p2 = (zext_ln12_11_fu_618_p1 + tmp_fu_480_p3);
assign add_ln12_8_fu_695_p2 = (add_ln12_6_reg_956 + 12'd1);
assign add_ln12_9_fu_612_p2 = ($signed(zext_ln8_fu_488_p1) + $signed(8'd129));
assign add_ln12_fu_512_p2 = (zext_ln8_2_fu_491_p1 + tmp_1_fu_504_p3);
assign add_ln13_1_fu_779_p2 = (reg_391 + reg_399);
assign add_ln13_2_fu_794_p2 = (add_ln13_1_reg_1102 + add_ln13_reg_1097);
assign add_ln13_3_fu_785_p2 = (mul_ln13_8_reg_1087 + mul_ln13_3_reg_1077);
assign add_ln13_4_fu_762_p2 = (reg_391 + reg_399);
assign add_ln13_5_fu_768_p2 = (add_ln13_4_fu_762_p2 + reg_395);
assign add_ln13_6_fu_789_p2 = (add_ln13_5_reg_1092 + add_ln13_3_fu_785_p2);
assign add_ln13_fu_774_p2 = (reg_395 + mul_ln13_reg_1082);
assign add_ln7_1_fu_706_p2 = (indvar_flatten2_fu_96 + 13'd1);
assign add_ln7_fu_638_p2 = (r_fu_464_p3 + 7'd1);
assign add_ln_fu_497_p3 = {{r_fu_464_p3}, {lshr_ln_reg_894}};
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
always @ (*) begin
    ap_condition_674 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln7_reg_1028 == 1'd0));
end
always @ (*) begin
    ap_condition_681 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln7_reg_1028 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign c_fu_712_p2 = (select_ln4_reg_876 + 6'd1);
assign grp_fu_377_p3 = ((grp_fu_377_p0[0:0] == 1'b1) ? orig_1_q1 : orig_0_q1);
assign grp_fu_384_p3 = ((grp_fu_384_p0[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign icmp_ln7_fu_723_p2 = ((indvar_flatten2_fu_96 == 13'd7811) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_717_p2 = ((c_fu_712_p2 == 6'd62) ? 1'b1 : 1'b0);
assign lshr_ln12_1_fu_518_p4 = {{add_ln12_fu_512_p2[12:1]}};
assign lshr_ln12_2_fu_578_p4 = {{add_ln12_4_fu_572_p2[12:1]}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign p_udiv1_fu_472_p3 = {{r_fu_464_p3}, {5'd0}};
assign r_fu_464_p3 = ((icmp_ln85_reg_354[0:0] == 1'b1) ? add_ln76_fu_108 : r3_fu_100);
assign select_ln12_1_fu_662_p3 = ((trunc_ln8_reg_883[0:0] == 1'b1) ? orig_0_q1 : orig_1_q1);
assign select_ln12_2_fu_669_p3 = ((trunc_ln8_reg_883[0:0] == 1'b1) ? orig_1_q1 : orig_0_q1);
assign select_ln12_3_fu_676_p3 = ((trunc_ln8_reg_883[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign select_ln12_4_fu_683_p3 = ((trunc_ln8_reg_883[0:0] == 1'b1) ? orig_0_q0 : orig_1_q0);
assign select_ln12_7_fu_755_p3 = ((trunc_ln8_reg_883[0:0] == 1'b1) ? orig_0_q0 : orig_1_q0);
assign select_ln4_fu_426_p3 = ((ap_phi_mux_icmp_ln85_phi_fu_357_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_c4_load);
assign sol_0_address0 = zext_ln12_1_reg_967_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_1112;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln12_1_reg_967_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_reg_1112;
assign sol_1_we0 = sol_1_we0_local;
assign temp_fu_798_p2 = (add_ln13_6_reg_1107 + add_ln13_2_fu_794_p2);
assign tmp_1_fu_504_p3 = {{r_fu_464_p3}, {6'd1}};
assign tmp_fu_480_p3 = {{r_fu_464_p3}, {6'd0}};
assign trunc_ln8_fu_438_p1 = select_ln4_fu_426_p3[0:0];
assign zext_ln12_10_fu_750_p1 = add_ln12_6_reg_956;
assign zext_ln12_11_fu_618_p1 = add_ln12_9_fu_612_p2;
assign zext_ln12_12_fu_690_p1 = lshr_ln12_3_reg_962;
assign zext_ln12_13_fu_700_p1 = add_ln12_8_fu_695_p2;
assign zext_ln12_1_fu_657_p1 = add_ln_reg_906;
assign zext_ln12_2_fu_528_p1 = lshr_ln12_1_fu_518_p4;
assign zext_ln12_3_fu_540_p1 = add_ln12_1_fu_534_p2;
assign zext_ln12_4_cast_fu_546_p3 = {{1'd1}, {lshr_ln_reg_894}};
assign zext_ln12_4_fu_553_p1 = zext_ln12_4_cast_fu_546_p3;
assign zext_ln12_5_fu_563_p1 = add_ln12_2_fu_557_p2;
assign zext_ln12_6_fu_569_p1 = add_ln12_3_reg_901;
assign zext_ln12_7_fu_588_p1 = lshr_ln12_2_fu_578_p4;
assign zext_ln12_8_fu_744_p1 = add_ln12_5_fu_739_p2;
assign zext_ln12_9_cast_fu_594_p3 = {{1'd1}, {zext_ln12_fu_494_p1}};
assign zext_ln12_9_fu_602_p1 = zext_ln12_9_cast_fu_594_p3;
assign zext_ln12_fu_494_p1 = lshr_ln_reg_894;
assign zext_ln8_1_fu_434_p1 = select_ln4_fu_426_p3;
assign zext_ln8_2_fu_491_p1 = select_ln4_reg_876;
assign zext_ln8_fu_488_p1 = select_ln4_reg_876;
always @ (posedge ap_clk) begin
    zext_ln12_1_reg_967[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_967_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_967_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 