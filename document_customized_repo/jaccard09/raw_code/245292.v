module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v113_2_address0,v113_2_ce0,v113_2_q0,v113_2_address1,v113_2_ce1,v113_2_q1,v113_3_address0,v113_3_ce0,v113_3_q0,v113_3_address1,v113_3_ce1,v113_3_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_address1,v116_0_ce1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_address1,v116_1_ce1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_address1,v116_2_ce1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_address1,v116_3_ce1,v116_3_q1,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_q0,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_q0,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_q0,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_q0,grp_fu_182_p_din0,grp_fu_182_p_din1,grp_fu_182_p_opcode,grp_fu_182_p_dout0,grp_fu_182_p_ce,grp_fu_186_p_din0,grp_fu_186_p_din1,grp_fu_186_p_dout0,grp_fu_186_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
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
output  [31:0] grp_fu_182_p_din0;
output  [31:0] grp_fu_182_p_din1;
output  [1:0] grp_fu_182_p_opcode;
input  [31:0] grp_fu_182_p_dout0;
output   grp_fu_182_p_ce;
output  [31:0] grp_fu_186_p_din0;
output  [31:0] grp_fu_186_p_din1;
input  [31:0] grp_fu_186_p_dout0;
output   grp_fu_186_p_ce;
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
wire   [0:0] icmp_ln27_fu_393_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_359;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_331_p2;
reg   [31:0] reg_363;
wire   [31:0] grp_fu_335_p2;
reg   [31:0] reg_367;
wire   [31:0] grp_fu_339_p2;
reg   [31:0] reg_371;
wire   [6:0] select_ln26_fu_425_p3;
reg   [6:0] select_ln26_reg_691;
wire   [2:0] lshr_ln29_1_fu_476_p4;
reg   [2:0] lshr_ln29_1_reg_722;
reg   [2:0] lshr_ln29_1_reg_722_pp0_iter1_reg;
wire   [31:0] v3_fu_522_p3;
reg   [31:0] v3_reg_747;
reg   [31:0] v113_0_load_reg_755;
reg   [31:0] v113_1_load_reg_760;
reg   [31:0] v113_2_load_reg_765;
reg   [31:0] v113_3_load_reg_770;
reg   [31:0] v113_0_load_1_reg_775;
reg   [31:0] v113_1_load_1_reg_780;
reg   [31:0] v113_2_load_1_reg_785;
reg   [31:0] v113_3_load_1_reg_790;
wire   [31:0] v10_fu_545_p1;
wire   [31:0] v16_fu_549_p1;
wire   [31:0] v22_fu_553_p1;
wire   [31:0] v28_fu_557_p1;
reg   [2:0] v116_0_addr_reg_815;
reg   [2:0] v116_0_addr_reg_815_pp0_iter3_reg;
reg   [2:0] v116_0_addr_reg_815_pp0_iter4_reg;
reg   [2:0] v116_0_addr_reg_815_pp0_iter5_reg;
reg   [2:0] v116_0_addr_reg_815_pp0_iter6_reg;
wire   [31:0] v34_fu_572_p1;
wire   [31:0] v40_fu_576_p1;
wire   [31:0] v46_fu_580_p1;
wire   [31:0] v52_fu_584_p1;
reg   [2:0] v116_1_addr_reg_841;
reg   [2:0] v116_1_addr_reg_841_pp0_iter3_reg;
reg   [2:0] v116_1_addr_reg_841_pp0_iter4_reg;
reg   [2:0] v116_1_addr_reg_841_pp0_iter5_reg;
reg   [2:0] v116_1_addr_reg_841_pp0_iter6_reg;
reg   [2:0] v116_2_addr_reg_847;
reg   [2:0] v116_2_addr_reg_847_pp0_iter3_reg;
reg   [2:0] v116_2_addr_reg_847_pp0_iter4_reg;
reg   [2:0] v116_2_addr_reg_847_pp0_iter5_reg;
reg   [2:0] v116_2_addr_reg_847_pp0_iter6_reg;
reg   [2:0] v116_3_addr_reg_853;
reg   [2:0] v116_3_addr_reg_853_pp0_iter3_reg;
reg   [2:0] v116_3_addr_reg_853_pp0_iter4_reg;
reg   [2:0] v116_3_addr_reg_853_pp0_iter5_reg;
reg   [2:0] v116_3_addr_reg_853_pp0_iter6_reg;
reg   [2:0] v116_4_addr_reg_859;
reg   [2:0] v116_4_addr_reg_859_pp0_iter3_reg;
reg   [2:0] v116_4_addr_reg_859_pp0_iter4_reg;
reg   [2:0] v116_4_addr_reg_859_pp0_iter5_reg;
reg   [2:0] v116_4_addr_reg_859_pp0_iter6_reg;
reg   [2:0] v116_4_addr_reg_859_pp0_iter7_reg;
reg   [2:0] v116_5_addr_reg_864;
reg   [2:0] v116_5_addr_reg_864_pp0_iter3_reg;
reg   [2:0] v116_5_addr_reg_864_pp0_iter4_reg;
reg   [2:0] v116_5_addr_reg_864_pp0_iter5_reg;
reg   [2:0] v116_5_addr_reg_864_pp0_iter6_reg;
reg   [2:0] v116_5_addr_reg_864_pp0_iter7_reg;
reg   [2:0] v116_6_addr_reg_869;
reg   [2:0] v116_6_addr_reg_869_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_869_pp0_iter4_reg;
reg   [2:0] v116_6_addr_reg_869_pp0_iter5_reg;
reg   [2:0] v116_6_addr_reg_869_pp0_iter6_reg;
reg   [2:0] v116_6_addr_reg_869_pp0_iter7_reg;
reg   [2:0] v116_7_addr_reg_874;
reg   [2:0] v116_7_addr_reg_874_pp0_iter3_reg;
reg   [2:0] v116_7_addr_reg_874_pp0_iter4_reg;
reg   [2:0] v116_7_addr_reg_874_pp0_iter5_reg;
reg   [2:0] v116_7_addr_reg_874_pp0_iter6_reg;
reg   [2:0] v116_7_addr_reg_874_pp0_iter7_reg;
reg   [31:0] v116_0_load_reg_879;
reg   [31:0] v116_1_load_reg_884;
reg   [31:0] v116_2_load_reg_889;
reg   [31:0] v116_3_load_reg_894;
reg   [31:0] v11_reg_899;
wire   [31:0] grp_fu_347_p2;
reg   [31:0] v17_reg_904;
wire   [31:0] grp_fu_351_p2;
reg   [31:0] v23_reg_909;
wire   [31:0] grp_fu_355_p2;
reg   [31:0] v29_reg_914;
wire   [31:0] v9_fu_588_p1;
reg   [31:0] v35_reg_924;
reg   [31:0] v41_reg_929;
reg   [31:0] v47_reg_934;
reg   [31:0] v53_reg_939;
wire   [31:0] v15_fu_592_p1;
wire   [31:0] v21_fu_596_p1;
wire   [31:0] v27_fu_600_p1;
reg   [31:0] v116_4_load_reg_959;
reg   [31:0] v116_5_load_reg_964;
reg   [31:0] v116_6_load_reg_969;
reg   [31:0] v116_7_load_reg_974;
wire   [31:0] v33_fu_604_p1;
wire   [31:0] v39_fu_608_p1;
wire   [31:0] v45_fu_612_p1;
wire   [31:0] v51_fu_616_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln27_fu_445_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_fu_468_p1;
wire   [63:0] zext_ln61_fu_496_p1;
wire   [63:0] zext_ln29_fu_561_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] v3_1_fu_82;
reg   [6:0] v49_fu_86;
wire   [6:0] add_ln28_fu_530_p2;
wire    ap_loop_init;
reg   [6:0] v4_fu_90;
wire   [6:0] select_ln27_fu_433_p3;
reg   [9:0] indvar_flatten_fu_94;
wire   [9:0] add_ln27_1_fu_399_p2;
reg    v124_ce0_local;
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
wire   [31:0] bitcast_ln36_fu_620_p1;
reg    v116_0_ce0_local;
reg    v116_1_ce1_local;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_fu_625_p1;
reg    v116_1_ce0_local;
reg    v116_2_ce1_local;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_fu_630_p1;
reg    v116_2_ce0_local;
reg    v116_3_ce1_local;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_fu_635_p1;
reg    v116_3_ce0_local;
reg    v116_4_ce0_local;
reg   [2:0] v116_4_address0_local;
reg    v116_4_we0_local;
wire   [31:0] bitcast_ln64_fu_640_p1;
reg    v116_5_ce0_local;
reg   [2:0] v116_5_address0_local;
reg    v116_5_we0_local;
wire   [31:0] bitcast_ln71_fu_645_p1;
reg    v116_6_ce0_local;
reg   [2:0] v116_6_address0_local;
reg    v116_6_we0_local;
wire   [31:0] bitcast_ln78_fu_650_p1;
reg    v116_7_ce0_local;
reg   [2:0] v116_7_address0_local;
reg    v116_7_we0_local;
wire   [31:0] bitcast_ln86_fu_655_p1;
reg   [31:0] grp_fu_327_p0;
reg   [31:0] grp_fu_327_p1;
reg   [31:0] grp_fu_331_p0;
reg   [31:0] grp_fu_331_p1;
reg   [31:0] grp_fu_335_p0;
reg   [31:0] grp_fu_335_p1;
reg   [31:0] grp_fu_339_p0;
reg   [31:0] grp_fu_339_p1;
reg   [31:0] grp_fu_343_p0;
reg   [31:0] grp_fu_347_p0;
reg   [31:0] grp_fu_351_p0;
reg   [31:0] grp_fu_355_p0;
wire   [0:0] tmp_fu_417_p3;
wire   [6:0] add_ln27_fu_411_p2;
wire   [5:0] trunc_ln27_fu_441_p1;
wire   [3:0] lshr_ln2_fu_450_p4;
wire   [9:0] tmp_s_fu_460_p3;
wire   [9:0] tmp_234_fu_486_p4;
wire   [0:0] icmp_ln31_fu_517_p2;
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
#0 v3_1_fu_82 = 32'd0;
#0 v49_fu_86 = 7'd0;
#0 v4_fu_90 = 7'd0;
#0 indvar_flatten_fu_94 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_331_p0),.din1(grp_fu_331_p1),.ce(1'b1),.dout(grp_fu_331_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_335_p0),.din1(grp_fu_335_p1),.ce(1'b1),.dout(grp_fu_335_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_339_p0),.din1(grp_fu_339_p1),.ce(1'b1),.dout(grp_fu_339_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U86(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_347_p0),.din1(v3_reg_747),.ce(1'b1),.dout(grp_fu_347_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U87(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_351_p0),.din1(v3_reg_747),.ce(1'b1),.dout(grp_fu_351_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U88(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_355_p0),.din1(v3_reg_747),.ce(1'b1),.dout(grp_fu_355_p2));
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
        indvar_flatten_fu_94 <= 10'd0;
    end else if (((icmp_ln27_fu_393_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_94 <= add_ln27_1_fu_399_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v49_fu_86 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v49_fu_86 <= add_ln28_fu_530_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_90 <= 7'd0;
    end else if (((icmp_ln27_fu_393_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_fu_90 <= select_ln27_fu_433_p3;
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
        lshr_ln29_1_reg_722 <= {{select_ln26_fu_425_p3[5:3]}};
        lshr_ln29_1_reg_722_pp0_iter1_reg <= lshr_ln29_1_reg_722;
        select_ln26_reg_691 <= select_ln26_fu_425_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_359 <= grp_fu_182_p_dout0;
        reg_363 <= grp_fu_331_p2;
        reg_367 <= grp_fu_335_p2;
        reg_371 <= grp_fu_339_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_0_load_1_reg_775 <= v113_0_q0;
        v113_0_load_reg_755 <= v113_0_q1;
        v113_1_load_1_reg_780 <= v113_1_q0;
        v113_1_load_reg_760 <= v113_1_q1;
        v113_2_load_1_reg_785 <= v113_2_q0;
        v113_2_load_reg_765 <= v113_2_q1;
        v113_3_load_1_reg_790 <= v113_3_q0;
        v113_3_load_reg_770 <= v113_3_q1;
        v3_1_fu_82 <= v3_fu_522_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_addr_reg_815 <= zext_ln29_fu_561_p1;
        v116_0_addr_reg_815_pp0_iter3_reg <= v116_0_addr_reg_815;
        v116_0_addr_reg_815_pp0_iter4_reg <= v116_0_addr_reg_815_pp0_iter3_reg;
        v116_0_addr_reg_815_pp0_iter5_reg <= v116_0_addr_reg_815_pp0_iter4_reg;
        v116_0_addr_reg_815_pp0_iter6_reg <= v116_0_addr_reg_815_pp0_iter5_reg;
        v116_1_addr_reg_841 <= zext_ln29_fu_561_p1;
        v116_1_addr_reg_841_pp0_iter3_reg <= v116_1_addr_reg_841;
        v116_1_addr_reg_841_pp0_iter4_reg <= v116_1_addr_reg_841_pp0_iter3_reg;
        v116_1_addr_reg_841_pp0_iter5_reg <= v116_1_addr_reg_841_pp0_iter4_reg;
        v116_1_addr_reg_841_pp0_iter6_reg <= v116_1_addr_reg_841_pp0_iter5_reg;
        v116_2_addr_reg_847 <= zext_ln29_fu_561_p1;
        v116_2_addr_reg_847_pp0_iter3_reg <= v116_2_addr_reg_847;
        v116_2_addr_reg_847_pp0_iter4_reg <= v116_2_addr_reg_847_pp0_iter3_reg;
        v116_2_addr_reg_847_pp0_iter5_reg <= v116_2_addr_reg_847_pp0_iter4_reg;
        v116_2_addr_reg_847_pp0_iter6_reg <= v116_2_addr_reg_847_pp0_iter5_reg;
        v116_3_addr_reg_853 <= zext_ln29_fu_561_p1;
        v116_3_addr_reg_853_pp0_iter3_reg <= v116_3_addr_reg_853;
        v116_3_addr_reg_853_pp0_iter4_reg <= v116_3_addr_reg_853_pp0_iter3_reg;
        v116_3_addr_reg_853_pp0_iter5_reg <= v116_3_addr_reg_853_pp0_iter4_reg;
        v116_3_addr_reg_853_pp0_iter6_reg <= v116_3_addr_reg_853_pp0_iter5_reg;
        v116_4_addr_reg_859 <= zext_ln29_fu_561_p1;
        v116_4_addr_reg_859_pp0_iter3_reg <= v116_4_addr_reg_859;
        v116_4_addr_reg_859_pp0_iter4_reg <= v116_4_addr_reg_859_pp0_iter3_reg;
        v116_4_addr_reg_859_pp0_iter5_reg <= v116_4_addr_reg_859_pp0_iter4_reg;
        v116_4_addr_reg_859_pp0_iter6_reg <= v116_4_addr_reg_859_pp0_iter5_reg;
        v116_4_addr_reg_859_pp0_iter7_reg <= v116_4_addr_reg_859_pp0_iter6_reg;
        v116_5_addr_reg_864 <= zext_ln29_fu_561_p1;
        v116_5_addr_reg_864_pp0_iter3_reg <= v116_5_addr_reg_864;
        v116_5_addr_reg_864_pp0_iter4_reg <= v116_5_addr_reg_864_pp0_iter3_reg;
        v116_5_addr_reg_864_pp0_iter5_reg <= v116_5_addr_reg_864_pp0_iter4_reg;
        v116_5_addr_reg_864_pp0_iter6_reg <= v116_5_addr_reg_864_pp0_iter5_reg;
        v116_5_addr_reg_864_pp0_iter7_reg <= v116_5_addr_reg_864_pp0_iter6_reg;
        v116_6_addr_reg_869 <= zext_ln29_fu_561_p1;
        v116_6_addr_reg_869_pp0_iter3_reg <= v116_6_addr_reg_869;
        v116_6_addr_reg_869_pp0_iter4_reg <= v116_6_addr_reg_869_pp0_iter3_reg;
        v116_6_addr_reg_869_pp0_iter5_reg <= v116_6_addr_reg_869_pp0_iter4_reg;
        v116_6_addr_reg_869_pp0_iter6_reg <= v116_6_addr_reg_869_pp0_iter5_reg;
        v116_6_addr_reg_869_pp0_iter7_reg <= v116_6_addr_reg_869_pp0_iter6_reg;
        v116_7_addr_reg_874 <= zext_ln29_fu_561_p1;
        v116_7_addr_reg_874_pp0_iter3_reg <= v116_7_addr_reg_874;
        v116_7_addr_reg_874_pp0_iter4_reg <= v116_7_addr_reg_874_pp0_iter3_reg;
        v116_7_addr_reg_874_pp0_iter5_reg <= v116_7_addr_reg_874_pp0_iter4_reg;
        v116_7_addr_reg_874_pp0_iter6_reg <= v116_7_addr_reg_874_pp0_iter5_reg;
        v116_7_addr_reg_874_pp0_iter7_reg <= v116_7_addr_reg_874_pp0_iter6_reg;
        v3_reg_747 <= v3_fu_522_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_879 <= v116_0_q1;
        v116_1_load_reg_884 <= v116_1_q1;
        v116_2_load_reg_889 <= v116_2_q1;
        v116_3_load_reg_894 <= v116_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_load_reg_959 <= v116_4_q0;
        v116_5_load_reg_964 <= v116_5_q0;
        v116_6_load_reg_969 <= v116_6_q0;
        v116_7_load_reg_974 <= v116_7_q0;
        v35_reg_924 <= grp_fu_186_p_dout0;
        v41_reg_929 <= grp_fu_347_p2;
        v47_reg_934 <= grp_fu_351_p2;
        v53_reg_939 <= grp_fu_355_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11_reg_899 <= grp_fu_186_p_dout0;
        v17_reg_904 <= grp_fu_347_p2;
        v23_reg_909 <= grp_fu_351_p2;
        v29_reg_914 <= grp_fu_355_p2;
    end
end
always @ (*) begin
    if (((icmp_ln27_fu_393_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        grp_fu_327_p0 = v33_fu_604_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_327_p0 = v9_fu_588_p1;
    end else begin
        grp_fu_327_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_327_p1 = v35_reg_924;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_327_p1 = v11_reg_899;
    end else begin
        grp_fu_327_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_331_p0 = v39_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_331_p0 = v15_fu_592_p1;
    end else begin
        grp_fu_331_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_331_p1 = v41_reg_929;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_331_p1 = v17_reg_904;
    end else begin
        grp_fu_331_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_335_p0 = v45_fu_612_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_335_p0 = v21_fu_596_p1;
    end else begin
        grp_fu_335_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_335_p1 = v47_reg_934;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_335_p1 = v23_reg_909;
    end else begin
        grp_fu_335_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_339_p0 = v51_fu_616_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_339_p0 = v27_fu_600_p1;
    end else begin
        grp_fu_339_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_339_p1 = v53_reg_939;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_339_p1 = v29_reg_914;
    end else begin
        grp_fu_339_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_343_p0 = v34_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_343_p0 = v10_fu_545_p1;
    end else begin
        grp_fu_343_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_347_p0 = v40_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_347_p0 = v16_fu_549_p1;
    end else begin
        grp_fu_347_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_351_p0 = v46_fu_580_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_351_p0 = v22_fu_553_p1;
    end else begin
        grp_fu_351_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_355_p0 = v52_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_355_p0 = v28_fu_557_p1;
    end else begin
        grp_fu_355_p0 = 'bx;
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
        v116_4_address0_local = v116_4_addr_reg_859_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_address0_local = v116_4_addr_reg_859;
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
        v116_5_address0_local = v116_5_addr_reg_864_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_address0_local = v116_5_addr_reg_864;
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
        v116_6_address0_local = v116_6_addr_reg_869_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_address0_local = v116_6_addr_reg_869;
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
        v116_7_address0_local = v116_7_addr_reg_874_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_address0_local = v116_7_addr_reg_874;
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
assign add_ln27_1_fu_399_p2 = (indvar_flatten_fu_94 + 10'd1);
assign add_ln27_fu_411_p2 = (v4_fu_90 + 7'd1);
assign add_ln28_fu_530_p2 = (select_ln26_reg_691 + 7'd8);
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
assign bitcast_ln36_fu_620_p1 = reg_359;
assign bitcast_ln43_fu_625_p1 = reg_363;
assign bitcast_ln50_fu_630_p1 = reg_367;
assign bitcast_ln57_fu_635_p1 = reg_371;
assign bitcast_ln64_fu_640_p1 = reg_359;
assign bitcast_ln71_fu_645_p1 = reg_363;
assign bitcast_ln78_fu_650_p1 = reg_367;
assign bitcast_ln86_fu_655_p1 = reg_371;
assign grp_fu_182_p_ce = 1'b1;
assign grp_fu_182_p_din0 = grp_fu_327_p0;
assign grp_fu_182_p_din1 = grp_fu_327_p1;
assign grp_fu_182_p_opcode = 2'd0;
assign grp_fu_186_p_ce = 1'b1;
assign grp_fu_186_p_din0 = grp_fu_343_p0;
assign grp_fu_186_p_din1 = v3_reg_747;
assign icmp_ln27_fu_393_p2 = ((indvar_flatten_fu_94 == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_517_p2 = ((select_ln26_reg_691 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_1_fu_476_p4 = {{select_ln26_fu_425_p3[5:3]}};
assign lshr_ln2_fu_450_p4 = {{select_ln26_fu_425_p3[5:2]}};
assign select_ln26_fu_425_p3 = ((tmp_fu_417_p3[0:0] == 1'b1) ? 7'd0 : v49_fu_86);
assign select_ln27_fu_433_p3 = ((tmp_fu_417_p3[0:0] == 1'b1) ? add_ln27_fu_411_p2 : v4_fu_90);
assign tmp_234_fu_486_p4 = {{{trunc_ln27_fu_441_p1}, {lshr_ln29_1_fu_476_p4}}, {1'd1}};
assign tmp_fu_417_p3 = v49_fu_86[32'd6];
assign tmp_s_fu_460_p3 = {{trunc_ln27_fu_441_p1}, {lshr_ln2_fu_450_p4}};
assign trunc_ln27_fu_441_p1 = select_ln27_fu_433_p3[5:0];
assign v10_fu_545_p1 = v113_0_load_reg_755;
assign v113_0_address0 = zext_ln61_fu_496_p1;
assign v113_0_address1 = zext_ln33_fu_468_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_0_ce1 = v113_0_ce1_local;
assign v113_1_address0 = zext_ln61_fu_496_p1;
assign v113_1_address1 = zext_ln33_fu_468_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_1_ce1 = v113_1_ce1_local;
assign v113_2_address0 = zext_ln61_fu_496_p1;
assign v113_2_address1 = zext_ln33_fu_468_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_2_ce1 = v113_2_ce1_local;
assign v113_3_address0 = zext_ln61_fu_496_p1;
assign v113_3_address1 = zext_ln33_fu_468_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_3_ce1 = v113_3_ce1_local;
assign v116_0_address0 = v116_0_addr_reg_815_pp0_iter6_reg;
assign v116_0_address1 = zext_ln29_fu_561_p1;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln36_fu_620_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_1_address0 = v116_1_addr_reg_841_pp0_iter6_reg;
assign v116_1_address1 = zext_ln29_fu_561_p1;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln43_fu_625_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_2_address0 = v116_2_addr_reg_847_pp0_iter6_reg;
assign v116_2_address1 = zext_ln29_fu_561_p1;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln50_fu_630_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_3_address0 = v116_3_addr_reg_853_pp0_iter6_reg;
assign v116_3_address1 = zext_ln29_fu_561_p1;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln57_fu_635_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_4_address0 = v116_4_address0_local;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_d0 = bitcast_ln64_fu_640_p1;
assign v116_4_we0 = v116_4_we0_local;
assign v116_5_address0 = v116_5_address0_local;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_d0 = bitcast_ln71_fu_645_p1;
assign v116_5_we0 = v116_5_we0_local;
assign v116_6_address0 = v116_6_address0_local;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_d0 = bitcast_ln78_fu_650_p1;
assign v116_6_we0 = v116_6_we0_local;
assign v116_7_address0 = v116_7_address0_local;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_d0 = bitcast_ln86_fu_655_p1;
assign v116_7_we0 = v116_7_we0_local;
assign v124_address0 = zext_ln27_fu_445_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_fu_592_p1 = v116_1_load_reg_884;
assign v16_fu_549_p1 = v113_1_load_reg_760;
assign v21_fu_596_p1 = v116_2_load_reg_889;
assign v22_fu_553_p1 = v113_2_load_reg_765;
assign v27_fu_600_p1 = v116_3_load_reg_894;
assign v28_fu_557_p1 = v113_3_load_reg_770;
assign v33_fu_604_p1 = v116_4_load_reg_959;
assign v34_fu_572_p1 = v113_0_load_1_reg_775;
assign v39_fu_608_p1 = v116_5_load_reg_964;
assign v3_fu_522_p3 = ((icmp_ln31_fu_517_p2[0:0] == 1'b1) ? v124_q0 : v3_1_fu_82);
assign v40_fu_576_p1 = v113_1_load_1_reg_780;
assign v45_fu_612_p1 = v116_6_load_reg_969;
assign v46_fu_580_p1 = v113_2_load_1_reg_785;
assign v51_fu_616_p1 = v116_7_load_reg_974;
assign v52_fu_584_p1 = v113_3_load_1_reg_790;
assign v9_fu_588_p1 = v116_0_load_reg_879;
assign zext_ln27_fu_445_p1 = select_ln27_fu_433_p3;
assign zext_ln29_fu_561_p1 = lshr_ln29_1_reg_722_pp0_iter1_reg;
assign zext_ln33_fu_468_p1 = tmp_s_fu_460_p3;
assign zext_ln61_fu_496_p1 = tmp_234_fu_486_p4;
endmodule 