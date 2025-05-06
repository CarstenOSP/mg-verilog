
module stencil_stencil_Pipeline_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,r,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,indvars_iv_next93,p_udiv1114,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7);  
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
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
input  [6:0] r;
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
input  [6:0] indvars_iv_next93;
input  [11:0] p_udiv1114;
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
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] icmp_ln8_reg_995;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg  signed [31:0] reg_403;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg  signed [31:0] reg_409;
reg  signed [31:0] reg_416;
reg  signed [31:0] reg_424;
reg  signed [31:0] reg_433;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage4_11001;
reg  signed [31:0] reg_441;
reg  signed [31:0] reg_449;
reg  signed [31:0] reg_455;
wire   [31:0] grp_fu_371_p2;
reg   [31:0] reg_461;
wire   [31:0] grp_fu_375_p2;
reg   [31:0] reg_465;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_379_p2;
reg   [31:0] reg_469;
wire   [31:0] grp_fu_383_p2;
reg   [31:0] reg_473;
wire   [31:0] grp_fu_387_p2;
reg   [31:0] reg_477;
wire   [31:0] grp_fu_391_p2;
reg   [31:0] reg_481;
wire   [31:0] grp_fu_395_p2;
reg   [31:0] reg_485;
reg   [31:0] reg_489;
reg   [5:0] c_1_reg_921;
wire   [4:0] lshr_ln_fu_501_p4;
reg   [4:0] lshr_ln_reg_926;
wire   [3:0] tmp_1_fu_511_p4;
reg   [3:0] tmp_1_reg_932;
wire   [11:0] or_ln_fu_521_p4;
reg   [11:0] or_ln_reg_938;
wire   [63:0] zext_ln12_1_fu_531_p1;
reg   [63:0] zext_ln12_1_reg_943;
reg   [63:0] zext_ln12_1_reg_943_pp0_iter1_reg;
reg   [63:0] zext_ln12_1_reg_943_pp0_iter2_reg;
wire   [11:0] or_ln12_2_fu_560_p4;
reg   [11:0] or_ln12_2_reg_960;
reg   [11:0] orig_0_addr_5_reg_965;
reg   [11:0] orig_1_addr_5_reg_975;
wire   [11:0] or_ln12_1_fu_576_p4;
reg   [11:0] or_ln12_1_reg_980;
wire   [0:0] icmp_ln8_fu_597_p2;
reg   [0:0] icmp_ln8_reg_995_pp0_iter1_reg;
wire   [63:0] zext_ln12_fu_609_p1;
reg   [63:0] zext_ln12_reg_999;
reg   [63:0] zext_ln12_reg_999_pp0_iter1_reg;
wire   [63:0] zext_ln12_2_fu_620_p1;
reg   [63:0] zext_ln12_2_reg_1011;
wire   [63:0] zext_ln12_8_fu_630_p1;
reg   [63:0] zext_ln12_8_reg_1021;
wire   [63:0] zext_ln12_6_fu_640_p1;
reg   [63:0] zext_ln12_6_reg_1041;
wire   [63:0] zext_ln12_7_fu_650_p1;
reg   [63:0] zext_ln12_7_reg_1046;
wire   [31:0] grp_fu_399_p2;
reg   [31:0] mul_ln13_31_reg_1061;
wire   [31:0] add_ln13_5_fu_661_p2;
reg   [31:0] add_ln13_5_reg_1071;
reg   [31:0] mul_ln13_15_reg_1076;
reg   [31:0] mul_ln13_24_reg_1091;
reg   [31:0] mul_ln13_25_reg_1096;
reg   [31:0] mul_ln13_34_reg_1106;
reg  signed [31:0] orig_1_load_reg_1111;
reg   [31:0] mul_ln13_4_reg_1117;
wire   [31:0] add_ln13_13_fu_683_p2;
reg   [31:0] add_ln13_13_reg_1122;
reg  signed [31:0] orig_0_load_6_reg_1127;
reg  signed [31:0] orig_0_load_7_reg_1133;
reg   [31:0] mul_ln13_26_reg_1139;
reg  signed [31:0] orig_1_load_9_reg_1144;
reg   [31:0] mul_ln13_32_reg_1149;
reg   [31:0] mul_ln13_35_reg_1154;
wire   [31:0] add_ln13_6_fu_695_p2;
reg   [31:0] add_ln13_6_reg_1159;
wire   [31:0] add_ln13_9_fu_700_p2;
reg   [31:0] add_ln13_9_reg_1164;
wire   [31:0] add_ln13_14_fu_711_p2;
reg   [31:0] add_ln13_14_reg_1169;
wire   [31:0] add_ln13_21_fu_721_p2;
reg   [31:0] add_ln13_21_reg_1174;
wire   [31:0] add_ln13_1_fu_727_p2;
reg   [31:0] add_ln13_1_reg_1179;
reg   [31:0] mul_ln13_18_reg_1184;
wire   [31:0] add_ln13_16_fu_733_p2;
reg   [31:0] add_ln13_16_reg_1189;
reg   [31:0] mul_ln13_30_reg_1194;
wire   [31:0] temp_fu_749_p2;
reg   [31:0] temp_reg_1199;
wire   [31:0] temp_1_fu_765_p2;
reg   [31:0] temp_1_reg_1204;
wire   [31:0] add_ln13_17_fu_770_p2;
reg   [31:0] add_ln13_17_reg_1209;
wire   [31:0] add_ln13_22_fu_779_p2;
reg   [31:0] add_ln13_22_reg_1214;
wire   [31:0] add_ln13_24_fu_784_p2;
reg   [31:0] add_ln13_24_reg_1219;
wire   [31:0] add_ln13_25_fu_789_p2;
reg   [31:0] add_ln13_25_reg_1224;
wire   [31:0] add_ln13_29_fu_799_p2;
reg   [31:0] add_ln13_29_reg_1229;
wire   [31:0] temp_2_fu_809_p2;
reg   [31:0] temp_2_reg_1234;
wire   [31:0] add_ln13_30_fu_818_p2;
reg   [31:0] add_ln13_30_reg_1239;
wire   [31:0] temp_3_fu_827_p2;
reg   [31:0] temp_3_reg_1244;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter1_stage4;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln12_4_fu_554_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_5_fu_570_p1;
wire   [63:0] zext_ln12_3_fu_584_p1;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [5:0] c_fu_92;
wire   [5:0] add_ln8_fu_667_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_c_1;
reg    orig_0_ce1_local;
reg   [11:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [11:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [11:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [11:0] orig_1_address0_local;
reg    sol_0_we0_local;
reg   [31:0] sol_0_d0_local;
reg    sol_0_ce0_local;
reg   [11:0] sol_0_address0_local;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
reg    sol_1_ce0_local;
reg   [11:0] sol_1_address0_local;
reg  signed [31:0] grp_fu_371_p0;
reg  signed [31:0] grp_fu_371_p1;
reg  signed [31:0] grp_fu_375_p0;
reg  signed [31:0] grp_fu_375_p1;
reg  signed [31:0] grp_fu_379_p0;
reg  signed [31:0] grp_fu_379_p1;
reg  signed [31:0] grp_fu_383_p0;
reg  signed [31:0] grp_fu_383_p1;
reg  signed [31:0] grp_fu_387_p0;
reg  signed [31:0] grp_fu_387_p1;
reg  signed [31:0] grp_fu_391_p0;
reg  signed [31:0] grp_fu_391_p1;
reg  signed [31:0] grp_fu_395_p0;
reg  signed [31:0] grp_fu_395_p1;
reg  signed [31:0] grp_fu_399_p0;
reg  signed [31:0] grp_fu_399_p1;
wire   [6:0] tmp_5_fu_536_p4;
wire   [11:0] add_ln5_1_fu_546_p3;
wire   [5:0] or_ln8_fu_590_p3;
wire   [11:0] add_ln_fu_603_p3;
wire   [11:0] add_ln5_fu_614_p3;
wire   [11:0] add_ln12_2_fu_625_p2;
wire   [11:0] add_ln12_fu_635_p2;
wire   [11:0] add_ln12_1_fu_645_p2;
wire   [31:0] add_ln13_4_fu_655_p2;
wire   [31:0] add_ln13_12_fu_677_p2;
wire   [31:0] add_ln13_3_fu_689_p2;
wire   [31:0] add_ln13_11_fu_705_p2;
wire   [31:0] add_ln13_20_fu_716_p2;
wire   [31:0] add_ln13_fu_739_p2;
wire   [31:0] add_ln13_2_fu_744_p2;
wire   [31:0] add_ln13_8_fu_754_p2;
wire   [31:0] add_ln13_10_fu_760_p2;
wire   [31:0] add_ln13_19_fu_774_p2;
wire   [31:0] add_ln13_28_fu_794_p2;
wire   [31:0] add_ln13_18_fu_805_p2;
wire   [31:0] add_ln13_27_fu_814_p2;
wire   [31:0] add_ln13_26_fu_823_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [4:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 c_fu_92 = 6'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_371_p0),.din1(grp_fu_371_p1),.ce(1'b1),.dout(grp_fu_371_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_375_p0),.din1(grp_fu_375_p1),.ce(1'b1),.dout(grp_fu_375_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_379_p0),.din1(grp_fu_379_p1),.ce(1'b1),.dout(grp_fu_379_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_383_p0),.din1(grp_fu_383_p1),.ce(1'b1),.dout(grp_fu_383_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_387_p0),.din1(grp_fu_387_p1),.ce(1'b1),.dout(grp_fu_387_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_391_p0),.din1(grp_fu_391_p1),.ce(1'b1),.dout(grp_fu_391_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_395_p0),.din1(grp_fu_395_p1),.ce(1'b1),.dout(grp_fu_395_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_399_p0),.din1(grp_fu_399_p1),.ce(1'b1),.dout(grp_fu_399_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage4) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fu_92 <= 6'd0;
    end else if (((icmp_ln8_reg_995 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        c_fu_92 <= add_ln8_fu_667_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_13_reg_1122 <= add_ln13_13_fu_683_p2;
        c_1_reg_921 <= ap_sig_allocacmp_c_1;
        lshr_ln_reg_926 <= {{ap_sig_allocacmp_c_1[5:1]}};
        or_ln12_2_reg_960[11 : 1] <= or_ln12_2_fu_560_p4[11 : 1];
        or_ln_reg_938[11 : 1] <= or_ln_fu_521_p4[11 : 1];
        orig_0_addr_5_reg_965[11 : 1] <= zext_ln12_5_fu_570_p1[11 : 1];
        orig_1_addr_5_reg_975[11 : 1] <= zext_ln12_5_fu_570_p1[11 : 1];
        temp_3_reg_1244 <= temp_3_fu_827_p2;
        tmp_1_reg_932 <= {{ap_sig_allocacmp_c_1[5:2]}};
        zext_ln12_1_reg_943[11 : 1] <= zext_ln12_1_fu_531_p1[11 : 1];
        zext_ln12_1_reg_943_pp0_iter1_reg[11 : 1] <= zext_ln12_1_reg_943[11 : 1];
        zext_ln12_1_reg_943_pp0_iter2_reg[11 : 1] <= zext_ln12_1_reg_943_pp0_iter1_reg[11 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_14_reg_1169 <= add_ln13_14_fu_711_p2;
        add_ln13_21_reg_1174 <= add_ln13_21_fu_721_p2;
        add_ln13_6_reg_1159 <= add_ln13_6_fu_695_p2;
        add_ln13_9_reg_1164 <= add_ln13_9_fu_700_p2;
        icmp_ln8_reg_995 <= icmp_ln8_fu_597_p2;
        icmp_ln8_reg_995_pp0_iter1_reg <= icmp_ln8_reg_995;
        or_ln12_1_reg_980[11 : 1] <= or_ln12_1_fu_576_p4[11 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln13_16_reg_1189 <= add_ln13_16_fu_733_p2;
        add_ln13_1_reg_1179 <= add_ln13_1_fu_727_p2;
        zext_ln12_2_reg_1011[11 : 0] <= zext_ln12_2_fu_620_p1[11 : 0];
        zext_ln12_8_reg_1021[11 : 1] <= zext_ln12_8_fu_630_p1[11 : 1];
        zext_ln12_reg_999[11 : 0] <= zext_ln12_fu_609_p1[11 : 0];
        zext_ln12_reg_999_pp0_iter1_reg[11 : 0] <= zext_ln12_reg_999[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln13_17_reg_1209 <= add_ln13_17_fu_770_p2;
        add_ln13_22_reg_1214 <= add_ln13_22_fu_779_p2;
        add_ln13_24_reg_1219 <= add_ln13_24_fu_784_p2;
        add_ln13_25_reg_1224 <= add_ln13_25_fu_789_p2;
        add_ln13_29_reg_1229 <= add_ln13_29_fu_799_p2;
        temp_1_reg_1204 <= temp_1_fu_765_p2;
        temp_reg_1199 <= temp_fu_749_p2;
        zext_ln12_6_reg_1041[11 : 1] <= zext_ln12_6_fu_640_p1[11 : 1];
        zext_ln12_7_reg_1046[11 : 1] <= zext_ln12_7_fu_650_p1[11 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln13_30_reg_1239 <= add_ln13_30_fu_818_p2;
        add_ln13_5_reg_1071 <= add_ln13_5_fu_661_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        temp_2_reg_1234 <= temp_2_fu_809_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln13_15_reg_1076 <= grp_fu_383_p2;
        mul_ln13_24_reg_1091 <= grp_fu_391_p2;
        mul_ln13_25_reg_1096 <= grp_fu_395_p2;
        mul_ln13_34_reg_1106 <= grp_fu_399_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln13_18_reg_1184 <= grp_fu_379_p2;
        mul_ln13_30_reg_1194 <= grp_fu_391_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_26_reg_1139 <= grp_fu_387_p2;
        mul_ln13_32_reg_1149 <= grp_fu_391_p2;
        mul_ln13_35_reg_1154 <= grp_fu_395_p2;
        mul_ln13_4_reg_1117 <= grp_fu_371_p2;
        orig_0_load_6_reg_1127 <= orig_0_q1;
        orig_0_load_7_reg_1133 <= orig_0_q0;
        orig_1_load_9_reg_1144 <= orig_1_q0;
        orig_1_load_reg_1111 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln13_31_reg_1061 <= grp_fu_399_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_403 <= orig_0_q1;
        reg_409 <= orig_1_q1;
        reg_416 <= orig_0_q0;
        reg_424 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_433 <= orig_0_q1;
        reg_441 <= orig_1_q1;
        reg_449 <= orig_1_q0;
        reg_455 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_461 <= grp_fu_371_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_465 <= grp_fu_375_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_469 <= grp_fu_379_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_473 <= grp_fu_383_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_477 <= grp_fu_387_p2;
        reg_481 <= grp_fu_391_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_485 <= grp_fu_395_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_489 <= grp_fu_387_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_995 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_995_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter1_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c_1 = 6'd0;
    end else begin
        ap_sig_allocacmp_c_1 = c_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_371_p0 = orig_1_load_reg_1111;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_371_p0 = reg_403;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_371_p0 = reg_433;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p0 = reg_416;
    end else begin
        grp_fu_371_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_371_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_371_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_371_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_371_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p1 = filter_load_8;
    end else begin
        grp_fu_371_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_375_p0 = orig_1_load_reg_1111;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_375_p0 = reg_455;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_375_p0 = reg_409;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_375_p0 = reg_441;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p0 = reg_403;
    end else begin
        grp_fu_375_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_375_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_375_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_375_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_375_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p1 = filter_load_6;
    end else begin
        grp_fu_375_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_379_p0 = orig_0_load_6_reg_1127;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_379_p0 = reg_433;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_379_p0 = reg_449;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_379_p0 = reg_409;
    end else begin
        grp_fu_379_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_379_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_379_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_379_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_379_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_379_p1 = filter_load_7;
    end else begin
        grp_fu_379_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_383_p0 = orig_0_load_7_reg_1133;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_383_p0 = reg_416;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_383_p0 = reg_433;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_383_p0 = reg_424;
    end else begin
        grp_fu_383_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_383_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_383_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_383_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_383_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_383_p1 = filter_load_2;
    end else begin
        grp_fu_383_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_387_p0 = orig_0_load_6_reg_1127;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_387_p0 = reg_441;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_387_p0 = reg_424;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_387_p0 = reg_455;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_387_p0 = reg_409;
    end else begin
        grp_fu_387_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_387_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_387_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_387_p1 = filter_load_7;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_387_p1 = filter_load_6;
    end else begin
        grp_fu_387_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_391_p0 = orig_1_load_9_reg_1144;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_391_p0 = reg_449;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_391_p0 = reg_424;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_391_p0 = reg_441;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_391_p0 = reg_416;
    end else begin
        grp_fu_391_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_391_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_391_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_391_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_391_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_391_p1 = filter_load_7;
    end else begin
        grp_fu_391_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_395_p0 = orig_0_load_7_reg_1133;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_395_p0 = reg_416;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_395_p0 = reg_433;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_395_p0 = reg_424;
    end else begin
        grp_fu_395_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_395_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_395_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_395_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_395_p1 = filter_load_1;
    end else begin
        grp_fu_395_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_399_p0 = reg_441;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_399_p0 = reg_424;
        end else begin
            grp_fu_399_p0 = 'bx;
        end
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_399_p1 = filter_load_3;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_399_p1 = filter_load;
        end else begin
            grp_fu_399_p1 = 'bx;
        end
    end else begin
        grp_fu_399_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address0_local = zext_ln12_7_reg_1046;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address0_local = zext_ln12_2_reg_1011;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln12_8_fu_630_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = orig_0_addr_5_reg_965;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln12_5_fu_570_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address1_local = zext_ln12_6_reg_1041;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address1_local = zext_ln12_1_reg_943;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln12_fu_609_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln12_3_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln12_4_fu_554_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_1_address0_local = zext_ln12_8_reg_1021;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_1_address0_local = zext_ln12_7_fu_650_p1;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_address0_local = orig_1_addr_5_reg_975;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_1_fu_531_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address1_local = zext_ln12_reg_999;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address1_local = zext_ln12_6_fu_640_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln12_2_fu_620_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln12_3_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln12_4_fu_554_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_address0_local = zext_ln12_1_reg_943_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_0_address0_local = zext_ln12_reg_999_pp0_iter1_reg;
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_d0_local = temp_2_reg_1234;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_0_d0_local = temp_reg_1199;
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_1_address0_local = zext_ln12_1_reg_943_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_1_address0_local = zext_ln12_reg_999_pp0_iter1_reg;
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_1_d0_local = temp_3_reg_1244;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_1_d0_local = temp_1_reg_1204;
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln12_1_fu_645_p2 = (or_ln12_1_reg_980 + 12'd1);
assign add_ln12_2_fu_625_p2 = (or_ln12_2_reg_960 + 12'd1);
assign add_ln12_fu_635_p2 = (or_ln_reg_938 + 12'd1);
assign add_ln13_10_fu_760_p2 = (add_ln13_9_reg_1164 + add_ln13_8_fu_754_p2);
assign add_ln13_11_fu_705_p2 = (reg_477 + reg_481);
assign add_ln13_12_fu_677_p2 = (reg_465 + reg_469);
assign add_ln13_13_fu_683_p2 = (add_ln13_12_fu_677_p2 + reg_473);
assign add_ln13_14_fu_711_p2 = (add_ln13_13_reg_1122 + add_ln13_11_fu_705_p2);
assign add_ln13_16_fu_733_p2 = (reg_485 + reg_473);
assign add_ln13_17_fu_770_p2 = (mul_ln13_18_reg_1184 + mul_ln13_25_reg_1096);
assign add_ln13_18_fu_805_p2 = (add_ln13_17_reg_1209 + add_ln13_16_reg_1189);
assign add_ln13_19_fu_774_p2 = (mul_ln13_24_reg_1091 + reg_473);
assign add_ln13_1_fu_727_p2 = (reg_461 + reg_465);
assign add_ln13_20_fu_716_p2 = (mul_ln13_26_reg_1139 + reg_473);
assign add_ln13_21_fu_721_p2 = (add_ln13_20_fu_716_p2 + reg_489);
assign add_ln13_22_fu_779_p2 = (add_ln13_21_reg_1174 + add_ln13_19_fu_774_p2);
assign add_ln13_24_fu_784_p2 = (reg_489 + mul_ln13_31_reg_1061);
assign add_ln13_25_fu_789_p2 = (mul_ln13_34_reg_1106 + reg_485);
assign add_ln13_26_fu_823_p2 = (add_ln13_25_reg_1224 + add_ln13_24_reg_1219);
assign add_ln13_27_fu_814_p2 = (mul_ln13_32_reg_1149 + mul_ln13_35_reg_1154);
assign add_ln13_28_fu_794_p2 = (reg_481 + mul_ln13_30_reg_1194);
assign add_ln13_29_fu_799_p2 = (add_ln13_28_fu_794_p2 + reg_477);
assign add_ln13_2_fu_744_p2 = (add_ln13_1_reg_1179 + add_ln13_fu_739_p2);
assign add_ln13_30_fu_818_p2 = (add_ln13_29_reg_1229 + add_ln13_27_fu_814_p2);
assign add_ln13_3_fu_689_p2 = (reg_465 + reg_461);
assign add_ln13_4_fu_655_p2 = (reg_469 + reg_461);
assign add_ln13_5_fu_661_p2 = (add_ln13_4_fu_655_p2 + reg_465);
assign add_ln13_6_fu_695_p2 = (add_ln13_5_reg_1071 + add_ln13_3_fu_689_p2);
assign add_ln13_8_fu_754_p2 = (reg_469 + reg_465);
assign add_ln13_9_fu_700_p2 = (reg_469 + mul_ln13_15_reg_1076);
assign add_ln13_fu_739_p2 = (reg_461 + mul_ln13_4_reg_1117);
assign add_ln5_1_fu_546_p3 = {{tmp_5_fu_536_p4}, {lshr_ln_fu_501_p4}};
assign add_ln5_fu_614_p3 = {{indvars_iv_next93}, {lshr_ln_reg_926}};
assign add_ln8_fu_667_p2 = (c_1_reg_921 + 6'd4);
assign add_ln_fu_603_p3 = {{r}, {lshr_ln_reg_926}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign icmp_ln8_fu_597_p2 = ((or_ln8_fu_590_p3 == 6'd62) ? 1'b1 : 1'b0);
assign lshr_ln_fu_501_p4 = {{ap_sig_allocacmp_c_1[5:1]}};
assign or_ln12_1_fu_576_p4 = {{{indvars_iv_next93}, {tmp_1_reg_932}}, {1'd1}};
assign or_ln12_2_fu_560_p4 = {{{tmp_5_fu_536_p4}, {tmp_1_fu_511_p4}}, {1'd1}};
assign or_ln8_fu_590_p3 = {{tmp_1_reg_932}, {2'd2}};
assign or_ln_fu_521_p4 = {{{r}, {tmp_1_fu_511_p4}}, {1'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign sol_0_address0 = sol_0_address0_local;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = sol_0_d0_local;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_we0 = sol_1_we0_local;
assign temp_1_fu_765_p2 = (add_ln13_14_reg_1169 + add_ln13_10_fu_760_p2);
assign temp_2_fu_809_p2 = (add_ln13_22_reg_1214 + add_ln13_18_fu_805_p2);
assign temp_3_fu_827_p2 = (add_ln13_30_reg_1239 + add_ln13_26_fu_823_p2);
assign temp_fu_749_p2 = (add_ln13_6_reg_1159 + add_ln13_2_fu_744_p2);
assign tmp_1_fu_511_p4 = {{ap_sig_allocacmp_c_1[5:2]}};
assign tmp_5_fu_536_p4 = {{p_udiv1114[11:5]}};
assign zext_ln12_1_fu_531_p1 = or_ln_fu_521_p4;
assign zext_ln12_2_fu_620_p1 = add_ln5_fu_614_p3;
assign zext_ln12_3_fu_584_p1 = or_ln12_1_fu_576_p4;
assign zext_ln12_4_fu_554_p1 = add_ln5_1_fu_546_p3;
assign zext_ln12_5_fu_570_p1 = or_ln12_2_fu_560_p4;
assign zext_ln12_6_fu_640_p1 = add_ln12_fu_635_p2;
assign zext_ln12_7_fu_650_p1 = add_ln12_1_fu_645_p2;
assign zext_ln12_8_fu_630_p1 = add_ln12_2_fu_625_p2;
assign zext_ln12_fu_609_p1 = add_ln_fu_603_p3;
always @ (posedge ap_clk) begin
    or_ln_reg_938[0] <= 1'b1;
    zext_ln12_1_reg_943[0] <= 1'b1;
    zext_ln12_1_reg_943[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_943_pp0_iter1_reg[0] <= 1'b1;
    zext_ln12_1_reg_943_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_943_pp0_iter2_reg[0] <= 1'b1;
    zext_ln12_1_reg_943_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    or_ln12_2_reg_960[0] <= 1'b1;
    orig_0_addr_5_reg_965[0] <= 1'b1;
    orig_1_addr_5_reg_975[0] <= 1'b1;
    or_ln12_1_reg_980[0] <= 1'b1;
    zext_ln12_reg_999[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_999_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_2_reg_1011[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_8_reg_1021[0] <= 1'b0;
    zext_ln12_8_reg_1021[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_6_reg_1041[0] <= 1'b0;
    zext_ln12_6_reg_1041[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_7_reg_1046[0] <= 1'b0;
    zext_ln12_7_reg_1046[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 
