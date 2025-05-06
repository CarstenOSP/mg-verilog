
module bicg_bicg_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_r_address0,buff_r_ce0,buff_r_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_address1,buff_A_ce1,buff_A_q1,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_1_address1,buff_A_1_ce1,buff_A_1_q1,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_2_address1,buff_A_2_ce1,buff_A_2_q1,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_3_address1,buff_A_3_ce1,buff_A_3_q1,buff_s_out_address0,buff_s_out_ce0,buff_s_out_we0,buff_s_out_d0,buff_s_out_address1,buff_s_out_ce1,buff_s_out_q1,buff_s_out_1_address0,buff_s_out_1_ce0,buff_s_out_1_we0,buff_s_out_1_d0,buff_s_out_1_address1,buff_s_out_1_ce1,buff_s_out_1_q1,buff_s_out_2_address0,buff_s_out_2_ce0,buff_s_out_2_we0,buff_s_out_2_d0,buff_s_out_2_address1,buff_s_out_2_ce1,buff_s_out_2_q1,buff_s_out_3_address0,buff_s_out_3_ce0,buff_s_out_3_we0,buff_s_out_3_d0,buff_s_out_3_address1,buff_s_out_3_ce1,buff_s_out_3_q1,buff_s_out_4_address0,buff_s_out_4_ce0,buff_s_out_4_we0,buff_s_out_4_d0,buff_s_out_4_q0,buff_s_out_5_address0,buff_s_out_5_ce0,buff_s_out_5_we0,buff_s_out_5_d0,buff_s_out_5_q0,buff_s_out_6_address0,buff_s_out_6_ce0,buff_s_out_6_we0,buff_s_out_6_d0,buff_s_out_6_q0,buff_s_out_7_address0,buff_s_out_7_ce0,buff_s_out_7_we0,buff_s_out_7_d0,buff_s_out_7_q0,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_opcode,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] buff_r_address0;
output   buff_r_ce0;
input  [31:0] buff_r_q0;
output  [9:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [9:0] buff_A_address1;
output   buff_A_ce1;
input  [31:0] buff_A_q1;
output  [9:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [9:0] buff_A_1_address1;
output   buff_A_1_ce1;
input  [31:0] buff_A_1_q1;
output  [9:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [9:0] buff_A_2_address1;
output   buff_A_2_ce1;
input  [31:0] buff_A_2_q1;
output  [9:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [9:0] buff_A_3_address1;
output   buff_A_3_ce1;
input  [31:0] buff_A_3_q1;
output  [2:0] buff_s_out_address0;
output   buff_s_out_ce0;
output   buff_s_out_we0;
output  [31:0] buff_s_out_d0;
output  [2:0] buff_s_out_address1;
output   buff_s_out_ce1;
input  [31:0] buff_s_out_q1;
output  [2:0] buff_s_out_1_address0;
output   buff_s_out_1_ce0;
output   buff_s_out_1_we0;
output  [31:0] buff_s_out_1_d0;
output  [2:0] buff_s_out_1_address1;
output   buff_s_out_1_ce1;
input  [31:0] buff_s_out_1_q1;
output  [2:0] buff_s_out_2_address0;
output   buff_s_out_2_ce0;
output   buff_s_out_2_we0;
output  [31:0] buff_s_out_2_d0;
output  [2:0] buff_s_out_2_address1;
output   buff_s_out_2_ce1;
input  [31:0] buff_s_out_2_q1;
output  [2:0] buff_s_out_3_address0;
output   buff_s_out_3_ce0;
output   buff_s_out_3_we0;
output  [31:0] buff_s_out_3_d0;
output  [2:0] buff_s_out_3_address1;
output   buff_s_out_3_ce1;
input  [31:0] buff_s_out_3_q1;
output  [2:0] buff_s_out_4_address0;
output   buff_s_out_4_ce0;
output   buff_s_out_4_we0;
output  [31:0] buff_s_out_4_d0;
input  [31:0] buff_s_out_4_q0;
output  [2:0] buff_s_out_5_address0;
output   buff_s_out_5_ce0;
output   buff_s_out_5_we0;
output  [31:0] buff_s_out_5_d0;
input  [31:0] buff_s_out_5_q0;
output  [2:0] buff_s_out_6_address0;
output   buff_s_out_6_ce0;
output   buff_s_out_6_we0;
output  [31:0] buff_s_out_6_d0;
input  [31:0] buff_s_out_6_q0;
output  [2:0] buff_s_out_7_address0;
output   buff_s_out_7_ce0;
output   buff_s_out_7_we0;
output  [31:0] buff_s_out_7_d0;
input  [31:0] buff_s_out_7_q0;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
output  [1:0] grp_fu_184_p_opcode;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
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
wire   [0:0] icmp_ln23_fu_393_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_351;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_323_p2;
reg   [31:0] reg_357;
wire   [31:0] grp_fu_327_p2;
reg   [31:0] reg_363;
wire   [31:0] grp_fu_331_p2;
reg   [31:0] reg_369;
wire   [6:0] select_ln5_fu_425_p3;
reg   [6:0] select_ln5_reg_560;
wire   [2:0] lshr_ln5_2_fu_476_p4;
reg   [2:0] lshr_ln5_2_reg_590;
reg   [2:0] lshr_ln5_2_reg_590_pp0_iter1_reg;
reg   [31:0] buff_r_load_reg_615;
reg   [31:0] buff_A_load_reg_623;
reg   [31:0] buff_A_1_load_reg_628;
reg   [31:0] buff_A_2_load_reg_633;
reg   [31:0] buff_A_3_load_reg_638;
reg   [31:0] buff_A_load_1_reg_643;
reg   [31:0] buff_A_1_load_1_reg_648;
reg   [31:0] buff_A_2_load_1_reg_653;
reg   [31:0] buff_A_3_load_1_reg_658;
reg   [2:0] buff_s_out_addr_reg_663;
reg   [2:0] buff_s_out_addr_reg_663_pp0_iter3_reg;
reg   [2:0] buff_s_out_addr_reg_663_pp0_iter4_reg;
reg   [2:0] buff_s_out_addr_reg_663_pp0_iter5_reg;
reg   [2:0] buff_s_out_addr_reg_663_pp0_iter6_reg;
reg   [2:0] buff_s_out_1_addr_reg_669;
reg   [2:0] buff_s_out_1_addr_reg_669_pp0_iter3_reg;
reg   [2:0] buff_s_out_1_addr_reg_669_pp0_iter4_reg;
reg   [2:0] buff_s_out_1_addr_reg_669_pp0_iter5_reg;
reg   [2:0] buff_s_out_1_addr_reg_669_pp0_iter6_reg;
reg   [2:0] buff_s_out_2_addr_reg_675;
reg   [2:0] buff_s_out_2_addr_reg_675_pp0_iter3_reg;
reg   [2:0] buff_s_out_2_addr_reg_675_pp0_iter4_reg;
reg   [2:0] buff_s_out_2_addr_reg_675_pp0_iter5_reg;
reg   [2:0] buff_s_out_2_addr_reg_675_pp0_iter6_reg;
reg   [2:0] buff_s_out_3_addr_reg_681;
reg   [2:0] buff_s_out_3_addr_reg_681_pp0_iter3_reg;
reg   [2:0] buff_s_out_3_addr_reg_681_pp0_iter4_reg;
reg   [2:0] buff_s_out_3_addr_reg_681_pp0_iter5_reg;
reg   [2:0] buff_s_out_3_addr_reg_681_pp0_iter6_reg;
reg   [2:0] buff_s_out_4_addr_reg_687;
reg   [2:0] buff_s_out_4_addr_reg_687_pp0_iter3_reg;
reg   [2:0] buff_s_out_4_addr_reg_687_pp0_iter4_reg;
reg   [2:0] buff_s_out_4_addr_reg_687_pp0_iter5_reg;
reg   [2:0] buff_s_out_4_addr_reg_687_pp0_iter6_reg;
reg   [2:0] buff_s_out_4_addr_reg_687_pp0_iter7_reg;
reg   [2:0] buff_s_out_5_addr_reg_692;
reg   [2:0] buff_s_out_5_addr_reg_692_pp0_iter3_reg;
reg   [2:0] buff_s_out_5_addr_reg_692_pp0_iter4_reg;
reg   [2:0] buff_s_out_5_addr_reg_692_pp0_iter5_reg;
reg   [2:0] buff_s_out_5_addr_reg_692_pp0_iter6_reg;
reg   [2:0] buff_s_out_5_addr_reg_692_pp0_iter7_reg;
reg   [2:0] buff_s_out_6_addr_reg_697;
reg   [2:0] buff_s_out_6_addr_reg_697_pp0_iter3_reg;
reg   [2:0] buff_s_out_6_addr_reg_697_pp0_iter4_reg;
reg   [2:0] buff_s_out_6_addr_reg_697_pp0_iter5_reg;
reg   [2:0] buff_s_out_6_addr_reg_697_pp0_iter6_reg;
reg   [2:0] buff_s_out_6_addr_reg_697_pp0_iter7_reg;
reg   [2:0] buff_s_out_7_addr_reg_702;
reg   [2:0] buff_s_out_7_addr_reg_702_pp0_iter3_reg;
reg   [2:0] buff_s_out_7_addr_reg_702_pp0_iter4_reg;
reg   [2:0] buff_s_out_7_addr_reg_702_pp0_iter5_reg;
reg   [2:0] buff_s_out_7_addr_reg_702_pp0_iter6_reg;
reg   [2:0] buff_s_out_7_addr_reg_702_pp0_iter7_reg;
reg   [31:0] buff_s_out_load_reg_707;
reg   [31:0] buff_s_out_1_load_reg_712;
reg   [31:0] buff_s_out_2_load_reg_717;
reg   [31:0] buff_s_out_3_load_reg_722;
reg   [31:0] mul_reg_727;
wire   [31:0] grp_fu_339_p2;
reg   [31:0] mul_1_reg_732;
wire   [31:0] grp_fu_343_p2;
reg   [31:0] mul_2_reg_737;
wire   [31:0] grp_fu_347_p2;
reg   [31:0] mul_3_reg_742;
reg   [31:0] mul_4_reg_747;
reg   [31:0] mul_5_reg_752;
reg   [31:0] mul_6_reg_757;
reg   [31:0] mul_7_reg_762;
reg   [31:0] buff_s_out_4_load_reg_767;
reg   [31:0] buff_s_out_5_load_reg_772;
reg   [31:0] buff_s_out_6_load_reg_777;
reg   [31:0] buff_s_out_7_load_reg_782;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln23_fu_445_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln25_fu_468_p1;
wire   [63:0] zext_ln25_1_fu_496_p1;
wire   [63:0] zext_ln5_fu_524_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_78;
wire   [6:0] add_ln24_fu_514_p2;
wire    ap_loop_init;
reg   [6:0] i_1_fu_82;
wire   [6:0] select_ln23_fu_433_p3;
reg   [9:0] indvar_flatten7_fu_86;
wire   [9:0] add_ln23_1_fu_399_p2;
reg    buff_r_ce0_local;
reg    buff_A_ce1_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce1_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce1_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce1_local;
reg    buff_A_3_ce0_local;
reg    buff_s_out_ce1_local;
reg    buff_s_out_we0_local;
reg    buff_s_out_ce0_local;
reg    buff_s_out_1_ce1_local;
reg    buff_s_out_1_we0_local;
reg    buff_s_out_1_ce0_local;
reg    buff_s_out_2_ce1_local;
reg    buff_s_out_2_we0_local;
reg    buff_s_out_2_ce0_local;
reg    buff_s_out_3_ce1_local;
reg    buff_s_out_3_we0_local;
reg    buff_s_out_3_ce0_local;
reg    buff_s_out_4_ce0_local;
reg   [2:0] buff_s_out_4_address0_local;
reg    buff_s_out_4_we0_local;
reg    buff_s_out_5_ce0_local;
reg   [2:0] buff_s_out_5_address0_local;
reg    buff_s_out_5_we0_local;
reg    buff_s_out_6_ce0_local;
reg   [2:0] buff_s_out_6_address0_local;
reg    buff_s_out_6_we0_local;
reg    buff_s_out_7_ce0_local;
reg   [2:0] buff_s_out_7_address0_local;
reg    buff_s_out_7_we0_local;
reg   [31:0] grp_fu_319_p0;
reg   [31:0] grp_fu_319_p1;
reg   [31:0] grp_fu_323_p0;
reg   [31:0] grp_fu_323_p1;
reg   [31:0] grp_fu_327_p0;
reg   [31:0] grp_fu_327_p1;
reg   [31:0] grp_fu_331_p0;
reg   [31:0] grp_fu_331_p1;
reg   [31:0] grp_fu_335_p0;
reg   [31:0] grp_fu_339_p0;
reg   [31:0] grp_fu_343_p0;
reg   [31:0] grp_fu_347_p0;
wire   [0:0] tmp_fu_417_p3;
wire   [6:0] add_ln23_fu_411_p2;
wire   [5:0] trunc_ln23_fu_441_p1;
wire   [3:0] lshr_ln5_1_fu_450_p4;
wire   [9:0] tmp_3_fu_460_p3;
wire   [9:0] tmp_5_fu_486_p4;
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
#0 j_fu_78 = 7'd0;
#0 i_1_fu_82 = 7'd0;
#0 indvar_flatten7_fu_86 = 10'd0;
#0 ap_done_reg = 1'b0;
end
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_323_p0),.din1(grp_fu_323_p1),.ce(1'b1),.dout(grp_fu_323_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_327_p0),.din1(grp_fu_327_p1),.ce(1'b1),.dout(grp_fu_327_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_331_p0),.din1(grp_fu_331_p1),.ce(1'b1),.dout(grp_fu_331_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_339_p0),.din1(buff_r_load_reg_615),.ce(1'b1),.dout(grp_fu_339_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U25(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_343_p0),.din1(buff_r_load_reg_615),.ce(1'b1),.dout(grp_fu_343_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U26(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_347_p0),.din1(buff_r_load_reg_615),.ce(1'b1),.dout(grp_fu_347_p2));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        i_1_fu_82 <= 7'd0;
    end else if (((icmp_ln23_fu_393_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_1_fu_82 <= select_ln23_fu_433_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_86 <= 10'd0;
    end else if (((icmp_ln23_fu_393_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten7_fu_86 <= add_ln23_1_fu_399_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_78 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_78 <= add_ln24_fu_514_p2;
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
        lshr_ln5_2_reg_590 <= {{select_ln5_fu_425_p3[5:3]}};
        lshr_ln5_2_reg_590_pp0_iter1_reg <= lshr_ln5_2_reg_590;
        select_ln5_reg_560 <= select_ln5_fu_425_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_1_load_1_reg_648 <= buff_A_1_q0;
        buff_A_1_load_reg_628 <= buff_A_1_q1;
        buff_A_2_load_1_reg_653 <= buff_A_2_q0;
        buff_A_2_load_reg_633 <= buff_A_2_q1;
        buff_A_3_load_1_reg_658 <= buff_A_3_q0;
        buff_A_3_load_reg_638 <= buff_A_3_q1;
        buff_A_load_1_reg_643 <= buff_A_q0;
        buff_A_load_reg_623 <= buff_A_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_load_reg_615 <= buff_r_q0;
        buff_s_out_1_addr_reg_669 <= zext_ln5_fu_524_p1;
        buff_s_out_1_addr_reg_669_pp0_iter3_reg <= buff_s_out_1_addr_reg_669;
        buff_s_out_1_addr_reg_669_pp0_iter4_reg <= buff_s_out_1_addr_reg_669_pp0_iter3_reg;
        buff_s_out_1_addr_reg_669_pp0_iter5_reg <= buff_s_out_1_addr_reg_669_pp0_iter4_reg;
        buff_s_out_1_addr_reg_669_pp0_iter6_reg <= buff_s_out_1_addr_reg_669_pp0_iter5_reg;
        buff_s_out_2_addr_reg_675 <= zext_ln5_fu_524_p1;
        buff_s_out_2_addr_reg_675_pp0_iter3_reg <= buff_s_out_2_addr_reg_675;
        buff_s_out_2_addr_reg_675_pp0_iter4_reg <= buff_s_out_2_addr_reg_675_pp0_iter3_reg;
        buff_s_out_2_addr_reg_675_pp0_iter5_reg <= buff_s_out_2_addr_reg_675_pp0_iter4_reg;
        buff_s_out_2_addr_reg_675_pp0_iter6_reg <= buff_s_out_2_addr_reg_675_pp0_iter5_reg;
        buff_s_out_3_addr_reg_681 <= zext_ln5_fu_524_p1;
        buff_s_out_3_addr_reg_681_pp0_iter3_reg <= buff_s_out_3_addr_reg_681;
        buff_s_out_3_addr_reg_681_pp0_iter4_reg <= buff_s_out_3_addr_reg_681_pp0_iter3_reg;
        buff_s_out_3_addr_reg_681_pp0_iter5_reg <= buff_s_out_3_addr_reg_681_pp0_iter4_reg;
        buff_s_out_3_addr_reg_681_pp0_iter6_reg <= buff_s_out_3_addr_reg_681_pp0_iter5_reg;
        buff_s_out_4_addr_reg_687 <= zext_ln5_fu_524_p1;
        buff_s_out_4_addr_reg_687_pp0_iter3_reg <= buff_s_out_4_addr_reg_687;
        buff_s_out_4_addr_reg_687_pp0_iter4_reg <= buff_s_out_4_addr_reg_687_pp0_iter3_reg;
        buff_s_out_4_addr_reg_687_pp0_iter5_reg <= buff_s_out_4_addr_reg_687_pp0_iter4_reg;
        buff_s_out_4_addr_reg_687_pp0_iter6_reg <= buff_s_out_4_addr_reg_687_pp0_iter5_reg;
        buff_s_out_4_addr_reg_687_pp0_iter7_reg <= buff_s_out_4_addr_reg_687_pp0_iter6_reg;
        buff_s_out_5_addr_reg_692 <= zext_ln5_fu_524_p1;
        buff_s_out_5_addr_reg_692_pp0_iter3_reg <= buff_s_out_5_addr_reg_692;
        buff_s_out_5_addr_reg_692_pp0_iter4_reg <= buff_s_out_5_addr_reg_692_pp0_iter3_reg;
        buff_s_out_5_addr_reg_692_pp0_iter5_reg <= buff_s_out_5_addr_reg_692_pp0_iter4_reg;
        buff_s_out_5_addr_reg_692_pp0_iter6_reg <= buff_s_out_5_addr_reg_692_pp0_iter5_reg;
        buff_s_out_5_addr_reg_692_pp0_iter7_reg <= buff_s_out_5_addr_reg_692_pp0_iter6_reg;
        buff_s_out_6_addr_reg_697 <= zext_ln5_fu_524_p1;
        buff_s_out_6_addr_reg_697_pp0_iter3_reg <= buff_s_out_6_addr_reg_697;
        buff_s_out_6_addr_reg_697_pp0_iter4_reg <= buff_s_out_6_addr_reg_697_pp0_iter3_reg;
        buff_s_out_6_addr_reg_697_pp0_iter5_reg <= buff_s_out_6_addr_reg_697_pp0_iter4_reg;
        buff_s_out_6_addr_reg_697_pp0_iter6_reg <= buff_s_out_6_addr_reg_697_pp0_iter5_reg;
        buff_s_out_6_addr_reg_697_pp0_iter7_reg <= buff_s_out_6_addr_reg_697_pp0_iter6_reg;
        buff_s_out_7_addr_reg_702 <= zext_ln5_fu_524_p1;
        buff_s_out_7_addr_reg_702_pp0_iter3_reg <= buff_s_out_7_addr_reg_702;
        buff_s_out_7_addr_reg_702_pp0_iter4_reg <= buff_s_out_7_addr_reg_702_pp0_iter3_reg;
        buff_s_out_7_addr_reg_702_pp0_iter5_reg <= buff_s_out_7_addr_reg_702_pp0_iter4_reg;
        buff_s_out_7_addr_reg_702_pp0_iter6_reg <= buff_s_out_7_addr_reg_702_pp0_iter5_reg;
        buff_s_out_7_addr_reg_702_pp0_iter7_reg <= buff_s_out_7_addr_reg_702_pp0_iter6_reg;
        buff_s_out_addr_reg_663 <= zext_ln5_fu_524_p1;
        buff_s_out_addr_reg_663_pp0_iter3_reg <= buff_s_out_addr_reg_663;
        buff_s_out_addr_reg_663_pp0_iter4_reg <= buff_s_out_addr_reg_663_pp0_iter3_reg;
        buff_s_out_addr_reg_663_pp0_iter5_reg <= buff_s_out_addr_reg_663_pp0_iter4_reg;
        buff_s_out_addr_reg_663_pp0_iter6_reg <= buff_s_out_addr_reg_663_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_1_load_reg_712 <= buff_s_out_1_q1;
        buff_s_out_2_load_reg_717 <= buff_s_out_2_q1;
        buff_s_out_3_load_reg_722 <= buff_s_out_3_q1;
        buff_s_out_load_reg_707 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_4_load_reg_767 <= buff_s_out_4_q0;
        buff_s_out_5_load_reg_772 <= buff_s_out_5_q0;
        buff_s_out_6_load_reg_777 <= buff_s_out_6_q0;
        buff_s_out_7_load_reg_782 <= buff_s_out_7_q0;
        mul_4_reg_747 <= grp_fu_188_p_dout0;
        mul_5_reg_752 <= grp_fu_339_p2;
        mul_6_reg_757 <= grp_fu_343_p2;
        mul_7_reg_762 <= grp_fu_347_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_1_reg_732 <= grp_fu_339_p2;
        mul_2_reg_737 <= grp_fu_343_p2;
        mul_3_reg_742 <= grp_fu_347_p2;
        mul_reg_727 <= grp_fu_188_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_351 <= grp_fu_184_p_dout0;
        reg_357 <= grp_fu_323_p2;
        reg_363 <= grp_fu_327_p2;
        reg_369 <= grp_fu_331_p2;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_393_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce1_local = 1'b1;
    end else begin
        buff_A_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce1_local = 1'b1;
    end else begin
        buff_A_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce1_local = 1'b1;
    end else begin
        buff_A_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce1_local = 1'b1;
    end else begin
        buff_A_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_ce1_local = 1'b1;
    end else begin
        buff_s_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_ce1_local = 1'b1;
    end else begin
        buff_s_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_reg_687_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_reg_687;
    end else begin
        buff_s_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_s_out_4_ce0_local = 1'b1;
    end else begin
        buff_s_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_4_we0_local = 1'b1;
    end else begin
        buff_s_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_reg_692_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_reg_692;
    end else begin
        buff_s_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_s_out_5_ce0_local = 1'b1;
    end else begin
        buff_s_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_5_we0_local = 1'b1;
    end else begin
        buff_s_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_reg_697_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_reg_697;
    end else begin
        buff_s_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_s_out_6_ce0_local = 1'b1;
    end else begin
        buff_s_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_6_we0_local = 1'b1;
    end else begin
        buff_s_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_reg_702_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_reg_702;
    end else begin
        buff_s_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_s_out_7_ce0_local = 1'b1;
    end else begin
        buff_s_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_7_we0_local = 1'b1;
    end else begin
        buff_s_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_319_p0 = buff_s_out_4_load_reg_767;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_319_p0 = buff_s_out_load_reg_707;
    end else begin
        grp_fu_319_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_319_p1 = mul_4_reg_747;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_319_p1 = mul_reg_727;
    end else begin
        grp_fu_319_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_323_p0 = buff_s_out_5_load_reg_772;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_323_p0 = buff_s_out_1_load_reg_712;
    end else begin
        grp_fu_323_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_323_p1 = mul_5_reg_752;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_323_p1 = mul_1_reg_732;
    end else begin
        grp_fu_323_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_327_p0 = buff_s_out_6_load_reg_777;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_327_p0 = buff_s_out_2_load_reg_717;
    end else begin
        grp_fu_327_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_327_p1 = mul_6_reg_757;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_327_p1 = mul_2_reg_737;
    end else begin
        grp_fu_327_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_331_p0 = buff_s_out_7_load_reg_782;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_331_p0 = buff_s_out_3_load_reg_722;
    end else begin
        grp_fu_331_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_331_p1 = mul_7_reg_762;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_331_p1 = mul_3_reg_742;
    end else begin
        grp_fu_331_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_335_p0 = buff_A_load_1_reg_643;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_335_p0 = buff_A_load_reg_623;
    end else begin
        grp_fu_335_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_339_p0 = buff_A_1_load_1_reg_648;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_339_p0 = buff_A_1_load_reg_628;
    end else begin
        grp_fu_339_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_343_p0 = buff_A_2_load_1_reg_653;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_343_p0 = buff_A_2_load_reg_633;
    end else begin
        grp_fu_343_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_347_p0 = buff_A_3_load_1_reg_658;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_347_p0 = buff_A_3_load_reg_638;
    end else begin
        grp_fu_347_p0 = 'bx;
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
assign add_ln23_1_fu_399_p2 = (indvar_flatten7_fu_86 + 10'd1);
assign add_ln23_fu_411_p2 = (i_1_fu_82 + 7'd1);
assign add_ln24_fu_514_p2 = (select_ln5_reg_560 + 7'd8);
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
assign buff_A_1_address0 = zext_ln25_1_fu_496_p1;
assign buff_A_1_address1 = zext_ln25_fu_468_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_1_ce1 = buff_A_1_ce1_local;
assign buff_A_2_address0 = zext_ln25_1_fu_496_p1;
assign buff_A_2_address1 = zext_ln25_fu_468_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_2_ce1 = buff_A_2_ce1_local;
assign buff_A_3_address0 = zext_ln25_1_fu_496_p1;
assign buff_A_3_address1 = zext_ln25_fu_468_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_3_ce1 = buff_A_3_ce1_local;
assign buff_A_address0 = zext_ln25_1_fu_496_p1;
assign buff_A_address1 = zext_ln25_fu_468_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_ce1 = buff_A_ce1_local;
assign buff_r_address0 = zext_ln23_fu_445_p1;
assign buff_r_ce0 = buff_r_ce0_local;
assign buff_s_out_1_address0 = buff_s_out_1_addr_reg_669_pp0_iter6_reg;
assign buff_s_out_1_address1 = zext_ln5_fu_524_p1;
assign buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
assign buff_s_out_1_ce1 = buff_s_out_1_ce1_local;
assign buff_s_out_1_d0 = reg_357;
assign buff_s_out_1_we0 = buff_s_out_1_we0_local;
assign buff_s_out_2_address0 = buff_s_out_2_addr_reg_675_pp0_iter6_reg;
assign buff_s_out_2_address1 = zext_ln5_fu_524_p1;
assign buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
assign buff_s_out_2_ce1 = buff_s_out_2_ce1_local;
assign buff_s_out_2_d0 = reg_363;
assign buff_s_out_2_we0 = buff_s_out_2_we0_local;
assign buff_s_out_3_address0 = buff_s_out_3_addr_reg_681_pp0_iter6_reg;
assign buff_s_out_3_address1 = zext_ln5_fu_524_p1;
assign buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
assign buff_s_out_3_ce1 = buff_s_out_3_ce1_local;
assign buff_s_out_3_d0 = reg_369;
assign buff_s_out_3_we0 = buff_s_out_3_we0_local;
assign buff_s_out_4_address0 = buff_s_out_4_address0_local;
assign buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
assign buff_s_out_4_d0 = reg_351;
assign buff_s_out_4_we0 = buff_s_out_4_we0_local;
assign buff_s_out_5_address0 = buff_s_out_5_address0_local;
assign buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
assign buff_s_out_5_d0 = reg_357;
assign buff_s_out_5_we0 = buff_s_out_5_we0_local;
assign buff_s_out_6_address0 = buff_s_out_6_address0_local;
assign buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
assign buff_s_out_6_d0 = reg_363;
assign buff_s_out_6_we0 = buff_s_out_6_we0_local;
assign buff_s_out_7_address0 = buff_s_out_7_address0_local;
assign buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
assign buff_s_out_7_d0 = reg_369;
assign buff_s_out_7_we0 = buff_s_out_7_we0_local;
assign buff_s_out_address0 = buff_s_out_addr_reg_663_pp0_iter6_reg;
assign buff_s_out_address1 = zext_ln5_fu_524_p1;
assign buff_s_out_ce0 = buff_s_out_ce0_local;
assign buff_s_out_ce1 = buff_s_out_ce1_local;
assign buff_s_out_d0 = reg_351;
assign buff_s_out_we0 = buff_s_out_we0_local;
assign grp_fu_184_p_ce = 1'b1;
assign grp_fu_184_p_din0 = grp_fu_319_p0;
assign grp_fu_184_p_din1 = grp_fu_319_p1;
assign grp_fu_184_p_opcode = 2'd0;
assign grp_fu_188_p_ce = 1'b1;
assign grp_fu_188_p_din0 = grp_fu_335_p0;
assign grp_fu_188_p_din1 = buff_r_load_reg_615;
assign icmp_ln23_fu_393_p2 = ((indvar_flatten7_fu_86 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_450_p4 = {{select_ln5_fu_425_p3[5:2]}};
assign lshr_ln5_2_fu_476_p4 = {{select_ln5_fu_425_p3[5:3]}};
assign select_ln23_fu_433_p3 = ((tmp_fu_417_p3[0:0] == 1'b1) ? add_ln23_fu_411_p2 : i_1_fu_82);
assign select_ln5_fu_425_p3 = ((tmp_fu_417_p3[0:0] == 1'b1) ? 7'd0 : j_fu_78);
assign tmp_3_fu_460_p3 = {{trunc_ln23_fu_441_p1}, {lshr_ln5_1_fu_450_p4}};
assign tmp_5_fu_486_p4 = {{{trunc_ln23_fu_441_p1}, {lshr_ln5_2_fu_476_p4}}, {1'd1}};
assign tmp_fu_417_p3 = j_fu_78[32'd6];
assign trunc_ln23_fu_441_p1 = select_ln23_fu_433_p3[5:0];
assign zext_ln23_fu_445_p1 = select_ln23_fu_433_p3;
assign zext_ln25_1_fu_496_p1 = tmp_5_fu_486_p4;
assign zext_ln25_fu_468_p1 = tmp_3_fu_460_p3;
assign zext_ln5_fu_524_p1 = lshr_ln5_2_reg_590_pp0_iter1_reg;
endmodule 
