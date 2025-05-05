module kernel_correlation_Loop_VITIS_LOOP_258_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v217_address0,v217_ce0,v217_q0,v208_address0,v208_ce0,v208_we0,v208_d0,v208_address1,v208_ce1,v208_q1,v214_address0,v214_ce0,v214_q0,v153); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v217_address0;
output   v217_ce0;
input  [31:0] v217_q0;
output  [15:0] v208_address0;
output   v208_ce0;
output   v208_we0;
output  [31:0] v208_d0;
output  [15:0] v208_address1;
output   v208_ce1;
input  [31:0] v208_q1;
output  [7:0] v214_address0;
output   v214_ce0;
input  [31:0] v214_q0;
input  [31:0] v153;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln258_fu_249_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
reg   [31:0] v153_read_reg_315;
reg   [31:0] v153_read_reg_315_pp0_iter1_reg;
reg   [31:0] v153_read_reg_315_pp0_iter2_reg;
reg   [31:0] v153_read_reg_315_pp0_iter3_reg;
wire   [7:0] select_ln258_fu_175_p3;
reg   [7:0] select_ln258_reg_320;
wire   [15:0] add_ln262_fu_225_p2;
reg   [15:0] add_ln262_reg_325;
wire   [0:0] icmp_ln259_fu_243_p2;
reg   [0:0] icmp_ln259_reg_330;
reg   [0:0] icmp_ln258_reg_335;
wire   [63:0] zext_ln259_fu_270_p1;
reg   [63:0] zext_ln259_reg_339;
reg   [15:0] v208_addr_reg_344;
reg   [15:0] v208_addr_reg_344_pp0_iter2_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter3_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter4_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter5_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter6_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter7_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter8_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter9_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter10_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter11_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter12_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter13_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter14_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter15_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter16_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter17_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter18_reg;
reg   [15:0] v208_addr_reg_344_pp0_iter19_reg;
reg   [31:0] v217_load_reg_355;
reg   [31:0] v208_load_reg_360;
reg   [31:0] v214_load_reg_380;
wire   [31:0] grp_fu_133_p2;
reg   [31:0] v158_reg_390;
wire   [31:0] grp_fu_137_p2;
reg   [31:0] v160_reg_395;
wire   [31:0] grp_fu_141_p2;
reg   [31:0] v161_reg_400;
reg   [0:0] ap_phi_mux_icmp_ln25918_phi_fu_126_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln262_2_fu_274_p1;
reg   [15:0] indvar_flatten15_fu_62;
wire   [15:0] add_ln258_1_fu_237_p2;
reg   [15:0] ap_sig_allocacmp_indvar_flatten15_load;
reg   [8:0] v15416_fu_66;
wire   [8:0] v154_fu_183_p3;
reg   [8:0] ap_sig_allocacmp_v15416_load;
reg   [7:0] v15517_fu_70;
wire   [7:0] v155_fu_231_p2;
reg   [7:0] ap_sig_allocacmp_v15517_load;
reg    v217_ce0_local;
reg    v208_ce1_local;
reg    v208_we0_local;
wire   [31:0] bitcast_ln267_fu_290_p1;
reg    v208_ce0_local;
reg    v214_ce0_local;
wire   [31:0] grp_fu_133_p0;
wire   [31:0] grp_fu_133_p1;
wire   [31:0] grp_fu_137_p0;
wire   [8:0] add_ln258_fu_169_p2;
wire   [7:0] trunc_ln262_fu_191_p1;
wire   [12:0] tmp_fu_195_p3;
wire   [15:0] tmp_11_fu_203_p3;
wire   [15:0] zext_ln262_fu_211_p1;
wire   [15:0] sub_ln259_fu_215_p2;
wire   [15:0] zext_ln262_1_fu_221_p1;
reg    grp_fu_133_ce;
reg    grp_fu_137_ce;
reg    grp_fu_141_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_474;
reg    ap_condition_157;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten15_fu_62 = 16'd0;
#0 v15416_fu_66 = 9'd0;
#0 v15517_fu_70 = 8'd0;
end
kernel_correlation_fsub_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fsub_32ns_32ns_32_5_full_dsp_1_U38(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_133_p0),.din1(grp_fu_133_p1),.ce(grp_fu_133_ce),.dout(grp_fu_133_p2));
kernel_correlation_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U39(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_137_p0),.din1(v153_read_reg_315_pp0_iter3_reg),.ce(grp_fu_137_ce),.dout(grp_fu_137_p2));
kernel_correlation_fdiv_32ns_32ns_32_12_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_12_no_dsp_1_U40(.clk(ap_clk),.reset(ap_rst),.din0(v158_reg_390),.din1(v160_reg_395),.ce(grp_fu_141_ce),.dout(grp_fu_141_p2));
kernel_correlation_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter19_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_157)) begin
        indvar_flatten15_fu_62 <= add_ln258_1_fu_237_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_157)) begin
    v15416_fu_66 <= v154_fu_183_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_157)) begin
    v15517_fu_70 <= v155_fu_231_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln262_reg_325 <= add_ln262_fu_225_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln258_reg_335 <= icmp_ln258_fu_249_p2;
        select_ln258_reg_320 <= select_ln258_fu_175_p3;
        v153_read_reg_315 <= v153;
        v153_read_reg_315_pp0_iter1_reg <= v153_read_reg_315;
        v208_addr_reg_344 <= zext_ln262_2_fu_274_p1;
        zext_ln259_reg_339[7 : 0] <= zext_ln259_fu_270_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        v153_read_reg_315_pp0_iter2_reg <= v153_read_reg_315_pp0_iter1_reg;
        v153_read_reg_315_pp0_iter3_reg <= v153_read_reg_315_pp0_iter2_reg;
        v158_reg_390 <= grp_fu_133_p2;
        v160_reg_395 <= grp_fu_137_p2;
        v161_reg_400 <= grp_fu_141_p2;
        v208_addr_reg_344_pp0_iter10_reg <= v208_addr_reg_344_pp0_iter9_reg;
        v208_addr_reg_344_pp0_iter11_reg <= v208_addr_reg_344_pp0_iter10_reg;
        v208_addr_reg_344_pp0_iter12_reg <= v208_addr_reg_344_pp0_iter11_reg;
        v208_addr_reg_344_pp0_iter13_reg <= v208_addr_reg_344_pp0_iter12_reg;
        v208_addr_reg_344_pp0_iter14_reg <= v208_addr_reg_344_pp0_iter13_reg;
        v208_addr_reg_344_pp0_iter15_reg <= v208_addr_reg_344_pp0_iter14_reg;
        v208_addr_reg_344_pp0_iter16_reg <= v208_addr_reg_344_pp0_iter15_reg;
        v208_addr_reg_344_pp0_iter17_reg <= v208_addr_reg_344_pp0_iter16_reg;
        v208_addr_reg_344_pp0_iter18_reg <= v208_addr_reg_344_pp0_iter17_reg;
        v208_addr_reg_344_pp0_iter19_reg <= v208_addr_reg_344_pp0_iter18_reg;
        v208_addr_reg_344_pp0_iter2_reg <= v208_addr_reg_344;
        v208_addr_reg_344_pp0_iter3_reg <= v208_addr_reg_344_pp0_iter2_reg;
        v208_addr_reg_344_pp0_iter4_reg <= v208_addr_reg_344_pp0_iter3_reg;
        v208_addr_reg_344_pp0_iter5_reg <= v208_addr_reg_344_pp0_iter4_reg;
        v208_addr_reg_344_pp0_iter6_reg <= v208_addr_reg_344_pp0_iter5_reg;
        v208_addr_reg_344_pp0_iter7_reg <= v208_addr_reg_344_pp0_iter6_reg;
        v208_addr_reg_344_pp0_iter8_reg <= v208_addr_reg_344_pp0_iter7_reg;
        v208_addr_reg_344_pp0_iter9_reg <= v208_addr_reg_344_pp0_iter8_reg;
        v214_load_reg_380 <= v214_q0;
        v217_load_reg_355 <= v217_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln259_reg_330 <= icmp_ln259_fu_243_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v208_load_reg_360 <= v208_q1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln258_fu_249_p2 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_474)) begin
            ap_phi_mux_icmp_ln25918_phi_fu_126_p4 = icmp_ln259_reg_330;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln25918_phi_fu_126_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln25918_phi_fu_126_p4 = icmp_ln259_reg_330;
        end
    end else begin
        ap_phi_mux_icmp_ln25918_phi_fu_126_p4 = icmp_ln259_reg_330;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten15_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten15_load = indvar_flatten15_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15416_load = 9'd0;
    end else begin
        ap_sig_allocacmp_v15416_load = v15416_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15517_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v15517_load = v15517_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_133_ce = 1'b1;
    end else begin
        grp_fu_133_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_137_ce = 1'b1;
    end else begin
        grp_fu_137_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_141_ce = 1'b1;
    end else begin
        grp_fu_141_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter20 == 1'b1))) begin
        v208_ce0_local = 1'b1;
    end else begin
        v208_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v208_ce1_local = 1'b1;
    end else begin
        v208_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter20 == 1'b1))) begin
        v208_we0_local = 1'b1;
    end else begin
        v208_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v214_ce0_local = 1'b1;
    end else begin
        v214_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v217_ce0_local = 1'b1;
    end else begin
        v217_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln258_1_fu_237_p2 = (ap_sig_allocacmp_indvar_flatten15_load + 16'd1);
assign add_ln258_fu_169_p2 = (ap_sig_allocacmp_v15416_load + 9'd1);
assign add_ln262_fu_225_p2 = (sub_ln259_fu_215_p2 + zext_ln262_1_fu_221_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_157 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_474 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln258_reg_335 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln267_fu_290_p1 = v161_reg_400;
assign grp_fu_133_p0 = v208_load_reg_360;
assign grp_fu_133_p1 = v217_load_reg_355;
assign grp_fu_137_p0 = v214_load_reg_380;
assign icmp_ln258_fu_249_p2 = ((ap_sig_allocacmp_indvar_flatten15_load == 16'd62399) ? 1'b1 : 1'b0);
assign icmp_ln259_fu_243_p2 = ((v155_fu_231_p2 == 8'd240) ? 1'b1 : 1'b0);
assign select_ln258_fu_175_p3 = ((ap_phi_mux_icmp_ln25918_phi_fu_126_p4[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v15517_load);
assign sub_ln259_fu_215_p2 = (tmp_11_fu_203_p3 - zext_ln262_fu_211_p1);
assign tmp_11_fu_203_p3 = {{trunc_ln262_fu_191_p1}, {8'd0}};
assign tmp_fu_195_p3 = {{v154_fu_183_p3}, {4'd0}};
assign trunc_ln262_fu_191_p1 = v154_fu_183_p3[7:0];
assign v154_fu_183_p3 = ((ap_phi_mux_icmp_ln25918_phi_fu_126_p4[0:0] == 1'b1) ? add_ln258_fu_169_p2 : ap_sig_allocacmp_v15416_load);
assign v155_fu_231_p2 = (select_ln258_fu_175_p3 + 8'd1);
assign v208_address0 = v208_addr_reg_344_pp0_iter19_reg;
assign v208_address1 = zext_ln262_2_fu_274_p1;
assign v208_ce0 = v208_ce0_local;
assign v208_ce1 = v208_ce1_local;
assign v208_d0 = bitcast_ln267_fu_290_p1;
assign v208_we0 = v208_we0_local;
assign v214_address0 = zext_ln259_reg_339;
assign v214_ce0 = v214_ce0_local;
assign v217_address0 = zext_ln259_fu_270_p1;
assign v217_ce0 = v217_ce0_local;
assign zext_ln259_fu_270_p1 = select_ln258_reg_320;
assign zext_ln262_1_fu_221_p1 = select_ln258_fu_175_p3;
assign zext_ln262_2_fu_274_p1 = add_ln262_reg_325;
assign zext_ln262_fu_211_p1 = tmp_fu_195_p3;
always @ (posedge ap_clk) begin
    zext_ln259_reg_339[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 