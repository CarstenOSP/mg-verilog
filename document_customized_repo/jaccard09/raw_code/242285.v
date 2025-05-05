module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v124_1_address0,v124_1_ce0,v124_1_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v113_2_address0,v113_2_ce0,v113_2_q0,v113_2_address1,v113_2_ce1,v113_2_q1,v113_3_address0,v113_3_ce0,v113_3_q0,v113_3_address1,v113_3_ce1,v113_3_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_address1,v116_0_ce1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_address1,v116_1_ce1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_address1,v116_2_ce1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_address1,v116_3_ce1,v116_3_q1,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_q0,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_q0,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_q0,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_q0,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_opcode,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_opcode,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [4:0] v124_1_address0;
output   v124_1_ce0;
input  [31:0] v124_1_q0;
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
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
output  [1:0] grp_fu_192_p_opcode;
input  [31:0] grp_fu_192_p_dout0;
output   grp_fu_192_p_ce;
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
output  [1:0] grp_fu_196_p_opcode;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
output  [31:0] grp_fu_200_p_din0;
output  [31:0] grp_fu_200_p_din1;
input  [31:0] grp_fu_200_p_dout0;
output   grp_fu_200_p_ce;
output  [31:0] grp_fu_204_p_din0;
output  [31:0] grp_fu_204_p_din1;
input  [31:0] grp_fu_204_p_dout0;
output   grp_fu_204_p_ce;
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
wire   [0:0] icmp_ln27_fu_410_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_376;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_380;
wire   [31:0] grp_fu_352_p2;
reg   [31:0] reg_384;
wire   [31:0] grp_fu_356_p2;
reg   [31:0] reg_388;
wire   [6:0] select_ln26_fu_442_p3;
reg   [6:0] select_ln26_reg_730;
wire   [0:0] trunc_ln27_1_fu_462_p1;
reg   [0:0] trunc_ln27_1_reg_736;
wire   [2:0] lshr_ln29_1_fu_508_p4;
reg   [2:0] lshr_ln29_1_reg_771;
reg   [2:0] lshr_ln29_1_reg_771_pp0_iter1_reg;
wire   [31:0] v3_fu_561_p3;
reg   [31:0] v3_reg_796;
reg   [31:0] v113_0_load_reg_804;
reg   [31:0] v113_1_load_reg_809;
reg   [31:0] v113_2_load_reg_814;
reg   [31:0] v113_3_load_reg_819;
reg   [31:0] v113_0_load_1_reg_824;
reg   [31:0] v113_1_load_1_reg_829;
reg   [31:0] v113_2_load_1_reg_834;
reg   [31:0] v113_3_load_1_reg_839;
wire   [31:0] v10_fu_584_p1;
wire   [31:0] v16_fu_588_p1;
wire   [31:0] v22_fu_592_p1;
wire   [31:0] v28_fu_596_p1;
reg   [2:0] v116_0_addr_reg_864;
reg   [2:0] v116_0_addr_reg_864_pp0_iter3_reg;
reg   [2:0] v116_0_addr_reg_864_pp0_iter4_reg;
reg   [2:0] v116_0_addr_reg_864_pp0_iter5_reg;
reg   [2:0] v116_0_addr_reg_864_pp0_iter6_reg;
wire   [31:0] v34_fu_611_p1;
wire   [31:0] v40_fu_615_p1;
wire   [31:0] v46_fu_619_p1;
wire   [31:0] v52_fu_623_p1;
reg   [2:0] v116_1_addr_reg_890;
reg   [2:0] v116_1_addr_reg_890_pp0_iter3_reg;
reg   [2:0] v116_1_addr_reg_890_pp0_iter4_reg;
reg   [2:0] v116_1_addr_reg_890_pp0_iter5_reg;
reg   [2:0] v116_1_addr_reg_890_pp0_iter6_reg;
reg   [2:0] v116_2_addr_reg_896;
reg   [2:0] v116_2_addr_reg_896_pp0_iter3_reg;
reg   [2:0] v116_2_addr_reg_896_pp0_iter4_reg;
reg   [2:0] v116_2_addr_reg_896_pp0_iter5_reg;
reg   [2:0] v116_2_addr_reg_896_pp0_iter6_reg;
reg   [2:0] v116_3_addr_reg_902;
reg   [2:0] v116_3_addr_reg_902_pp0_iter3_reg;
reg   [2:0] v116_3_addr_reg_902_pp0_iter4_reg;
reg   [2:0] v116_3_addr_reg_902_pp0_iter5_reg;
reg   [2:0] v116_3_addr_reg_902_pp0_iter6_reg;
reg   [2:0] v116_4_addr_reg_908;
reg   [2:0] v116_4_addr_reg_908_pp0_iter3_reg;
reg   [2:0] v116_4_addr_reg_908_pp0_iter4_reg;
reg   [2:0] v116_4_addr_reg_908_pp0_iter5_reg;
reg   [2:0] v116_4_addr_reg_908_pp0_iter6_reg;
reg   [2:0] v116_4_addr_reg_908_pp0_iter7_reg;
reg   [2:0] v116_5_addr_reg_913;
reg   [2:0] v116_5_addr_reg_913_pp0_iter3_reg;
reg   [2:0] v116_5_addr_reg_913_pp0_iter4_reg;
reg   [2:0] v116_5_addr_reg_913_pp0_iter5_reg;
reg   [2:0] v116_5_addr_reg_913_pp0_iter6_reg;
reg   [2:0] v116_5_addr_reg_913_pp0_iter7_reg;
reg   [2:0] v116_6_addr_reg_918;
reg   [2:0] v116_6_addr_reg_918_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_918_pp0_iter4_reg;
reg   [2:0] v116_6_addr_reg_918_pp0_iter5_reg;
reg   [2:0] v116_6_addr_reg_918_pp0_iter6_reg;
reg   [2:0] v116_6_addr_reg_918_pp0_iter7_reg;
reg   [2:0] v116_7_addr_reg_923;
reg   [2:0] v116_7_addr_reg_923_pp0_iter3_reg;
reg   [2:0] v116_7_addr_reg_923_pp0_iter4_reg;
reg   [2:0] v116_7_addr_reg_923_pp0_iter5_reg;
reg   [2:0] v116_7_addr_reg_923_pp0_iter6_reg;
reg   [2:0] v116_7_addr_reg_923_pp0_iter7_reg;
reg   [31:0] v116_0_load_reg_928;
reg   [31:0] v116_1_load_reg_933;
reg   [31:0] v116_2_load_reg_938;
reg   [31:0] v116_3_load_reg_943;
reg   [31:0] v11_reg_948;
reg   [31:0] v17_reg_953;
wire   [31:0] grp_fu_368_p2;
reg   [31:0] v23_reg_958;
wire   [31:0] grp_fu_372_p2;
reg   [31:0] v29_reg_963;
wire   [31:0] v9_fu_627_p1;
reg   [31:0] v35_reg_973;
reg   [31:0] v41_reg_978;
reg   [31:0] v47_reg_983;
reg   [31:0] v53_reg_988;
wire   [31:0] v15_fu_631_p1;
wire   [31:0] v21_fu_635_p1;
wire   [31:0] v27_1_fu_639_p1;
reg   [31:0] v116_4_load_reg_1008;
reg   [31:0] v116_5_load_reg_1013;
reg   [31:0] v116_6_load_reg_1018;
reg   [31:0] v116_7_load_reg_1023;
wire   [31:0] v33_fu_643_p1;
wire   [31:0] v39_fu_647_p1;
wire   [31:0] v45_fu_651_p1;
wire   [31:0] v51_fu_655_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln26_fu_476_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_fu_500_p1;
wire   [63:0] zext_ln61_fu_528_p1;
wire   [63:0] zext_ln29_fu_600_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] v3_1_fu_86;
reg   [6:0] v49_fu_90;
wire   [6:0] add_ln28_fu_569_p2;
wire    ap_loop_init;
reg   [6:0] v4_fu_94;
wire   [6:0] select_ln27_fu_450_p3;
reg   [9:0] indvar_flatten_fu_98;
wire   [9:0] add_ln27_1_fu_416_p2;
reg    v124_ce0_local;
reg    v124_1_ce0_local;
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
wire   [31:0] bitcast_ln36_fu_659_p1;
reg    v116_0_ce0_local;
reg    v116_1_ce1_local;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_fu_664_p1;
reg    v116_1_ce0_local;
reg    v116_2_ce1_local;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_fu_669_p1;
reg    v116_2_ce0_local;
reg    v116_3_ce1_local;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_fu_674_p1;
reg    v116_3_ce0_local;
reg    v116_4_ce0_local;
reg   [2:0] v116_4_address0_local;
reg    v116_4_we0_local;
wire   [31:0] bitcast_ln64_fu_679_p1;
reg    v116_5_ce0_local;
reg   [2:0] v116_5_address0_local;
reg    v116_5_we0_local;
wire   [31:0] bitcast_ln71_fu_684_p1;
reg    v116_6_ce0_local;
reg   [2:0] v116_6_address0_local;
reg    v116_6_we0_local;
wire   [31:0] bitcast_ln78_fu_689_p1;
reg    v116_7_ce0_local;
reg   [2:0] v116_7_address0_local;
reg    v116_7_we0_local;
wire   [31:0] bitcast_ln86_fu_694_p1;
reg   [31:0] grp_fu_344_p0;
reg   [31:0] grp_fu_344_p1;
reg   [31:0] grp_fu_348_p0;
reg   [31:0] grp_fu_348_p1;
reg   [31:0] grp_fu_352_p0;
reg   [31:0] grp_fu_352_p1;
reg   [31:0] grp_fu_356_p0;
reg   [31:0] grp_fu_356_p1;
reg   [31:0] grp_fu_360_p0;
reg   [31:0] grp_fu_364_p0;
reg   [31:0] grp_fu_368_p0;
reg   [31:0] grp_fu_372_p0;
wire   [0:0] tmp_22_fu_434_p3;
wire   [6:0] add_ln27_fu_428_p2;
wire   [4:0] lshr_ln2_fu_466_p4;
wire   [5:0] trunc_ln27_fu_458_p1;
wire   [3:0] lshr_ln3_fu_482_p4;
wire   [9:0] tmp_fu_492_p3;
wire   [9:0] tmp_s_fu_518_p4;
wire   [0:0] icmp_ln31_fu_556_p2;
wire   [31:0] v6_fu_549_p3;
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
#0 v3_1_fu_86 = 32'd0;
#0 v49_fu_90 = 7'd0;
#0 v4_fu_94 = 7'd0;
#0 indvar_flatten_fu_98 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_352_p0),.din1(grp_fu_352_p1),.ce(1'b1),.dout(grp_fu_352_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_356_p0),.din1(grp_fu_356_p1),.ce(1'b1),.dout(grp_fu_356_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_368_p0),.din1(v3_reg_796),.ce(1'b1),.dout(grp_fu_368_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_372_p0),.din1(v3_reg_796),.ce(1'b1),.dout(grp_fu_372_p2));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_98 <= 10'd0;
    end else if (((icmp_ln27_fu_410_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_98 <= add_ln27_1_fu_416_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v49_fu_90 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v49_fu_90 <= add_ln28_fu_569_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_94 <= 7'd0;
    end else if (((icmp_ln27_fu_410_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_fu_94 <= select_ln27_fu_450_p3;
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
        lshr_ln29_1_reg_771 <= {{select_ln26_fu_442_p3[5:3]}};
        lshr_ln29_1_reg_771_pp0_iter1_reg <= lshr_ln29_1_reg_771;
        select_ln26_reg_730 <= select_ln26_fu_442_p3;
        trunc_ln27_1_reg_736 <= trunc_ln27_1_fu_462_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_376 <= grp_fu_192_p_dout0;
        reg_380 <= grp_fu_196_p_dout0;
        reg_384 <= grp_fu_352_p2;
        reg_388 <= grp_fu_356_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_0_load_1_reg_824 <= v113_0_q0;
        v113_0_load_reg_804 <= v113_0_q1;
        v113_1_load_1_reg_829 <= v113_1_q0;
        v113_1_load_reg_809 <= v113_1_q1;
        v113_2_load_1_reg_834 <= v113_2_q0;
        v113_2_load_reg_814 <= v113_2_q1;
        v113_3_load_1_reg_839 <= v113_3_q0;
        v113_3_load_reg_819 <= v113_3_q1;
        v3_1_fu_86 <= v3_fu_561_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_addr_reg_864 <= zext_ln29_fu_600_p1;
        v116_0_addr_reg_864_pp0_iter3_reg <= v116_0_addr_reg_864;
        v116_0_addr_reg_864_pp0_iter4_reg <= v116_0_addr_reg_864_pp0_iter3_reg;
        v116_0_addr_reg_864_pp0_iter5_reg <= v116_0_addr_reg_864_pp0_iter4_reg;
        v116_0_addr_reg_864_pp0_iter6_reg <= v116_0_addr_reg_864_pp0_iter5_reg;
        v116_1_addr_reg_890 <= zext_ln29_fu_600_p1;
        v116_1_addr_reg_890_pp0_iter3_reg <= v116_1_addr_reg_890;
        v116_1_addr_reg_890_pp0_iter4_reg <= v116_1_addr_reg_890_pp0_iter3_reg;
        v116_1_addr_reg_890_pp0_iter5_reg <= v116_1_addr_reg_890_pp0_iter4_reg;
        v116_1_addr_reg_890_pp0_iter6_reg <= v116_1_addr_reg_890_pp0_iter5_reg;
        v116_2_addr_reg_896 <= zext_ln29_fu_600_p1;
        v116_2_addr_reg_896_pp0_iter3_reg <= v116_2_addr_reg_896;
        v116_2_addr_reg_896_pp0_iter4_reg <= v116_2_addr_reg_896_pp0_iter3_reg;
        v116_2_addr_reg_896_pp0_iter5_reg <= v116_2_addr_reg_896_pp0_iter4_reg;
        v116_2_addr_reg_896_pp0_iter6_reg <= v116_2_addr_reg_896_pp0_iter5_reg;
        v116_3_addr_reg_902 <= zext_ln29_fu_600_p1;
        v116_3_addr_reg_902_pp0_iter3_reg <= v116_3_addr_reg_902;
        v116_3_addr_reg_902_pp0_iter4_reg <= v116_3_addr_reg_902_pp0_iter3_reg;
        v116_3_addr_reg_902_pp0_iter5_reg <= v116_3_addr_reg_902_pp0_iter4_reg;
        v116_3_addr_reg_902_pp0_iter6_reg <= v116_3_addr_reg_902_pp0_iter5_reg;
        v116_4_addr_reg_908 <= zext_ln29_fu_600_p1;
        v116_4_addr_reg_908_pp0_iter3_reg <= v116_4_addr_reg_908;
        v116_4_addr_reg_908_pp0_iter4_reg <= v116_4_addr_reg_908_pp0_iter3_reg;
        v116_4_addr_reg_908_pp0_iter5_reg <= v116_4_addr_reg_908_pp0_iter4_reg;
        v116_4_addr_reg_908_pp0_iter6_reg <= v116_4_addr_reg_908_pp0_iter5_reg;
        v116_4_addr_reg_908_pp0_iter7_reg <= v116_4_addr_reg_908_pp0_iter6_reg;
        v116_5_addr_reg_913 <= zext_ln29_fu_600_p1;
        v116_5_addr_reg_913_pp0_iter3_reg <= v116_5_addr_reg_913;
        v116_5_addr_reg_913_pp0_iter4_reg <= v116_5_addr_reg_913_pp0_iter3_reg;
        v116_5_addr_reg_913_pp0_iter5_reg <= v116_5_addr_reg_913_pp0_iter4_reg;
        v116_5_addr_reg_913_pp0_iter6_reg <= v116_5_addr_reg_913_pp0_iter5_reg;
        v116_5_addr_reg_913_pp0_iter7_reg <= v116_5_addr_reg_913_pp0_iter6_reg;
        v116_6_addr_reg_918 <= zext_ln29_fu_600_p1;
        v116_6_addr_reg_918_pp0_iter3_reg <= v116_6_addr_reg_918;
        v116_6_addr_reg_918_pp0_iter4_reg <= v116_6_addr_reg_918_pp0_iter3_reg;
        v116_6_addr_reg_918_pp0_iter5_reg <= v116_6_addr_reg_918_pp0_iter4_reg;
        v116_6_addr_reg_918_pp0_iter6_reg <= v116_6_addr_reg_918_pp0_iter5_reg;
        v116_6_addr_reg_918_pp0_iter7_reg <= v116_6_addr_reg_918_pp0_iter6_reg;
        v116_7_addr_reg_923 <= zext_ln29_fu_600_p1;
        v116_7_addr_reg_923_pp0_iter3_reg <= v116_7_addr_reg_923;
        v116_7_addr_reg_923_pp0_iter4_reg <= v116_7_addr_reg_923_pp0_iter3_reg;
        v116_7_addr_reg_923_pp0_iter5_reg <= v116_7_addr_reg_923_pp0_iter4_reg;
        v116_7_addr_reg_923_pp0_iter6_reg <= v116_7_addr_reg_923_pp0_iter5_reg;
        v116_7_addr_reg_923_pp0_iter7_reg <= v116_7_addr_reg_923_pp0_iter6_reg;
        v3_reg_796 <= v3_fu_561_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_928 <= v116_0_q1;
        v116_1_load_reg_933 <= v116_1_q1;
        v116_2_load_reg_938 <= v116_2_q1;
        v116_3_load_reg_943 <= v116_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_load_reg_1008 <= v116_4_q0;
        v116_5_load_reg_1013 <= v116_5_q0;
        v116_6_load_reg_1018 <= v116_6_q0;
        v116_7_load_reg_1023 <= v116_7_q0;
        v35_reg_973 <= grp_fu_200_p_dout0;
        v41_reg_978 <= grp_fu_204_p_dout0;
        v47_reg_983 <= grp_fu_368_p2;
        v53_reg_988 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11_reg_948 <= grp_fu_200_p_dout0;
        v17_reg_953 <= grp_fu_204_p_dout0;
        v23_reg_958 <= grp_fu_368_p2;
        v29_reg_963 <= grp_fu_372_p2;
    end
end
always @ (*) begin
    if (((icmp_ln27_fu_410_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_344_p0 = v33_fu_643_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_344_p0 = v9_fu_627_p1;
    end else begin
        grp_fu_344_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_344_p1 = v35_reg_973;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_344_p1 = v11_reg_948;
    end else begin
        grp_fu_344_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_348_p0 = v39_fu_647_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_348_p0 = v15_fu_631_p1;
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_348_p1 = v41_reg_978;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_348_p1 = v17_reg_953;
    end else begin
        grp_fu_348_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_352_p0 = v45_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_352_p0 = v21_fu_635_p1;
    end else begin
        grp_fu_352_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_352_p1 = v47_reg_983;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_352_p1 = v23_reg_958;
    end else begin
        grp_fu_352_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_356_p0 = v51_fu_655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_356_p0 = v27_1_fu_639_p1;
    end else begin
        grp_fu_356_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_356_p1 = v53_reg_988;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_356_p1 = v29_reg_963;
    end else begin
        grp_fu_356_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_360_p0 = v34_fu_611_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_360_p0 = v10_fu_584_p1;
    end else begin
        grp_fu_360_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_364_p0 = v40_fu_615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_364_p0 = v16_fu_588_p1;
    end else begin
        grp_fu_364_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p0 = v46_fu_619_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p0 = v22_fu_592_p1;
    end else begin
        grp_fu_368_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_372_p0 = v52_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_372_p0 = v28_fu_596_p1;
    end else begin
        grp_fu_372_p0 = 'bx;
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
        v116_4_address0_local = v116_4_addr_reg_908_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_address0_local = v116_4_addr_reg_908;
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
        v116_5_address0_local = v116_5_addr_reg_913_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_address0_local = v116_5_addr_reg_913;
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
        v116_6_address0_local = v116_6_addr_reg_918_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_address0_local = v116_6_addr_reg_918;
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
        v116_7_address0_local = v116_7_addr_reg_923_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_address0_local = v116_7_addr_reg_923;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v124_1_ce0_local = 1'b1;
    end else begin
        v124_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
assign add_ln27_1_fu_416_p2 = (indvar_flatten_fu_98 + 10'd1);
assign add_ln27_fu_428_p2 = (v4_fu_94 + 7'd1);
assign add_ln28_fu_569_p2 = (select_ln26_reg_730 + 7'd8);
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
assign bitcast_ln36_fu_659_p1 = reg_376;
assign bitcast_ln43_fu_664_p1 = reg_380;
assign bitcast_ln50_fu_669_p1 = reg_384;
assign bitcast_ln57_fu_674_p1 = reg_388;
assign bitcast_ln64_fu_679_p1 = reg_376;
assign bitcast_ln71_fu_684_p1 = reg_380;
assign bitcast_ln78_fu_689_p1 = reg_384;
assign bitcast_ln86_fu_694_p1 = reg_388;
assign grp_fu_192_p_ce = 1'b1;
assign grp_fu_192_p_din0 = grp_fu_344_p0;
assign grp_fu_192_p_din1 = grp_fu_344_p1;
assign grp_fu_192_p_opcode = 2'd0;
assign grp_fu_196_p_ce = 1'b1;
assign grp_fu_196_p_din0 = grp_fu_348_p0;
assign grp_fu_196_p_din1 = grp_fu_348_p1;
assign grp_fu_196_p_opcode = 2'd0;
assign grp_fu_200_p_ce = 1'b1;
assign grp_fu_200_p_din0 = grp_fu_360_p0;
assign grp_fu_200_p_din1 = v3_reg_796;
assign grp_fu_204_p_ce = 1'b1;
assign grp_fu_204_p_din0 = grp_fu_364_p0;
assign grp_fu_204_p_din1 = v3_reg_796;
assign icmp_ln27_fu_410_p2 = ((indvar_flatten_fu_98 == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_556_p2 = ((select_ln26_reg_730 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_1_fu_508_p4 = {{select_ln26_fu_442_p3[5:3]}};
assign lshr_ln2_fu_466_p4 = {{select_ln27_fu_450_p3[5:1]}};
assign lshr_ln3_fu_482_p4 = {{select_ln26_fu_442_p3[5:2]}};
assign select_ln26_fu_442_p3 = ((tmp_22_fu_434_p3[0:0] == 1'b1) ? 7'd0 : v49_fu_90);
assign select_ln27_fu_450_p3 = ((tmp_22_fu_434_p3[0:0] == 1'b1) ? add_ln27_fu_428_p2 : v4_fu_94);
assign tmp_22_fu_434_p3 = v49_fu_90[32'd6];
assign tmp_fu_492_p3 = {{trunc_ln27_fu_458_p1}, {lshr_ln3_fu_482_p4}};
assign tmp_s_fu_518_p4 = {{{trunc_ln27_fu_458_p1}, {lshr_ln29_1_fu_508_p4}}, {1'd1}};
assign trunc_ln27_1_fu_462_p1 = select_ln27_fu_450_p3[0:0];
assign trunc_ln27_fu_458_p1 = select_ln27_fu_450_p3[5:0];
assign v10_fu_584_p1 = v113_0_load_reg_804;
assign v113_0_address0 = zext_ln61_fu_528_p1;
assign v113_0_address1 = zext_ln33_fu_500_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_0_ce1 = v113_0_ce1_local;
assign v113_1_address0 = zext_ln61_fu_528_p1;
assign v113_1_address1 = zext_ln33_fu_500_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_1_ce1 = v113_1_ce1_local;
assign v113_2_address0 = zext_ln61_fu_528_p1;
assign v113_2_address1 = zext_ln33_fu_500_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_2_ce1 = v113_2_ce1_local;
assign v113_3_address0 = zext_ln61_fu_528_p1;
assign v113_3_address1 = zext_ln33_fu_500_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_3_ce1 = v113_3_ce1_local;
assign v116_0_address0 = v116_0_addr_reg_864_pp0_iter6_reg;
assign v116_0_address1 = zext_ln29_fu_600_p1;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln36_fu_659_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_1_address0 = v116_1_addr_reg_890_pp0_iter6_reg;
assign v116_1_address1 = zext_ln29_fu_600_p1;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln43_fu_664_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_2_address0 = v116_2_addr_reg_896_pp0_iter6_reg;
assign v116_2_address1 = zext_ln29_fu_600_p1;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln50_fu_669_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_3_address0 = v116_3_addr_reg_902_pp0_iter6_reg;
assign v116_3_address1 = zext_ln29_fu_600_p1;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln57_fu_674_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_4_address0 = v116_4_address0_local;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_d0 = bitcast_ln64_fu_679_p1;
assign v116_4_we0 = v116_4_we0_local;
assign v116_5_address0 = v116_5_address0_local;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_d0 = bitcast_ln71_fu_684_p1;
assign v116_5_we0 = v116_5_we0_local;
assign v116_6_address0 = v116_6_address0_local;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_d0 = bitcast_ln78_fu_689_p1;
assign v116_6_we0 = v116_6_we0_local;
assign v116_7_address0 = v116_7_address0_local;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_d0 = bitcast_ln86_fu_694_p1;
assign v116_7_we0 = v116_7_we0_local;
assign v124_1_address0 = zext_ln26_fu_476_p1;
assign v124_1_ce0 = v124_1_ce0_local;
assign v124_address0 = zext_ln26_fu_476_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_fu_631_p1 = v116_1_load_reg_933;
assign v16_fu_588_p1 = v113_1_load_reg_809;
assign v21_fu_635_p1 = v116_2_load_reg_938;
assign v22_fu_592_p1 = v113_2_load_reg_814;
assign v27_1_fu_639_p1 = v116_3_load_reg_943;
assign v28_fu_596_p1 = v113_3_load_reg_819;
assign v33_fu_643_p1 = v116_4_load_reg_1008;
assign v34_fu_611_p1 = v113_0_load_1_reg_824;
assign v39_fu_647_p1 = v116_5_load_reg_1013;
assign v3_fu_561_p3 = ((icmp_ln31_fu_556_p2[0:0] == 1'b1) ? v6_fu_549_p3 : v3_1_fu_86);
assign v40_fu_615_p1 = v113_1_load_1_reg_829;
assign v45_fu_651_p1 = v116_6_load_reg_1018;
assign v46_fu_619_p1 = v113_2_load_1_reg_834;
assign v51_fu_655_p1 = v116_7_load_reg_1023;
assign v52_fu_623_p1 = v113_3_load_1_reg_839;
assign v6_fu_549_p3 = ((trunc_ln27_1_reg_736[0:0] == 1'b1) ? v124_1_q0 : v124_q0);
assign v9_fu_627_p1 = v116_0_load_reg_928;
assign zext_ln26_fu_476_p1 = lshr_ln2_fu_466_p4;
assign zext_ln29_fu_600_p1 = lshr_ln29_1_reg_771_pp0_iter1_reg;
assign zext_ln33_fu_500_p1 = tmp_fu_492_p3;
assign zext_ln61_fu_528_p1 = tmp_s_fu_518_p4;
endmodule 