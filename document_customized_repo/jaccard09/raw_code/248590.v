module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v124_1_address0,v124_1_ce0,v124_1_q0,v124_2_address0,v124_2_ce0,v124_2_q0,v124_3_address0,v124_3_ce0,v124_3_q0,v124_4_address0,v124_4_ce0,v124_4_q0,v124_5_address0,v124_5_ce0,v124_5_q0,v124_6_address0,v124_6_ce0,v124_6_q0,v124_7_address0,v124_7_ce0,v124_7_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_address1,v116_4_ce1,v116_4_q1,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_address1,v116_5_ce1,v116_5_q1,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_q0,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_q0,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_opcode,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_opcode,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce); 
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
output  [2:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [2:0] v124_1_address0;
output   v124_1_ce0;
input  [31:0] v124_1_q0;
output  [2:0] v124_2_address0;
output   v124_2_ce0;
input  [31:0] v124_2_q0;
output  [2:0] v124_3_address0;
output   v124_3_ce0;
input  [31:0] v124_3_q0;
output  [2:0] v124_4_address0;
output   v124_4_ce0;
input  [31:0] v124_4_q0;
output  [2:0] v124_5_address0;
output   v124_5_ce0;
input  [31:0] v124_5_q0;
output  [2:0] v124_6_address0;
output   v124_6_ce0;
input  [31:0] v124_6_q0;
output  [2:0] v124_7_address0;
output   v124_7_ce0;
input  [31:0] v124_7_q0;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
output  [2:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [2:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [2:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [2:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [2:0] v116_4_address0;
output   v116_4_ce0;
output   v116_4_we0;
output  [31:0] v116_4_d0;
output  [2:0] v116_4_address1;
output   v116_4_ce1;
input  [31:0] v116_4_q1;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
output  [2:0] v116_5_address1;
output   v116_5_ce1;
input  [31:0] v116_5_q1;
output  [2:0] v116_6_address0;
output   v116_6_ce0;
output   v116_6_we0;
output  [31:0] v116_6_d0;
input  [31:0] v116_6_q0;
output  [2:0] v116_7_address0;
output   v116_7_ce0;
output   v116_7_we0;
output  [31:0] v116_7_d0;
input  [31:0] v116_7_q0;
output  [31:0] grp_fu_204_p_din0;
output  [31:0] grp_fu_204_p_din1;
output  [1:0] grp_fu_204_p_opcode;
input  [31:0] grp_fu_204_p_dout0;
output   grp_fu_204_p_ce;
output  [31:0] grp_fu_208_p_din0;
output  [31:0] grp_fu_208_p_din1;
output  [1:0] grp_fu_208_p_opcode;
input  [31:0] grp_fu_208_p_dout0;
output   grp_fu_208_p_ce;
output  [31:0] grp_fu_212_p_din0;
output  [31:0] grp_fu_212_p_din1;
input  [31:0] grp_fu_212_p_dout0;
output   grp_fu_212_p_ce;
output  [31:0] grp_fu_216_p_din0;
output  [31:0] grp_fu_216_p_din1;
input  [31:0] grp_fu_216_p_dout0;
output   grp_fu_216_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln27_reg_952;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_447;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_451;
reg   [31:0] reg_455;
reg   [31:0] reg_459;
wire   [0:0] icmp_ln27_fu_481_p2;
reg   [0:0] icmp_ln27_reg_952_pp0_iter1_reg;
reg   [0:0] icmp_ln27_reg_952_pp0_iter2_reg;
reg   [0:0] icmp_ln27_reg_952_pp0_iter3_reg;
reg   [6:0] v49_load_reg_956;
wire   [0:0] tmp_16_fu_505_p3;
reg   [0:0] tmp_16_reg_961;
wire   [5:0] trunc_ln33_fu_521_p1;
reg   [5:0] trunc_ln33_reg_966;
wire   [2:0] trunc_ln27_fu_525_p1;
reg   [2:0] trunc_ln27_reg_978;
wire   [6:0] select_ln26_fu_561_p3;
reg   [6:0] select_ln26_reg_1023;
wire   [31:0] v6_fu_574_p19;
reg   [31:0] v6_reg_1029;
reg   [2:0] lshr_ln3_reg_1039;
reg   [3:0] tmp_23_reg_1053;
wire   [0:0] trunc_ln46_fu_672_p1;
reg   [0:0] trunc_ln46_reg_1059;
wire   [1:0] trunc_ln60_fu_676_p1;
reg   [1:0] trunc_ln60_reg_1065;
reg   [0:0] tmp_17_reg_1070;
wire   [31:0] v3_fu_696_p3;
reg   [31:0] v3_reg_1075;
wire   [31:0] v10_fu_735_p1;
wire   [31:0] v16_fu_740_p1;
reg   [2:0] v116_0_addr_reg_1111;
reg   [2:0] v116_0_addr_reg_1111_pp0_iter2_reg;
reg   [2:0] v116_0_addr_reg_1111_pp0_iter3_reg;
wire   [31:0] v22_fu_796_p1;
wire   [31:0] v28_fu_801_p1;
reg   [2:0] v116_1_addr_reg_1136;
reg   [2:0] v116_1_addr_reg_1136_pp0_iter2_reg;
reg   [2:0] v116_1_addr_reg_1136_pp0_iter3_reg;
reg   [2:0] v116_2_addr_reg_1141;
reg   [2:0] v116_2_addr_reg_1141_pp0_iter2_reg;
reg   [2:0] v116_2_addr_reg_1141_pp0_iter3_reg;
reg   [2:0] v116_3_addr_reg_1146;
reg   [2:0] v116_3_addr_reg_1146_pp0_iter2_reg;
reg   [2:0] v116_3_addr_reg_1146_pp0_iter3_reg;
reg   [2:0] v116_4_addr_reg_1151;
reg   [2:0] v116_4_addr_reg_1151_pp0_iter2_reg;
reg   [2:0] v116_4_addr_reg_1151_pp0_iter3_reg;
reg   [2:0] v116_5_addr_reg_1157;
reg   [2:0] v116_5_addr_reg_1157_pp0_iter2_reg;
reg   [2:0] v116_5_addr_reg_1157_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_1163;
reg   [2:0] v116_6_addr_reg_1163_pp0_iter2_reg;
reg   [2:0] v116_6_addr_reg_1163_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_1163_pp0_iter4_reg;
reg   [2:0] v116_7_addr_reg_1168;
reg   [2:0] v116_7_addr_reg_1168_pp0_iter2_reg;
reg   [2:0] v116_7_addr_reg_1168_pp0_iter3_reg;
reg   [2:0] v116_7_addr_reg_1168_pp0_iter4_reg;
reg   [31:0] v116_0_load_reg_1173;
wire   [31:0] v34_fu_833_p1;
wire   [31:0] v40_fu_838_p1;
reg   [31:0] v116_1_load_reg_1188;
reg   [31:0] v116_2_load_reg_1193;
reg   [31:0] v116_3_load_reg_1198;
reg   [31:0] v116_4_load_reg_1203;
reg   [31:0] v116_5_load_reg_1208;
reg   [31:0] v11_reg_1213;
reg   [31:0] v17_reg_1218;
wire   [31:0] v46_fu_843_p1;
wire   [31:0] v52_fu_848_p1;
wire   [31:0] v9_fu_853_p1;
reg   [31:0] v23_reg_1238;
reg   [31:0] v29_reg_1243;
wire   [31:0] v15_1_fu_857_p1;
reg   [31:0] v35_reg_1253;
reg   [31:0] v41_reg_1258;
wire   [31:0] v21_fu_861_p1;
wire   [31:0] v27_fu_865_p1;
reg   [31:0] v47_reg_1273;
reg   [31:0] v53_reg_1278;
wire   [31:0] v33_fu_869_p1;
wire   [31:0] v39_fu_873_p1;
reg   [31:0] v116_6_load_reg_1293;
reg   [31:0] v116_7_load_reg_1298;
wire   [31:0] v45_fu_877_p1;
wire   [31:0] v51_fu_881_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln26_fu_539_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln33_1_fu_623_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln40_fu_657_p1;
wire   [63:0] zext_ln47_fu_712_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_fu_725_p1;
wire   [63:0] zext_ln61_fu_754_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln68_fu_770_p1;
wire   [63:0] zext_ln29_fu_785_p1;
wire   [63:0] zext_ln75_fu_815_p1;
wire   [63:0] zext_ln83_fu_828_p1;
reg   [31:0] v3_1_fu_128;
reg   [6:0] v49_fu_132;
wire   [6:0] add_ln28_fu_775_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_load;
reg   [6:0] v4_fu_136;
wire   [6:0] select_ln27_fu_513_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [9:0] indvar_flatten_fu_140;
wire   [9:0] add_ln27_1_fu_487_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v124_ce0_local;
reg    v124_1_ce0_local;
reg    v124_2_ce0_local;
reg    v124_3_ce0_local;
reg    v124_4_ce0_local;
reg    v124_5_ce0_local;
reg    v124_6_ce0_local;
reg    v124_7_ce0_local;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg    v116_0_ce0_local;
reg   [2:0] v116_0_address0_local;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln36_fu_885_p1;
reg    v116_1_ce0_local;
reg   [2:0] v116_1_address0_local;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_fu_890_p1;
reg    v116_2_ce0_local;
reg   [2:0] v116_2_address0_local;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_fu_895_p1;
reg    v116_3_ce0_local;
reg   [2:0] v116_3_address0_local;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_fu_900_p1;
reg    v116_4_ce1_local;
reg    v116_4_we0_local;
wire   [31:0] bitcast_ln64_fu_905_p1;
reg    v116_4_ce0_local;
reg    v116_5_ce1_local;
reg    v116_5_we0_local;
wire   [31:0] bitcast_ln71_fu_910_p1;
reg    v116_5_ce0_local;
reg    v116_6_ce0_local;
reg   [2:0] v116_6_address0_local;
reg    v116_6_we0_local;
wire   [31:0] bitcast_ln78_fu_915_p1;
reg    v116_7_ce0_local;
reg   [2:0] v116_7_address0_local;
reg    v116_7_we0_local;
wire   [31:0] bitcast_ln86_fu_920_p1;
reg   [31:0] grp_fu_431_p0;
reg   [31:0] grp_fu_431_p1;
reg   [31:0] grp_fu_435_p0;
reg   [31:0] grp_fu_435_p1;
reg   [31:0] grp_fu_439_p0;
reg   [31:0] grp_fu_443_p0;
wire   [6:0] add_ln27_fu_499_p2;
wire   [2:0] lshr_ln2_fu_529_p4;
wire   [31:0] v6_fu_574_p17;
wire   [11:0] tmp_fu_567_p3;
wire   [11:0] zext_ln33_fu_613_p1;
wire   [11:0] add_ln33_fu_617_p2;
wire   [4:0] tmp_s_fu_638_p4;
wire   [11:0] tmp_22_fu_648_p4;
wire   [0:0] icmp_ln31_fu_691_p2;
wire   [11:0] tmp_24_fu_703_p5;
wire   [11:0] tmp_25_fu_717_p4;
wire   [11:0] tmp_26_fu_745_p5;
wire   [11:0] tmp_27_fu_759_p6;
wire   [11:0] tmp_28_fu_806_p5;
wire   [11:0] tmp_29_fu_820_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage1;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire   [2:0] v6_fu_574_p1;
wire   [2:0] v6_fu_574_p3;
wire   [2:0] v6_fu_574_p5;
wire   [2:0] v6_fu_574_p7;
wire  signed [2:0] v6_fu_574_p9;
wire  signed [2:0] v6_fu_574_p11;
wire  signed [2:0] v6_fu_574_p13;
wire  signed [2:0] v6_fu_574_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_1_fu_128 = 32'd0;
#0 v49_fu_132 = 7'd0;
#0 v4_fu_136 = 7'd0;
#0 indvar_flatten_fu_140 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U40(.din0(v124_q0),.din1(v124_1_q0),.din2(v124_2_q0),.din3(v124_3_q0),.din4(v124_4_q0),.din5(v124_5_q0),.din6(v124_6_q0),.din7(v124_7_q0),.def(v6_fu_574_p17),.sel(trunc_ln27_reg_978),.dout(v6_fu_574_p19));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_481_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_140 <= add_ln27_1_fu_487_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_140 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_132 <= 7'd0;
    end else if (((icmp_ln27_reg_952 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v49_fu_132 <= add_ln28_fu_775_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_481_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v4_fu_136 <= select_ln27_fu_513_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_136 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_952 <= icmp_ln27_fu_481_p2;
        icmp_ln27_reg_952_pp0_iter1_reg <= icmp_ln27_reg_952;
        icmp_ln27_reg_952_pp0_iter2_reg <= icmp_ln27_reg_952_pp0_iter1_reg;
        icmp_ln27_reg_952_pp0_iter3_reg <= icmp_ln27_reg_952_pp0_iter2_reg;
        tmp_16_reg_961 <= ap_sig_allocacmp_v49_load[32'd6];
        trunc_ln27_reg_978 <= trunc_ln27_fu_525_p1;
        trunc_ln33_reg_966 <= trunc_ln33_fu_521_p1;
        v116_0_addr_reg_1111 <= zext_ln29_fu_785_p1;
        v116_0_addr_reg_1111_pp0_iter2_reg <= v116_0_addr_reg_1111;
        v116_0_addr_reg_1111_pp0_iter3_reg <= v116_0_addr_reg_1111_pp0_iter2_reg;
        v116_1_addr_reg_1136 <= zext_ln29_fu_785_p1;
        v116_1_addr_reg_1136_pp0_iter2_reg <= v116_1_addr_reg_1136;
        v116_1_addr_reg_1136_pp0_iter3_reg <= v116_1_addr_reg_1136_pp0_iter2_reg;
        v116_2_addr_reg_1141 <= zext_ln29_fu_785_p1;
        v116_2_addr_reg_1141_pp0_iter2_reg <= v116_2_addr_reg_1141;
        v116_2_addr_reg_1141_pp0_iter3_reg <= v116_2_addr_reg_1141_pp0_iter2_reg;
        v116_3_addr_reg_1146 <= zext_ln29_fu_785_p1;
        v116_3_addr_reg_1146_pp0_iter2_reg <= v116_3_addr_reg_1146;
        v116_3_addr_reg_1146_pp0_iter3_reg <= v116_3_addr_reg_1146_pp0_iter2_reg;
        v116_4_addr_reg_1151 <= zext_ln29_fu_785_p1;
        v116_4_addr_reg_1151_pp0_iter2_reg <= v116_4_addr_reg_1151;
        v116_4_addr_reg_1151_pp0_iter3_reg <= v116_4_addr_reg_1151_pp0_iter2_reg;
        v116_5_addr_reg_1157 <= zext_ln29_fu_785_p1;
        v116_5_addr_reg_1157_pp0_iter2_reg <= v116_5_addr_reg_1157;
        v116_5_addr_reg_1157_pp0_iter3_reg <= v116_5_addr_reg_1157_pp0_iter2_reg;
        v116_6_addr_reg_1163 <= zext_ln29_fu_785_p1;
        v116_6_addr_reg_1163_pp0_iter2_reg <= v116_6_addr_reg_1163;
        v116_6_addr_reg_1163_pp0_iter3_reg <= v116_6_addr_reg_1163_pp0_iter2_reg;
        v116_6_addr_reg_1163_pp0_iter4_reg <= v116_6_addr_reg_1163_pp0_iter3_reg;
        v116_7_addr_reg_1168 <= zext_ln29_fu_785_p1;
        v116_7_addr_reg_1168_pp0_iter2_reg <= v116_7_addr_reg_1168;
        v116_7_addr_reg_1168_pp0_iter3_reg <= v116_7_addr_reg_1168_pp0_iter2_reg;
        v116_7_addr_reg_1168_pp0_iter4_reg <= v116_7_addr_reg_1168_pp0_iter3_reg;
        v49_load_reg_956 <= ap_sig_allocacmp_v49_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln3_reg_1039 <= {{select_ln26_fu_561_p3[5:3]}};
        select_ln26_reg_1023 <= select_ln26_fu_561_p3;
        tmp_17_reg_1070 <= select_ln26_fu_561_p3[32'd1];
        tmp_23_reg_1053 <= {{select_ln26_fu_561_p3[5:2]}};
        trunc_ln46_reg_1059 <= trunc_ln46_fu_672_p1;
        trunc_ln60_reg_1065 <= trunc_ln60_fu_676_p1;
        v6_reg_1029 <= v6_fu_574_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_447 <= v113_q1;
        reg_451 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_455 <= grp_fu_204_p_dout0;
        reg_459 <= grp_fu_208_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_1173 <= v116_0_q0;
        v116_1_load_reg_1188 <= v116_1_q0;
        v116_2_load_reg_1193 <= v116_2_q0;
        v116_3_load_reg_1198 <= v116_3_q0;
        v116_4_load_reg_1203 <= v116_4_q1;
        v116_5_load_reg_1208 <= v116_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_load_reg_1293 <= v116_6_q0;
        v116_7_load_reg_1298 <= v116_7_q0;
        v47_reg_1273 <= grp_fu_212_p_dout0;
        v53_reg_1278 <= grp_fu_216_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v11_reg_1213 <= grp_fu_212_p_dout0;
        v17_reg_1218 <= grp_fu_216_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v23_reg_1238 <= grp_fu_212_p_dout0;
        v29_reg_1243 <= grp_fu_216_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_1253 <= grp_fu_212_p_dout0;
        v41_reg_1258 <= grp_fu_216_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_952 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_fu_128 <= v3_fu_696_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_reg_1075 <= v3_fu_696_p3;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_952 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln27_reg_952_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_140;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_load = v49_fu_132;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_431_p0 = v45_fu_877_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_431_p0 = v33_fu_869_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_431_p0 = v21_fu_861_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_431_p0 = v9_fu_853_p1;
    end else begin
        grp_fu_431_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_431_p1 = v47_reg_1273;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_431_p1 = v35_reg_1253;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_431_p1 = v23_reg_1238;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_431_p1 = v11_reg_1213;
    end else begin
        grp_fu_431_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_435_p0 = v51_fu_881_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_435_p0 = v39_fu_873_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_435_p0 = v27_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_435_p0 = v15_1_fu_857_p1;
    end else begin
        grp_fu_435_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_435_p1 = v53_reg_1278;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_435_p1 = v41_reg_1258;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_435_p1 = v29_reg_1243;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_435_p1 = v17_reg_1218;
    end else begin
        grp_fu_435_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_439_p0 = v46_fu_843_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_439_p0 = v34_fu_833_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_439_p0 = v22_fu_796_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_439_p0 = v10_fu_735_p1;
    end else begin
        grp_fu_439_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_443_p0 = v52_fu_848_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_443_p0 = v40_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_443_p0 = v28_fu_801_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_443_p0 = v16_fu_740_p1;
    end else begin
        grp_fu_443_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address0_local = zext_ln83_fu_828_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address0_local = zext_ln68_fu_770_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address0_local = zext_ln54_fu_725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address0_local = zext_ln40_fu_657_p1;
    end else begin
        v113_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address1_local = zext_ln75_fu_815_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address1_local = zext_ln61_fu_754_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address1_local = zext_ln47_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address1_local = zext_ln33_1_fu_623_p1;
    end else begin
        v113_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce0_local = 1'b1;
    end else begin
        v113_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce1_local = 1'b1;
    end else begin
        v113_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_reg_1111_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln29_fu_785_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_reg_1136_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln29_fu_785_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_address0_local = v116_2_addr_reg_1141_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln29_fu_785_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_address0_local = v116_3_addr_reg_1146_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln29_fu_785_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_ce0_local = 1'b1;
    end else begin
        v116_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_ce1_local = 1'b1;
    end else begin
        v116_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_we0_local = 1'b1;
    end else begin
        v116_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_ce0_local = 1'b1;
    end else begin
        v116_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_ce1_local = 1'b1;
    end else begin
        v116_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_we0_local = 1'b1;
    end else begin
        v116_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_address0_local = v116_6_addr_reg_1163_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_address0_local = v116_6_addr_reg_1163;
    end else begin
        v116_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_6_ce0_local = 1'b1;
    end else begin
        v116_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_we0_local = 1'b1;
    end else begin
        v116_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_7_address0_local = v116_7_addr_reg_1168_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_address0_local = v116_7_addr_reg_1168;
    end else begin
        v116_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_7_ce0_local = 1'b1;
    end else begin
        v116_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_7_we0_local = 1'b1;
    end else begin
        v116_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_1_ce0_local = 1'b1;
    end else begin
        v124_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_2_ce0_local = 1'b1;
    end else begin
        v124_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_3_ce0_local = 1'b1;
    end else begin
        v124_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_4_ce0_local = 1'b1;
    end else begin
        v124_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_5_ce0_local = 1'b1;
    end else begin
        v124_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_6_ce0_local = 1'b1;
    end else begin
        v124_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_7_ce0_local = 1'b1;
    end else begin
        v124_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_ce0_local = 1'b1;
    end else begin
        v124_ce0_local = 1'b0;
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
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
assign add_ln27_1_fu_487_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_499_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_775_p2 = (select_ln26_reg_1023 + 7'd8);
assign add_ln33_fu_617_p2 = (tmp_fu_567_p3 + zext_ln33_fu_613_p1);
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
assign bitcast_ln36_fu_885_p1 = reg_455;
assign bitcast_ln43_fu_890_p1 = reg_459;
assign bitcast_ln50_fu_895_p1 = reg_455;
assign bitcast_ln57_fu_900_p1 = reg_459;
assign bitcast_ln64_fu_905_p1 = reg_455;
assign bitcast_ln71_fu_910_p1 = reg_459;
assign bitcast_ln78_fu_915_p1 = reg_455;
assign bitcast_ln86_fu_920_p1 = reg_459;
assign grp_fu_204_p_ce = 1'b1;
assign grp_fu_204_p_din0 = grp_fu_431_p0;
assign grp_fu_204_p_din1 = grp_fu_431_p1;
assign grp_fu_204_p_opcode = 2'd0;
assign grp_fu_208_p_ce = 1'b1;
assign grp_fu_208_p_din0 = grp_fu_435_p0;
assign grp_fu_208_p_din1 = grp_fu_435_p1;
assign grp_fu_208_p_opcode = 2'd0;
assign grp_fu_212_p_ce = 1'b1;
assign grp_fu_212_p_din0 = grp_fu_439_p0;
assign grp_fu_212_p_din1 = v3_reg_1075;
assign grp_fu_216_p_ce = 1'b1;
assign grp_fu_216_p_din0 = grp_fu_443_p0;
assign grp_fu_216_p_din1 = v3_reg_1075;
assign icmp_ln27_fu_481_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_691_p2 = ((select_ln26_reg_1023 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_529_p4 = {{select_ln27_fu_513_p3[5:3]}};
assign select_ln26_fu_561_p3 = ((tmp_16_reg_961[0:0] == 1'b1) ? 7'd0 : v49_load_reg_956);
assign select_ln27_fu_513_p3 = ((tmp_16_fu_505_p3[0:0] == 1'b1) ? add_ln27_fu_499_p2 : ap_sig_allocacmp_v4_load);
assign tmp_16_fu_505_p3 = ap_sig_allocacmp_v49_load[32'd6];
assign tmp_22_fu_648_p4 = {{{trunc_ln33_reg_966}, {tmp_s_fu_638_p4}}, {1'd1}};
assign tmp_24_fu_703_p5 = {{{{trunc_ln33_reg_966}, {tmp_23_reg_1053}}, {1'd1}}, {trunc_ln46_reg_1059}};
assign tmp_25_fu_717_p4 = {{{trunc_ln33_reg_966}, {tmp_23_reg_1053}}, {2'd3}};
assign tmp_26_fu_745_p5 = {{{{trunc_ln33_reg_966}, {lshr_ln3_reg_1039}}, {1'd1}}, {trunc_ln60_reg_1065}};
assign tmp_27_fu_759_p6 = {{{{{trunc_ln33_reg_966}, {lshr_ln3_reg_1039}}, {1'd1}}, {tmp_17_reg_1070}}, {1'd1}};
assign tmp_28_fu_806_p5 = {{{{trunc_ln33_reg_966}, {lshr_ln3_reg_1039}}, {2'd3}}, {trunc_ln46_reg_1059}};
assign tmp_29_fu_820_p4 = {{{trunc_ln33_reg_966}, {lshr_ln3_reg_1039}}, {3'd7}};
assign tmp_fu_567_p3 = {{trunc_ln33_reg_966}, {6'd0}};
assign tmp_s_fu_638_p4 = {{select_ln26_fu_561_p3[5:1]}};
assign trunc_ln27_fu_525_p1 = select_ln27_fu_513_p3[2:0];
assign trunc_ln33_fu_521_p1 = select_ln27_fu_513_p3[5:0];
assign trunc_ln46_fu_672_p1 = select_ln26_fu_561_p3[0:0];
assign trunc_ln60_fu_676_p1 = select_ln26_fu_561_p3[1:0];
assign v10_fu_735_p1 = reg_447;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_d0 = bitcast_ln36_fu_885_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_d0 = bitcast_ln43_fu_890_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_d0 = bitcast_ln50_fu_895_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_d0 = bitcast_ln57_fu_900_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_4_address0 = v116_4_addr_reg_1151_pp0_iter3_reg;
assign v116_4_address1 = zext_ln29_fu_785_p1;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_ce1 = v116_4_ce1_local;
assign v116_4_d0 = bitcast_ln64_fu_905_p1;
assign v116_4_we0 = v116_4_we0_local;
assign v116_5_address0 = v116_5_addr_reg_1157_pp0_iter3_reg;
assign v116_5_address1 = zext_ln29_fu_785_p1;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_ce1 = v116_5_ce1_local;
assign v116_5_d0 = bitcast_ln71_fu_910_p1;
assign v116_5_we0 = v116_5_we0_local;
assign v116_6_address0 = v116_6_address0_local;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_d0 = bitcast_ln78_fu_915_p1;
assign v116_6_we0 = v116_6_we0_local;
assign v116_7_address0 = v116_7_address0_local;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_d0 = bitcast_ln86_fu_920_p1;
assign v116_7_we0 = v116_7_we0_local;
assign v124_1_address0 = zext_ln26_fu_539_p1;
assign v124_1_ce0 = v124_1_ce0_local;
assign v124_2_address0 = zext_ln26_fu_539_p1;
assign v124_2_ce0 = v124_2_ce0_local;
assign v124_3_address0 = zext_ln26_fu_539_p1;
assign v124_3_ce0 = v124_3_ce0_local;
assign v124_4_address0 = zext_ln26_fu_539_p1;
assign v124_4_ce0 = v124_4_ce0_local;
assign v124_5_address0 = zext_ln26_fu_539_p1;
assign v124_5_ce0 = v124_5_ce0_local;
assign v124_6_address0 = zext_ln26_fu_539_p1;
assign v124_6_ce0 = v124_6_ce0_local;
assign v124_7_address0 = zext_ln26_fu_539_p1;
assign v124_7_ce0 = v124_7_ce0_local;
assign v124_address0 = zext_ln26_fu_539_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_1_fu_857_p1 = v116_1_load_reg_1188;
assign v16_fu_740_p1 = reg_451;
assign v21_fu_861_p1 = v116_2_load_reg_1193;
assign v22_fu_796_p1 = reg_447;
assign v27_fu_865_p1 = v116_3_load_reg_1198;
assign v28_fu_801_p1 = reg_451;
assign v33_fu_869_p1 = v116_4_load_reg_1203;
assign v34_fu_833_p1 = reg_447;
assign v39_fu_873_p1 = v116_5_load_reg_1208;
assign v3_fu_696_p3 = ((icmp_ln31_fu_691_p2[0:0] == 1'b1) ? v6_reg_1029 : v3_1_fu_128);
assign v40_fu_838_p1 = reg_451;
assign v45_fu_877_p1 = v116_6_load_reg_1293;
assign v46_fu_843_p1 = reg_447;
assign v51_fu_881_p1 = v116_7_load_reg_1298;
assign v52_fu_848_p1 = reg_451;
assign v6_fu_574_p17 = 'bx;
assign v9_fu_853_p1 = v116_0_load_reg_1173;
assign zext_ln26_fu_539_p1 = lshr_ln2_fu_529_p4;
assign zext_ln29_fu_785_p1 = lshr_ln3_reg_1039;
assign zext_ln33_1_fu_623_p1 = add_ln33_fu_617_p2;
assign zext_ln33_fu_613_p1 = select_ln26_fu_561_p3;
assign zext_ln40_fu_657_p1 = tmp_22_fu_648_p4;
assign zext_ln47_fu_712_p1 = tmp_24_fu_703_p5;
assign zext_ln54_fu_725_p1 = tmp_25_fu_717_p4;
assign zext_ln61_fu_754_p1 = tmp_26_fu_745_p5;
assign zext_ln68_fu_770_p1 = tmp_27_fu_759_p6;
assign zext_ln75_fu_815_p1 = tmp_28_fu_806_p5;
assign zext_ln83_fu_828_p1 = tmp_29_fu_820_p4;
endmodule 