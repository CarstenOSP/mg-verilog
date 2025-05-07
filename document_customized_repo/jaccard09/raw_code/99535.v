module k2mm_k2mm_Pipeline_lp7_lp8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_D_address0,buff_D_ce0,buff_D_q0,buff_D_address1,buff_D_ce1,buff_D_q1,buff_D_1_address0,buff_D_1_ce0,buff_D_1_q0,buff_D_1_address1,buff_D_1_ce1,buff_D_1_q1,buff_D_2_address0,buff_D_2_ce0,buff_D_2_q0,buff_D_2_address1,buff_D_2_ce1,buff_D_2_q1,buff_D_3_address0,buff_D_3_ce0,buff_D_3_q0,buff_D_3_address1,buff_D_3_ce1,buff_D_3_q1,buff_E_out_address0,buff_E_out_ce0,buff_E_out_we0,buff_E_out_d0,buff_E_out_address1,buff_E_out_ce1,buff_E_out_we1,buff_E_out_d1,buff_E_out_1_address0,buff_E_out_1_ce0,buff_E_out_1_we0,buff_E_out_1_d0,buff_E_out_1_address1,buff_E_out_1_ce1,buff_E_out_1_we1,buff_E_out_1_d1,buff_E_out_2_address0,buff_E_out_2_ce0,buff_E_out_2_we0,buff_E_out_2_d0,buff_E_out_2_address1,buff_E_out_2_ce1,buff_E_out_2_we1,buff_E_out_2_d1,buff_E_out_3_address0,buff_E_out_3_ce0,buff_E_out_3_we0,buff_E_out_3_d0,buff_E_out_3_address1,buff_E_out_3_ce1,buff_E_out_3_we1,buff_E_out_3_d1,tmp2_address0,tmp2_ce0,tmp2_q0,tmp2_address1,tmp2_ce1,tmp2_q1,tmp2_1_address0,tmp2_1_ce0,tmp2_1_q0,tmp2_1_address1,tmp2_1_ce1,tmp2_1_q1,tmp2_2_address0,tmp2_2_ce0,tmp2_2_q0,tmp2_2_address1,tmp2_2_ce1,tmp2_2_q1,tmp2_3_address0,tmp2_3_ce0,tmp2_3_q0,tmp2_3_address1,tmp2_3_ce1,tmp2_3_q1,beta,grp_fu_2138_p_din0,grp_fu_2138_p_din1,grp_fu_2138_p_opcode,grp_fu_2138_p_dout0,grp_fu_2138_p_ce,grp_fu_2146_p_din0,grp_fu_2146_p_din1,grp_fu_2146_p_opcode,grp_fu_2146_p_dout0,grp_fu_2146_p_ce,grp_fu_2150_p_din0,grp_fu_2150_p_din1,grp_fu_2150_p_opcode,grp_fu_2150_p_dout0,grp_fu_2150_p_ce,grp_fu_2154_p_din0,grp_fu_2154_p_din1,grp_fu_2154_p_opcode,grp_fu_2154_p_dout0,grp_fu_2154_p_ce,grp_fu_2158_p_din0,grp_fu_2158_p_din1,grp_fu_2158_p_opcode,grp_fu_2158_p_dout0,grp_fu_2158_p_ce,grp_fu_2162_p_din0,grp_fu_2162_p_din1,grp_fu_2162_p_opcode,grp_fu_2162_p_dout0,grp_fu_2162_p_ce,grp_fu_2166_p_din0,grp_fu_2166_p_din1,grp_fu_2166_p_opcode,grp_fu_2166_p_dout0,grp_fu_2166_p_ce,grp_fu_2170_p_din0,grp_fu_2170_p_din1,grp_fu_2170_p_opcode,grp_fu_2170_p_dout0,grp_fu_2170_p_ce,grp_fu_2142_p_din0,grp_fu_2142_p_din1,grp_fu_2142_p_dout0,grp_fu_2142_p_ce,grp_fu_2174_p_din0,grp_fu_2174_p_din1,grp_fu_2174_p_dout0,grp_fu_2174_p_ce,grp_fu_2178_p_din0,grp_fu_2178_p_din1,grp_fu_2178_p_dout0,grp_fu_2178_p_ce,grp_fu_2182_p_din0,grp_fu_2182_p_din1,grp_fu_2182_p_dout0,grp_fu_2182_p_ce,grp_fu_2186_p_din0,grp_fu_2186_p_din1,grp_fu_2186_p_dout0,grp_fu_2186_p_ce,grp_fu_2190_p_din0,grp_fu_2190_p_din1,grp_fu_2190_p_dout0,grp_fu_2190_p_ce,grp_fu_2194_p_din0,grp_fu_2194_p_din1,grp_fu_2194_p_dout0,grp_fu_2194_p_ce,grp_fu_2198_p_din0,grp_fu_2198_p_din1,grp_fu_2198_p_dout0,grp_fu_2198_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] buff_D_address0;
output   buff_D_ce0;
input  [31:0] buff_D_q0;
output  [9:0] buff_D_address1;
output   buff_D_ce1;
input  [31:0] buff_D_q1;
output  [9:0] buff_D_1_address0;
output   buff_D_1_ce0;
input  [31:0] buff_D_1_q0;
output  [9:0] buff_D_1_address1;
output   buff_D_1_ce1;
input  [31:0] buff_D_1_q1;
output  [9:0] buff_D_2_address0;
output   buff_D_2_ce0;
input  [31:0] buff_D_2_q0;
output  [9:0] buff_D_2_address1;
output   buff_D_2_ce1;
input  [31:0] buff_D_2_q1;
output  [9:0] buff_D_3_address0;
output   buff_D_3_ce0;
input  [31:0] buff_D_3_q0;
output  [9:0] buff_D_3_address1;
output   buff_D_3_ce1;
input  [31:0] buff_D_3_q1;
output  [9:0] buff_E_out_address0;
output   buff_E_out_ce0;
output   buff_E_out_we0;
output  [31:0] buff_E_out_d0;
output  [9:0] buff_E_out_address1;
output   buff_E_out_ce1;
output   buff_E_out_we1;
output  [31:0] buff_E_out_d1;
output  [9:0] buff_E_out_1_address0;
output   buff_E_out_1_ce0;
output   buff_E_out_1_we0;
output  [31:0] buff_E_out_1_d0;
output  [9:0] buff_E_out_1_address1;
output   buff_E_out_1_ce1;
output   buff_E_out_1_we1;
output  [31:0] buff_E_out_1_d1;
output  [9:0] buff_E_out_2_address0;
output   buff_E_out_2_ce0;
output   buff_E_out_2_we0;
output  [31:0] buff_E_out_2_d0;
output  [9:0] buff_E_out_2_address1;
output   buff_E_out_2_ce1;
output   buff_E_out_2_we1;
output  [31:0] buff_E_out_2_d1;
output  [9:0] buff_E_out_3_address0;
output   buff_E_out_3_ce0;
output   buff_E_out_3_we0;
output  [31:0] buff_E_out_3_d0;
output  [9:0] buff_E_out_3_address1;
output   buff_E_out_3_ce1;
output   buff_E_out_3_we1;
output  [31:0] buff_E_out_3_d1;
output  [9:0] tmp2_address0;
output   tmp2_ce0;
input  [31:0] tmp2_q0;
output  [9:0] tmp2_address1;
output   tmp2_ce1;
input  [31:0] tmp2_q1;
output  [9:0] tmp2_1_address0;
output   tmp2_1_ce0;
input  [31:0] tmp2_1_q0;
output  [9:0] tmp2_1_address1;
output   tmp2_1_ce1;
input  [31:0] tmp2_1_q1;
output  [9:0] tmp2_2_address0;
output   tmp2_2_ce0;
input  [31:0] tmp2_2_q0;
output  [9:0] tmp2_2_address1;
output   tmp2_2_ce1;
input  [31:0] tmp2_2_q1;
output  [9:0] tmp2_3_address0;
output   tmp2_3_ce0;
input  [31:0] tmp2_3_q0;
output  [9:0] tmp2_3_address1;
output   tmp2_3_ce1;
input  [31:0] tmp2_3_q1;
input  [31:0] beta;
output  [31:0] grp_fu_2138_p_din0;
output  [31:0] grp_fu_2138_p_din1;
output  [1:0] grp_fu_2138_p_opcode;
input  [31:0] grp_fu_2138_p_dout0;
output   grp_fu_2138_p_ce;
output  [31:0] grp_fu_2146_p_din0;
output  [31:0] grp_fu_2146_p_din1;
output  [1:0] grp_fu_2146_p_opcode;
input  [31:0] grp_fu_2146_p_dout0;
output   grp_fu_2146_p_ce;
output  [31:0] grp_fu_2150_p_din0;
output  [31:0] grp_fu_2150_p_din1;
output  [1:0] grp_fu_2150_p_opcode;
input  [31:0] grp_fu_2150_p_dout0;
output   grp_fu_2150_p_ce;
output  [31:0] grp_fu_2154_p_din0;
output  [31:0] grp_fu_2154_p_din1;
output  [1:0] grp_fu_2154_p_opcode;
input  [31:0] grp_fu_2154_p_dout0;
output   grp_fu_2154_p_ce;
output  [31:0] grp_fu_2158_p_din0;
output  [31:0] grp_fu_2158_p_din1;
output  [1:0] grp_fu_2158_p_opcode;
input  [31:0] grp_fu_2158_p_dout0;
output   grp_fu_2158_p_ce;
output  [31:0] grp_fu_2162_p_din0;
output  [31:0] grp_fu_2162_p_din1;
output  [1:0] grp_fu_2162_p_opcode;
input  [31:0] grp_fu_2162_p_dout0;
output   grp_fu_2162_p_ce;
output  [31:0] grp_fu_2166_p_din0;
output  [31:0] grp_fu_2166_p_din1;
output  [1:0] grp_fu_2166_p_opcode;
input  [31:0] grp_fu_2166_p_dout0;
output   grp_fu_2166_p_ce;
output  [31:0] grp_fu_2170_p_din0;
output  [31:0] grp_fu_2170_p_din1;
output  [1:0] grp_fu_2170_p_opcode;
input  [31:0] grp_fu_2170_p_dout0;
output   grp_fu_2170_p_ce;
output  [31:0] grp_fu_2142_p_din0;
output  [31:0] grp_fu_2142_p_din1;
input  [31:0] grp_fu_2142_p_dout0;
output   grp_fu_2142_p_ce;
output  [31:0] grp_fu_2174_p_din0;
output  [31:0] grp_fu_2174_p_din1;
input  [31:0] grp_fu_2174_p_dout0;
output   grp_fu_2174_p_ce;
output  [31:0] grp_fu_2178_p_din0;
output  [31:0] grp_fu_2178_p_din1;
input  [31:0] grp_fu_2178_p_dout0;
output   grp_fu_2178_p_ce;
output  [31:0] grp_fu_2182_p_din0;
output  [31:0] grp_fu_2182_p_din1;
input  [31:0] grp_fu_2182_p_dout0;
output   grp_fu_2182_p_ce;
output  [31:0] grp_fu_2186_p_din0;
output  [31:0] grp_fu_2186_p_din1;
input  [31:0] grp_fu_2186_p_dout0;
output   grp_fu_2186_p_ce;
output  [31:0] grp_fu_2190_p_din0;
output  [31:0] grp_fu_2190_p_din1;
input  [31:0] grp_fu_2190_p_dout0;
output   grp_fu_2190_p_ce;
output  [31:0] grp_fu_2194_p_din0;
output  [31:0] grp_fu_2194_p_din1;
input  [31:0] grp_fu_2194_p_dout0;
output   grp_fu_2194_p_ce;
output  [31:0] grp_fu_2198_p_din0;
output  [31:0] grp_fu_2198_p_din1;
input  [31:0] grp_fu_2198_p_dout0;
output   grp_fu_2198_p_ce;
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
wire   [0:0] icmp_ln43_fu_480_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln45_fu_555_p1;
reg   [63:0] zext_ln45_reg_644;
reg   [63:0] zext_ln45_reg_644_pp0_iter2_reg;
reg   [63:0] zext_ln45_reg_644_pp0_iter3_reg;
reg   [63:0] zext_ln45_reg_644_pp0_iter4_reg;
reg   [63:0] zext_ln45_reg_644_pp0_iter5_reg;
reg   [63:0] zext_ln45_reg_644_pp0_iter6_reg;
reg   [63:0] zext_ln45_reg_644_pp0_iter7_reg;
reg   [63:0] zext_ln45_reg_644_pp0_iter8_reg;
reg   [63:0] zext_ln45_reg_644_pp0_iter9_reg;
reg   [63:0] zext_ln45_reg_644_pp0_iter10_reg;
reg   [63:0] zext_ln45_reg_644_pp0_iter11_reg;
reg   [63:0] zext_ln45_reg_644_pp0_iter12_reg;
reg   [63:0] zext_ln45_reg_644_pp0_iter13_reg;
wire   [63:0] zext_ln45_1_fu_583_p1;
reg   [63:0] zext_ln45_1_reg_676;
reg   [63:0] zext_ln45_1_reg_676_pp0_iter2_reg;
reg   [63:0] zext_ln45_1_reg_676_pp0_iter3_reg;
reg   [63:0] zext_ln45_1_reg_676_pp0_iter4_reg;
reg   [63:0] zext_ln45_1_reg_676_pp0_iter5_reg;
reg   [63:0] zext_ln45_1_reg_676_pp0_iter6_reg;
reg   [63:0] zext_ln45_1_reg_676_pp0_iter7_reg;
reg   [63:0] zext_ln45_1_reg_676_pp0_iter8_reg;
reg   [63:0] zext_ln45_1_reg_676_pp0_iter9_reg;
reg   [63:0] zext_ln45_1_reg_676_pp0_iter10_reg;
reg   [63:0] zext_ln45_1_reg_676_pp0_iter11_reg;
reg   [63:0] zext_ln45_1_reg_676_pp0_iter12_reg;
reg   [63:0] zext_ln45_1_reg_676_pp0_iter13_reg;
reg   [31:0] buff_D_load_reg_708;
reg   [31:0] buff_D_1_load_reg_713;
reg   [31:0] buff_D_2_load_reg_718;
reg   [31:0] buff_D_3_load_reg_723;
reg   [31:0] buff_D_load_1_reg_728;
reg   [31:0] buff_D_1_load_1_reg_733;
reg   [31:0] buff_D_2_load_1_reg_738;
reg   [31:0] buff_D_3_load_1_reg_743;
reg   [31:0] mux_case_041_reg_788;
reg   [31:0] mul3_reg_793;
reg   [31:0] tmp2_1_load_reg_798;
reg   [31:0] tmp2_2_load_reg_803;
reg   [31:0] tmp2_3_load_reg_808;
reg   [31:0] mux_case_046_reg_813;
reg   [31:0] tmp2_1_load_1_reg_818;
reg   [31:0] tmp2_2_load_1_reg_823;
reg   [31:0] tmp2_3_load_1_reg_828;
reg   [31:0] mul126_1_reg_833;
reg   [31:0] mul126_2_reg_838;
reg   [31:0] mul126_3_reg_843;
reg   [31:0] mul126_4_reg_848;
reg   [31:0] mul126_5_reg_853;
reg   [31:0] mul126_6_reg_858;
reg   [31:0] mul126_7_reg_863;
reg   [31:0] add2_reg_868;
reg   [31:0] add127_1_reg_873;
reg   [31:0] add127_2_reg_878;
reg   [31:0] add127_3_reg_883;
reg   [31:0] add127_4_reg_888;
reg   [31:0] add127_5_reg_893;
reg   [31:0] add127_6_reg_898;
reg   [31:0] add127_7_reg_903;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_80;
wire   [6:0] add_ln44_fu_591_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_84;
wire   [6:0] select_ln43_fu_525_p3;
reg   [9:0] indvar_flatten37_fu_88;
wire   [9:0] add_ln43_1_fu_486_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten37_load;
reg    buff_D_ce1_local;
reg    buff_D_ce0_local;
reg    buff_D_1_ce1_local;
reg    buff_D_1_ce0_local;
reg    buff_D_2_ce1_local;
reg    buff_D_2_ce0_local;
reg    buff_D_3_ce1_local;
reg    buff_D_3_ce0_local;
reg    tmp2_ce1_local;
reg    tmp2_ce0_local;
reg    tmp2_1_ce1_local;
reg    tmp2_1_ce0_local;
reg    tmp2_2_ce1_local;
reg    tmp2_2_ce0_local;
reg    tmp2_3_ce1_local;
reg    tmp2_3_ce0_local;
reg    buff_E_out_we1_local;
reg    buff_E_out_ce1_local;
reg    buff_E_out_we0_local;
reg    buff_E_out_ce0_local;
reg    buff_E_out_1_we1_local;
reg    buff_E_out_1_ce1_local;
reg    buff_E_out_1_we0_local;
reg    buff_E_out_1_ce0_local;
reg    buff_E_out_2_we1_local;
reg    buff_E_out_2_ce1_local;
reg    buff_E_out_2_we0_local;
reg    buff_E_out_2_ce0_local;
reg    buff_E_out_3_we1_local;
reg    buff_E_out_3_ce1_local;
reg    buff_E_out_3_we0_local;
reg    buff_E_out_3_ce0_local;
wire   [0:0] tmp_fu_509_p3;
wire   [6:0] add_ln43_fu_503_p2;
wire   [6:0] select_ln6_fu_517_p3;
wire   [5:0] trunc_ln6_fu_533_p1;
wire   [3:0] lshr_ln6_4_fu_537_p4;
wire   [9:0] tmp_s_fu_547_p3;
wire   [2:0] tmp_1_fu_563_p4;
wire   [9:0] tmp_2_fu_573_p4;
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
#0 j_fu_80 = 7'd0;
#0 i_fu_84 = 7'd0;
#0 indvar_flatten37_fu_88 = 10'd0;
#0 ap_done_reg = 1'b0;
end
k2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            i_fu_84 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_84 <= select_ln43_fu_525_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln43_fu_480_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten37_fu_88 <= add_ln43_1_fu_486_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten37_fu_88 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_80 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_80 <= add_ln44_fu_591_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add127_1_reg_873 <= grp_fu_2146_p_dout0;
        add127_2_reg_878 <= grp_fu_2150_p_dout0;
        add127_3_reg_883 <= grp_fu_2154_p_dout0;
        add127_4_reg_888 <= grp_fu_2158_p_dout0;
        add127_5_reg_893 <= grp_fu_2162_p_dout0;
        add127_6_reg_898 <= grp_fu_2166_p_dout0;
        add127_7_reg_903 <= grp_fu_2170_p_dout0;
        add2_reg_868 <= grp_fu_2138_p_dout0;
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
        mul126_1_reg_833 <= grp_fu_2174_p_dout0;
        mul126_2_reg_838 <= grp_fu_2178_p_dout0;
        mul126_3_reg_843 <= grp_fu_2182_p_dout0;
        mul126_4_reg_848 <= grp_fu_2186_p_dout0;
        mul126_5_reg_853 <= grp_fu_2190_p_dout0;
        mul126_6_reg_858 <= grp_fu_2194_p_dout0;
        mul126_7_reg_863 <= grp_fu_2198_p_dout0;
        mul3_reg_793 <= grp_fu_2142_p_dout0;
        zext_ln45_1_reg_676_pp0_iter10_reg[9 : 1] <= zext_ln45_1_reg_676_pp0_iter9_reg[9 : 1];
        zext_ln45_1_reg_676_pp0_iter11_reg[9 : 1] <= zext_ln45_1_reg_676_pp0_iter10_reg[9 : 1];
        zext_ln45_1_reg_676_pp0_iter12_reg[9 : 1] <= zext_ln45_1_reg_676_pp0_iter11_reg[9 : 1];
        zext_ln45_1_reg_676_pp0_iter13_reg[9 : 1] <= zext_ln45_1_reg_676_pp0_iter12_reg[9 : 1];
        zext_ln45_1_reg_676_pp0_iter2_reg[9 : 1] <= zext_ln45_1_reg_676[9 : 1];
        zext_ln45_1_reg_676_pp0_iter3_reg[9 : 1] <= zext_ln45_1_reg_676_pp0_iter2_reg[9 : 1];
        zext_ln45_1_reg_676_pp0_iter4_reg[9 : 1] <= zext_ln45_1_reg_676_pp0_iter3_reg[9 : 1];
        zext_ln45_1_reg_676_pp0_iter5_reg[9 : 1] <= zext_ln45_1_reg_676_pp0_iter4_reg[9 : 1];
        zext_ln45_1_reg_676_pp0_iter6_reg[9 : 1] <= zext_ln45_1_reg_676_pp0_iter5_reg[9 : 1];
        zext_ln45_1_reg_676_pp0_iter7_reg[9 : 1] <= zext_ln45_1_reg_676_pp0_iter6_reg[9 : 1];
        zext_ln45_1_reg_676_pp0_iter8_reg[9 : 1] <= zext_ln45_1_reg_676_pp0_iter7_reg[9 : 1];
        zext_ln45_1_reg_676_pp0_iter9_reg[9 : 1] <= zext_ln45_1_reg_676_pp0_iter8_reg[9 : 1];
        zext_ln45_reg_644_pp0_iter10_reg[9 : 0] <= zext_ln45_reg_644_pp0_iter9_reg[9 : 0];
        zext_ln45_reg_644_pp0_iter11_reg[9 : 0] <= zext_ln45_reg_644_pp0_iter10_reg[9 : 0];
        zext_ln45_reg_644_pp0_iter12_reg[9 : 0] <= zext_ln45_reg_644_pp0_iter11_reg[9 : 0];
        zext_ln45_reg_644_pp0_iter13_reg[9 : 0] <= zext_ln45_reg_644_pp0_iter12_reg[9 : 0];
        zext_ln45_reg_644_pp0_iter2_reg[9 : 0] <= zext_ln45_reg_644[9 : 0];
        zext_ln45_reg_644_pp0_iter3_reg[9 : 0] <= zext_ln45_reg_644_pp0_iter2_reg[9 : 0];
        zext_ln45_reg_644_pp0_iter4_reg[9 : 0] <= zext_ln45_reg_644_pp0_iter3_reg[9 : 0];
        zext_ln45_reg_644_pp0_iter5_reg[9 : 0] <= zext_ln45_reg_644_pp0_iter4_reg[9 : 0];
        zext_ln45_reg_644_pp0_iter6_reg[9 : 0] <= zext_ln45_reg_644_pp0_iter5_reg[9 : 0];
        zext_ln45_reg_644_pp0_iter7_reg[9 : 0] <= zext_ln45_reg_644_pp0_iter6_reg[9 : 0];
        zext_ln45_reg_644_pp0_iter8_reg[9 : 0] <= zext_ln45_reg_644_pp0_iter7_reg[9 : 0];
        zext_ln45_reg_644_pp0_iter9_reg[9 : 0] <= zext_ln45_reg_644_pp0_iter8_reg[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        zext_ln45_1_reg_676[9 : 1] <= zext_ln45_1_fu_583_p1[9 : 1];
        zext_ln45_reg_644[9 : 0] <= zext_ln45_fu_555_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_D_1_load_1_reg_733 <= buff_D_1_q0;
        buff_D_1_load_reg_713 <= buff_D_1_q1;
        buff_D_2_load_1_reg_738 <= buff_D_2_q0;
        buff_D_2_load_reg_718 <= buff_D_2_q1;
        buff_D_3_load_1_reg_743 <= buff_D_3_q0;
        buff_D_3_load_reg_723 <= buff_D_3_q1;
        buff_D_load_1_reg_728 <= buff_D_q0;
        buff_D_load_reg_708 <= buff_D_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        mux_case_041_reg_788 <= tmp2_q1;
        mux_case_046_reg_813 <= tmp2_q0;
        tmp2_1_load_1_reg_818 <= tmp2_1_q0;
        tmp2_1_load_reg_798 <= tmp2_1_q1;
        tmp2_2_load_1_reg_823 <= tmp2_2_q0;
        tmp2_2_load_reg_803 <= tmp2_2_q1;
        tmp2_3_load_1_reg_828 <= tmp2_3_q0;
        tmp2_3_load_reg_808 <= tmp2_3_q1;
    end
end
always @ (*) begin
    if (((icmp_ln43_fu_480_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
        ap_sig_allocacmp_indvar_flatten37_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten37_load = indvar_flatten37_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_1_ce0_local = 1'b1;
    end else begin
        buff_D_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_1_ce1_local = 1'b1;
    end else begin
        buff_D_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_2_ce0_local = 1'b1;
    end else begin
        buff_D_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_2_ce1_local = 1'b1;
    end else begin
        buff_D_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_3_ce0_local = 1'b1;
    end else begin
        buff_D_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_3_ce1_local = 1'b1;
    end else begin
        buff_D_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_ce0_local = 1'b1;
    end else begin
        buff_D_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_ce1_local = 1'b1;
    end else begin
        buff_D_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_1_ce0_local = 1'b1;
    end else begin
        buff_E_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_1_ce1_local = 1'b1;
    end else begin
        buff_E_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_1_we0_local = 1'b1;
    end else begin
        buff_E_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_1_we1_local = 1'b1;
    end else begin
        buff_E_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_2_ce0_local = 1'b1;
    end else begin
        buff_E_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_2_ce1_local = 1'b1;
    end else begin
        buff_E_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_2_we0_local = 1'b1;
    end else begin
        buff_E_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_2_we1_local = 1'b1;
    end else begin
        buff_E_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_3_ce0_local = 1'b1;
    end else begin
        buff_E_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_3_ce1_local = 1'b1;
    end else begin
        buff_E_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_3_we0_local = 1'b1;
    end else begin
        buff_E_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_3_we1_local = 1'b1;
    end else begin
        buff_E_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_ce0_local = 1'b1;
    end else begin
        buff_E_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_ce1_local = 1'b1;
    end else begin
        buff_E_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_we0_local = 1'b1;
    end else begin
        buff_E_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_we1_local = 1'b1;
    end else begin
        buff_E_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tmp2_1_ce1_local = 1'b1;
    end else begin
        tmp2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tmp2_2_ce0_local = 1'b1;
    end else begin
        tmp2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tmp2_2_ce1_local = 1'b1;
    end else begin
        tmp2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tmp2_3_ce0_local = 1'b1;
    end else begin
        tmp2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tmp2_3_ce1_local = 1'b1;
    end else begin
        tmp2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tmp2_ce1_local = 1'b1;
    end else begin
        tmp2_ce1_local = 1'b0;
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
assign add_ln43_1_fu_486_p2 = (ap_sig_allocacmp_indvar_flatten37_load + 10'd1);
assign add_ln43_fu_503_p2 = (i_fu_84 + 7'd1);
assign add_ln44_fu_591_p2 = (select_ln6_fu_517_p3 + 7'd8);
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
assign buff_D_1_address0 = zext_ln45_1_fu_583_p1;
assign buff_D_1_address1 = zext_ln45_fu_555_p1;
assign buff_D_1_ce0 = buff_D_1_ce0_local;
assign buff_D_1_ce1 = buff_D_1_ce1_local;
assign buff_D_2_address0 = zext_ln45_1_fu_583_p1;
assign buff_D_2_address1 = zext_ln45_fu_555_p1;
assign buff_D_2_ce0 = buff_D_2_ce0_local;
assign buff_D_2_ce1 = buff_D_2_ce1_local;
assign buff_D_3_address0 = zext_ln45_1_fu_583_p1;
assign buff_D_3_address1 = zext_ln45_fu_555_p1;
assign buff_D_3_ce0 = buff_D_3_ce0_local;
assign buff_D_3_ce1 = buff_D_3_ce1_local;
assign buff_D_address0 = zext_ln45_1_fu_583_p1;
assign buff_D_address1 = zext_ln45_fu_555_p1;
assign buff_D_ce0 = buff_D_ce0_local;
assign buff_D_ce1 = buff_D_ce1_local;
assign buff_E_out_1_address0 = zext_ln45_1_reg_676_pp0_iter13_reg;
assign buff_E_out_1_address1 = zext_ln45_reg_644_pp0_iter13_reg;
assign buff_E_out_1_ce0 = buff_E_out_1_ce0_local;
assign buff_E_out_1_ce1 = buff_E_out_1_ce1_local;
assign buff_E_out_1_d0 = add127_5_reg_893;
assign buff_E_out_1_d1 = add127_1_reg_873;
assign buff_E_out_1_we0 = buff_E_out_1_we0_local;
assign buff_E_out_1_we1 = buff_E_out_1_we1_local;
assign buff_E_out_2_address0 = zext_ln45_1_reg_676_pp0_iter13_reg;
assign buff_E_out_2_address1 = zext_ln45_reg_644_pp0_iter13_reg;
assign buff_E_out_2_ce0 = buff_E_out_2_ce0_local;
assign buff_E_out_2_ce1 = buff_E_out_2_ce1_local;
assign buff_E_out_2_d0 = add127_6_reg_898;
assign buff_E_out_2_d1 = add127_2_reg_878;
assign buff_E_out_2_we0 = buff_E_out_2_we0_local;
assign buff_E_out_2_we1 = buff_E_out_2_we1_local;
assign buff_E_out_3_address0 = zext_ln45_1_reg_676_pp0_iter13_reg;
assign buff_E_out_3_address1 = zext_ln45_reg_644_pp0_iter13_reg;
assign buff_E_out_3_ce0 = buff_E_out_3_ce0_local;
assign buff_E_out_3_ce1 = buff_E_out_3_ce1_local;
assign buff_E_out_3_d0 = add127_7_reg_903;
assign buff_E_out_3_d1 = add127_3_reg_883;
assign buff_E_out_3_we0 = buff_E_out_3_we0_local;
assign buff_E_out_3_we1 = buff_E_out_3_we1_local;
assign buff_E_out_address0 = zext_ln45_1_reg_676_pp0_iter13_reg;
assign buff_E_out_address1 = zext_ln45_reg_644_pp0_iter13_reg;
assign buff_E_out_ce0 = buff_E_out_ce0_local;
assign buff_E_out_ce1 = buff_E_out_ce1_local;
assign buff_E_out_d0 = add127_4_reg_888;
assign buff_E_out_d1 = add2_reg_868;
assign buff_E_out_we0 = buff_E_out_we0_local;
assign buff_E_out_we1 = buff_E_out_we1_local;
assign grp_fu_2138_p_ce = 1'b1;
assign grp_fu_2138_p_din0 = mux_case_041_reg_788;
assign grp_fu_2138_p_din1 = mul3_reg_793;
assign grp_fu_2138_p_opcode = 2'd0;
assign grp_fu_2142_p_ce = 1'b1;
assign grp_fu_2142_p_din0 = buff_D_load_reg_708;
assign grp_fu_2142_p_din1 = beta;
assign grp_fu_2146_p_ce = 1'b1;
assign grp_fu_2146_p_din0 = tmp2_1_load_reg_798;
assign grp_fu_2146_p_din1 = mul126_1_reg_833;
assign grp_fu_2146_p_opcode = 2'd0;
assign grp_fu_2150_p_ce = 1'b1;
assign grp_fu_2150_p_din0 = tmp2_2_load_reg_803;
assign grp_fu_2150_p_din1 = mul126_2_reg_838;
assign grp_fu_2150_p_opcode = 2'd0;
assign grp_fu_2154_p_ce = 1'b1;
assign grp_fu_2154_p_din0 = tmp2_3_load_reg_808;
assign grp_fu_2154_p_din1 = mul126_3_reg_843;
assign grp_fu_2154_p_opcode = 2'd0;
assign grp_fu_2158_p_ce = 1'b1;
assign grp_fu_2158_p_din0 = mux_case_046_reg_813;
assign grp_fu_2158_p_din1 = mul126_4_reg_848;
assign grp_fu_2158_p_opcode = 2'd0;
assign grp_fu_2162_p_ce = 1'b1;
assign grp_fu_2162_p_din0 = tmp2_1_load_1_reg_818;
assign grp_fu_2162_p_din1 = mul126_5_reg_853;
assign grp_fu_2162_p_opcode = 2'd0;
assign grp_fu_2166_p_ce = 1'b1;
assign grp_fu_2166_p_din0 = tmp2_2_load_1_reg_823;
assign grp_fu_2166_p_din1 = mul126_6_reg_858;
assign grp_fu_2166_p_opcode = 2'd0;
assign grp_fu_2170_p_ce = 1'b1;
assign grp_fu_2170_p_din0 = tmp2_3_load_1_reg_828;
assign grp_fu_2170_p_din1 = mul126_7_reg_863;
assign grp_fu_2170_p_opcode = 2'd0;
assign grp_fu_2174_p_ce = 1'b1;
assign grp_fu_2174_p_din0 = buff_D_1_load_reg_713;
assign grp_fu_2174_p_din1 = beta;
assign grp_fu_2178_p_ce = 1'b1;
assign grp_fu_2178_p_din0 = buff_D_2_load_reg_718;
assign grp_fu_2178_p_din1 = beta;
assign grp_fu_2182_p_ce = 1'b1;
assign grp_fu_2182_p_din0 = buff_D_3_load_reg_723;
assign grp_fu_2182_p_din1 = beta;
assign grp_fu_2186_p_ce = 1'b1;
assign grp_fu_2186_p_din0 = buff_D_load_1_reg_728;
assign grp_fu_2186_p_din1 = beta;
assign grp_fu_2190_p_ce = 1'b1;
assign grp_fu_2190_p_din0 = buff_D_1_load_1_reg_733;
assign grp_fu_2190_p_din1 = beta;
assign grp_fu_2194_p_ce = 1'b1;
assign grp_fu_2194_p_din0 = buff_D_2_load_1_reg_738;
assign grp_fu_2194_p_din1 = beta;
assign grp_fu_2198_p_ce = 1'b1;
assign grp_fu_2198_p_din0 = buff_D_3_load_1_reg_743;
assign grp_fu_2198_p_din1 = beta;
assign icmp_ln43_fu_480_p2 = ((ap_sig_allocacmp_indvar_flatten37_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln6_4_fu_537_p4 = {{select_ln6_fu_517_p3[5:2]}};
assign select_ln43_fu_525_p3 = ((tmp_fu_509_p3[0:0] == 1'b1) ? add_ln43_fu_503_p2 : i_fu_84);
assign select_ln6_fu_517_p3 = ((tmp_fu_509_p3[0:0] == 1'b1) ? 7'd0 : j_fu_80);
assign tmp2_1_address0 = zext_ln45_1_reg_676_pp0_iter4_reg;
assign tmp2_1_address1 = zext_ln45_reg_644_pp0_iter4_reg;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_1_ce1 = tmp2_1_ce1_local;
assign tmp2_2_address0 = zext_ln45_1_reg_676_pp0_iter4_reg;
assign tmp2_2_address1 = zext_ln45_reg_644_pp0_iter4_reg;
assign tmp2_2_ce0 = tmp2_2_ce0_local;
assign tmp2_2_ce1 = tmp2_2_ce1_local;
assign tmp2_3_address0 = zext_ln45_1_reg_676_pp0_iter4_reg;
assign tmp2_3_address1 = zext_ln45_reg_644_pp0_iter4_reg;
assign tmp2_3_ce0 = tmp2_3_ce0_local;
assign tmp2_3_ce1 = tmp2_3_ce1_local;
assign tmp2_address0 = zext_ln45_1_reg_676_pp0_iter4_reg;
assign tmp2_address1 = zext_ln45_reg_644_pp0_iter4_reg;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp2_ce1 = tmp2_ce1_local;
assign tmp_1_fu_563_p4 = {{select_ln6_fu_517_p3[5:3]}};
assign tmp_2_fu_573_p4 = {{{trunc_ln6_fu_533_p1}, {tmp_1_fu_563_p4}}, {1'd1}};
assign tmp_fu_509_p3 = j_fu_80[32'd6];
assign tmp_s_fu_547_p3 = {{trunc_ln6_fu_533_p1}, {lshr_ln6_4_fu_537_p4}};
assign trunc_ln6_fu_533_p1 = select_ln43_fu_525_p3[5:0];
assign zext_ln45_1_fu_583_p1 = tmp_2_fu_573_p4;
assign zext_ln45_fu_555_p1 = tmp_s_fu_547_p3;
always @ (posedge ap_clk) begin
    zext_ln45_reg_644[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_644_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_644_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_644_pp0_iter4_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_644_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_644_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_644_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_644_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_644_pp0_iter9_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_644_pp0_iter10_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_644_pp0_iter11_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_644_pp0_iter12_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_644_pp0_iter13_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676[0] <= 1'b1;
    zext_ln45_1_reg_676[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676_pp0_iter2_reg[0] <= 1'b1;
    zext_ln45_1_reg_676_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676_pp0_iter3_reg[0] <= 1'b1;
    zext_ln45_1_reg_676_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676_pp0_iter4_reg[0] <= 1'b1;
    zext_ln45_1_reg_676_pp0_iter4_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676_pp0_iter5_reg[0] <= 1'b1;
    zext_ln45_1_reg_676_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676_pp0_iter6_reg[0] <= 1'b1;
    zext_ln45_1_reg_676_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676_pp0_iter7_reg[0] <= 1'b1;
    zext_ln45_1_reg_676_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676_pp0_iter8_reg[0] <= 1'b1;
    zext_ln45_1_reg_676_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676_pp0_iter9_reg[0] <= 1'b1;
    zext_ln45_1_reg_676_pp0_iter9_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676_pp0_iter10_reg[0] <= 1'b1;
    zext_ln45_1_reg_676_pp0_iter10_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676_pp0_iter11_reg[0] <= 1'b1;
    zext_ln45_1_reg_676_pp0_iter11_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676_pp0_iter12_reg[0] <= 1'b1;
    zext_ln45_1_reg_676_pp0_iter12_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_676_pp0_iter13_reg[0] <= 1'b1;
    zext_ln45_1_reg_676_pp0_iter13_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 