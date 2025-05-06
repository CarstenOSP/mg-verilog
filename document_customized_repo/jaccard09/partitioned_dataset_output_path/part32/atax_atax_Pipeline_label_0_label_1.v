
module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v124_1_address0,v124_1_ce0,v124_1_q0,v124_2_address0,v124_2_ce0,v124_2_q0,v124_3_address0,v124_3_ce0,v124_3_q0,v124_4_address0,v124_4_ce0,v124_4_q0,v124_5_address0,v124_5_ce0,v124_5_q0,v124_6_address0,v124_6_ce0,v124_6_q0,v124_7_address0,v124_7_ce0,v124_7_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v113_2_address0,v113_2_ce0,v113_2_q0,v113_2_address1,v113_2_ce1,v113_2_q1,v113_3_address0,v113_3_ce0,v113_3_q0,v113_3_address1,v113_3_ce1,v113_3_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_address1,v116_0_ce1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_address1,v116_1_ce1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_address1,v116_2_ce1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_address1,v116_3_ce1,v116_3_q1,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_q0,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_q0,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_q0,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_q0,grp_fu_158_p_din0,grp_fu_158_p_din1,grp_fu_158_p_opcode,grp_fu_158_p_dout0,grp_fu_158_p_ce,grp_fu_162_p_din0,grp_fu_162_p_din1,grp_fu_162_p_opcode,grp_fu_162_p_dout0,grp_fu_162_p_ce,grp_fu_166_p_din0,grp_fu_166_p_din1,grp_fu_166_p_dout0,grp_fu_166_p_ce,grp_fu_170_p_din0,grp_fu_170_p_din1,grp_fu_170_p_dout0,grp_fu_170_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
output  [9:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [9:0] v113_0_address1;
output   v113_0_ce1;
input  [31:0] v113_0_q1;
output  [9:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [9:0] v113_1_address1;
output   v113_1_ce1;
input  [31:0] v113_1_q1;
output  [9:0] v113_2_address0;
output   v113_2_ce0;
input  [31:0] v113_2_q0;
output  [9:0] v113_2_address1;
output   v113_2_ce1;
input  [31:0] v113_2_q1;
output  [9:0] v113_3_address0;
output   v113_3_ce0;
input  [31:0] v113_3_q0;
output  [9:0] v113_3_address1;
output   v113_3_ce1;
input  [31:0] v113_3_q1;
output  [2:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
output  [2:0] v116_0_address1;
output   v116_0_ce1;
input  [31:0] v116_0_q1;
output  [2:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
output  [2:0] v116_1_address1;
output   v116_1_ce1;
input  [31:0] v116_1_q1;
output  [2:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
output  [2:0] v116_2_address1;
output   v116_2_ce1;
input  [31:0] v116_2_q1;
output  [2:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
output  [2:0] v116_3_address1;
output   v116_3_ce1;
input  [31:0] v116_3_q1;
output  [2:0] v116_4_address0;
output   v116_4_ce0;
output   v116_4_we0;
output  [31:0] v116_4_d0;
input  [31:0] v116_4_q0;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
input  [31:0] v116_5_q0;
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
output  [31:0] grp_fu_158_p_din0;
output  [31:0] grp_fu_158_p_din1;
output  [1:0] grp_fu_158_p_opcode;
input  [31:0] grp_fu_158_p_dout0;
output   grp_fu_158_p_ce;
output  [31:0] grp_fu_162_p_din0;
output  [31:0] grp_fu_162_p_din1;
output  [1:0] grp_fu_162_p_opcode;
input  [31:0] grp_fu_162_p_dout0;
output   grp_fu_162_p_ce;
output  [31:0] grp_fu_166_p_din0;
output  [31:0] grp_fu_166_p_din1;
input  [31:0] grp_fu_166_p_dout0;
output   grp_fu_166_p_ce;
output  [31:0] grp_fu_170_p_din0;
output  [31:0] grp_fu_170_p_din1;
input  [31:0] grp_fu_170_p_dout0;
output   grp_fu_170_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln27_reg_868;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_484;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_488;
wire   [31:0] grp_fu_460_p2;
reg   [31:0] reg_492;
wire   [31:0] grp_fu_464_p2;
reg   [31:0] reg_496;
wire   [0:0] icmp_ln27_fu_518_p2;
reg   [6:0] v49_load_reg_872;
wire   [0:0] tmp_5_fu_542_p3;
reg   [0:0] tmp_5_reg_877;
wire   [5:0] trunc_ln27_fu_558_p1;
reg   [5:0] trunc_ln27_reg_882;
wire   [2:0] trunc_ln27_1_fu_562_p1;
reg   [2:0] trunc_ln27_1_reg_888;
wire   [6:0] select_ln26_fu_598_p3;
reg   [6:0] select_ln26_reg_933;
wire   [31:0] v6_fu_604_p19;
reg   [31:0] v6_reg_938;
wire   [2:0] lshr_ln29_1_fu_668_p4;
reg   [2:0] lshr_ln29_1_reg_963;
reg   [2:0] lshr_ln29_1_reg_963_pp0_iter1_reg;
wire   [31:0] v3_fu_714_p3;
reg   [31:0] v3_reg_988;
reg   [31:0] v113_0_load_reg_996;
reg   [31:0] v113_1_load_reg_1001;
reg   [31:0] v113_2_load_reg_1006;
reg   [31:0] v113_3_load_reg_1011;
reg   [31:0] v113_0_load_1_reg_1016;
reg   [31:0] v113_1_load_1_reg_1021;
reg   [31:0] v113_2_load_1_reg_1026;
reg   [31:0] v113_3_load_1_reg_1031;
wire   [31:0] v10_fu_726_p1;
wire   [31:0] v16_fu_730_p1;
wire   [31:0] v22_fu_734_p1;
wire   [31:0] v28_fu_738_p1;
reg   [2:0] v116_0_addr_reg_1056;
reg   [2:0] v116_0_addr_reg_1056_pp0_iter3_reg;
reg   [2:0] v116_0_addr_reg_1056_pp0_iter4_reg;
reg   [2:0] v116_0_addr_reg_1056_pp0_iter5_reg;
reg   [2:0] v116_0_addr_reg_1056_pp0_iter6_reg;
wire   [31:0] v34_fu_753_p1;
wire   [31:0] v40_fu_757_p1;
wire   [31:0] v46_fu_761_p1;
wire   [31:0] v52_fu_765_p1;
reg   [2:0] v116_1_addr_reg_1082;
reg   [2:0] v116_1_addr_reg_1082_pp0_iter3_reg;
reg   [2:0] v116_1_addr_reg_1082_pp0_iter4_reg;
reg   [2:0] v116_1_addr_reg_1082_pp0_iter5_reg;
reg   [2:0] v116_1_addr_reg_1082_pp0_iter6_reg;
reg   [2:0] v116_2_addr_reg_1088;
reg   [2:0] v116_2_addr_reg_1088_pp0_iter3_reg;
reg   [2:0] v116_2_addr_reg_1088_pp0_iter4_reg;
reg   [2:0] v116_2_addr_reg_1088_pp0_iter5_reg;
reg   [2:0] v116_2_addr_reg_1088_pp0_iter6_reg;
reg   [2:0] v116_3_addr_reg_1094;
reg   [2:0] v116_3_addr_reg_1094_pp0_iter3_reg;
reg   [2:0] v116_3_addr_reg_1094_pp0_iter4_reg;
reg   [2:0] v116_3_addr_reg_1094_pp0_iter5_reg;
reg   [2:0] v116_3_addr_reg_1094_pp0_iter6_reg;
reg   [2:0] v116_4_addr_reg_1100;
reg   [2:0] v116_4_addr_reg_1100_pp0_iter3_reg;
reg   [2:0] v116_4_addr_reg_1100_pp0_iter4_reg;
reg   [2:0] v116_4_addr_reg_1100_pp0_iter5_reg;
reg   [2:0] v116_4_addr_reg_1100_pp0_iter6_reg;
reg   [2:0] v116_4_addr_reg_1100_pp0_iter7_reg;
reg   [2:0] v116_5_addr_reg_1105;
reg   [2:0] v116_5_addr_reg_1105_pp0_iter3_reg;
reg   [2:0] v116_5_addr_reg_1105_pp0_iter4_reg;
reg   [2:0] v116_5_addr_reg_1105_pp0_iter5_reg;
reg   [2:0] v116_5_addr_reg_1105_pp0_iter6_reg;
reg   [2:0] v116_5_addr_reg_1105_pp0_iter7_reg;
reg   [2:0] v116_6_addr_reg_1110;
reg   [2:0] v116_6_addr_reg_1110_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_1110_pp0_iter4_reg;
reg   [2:0] v116_6_addr_reg_1110_pp0_iter5_reg;
reg   [2:0] v116_6_addr_reg_1110_pp0_iter6_reg;
reg   [2:0] v116_6_addr_reg_1110_pp0_iter7_reg;
reg   [2:0] v116_7_addr_reg_1115;
reg   [2:0] v116_7_addr_reg_1115_pp0_iter3_reg;
reg   [2:0] v116_7_addr_reg_1115_pp0_iter4_reg;
reg   [2:0] v116_7_addr_reg_1115_pp0_iter5_reg;
reg   [2:0] v116_7_addr_reg_1115_pp0_iter6_reg;
reg   [2:0] v116_7_addr_reg_1115_pp0_iter7_reg;
reg   [31:0] v116_0_load_reg_1120;
reg   [31:0] v116_1_load_reg_1125;
reg   [31:0] v116_2_load_reg_1130;
reg   [31:0] v116_3_load_reg_1135;
reg   [31:0] v11_reg_1140;
reg   [31:0] v17_reg_1145;
wire   [31:0] grp_fu_476_p2;
reg   [31:0] v23_reg_1150;
wire   [31:0] grp_fu_480_p2;
reg   [31:0] v29_reg_1155;
wire   [31:0] v9_fu_769_p1;
reg   [31:0] v35_reg_1165;
reg   [31:0] v41_reg_1170;
reg   [31:0] v47_reg_1175;
reg   [31:0] v53_reg_1180;
wire   [31:0] v15_1_fu_773_p1;
wire   [31:0] v21_fu_777_p1;
wire   [31:0] v27_fu_781_p1;
reg   [31:0] v116_4_load_reg_1200;
reg   [31:0] v116_5_load_reg_1205;
reg   [31:0] v116_6_load_reg_1210;
reg   [31:0] v116_7_load_reg_1215;
wire   [31:0] v33_fu_785_p1;
wire   [31:0] v39_fu_789_p1;
wire   [31:0] v45_fu_793_p1;
wire   [31:0] v51_fu_797_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln26_fu_576_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln33_fu_660_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln61_fu_687_p1;
wire   [63:0] zext_ln29_fu_742_p1;
reg   [31:0] v3_1_fu_116;
reg   [6:0] v49_fu_120;
wire   [6:0] add_ln28_fu_695_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_load;
reg   [6:0] v4_fu_124;
wire   [6:0] select_ln27_fu_550_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [9:0] indvar_flatten_fu_128;
wire   [9:0] add_ln27_1_fu_524_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v124_ce0_local;
reg    v124_1_ce0_local;
reg    v124_2_ce0_local;
reg    v124_3_ce0_local;
reg    v124_4_ce0_local;
reg    v124_5_ce0_local;
reg    v124_6_ce0_local;
reg    v124_7_ce0_local;
reg    v113_0_ce1_local;
reg    v113_0_ce0_local;
reg    v113_1_ce1_local;
reg    v113_1_ce0_local;
reg    v113_2_ce1_local;
reg    v113_2_ce0_local;
reg    v113_3_ce1_local;
reg    v113_3_ce0_local;
reg    v116_0_ce1_local;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln36_fu_801_p1;
reg    v116_0_ce0_local;
reg    v116_1_ce1_local;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_fu_806_p1;
reg    v116_1_ce0_local;
reg    v116_2_ce1_local;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_fu_811_p1;
reg    v116_2_ce0_local;
reg    v116_3_ce1_local;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_fu_816_p1;
reg    v116_3_ce0_local;
reg    v116_4_ce0_local;
reg   [2:0] v116_4_address0_local;
reg    v116_4_we0_local;
wire   [31:0] bitcast_ln64_fu_821_p1;
reg    v116_5_ce0_local;
reg   [2:0] v116_5_address0_local;
reg    v116_5_we0_local;
wire   [31:0] bitcast_ln71_fu_826_p1;
reg    v116_6_ce0_local;
reg   [2:0] v116_6_address0_local;
reg    v116_6_we0_local;
wire   [31:0] bitcast_ln78_fu_831_p1;
reg    v116_7_ce0_local;
reg   [2:0] v116_7_address0_local;
reg    v116_7_we0_local;
wire   [31:0] bitcast_ln86_fu_836_p1;
reg   [31:0] grp_fu_452_p0;
reg   [31:0] grp_fu_452_p1;
reg   [31:0] grp_fu_456_p0;
reg   [31:0] grp_fu_456_p1;
reg   [31:0] grp_fu_460_p0;
reg   [31:0] grp_fu_460_p1;
reg   [31:0] grp_fu_464_p0;
reg   [31:0] grp_fu_464_p1;
reg   [31:0] grp_fu_468_p0;
reg   [31:0] grp_fu_472_p0;
reg   [31:0] grp_fu_476_p0;
reg   [31:0] grp_fu_480_p0;
wire   [6:0] add_ln27_fu_536_p2;
wire   [2:0] lshr_ln1_fu_566_p4;
wire   [31:0] v6_fu_604_p17;
wire   [3:0] lshr_ln2_fu_643_p4;
wire   [9:0] tmp_fu_653_p3;
wire   [9:0] tmp_s_fu_678_p4;
wire   [0:0] icmp_ln31_fu_709_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
wire   [2:0] v6_fu_604_p1;
wire   [2:0] v6_fu_604_p3;
wire   [2:0] v6_fu_604_p5;
wire   [2:0] v6_fu_604_p7;
wire  signed [2:0] v6_fu_604_p9;
wire  signed [2:0] v6_fu_604_p11;
wire  signed [2:0] v6_fu_604_p13;
wire  signed [2:0] v6_fu_604_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_1_fu_116 = 32'd0;
#0 v49_fu_120 = 7'd0;
#0 v4_fu_124 = 7'd0;
#0 indvar_flatten_fu_128 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_460_p0),.din1(grp_fu_460_p1),.ce(1'b1),.dout(grp_fu_460_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_464_p0),.din1(grp_fu_464_p1),.ce(1'b1),.dout(grp_fu_464_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U26(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_476_p0),.din1(v3_reg_988),.ce(1'b1),.dout(grp_fu_476_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_480_p0),.din1(v3_reg_988),.ce(1'b1),.dout(grp_fu_480_p2));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U28(.din0(v124_q0),.din1(v124_1_q0),.din2(v124_2_q0),.din3(v124_3_q0),.din4(v124_4_q0),.din5(v124_5_q0),.din6(v124_6_q0),.din7(v124_7_q0),.def(v6_fu_604_p17),.sel(trunc_ln27_1_reg_888),.dout(v6_fu_604_p19));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_518_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_128 <= add_ln27_1_fu_524_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_128 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_120 <= 7'd0;
    end else if (((icmp_ln27_reg_868 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v49_fu_120 <= add_ln28_fu_695_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_518_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v4_fu_124 <= select_ln27_fu_550_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_124 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        lshr_ln29_1_reg_963 <= {{select_ln26_fu_598_p3[5:3]}};
        lshr_ln29_1_reg_963_pp0_iter1_reg <= lshr_ln29_1_reg_963;
        select_ln26_reg_933 <= select_ln26_fu_598_p3;
        v6_reg_938 <= v6_fu_604_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_868 <= icmp_ln27_fu_518_p2;
        tmp_5_reg_877 <= ap_sig_allocacmp_v49_load[32'd6];
        trunc_ln27_1_reg_888 <= trunc_ln27_1_fu_562_p1;
        trunc_ln27_reg_882 <= trunc_ln27_fu_558_p1;
        v116_0_addr_reg_1056 <= zext_ln29_fu_742_p1;
        v116_0_addr_reg_1056_pp0_iter3_reg <= v116_0_addr_reg_1056;
        v116_0_addr_reg_1056_pp0_iter4_reg <= v116_0_addr_reg_1056_pp0_iter3_reg;
        v116_0_addr_reg_1056_pp0_iter5_reg <= v116_0_addr_reg_1056_pp0_iter4_reg;
        v116_0_addr_reg_1056_pp0_iter6_reg <= v116_0_addr_reg_1056_pp0_iter5_reg;
        v116_1_addr_reg_1082 <= zext_ln29_fu_742_p1;
        v116_1_addr_reg_1082_pp0_iter3_reg <= v116_1_addr_reg_1082;
        v116_1_addr_reg_1082_pp0_iter4_reg <= v116_1_addr_reg_1082_pp0_iter3_reg;
        v116_1_addr_reg_1082_pp0_iter5_reg <= v116_1_addr_reg_1082_pp0_iter4_reg;
        v116_1_addr_reg_1082_pp0_iter6_reg <= v116_1_addr_reg_1082_pp0_iter5_reg;
        v116_2_addr_reg_1088 <= zext_ln29_fu_742_p1;
        v116_2_addr_reg_1088_pp0_iter3_reg <= v116_2_addr_reg_1088;
        v116_2_addr_reg_1088_pp0_iter4_reg <= v116_2_addr_reg_1088_pp0_iter3_reg;
        v116_2_addr_reg_1088_pp0_iter5_reg <= v116_2_addr_reg_1088_pp0_iter4_reg;
        v116_2_addr_reg_1088_pp0_iter6_reg <= v116_2_addr_reg_1088_pp0_iter5_reg;
        v116_3_addr_reg_1094 <= zext_ln29_fu_742_p1;
        v116_3_addr_reg_1094_pp0_iter3_reg <= v116_3_addr_reg_1094;
        v116_3_addr_reg_1094_pp0_iter4_reg <= v116_3_addr_reg_1094_pp0_iter3_reg;
        v116_3_addr_reg_1094_pp0_iter5_reg <= v116_3_addr_reg_1094_pp0_iter4_reg;
        v116_3_addr_reg_1094_pp0_iter6_reg <= v116_3_addr_reg_1094_pp0_iter5_reg;
        v116_4_addr_reg_1100 <= zext_ln29_fu_742_p1;
        v116_4_addr_reg_1100_pp0_iter3_reg <= v116_4_addr_reg_1100;
        v116_4_addr_reg_1100_pp0_iter4_reg <= v116_4_addr_reg_1100_pp0_iter3_reg;
        v116_4_addr_reg_1100_pp0_iter5_reg <= v116_4_addr_reg_1100_pp0_iter4_reg;
        v116_4_addr_reg_1100_pp0_iter6_reg <= v116_4_addr_reg_1100_pp0_iter5_reg;
        v116_4_addr_reg_1100_pp0_iter7_reg <= v116_4_addr_reg_1100_pp0_iter6_reg;
        v116_5_addr_reg_1105 <= zext_ln29_fu_742_p1;
        v116_5_addr_reg_1105_pp0_iter3_reg <= v116_5_addr_reg_1105;
        v116_5_addr_reg_1105_pp0_iter4_reg <= v116_5_addr_reg_1105_pp0_iter3_reg;
        v116_5_addr_reg_1105_pp0_iter5_reg <= v116_5_addr_reg_1105_pp0_iter4_reg;
        v116_5_addr_reg_1105_pp0_iter6_reg <= v116_5_addr_reg_1105_pp0_iter5_reg;
        v116_5_addr_reg_1105_pp0_iter7_reg <= v116_5_addr_reg_1105_pp0_iter6_reg;
        v116_6_addr_reg_1110 <= zext_ln29_fu_742_p1;
        v116_6_addr_reg_1110_pp0_iter3_reg <= v116_6_addr_reg_1110;
        v116_6_addr_reg_1110_pp0_iter4_reg <= v116_6_addr_reg_1110_pp0_iter3_reg;
        v116_6_addr_reg_1110_pp0_iter5_reg <= v116_6_addr_reg_1110_pp0_iter4_reg;
        v116_6_addr_reg_1110_pp0_iter6_reg <= v116_6_addr_reg_1110_pp0_iter5_reg;
        v116_6_addr_reg_1110_pp0_iter7_reg <= v116_6_addr_reg_1110_pp0_iter6_reg;
        v116_7_addr_reg_1115 <= zext_ln29_fu_742_p1;
        v116_7_addr_reg_1115_pp0_iter3_reg <= v116_7_addr_reg_1115;
        v116_7_addr_reg_1115_pp0_iter4_reg <= v116_7_addr_reg_1115_pp0_iter3_reg;
        v116_7_addr_reg_1115_pp0_iter5_reg <= v116_7_addr_reg_1115_pp0_iter4_reg;
        v116_7_addr_reg_1115_pp0_iter6_reg <= v116_7_addr_reg_1115_pp0_iter5_reg;
        v116_7_addr_reg_1115_pp0_iter7_reg <= v116_7_addr_reg_1115_pp0_iter6_reg;
        v3_reg_988 <= v3_fu_714_p3;
        v49_load_reg_872 <= ap_sig_allocacmp_v49_load;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_484 <= grp_fu_158_p_dout0;
        reg_488 <= grp_fu_162_p_dout0;
        reg_492 <= grp_fu_460_p2;
        reg_496 <= grp_fu_464_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_0_load_1_reg_1016 <= v113_0_q0;
        v113_0_load_reg_996 <= v113_0_q1;
        v113_1_load_1_reg_1021 <= v113_1_q0;
        v113_1_load_reg_1001 <= v113_1_q1;
        v113_2_load_1_reg_1026 <= v113_2_q0;
        v113_2_load_reg_1006 <= v113_2_q1;
        v113_3_load_1_reg_1031 <= v113_3_q0;
        v113_3_load_reg_1011 <= v113_3_q1;
        v3_1_fu_116 <= v3_fu_714_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_1120 <= v116_0_q1;
        v116_1_load_reg_1125 <= v116_1_q1;
        v116_2_load_reg_1130 <= v116_2_q1;
        v116_3_load_reg_1135 <= v116_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_load_reg_1200 <= v116_4_q0;
        v116_5_load_reg_1205 <= v116_5_q0;
        v116_6_load_reg_1210 <= v116_6_q0;
        v116_7_load_reg_1215 <= v116_7_q0;
        v35_reg_1165 <= grp_fu_166_p_dout0;
        v41_reg_1170 <= grp_fu_170_p_dout0;
        v47_reg_1175 <= grp_fu_476_p2;
        v53_reg_1180 <= grp_fu_480_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11_reg_1140 <= grp_fu_166_p_dout0;
        v17_reg_1145 <= grp_fu_170_p_dout0;
        v23_reg_1150 <= grp_fu_476_p2;
        v29_reg_1155 <= grp_fu_480_p2;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_868 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_load = v49_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_452_p0 = v33_fu_785_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p0 = v9_fu_769_p1;
    end else begin
        grp_fu_452_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_452_p1 = v35_reg_1165;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p1 = v11_reg_1140;
    end else begin
        grp_fu_452_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_456_p0 = v39_fu_789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p0 = v15_1_fu_773_p1;
    end else begin
        grp_fu_456_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_456_p1 = v41_reg_1170;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p1 = v17_reg_1145;
    end else begin
        grp_fu_456_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p0 = v45_fu_793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_460_p0 = v21_fu_777_p1;
    end else begin
        grp_fu_460_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p1 = v47_reg_1175;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_460_p1 = v23_reg_1150;
    end else begin
        grp_fu_460_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p0 = v51_fu_797_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p0 = v27_fu_781_p1;
    end else begin
        grp_fu_464_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p1 = v53_reg_1180;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p1 = v29_reg_1155;
    end else begin
        grp_fu_464_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p0 = v34_fu_753_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p0 = v10_fu_726_p1;
    end else begin
        grp_fu_468_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_472_p0 = v40_fu_757_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_472_p0 = v16_fu_730_p1;
    end else begin
        grp_fu_472_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_476_p0 = v46_fu_761_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_476_p0 = v22_fu_734_p1;
    end else begin
        grp_fu_476_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_480_p0 = v52_fu_765_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_480_p0 = v28_fu_738_p1;
    end else begin
        grp_fu_480_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_ce1_local = 1'b1;
    end else begin
        v113_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_ce1_local = 1'b1;
    end else begin
        v113_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_2_ce0_local = 1'b1;
    end else begin
        v113_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_2_ce1_local = 1'b1;
    end else begin
        v113_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_3_ce0_local = 1'b1;
    end else begin
        v113_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_3_ce1_local = 1'b1;
    end else begin
        v113_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_ce1_local = 1'b1;
    end else begin
        v116_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_ce1_local = 1'b1;
    end else begin
        v116_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_address0_local = v116_4_addr_reg_1100_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_address0_local = v116_4_addr_reg_1100;
    end else begin
        v116_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_4_ce0_local = 1'b1;
    end else begin
        v116_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_we0_local = 1'b1;
    end else begin
        v116_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_5_address0_local = v116_5_addr_reg_1105_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_address0_local = v116_5_addr_reg_1105;
    end else begin
        v116_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_5_ce0_local = 1'b1;
    end else begin
        v116_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_5_we0_local = 1'b1;
    end else begin
        v116_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_address0_local = v116_6_addr_reg_1110_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_address0_local = v116_6_addr_reg_1110;
    end else begin
        v116_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_6_ce0_local = 1'b1;
    end else begin
        v116_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_we0_local = 1'b1;
    end else begin
        v116_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_7_address0_local = v116_7_addr_reg_1115_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_address0_local = v116_7_addr_reg_1115;
    end else begin
        v116_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_7_ce0_local = 1'b1;
    end else begin
        v116_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln27_1_fu_524_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_536_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_695_p2 = (select_ln26_fu_598_p3 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_801_p1 = reg_484;
assign bitcast_ln43_fu_806_p1 = reg_488;
assign bitcast_ln50_fu_811_p1 = reg_492;
assign bitcast_ln57_fu_816_p1 = reg_496;
assign bitcast_ln64_fu_821_p1 = reg_484;
assign bitcast_ln71_fu_826_p1 = reg_488;
assign bitcast_ln78_fu_831_p1 = reg_492;
assign bitcast_ln86_fu_836_p1 = reg_496;
assign grp_fu_158_p_ce = 1'b1;
assign grp_fu_158_p_din0 = grp_fu_452_p0;
assign grp_fu_158_p_din1 = grp_fu_452_p1;
assign grp_fu_158_p_opcode = 2'd0;
assign grp_fu_162_p_ce = 1'b1;
assign grp_fu_162_p_din0 = grp_fu_456_p0;
assign grp_fu_162_p_din1 = grp_fu_456_p1;
assign grp_fu_162_p_opcode = 2'd0;
assign grp_fu_166_p_ce = 1'b1;
assign grp_fu_166_p_din0 = grp_fu_468_p0;
assign grp_fu_166_p_din1 = v3_reg_988;
assign grp_fu_170_p_ce = 1'b1;
assign grp_fu_170_p_din0 = grp_fu_472_p0;
assign grp_fu_170_p_din1 = v3_reg_988;
assign icmp_ln27_fu_518_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_709_p2 = ((select_ln26_reg_933 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_566_p4 = {{select_ln27_fu_550_p3[5:3]}};
assign lshr_ln29_1_fu_668_p4 = {{select_ln26_fu_598_p3[5:3]}};
assign lshr_ln2_fu_643_p4 = {{select_ln26_fu_598_p3[5:2]}};
assign select_ln26_fu_598_p3 = ((tmp_5_reg_877[0:0] == 1'b1) ? 7'd0 : v49_load_reg_872);
assign select_ln27_fu_550_p3 = ((tmp_5_fu_542_p3[0:0] == 1'b1) ? add_ln27_fu_536_p2 : ap_sig_allocacmp_v4_load);
assign tmp_5_fu_542_p3 = ap_sig_allocacmp_v49_load[32'd6];
assign tmp_fu_653_p3 = {{trunc_ln27_reg_882}, {lshr_ln2_fu_643_p4}};
assign tmp_s_fu_678_p4 = {{{trunc_ln27_reg_882}, {lshr_ln29_1_fu_668_p4}}, {1'd1}};
assign trunc_ln27_1_fu_562_p1 = select_ln27_fu_550_p3[2:0];
assign trunc_ln27_fu_558_p1 = select_ln27_fu_550_p3[5:0];
assign v10_fu_726_p1 = v113_0_load_reg_996;
assign v113_0_address0 = zext_ln61_fu_687_p1;
assign v113_0_address1 = zext_ln33_fu_660_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_0_ce1 = v113_0_ce1_local;
assign v113_1_address0 = zext_ln61_fu_687_p1;
assign v113_1_address1 = zext_ln33_fu_660_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_1_ce1 = v113_1_ce1_local;
assign v113_2_address0 = zext_ln61_fu_687_p1;
assign v113_2_address1 = zext_ln33_fu_660_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_2_ce1 = v113_2_ce1_local;
assign v113_3_address0 = zext_ln61_fu_687_p1;
assign v113_3_address1 = zext_ln33_fu_660_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_3_ce1 = v113_3_ce1_local;
assign v116_0_address0 = v116_0_addr_reg_1056_pp0_iter6_reg;
assign v116_0_address1 = zext_ln29_fu_742_p1;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln36_fu_801_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_1_address0 = v116_1_addr_reg_1082_pp0_iter6_reg;
assign v116_1_address1 = zext_ln29_fu_742_p1;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln43_fu_806_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_2_address0 = v116_2_addr_reg_1088_pp0_iter6_reg;
assign v116_2_address1 = zext_ln29_fu_742_p1;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln50_fu_811_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_3_address0 = v116_3_addr_reg_1094_pp0_iter6_reg;
assign v116_3_address1 = zext_ln29_fu_742_p1;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln57_fu_816_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_4_address0 = v116_4_address0_local;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_d0 = bitcast_ln64_fu_821_p1;
assign v116_4_we0 = v116_4_we0_local;
assign v116_5_address0 = v116_5_address0_local;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_d0 = bitcast_ln71_fu_826_p1;
assign v116_5_we0 = v116_5_we0_local;
assign v116_6_address0 = v116_6_address0_local;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_d0 = bitcast_ln78_fu_831_p1;
assign v116_6_we0 = v116_6_we0_local;
assign v116_7_address0 = v116_7_address0_local;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_d0 = bitcast_ln86_fu_836_p1;
assign v116_7_we0 = v116_7_we0_local;
assign v124_1_address0 = zext_ln26_fu_576_p1;
assign v124_1_ce0 = v124_1_ce0_local;
assign v124_2_address0 = zext_ln26_fu_576_p1;
assign v124_2_ce0 = v124_2_ce0_local;
assign v124_3_address0 = zext_ln26_fu_576_p1;
assign v124_3_ce0 = v124_3_ce0_local;
assign v124_4_address0 = zext_ln26_fu_576_p1;
assign v124_4_ce0 = v124_4_ce0_local;
assign v124_5_address0 = zext_ln26_fu_576_p1;
assign v124_5_ce0 = v124_5_ce0_local;
assign v124_6_address0 = zext_ln26_fu_576_p1;
assign v124_6_ce0 = v124_6_ce0_local;
assign v124_7_address0 = zext_ln26_fu_576_p1;
assign v124_7_ce0 = v124_7_ce0_local;
assign v124_address0 = zext_ln26_fu_576_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_1_fu_773_p1 = v116_1_load_reg_1125;
assign v16_fu_730_p1 = v113_1_load_reg_1001;
assign v21_fu_777_p1 = v116_2_load_reg_1130;
assign v22_fu_734_p1 = v113_2_load_reg_1006;
assign v27_fu_781_p1 = v116_3_load_reg_1135;
assign v28_fu_738_p1 = v113_3_load_reg_1011;
assign v33_fu_785_p1 = v116_4_load_reg_1200;
assign v34_fu_753_p1 = v113_0_load_1_reg_1016;
assign v39_fu_789_p1 = v116_5_load_reg_1205;
assign v3_fu_714_p3 = ((icmp_ln31_fu_709_p2[0:0] == 1'b1) ? v6_reg_938 : v3_1_fu_116);
assign v40_fu_757_p1 = v113_1_load_1_reg_1021;
assign v45_fu_793_p1 = v116_6_load_reg_1210;
assign v46_fu_761_p1 = v113_2_load_1_reg_1026;
assign v51_fu_797_p1 = v116_7_load_reg_1215;
assign v52_fu_765_p1 = v113_3_load_1_reg_1031;
assign v6_fu_604_p17 = 'bx;
assign v9_fu_769_p1 = v116_0_load_reg_1120;
assign zext_ln26_fu_576_p1 = lshr_ln1_fu_566_p4;
assign zext_ln29_fu_742_p1 = lshr_ln29_1_reg_963_pp0_iter1_reg;
assign zext_ln33_fu_660_p1 = tmp_fu_653_p3;
assign zext_ln61_fu_687_p1 = tmp_s_fu_678_p4;
endmodule 
