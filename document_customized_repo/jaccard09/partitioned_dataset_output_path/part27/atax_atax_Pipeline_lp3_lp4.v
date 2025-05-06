
module atax_atax_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp1_address0,tmp1_ce0,tmp1_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,buff_y_out_address1,buff_y_out_ce1,buff_y_out_q1,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,buff_y_out_1_address1,buff_y_out_1_ce1,buff_y_out_1_q1,buff_y_out_2_address0,buff_y_out_2_ce0,buff_y_out_2_we0,buff_y_out_2_d0,buff_y_out_2_address1,buff_y_out_2_ce1,buff_y_out_2_q1,buff_y_out_3_address0,buff_y_out_3_ce0,buff_y_out_3_we0,buff_y_out_3_d0,buff_y_out_3_address1,buff_y_out_3_ce1,buff_y_out_3_q1,grp_fu_158_p_din0,grp_fu_158_p_din1,grp_fu_158_p_opcode,grp_fu_158_p_dout0,grp_fu_158_p_ce,grp_fu_162_p_din0,grp_fu_162_p_din1,grp_fu_162_p_dout0,grp_fu_162_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [9:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [9:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [9:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [9:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [3:0] buff_y_out_address0;
output   buff_y_out_ce0;
output   buff_y_out_we0;
output  [31:0] buff_y_out_d0;
output  [3:0] buff_y_out_address1;
output   buff_y_out_ce1;
input  [31:0] buff_y_out_q1;
output  [3:0] buff_y_out_1_address0;
output   buff_y_out_1_ce0;
output   buff_y_out_1_we0;
output  [31:0] buff_y_out_1_d0;
output  [3:0] buff_y_out_1_address1;
output   buff_y_out_1_ce1;
input  [31:0] buff_y_out_1_q1;
output  [3:0] buff_y_out_2_address0;
output   buff_y_out_2_ce0;
output   buff_y_out_2_we0;
output  [31:0] buff_y_out_2_d0;
output  [3:0] buff_y_out_2_address1;
output   buff_y_out_2_ce1;
input  [31:0] buff_y_out_2_q1;
output  [3:0] buff_y_out_3_address0;
output   buff_y_out_3_ce0;
output   buff_y_out_3_we0;
output  [31:0] buff_y_out_3_d0;
output  [3:0] buff_y_out_3_address1;
output   buff_y_out_3_ce1;
input  [31:0] buff_y_out_3_q1;
output  [31:0] grp_fu_158_p_din0;
output  [31:0] grp_fu_158_p_din1;
output  [1:0] grp_fu_158_p_opcode;
input  [31:0] grp_fu_158_p_dout0;
output   grp_fu_158_p_ce;
output  [31:0] grp_fu_162_p_din0;
output  [31:0] grp_fu_162_p_din1;
input  [31:0] grp_fu_162_p_dout0;
output   grp_fu_162_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln26_fu_257_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] lshr_ln5_4_fu_319_p4;
reg   [3:0] lshr_ln5_4_reg_398;
reg   [3:0] lshr_ln5_4_reg_398_pp0_iter2_reg;
reg   [3:0] lshr_ln5_4_reg_398_pp0_iter3_reg;
reg   [3:0] lshr_ln5_4_reg_398_pp0_iter4_reg;
reg   [31:0] empty_reg_423;
reg   [31:0] buff_A_load_reg_431;
reg   [31:0] buff_A_1_load_reg_436;
reg   [31:0] buff_A_2_load_reg_441;
reg   [31:0] buff_A_3_load_reg_446;
reg   [3:0] buff_y_out_addr_reg_451;
reg   [3:0] buff_y_out_addr_reg_451_pp0_iter6_reg;
reg   [3:0] buff_y_out_addr_reg_451_pp0_iter7_reg;
reg   [3:0] buff_y_out_addr_reg_451_pp0_iter8_reg;
reg   [3:0] buff_y_out_addr_reg_451_pp0_iter9_reg;
reg   [3:0] buff_y_out_addr_reg_451_pp0_iter10_reg;
reg   [3:0] buff_y_out_addr_reg_451_pp0_iter11_reg;
reg   [3:0] buff_y_out_addr_reg_451_pp0_iter12_reg;
reg   [3:0] buff_y_out_addr_reg_451_pp0_iter13_reg;
reg   [3:0] buff_y_out_1_addr_reg_457;
reg   [3:0] buff_y_out_1_addr_reg_457_pp0_iter6_reg;
reg   [3:0] buff_y_out_1_addr_reg_457_pp0_iter7_reg;
reg   [3:0] buff_y_out_1_addr_reg_457_pp0_iter8_reg;
reg   [3:0] buff_y_out_1_addr_reg_457_pp0_iter9_reg;
reg   [3:0] buff_y_out_1_addr_reg_457_pp0_iter10_reg;
reg   [3:0] buff_y_out_1_addr_reg_457_pp0_iter11_reg;
reg   [3:0] buff_y_out_1_addr_reg_457_pp0_iter12_reg;
reg   [3:0] buff_y_out_1_addr_reg_457_pp0_iter13_reg;
reg   [3:0] buff_y_out_2_addr_reg_463;
reg   [3:0] buff_y_out_2_addr_reg_463_pp0_iter6_reg;
reg   [3:0] buff_y_out_2_addr_reg_463_pp0_iter7_reg;
reg   [3:0] buff_y_out_2_addr_reg_463_pp0_iter8_reg;
reg   [3:0] buff_y_out_2_addr_reg_463_pp0_iter9_reg;
reg   [3:0] buff_y_out_2_addr_reg_463_pp0_iter10_reg;
reg   [3:0] buff_y_out_2_addr_reg_463_pp0_iter11_reg;
reg   [3:0] buff_y_out_2_addr_reg_463_pp0_iter12_reg;
reg   [3:0] buff_y_out_2_addr_reg_463_pp0_iter13_reg;
reg   [3:0] buff_y_out_3_addr_reg_469;
reg   [3:0] buff_y_out_3_addr_reg_469_pp0_iter6_reg;
reg   [3:0] buff_y_out_3_addr_reg_469_pp0_iter7_reg;
reg   [3:0] buff_y_out_3_addr_reg_469_pp0_iter8_reg;
reg   [3:0] buff_y_out_3_addr_reg_469_pp0_iter9_reg;
reg   [3:0] buff_y_out_3_addr_reg_469_pp0_iter10_reg;
reg   [3:0] buff_y_out_3_addr_reg_469_pp0_iter11_reg;
reg   [3:0] buff_y_out_3_addr_reg_469_pp0_iter12_reg;
reg   [3:0] buff_y_out_3_addr_reg_469_pp0_iter13_reg;
reg   [31:0] buff_y_out_load_reg_475;
reg   [31:0] mul1_reg_480;
wire   [31:0] grp_fu_227_p2;
reg   [31:0] mul57_1_reg_485;
wire   [31:0] grp_fu_231_p2;
reg   [31:0] mul57_2_reg_490;
wire   [31:0] grp_fu_235_p2;
reg   [31:0] mul57_3_reg_495;
reg   [31:0] buff_y_out_1_load_reg_500;
reg   [31:0] buff_y_out_2_load_reg_505;
reg   [31:0] buff_y_out_3_load_reg_510;
reg   [31:0] add1_reg_515;
wire   [31:0] grp_fu_211_p2;
reg   [31:0] add58_1_reg_520;
wire   [31:0] grp_fu_215_p2;
reg   [31:0] add58_2_reg_525;
wire   [31:0] grp_fu_219_p2;
reg   [31:0] add58_3_reg_530;
wire   [63:0] zext_ln26_fu_314_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_fu_337_p1;
wire   [63:0] zext_ln5_fu_361_p1;
reg   [6:0] j_fu_62;
wire   [6:0] add_ln27_fu_345_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_66;
wire   [6:0] select_ln26_fu_302_p3;
reg   [10:0] indvar_flatten14_fu_70;
wire   [10:0] add_ln26_1_fu_263_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten14_load;
reg    tmp1_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_y_out_ce1_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_ce0_local;
reg    buff_y_out_1_ce1_local;
reg    buff_y_out_1_we0_local;
reg    buff_y_out_1_ce0_local;
reg    buff_y_out_2_ce1_local;
reg    buff_y_out_2_we0_local;
reg    buff_y_out_2_ce0_local;
reg    buff_y_out_3_ce1_local;
reg    buff_y_out_3_we0_local;
reg    buff_y_out_3_ce0_local;
wire   [0:0] tmp_fu_286_p3;
wire   [6:0] add_ln26_fu_280_p2;
wire   [6:0] select_ln5_fu_294_p3;
wire   [5:0] trunc_ln26_fu_310_p1;
wire   [9:0] tmp_6_fu_329_p3;
reg    ap_done_reg;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
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
#0 j_fu_62 = 7'd0;
#0 i_fu_66 = 7'd0;
#0 indvar_flatten14_fu_70 = 11'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(buff_y_out_1_load_reg_500),.din1(mul57_1_reg_485),.ce(1'b1),.dout(grp_fu_211_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(buff_y_out_2_load_reg_505),.din1(mul57_2_reg_490),.ce(1'b1),.dout(grp_fu_215_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(buff_y_out_3_load_reg_510),.din1(mul57_3_reg_495),.ce(1'b1),.dout(grp_fu_219_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(buff_A_1_load_reg_436),.din1(empty_reg_423),.ce(1'b1),.dout(grp_fu_227_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(buff_A_2_load_reg_441),.din1(empty_reg_423),.ce(1'b1),.dout(grp_fu_231_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U34(.clk(ap_clk),.reset(ap_rst),.din0(buff_A_3_load_reg_446),.din1(empty_reg_423),.ce(1'b1),.dout(grp_fu_235_p2));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_66 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_66 <= select_ln26_fu_302_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_257_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten14_fu_70 <= add_ln26_1_fu_263_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten14_fu_70 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_62 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_62 <= add_ln27_fu_345_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add1_reg_515 <= grp_fu_158_p_dout0;
        add58_1_reg_520 <= grp_fu_211_p2;
        add58_2_reg_525 <= grp_fu_215_p2;
        add58_3_reg_530 <= grp_fu_219_p2;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        buff_A_1_load_reg_436 <= buff_A_1_q0;
        buff_A_2_load_reg_441 <= buff_A_2_q0;
        buff_A_3_load_reg_446 <= buff_A_3_q0;
        buff_A_load_reg_431 <= buff_A_q0;
        buff_y_out_1_addr_reg_457 <= zext_ln5_fu_361_p1;
        buff_y_out_1_addr_reg_457_pp0_iter10_reg <= buff_y_out_1_addr_reg_457_pp0_iter9_reg;
        buff_y_out_1_addr_reg_457_pp0_iter11_reg <= buff_y_out_1_addr_reg_457_pp0_iter10_reg;
        buff_y_out_1_addr_reg_457_pp0_iter12_reg <= buff_y_out_1_addr_reg_457_pp0_iter11_reg;
        buff_y_out_1_addr_reg_457_pp0_iter13_reg <= buff_y_out_1_addr_reg_457_pp0_iter12_reg;
        buff_y_out_1_addr_reg_457_pp0_iter6_reg <= buff_y_out_1_addr_reg_457;
        buff_y_out_1_addr_reg_457_pp0_iter7_reg <= buff_y_out_1_addr_reg_457_pp0_iter6_reg;
        buff_y_out_1_addr_reg_457_pp0_iter8_reg <= buff_y_out_1_addr_reg_457_pp0_iter7_reg;
        buff_y_out_1_addr_reg_457_pp0_iter9_reg <= buff_y_out_1_addr_reg_457_pp0_iter8_reg;
        buff_y_out_2_addr_reg_463 <= zext_ln5_fu_361_p1;
        buff_y_out_2_addr_reg_463_pp0_iter10_reg <= buff_y_out_2_addr_reg_463_pp0_iter9_reg;
        buff_y_out_2_addr_reg_463_pp0_iter11_reg <= buff_y_out_2_addr_reg_463_pp0_iter10_reg;
        buff_y_out_2_addr_reg_463_pp0_iter12_reg <= buff_y_out_2_addr_reg_463_pp0_iter11_reg;
        buff_y_out_2_addr_reg_463_pp0_iter13_reg <= buff_y_out_2_addr_reg_463_pp0_iter12_reg;
        buff_y_out_2_addr_reg_463_pp0_iter6_reg <= buff_y_out_2_addr_reg_463;
        buff_y_out_2_addr_reg_463_pp0_iter7_reg <= buff_y_out_2_addr_reg_463_pp0_iter6_reg;
        buff_y_out_2_addr_reg_463_pp0_iter8_reg <= buff_y_out_2_addr_reg_463_pp0_iter7_reg;
        buff_y_out_2_addr_reg_463_pp0_iter9_reg <= buff_y_out_2_addr_reg_463_pp0_iter8_reg;
        buff_y_out_3_addr_reg_469 <= zext_ln5_fu_361_p1;
        buff_y_out_3_addr_reg_469_pp0_iter10_reg <= buff_y_out_3_addr_reg_469_pp0_iter9_reg;
        buff_y_out_3_addr_reg_469_pp0_iter11_reg <= buff_y_out_3_addr_reg_469_pp0_iter10_reg;
        buff_y_out_3_addr_reg_469_pp0_iter12_reg <= buff_y_out_3_addr_reg_469_pp0_iter11_reg;
        buff_y_out_3_addr_reg_469_pp0_iter13_reg <= buff_y_out_3_addr_reg_469_pp0_iter12_reg;
        buff_y_out_3_addr_reg_469_pp0_iter6_reg <= buff_y_out_3_addr_reg_469;
        buff_y_out_3_addr_reg_469_pp0_iter7_reg <= buff_y_out_3_addr_reg_469_pp0_iter6_reg;
        buff_y_out_3_addr_reg_469_pp0_iter8_reg <= buff_y_out_3_addr_reg_469_pp0_iter7_reg;
        buff_y_out_3_addr_reg_469_pp0_iter9_reg <= buff_y_out_3_addr_reg_469_pp0_iter8_reg;
        buff_y_out_addr_reg_451 <= zext_ln5_fu_361_p1;
        buff_y_out_addr_reg_451_pp0_iter10_reg <= buff_y_out_addr_reg_451_pp0_iter9_reg;
        buff_y_out_addr_reg_451_pp0_iter11_reg <= buff_y_out_addr_reg_451_pp0_iter10_reg;
        buff_y_out_addr_reg_451_pp0_iter12_reg <= buff_y_out_addr_reg_451_pp0_iter11_reg;
        buff_y_out_addr_reg_451_pp0_iter13_reg <= buff_y_out_addr_reg_451_pp0_iter12_reg;
        buff_y_out_addr_reg_451_pp0_iter6_reg <= buff_y_out_addr_reg_451;
        buff_y_out_addr_reg_451_pp0_iter7_reg <= buff_y_out_addr_reg_451_pp0_iter6_reg;
        buff_y_out_addr_reg_451_pp0_iter8_reg <= buff_y_out_addr_reg_451_pp0_iter7_reg;
        buff_y_out_addr_reg_451_pp0_iter9_reg <= buff_y_out_addr_reg_451_pp0_iter8_reg;
        empty_reg_423 <= tmp1_q0;
        lshr_ln5_4_reg_398_pp0_iter2_reg <= lshr_ln5_4_reg_398;
        lshr_ln5_4_reg_398_pp0_iter3_reg <= lshr_ln5_4_reg_398_pp0_iter2_reg;
        lshr_ln5_4_reg_398_pp0_iter4_reg <= lshr_ln5_4_reg_398_pp0_iter3_reg;
        mul1_reg_480 <= grp_fu_162_p_dout0;
        mul57_1_reg_485 <= grp_fu_227_p2;
        mul57_2_reg_490 <= grp_fu_231_p2;
        mul57_3_reg_495 <= grp_fu_235_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln5_4_reg_398 <= {{select_ln5_fu_294_p3[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        buff_y_out_1_load_reg_500 <= buff_y_out_1_q1;
        buff_y_out_2_load_reg_505 <= buff_y_out_2_q1;
        buff_y_out_3_load_reg_510 <= buff_y_out_3_q1;
        buff_y_out_load_reg_475 <= buff_y_out_q1;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_257_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten14_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten14_load = indvar_flatten14_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
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
assign add_ln26_1_fu_263_p2 = (ap_sig_allocacmp_indvar_flatten14_load + 11'd1);
assign add_ln26_fu_280_p2 = (i_fu_66 + 7'd1);
assign add_ln27_fu_345_p2 = (select_ln5_fu_294_p3 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln28_fu_337_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln28_fu_337_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln28_fu_337_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_address0 = zext_ln28_fu_337_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_y_out_1_address0 = buff_y_out_1_addr_reg_457_pp0_iter13_reg;
assign buff_y_out_1_address1 = zext_ln5_fu_361_p1;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_ce1 = buff_y_out_1_ce1_local;
assign buff_y_out_1_d0 = add58_1_reg_520;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_2_address0 = buff_y_out_2_addr_reg_463_pp0_iter13_reg;
assign buff_y_out_2_address1 = zext_ln5_fu_361_p1;
assign buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
assign buff_y_out_2_ce1 = buff_y_out_2_ce1_local;
assign buff_y_out_2_d0 = add58_2_reg_525;
assign buff_y_out_2_we0 = buff_y_out_2_we0_local;
assign buff_y_out_3_address0 = buff_y_out_3_addr_reg_469_pp0_iter13_reg;
assign buff_y_out_3_address1 = zext_ln5_fu_361_p1;
assign buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
assign buff_y_out_3_ce1 = buff_y_out_3_ce1_local;
assign buff_y_out_3_d0 = add58_3_reg_530;
assign buff_y_out_3_we0 = buff_y_out_3_we0_local;
assign buff_y_out_address0 = buff_y_out_addr_reg_451_pp0_iter13_reg;
assign buff_y_out_address1 = zext_ln5_fu_361_p1;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_ce1 = buff_y_out_ce1_local;
assign buff_y_out_d0 = add1_reg_515;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign grp_fu_158_p_ce = 1'b1;
assign grp_fu_158_p_din0 = buff_y_out_load_reg_475;
assign grp_fu_158_p_din1 = mul1_reg_480;
assign grp_fu_158_p_opcode = 2'd0;
assign grp_fu_162_p_ce = 1'b1;
assign grp_fu_162_p_din0 = buff_A_load_reg_431;
assign grp_fu_162_p_din1 = empty_reg_423;
assign icmp_ln26_fu_257_p2 = ((ap_sig_allocacmp_indvar_flatten14_load == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln5_4_fu_319_p4 = {{select_ln5_fu_294_p3[5:2]}};
assign select_ln26_fu_302_p3 = ((tmp_fu_286_p3[0:0] == 1'b1) ? add_ln26_fu_280_p2 : i_fu_66);
assign select_ln5_fu_294_p3 = ((tmp_fu_286_p3[0:0] == 1'b1) ? 7'd0 : j_fu_62);
assign tmp1_address0 = zext_ln26_fu_314_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp_6_fu_329_p3 = {{trunc_ln26_fu_310_p1}, {lshr_ln5_4_fu_319_p4}};
assign tmp_fu_286_p3 = j_fu_62[32'd6];
assign trunc_ln26_fu_310_p1 = select_ln26_fu_302_p3[5:0];
assign zext_ln26_fu_314_p1 = select_ln26_fu_302_p3;
assign zext_ln28_fu_337_p1 = tmp_6_fu_329_p3;
assign zext_ln5_fu_361_p1 = lshr_ln5_4_reg_398_pp0_iter4_reg;
endmodule 
