module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,llike_8_address0,llike_8_ce0,llike_8_we0,llike_8_d0,llike_9_address0,llike_9_ce0,llike_9_we0,llike_9_d0,llike_10_address0,llike_10_ce0,llike_10_we0,llike_10_d0,llike_11_address0,llike_11_ce0,llike_11_we0,llike_11_d0,llike_12_address0,llike_12_ce0,llike_12_we0,llike_12_d0,llike_13_address0,llike_13_ce0,llike_13_we0,llike_13_d0,llike_14_address0,llike_14_ce0,llike_14_we0,llike_14_d0,llike_15_address0,llike_15_ce0,llike_15_we0,llike_15_d0,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,zext_ln13,grp_fu_612_p_din0,grp_fu_612_p_din1,grp_fu_612_p_opcode,grp_fu_612_p_dout0,grp_fu_612_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [9:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [9:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [9:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [9:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [9:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [9:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [9:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
output  [9:0] llike_8_address0;
output   llike_8_ce0;
output   llike_8_we0;
output  [63:0] llike_8_d0;
output  [9:0] llike_9_address0;
output   llike_9_ce0;
output   llike_9_we0;
output  [63:0] llike_9_d0;
output  [9:0] llike_10_address0;
output   llike_10_ce0;
output   llike_10_we0;
output  [63:0] llike_10_d0;
output  [9:0] llike_11_address0;
output   llike_11_ce0;
output   llike_11_we0;
output  [63:0] llike_11_d0;
output  [9:0] llike_12_address0;
output   llike_12_ce0;
output   llike_12_we0;
output  [63:0] llike_12_d0;
output  [9:0] llike_13_address0;
output   llike_13_ce0;
output   llike_13_we0;
output  [63:0] llike_13_d0;
output  [9:0] llike_14_address0;
output   llike_14_ce0;
output   llike_14_we0;
output  [63:0] llike_14_d0;
output  [9:0] llike_15_address0;
output   llike_15_ce0;
output   llike_15_we0;
output  [63:0] llike_15_d0;
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [5:0] init_address1;
output   init_ce1;
input  [63:0] init_q1;
input  [7:0] obs_load;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
input  [7:0] zext_ln13;
output  [63:0] grp_fu_612_p_din0;
output  [63:0] grp_fu_612_p_din1;
output  [1:0] grp_fu_612_p_opcode;
input  [63:0] grp_fu_612_p_dout0;
output   grp_fu_612_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_979;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_506;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_510;
reg   [63:0] reg_514;
reg   [63:0] reg_518;
reg   [63:0] reg_522;
wire   [63:0] grp_fu_502_p2;
reg   [63:0] reg_534;
wire   [11:0] zext_ln13_cast_fu_546_p1;
reg   [11:0] zext_ln13_cast_reg_962;
reg   [6:0] s_1_reg_971;
wire   [0:0] tmp_fu_558_p3;
reg   [0:0] tmp_reg_979_pp0_iter1_reg;
reg   [0:0] tmp_reg_979_pp0_iter2_reg;
wire   [3:0] tmp_8_cast_fu_575_p4;
reg   [3:0] tmp_8_cast_reg_988;
wire   [0:0] icmp_ln14_fu_640_p2;
reg   [0:0] icmp_ln14_reg_1011;
reg   [0:0] icmp_ln14_reg_1011_pp0_iter1_reg;
reg   [0:0] icmp_ln14_reg_1011_pp0_iter2_reg;
reg   [0:0] icmp_ln14_reg_1011_pp0_iter3_reg;
wire   [63:0] bitcast_ln14_fu_704_p1;
wire   [63:0] bitcast_ln14_1_fu_709_p1;
wire   [63:0] bitcast_ln14_2_fu_714_p1;
wire   [63:0] bitcast_ln14_3_fu_719_p1;
wire   [2:0] tmp_133_fu_724_p4;
reg   [2:0] tmp_133_reg_1055;
reg   [1:0] lshr_ln9_reg_1083;
reg   [1:0] lshr_ln9_reg_1083_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_4_fu_815_p1;
wire   [63:0] bitcast_ln14_5_fu_820_p1;
wire   [63:0] bitcast_ln14_6_fu_825_p1;
wire   [63:0] bitcast_ln14_7_fu_830_p1;
wire   [63:0] bitcast_ln14_8_fu_903_p1;
wire   [63:0] bitcast_ln14_9_fu_908_p1;
wire   [63:0] bitcast_ln14_10_fu_913_p1;
wire   [63:0] bitcast_ln14_11_fu_918_p1;
wire   [63:0] bitcast_ln14_12_fu_923_p1;
wire   [63:0] bitcast_ln14_13_fu_928_p1;
wire   [63:0] bitcast_ln14_14_fu_933_p1;
wire   [63:0] bitcast_ln14_15_fu_938_p1;
wire   [63:0] zext_ln9_fu_943_p1;
reg   [63:0] zext_ln9_reg_1168;
reg   [9:0] llike_6_addr_reg_1184;
reg   [9:0] llike_7_addr_reg_1189;
reg   [9:0] llike_14_addr_reg_1194;
reg   [9:0] llike_15_addr_reg_1199;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln13_1_fu_566_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_593_p1;
wire   [63:0] zext_ln14_1_fu_616_p1;
wire   [63:0] zext_ln14_2_fu_635_p1;
wire   [63:0] zext_ln14_3_fu_653_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_670_p1;
wire   [63:0] zext_ln14_5_fu_682_p1;
wire   [63:0] zext_ln14_6_fu_699_p1;
wire   [63:0] zext_ln14_8_fu_741_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_755_p1;
wire   [63:0] zext_ln14_10_fu_779_p1;
wire   [63:0] zext_ln14_9_fu_801_p1;
wire   [63:0] zext_ln14_12_fu_842_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_859_p1;
wire   [63:0] zext_ln14_14_fu_871_p1;
wire   [63:0] zext_ln14_13_fu_888_p1;
reg   [6:0] s_fu_132;
wire   [6:0] add_ln13_fu_893_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_ce1_local;
reg   [5:0] init_address1_local;
reg    init_ce0_local;
reg   [5:0] init_address0_local;
reg    emission_ce1_local;
reg   [11:0] emission_address1_local;
reg    emission_ce0_local;
reg   [11:0] emission_address0_local;
reg    llike_8_we0_local;
reg    llike_8_ce0_local;
reg    llike_9_we0_local;
reg    llike_9_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_10_we0_local;
reg    llike_10_ce0_local;
reg    llike_11_we0_local;
reg    llike_11_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    llike_12_we0_local;
reg    llike_12_ce0_local;
reg    llike_13_we0_local;
reg    llike_13_ce0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_14_we0_local;
reg    llike_14_ce0_local;
reg    llike_15_we0_local;
reg    llike_15_ce0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg   [63:0] grp_fu_498_p0;
reg   [63:0] grp_fu_498_p1;
reg   [63:0] grp_fu_502_p0;
reg   [63:0] grp_fu_502_p1;
wire   [11:0] or_ln_fu_585_p3;
wire   [4:0] tmp_s_fu_598_p4;
wire   [5:0] or_ln1_fu_608_p3;
wire   [11:0] shl_ln_fu_621_p3;
wire   [11:0] add_ln14_fu_629_p2;
wire   [3:0] trunc_ln13_fu_571_p1;
wire   [5:0] or_ln13_1_fu_646_p3;
wire   [11:0] shl_ln14_1_fu_658_p3;
wire   [11:0] add_ln14_1_fu_665_p2;
wire   [5:0] or_ln13_2_fu_675_p3;
wire   [11:0] shl_ln14_2_fu_687_p3;
wire   [11:0] add_ln14_2_fu_694_p2;
wire   [5:0] or_ln13_3_fu_733_p3;
wire   [11:0] or_ln14_1_fu_746_p4;
wire   [0:0] tmp_12_fu_760_p3;
wire   [5:0] or_ln13_4_fu_767_p5;
wire   [11:0] shl_ln14_3_fu_784_p5;
wire   [11:0] add_ln14_3_fu_796_p2;
wire   [5:0] or_ln13_5_fu_835_p3;
wire   [11:0] shl_ln14_4_fu_847_p3;
wire   [11:0] add_ln14_4_fu_854_p2;
wire   [5:0] or_ln13_6_fu_864_p3;
wire   [11:0] shl_ln14_5_fu_876_p3;
wire   [11:0] add_ln14_5_fu_883_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_132 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_502_p0),.din1(grp_fu_502_p1),.ce(1'b1),.dout(grp_fu_502_p2));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_132 <= 7'd0;
    end else if (((tmp_reg_979 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_fu_132 <= add_ln13_fu_893_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln14_reg_1011 <= icmp_ln14_fu_640_p2;
        icmp_ln14_reg_1011_pp0_iter1_reg <= icmp_ln14_reg_1011;
        icmp_ln14_reg_1011_pp0_iter2_reg <= icmp_ln14_reg_1011_pp0_iter1_reg;
        icmp_ln14_reg_1011_pp0_iter3_reg <= icmp_ln14_reg_1011_pp0_iter2_reg;
        llike_14_addr_reg_1194[1 : 0] <= zext_ln9_reg_1168[1 : 0];
        llike_15_addr_reg_1199[1 : 0] <= zext_ln9_reg_1168[1 : 0];
        llike_6_addr_reg_1184[1 : 0] <= zext_ln9_reg_1168[1 : 0];
        llike_7_addr_reg_1189[1 : 0] <= zext_ln9_reg_1168[1 : 0];
        s_1_reg_971 <= ap_sig_allocacmp_s_1;
        tmp_8_cast_reg_988 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_979 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_reg_979_pp0_iter1_reg <= tmp_reg_979;
        tmp_reg_979_pp0_iter2_reg <= tmp_reg_979_pp0_iter1_reg;
        zext_ln13_cast_reg_962[7 : 0] <= zext_ln13_cast_fu_546_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln9_reg_1083 <= {{s_1_reg_971[5:4]}};
        lshr_ln9_reg_1083_pp0_iter1_reg <= lshr_ln9_reg_1083;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_506 <= init_q1;
        reg_510 <= emission_q1;
        reg_514 <= init_q0;
        reg_518 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_522 <= grp_fu_612_p_dout0;
        reg_534 <= grp_fu_502_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_133_reg_1055 <= {{s_1_reg_971[5:3]}};
        zext_ln9_reg_1168[1 : 0] <= zext_ln9_fu_943_p1[1 : 0];
    end
end
always @ (*) begin
    if (((tmp_reg_979 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_reg_979_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_132;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_888_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_801_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_699_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_635_p1;
        end else begin
            emission_address0_local = 'bx;
        end
    end else begin
        emission_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_755_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_670_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_593_p1;
        end else begin
            emission_address1_local = 'bx;
        end
    end else begin
        emission_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_498_p0 = bitcast_ln14_12_fu_923_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_498_p0 = bitcast_ln14_8_fu_903_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_498_p0 = bitcast_ln14_4_fu_815_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_498_p0 = bitcast_ln14_fu_704_p1;
    end else begin
        grp_fu_498_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_498_p1 = bitcast_ln14_13_fu_928_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_498_p1 = bitcast_ln14_9_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_498_p1 = bitcast_ln14_5_fu_820_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_498_p1 = bitcast_ln14_1_fu_709_p1;
    end else begin
        grp_fu_498_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_502_p0 = bitcast_ln14_14_fu_933_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_502_p0 = bitcast_ln14_10_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_502_p0 = bitcast_ln14_6_fu_825_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_502_p0 = bitcast_ln14_2_fu_714_p1;
    end else begin
        grp_fu_502_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_502_p1 = bitcast_ln14_15_fu_938_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_502_p1 = bitcast_ln14_11_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_502_p1 = bitcast_ln14_7_fu_830_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_502_p1 = bitcast_ln14_3_fu_719_p1;
    end else begin
        grp_fu_502_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_14_fu_871_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_10_fu_779_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_682_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_616_p1;
        end else begin
            init_address0_local = 'bx;
        end
    end else begin
        init_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_12_fu_842_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_8_fu_741_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_653_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_1_fu_566_p1;
        end else begin
            init_address1_local = 'bx;
        end
    end else begin
        init_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_10_we0_local = 1'b1;
    end else begin
        llike_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_11_we0_local = 1'b1;
    end else begin
        llike_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_we0_local = 1'b1;
    end else begin
        llike_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_we0_local = 1'b1;
    end else begin
        llike_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_14_we0_local = 1'b1;
    end else begin
        llike_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_we0_local = 1'b1;
    end else begin
        llike_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_8_we0_local = 1'b1;
    end else begin
        llike_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_9_we0_local = 1'b1;
    end else begin
        llike_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln14_reg_1011_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_893_p2 = (s_1_reg_971 + 7'd8);
assign add_ln14_1_fu_665_p2 = (shl_ln14_1_fu_658_p3 + zext_ln13_cast_reg_962);
assign add_ln14_2_fu_694_p2 = (shl_ln14_2_fu_687_p3 + zext_ln13_cast_reg_962);
assign add_ln14_3_fu_796_p2 = (shl_ln14_3_fu_784_p5 + zext_ln13_cast_reg_962);
assign add_ln14_4_fu_854_p2 = (shl_ln14_4_fu_847_p3 + zext_ln13_cast_reg_962);
assign add_ln14_5_fu_883_p2 = (shl_ln14_5_fu_876_p3 + zext_ln13_cast_reg_962);
assign add_ln14_fu_629_p2 = (shl_ln_fu_621_p3 + zext_ln13_cast_fu_546_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_10_fu_913_p1 = reg_514;
assign bitcast_ln14_11_fu_918_p1 = reg_518;
assign bitcast_ln14_12_fu_923_p1 = reg_506;
assign bitcast_ln14_13_fu_928_p1 = reg_510;
assign bitcast_ln14_14_fu_933_p1 = reg_514;
assign bitcast_ln14_15_fu_938_p1 = reg_518;
assign bitcast_ln14_1_fu_709_p1 = reg_510;
assign bitcast_ln14_2_fu_714_p1 = reg_514;
assign bitcast_ln14_3_fu_719_p1 = reg_518;
assign bitcast_ln14_4_fu_815_p1 = reg_506;
assign bitcast_ln14_5_fu_820_p1 = reg_510;
assign bitcast_ln14_6_fu_825_p1 = reg_514;
assign bitcast_ln14_7_fu_830_p1 = reg_518;
assign bitcast_ln14_8_fu_903_p1 = reg_506;
assign bitcast_ln14_9_fu_908_p1 = reg_510;
assign bitcast_ln14_fu_704_p1 = reg_506;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_612_p_ce = 1'b1;
assign grp_fu_612_p_din0 = grp_fu_498_p0;
assign grp_fu_612_p_din1 = grp_fu_498_p1;
assign grp_fu_612_p_opcode = 2'd0;
assign icmp_ln14_fu_640_p2 = ((trunc_ln13_fu_571_p1 == 4'd0) ? 1'b1 : 1'b0);
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign llike_10_address0 = zext_ln9_reg_1168;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_10_d0 = reg_522;
assign llike_10_we0 = llike_10_we0_local;
assign llike_11_address0 = zext_ln9_reg_1168;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_11_d0 = reg_534;
assign llike_11_we0 = llike_11_we0_local;
assign llike_12_address0 = zext_ln9_reg_1168;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_12_d0 = reg_522;
assign llike_12_we0 = llike_12_we0_local;
assign llike_13_address0 = zext_ln9_reg_1168;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_13_d0 = reg_534;
assign llike_13_we0 = llike_13_we0_local;
assign llike_14_address0 = llike_14_addr_reg_1194;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_14_d0 = reg_522;
assign llike_14_we0 = llike_14_we0_local;
assign llike_15_address0 = llike_15_addr_reg_1199;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_15_d0 = reg_534;
assign llike_15_we0 = llike_15_we0_local;
assign llike_1_address0 = zext_ln9_fu_943_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_534;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = zext_ln9_reg_1168;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_522;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = zext_ln9_reg_1168;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_534;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_reg_1168;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_522;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_reg_1168;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_534;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = llike_6_addr_reg_1184;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_522;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = llike_7_addr_reg_1189;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_534;
assign llike_7_we0 = llike_7_we0_local;
assign llike_8_address0 = zext_ln9_fu_943_p1;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_8_d0 = reg_522;
assign llike_8_we0 = llike_8_we0_local;
assign llike_9_address0 = zext_ln9_fu_943_p1;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_9_d0 = reg_534;
assign llike_9_we0 = llike_9_we0_local;
assign llike_address0 = zext_ln9_fu_943_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_522;
assign llike_we0 = llike_we0_local;
assign or_ln13_1_fu_646_p3 = {{tmp_8_cast_reg_988}, {2'd2}};
assign or_ln13_2_fu_675_p3 = {{tmp_8_cast_reg_988}, {2'd3}};
assign or_ln13_3_fu_733_p3 = {{tmp_133_fu_724_p4}, {3'd4}};
assign or_ln13_4_fu_767_p5 = {{{{tmp_133_fu_724_p4}, {1'd1}}, {tmp_12_fu_760_p3}}, {1'd1}};
assign or_ln13_5_fu_835_p3 = {{tmp_133_reg_1055}, {3'd6}};
assign or_ln13_6_fu_864_p3 = {{tmp_133_reg_1055}, {3'd7}};
assign or_ln14_1_fu_746_p4 = {{{tmp_133_fu_724_p4}, {1'd1}}, {obs_load}};
assign or_ln1_fu_608_p3 = {{tmp_s_fu_598_p4}, {1'd1}};
assign or_ln_fu_585_p3 = {{tmp_8_cast_fu_575_p4}, {obs_load}};
assign shl_ln14_1_fu_658_p3 = {{tmp_8_cast_reg_988}, {8'd128}};
assign shl_ln14_2_fu_687_p3 = {{tmp_8_cast_reg_988}, {8'd192}};
assign shl_ln14_3_fu_784_p5 = {{{{tmp_133_fu_724_p4}, {1'd1}}, {tmp_12_fu_760_p3}}, {7'd64}};
assign shl_ln14_4_fu_847_p3 = {{tmp_133_reg_1055}, {9'd384}};
assign shl_ln14_5_fu_876_p3 = {{tmp_133_reg_1055}, {9'd448}};
assign shl_ln_fu_621_p3 = {{tmp_s_fu_598_p4}, {7'd64}};
assign tmp_12_fu_760_p3 = s_1_reg_971[32'd1];
assign tmp_133_fu_724_p4 = {{s_1_reg_971[5:3]}};
assign tmp_8_cast_fu_575_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_fu_558_p3 = ap_sig_allocacmp_s_1[32'd6];
assign tmp_s_fu_598_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign trunc_ln13_fu_571_p1 = ap_sig_allocacmp_s_1[3:0];
assign zext_ln13_1_fu_566_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_546_p1 = zext_ln13;
assign zext_ln14_10_fu_779_p1 = or_ln13_4_fu_767_p5;
assign zext_ln14_11_fu_859_p1 = add_ln14_4_fu_854_p2;
assign zext_ln14_12_fu_842_p1 = or_ln13_5_fu_835_p3;
assign zext_ln14_13_fu_888_p1 = add_ln14_5_fu_883_p2;
assign zext_ln14_14_fu_871_p1 = or_ln13_6_fu_864_p3;
assign zext_ln14_1_fu_616_p1 = or_ln1_fu_608_p3;
assign zext_ln14_2_fu_635_p1 = add_ln14_fu_629_p2;
assign zext_ln14_3_fu_653_p1 = or_ln13_1_fu_646_p3;
assign zext_ln14_4_fu_670_p1 = add_ln14_1_fu_665_p2;
assign zext_ln14_5_fu_682_p1 = or_ln13_2_fu_675_p3;
assign zext_ln14_6_fu_699_p1 = add_ln14_2_fu_694_p2;
assign zext_ln14_7_fu_755_p1 = or_ln14_1_fu_746_p4;
assign zext_ln14_8_fu_741_p1 = or_ln13_3_fu_733_p3;
assign zext_ln14_9_fu_801_p1 = add_ln14_3_fu_796_p2;
assign zext_ln14_fu_593_p1 = or_ln_fu_585_p3;
assign zext_ln9_fu_943_p1 = lshr_ln9_reg_1083_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln13_cast_reg_962[11:8] <= 4'b0000;
    zext_ln9_reg_1168[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    llike_6_addr_reg_1184[9:2] <= 8'b00000000;
    llike_7_addr_reg_1189[9:2] <= 8'b00000000;
    llike_14_addr_reg_1194[9:2] <= 8'b00000000;
    llike_15_addr_reg_1199[9:2] <= 8'b00000000;
end
endmodule 