module stencil_stencil_Pipeline_stencil_label1_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,orig_address0,orig_ce0,orig_q0,orig_address1,orig_ce1,orig_q1,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7,sol_address0,sol_ce0,sol_we0,sol_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] orig_address0;
output   orig_ce0;
input  [31:0] orig_q0;
output  [12:0] orig_address1;
output   orig_ce1;
input  [31:0] orig_q1;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
output  [12:0] sol_address0;
output   sol_ce0;
output   sol_we0;
output  [31:0] sol_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
wire   [0:0] icmp_ln7_fu_653_p2;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg  signed [31:0] reg_310;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage5_11001;
reg  signed [31:0] reg_318;
reg  signed [31:0] reg_325;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage0_11001;
reg  signed [31:0] reg_331;
wire   [31:0] grp_fu_298_p2;
reg   [31:0] reg_337;
wire   [31:0] grp_fu_302_p2;
reg   [31:0] reg_341;
wire   [31:0] grp_fu_306_p2;
reg   [31:0] reg_345;
wire   [5:0] select_ln4_fu_384_p3;
reg   [5:0] select_ln4_reg_827;
wire   [6:0] select_ln4_1_fu_398_p3;
reg   [6:0] select_ln4_1_reg_834;
wire   [6:0] r_fu_406_p3;
reg   [6:0] r_reg_841;
wire   [12:0] tmp_fu_414_p3;
reg   [12:0] tmp_reg_847;
wire   [63:0] zext_ln12_fu_422_p1;
reg   [63:0] zext_ln12_reg_852;
reg   [63:0] zext_ln12_reg_852_pp0_iter1_reg;
wire   [4:0] tmp_4_fu_427_p4;
reg   [4:0] tmp_4_reg_862;
wire   [12:0] or_ln_fu_437_p4;
reg   [12:0] or_ln_reg_868;
wire   [63:0] zext_ln12_1_fu_447_p1;
reg   [63:0] zext_ln12_1_reg_873;
reg   [63:0] zext_ln12_1_reg_873_pp0_iter1_reg;
reg   [63:0] zext_ln12_1_reg_873_pp0_iter2_reg;
wire   [12:0] tmp_3_fu_457_p3;
reg   [12:0] tmp_3_reg_883;
wire   [12:0] empty_fu_479_p2;
reg   [12:0] empty_reg_888;
wire   [5:0] or_ln8_fu_523_p3;
reg   [5:0] or_ln8_reg_908;
wire   [12:0] add_ln12_5_fu_554_p2;
reg   [12:0] add_ln12_5_reg_918;
reg   [31:0] mul_ln13_13_reg_933;
wire   [12:0] tmp_1_fu_584_p3;
reg   [12:0] tmp_1_reg_938;
wire   [31:0] grp_fu_349_p2;
reg   [31:0] add_ln13_reg_953;
reg  signed [31:0] orig_load_4_reg_968;
reg   [31:0] mul_ln13_3_reg_974;
reg   [31:0] mul_ln13_9_reg_979;
reg   [31:0] mul_ln13_17_reg_984;
wire   [0:0] icmp_ln8_fu_647_p2;
reg   [0:0] icmp_ln8_reg_989;
reg   [0:0] icmp_ln7_reg_994;
reg   [0:0] icmp_ln7_reg_994_pp0_iter1_reg;
wire   [31:0] add_ln13_5_fu_679_p2;
reg   [31:0] add_ln13_5_reg_998;
reg   [31:0] mul_ln13_15_reg_1003;
wire   [31:0] add_ln13_13_fu_691_p2;
reg   [31:0] add_ln13_13_reg_1008;
wire   [31:0] add_ln13_6_fu_702_p2;
reg   [31:0] add_ln13_6_reg_1013;
wire   [31:0] add_ln13_14_fu_712_p2;
reg   [31:0] add_ln13_14_reg_1018;
wire   [31:0] temp_fu_722_p2;
reg   [31:0] temp_reg_1023;
wire   [31:0] add_ln13_8_fu_727_p2;
reg   [31:0] add_ln13_8_reg_1028;
reg   [31:0] mul_ln13_16_reg_1033;
wire   [31:0] temp_1_fu_741_p2;
reg   [31:0] temp_1_reg_1038;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] ap_phi_mux_icmp_ln86_phi_fu_291_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_6_fu_485_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_7_fu_508_p1;
wire   [63:0] zext_ln12_8_fu_518_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_9_fu_539_p1;
wire   [63:0] zext_ln12_10_fu_575_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln12_12_fu_580_p1;
wire   [63:0] zext_ln12_4_fu_598_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln12_5_fu_609_p1;
wire   [63:0] zext_ln12_2_fu_622_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln12_3_fu_627_p1;
reg   [11:0] indvar_flatten2_fu_92;
wire   [11:0] add_ln7_fu_636_p2;
reg   [6:0] r3_fu_96;
reg   [6:0] ap_sig_allocacmp_r3_load;
reg   [5:0] c4_fu_100;
wire   [5:0] c_fu_631_p2;
reg   [5:0] ap_sig_allocacmp_c4_load;
reg   [6:0] indvars_iv_next805_fu_104;
wire   [6:0] indvars_iv_next80_fu_642_p2;
reg   [6:0] ap_sig_allocacmp_indvars_iv_next805_load;
reg    orig_ce1_local;
reg   [12:0] orig_address1_local;
reg    orig_ce0_local;
reg   [12:0] orig_address0_local;
reg    sol_we0_local;
reg   [31:0] sol_d0_local;
reg    sol_ce0_local;
reg   [12:0] sol_address0_local;
reg  signed [31:0] grp_fu_298_p0;
reg  signed [31:0] grp_fu_298_p1;
reg  signed [31:0] grp_fu_302_p0;
reg  signed [31:0] grp_fu_302_p1;
reg  signed [31:0] grp_fu_306_p0;
reg  signed [31:0] grp_fu_306_p1;
wire   [6:0] indvars_iv_next80_mid1_fu_392_p2;
wire   [6:0] select_ln4_cast_fu_464_p1;
wire   [7:0] tmp_cast_cast_fu_467_p3;
wire   [12:0] tmp_cast_cast_cast_fu_475_p1;
wire   [11:0] tmp_7_fu_490_p4;
wire   [12:0] or_ln12_2_fu_500_p3;
wire   [12:0] add_ln12_2_fu_513_p2;
wire   [12:0] add_ln12_3_fu_534_p2;
wire   [7:0] or_ln8_cast18_fu_530_p1;
wire   [7:0] add_ln12_6_fu_544_p2;
wire   [12:0] zext_ln12_11_fu_550_p1;
wire   [12:0] or_ln8_cast_fu_559_p1;
wire   [12:0] tmp_9_fu_562_p3;
wire   [12:0] add_ln12_4_fu_569_p2;
wire   [12:0] or_ln12_1_fu_590_p4;
wire   [12:0] add_ln12_1_fu_603_p2;
wire   [12:0] add_ln12_fu_617_p2;
wire   [31:0] add_ln13_4_fu_674_p2;
wire   [31:0] add_ln13_12_fu_685_p2;
wire   [31:0] add_ln13_3_fu_696_p2;
wire   [31:0] add_ln13_11_fu_707_p2;
wire   [31:0] add_ln13_2_fu_717_p2;
wire   [31:0] add_ln13_9_fu_732_p2;
wire   [31:0] add_ln13_10_fu_736_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage2;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_700;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_92 = 12'd0;
#0 r3_fu_96 = 7'd0;
#0 c4_fu_100 = 6'd0;
#0 indvars_iv_next805_fu_104 = 7'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_298_p0),.din1(grp_fu_298_p1),.ce(1'b1),.dout(grp_fu_298_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_302_p0),.din1(grp_fu_302_p1),.ce(1'b1),.dout(grp_fu_302_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_306_p0),.din1(grp_fu_306_p1),.ce(1'b1),.dout(grp_fu_306_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c4_fu_100 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        c4_fu_100 <= c_fu_631_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_92 <= 12'd0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        indvar_flatten2_fu_92 <= add_ln7_fu_636_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next805_fu_104 <= 7'd1;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        indvars_iv_next805_fu_104 <= indvars_iv_next80_fu_642_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            r3_fu_96 <= r_fu_406_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            r3_fu_96 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        reg_310 <= orig_q0;
    end else if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_310 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln12_5_reg_918[12 : 1] <= add_ln12_5_fu_554_p2[12 : 1];
        add_ln13_14_reg_1018 <= add_ln13_14_fu_712_p2;
        add_ln13_6_reg_1013 <= add_ln13_6_fu_702_p2;
        or_ln8_reg_908[5 : 1] <= or_ln8_fu_523_p3[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_13_reg_1008 <= add_ln13_13_fu_691_p2;
        empty_reg_888 <= empty_fu_479_p2;
        temp_1_reg_1038 <= temp_1_fu_741_p2;
        tmp_3_reg_883[12 : 6] <= tmp_3_fu_457_p3[12 : 6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_5_reg_998 <= add_ln13_5_fu_679_p2;
        or_ln_reg_868[12 : 1] <= or_ln_fu_437_p4[12 : 1];
        r_reg_841 <= r_fu_406_p3;
        select_ln4_1_reg_834 <= select_ln4_1_fu_398_p3;
        select_ln4_reg_827 <= select_ln4_fu_384_p3;
        tmp_4_reg_862 <= {{select_ln4_fu_384_p3[5:1]}};
        tmp_reg_847 <= tmp_fu_414_p3;
        zext_ln12_1_reg_873[12 : 1] <= zext_ln12_1_fu_447_p1[12 : 1];
        zext_ln12_1_reg_873_pp0_iter1_reg[12 : 1] <= zext_ln12_1_reg_873[12 : 1];
        zext_ln12_1_reg_873_pp0_iter2_reg[12 : 1] <= zext_ln12_1_reg_873_pp0_iter1_reg[12 : 1];
        zext_ln12_reg_852[12 : 0] <= zext_ln12_fu_422_p1[12 : 0];
        zext_ln12_reg_852_pp0_iter1_reg[12 : 0] <= zext_ln12_reg_852[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln13_8_reg_1028 <= add_ln13_8_fu_727_p2;
        temp_reg_1023 <= temp_fu_722_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln13_reg_953 <= grp_fu_349_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln7_reg_994 <= icmp_ln7_fu_653_p2;
        icmp_ln7_reg_994_pp0_iter1_reg <= icmp_ln7_reg_994;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln8_reg_989 <= icmp_ln8_fu_647_p2;
        mul_ln13_17_reg_984 <= grp_fu_306_p2;
        mul_ln13_3_reg_974 <= grp_fu_298_p2;
        mul_ln13_9_reg_979 <= grp_fu_302_p2;
        orig_load_4_reg_968 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln13_13_reg_933 <= grp_fu_306_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_15_reg_1003 <= grp_fu_306_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_16_reg_1033 <= grp_fu_306_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_318 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_325 <= orig_q1;
        reg_331 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_337 <= grp_fu_298_p2;
        reg_341 <= grp_fu_302_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_345 <= grp_fu_306_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_1_reg_938 <= tmp_1_fu_584_p3;
    end
end
always @ (*) begin
    if (((icmp_ln7_fu_653_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_reg_994_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_700)) begin
            ap_phi_mux_icmp_ln86_phi_fu_291_p4 = icmp_ln8_reg_989;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln86_phi_fu_291_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln86_phi_fu_291_p4 = icmp_ln8_reg_989;
        end
    end else begin
        ap_phi_mux_icmp_ln86_phi_fu_291_p4 = icmp_ln8_reg_989;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c4_load = 6'd0;
    end else begin
        ap_sig_allocacmp_c4_load = c4_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvars_iv_next805_load = 7'd1;
    end else begin
        ap_sig_allocacmp_indvars_iv_next805_load = indvars_iv_next805_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_r3_load = 7'd0;
    end else begin
        ap_sig_allocacmp_r3_load = r3_fu_96;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_298_p0 = reg_310;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_298_p0 = reg_325;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_298_p0 = reg_318;
    end else begin
        grp_fu_298_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_298_p1 = filter_load_2;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_298_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_298_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_298_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_298_p1 = filter_load_1;
    end else begin
        grp_fu_298_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_302_p0 = orig_load_4_reg_968;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_302_p0 = reg_318;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_302_p0 = reg_331;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_302_p0 = reg_310;
    end else begin
        grp_fu_302_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_302_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_302_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_302_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_302_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_302_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_302_p1 = filter_load;
    end else begin
        grp_fu_302_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_306_p0 = orig_load_4_reg_968;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_306_p0 = reg_325;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_306_p0 = reg_310;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_306_p0 = reg_331;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_306_p0 = reg_318;
    end else begin
        grp_fu_306_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_306_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_306_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_306_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_306_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_306_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_306_p1 = filter_load;
    end else begin
        grp_fu_306_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_address0_local = zext_ln12_3_fu_627_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_address0_local = zext_ln12_5_fu_609_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_address0_local = zext_ln12_12_fu_580_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address0_local = zext_ln12_9_fu_539_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address0_local = zext_ln12_7_fu_508_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_address0_local = zext_ln12_1_fu_447_p1;
        end else begin
            orig_address0_local = 'bx;
        end
    end else begin
        orig_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_address1_local = zext_ln12_2_fu_622_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_address1_local = zext_ln12_4_fu_598_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_address1_local = zext_ln12_10_fu_575_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address1_local = zext_ln12_8_fu_518_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address1_local = zext_ln12_6_fu_485_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_address1_local = zext_ln12_fu_422_p1;
        end else begin
            orig_address1_local = 'bx;
        end
    end else begin
        orig_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        orig_ce0_local = 1'b1;
    end else begin
        orig_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        orig_ce1_local = 1'b1;
    end else begin
        orig_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_address0_local = zext_ln12_1_reg_873_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_address0_local = zext_ln12_reg_852_pp0_iter1_reg;
    end else begin
        sol_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_ce0_local = 1'b1;
    end else begin
        sol_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_d0_local = temp_1_reg_1038;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_d0_local = temp_reg_1023;
    end else begin
        sol_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_we0_local = 1'b1;
    end else begin
        sol_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln12_1_fu_603_p2 = (tmp_1_fu_584_p3 + 13'd2);
assign add_ln12_2_fu_513_p2 = (empty_reg_888 + 13'd2);
assign add_ln12_3_fu_534_p2 = (or_ln_reg_868 + 13'd2);
assign add_ln12_4_fu_569_p2 = (or_ln8_cast_fu_559_p1 + tmp_9_fu_562_p3);
assign add_ln12_5_fu_554_p2 = (zext_ln12_11_fu_550_p1 + tmp_3_reg_883);
assign add_ln12_6_fu_544_p2 = ($signed(or_ln8_cast18_fu_530_p1) + $signed(8'd130));
assign add_ln12_fu_617_p2 = (tmp_reg_847 + 13'd2);
assign add_ln13_10_fu_736_p2 = (add_ln13_9_fu_732_p2 + add_ln13_8_reg_1028);
assign add_ln13_11_fu_707_p2 = (reg_345 + mul_ln13_17_reg_984);
assign add_ln13_12_fu_685_p2 = (reg_337 + reg_341);
assign add_ln13_13_fu_691_p2 = (add_ln13_12_fu_685_p2 + mul_ln13_9_reg_979);
assign add_ln13_14_fu_712_p2 = (add_ln13_13_reg_1008 + add_ln13_11_fu_707_p2);
assign add_ln13_2_fu_717_p2 = (grp_fu_349_p2 + add_ln13_reg_953);
assign add_ln13_3_fu_696_p2 = (reg_341 + reg_337);
assign add_ln13_4_fu_674_p2 = (reg_341 + mul_ln13_3_reg_974);
assign add_ln13_5_fu_679_p2 = (add_ln13_4_fu_674_p2 + reg_337);
assign add_ln13_6_fu_702_p2 = (add_ln13_5_reg_998 + add_ln13_3_fu_696_p2);
assign add_ln13_8_fu_727_p2 = (reg_345 + mul_ln13_13_reg_933);
assign add_ln13_9_fu_732_p2 = (mul_ln13_16_reg_1033 + mul_ln13_15_reg_1003);
assign add_ln7_fu_636_p2 = (indvar_flatten2_fu_92 + 12'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
always @ (*) begin
    ap_condition_700 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln7_reg_994 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign c_fu_631_p2 = (select_ln4_reg_827 + 6'd2);
assign empty_fu_479_p2 = (tmp_cast_cast_cast_fu_475_p1 + tmp_3_fu_457_p3);
assign grp_fu_349_p2 = (reg_337 + reg_341);
assign icmp_ln7_fu_653_p2 = ((indvar_flatten2_fu_92 == 12'd3905) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_647_p2 = ((c_fu_631_p2 == 6'd62) ? 1'b1 : 1'b0);
assign indvars_iv_next80_fu_642_p2 = (r_reg_841 + 7'd1);
assign indvars_iv_next80_mid1_fu_392_p2 = (ap_sig_allocacmp_r3_load + 7'd2);
assign or_ln12_1_fu_590_p4 = {{{select_ln4_1_reg_834}, {tmp_4_reg_862}}, {1'd1}};
assign or_ln12_2_fu_500_p3 = {{tmp_7_fu_490_p4}, {1'd1}};
assign or_ln8_cast18_fu_530_p1 = or_ln8_fu_523_p3;
assign or_ln8_cast_fu_559_p1 = or_ln8_reg_908;
assign or_ln8_fu_523_p3 = {{tmp_4_reg_862}, {1'd1}};
assign or_ln_fu_437_p4 = {{{r_fu_406_p3}, {tmp_4_fu_427_p4}}, {1'd1}};
assign orig_address0 = orig_address0_local;
assign orig_address1 = orig_address1_local;
assign orig_ce0 = orig_ce0_local;
assign orig_ce1 = orig_ce1_local;
assign r_fu_406_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_291_p4[0:0] == 1'b1) ? ap_sig_allocacmp_indvars_iv_next805_load : ap_sig_allocacmp_r3_load);
assign select_ln4_1_fu_398_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_291_p4[0:0] == 1'b1) ? indvars_iv_next80_mid1_fu_392_p2 : ap_sig_allocacmp_indvars_iv_next805_load);
assign select_ln4_cast_fu_464_p1 = select_ln4_reg_827;
assign select_ln4_fu_384_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_291_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_c4_load);
assign sol_address0 = sol_address0_local;
assign sol_ce0 = sol_ce0_local;
assign sol_d0 = sol_d0_local;
assign sol_we0 = sol_we0_local;
assign temp_1_fu_741_p2 = (add_ln13_14_reg_1018 + add_ln13_10_fu_736_p2);
assign temp_fu_722_p2 = (add_ln13_6_reg_1013 + add_ln13_2_fu_717_p2);
assign tmp_1_fu_584_p3 = {{select_ln4_1_reg_834}, {select_ln4_reg_827}};
assign tmp_3_fu_457_p3 = {{r_reg_841}, {6'd0}};
assign tmp_4_fu_427_p4 = {{select_ln4_fu_384_p3[5:1]}};
assign tmp_7_fu_490_p4 = {{empty_fu_479_p2[12:1]}};
assign tmp_9_fu_562_p3 = {{select_ln4_1_reg_834}, {6'd2}};
assign tmp_cast_cast_cast_fu_475_p1 = tmp_cast_cast_fu_467_p3;
assign tmp_cast_cast_fu_467_p3 = {{1'd1}, {select_ln4_cast_fu_464_p1}};
assign tmp_fu_414_p3 = {{r_fu_406_p3}, {select_ln4_fu_384_p3}};
assign zext_ln12_10_fu_575_p1 = add_ln12_4_fu_569_p2;
assign zext_ln12_11_fu_550_p1 = add_ln12_6_fu_544_p2;
assign zext_ln12_12_fu_580_p1 = add_ln12_5_reg_918;
assign zext_ln12_1_fu_447_p1 = or_ln_fu_437_p4;
assign zext_ln12_2_fu_622_p1 = add_ln12_fu_617_p2;
assign zext_ln12_3_fu_627_p1 = tmp_1_reg_938;
assign zext_ln12_4_fu_598_p1 = or_ln12_1_fu_590_p4;
assign zext_ln12_5_fu_609_p1 = add_ln12_1_fu_603_p2;
assign zext_ln12_6_fu_485_p1 = empty_fu_479_p2;
assign zext_ln12_7_fu_508_p1 = or_ln12_2_fu_500_p3;
assign zext_ln12_8_fu_518_p1 = add_ln12_2_fu_513_p2;
assign zext_ln12_9_fu_539_p1 = add_ln12_3_fu_534_p2;
assign zext_ln12_fu_422_p1 = tmp_fu_414_p3;
always @ (posedge ap_clk) begin
    zext_ln12_reg_852[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_852_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    or_ln_reg_868[0] <= 1'b1;
    zext_ln12_1_reg_873[0] <= 1'b1;
    zext_ln12_1_reg_873[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_873_pp0_iter1_reg[0] <= 1'b1;
    zext_ln12_1_reg_873_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_873_pp0_iter2_reg[0] <= 1'b1;
    zext_ln12_1_reg_873_pp0_iter2_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    tmp_3_reg_883[5:0] <= 6'b000000;
    or_ln8_reg_908[0] <= 1'b1;
    add_ln12_5_reg_918[0] <= 1'b1;
end
endmodule 