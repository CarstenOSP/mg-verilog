module stencil_stencil_Pipeline_stencil_label1_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7); 
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
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire   [0:0] icmp_ln7_fu_697_p2;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln86_reg_352;
wire   [31:0] grp_fu_363_p2;
reg   [31:0] reg_389;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_371_p2;
reg   [31:0] reg_393;
reg   [6:0] r3_load_reg_862;
wire   [5:0] select_ln4_fu_423_p3;
reg   [5:0] select_ln4_reg_867;
wire   [6:0] indvars_iv_next30_mid1_fu_431_p2;
reg   [6:0] indvars_iv_next30_mid1_reg_874;
wire   [0:0] trunc_ln8_fu_437_p1;
reg   [0:0] trunc_ln8_reg_879;
reg   [0:0] trunc_ln8_reg_879_pp0_iter1_reg;
reg   [0:0] trunc_ln8_reg_879_pp0_iter2_reg;
reg   [4:0] lshr_ln_reg_890;
wire   [6:0] r_fu_461_p3;
reg   [6:0] r_reg_897;
wire   [11:0] add_ln_fu_485_p3;
reg   [11:0] add_ln_reg_904;
wire   [11:0] add_ln5_fu_534_p3;
reg   [11:0] add_ln5_reg_929;
wire   [11:0] add_ln5_1_fu_589_p2;
reg   [11:0] add_ln5_1_reg_954;
wire   [7:0] add_ln12_4_fu_595_p2;
reg   [7:0] add_ln12_4_reg_960;
wire   [63:0] zext_ln12_1_fu_611_p1;
reg   [63:0] zext_ln12_1_reg_965;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] zext_ln12_1_reg_965_pp0_iter1_reg;
reg   [63:0] zext_ln12_1_reg_965_pp0_iter2_reg;
wire  signed [31:0] select_ln12_1_fu_616_p3;
reg  signed [31:0] select_ln12_1_reg_981;
wire  signed [31:0] select_ln12_2_fu_623_p3;
reg  signed [31:0] select_ln12_2_reg_986;
wire  signed [31:0] select_ln12_3_fu_630_p3;
reg  signed [31:0] select_ln12_3_reg_991;
wire  signed [31:0] select_ln12_4_fu_637_p3;
reg  signed [31:0] select_ln12_4_reg_996;
wire   [0:0] icmp_ln8_fu_691_p2;
reg   [0:0] icmp_ln8_reg_1021;
reg   [0:0] icmp_ln7_reg_1026;
reg   [0:0] icmp_ln7_reg_1026_pp0_iter1_reg;
reg   [0:0] icmp_ln7_reg_1026_pp0_iter2_reg;
wire  signed [31:0] grp_fu_375_p3;
reg  signed [31:0] select_ln12_reg_1030;
wire  signed [31:0] select_ln12_7_fu_733_p3;
reg  signed [31:0] select_ln12_7_reg_1055;
wire  signed [31:0] grp_fu_382_p3;
reg  signed [31:0] select_ln12_8_reg_1060;
reg  signed [31:0] select_ln12_5_reg_1065;
reg  signed [31:0] select_ln12_6_reg_1070;
wire   [31:0] grp_fu_367_p2;
reg   [31:0] mul_ln13_2_reg_1075;
reg   [31:0] mul_ln13_3_reg_1080;
reg   [31:0] mul_ln13_4_reg_1085;
reg   [31:0] mul_ln13_6_reg_1090;
reg   [31:0] mul_ln13_5_reg_1095;
wire   [31:0] add_ln13_5_fu_755_p2;
reg   [31:0] add_ln13_5_reg_1100;
wire   [31:0] add_ln13_fu_761_p2;
reg   [31:0] add_ln13_reg_1105;
wire   [31:0] add_ln13_1_fu_766_p2;
reg   [31:0] add_ln13_1_reg_1110;
wire   [31:0] add_ln13_6_fu_775_p2;
reg   [31:0] add_ln13_6_reg_1115;
wire   [31:0] temp_fu_784_p2;
reg   [31:0] temp_reg_1120;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln86_phi_fu_355_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_2_fu_516_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_3_fu_528_p1;
wire   [63:0] zext_ln12_4_fu_541_p1;
wire   [63:0] zext_ln12_5_fu_571_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_9_fu_663_p1;
wire   [63:0] zext_ln12_10_fu_674_p1;
wire   [63:0] zext_ln12_6_fu_722_p1;
wire   [63:0] zext_ln12_7_fu_728_p1;
reg   [12:0] indvar_flatten2_fu_94;
wire   [12:0] add_ln7_fu_680_p2;
reg   [6:0] r3_fu_98;
reg   [6:0] ap_sig_allocacmp_r3_load;
reg   [5:0] c4_fu_102;
wire   [5:0] c_fu_686_p2;
reg   [5:0] ap_sig_allocacmp_c4_load;
reg   [6:0] indvars_iv_next305_fu_106;
wire   [6:0] indvars_iv_next30_fu_740_p2;
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
reg  signed [31:0] grp_fu_363_p0;
reg  signed [31:0] grp_fu_363_p1;
reg  signed [31:0] grp_fu_367_p0;
reg  signed [31:0] grp_fu_367_p1;
reg  signed [31:0] grp_fu_371_p0;
reg  signed [31:0] grp_fu_371_p1;
reg   [0:0] grp_fu_375_p0;
reg   [0:0] grp_fu_382_p0;
wire   [12:0] zext_ln8_1_fu_479_p1;
wire   [12:0] tmp_2_fu_492_p3;
wire   [12:0] add_ln12_fu_500_p2;
wire   [11:0] lshr_ln12_1_fu_506_p4;
wire   [11:0] add_ln12_1_fu_522_p2;
wire   [6:0] select_ln4_1_fu_454_p3;
wire   [12:0] tmp_3_fu_547_p3;
wire   [12:0] add_ln12_2_fu_555_p2;
wire   [11:0] lshr_ln12_2_fu_561_p4;
wire   [5:0] zext_ln12_fu_482_p1;
wire   [6:0] zext_ln5_cast_fu_577_p3;
wire   [11:0] zext_ln5_fu_585_p1;
wire   [11:0] tmp_1_fu_468_p3;
wire   [7:0] zext_ln8_fu_476_p1;
wire   [12:0] zext_ln12_8_fu_644_p1;
wire   [12:0] tmp_fu_604_p3;
wire   [12:0] add_ln12_5_fu_647_p2;
wire   [11:0] lshr_ln12_3_fu_653_p4;
wire   [11:0] add_ln12_6_fu_669_p2;
wire   [11:0] add_ln12_3_fu_717_p2;
wire   [31:0] add_ln13_4_fu_750_p2;
wire   [31:0] add_ln13_3_fu_771_p2;
wire   [31:0] add_ln13_2_fu_780_p2;
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
reg    ap_condition_670;
reg    ap_condition_677;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_94 = 13'd0;
#0 r3_fu_98 = 7'd0;
#0 c4_fu_102 = 6'd0;
#0 indvars_iv_next305_fu_106 = 7'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_363_p0),.din1(grp_fu_363_p1),.ce(1'b1),.dout(grp_fu_363_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_367_p0),.din1(grp_fu_367_p1),.ce(1'b1),.dout(grp_fu_367_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_371_p0),.din1(grp_fu_371_p1),.ce(1'b1),.dout(grp_fu_371_p2));
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
        c4_fu_102 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c4_fu_102 <= c_fu_686_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_677)) begin
            icmp_ln86_reg_352 <= icmp_ln8_reg_1021;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln86_reg_352 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_94 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten2_fu_94 <= add_ln7_fu_680_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvars_iv_next305_fu_106 <= 7'd1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvars_iv_next305_fu_106 <= indvars_iv_next30_fu_740_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r3_fu_98 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        r3_fu_98 <= r_reg_897;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln12_4_reg_960 <= add_ln12_4_fu_595_p2;
        add_ln13_1_reg_1110 <= add_ln13_1_fu_766_p2;
        add_ln13_6_reg_1115 <= add_ln13_6_fu_775_p2;
        add_ln13_reg_1105 <= add_ln13_fu_761_p2;
        add_ln5_1_reg_954 <= add_ln5_1_fu_589_p2;
        add_ln5_reg_929 <= add_ln5_fu_534_p3;
        add_ln_reg_904 <= add_ln_fu_485_p3;
        r_reg_897 <= r_fu_461_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_5_reg_1100 <= add_ln13_5_fu_755_p2;
        indvars_iv_next30_mid1_reg_874 <= indvars_iv_next30_mid1_fu_431_p2;
        lshr_ln_reg_890 <= {{select_ln4_fu_423_p3[5:1]}};
        r3_load_reg_862 <= ap_sig_allocacmp_r3_load;
        select_ln12_7_reg_1055 <= select_ln12_7_fu_733_p3;
        select_ln4_reg_867 <= select_ln4_fu_423_p3;
        trunc_ln8_reg_879 <= trunc_ln8_fu_437_p1;
        trunc_ln8_reg_879_pp0_iter1_reg <= trunc_ln8_reg_879;
        trunc_ln8_reg_879_pp0_iter2_reg <= trunc_ln8_reg_879_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln7_reg_1026 <= icmp_ln7_fu_697_p2;
        icmp_ln7_reg_1026_pp0_iter1_reg <= icmp_ln7_reg_1026;
        icmp_ln7_reg_1026_pp0_iter2_reg <= icmp_ln7_reg_1026_pp0_iter1_reg;
        select_ln12_1_reg_981 <= select_ln12_1_fu_616_p3;
        select_ln12_2_reg_986 <= select_ln12_2_fu_623_p3;
        select_ln12_3_reg_991 <= select_ln12_3_fu_630_p3;
        select_ln12_4_reg_996 <= select_ln12_4_fu_637_p3;
        temp_reg_1120 <= temp_fu_784_p2;
        zext_ln12_1_reg_965[11 : 0] <= zext_ln12_1_fu_611_p1[11 : 0];
        zext_ln12_1_reg_965_pp0_iter1_reg[11 : 0] <= zext_ln12_1_reg_965[11 : 0];
        zext_ln12_1_reg_965_pp0_iter2_reg[11 : 0] <= zext_ln12_1_reg_965_pp0_iter1_reg[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln8_reg_1021 <= icmp_ln8_fu_691_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_2_reg_1075 <= grp_fu_367_p2;
        select_ln12_5_reg_1065 <= grp_fu_375_p3;
        select_ln12_6_reg_1070 <= grp_fu_382_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln13_3_reg_1080 <= grp_fu_363_p2;
        mul_ln13_4_reg_1085 <= grp_fu_367_p2;
        mul_ln13_6_reg_1090 <= grp_fu_371_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_5_reg_1095 <= grp_fu_367_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_389 <= grp_fu_363_p2;
        reg_393 <= grp_fu_371_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln12_8_reg_1060 <= grp_fu_382_p3;
        select_ln12_reg_1030 <= grp_fu_375_p3;
    end
end
always @ (*) begin
    if (((icmp_ln7_fu_697_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln7_reg_1026_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_670)) begin
            ap_phi_mux_icmp_ln86_phi_fu_355_p4 = icmp_ln8_reg_1021;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln86_phi_fu_355_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln86_phi_fu_355_p4 = icmp_ln8_reg_1021;
        end
    end else begin
        ap_phi_mux_icmp_ln86_phi_fu_355_p4 = icmp_ln8_reg_1021;
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
        ap_sig_allocacmp_c4_load = c4_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_r3_load = 7'd0;
    end else begin
        ap_sig_allocacmp_r3_load = r3_fu_98;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_363_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_363_p0 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_363_p0 = filter_load_2;
        end else begin
            grp_fu_363_p0 = 'bx;
        end
    end else begin
        grp_fu_363_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_363_p1 = select_ln12_5_reg_1065;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_363_p1 = select_ln12_8_reg_1060;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_363_p1 = select_ln12_2_reg_986;
        end else begin
            grp_fu_363_p1 = 'bx;
        end
    end else begin
        grp_fu_363_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_367_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_367_p0 = filter_load;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_367_p0 = filter_load_1;
        end else begin
            grp_fu_367_p0 = 'bx;
        end
    end else begin
        grp_fu_367_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_367_p1 = select_ln12_6_reg_1070;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_367_p1 = select_ln12_reg_1030;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_367_p1 = select_ln12_1_reg_981;
        end else begin
            grp_fu_367_p1 = 'bx;
        end
    end else begin
        grp_fu_367_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_371_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_371_p0 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_371_p0 = filter_load_3;
        end else begin
            grp_fu_371_p0 = 'bx;
        end
    end else begin
        grp_fu_371_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_371_p1 = select_ln12_7_reg_1055;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_371_p1 = select_ln12_4_reg_996;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_371_p1 = select_ln12_3_reg_991;
        end else begin
            grp_fu_371_p1 = 'bx;
        end
    end else begin
        grp_fu_371_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_375_p0 = trunc_ln8_reg_879_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_375_p0 = trunc_ln8_reg_879;
        end else begin
            grp_fu_375_p0 = 'bx;
        end
    end else begin
        grp_fu_375_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_382_p0 = trunc_ln8_reg_879_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_382_p0 = trunc_ln8_reg_879;
        end else begin
            grp_fu_382_p0 = 'bx;
        end
    end else begin
        grp_fu_382_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_7_fu_728_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_879 == 1'd0))) begin
        orig_0_address0_local = zext_ln12_10_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_879 == 1'd1))) begin
        orig_0_address0_local = zext_ln12_9_fu_663_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd1))) begin
        orig_0_address0_local = zext_ln12_5_fu_571_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd0))) begin
        orig_0_address0_local = zext_ln12_4_fu_541_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address1_local = zext_ln12_6_fu_722_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address1_local = zext_ln12_1_fu_611_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd0))) begin
        orig_0_address1_local = zext_ln12_3_fu_528_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd1))) begin
        orig_0_address1_local = zext_ln12_2_fu_516_p1;
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_879 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_879 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_7_fu_728_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_879 == 1'd1))) begin
        orig_1_address0_local = zext_ln12_10_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_879 == 1'd0))) begin
        orig_1_address0_local = zext_ln12_9_fu_663_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd0))) begin
        orig_1_address0_local = zext_ln12_5_fu_571_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd1))) begin
        orig_1_address0_local = zext_ln12_4_fu_541_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address1_local = zext_ln12_6_fu_722_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address1_local = zext_ln12_1_fu_611_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd1))) begin
        orig_1_address1_local = zext_ln12_3_fu_528_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd0))) begin
        orig_1_address1_local = zext_ln12_2_fu_516_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_879 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln8_reg_879 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln8_reg_879 == 1'd1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_879_pp0_iter2_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln8_reg_879_pp0_iter2_reg == 1'd1))) begin
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
assign add_ln12_1_fu_522_p2 = (add_ln_fu_485_p3 + 12'd1);
assign add_ln12_2_fu_555_p2 = (zext_ln8_1_fu_479_p1 + tmp_3_fu_547_p3);
assign add_ln12_3_fu_717_p2 = (add_ln5_reg_929 + 12'd1);
assign add_ln12_4_fu_595_p2 = ($signed(zext_ln8_fu_476_p1) + $signed(8'd129));
assign add_ln12_5_fu_647_p2 = (zext_ln12_8_fu_644_p1 + tmp_fu_604_p3);
assign add_ln12_6_fu_669_p2 = (add_ln5_1_reg_954 + 12'd1);
assign add_ln12_fu_500_p2 = (zext_ln8_1_fu_479_p1 + tmp_2_fu_492_p3);
assign add_ln13_1_fu_766_p2 = (reg_389 + mul_ln13_6_reg_1090);
assign add_ln13_2_fu_780_p2 = (add_ln13_1_reg_1110 + add_ln13_reg_1105);
assign add_ln13_3_fu_771_p2 = (mul_ln13_4_reg_1085 + mul_ln13_2_reg_1075);
assign add_ln13_4_fu_750_p2 = (reg_389 + mul_ln13_3_reg_1080);
assign add_ln13_5_fu_755_p2 = (add_ln13_4_fu_750_p2 + reg_393);
assign add_ln13_6_fu_775_p2 = (add_ln13_5_reg_1100 + add_ln13_3_fu_771_p2);
assign add_ln13_fu_761_p2 = (mul_ln13_5_reg_1095 + reg_393);
assign add_ln5_1_fu_589_p2 = (zext_ln5_fu_585_p1 + tmp_1_fu_468_p3);
assign add_ln5_fu_534_p3 = {{select_ln4_1_fu_454_p3}, {lshr_ln_reg_890}};
assign add_ln7_fu_680_p2 = (indvar_flatten2_fu_94 + 13'd1);
assign add_ln_fu_485_p3 = {{r_fu_461_p3}, {lshr_ln_reg_890}};
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
    ap_condition_670 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln7_reg_1026 == 1'd0));
end
always @ (*) begin
    ap_condition_677 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln7_reg_1026 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign c_fu_686_p2 = (select_ln4_reg_867 + 6'd1);
assign grp_fu_375_p3 = ((grp_fu_375_p0[0:0] == 1'b1) ? orig_1_q1 : orig_0_q1);
assign grp_fu_382_p3 = ((grp_fu_382_p0[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign icmp_ln7_fu_697_p2 = ((indvar_flatten2_fu_94 == 13'd7811) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_691_p2 = ((c_fu_686_p2 == 6'd62) ? 1'b1 : 1'b0);
assign indvars_iv_next30_fu_740_p2 = (r_reg_897 + 7'd1);
assign indvars_iv_next30_mid1_fu_431_p2 = (ap_sig_allocacmp_r3_load + 7'd2);
assign lshr_ln12_1_fu_506_p4 = {{add_ln12_fu_500_p2[12:1]}};
assign lshr_ln12_2_fu_561_p4 = {{add_ln12_2_fu_555_p2[12:1]}};
assign lshr_ln12_3_fu_653_p4 = {{add_ln12_5_fu_647_p2[12:1]}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign r_fu_461_p3 = ((icmp_ln86_reg_352[0:0] == 1'b1) ? indvars_iv_next305_fu_106 : r3_load_reg_862);
assign select_ln12_1_fu_616_p3 = ((trunc_ln8_reg_879[0:0] == 1'b1) ? orig_0_q1 : orig_1_q1);
assign select_ln12_2_fu_623_p3 = ((trunc_ln8_reg_879[0:0] == 1'b1) ? orig_1_q1 : orig_0_q1);
assign select_ln12_3_fu_630_p3 = ((trunc_ln8_reg_879[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign select_ln12_4_fu_637_p3 = ((trunc_ln8_reg_879[0:0] == 1'b1) ? orig_0_q0 : orig_1_q0);
assign select_ln12_7_fu_733_p3 = ((trunc_ln8_reg_879[0:0] == 1'b1) ? orig_0_q0 : orig_1_q0);
assign select_ln4_1_fu_454_p3 = ((icmp_ln86_reg_352[0:0] == 1'b1) ? indvars_iv_next30_mid1_reg_874 : indvars_iv_next305_fu_106);
assign select_ln4_fu_423_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_355_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_c4_load);
assign sol_0_address0 = zext_ln12_1_reg_965_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_1120;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln12_1_reg_965_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_reg_1120;
assign sol_1_we0 = sol_1_we0_local;
assign temp_fu_784_p2 = (add_ln13_6_reg_1115 + add_ln13_2_fu_780_p2);
assign tmp_1_fu_468_p3 = {{r_fu_461_p3}, {5'd0}};
assign tmp_2_fu_492_p3 = {{r_fu_461_p3}, {6'd1}};
assign tmp_3_fu_547_p3 = {{select_ln4_1_fu_454_p3}, {6'd1}};
assign tmp_fu_604_p3 = {{r_reg_897}, {6'd0}};
assign trunc_ln8_fu_437_p1 = select_ln4_fu_423_p3[0:0];
assign zext_ln12_10_fu_674_p1 = add_ln12_6_fu_669_p2;
assign zext_ln12_1_fu_611_p1 = add_ln_reg_904;
assign zext_ln12_2_fu_516_p1 = lshr_ln12_1_fu_506_p4;
assign zext_ln12_3_fu_528_p1 = add_ln12_1_fu_522_p2;
assign zext_ln12_4_fu_541_p1 = add_ln5_fu_534_p3;
assign zext_ln12_5_fu_571_p1 = lshr_ln12_2_fu_561_p4;
assign zext_ln12_6_fu_722_p1 = add_ln12_3_fu_717_p2;
assign zext_ln12_7_fu_728_p1 = add_ln5_1_reg_954;
assign zext_ln12_8_fu_644_p1 = add_ln12_4_reg_960;
assign zext_ln12_9_fu_663_p1 = lshr_ln12_3_fu_653_p4;
assign zext_ln12_fu_482_p1 = lshr_ln_reg_890;
assign zext_ln5_cast_fu_577_p3 = {{1'd1}, {zext_ln12_fu_482_p1}};
assign zext_ln5_fu_585_p1 = zext_ln5_cast_fu_577_p3;
assign zext_ln8_1_fu_479_p1 = select_ln4_reg_867;
assign zext_ln8_fu_476_p1 = select_ln4_reg_867;
always @ (posedge ap_clk) begin
    zext_ln12_1_reg_965[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_965_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_965_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 