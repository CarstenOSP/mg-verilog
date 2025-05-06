
module SgdLR_sw_SgdLR_sw_Pipeline_label_311 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_3_address1,v3_3_ce1,v3_3_we1,v3_3_d1,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_2_address1,v3_2_ce1,v3_2_we1,v3_2_d1,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_1_address1,v3_1_ce1,v3_1_we1,v3_1_d1,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,v5,tmp_140,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,v22_4,grp_fu_9375_p_din0,grp_fu_9375_p_din1,grp_fu_9375_p_dout0,grp_fu_9375_p_ce,grp_fu_9379_p_din0,grp_fu_9379_p_din1,grp_fu_9379_p_dout0,grp_fu_9379_p_ce);  
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
output  [7:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [31:0] v3_3_d0;
output  [7:0] v3_3_address1;
output   v3_3_ce1;
output   v3_3_we1;
output  [31:0] v3_3_d1;
output  [7:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [31:0] v3_2_d0;
output  [7:0] v3_2_address1;
output   v3_2_ce1;
output   v3_2_we1;
output  [31:0] v3_2_d1;
output  [7:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [7:0] v3_1_address1;
output   v3_1_ce1;
output   v3_1_we1;
output  [31:0] v3_1_d1;
output  [7:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [7:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
input  [1:0] v5;
input  [9:0] tmp_140;
output  [22:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
output  [22:0] v0_address1;
output   v0_ce1;
input  [31:0] v0_q1;
input  [31:0] v22_4;
output  [31:0] grp_fu_9375_p_din0;
output  [31:0] grp_fu_9375_p_din1;
input  [31:0] grp_fu_9375_p_dout0;
output   grp_fu_9375_p_ce;
output  [31:0] grp_fu_9379_p_din0;
output  [31:0] grp_fu_9379_p_din1;
input  [31:0] grp_fu_9379_p_dout0;
output   grp_fu_9379_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_970;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_507;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_511;
reg   [31:0] reg_515;
reg   [31:0] reg_523;
reg   [10:0] v19_reg_958;
reg   [10:0] v19_reg_958_pp0_iter1_reg;
reg   [0:0] tmp_reg_970_pp0_iter1_reg;
reg   [1:0] trunc_ln48_4_reg_974;
reg   [1:0] trunc_ln48_4_reg_974_pp0_iter1_reg;
reg   [1:0] trunc_ln48_4_reg_974_pp0_iter2_reg;
wire   [31:0] v23_fu_654_p1;
wire   [31:0] v23_213_fu_659_p1;
wire   [6:0] tmp_155_fu_664_p4;
reg   [6:0] tmp_155_reg_1008;
wire   [0:0] tmp_102_fu_689_p3;
reg   [0:0] tmp_102_reg_1019;
reg   [0:0] tmp_102_reg_1019_pp0_iter1_reg;
wire   [31:0] v23_214_fu_716_p1;
wire   [31:0] v23_215_fu_721_p1;
wire   [31:0] v23_216_fu_766_p1;
wire   [31:0] v23_217_fu_771_p1;
wire   [31:0] v23_218_fu_776_p1;
wire   [31:0] v23_219_fu_781_p1;
reg   [4:0] tmp_153_reg_1069;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln51_60_fu_581_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_62_fu_608_p1;
wire   [63:0] zext_ln51_64_fu_633_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_66_fu_649_p1;
wire   [63:0] zext_ln51_68_fu_684_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln51_70_fu_711_p1;
wire   [63:0] zext_ln51_72_fu_736_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln51_74_fu_751_p1;
wire   [63:0] zext_ln48_fu_789_p1;
wire   [63:0] zext_ln51_61_fu_814_p1;
wire   [63:0] zext_ln51_63_fu_839_p1;
wire   [63:0] zext_ln51_65_fu_855_p1;
wire   [63:0] zext_ln51_67_fu_879_p1;
wire   [63:0] zext_ln51_69_fu_897_p1;
wire   [63:0] zext_ln51_71_fu_912_p1;
wire   [63:0] zext_ln51_73_fu_927_p1;
reg   [10:0] v19_4_fu_112;
wire   [10:0] add_ln47_fu_756_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19;
reg    v0_ce1_local;
reg   [22:0] v0_address1_local;
reg    v0_ce0_local;
reg   [22:0] v0_address0_local;
reg    v3_2_we1_local;
reg    v3_2_ce1_local;
reg   [7:0] v3_2_address1_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg   [7:0] v3_2_address0_local;
reg    v3_1_we1_local;
reg    v3_1_ce1_local;
reg   [7:0] v3_1_address1_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg   [7:0] v3_1_address0_local;
reg    v3_we1_local;
reg    v3_ce1_local;
reg   [7:0] v3_address1_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg   [7:0] v3_address0_local;
reg    v3_3_we1_local;
reg    v3_3_ce1_local;
reg   [7:0] v3_3_address1_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg   [7:0] v3_3_address0_local;
reg   [31:0] grp_fu_499_p1;
reg   [31:0] grp_fu_503_p1;
wire   [63:0] v5_cast_fu_531_p1;
wire   [0:0] tmp_101_fu_561_p3;
wire   [22:0] add_ln51_30_fu_569_p5;
wire   [8:0] tmp_146_fu_586_p4;
wire   [22:0] add_ln51_31_fu_596_p5;
wire   [7:0] tmp_149_fu_613_p4;
wire   [22:0] add_ln51_32_fu_622_p5;
wire   [22:0] add_ln51_33_fu_638_p5;
wire   [22:0] add_ln51_34_fu_673_p5;
wire   [22:0] add_ln51_35_fu_696_p7;
wire   [22:0] add_ln51_36_fu_726_p5;
wire   [22:0] add_ln51_37_fu_741_p5;
wire   [7:0] trunc_ln47_fu_786_p1;
wire   [6:0] tmp_145_fu_797_p4;
wire   [7:0] or_ln48_27_fu_806_p3;
wire   [5:0] tmp_147_fu_822_p4;
wire   [7:0] or_ln48_28_fu_831_p3;
wire   [7:0] or_ln48_29_fu_847_p3;
wire   [7:0] or_ln48_30_fu_872_p3;
wire   [7:0] or_ln48_31_fu_887_p5;
wire   [7:0] or_ln48_32_fu_905_p3;
wire   [7:0] or_ln48_33_fu_920_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v19_4_fu_112 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_4_fu_112 <= 11'd0;
    end else if (((tmp_reg_970 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v19_4_fu_112 <= add_ln47_fu_756_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_507 <= v0_q1;
        reg_511 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_515 <= grp_fu_9375_p_dout0;
        reg_523 <= grp_fu_9379_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_102_reg_1019 <= v19_reg_958[32'd1];
        tmp_102_reg_1019_pp0_iter1_reg <= tmp_102_reg_1019;
        tmp_155_reg_1008 <= {{v19_reg_958[9:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_153_reg_1069 <= {{v19_reg_958_pp0_iter1_reg[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_970 <= ap_sig_allocacmp_v19[32'd10];
        tmp_reg_970_pp0_iter1_reg <= tmp_reg_970;
        trunc_ln48_4_reg_974 <= {{ap_sig_allocacmp_v19[9:8]}};
        trunc_ln48_4_reg_974_pp0_iter1_reg <= trunc_ln48_4_reg_974;
        trunc_ln48_4_reg_974_pp0_iter2_reg <= trunc_ln48_4_reg_974_pp0_iter1_reg;
        v19_reg_958 <= ap_sig_allocacmp_v19;
        v19_reg_958_pp0_iter1_reg <= v19_reg_958;
    end
end
always @ (*) begin
    if (((tmp_reg_970 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_970_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19 = v19_4_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_499_p1 = v23_218_fu_776_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_499_p1 = v23_216_fu_766_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_499_p1 = v23_214_fu_716_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_499_p1 = v23_fu_654_p1;
    end else begin
        grp_fu_499_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_503_p1 = v23_219_fu_781_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_503_p1 = v23_217_fu_771_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_503_p1 = v23_215_fu_721_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_503_p1 = v23_213_fu_659_p1;
    end else begin
        grp_fu_503_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v0_address0_local = zext_ln51_74_fu_751_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v0_address0_local = zext_ln51_70_fu_711_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address0_local = zext_ln51_66_fu_649_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address0_local = zext_ln51_62_fu_608_p1;
        end else begin
            v0_address0_local = 'bx;
        end
    end else begin
        v0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v0_address1_local = zext_ln51_72_fu_736_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v0_address1_local = zext_ln51_68_fu_684_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address1_local = zext_ln51_64_fu_633_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address1_local = zext_ln51_60_fu_581_p1;
        end else begin
            v0_address1_local = 'bx;
        end
    end else begin
        v0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce1_local = 1'b1;
    end else begin
        v0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_1_address0_local = zext_ln51_73_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_address0_local = zext_ln51_69_fu_897_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_1_address0_local = zext_ln51_65_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_address0_local = zext_ln51_61_fu_814_p1;
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_1_address1_local = zext_ln51_71_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_address1_local = zext_ln51_67_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_1_address1_local = zext_ln51_63_fu_839_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_address1_local = zext_ln48_fu_789_p1;
    end else begin
        v3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln48_4_reg_974_pp0_iter2_reg == 2'd1)))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln48_4_reg_974_pp0_iter2_reg == 2'd1)))) begin
        v3_1_we1_local = 1'b1;
    end else begin
        v3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_2_address0_local = zext_ln51_73_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_address0_local = zext_ln51_69_fu_897_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_2_address0_local = zext_ln51_65_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_2_address0_local = zext_ln51_61_fu_814_p1;
    end else begin
        v3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_2_address1_local = zext_ln51_71_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_address1_local = zext_ln51_67_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_2_address1_local = zext_ln51_63_fu_839_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_2_address1_local = zext_ln48_fu_789_p1;
    end else begin
        v3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_2_ce1_local = 1'b1;
    end else begin
        v3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln48_4_reg_974_pp0_iter2_reg == 2'd2)))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln48_4_reg_974_pp0_iter2_reg == 2'd2)))) begin
        v3_2_we1_local = 1'b1;
    end else begin
        v3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_3_address0_local = zext_ln51_73_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_address0_local = zext_ln51_69_fu_897_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_3_address0_local = zext_ln51_65_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_3_address0_local = zext_ln51_61_fu_814_p1;
    end else begin
        v3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_3_address1_local = zext_ln51_71_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_address1_local = zext_ln51_67_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_3_address1_local = zext_ln51_63_fu_839_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_3_address1_local = zext_ln48_fu_789_p1;
    end else begin
        v3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_3_ce1_local = 1'b1;
    end else begin
        v3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln48_4_reg_974_pp0_iter2_reg == 2'd3)))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln48_4_reg_974_pp0_iter2_reg == 2'd3)))) begin
        v3_3_we1_local = 1'b1;
    end else begin
        v3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_address0_local = zext_ln51_73_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_address0_local = zext_ln51_69_fu_897_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_address0_local = zext_ln51_65_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_address0_local = zext_ln51_61_fu_814_p1;
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_address1_local = zext_ln51_71_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_address1_local = zext_ln51_67_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_address1_local = zext_ln51_63_fu_839_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_address1_local = zext_ln48_fu_789_p1;
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln48_4_reg_974_pp0_iter2_reg == 2'd0)))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln48_4_reg_974_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln48_4_reg_974_pp0_iter2_reg == 2'd0)))) begin
        v3_we1_local = 1'b1;
    end else begin
        v3_we1_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
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
assign add_ln47_fu_756_p2 = (v19_reg_958 + 11'd8);
assign add_ln51_30_fu_569_p5 = {{{{tmp_140}, {1'd1}}, {tmp_101_fu_561_p3}}, {ap_sig_allocacmp_v19}};
assign add_ln51_31_fu_596_p5 = {{{{tmp_140}, {3'd4}}, {tmp_146_fu_586_p4}}, {1'd1}};
assign add_ln51_32_fu_622_p5 = {{{{tmp_140}, {3'd4}}, {tmp_149_fu_613_p4}}, {2'd2}};
assign add_ln51_33_fu_638_p5 = {{{{tmp_140}, {3'd4}}, {tmp_149_fu_613_p4}}, {2'd3}};
assign add_ln51_34_fu_673_p5 = {{{{tmp_140}, {3'd4}}, {tmp_155_fu_664_p4}}, {3'd4}};
assign add_ln51_35_fu_696_p7 = {{{{{{tmp_140}, {3'd4}}, {tmp_155_fu_664_p4}}, {1'd1}}, {tmp_102_fu_689_p3}}, {1'd1}};
assign add_ln51_36_fu_726_p5 = {{{{tmp_140}, {3'd4}}, {tmp_155_reg_1008}}, {3'd6}};
assign add_ln51_37_fu_741_p5 = {{{{tmp_140}, {3'd4}}, {tmp_155_reg_1008}}, {3'd7}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_9375_p_ce = 1'b1;
assign grp_fu_9375_p_din0 = v22_4;
assign grp_fu_9375_p_din1 = grp_fu_499_p1;
assign grp_fu_9379_p_ce = 1'b1;
assign grp_fu_9379_p_din0 = v22_4;
assign grp_fu_9379_p_din1 = grp_fu_503_p1;
assign or_ln48_27_fu_806_p3 = {{tmp_145_fu_797_p4}, {1'd1}};
assign or_ln48_28_fu_831_p3 = {{tmp_147_fu_822_p4}, {2'd2}};
assign or_ln48_29_fu_847_p3 = {{tmp_147_fu_822_p4}, {2'd3}};
assign or_ln48_30_fu_872_p3 = {{tmp_153_reg_1069}, {3'd4}};
assign or_ln48_31_fu_887_p5 = {{{{tmp_153_reg_1069}, {1'd1}}, {tmp_102_reg_1019_pp0_iter1_reg}}, {1'd1}};
assign or_ln48_32_fu_905_p3 = {{tmp_153_reg_1069}, {3'd6}};
assign or_ln48_33_fu_920_p3 = {{tmp_153_reg_1069}, {3'd7}};
assign tmp_101_fu_561_p3 = v5_cast_fu_531_p1[32'd1];
assign tmp_102_fu_689_p3 = v19_reg_958[32'd1];
assign tmp_145_fu_797_p4 = {{v19_reg_958_pp0_iter1_reg[7:1]}};
assign tmp_146_fu_586_p4 = {{ap_sig_allocacmp_v19[9:1]}};
assign tmp_147_fu_822_p4 = {{v19_reg_958_pp0_iter1_reg[7:2]}};
assign tmp_149_fu_613_p4 = {{v19_reg_958[9:2]}};
assign tmp_155_fu_664_p4 = {{v19_reg_958[9:3]}};
assign trunc_ln47_fu_786_p1 = v19_reg_958_pp0_iter1_reg[7:0];
assign v0_address0 = v0_address0_local;
assign v0_address1 = v0_address1_local;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v23_213_fu_659_p1 = reg_511;
assign v23_214_fu_716_p1 = reg_507;
assign v23_215_fu_721_p1 = reg_511;
assign v23_216_fu_766_p1 = reg_507;
assign v23_217_fu_771_p1 = reg_511;
assign v23_218_fu_776_p1 = reg_507;
assign v23_219_fu_781_p1 = reg_511;
assign v23_fu_654_p1 = reg_507;
assign v3_1_address0 = v3_1_address0_local;
assign v3_1_address1 = v3_1_address1_local;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_1_d0 = reg_523;
assign v3_1_d1 = reg_515;
assign v3_1_we0 = v3_1_we0_local;
assign v3_1_we1 = v3_1_we1_local;
assign v3_2_address0 = v3_2_address0_local;
assign v3_2_address1 = v3_2_address1_local;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_ce1 = v3_2_ce1_local;
assign v3_2_d0 = reg_523;
assign v3_2_d1 = reg_515;
assign v3_2_we0 = v3_2_we0_local;
assign v3_2_we1 = v3_2_we1_local;
assign v3_3_address0 = v3_3_address0_local;
assign v3_3_address1 = v3_3_address1_local;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_ce1 = v3_3_ce1_local;
assign v3_3_d0 = reg_523;
assign v3_3_d1 = reg_515;
assign v3_3_we0 = v3_3_we0_local;
assign v3_3_we1 = v3_3_we1_local;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = reg_523;
assign v3_d1 = reg_515;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign v5_cast_fu_531_p1 = v5;
assign zext_ln48_fu_789_p1 = trunc_ln47_fu_786_p1;
assign zext_ln51_60_fu_581_p1 = add_ln51_30_fu_569_p5;
assign zext_ln51_61_fu_814_p1 = or_ln48_27_fu_806_p3;
assign zext_ln51_62_fu_608_p1 = add_ln51_31_fu_596_p5;
assign zext_ln51_63_fu_839_p1 = or_ln48_28_fu_831_p3;
assign zext_ln51_64_fu_633_p1 = add_ln51_32_fu_622_p5;
assign zext_ln51_65_fu_855_p1 = or_ln48_29_fu_847_p3;
assign zext_ln51_66_fu_649_p1 = add_ln51_33_fu_638_p5;
assign zext_ln51_67_fu_879_p1 = or_ln48_30_fu_872_p3;
assign zext_ln51_68_fu_684_p1 = add_ln51_34_fu_673_p5;
assign zext_ln51_69_fu_897_p1 = or_ln48_31_fu_887_p5;
assign zext_ln51_70_fu_711_p1 = add_ln51_35_fu_696_p7;
assign zext_ln51_71_fu_912_p1 = or_ln48_32_fu_905_p3;
assign zext_ln51_72_fu_736_p1 = add_ln51_36_fu_726_p5;
assign zext_ln51_73_fu_927_p1 = or_ln48_33_fu_920_p3;
assign zext_ln51_74_fu_751_p1 = add_ln51_37_fu_741_p5;
endmodule 
