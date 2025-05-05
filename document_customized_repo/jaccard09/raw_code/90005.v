module syrk_syrk_Pipeline_lp4_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_address1,buff_B_ce1,buff_B_q1,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_1_address1,buff_B_1_ce1,buff_B_1_q1,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_q0,buff_C_out_address1,buff_C_out_ce1,buff_C_out_we1,buff_C_out_d1,buff_C_out_q1,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_q0,buff_C_out_1_address1,buff_C_out_1_ce1,buff_C_out_1_we1,buff_C_out_1_d1,buff_C_out_1_q1,beta,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_opcode,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce); 
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
output  [10:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [10:0] buff_B_address1;
output   buff_B_ce1;
input  [31:0] buff_B_q1;
output  [10:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [10:0] buff_B_1_address1;
output   buff_B_1_ce1;
input  [31:0] buff_B_1_q1;
output  [10:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
input  [31:0] buff_C_out_q0;
output  [10:0] buff_C_out_address1;
output   buff_C_out_ce1;
output   buff_C_out_we1;
output  [31:0] buff_C_out_d1;
input  [31:0] buff_C_out_q1;
output  [10:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
input  [31:0] buff_C_out_1_q0;
output  [10:0] buff_C_out_1_address1;
output   buff_C_out_1_ce1;
output   buff_C_out_1_we1;
output  [31:0] buff_C_out_1_d1;
input  [31:0] buff_C_out_1_q1;
input  [31:0] beta;
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
output  [1:0] grp_fu_164_p_opcode;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln29_reg_494;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_262;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_250_p2;
reg   [31:0] reg_267;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln29_fu_290_p2;
reg   [0:0] icmp_ln29_reg_494_pp0_iter1_reg;
reg   [0:0] icmp_ln29_reg_494_pp0_iter2_reg;
reg   [0:0] icmp_ln29_reg_494_pp0_iter3_reg;
wire   [6:0] select_ln5_fu_322_p3;
reg   [6:0] select_ln5_reg_498;
wire   [5:0] trunc_ln5_fu_338_p1;
reg   [5:0] trunc_ln5_reg_503;
reg   [10:0] buff_C_out_addr_reg_519;
reg   [10:0] buff_C_out_addr_reg_519_pp0_iter1_reg;
reg   [10:0] buff_C_out_addr_reg_519_pp0_iter2_reg;
reg   [10:0] buff_C_out_addr_reg_519_pp0_iter3_reg;
reg   [10:0] buff_C_out_1_addr_reg_524;
reg   [10:0] buff_C_out_1_addr_reg_524_pp0_iter1_reg;
reg   [10:0] buff_C_out_1_addr_reg_524_pp0_iter2_reg;
reg   [10:0] buff_C_out_1_addr_reg_524_pp0_iter3_reg;
reg   [10:0] buff_C_out_addr_1_reg_539;
reg   [10:0] buff_C_out_addr_1_reg_539_pp0_iter1_reg;
reg   [10:0] buff_C_out_addr_1_reg_539_pp0_iter2_reg;
reg   [10:0] buff_C_out_addr_1_reg_539_pp0_iter3_reg;
reg   [10:0] buff_C_out_1_addr_1_reg_544;
reg   [10:0] buff_C_out_1_addr_1_reg_544_pp0_iter1_reg;
reg   [10:0] buff_C_out_1_addr_1_reg_544_pp0_iter2_reg;
reg   [10:0] buff_C_out_1_addr_1_reg_544_pp0_iter3_reg;
reg   [2:0] tmp_8_reg_549;
reg   [0:0] tmp_2_reg_555;
reg   [31:0] buff_B_load_reg_560;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [10:0] buff_C_out_addr_2_reg_575;
reg   [10:0] buff_C_out_addr_2_reg_575_pp0_iter1_reg;
reg   [10:0] buff_C_out_addr_2_reg_575_pp0_iter2_reg;
reg   [10:0] buff_C_out_addr_2_reg_575_pp0_iter3_reg;
reg   [10:0] buff_C_out_1_addr_2_reg_580;
reg   [10:0] buff_C_out_1_addr_2_reg_580_pp0_iter1_reg;
reg   [10:0] buff_C_out_1_addr_2_reg_580_pp0_iter2_reg;
reg   [10:0] buff_C_out_1_addr_2_reg_580_pp0_iter3_reg;
reg   [10:0] buff_C_out_addr_3_reg_595;
reg   [10:0] buff_C_out_addr_3_reg_595_pp0_iter1_reg;
reg   [10:0] buff_C_out_addr_3_reg_595_pp0_iter2_reg;
reg   [10:0] buff_C_out_addr_3_reg_595_pp0_iter3_reg;
reg   [10:0] buff_C_out_addr_3_reg_595_pp0_iter4_reg;
reg   [10:0] buff_C_out_1_addr_3_reg_600;
reg   [10:0] buff_C_out_1_addr_3_reg_600_pp0_iter1_reg;
reg   [10:0] buff_C_out_1_addr_3_reg_600_pp0_iter2_reg;
reg   [10:0] buff_C_out_1_addr_3_reg_600_pp0_iter3_reg;
reg   [10:0] buff_C_out_1_addr_3_reg_600_pp0_iter4_reg;
reg   [31:0] buff_B_1_load_reg_605;
reg   [31:0] buff_B_load_1_reg_610;
reg   [31:0] buff_B_1_load_1_reg_615;
reg   [31:0] buff_B_load_2_reg_620;
reg   [31:0] buff_B_1_load_2_reg_625;
reg   [31:0] buff_B_load_3_reg_630;
reg   [31:0] buff_B_1_load_3_reg_635;
reg   [31:0] mul1_reg_640;
reg   [31:0] buff_C_out_load_reg_645;
wire   [31:0] grp_fu_258_p2;
reg   [31:0] mul74_1_reg_650;
reg   [31:0] buff_C_out_1_load_reg_655;
reg   [31:0] buff_C_out_load_1_reg_660;
reg   [31:0] buff_C_out_1_load_1_reg_665;
reg   [31:0] mul74_2_reg_670;
reg   [31:0] mul74_3_reg_675;
reg   [31:0] buff_C_out_load_2_reg_680;
reg   [31:0] buff_C_out_1_load_2_reg_685;
reg   [31:0] buff_C_out_load_3_reg_690;
reg   [31:0] buff_C_out_1_load_3_reg_695;
reg   [31:0] mul74_4_reg_700;
reg   [31:0] mul74_5_reg_705;
reg   [31:0] mul74_6_reg_710;
reg   [31:0] mul74_7_reg_715;
reg   [31:0] add79_2_reg_720;
reg   [31:0] add79_3_reg_725;
reg   [31:0] add79_6_reg_730;
reg   [31:0] add79_7_reg_735;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln32_fu_360_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln32_1_fu_388_p1;
wire   [63:0] zext_ln32_2_fu_433_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln32_3_fu_449_p1;
reg   [6:0] j_fu_72;
wire   [6:0] add_ln30_fu_457_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_76;
wire   [6:0] select_ln29_fu_330_p3;
reg   [9:0] indvar_flatten28_fu_80;
wire   [9:0] add_ln29_1_fu_296_p2;
reg    buff_B_ce1_local;
reg   [10:0] buff_B_address1_local;
reg    buff_B_ce0_local;
reg   [10:0] buff_B_address0_local;
reg    buff_B_1_ce1_local;
reg   [10:0] buff_B_1_address1_local;
reg    buff_B_1_ce0_local;
reg   [10:0] buff_B_1_address0_local;
reg    buff_C_out_ce1_local;
reg   [10:0] buff_C_out_address1_local;
reg    buff_C_out_ce0_local;
reg   [10:0] buff_C_out_address0_local;
reg    buff_C_out_we1_local;
wire    ap_block_pp0_stage3;
reg    buff_C_out_we0_local;
reg   [31:0] buff_C_out_d0_local;
wire    ap_block_pp0_stage0;
reg    buff_C_out_1_ce1_local;
reg   [10:0] buff_C_out_1_address1_local;
reg    buff_C_out_1_ce0_local;
reg   [10:0] buff_C_out_1_address0_local;
reg    buff_C_out_1_we1_local;
reg    buff_C_out_1_we0_local;
reg   [31:0] buff_C_out_1_d0_local;
reg   [31:0] grp_fu_246_p0;
reg   [31:0] grp_fu_246_p1;
reg   [31:0] grp_fu_250_p0;
reg   [31:0] grp_fu_250_p1;
reg   [31:0] grp_fu_254_p0;
reg   [31:0] grp_fu_258_p0;
wire   [0:0] tmp_fu_314_p3;
wire   [6:0] add_ln29_fu_308_p2;
wire   [4:0] lshr_ln5_2_fu_342_p4;
wire   [10:0] tmp_5_fu_352_p3;
wire   [3:0] tmp_6_fu_368_p4;
wire   [10:0] tmp_7_fu_378_p4;
wire   [10:0] tmp_s_fu_424_p5;
wire   [10:0] tmp_1_fu_441_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage0;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_72 = 7'd0;
#0 i_fu_76 = 7'd0;
#0 indvar_flatten28_fu_80 = 10'd0;
#0 ap_done_reg = 1'b0;
end
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_250_p0),.din1(grp_fu_250_p1),.ce(1'b1),.dout(grp_fu_250_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U25(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_258_p0),.din1(beta),.ce(1'b1),.dout(grp_fu_258_p2));
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_76 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln29_fu_290_p2 == 1'd0))) begin
        i_fu_76 <= select_ln29_fu_330_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten28_fu_80 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln29_fu_290_p2 == 1'd0))) begin
        indvar_flatten28_fu_80 <= add_ln29_1_fu_296_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_72 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_72 <= add_ln30_fu_457_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add79_2_reg_720 <= grp_fu_164_p_dout0;
        add79_3_reg_725 <= grp_fu_250_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add79_6_reg_730 <= grp_fu_164_p_dout0;
        add79_7_reg_735 <= grp_fu_250_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B_1_load_1_reg_615 <= buff_B_1_q0;
        buff_B_1_load_reg_605 <= buff_B_1_q1;
        buff_B_load_1_reg_610 <= buff_B_q0;
        buff_B_load_reg_560 <= buff_B_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_B_1_load_2_reg_625 <= buff_B_1_q1;
        buff_B_1_load_3_reg_635 <= buff_B_1_q0;
        buff_B_load_2_reg_620 <= buff_B_q1;
        buff_B_load_3_reg_630 <= buff_B_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_1_addr_1_reg_544[10 : 1] <= zext_ln32_1_fu_388_p1[10 : 1];
        buff_C_out_1_addr_1_reg_544_pp0_iter1_reg[10 : 1] <= buff_C_out_1_addr_1_reg_544[10 : 1];
        buff_C_out_1_addr_1_reg_544_pp0_iter2_reg[10 : 1] <= buff_C_out_1_addr_1_reg_544_pp0_iter1_reg[10 : 1];
        buff_C_out_1_addr_1_reg_544_pp0_iter3_reg[10 : 1] <= buff_C_out_1_addr_1_reg_544_pp0_iter2_reg[10 : 1];
        buff_C_out_1_addr_reg_524 <= zext_ln32_fu_360_p1;
        buff_C_out_1_addr_reg_524_pp0_iter1_reg <= buff_C_out_1_addr_reg_524;
        buff_C_out_1_addr_reg_524_pp0_iter2_reg <= buff_C_out_1_addr_reg_524_pp0_iter1_reg;
        buff_C_out_1_addr_reg_524_pp0_iter3_reg <= buff_C_out_1_addr_reg_524_pp0_iter2_reg;
        buff_C_out_addr_1_reg_539[10 : 1] <= zext_ln32_1_fu_388_p1[10 : 1];
        buff_C_out_addr_1_reg_539_pp0_iter1_reg[10 : 1] <= buff_C_out_addr_1_reg_539[10 : 1];
        buff_C_out_addr_1_reg_539_pp0_iter2_reg[10 : 1] <= buff_C_out_addr_1_reg_539_pp0_iter1_reg[10 : 1];
        buff_C_out_addr_1_reg_539_pp0_iter3_reg[10 : 1] <= buff_C_out_addr_1_reg_539_pp0_iter2_reg[10 : 1];
        buff_C_out_addr_reg_519 <= zext_ln32_fu_360_p1;
        buff_C_out_addr_reg_519_pp0_iter1_reg <= buff_C_out_addr_reg_519;
        buff_C_out_addr_reg_519_pp0_iter2_reg <= buff_C_out_addr_reg_519_pp0_iter1_reg;
        buff_C_out_addr_reg_519_pp0_iter3_reg <= buff_C_out_addr_reg_519_pp0_iter2_reg;
        icmp_ln29_reg_494 <= icmp_ln29_fu_290_p2;
        icmp_ln29_reg_494_pp0_iter1_reg <= icmp_ln29_reg_494;
        icmp_ln29_reg_494_pp0_iter2_reg <= icmp_ln29_reg_494_pp0_iter1_reg;
        icmp_ln29_reg_494_pp0_iter3_reg <= icmp_ln29_reg_494_pp0_iter2_reg;
        select_ln5_reg_498 <= select_ln5_fu_322_p3;
        tmp_2_reg_555 <= select_ln5_fu_322_p3[32'd1];
        tmp_8_reg_549 <= {{select_ln5_fu_322_p3[5:3]}};
        trunc_ln5_reg_503 <= trunc_ln5_fu_338_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_1_addr_2_reg_580[0] <= zext_ln32_2_fu_433_p1[0];
buff_C_out_1_addr_2_reg_580[10 : 2] <= zext_ln32_2_fu_433_p1[10 : 2];
        buff_C_out_1_addr_2_reg_580_pp0_iter1_reg[0] <= buff_C_out_1_addr_2_reg_580[0];
buff_C_out_1_addr_2_reg_580_pp0_iter1_reg[10 : 2] <= buff_C_out_1_addr_2_reg_580[10 : 2];
        buff_C_out_1_addr_2_reg_580_pp0_iter2_reg[0] <= buff_C_out_1_addr_2_reg_580_pp0_iter1_reg[0];
buff_C_out_1_addr_2_reg_580_pp0_iter2_reg[10 : 2] <= buff_C_out_1_addr_2_reg_580_pp0_iter1_reg[10 : 2];
        buff_C_out_1_addr_2_reg_580_pp0_iter3_reg[0] <= buff_C_out_1_addr_2_reg_580_pp0_iter2_reg[0];
buff_C_out_1_addr_2_reg_580_pp0_iter3_reg[10 : 2] <= buff_C_out_1_addr_2_reg_580_pp0_iter2_reg[10 : 2];
        buff_C_out_1_addr_3_reg_600[10 : 2] <= zext_ln32_3_fu_449_p1[10 : 2];
        buff_C_out_1_addr_3_reg_600_pp0_iter1_reg[10 : 2] <= buff_C_out_1_addr_3_reg_600[10 : 2];
        buff_C_out_1_addr_3_reg_600_pp0_iter2_reg[10 : 2] <= buff_C_out_1_addr_3_reg_600_pp0_iter1_reg[10 : 2];
        buff_C_out_1_addr_3_reg_600_pp0_iter3_reg[10 : 2] <= buff_C_out_1_addr_3_reg_600_pp0_iter2_reg[10 : 2];
        buff_C_out_1_addr_3_reg_600_pp0_iter4_reg[10 : 2] <= buff_C_out_1_addr_3_reg_600_pp0_iter3_reg[10 : 2];
        buff_C_out_addr_2_reg_575[0] <= zext_ln32_2_fu_433_p1[0];
buff_C_out_addr_2_reg_575[10 : 2] <= zext_ln32_2_fu_433_p1[10 : 2];
        buff_C_out_addr_2_reg_575_pp0_iter1_reg[0] <= buff_C_out_addr_2_reg_575[0];
buff_C_out_addr_2_reg_575_pp0_iter1_reg[10 : 2] <= buff_C_out_addr_2_reg_575[10 : 2];
        buff_C_out_addr_2_reg_575_pp0_iter2_reg[0] <= buff_C_out_addr_2_reg_575_pp0_iter1_reg[0];
buff_C_out_addr_2_reg_575_pp0_iter2_reg[10 : 2] <= buff_C_out_addr_2_reg_575_pp0_iter1_reg[10 : 2];
        buff_C_out_addr_2_reg_575_pp0_iter3_reg[0] <= buff_C_out_addr_2_reg_575_pp0_iter2_reg[0];
buff_C_out_addr_2_reg_575_pp0_iter3_reg[10 : 2] <= buff_C_out_addr_2_reg_575_pp0_iter2_reg[10 : 2];
        buff_C_out_addr_3_reg_595[10 : 2] <= zext_ln32_3_fu_449_p1[10 : 2];
        buff_C_out_addr_3_reg_595_pp0_iter1_reg[10 : 2] <= buff_C_out_addr_3_reg_595[10 : 2];
        buff_C_out_addr_3_reg_595_pp0_iter2_reg[10 : 2] <= buff_C_out_addr_3_reg_595_pp0_iter1_reg[10 : 2];
        buff_C_out_addr_3_reg_595_pp0_iter3_reg[10 : 2] <= buff_C_out_addr_3_reg_595_pp0_iter2_reg[10 : 2];
        buff_C_out_addr_3_reg_595_pp0_iter4_reg[10 : 2] <= buff_C_out_addr_3_reg_595_pp0_iter3_reg[10 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_1_load_1_reg_665 <= buff_C_out_1_q0;
        buff_C_out_1_load_reg_655 <= buff_C_out_1_q1;
        buff_C_out_load_1_reg_660 <= buff_C_out_q0;
        buff_C_out_load_reg_645 <= buff_C_out_q1;
        mul1_reg_640 <= grp_fu_168_p_dout0;
        mul74_1_reg_650 <= grp_fu_258_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_1_load_2_reg_685 <= buff_C_out_1_q1;
        buff_C_out_1_load_3_reg_695 <= buff_C_out_1_q0;
        buff_C_out_load_2_reg_680 <= buff_C_out_q1;
        buff_C_out_load_3_reg_690 <= buff_C_out_q0;
        mul74_2_reg_670 <= grp_fu_168_p_dout0;
        mul74_3_reg_675 <= grp_fu_258_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul74_4_reg_700 <= grp_fu_168_p_dout0;
        mul74_5_reg_705 <= grp_fu_258_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul74_6_reg_710 <= grp_fu_168_p_dout0;
        mul74_7_reg_715 <= grp_fu_258_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_262 <= grp_fu_164_p_dout0;
        reg_267 <= grp_fu_250_p2;
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_494 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_reg_494_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            buff_B_1_address0_local = zext_ln32_3_fu_449_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buff_B_1_address0_local = zext_ln32_1_fu_388_p1;
        end else begin
            buff_B_1_address0_local = 'bx;
        end
    end else begin
        buff_B_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            buff_B_1_address1_local = zext_ln32_2_fu_433_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buff_B_1_address1_local = zext_ln32_fu_360_p1;
        end else begin
            buff_B_1_address1_local = 'bx;
        end
    end else begin
        buff_B_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_B_1_ce1_local = 1'b1;
    end else begin
        buff_B_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            buff_B_address0_local = zext_ln32_3_fu_449_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buff_B_address0_local = zext_ln32_1_fu_388_p1;
        end else begin
            buff_B_address0_local = 'bx;
        end
    end else begin
        buff_B_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            buff_B_address1_local = zext_ln32_2_fu_433_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buff_B_address1_local = zext_ln32_fu_360_p1;
        end else begin
            buff_B_address1_local = 'bx;
        end
    end else begin
        buff_B_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_B_ce1_local = 1'b1;
    end else begin
        buff_B_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_3_reg_600_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_1_reg_544_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_3_reg_600;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_1_reg_544;
    end else begin
        buff_C_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_address1_local = buff_C_out_1_addr_2_reg_580_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_1_address1_local = buff_C_out_1_addr_reg_524_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_1_address1_local = buff_C_out_1_addr_2_reg_580;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_1_address1_local = buff_C_out_1_addr_reg_524;
    end else begin
        buff_C_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_C_out_1_ce1_local = 1'b1;
    end else begin
        buff_C_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_d0_local = add79_7_reg_735;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_1_d0_local = add79_3_reg_725;
    end else begin
        buff_C_out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        buff_C_out_1_we1_local = 1'b1;
    end else begin
        buff_C_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_address0_local = buff_C_out_addr_3_reg_595_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_address0_local = buff_C_out_addr_1_reg_539_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_address0_local = buff_C_out_addr_3_reg_595;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_address0_local = buff_C_out_addr_1_reg_539;
    end else begin
        buff_C_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_address1_local = buff_C_out_addr_2_reg_575_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_address1_local = buff_C_out_addr_reg_519_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_address1_local = buff_C_out_addr_2_reg_575;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_address1_local = buff_C_out_addr_reg_519;
    end else begin
        buff_C_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_C_out_ce1_local = 1'b1;
    end else begin
        buff_C_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_d0_local = add79_6_reg_730;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_d0_local = add79_2_reg_720;
    end else begin
        buff_C_out_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        buff_C_out_we1_local = 1'b1;
    end else begin
        buff_C_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_246_p0 = buff_C_out_load_3_reg_690;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_246_p0 = buff_C_out_load_2_reg_680;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_246_p0 = buff_C_out_load_1_reg_660;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_246_p0 = buff_C_out_load_reg_645;
    end else begin
        grp_fu_246_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_246_p1 = mul74_6_reg_710;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_246_p1 = mul74_4_reg_700;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_246_p1 = mul74_2_reg_670;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_246_p1 = mul1_reg_640;
    end else begin
        grp_fu_246_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_250_p0 = buff_C_out_1_load_3_reg_695;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_250_p0 = buff_C_out_1_load_2_reg_685;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_250_p0 = buff_C_out_1_load_1_reg_665;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_250_p0 = buff_C_out_1_load_reg_655;
    end else begin
        grp_fu_250_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_250_p1 = mul74_7_reg_715;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_250_p1 = mul74_5_reg_705;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_250_p1 = mul74_3_reg_675;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_250_p1 = mul74_1_reg_650;
    end else begin
        grp_fu_250_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_254_p0 = buff_B_load_3_reg_630;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_254_p0 = buff_B_load_2_reg_620;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_254_p0 = buff_B_load_1_reg_610;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_254_p0 = buff_B_load_reg_560;
    end else begin
        grp_fu_254_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_258_p0 = buff_B_1_load_3_reg_635;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_258_p0 = buff_B_1_load_2_reg_625;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_258_p0 = buff_B_1_load_1_reg_615;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_258_p0 = buff_B_1_load_reg_605;
    end else begin
        grp_fu_258_p0 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln29_1_fu_296_p2 = (indvar_flatten28_fu_80 + 10'd1);
assign add_ln29_fu_308_p2 = (i_fu_76 + 7'd1);
assign add_ln30_fu_457_p2 = (select_ln5_reg_498 + 7'd8);
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
assign buff_B_1_address0 = buff_B_1_address0_local;
assign buff_B_1_address1 = buff_B_1_address1_local;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_ce1 = buff_B_1_ce1_local;
assign buff_B_address0 = buff_B_address0_local;
assign buff_B_address1 = buff_B_address1_local;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_ce1 = buff_B_ce1_local;
assign buff_C_out_1_address0 = buff_C_out_1_address0_local;
assign buff_C_out_1_address1 = buff_C_out_1_address1_local;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_ce1 = buff_C_out_1_ce1_local;
assign buff_C_out_1_d0 = buff_C_out_1_d0_local;
assign buff_C_out_1_d1 = reg_267;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_1_we1 = buff_C_out_1_we1_local;
assign buff_C_out_address0 = buff_C_out_address0_local;
assign buff_C_out_address1 = buff_C_out_address1_local;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_ce1 = buff_C_out_ce1_local;
assign buff_C_out_d0 = buff_C_out_d0_local;
assign buff_C_out_d1 = reg_262;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign buff_C_out_we1 = buff_C_out_we1_local;
assign grp_fu_164_p_ce = 1'b1;
assign grp_fu_164_p_din0 = grp_fu_246_p0;
assign grp_fu_164_p_din1 = grp_fu_246_p1;
assign grp_fu_164_p_opcode = 2'd0;
assign grp_fu_168_p_ce = 1'b1;
assign grp_fu_168_p_din0 = grp_fu_254_p0;
assign grp_fu_168_p_din1 = beta;
assign icmp_ln29_fu_290_p2 = ((indvar_flatten28_fu_80 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_2_fu_342_p4 = {{select_ln5_fu_322_p3[5:1]}};
assign select_ln29_fu_330_p3 = ((tmp_fu_314_p3[0:0] == 1'b1) ? add_ln29_fu_308_p2 : i_fu_76);
assign select_ln5_fu_322_p3 = ((tmp_fu_314_p3[0:0] == 1'b1) ? 7'd0 : j_fu_72);
assign tmp_1_fu_441_p4 = {{{trunc_ln5_reg_503}, {tmp_8_reg_549}}, {2'd3}};
assign tmp_5_fu_352_p3 = {{trunc_ln5_fu_338_p1}, {lshr_ln5_2_fu_342_p4}};
assign tmp_6_fu_368_p4 = {{select_ln5_fu_322_p3[5:2]}};
assign tmp_7_fu_378_p4 = {{{trunc_ln5_fu_338_p1}, {tmp_6_fu_368_p4}}, {1'd1}};
assign tmp_fu_314_p3 = j_fu_72[32'd6];
assign tmp_s_fu_424_p5 = {{{{trunc_ln5_reg_503}, {tmp_8_reg_549}}, {1'd1}}, {tmp_2_reg_555}};
assign trunc_ln5_fu_338_p1 = select_ln29_fu_330_p3[5:0];
assign zext_ln32_1_fu_388_p1 = tmp_7_fu_378_p4;
assign zext_ln32_2_fu_433_p1 = tmp_s_fu_424_p5;
assign zext_ln32_3_fu_449_p1 = tmp_1_fu_441_p4;
assign zext_ln32_fu_360_p1 = tmp_5_fu_352_p3;
always @ (posedge ap_clk) begin
    buff_C_out_addr_1_reg_539[0] <= 1'b1;
    buff_C_out_addr_1_reg_539_pp0_iter1_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_539_pp0_iter2_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_539_pp0_iter3_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_544[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_544_pp0_iter1_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_544_pp0_iter2_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_544_pp0_iter3_reg[0] <= 1'b1;
    buff_C_out_addr_2_reg_575[1] <= 1'b1;
    buff_C_out_addr_2_reg_575_pp0_iter1_reg[1] <= 1'b1;
    buff_C_out_addr_2_reg_575_pp0_iter2_reg[1] <= 1'b1;
    buff_C_out_addr_2_reg_575_pp0_iter3_reg[1] <= 1'b1;
    buff_C_out_1_addr_2_reg_580[1] <= 1'b1;
    buff_C_out_1_addr_2_reg_580_pp0_iter1_reg[1] <= 1'b1;
    buff_C_out_1_addr_2_reg_580_pp0_iter2_reg[1] <= 1'b1;
    buff_C_out_1_addr_2_reg_580_pp0_iter3_reg[1] <= 1'b1;
    buff_C_out_addr_3_reg_595[1:0] <= 2'b11;
    buff_C_out_addr_3_reg_595_pp0_iter1_reg[1:0] <= 2'b11;
    buff_C_out_addr_3_reg_595_pp0_iter2_reg[1:0] <= 2'b11;
    buff_C_out_addr_3_reg_595_pp0_iter3_reg[1:0] <= 2'b11;
    buff_C_out_addr_3_reg_595_pp0_iter4_reg[1:0] <= 2'b11;
    buff_C_out_1_addr_3_reg_600[1:0] <= 2'b11;
    buff_C_out_1_addr_3_reg_600_pp0_iter1_reg[1:0] <= 2'b11;
    buff_C_out_1_addr_3_reg_600_pp0_iter2_reg[1:0] <= 2'b11;
    buff_C_out_1_addr_3_reg_600_pp0_iter3_reg[1:0] <= 2'b11;
    buff_C_out_1_addr_3_reg_600_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 