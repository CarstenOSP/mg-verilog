module syr2k_syr2k_Pipeline_lp7_lp8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_C_address0,buff_C_ce0,buff_C_q0,buff_C_address1,buff_C_ce1,buff_C_q1,buff_C_1_address0,buff_C_1_ce0,buff_C_1_q0,buff_C_1_address1,buff_C_1_ce1,buff_C_1_q1,buff_D_out_address0,buff_D_out_ce0,buff_D_out_we0,buff_D_out_d0,buff_D_out_address1,buff_D_out_ce1,buff_D_out_we1,buff_D_out_d1,buff_D_out_1_address0,buff_D_out_1_ce0,buff_D_out_1_we0,buff_D_out_1_d0,buff_D_out_1_address1,buff_D_out_1_ce1,buff_D_out_1_we1,buff_D_out_1_d1,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_address1,tmp1_ce1,tmp1_q1,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_1_address1,tmp1_1_ce1,tmp1_1_q1,tmp2_address0,tmp2_ce0,tmp2_q0,tmp2_address1,tmp2_ce1,tmp2_q1,tmp2_1_address0,tmp2_1_ce0,tmp2_1_q0,tmp2_1_address1,tmp2_1_ce1,tmp2_1_q1,beta,grp_fu_226_p_din0,grp_fu_226_p_din1,grp_fu_226_p_opcode,grp_fu_226_p_dout0,grp_fu_226_p_ce,grp_fu_230_p_din0,grp_fu_230_p_din1,grp_fu_230_p_opcode,grp_fu_230_p_dout0,grp_fu_230_p_ce,grp_fu_234_p_din0,grp_fu_234_p_din1,grp_fu_234_p_opcode,grp_fu_234_p_dout0,grp_fu_234_p_ce,grp_fu_238_p_din0,grp_fu_238_p_din1,grp_fu_238_p_opcode,grp_fu_238_p_dout0,grp_fu_238_p_ce,grp_fu_242_p_din0,grp_fu_242_p_din1,grp_fu_242_p_opcode,grp_fu_242_p_dout0,grp_fu_242_p_ce,grp_fu_246_p_din0,grp_fu_246_p_din1,grp_fu_246_p_opcode,grp_fu_246_p_dout0,grp_fu_246_p_ce,grp_fu_250_p_din0,grp_fu_250_p_din1,grp_fu_250_p_opcode,grp_fu_250_p_dout0,grp_fu_250_p_ce,grp_fu_254_p_din0,grp_fu_254_p_din1,grp_fu_254_p_opcode,grp_fu_254_p_dout0,grp_fu_254_p_ce,grp_fu_354_p_din0,grp_fu_354_p_din1,grp_fu_354_p_dout0,grp_fu_354_p_ce,grp_fu_358_p_din0,grp_fu_358_p_din1,grp_fu_358_p_dout0,grp_fu_358_p_ce,grp_fu_362_p_din0,grp_fu_362_p_din1,grp_fu_362_p_dout0,grp_fu_362_p_ce,grp_fu_366_p_din0,grp_fu_366_p_din1,grp_fu_366_p_dout0,grp_fu_366_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] buff_C_address0;
output   buff_C_ce0;
input  [31:0] buff_C_q0;
output  [10:0] buff_C_address1;
output   buff_C_ce1;
input  [31:0] buff_C_q1;
output  [10:0] buff_C_1_address0;
output   buff_C_1_ce0;
input  [31:0] buff_C_1_q0;
output  [10:0] buff_C_1_address1;
output   buff_C_1_ce1;
input  [31:0] buff_C_1_q1;
output  [10:0] buff_D_out_address0;
output   buff_D_out_ce0;
output   buff_D_out_we0;
output  [31:0] buff_D_out_d0;
output  [10:0] buff_D_out_address1;
output   buff_D_out_ce1;
output   buff_D_out_we1;
output  [31:0] buff_D_out_d1;
output  [10:0] buff_D_out_1_address0;
output   buff_D_out_1_ce0;
output   buff_D_out_1_we0;
output  [31:0] buff_D_out_1_d0;
output  [10:0] buff_D_out_1_address1;
output   buff_D_out_1_ce1;
output   buff_D_out_1_we1;
output  [31:0] buff_D_out_1_d1;
output  [10:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [10:0] tmp1_address1;
output   tmp1_ce1;
input  [31:0] tmp1_q1;
output  [10:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [10:0] tmp1_1_address1;
output   tmp1_1_ce1;
input  [31:0] tmp1_1_q1;
output  [10:0] tmp2_address0;
output   tmp2_ce0;
input  [31:0] tmp2_q0;
output  [10:0] tmp2_address1;
output   tmp2_ce1;
input  [31:0] tmp2_q1;
output  [10:0] tmp2_1_address0;
output   tmp2_1_ce0;
input  [31:0] tmp2_1_q0;
output  [10:0] tmp2_1_address1;
output   tmp2_1_ce1;
input  [31:0] tmp2_1_q1;
input  [31:0] beta;
output  [31:0] grp_fu_226_p_din0;
output  [31:0] grp_fu_226_p_din1;
output  [1:0] grp_fu_226_p_opcode;
input  [31:0] grp_fu_226_p_dout0;
output   grp_fu_226_p_ce;
output  [31:0] grp_fu_230_p_din0;
output  [31:0] grp_fu_230_p_din1;
output  [1:0] grp_fu_230_p_opcode;
input  [31:0] grp_fu_230_p_dout0;
output   grp_fu_230_p_ce;
output  [31:0] grp_fu_234_p_din0;
output  [31:0] grp_fu_234_p_din1;
output  [1:0] grp_fu_234_p_opcode;
input  [31:0] grp_fu_234_p_dout0;
output   grp_fu_234_p_ce;
output  [31:0] grp_fu_238_p_din0;
output  [31:0] grp_fu_238_p_din1;
output  [1:0] grp_fu_238_p_opcode;
input  [31:0] grp_fu_238_p_dout0;
output   grp_fu_238_p_ce;
output  [31:0] grp_fu_242_p_din0;
output  [31:0] grp_fu_242_p_din1;
output  [1:0] grp_fu_242_p_opcode;
input  [31:0] grp_fu_242_p_dout0;
output   grp_fu_242_p_ce;
output  [31:0] grp_fu_246_p_din0;
output  [31:0] grp_fu_246_p_din1;
output  [1:0] grp_fu_246_p_opcode;
input  [31:0] grp_fu_246_p_dout0;
output   grp_fu_246_p_ce;
output  [31:0] grp_fu_250_p_din0;
output  [31:0] grp_fu_250_p_din1;
output  [1:0] grp_fu_250_p_opcode;
input  [31:0] grp_fu_250_p_dout0;
output   grp_fu_250_p_ce;
output  [31:0] grp_fu_254_p_din0;
output  [31:0] grp_fu_254_p_din1;
output  [1:0] grp_fu_254_p_opcode;
input  [31:0] grp_fu_254_p_dout0;
output   grp_fu_254_p_ce;
output  [31:0] grp_fu_354_p_din0;
output  [31:0] grp_fu_354_p_din1;
input  [31:0] grp_fu_354_p_dout0;
output   grp_fu_354_p_ce;
output  [31:0] grp_fu_358_p_din0;
output  [31:0] grp_fu_358_p_din1;
input  [31:0] grp_fu_358_p_dout0;
output   grp_fu_358_p_ce;
output  [31:0] grp_fu_362_p_din0;
output  [31:0] grp_fu_362_p_din1;
input  [31:0] grp_fu_362_p_dout0;
output   grp_fu_362_p_ce;
output  [31:0] grp_fu_366_p_din0;
output  [31:0] grp_fu_366_p_din1;
input  [31:0] grp_fu_366_p_dout0;
output   grp_fu_366_p_ce;
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
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln45_fu_512_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_474;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_479;
reg   [31:0] reg_484;
reg   [31:0] reg_489;
reg   [0:0] icmp_ln45_reg_726;
reg   [0:0] icmp_ln45_reg_726_pp0_iter1_reg;
reg   [0:0] icmp_ln45_reg_726_pp0_iter2_reg;
reg   [0:0] icmp_ln45_reg_726_pp0_iter3_reg;
reg   [0:0] icmp_ln45_reg_726_pp0_iter4_reg;
reg   [0:0] icmp_ln45_reg_726_pp0_iter5_reg;
reg   [0:0] icmp_ln45_reg_726_pp0_iter6_reg;
reg   [0:0] icmp_ln45_reg_726_pp0_iter7_reg;
wire   [6:0] select_ln5_fu_544_p3;
reg   [6:0] select_ln5_reg_730;
wire   [5:0] trunc_ln24_fu_560_p1;
reg   [5:0] trunc_ln24_reg_735;
wire   [63:0] zext_ln48_fu_582_p1;
reg   [63:0] zext_ln48_reg_741;
reg   [63:0] zext_ln48_reg_741_pp0_iter1_reg;
reg   [63:0] zext_ln48_reg_741_pp0_iter2_reg;
reg   [63:0] zext_ln48_reg_741_pp0_iter3_reg;
reg   [63:0] zext_ln48_reg_741_pp0_iter4_reg;
reg   [63:0] zext_ln48_reg_741_pp0_iter5_reg;
reg   [63:0] zext_ln48_reg_741_pp0_iter6_reg;
reg   [63:0] zext_ln48_reg_741_pp0_iter7_reg;
wire   [63:0] zext_ln48_1_fu_612_p1;
reg   [63:0] zext_ln48_1_reg_777;
reg   [63:0] zext_ln48_1_reg_777_pp0_iter1_reg;
reg   [63:0] zext_ln48_1_reg_777_pp0_iter2_reg;
reg   [63:0] zext_ln48_1_reg_777_pp0_iter3_reg;
reg   [63:0] zext_ln48_1_reg_777_pp0_iter4_reg;
reg   [63:0] zext_ln48_1_reg_777_pp0_iter5_reg;
reg   [63:0] zext_ln48_1_reg_777_pp0_iter6_reg;
reg   [63:0] zext_ln48_1_reg_777_pp0_iter7_reg;
reg   [2:0] tmp_3_reg_813;
reg   [0:0] tmp_4_reg_819;
reg   [31:0] mux_case_019_reg_824;
reg   [31:0] mux_case_020_reg_829;
reg   [31:0] buff_C_load_reg_834;
wire   [63:0] zext_ln48_2_fu_659_p1;
reg   [63:0] zext_ln48_2_reg_839;
reg   [63:0] zext_ln48_2_reg_839_pp0_iter2_reg;
reg   [63:0] zext_ln48_2_reg_839_pp0_iter3_reg;
reg   [63:0] zext_ln48_2_reg_839_pp0_iter4_reg;
reg   [63:0] zext_ln48_2_reg_839_pp0_iter5_reg;
reg   [63:0] zext_ln48_2_reg_839_pp0_iter6_reg;
reg   [63:0] zext_ln48_2_reg_839_pp0_iter7_reg;
reg   [63:0] zext_ln48_2_reg_839_pp0_iter8_reg;
wire   [63:0] zext_ln48_3_fu_677_p1;
reg   [63:0] zext_ln48_3_reg_875;
reg   [63:0] zext_ln48_3_reg_875_pp0_iter2_reg;
reg   [63:0] zext_ln48_3_reg_875_pp0_iter3_reg;
reg   [63:0] zext_ln48_3_reg_875_pp0_iter4_reg;
reg   [63:0] zext_ln48_3_reg_875_pp0_iter5_reg;
reg   [63:0] zext_ln48_3_reg_875_pp0_iter6_reg;
reg   [63:0] zext_ln48_3_reg_875_pp0_iter7_reg;
reg   [63:0] zext_ln48_3_reg_875_pp0_iter8_reg;
reg   [31:0] tmp1_1_load_reg_911;
reg   [31:0] mux_case_023_reg_916;
reg   [31:0] tmp1_1_load_1_reg_921;
reg   [31:0] tmp2_1_load_reg_926;
reg   [31:0] mux_case_030_reg_931;
reg   [31:0] tmp2_1_load_1_reg_936;
reg   [31:0] buff_C_1_load_reg_941;
reg   [31:0] buff_C_load_1_reg_946;
reg   [31:0] buff_C_1_load_1_reg_951;
reg   [31:0] mux_case_025_reg_956;
reg   [31:0] tmp1_1_load_2_reg_961;
reg   [31:0] mux_case_027_reg_966;
reg   [31:0] tmp1_1_load_3_reg_971;
reg   [31:0] mux_case_032_reg_976;
reg   [31:0] tmp2_1_load_2_reg_981;
reg   [31:0] mux_case_034_reg_986;
reg   [31:0] tmp2_1_load_3_reg_991;
reg   [31:0] buff_C_load_2_reg_996;
reg   [31:0] buff_C_1_load_2_reg_1001;
reg   [31:0] buff_C_load_3_reg_1006;
reg   [31:0] buff_C_1_load_3_reg_1011;
reg   [31:0] mul4_reg_1016;
reg   [31:0] mul4_reg_1016_pp0_iter4_reg;
reg   [31:0] mul140_1_reg_1021;
reg   [31:0] mul140_1_reg_1021_pp0_iter4_reg;
reg   [31:0] mul140_2_reg_1026;
reg   [31:0] mul140_2_reg_1026_pp0_iter4_reg;
reg   [31:0] mul140_3_reg_1031;
reg   [31:0] mul140_3_reg_1031_pp0_iter4_reg;
reg   [31:0] mul140_4_reg_1036;
reg   [31:0] mul140_4_reg_1036_pp0_iter4_reg;
reg   [31:0] mul140_5_reg_1041;
reg   [31:0] mul140_5_reg_1041_pp0_iter4_reg;
reg   [31:0] mul140_6_reg_1046;
reg   [31:0] mul140_6_reg_1046_pp0_iter4_reg;
reg   [31:0] mul140_7_reg_1051;
reg   [31:0] mul140_7_reg_1051_pp0_iter4_reg;
reg   [31:0] add2_reg_1056;
reg   [31:0] add135_1_reg_1061;
reg   [31:0] add135_2_reg_1066;
reg   [31:0] add135_3_reg_1071;
reg   [31:0] add135_4_reg_1076;
reg   [31:0] add135_5_reg_1081;
reg   [31:0] add135_6_reg_1086;
reg   [31:0] add135_7_reg_1091;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_80;
wire   [6:0] add_ln46_fu_687_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_84;
wire   [6:0] select_ln45_fu_552_p3;
reg   [9:0] indvar_flatten20_fu_88;
wire   [9:0] add_ln45_1_fu_518_p2;
reg    tmp1_ce1_local;
reg   [10:0] tmp1_address1_local;
reg    tmp1_ce0_local;
reg   [10:0] tmp1_address0_local;
reg    tmp2_ce1_local;
reg   [10:0] tmp2_address1_local;
reg    tmp2_ce0_local;
reg   [10:0] tmp2_address0_local;
reg    buff_C_ce1_local;
reg   [10:0] buff_C_address1_local;
reg    buff_C_ce0_local;
reg   [10:0] buff_C_address0_local;
reg    tmp1_1_ce1_local;
reg   [10:0] tmp1_1_address1_local;
reg    tmp1_1_ce0_local;
reg   [10:0] tmp1_1_address0_local;
reg    tmp2_1_ce1_local;
reg   [10:0] tmp2_1_address1_local;
reg    tmp2_1_ce0_local;
reg   [10:0] tmp2_1_address0_local;
reg    buff_C_1_ce1_local;
reg   [10:0] buff_C_1_address1_local;
reg    buff_C_1_ce0_local;
reg   [10:0] buff_C_1_address0_local;
reg    buff_D_out_we1_local;
reg    buff_D_out_ce1_local;
reg   [10:0] buff_D_out_address1_local;
reg    buff_D_out_we0_local;
reg    buff_D_out_ce0_local;
reg   [10:0] buff_D_out_address0_local;
reg    buff_D_out_1_we1_local;
reg    buff_D_out_1_ce1_local;
reg   [10:0] buff_D_out_1_address1_local;
reg    buff_D_out_1_we0_local;
reg    buff_D_out_1_ce0_local;
reg   [10:0] buff_D_out_1_address0_local;
reg   [31:0] grp_fu_426_p0;
reg   [31:0] grp_fu_426_p1;
reg   [31:0] grp_fu_430_p0;
reg   [31:0] grp_fu_430_p1;
reg   [31:0] grp_fu_434_p0;
reg   [31:0] grp_fu_434_p1;
reg   [31:0] grp_fu_438_p0;
reg   [31:0] grp_fu_438_p1;
reg   [31:0] grp_fu_442_p0;
reg   [31:0] grp_fu_442_p1;
reg   [31:0] grp_fu_446_p0;
reg   [31:0] grp_fu_446_p1;
reg   [31:0] grp_fu_450_p0;
reg   [31:0] grp_fu_450_p1;
reg   [31:0] grp_fu_454_p0;
reg   [31:0] grp_fu_454_p1;
reg   [31:0] grp_fu_458_p0;
reg   [31:0] grp_fu_462_p0;
reg   [31:0] grp_fu_466_p0;
reg   [31:0] grp_fu_470_p0;
wire   [0:0] tmp_fu_536_p3;
wire   [6:0] add_ln45_fu_530_p2;
wire   [4:0] lshr_ln5_3_fu_564_p4;
wire   [10:0] tmp_s_fu_574_p3;
wire   [3:0] tmp_1_fu_592_p4;
wire   [10:0] tmp_2_fu_602_p4;
wire   [10:0] tmp_5_fu_650_p5;
wire   [10:0] tmp_6_fu_669_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter8_stage0;
reg    ap_idle_pp0_0to7;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to9;
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
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_80 = 7'd0;
#0 i_fu_84 = 7'd0;
#0 indvar_flatten20_fu_88 = 10'd0;
#0 ap_done_reg = 1'b0;
end
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter9 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_84 <= 7'd0;
    end else if (((icmp_ln45_fu_512_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_84 <= select_ln45_fu_552_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten20_fu_88 <= 10'd0;
    end else if (((icmp_ln45_fu_512_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten20_fu_88 <= add_ln45_1_fu_518_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_80 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_80 <= add_ln46_fu_687_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add135_1_reg_1061 <= grp_fu_230_p_dout0;
        add135_2_reg_1066 <= grp_fu_234_p_dout0;
        add135_3_reg_1071 <= grp_fu_238_p_dout0;
        add2_reg_1056 <= grp_fu_226_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add135_4_reg_1076 <= grp_fu_226_p_dout0;
        add135_5_reg_1081 <= grp_fu_230_p_dout0;
        add135_6_reg_1086 <= grp_fu_234_p_dout0;
        add135_7_reg_1091 <= grp_fu_238_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_1_load_1_reg_951 <= buff_C_1_q0;
        buff_C_1_load_reg_941 <= buff_C_1_q1;
        buff_C_load_1_reg_946 <= buff_C_q0;
        buff_C_load_reg_834 <= buff_C_q1;
        mux_case_019_reg_824 <= tmp1_q1;
        mux_case_020_reg_829 <= tmp2_q1;
        mux_case_023_reg_916 <= tmp1_q0;
        mux_case_030_reg_931 <= tmp2_q0;
        tmp1_1_load_1_reg_921 <= tmp1_1_q0;
        tmp1_1_load_reg_911 <= tmp1_1_q1;
        tmp2_1_load_1_reg_936 <= tmp2_1_q0;
        tmp2_1_load_reg_926 <= tmp2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_1_load_2_reg_1001 <= buff_C_1_q1;
        buff_C_1_load_3_reg_1011 <= buff_C_1_q0;
        buff_C_load_2_reg_996 <= buff_C_q1;
        buff_C_load_3_reg_1006 <= buff_C_q0;
        mux_case_025_reg_956 <= tmp1_q1;
        mux_case_027_reg_966 <= tmp1_q0;
        mux_case_032_reg_976 <= tmp2_q1;
        mux_case_034_reg_986 <= tmp2_q0;
        tmp1_1_load_2_reg_961 <= tmp1_1_q1;
        tmp1_1_load_3_reg_971 <= tmp1_1_q0;
        tmp2_1_load_2_reg_981 <= tmp2_1_q1;
        tmp2_1_load_3_reg_991 <= tmp2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln45_reg_726 <= icmp_ln45_fu_512_p2;
        icmp_ln45_reg_726_pp0_iter1_reg <= icmp_ln45_reg_726;
        icmp_ln45_reg_726_pp0_iter2_reg <= icmp_ln45_reg_726_pp0_iter1_reg;
        icmp_ln45_reg_726_pp0_iter3_reg <= icmp_ln45_reg_726_pp0_iter2_reg;
        icmp_ln45_reg_726_pp0_iter4_reg <= icmp_ln45_reg_726_pp0_iter3_reg;
        icmp_ln45_reg_726_pp0_iter5_reg <= icmp_ln45_reg_726_pp0_iter4_reg;
        icmp_ln45_reg_726_pp0_iter6_reg <= icmp_ln45_reg_726_pp0_iter5_reg;
        icmp_ln45_reg_726_pp0_iter7_reg <= icmp_ln45_reg_726_pp0_iter6_reg;
        mul140_4_reg_1036_pp0_iter4_reg <= mul140_4_reg_1036;
        mul140_5_reg_1041_pp0_iter4_reg <= mul140_5_reg_1041;
        mul140_6_reg_1046_pp0_iter4_reg <= mul140_6_reg_1046;
        mul140_7_reg_1051_pp0_iter4_reg <= mul140_7_reg_1051;
        select_ln5_reg_730 <= select_ln5_fu_544_p3;
        tmp_3_reg_813 <= {{select_ln5_fu_544_p3[5:3]}};
        tmp_4_reg_819 <= select_ln5_fu_544_p3[32'd1];
        trunc_ln24_reg_735 <= trunc_ln24_fu_560_p1;
        zext_ln48_1_reg_777[10 : 1] <= zext_ln48_1_fu_612_p1[10 : 1];
        zext_ln48_1_reg_777_pp0_iter1_reg[10 : 1] <= zext_ln48_1_reg_777[10 : 1];
        zext_ln48_1_reg_777_pp0_iter2_reg[10 : 1] <= zext_ln48_1_reg_777_pp0_iter1_reg[10 : 1];
        zext_ln48_1_reg_777_pp0_iter3_reg[10 : 1] <= zext_ln48_1_reg_777_pp0_iter2_reg[10 : 1];
        zext_ln48_1_reg_777_pp0_iter4_reg[10 : 1] <= zext_ln48_1_reg_777_pp0_iter3_reg[10 : 1];
        zext_ln48_1_reg_777_pp0_iter5_reg[10 : 1] <= zext_ln48_1_reg_777_pp0_iter4_reg[10 : 1];
        zext_ln48_1_reg_777_pp0_iter6_reg[10 : 1] <= zext_ln48_1_reg_777_pp0_iter5_reg[10 : 1];
        zext_ln48_1_reg_777_pp0_iter7_reg[10 : 1] <= zext_ln48_1_reg_777_pp0_iter6_reg[10 : 1];
        zext_ln48_reg_741[10 : 0] <= zext_ln48_fu_582_p1[10 : 0];
        zext_ln48_reg_741_pp0_iter1_reg[10 : 0] <= zext_ln48_reg_741[10 : 0];
        zext_ln48_reg_741_pp0_iter2_reg[10 : 0] <= zext_ln48_reg_741_pp0_iter1_reg[10 : 0];
        zext_ln48_reg_741_pp0_iter3_reg[10 : 0] <= zext_ln48_reg_741_pp0_iter2_reg[10 : 0];
        zext_ln48_reg_741_pp0_iter4_reg[10 : 0] <= zext_ln48_reg_741_pp0_iter3_reg[10 : 0];
        zext_ln48_reg_741_pp0_iter5_reg[10 : 0] <= zext_ln48_reg_741_pp0_iter4_reg[10 : 0];
        zext_ln48_reg_741_pp0_iter6_reg[10 : 0] <= zext_ln48_reg_741_pp0_iter5_reg[10 : 0];
        zext_ln48_reg_741_pp0_iter7_reg[10 : 0] <= zext_ln48_reg_741_pp0_iter6_reg[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul140_1_reg_1021 <= grp_fu_358_p_dout0;
        mul140_2_reg_1026 <= grp_fu_362_p_dout0;
        mul140_3_reg_1031 <= grp_fu_366_p_dout0;
        mul4_reg_1016 <= grp_fu_354_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul140_1_reg_1021_pp0_iter4_reg <= mul140_1_reg_1021;
        mul140_2_reg_1026_pp0_iter4_reg <= mul140_2_reg_1026;
        mul140_3_reg_1031_pp0_iter4_reg <= mul140_3_reg_1031;
        mul4_reg_1016_pp0_iter4_reg <= mul4_reg_1016;
        zext_ln48_2_reg_839[0] <= zext_ln48_2_fu_659_p1[0];
zext_ln48_2_reg_839[10 : 2] <= zext_ln48_2_fu_659_p1[10 : 2];
        zext_ln48_2_reg_839_pp0_iter2_reg[0] <= zext_ln48_2_reg_839[0];
zext_ln48_2_reg_839_pp0_iter2_reg[10 : 2] <= zext_ln48_2_reg_839[10 : 2];
        zext_ln48_2_reg_839_pp0_iter3_reg[0] <= zext_ln48_2_reg_839_pp0_iter2_reg[0];
zext_ln48_2_reg_839_pp0_iter3_reg[10 : 2] <= zext_ln48_2_reg_839_pp0_iter2_reg[10 : 2];
        zext_ln48_2_reg_839_pp0_iter4_reg[0] <= zext_ln48_2_reg_839_pp0_iter3_reg[0];
zext_ln48_2_reg_839_pp0_iter4_reg[10 : 2] <= zext_ln48_2_reg_839_pp0_iter3_reg[10 : 2];
        zext_ln48_2_reg_839_pp0_iter5_reg[0] <= zext_ln48_2_reg_839_pp0_iter4_reg[0];
zext_ln48_2_reg_839_pp0_iter5_reg[10 : 2] <= zext_ln48_2_reg_839_pp0_iter4_reg[10 : 2];
        zext_ln48_2_reg_839_pp0_iter6_reg[0] <= zext_ln48_2_reg_839_pp0_iter5_reg[0];
zext_ln48_2_reg_839_pp0_iter6_reg[10 : 2] <= zext_ln48_2_reg_839_pp0_iter5_reg[10 : 2];
        zext_ln48_2_reg_839_pp0_iter7_reg[0] <= zext_ln48_2_reg_839_pp0_iter6_reg[0];
zext_ln48_2_reg_839_pp0_iter7_reg[10 : 2] <= zext_ln48_2_reg_839_pp0_iter6_reg[10 : 2];
        zext_ln48_2_reg_839_pp0_iter8_reg[0] <= zext_ln48_2_reg_839_pp0_iter7_reg[0];
zext_ln48_2_reg_839_pp0_iter8_reg[10 : 2] <= zext_ln48_2_reg_839_pp0_iter7_reg[10 : 2];
        zext_ln48_3_reg_875[10 : 2] <= zext_ln48_3_fu_677_p1[10 : 2];
        zext_ln48_3_reg_875_pp0_iter2_reg[10 : 2] <= zext_ln48_3_reg_875[10 : 2];
        zext_ln48_3_reg_875_pp0_iter3_reg[10 : 2] <= zext_ln48_3_reg_875_pp0_iter2_reg[10 : 2];
        zext_ln48_3_reg_875_pp0_iter4_reg[10 : 2] <= zext_ln48_3_reg_875_pp0_iter3_reg[10 : 2];
        zext_ln48_3_reg_875_pp0_iter5_reg[10 : 2] <= zext_ln48_3_reg_875_pp0_iter4_reg[10 : 2];
        zext_ln48_3_reg_875_pp0_iter6_reg[10 : 2] <= zext_ln48_3_reg_875_pp0_iter5_reg[10 : 2];
        zext_ln48_3_reg_875_pp0_iter7_reg[10 : 2] <= zext_ln48_3_reg_875_pp0_iter6_reg[10 : 2];
        zext_ln48_3_reg_875_pp0_iter8_reg[10 : 2] <= zext_ln48_3_reg_875_pp0_iter7_reg[10 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul140_4_reg_1036 <= grp_fu_354_p_dout0;
        mul140_5_reg_1041 <= grp_fu_358_p_dout0;
        mul140_6_reg_1046 <= grp_fu_362_p_dout0;
        mul140_7_reg_1051 <= grp_fu_366_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_474 <= grp_fu_242_p_dout0;
        reg_479 <= grp_fu_246_p_dout0;
        reg_484 <= grp_fu_250_p_dout0;
        reg_489 <= grp_fu_254_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln45_fu_512_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln45_reg_726_pp0_iter7_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter8_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter8_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to7 = 1'b1;
    end else begin
        ap_idle_pp0_0to7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to9 = 1'b1;
    end else begin
        ap_idle_pp0_1to9 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_1_address0_local = zext_ln48_3_fu_677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_1_address0_local = zext_ln48_1_fu_612_p1;
    end else begin
        buff_C_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_1_address1_local = zext_ln48_2_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_1_address1_local = zext_ln48_fu_582_p1;
    end else begin
        buff_C_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_1_ce0_local = 1'b1;
    end else begin
        buff_C_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_1_ce1_local = 1'b1;
    end else begin
        buff_C_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_address0_local = zext_ln48_3_fu_677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_address0_local = zext_ln48_1_fu_612_p1;
    end else begin
        buff_C_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_address1_local = zext_ln48_2_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_address1_local = zext_ln48_fu_582_p1;
    end else begin
        buff_C_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_ce0_local = 1'b1;
    end else begin
        buff_C_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_ce1_local = 1'b1;
    end else begin
        buff_C_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_1_address0_local = zext_ln48_3_reg_875_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_D_out_1_address0_local = zext_ln48_1_reg_777_pp0_iter7_reg;
    end else begin
        buff_D_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_1_address1_local = zext_ln48_2_reg_839_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_D_out_1_address1_local = zext_ln48_reg_741_pp0_iter7_reg;
    end else begin
        buff_D_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_D_out_1_ce0_local = 1'b1;
    end else begin
        buff_D_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_D_out_1_ce1_local = 1'b1;
    end else begin
        buff_D_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_D_out_1_we0_local = 1'b1;
    end else begin
        buff_D_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_D_out_1_we1_local = 1'b1;
    end else begin
        buff_D_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_address0_local = zext_ln48_3_reg_875_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_D_out_address0_local = zext_ln48_1_reg_777_pp0_iter7_reg;
    end else begin
        buff_D_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_address1_local = zext_ln48_2_reg_839_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_D_out_address1_local = zext_ln48_reg_741_pp0_iter7_reg;
    end else begin
        buff_D_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_D_out_ce0_local = 1'b1;
    end else begin
        buff_D_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_D_out_ce1_local = 1'b1;
    end else begin
        buff_D_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_D_out_we0_local = 1'b1;
    end else begin
        buff_D_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_D_out_we1_local = 1'b1;
    end else begin
        buff_D_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_p0 = mux_case_025_reg_956;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_426_p0 = mux_case_019_reg_824;
    end else begin
        grp_fu_426_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_p1 = mux_case_032_reg_976;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_426_p1 = mux_case_020_reg_829;
    end else begin
        grp_fu_426_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_430_p0 = tmp1_1_load_2_reg_961;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_430_p0 = tmp1_1_load_reg_911;
    end else begin
        grp_fu_430_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_430_p1 = tmp2_1_load_2_reg_981;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_430_p1 = tmp2_1_load_reg_926;
    end else begin
        grp_fu_430_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_434_p0 = mux_case_027_reg_966;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_434_p0 = mux_case_023_reg_916;
    end else begin
        grp_fu_434_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_434_p1 = mux_case_034_reg_986;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_434_p1 = mux_case_030_reg_931;
    end else begin
        grp_fu_434_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_438_p0 = tmp1_1_load_3_reg_971;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_438_p0 = tmp1_1_load_1_reg_921;
    end else begin
        grp_fu_438_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_438_p1 = tmp2_1_load_3_reg_991;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_438_p1 = tmp2_1_load_1_reg_936;
    end else begin
        grp_fu_438_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_442_p0 = add135_4_reg_1076;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_442_p0 = add2_reg_1056;
        end else begin
            grp_fu_442_p0 = 'bx;
        end
    end else begin
        grp_fu_442_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_442_p1 = mul140_4_reg_1036_pp0_iter4_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_442_p1 = mul4_reg_1016_pp0_iter4_reg;
        end else begin
            grp_fu_442_p1 = 'bx;
        end
    end else begin
        grp_fu_442_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_446_p0 = add135_5_reg_1081;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_446_p0 = add135_1_reg_1061;
        end else begin
            grp_fu_446_p0 = 'bx;
        end
    end else begin
        grp_fu_446_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_446_p1 = mul140_5_reg_1041_pp0_iter4_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_446_p1 = mul140_1_reg_1021_pp0_iter4_reg;
        end else begin
            grp_fu_446_p1 = 'bx;
        end
    end else begin
        grp_fu_446_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_450_p0 = add135_6_reg_1086;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_450_p0 = add135_2_reg_1066;
        end else begin
            grp_fu_450_p0 = 'bx;
        end
    end else begin
        grp_fu_450_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_450_p1 = mul140_6_reg_1046_pp0_iter4_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_450_p1 = mul140_2_reg_1026_pp0_iter4_reg;
        end else begin
            grp_fu_450_p1 = 'bx;
        end
    end else begin
        grp_fu_450_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_454_p0 = add135_7_reg_1091;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_454_p0 = add135_3_reg_1071;
        end else begin
            grp_fu_454_p0 = 'bx;
        end
    end else begin
        grp_fu_454_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_454_p1 = mul140_7_reg_1051_pp0_iter4_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_454_p1 = mul140_3_reg_1031_pp0_iter4_reg;
        end else begin
            grp_fu_454_p1 = 'bx;
        end
    end else begin
        grp_fu_454_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_458_p0 = buff_C_load_2_reg_996;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_458_p0 = buff_C_load_reg_834;
    end else begin
        grp_fu_458_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_462_p0 = buff_C_1_load_2_reg_1001;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_462_p0 = buff_C_1_load_reg_941;
    end else begin
        grp_fu_462_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_466_p0 = buff_C_load_3_reg_1006;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_466_p0 = buff_C_load_1_reg_946;
    end else begin
        grp_fu_466_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_470_p0 = buff_C_1_load_3_reg_1011;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_470_p0 = buff_C_1_load_1_reg_951;
    end else begin
        grp_fu_470_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_address0_local = zext_ln48_3_fu_677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_1_address0_local = zext_ln48_1_fu_612_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_address1_local = zext_ln48_2_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_1_address1_local = zext_ln48_fu_582_p1;
    end else begin
        tmp1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tmp1_1_ce1_local = 1'b1;
    end else begin
        tmp1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_address0_local = zext_ln48_3_fu_677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_address0_local = zext_ln48_1_fu_612_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_address1_local = zext_ln48_2_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_address1_local = zext_ln48_fu_582_p1;
    end else begin
        tmp1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tmp1_ce1_local = 1'b1;
    end else begin
        tmp1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_address0_local = zext_ln48_3_fu_677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp2_1_address0_local = zext_ln48_1_fu_612_p1;
    end else begin
        tmp2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_address1_local = zext_ln48_2_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp2_1_address1_local = zext_ln48_fu_582_p1;
    end else begin
        tmp2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tmp2_1_ce1_local = 1'b1;
    end else begin
        tmp2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_address0_local = zext_ln48_3_fu_677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp2_address0_local = zext_ln48_1_fu_612_p1;
    end else begin
        tmp2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_address1_local = zext_ln48_2_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp2_address1_local = zext_ln48_fu_582_p1;
    end else begin
        tmp2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        tmp2_ce1_local = 1'b1;
    end else begin
        tmp2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to9 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln45_1_fu_518_p2 = (indvar_flatten20_fu_88 + 10'd1);
assign add_ln45_fu_530_p2 = (i_fu_84 + 7'd1);
assign add_ln46_fu_687_p2 = (select_ln5_reg_730 + 7'd8);
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
assign buff_C_1_address0 = buff_C_1_address0_local;
assign buff_C_1_address1 = buff_C_1_address1_local;
assign buff_C_1_ce0 = buff_C_1_ce0_local;
assign buff_C_1_ce1 = buff_C_1_ce1_local;
assign buff_C_address0 = buff_C_address0_local;
assign buff_C_address1 = buff_C_address1_local;
assign buff_C_ce0 = buff_C_ce0_local;
assign buff_C_ce1 = buff_C_ce1_local;
assign buff_D_out_1_address0 = buff_D_out_1_address0_local;
assign buff_D_out_1_address1 = buff_D_out_1_address1_local;
assign buff_D_out_1_ce0 = buff_D_out_1_ce0_local;
assign buff_D_out_1_ce1 = buff_D_out_1_ce1_local;
assign buff_D_out_1_d0 = reg_489;
assign buff_D_out_1_d1 = reg_479;
assign buff_D_out_1_we0 = buff_D_out_1_we0_local;
assign buff_D_out_1_we1 = buff_D_out_1_we1_local;
assign buff_D_out_address0 = buff_D_out_address0_local;
assign buff_D_out_address1 = buff_D_out_address1_local;
assign buff_D_out_ce0 = buff_D_out_ce0_local;
assign buff_D_out_ce1 = buff_D_out_ce1_local;
assign buff_D_out_d0 = reg_484;
assign buff_D_out_d1 = reg_474;
assign buff_D_out_we0 = buff_D_out_we0_local;
assign buff_D_out_we1 = buff_D_out_we1_local;
assign grp_fu_226_p_ce = 1'b1;
assign grp_fu_226_p_din0 = grp_fu_426_p0;
assign grp_fu_226_p_din1 = grp_fu_426_p1;
assign grp_fu_226_p_opcode = 2'd0;
assign grp_fu_230_p_ce = 1'b1;
assign grp_fu_230_p_din0 = grp_fu_430_p0;
assign grp_fu_230_p_din1 = grp_fu_430_p1;
assign grp_fu_230_p_opcode = 2'd0;
assign grp_fu_234_p_ce = 1'b1;
assign grp_fu_234_p_din0 = grp_fu_434_p0;
assign grp_fu_234_p_din1 = grp_fu_434_p1;
assign grp_fu_234_p_opcode = 2'd0;
assign grp_fu_238_p_ce = 1'b1;
assign grp_fu_238_p_din0 = grp_fu_438_p0;
assign grp_fu_238_p_din1 = grp_fu_438_p1;
assign grp_fu_238_p_opcode = 2'd0;
assign grp_fu_242_p_ce = 1'b1;
assign grp_fu_242_p_din0 = grp_fu_442_p0;
assign grp_fu_242_p_din1 = grp_fu_442_p1;
assign grp_fu_242_p_opcode = 2'd0;
assign grp_fu_246_p_ce = 1'b1;
assign grp_fu_246_p_din0 = grp_fu_446_p0;
assign grp_fu_246_p_din1 = grp_fu_446_p1;
assign grp_fu_246_p_opcode = 2'd0;
assign grp_fu_250_p_ce = 1'b1;
assign grp_fu_250_p_din0 = grp_fu_450_p0;
assign grp_fu_250_p_din1 = grp_fu_450_p1;
assign grp_fu_250_p_opcode = 2'd0;
assign grp_fu_254_p_ce = 1'b1;
assign grp_fu_254_p_din0 = grp_fu_454_p0;
assign grp_fu_254_p_din1 = grp_fu_454_p1;
assign grp_fu_254_p_opcode = 2'd0;
assign grp_fu_354_p_ce = 1'b1;
assign grp_fu_354_p_din0 = grp_fu_458_p0;
assign grp_fu_354_p_din1 = beta;
assign grp_fu_358_p_ce = 1'b1;
assign grp_fu_358_p_din0 = grp_fu_462_p0;
assign grp_fu_358_p_din1 = beta;
assign grp_fu_362_p_ce = 1'b1;
assign grp_fu_362_p_din0 = grp_fu_466_p0;
assign grp_fu_362_p_din1 = beta;
assign grp_fu_366_p_ce = 1'b1;
assign grp_fu_366_p_din0 = grp_fu_470_p0;
assign grp_fu_366_p_din1 = beta;
assign icmp_ln45_fu_512_p2 = ((indvar_flatten20_fu_88 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_3_fu_564_p4 = {{select_ln5_fu_544_p3[5:1]}};
assign select_ln45_fu_552_p3 = ((tmp_fu_536_p3[0:0] == 1'b1) ? add_ln45_fu_530_p2 : i_fu_84);
assign select_ln5_fu_544_p3 = ((tmp_fu_536_p3[0:0] == 1'b1) ? 7'd0 : j_fu_80);
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_address1 = tmp1_1_address1_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_ce1 = tmp1_1_ce1_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_address1 = tmp1_address1_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_ce1 = tmp1_ce1_local;
assign tmp2_1_address0 = tmp2_1_address0_local;
assign tmp2_1_address1 = tmp2_1_address1_local;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_1_ce1 = tmp2_1_ce1_local;
assign tmp2_address0 = tmp2_address0_local;
assign tmp2_address1 = tmp2_address1_local;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp2_ce1 = tmp2_ce1_local;
assign tmp_1_fu_592_p4 = {{select_ln5_fu_544_p3[5:2]}};
assign tmp_2_fu_602_p4 = {{{trunc_ln24_fu_560_p1}, {tmp_1_fu_592_p4}}, {1'd1}};
assign tmp_5_fu_650_p5 = {{{{trunc_ln24_reg_735}, {tmp_3_reg_813}}, {1'd1}}, {tmp_4_reg_819}};
assign tmp_6_fu_669_p4 = {{{trunc_ln24_reg_735}, {tmp_3_reg_813}}, {2'd3}};
assign tmp_fu_536_p3 = j_fu_80[32'd6];
assign tmp_s_fu_574_p3 = {{trunc_ln24_fu_560_p1}, {lshr_ln5_3_fu_564_p4}};
assign trunc_ln24_fu_560_p1 = select_ln45_fu_552_p3[5:0];
assign zext_ln48_1_fu_612_p1 = tmp_2_fu_602_p4;
assign zext_ln48_2_fu_659_p1 = tmp_5_fu_650_p5;
assign zext_ln48_3_fu_677_p1 = tmp_6_fu_669_p4;
assign zext_ln48_fu_582_p1 = tmp_s_fu_574_p3;
always @ (posedge ap_clk) begin
    zext_ln48_reg_741[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_741_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_741_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_741_pp0_iter3_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_741_pp0_iter4_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_741_pp0_iter5_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_741_pp0_iter6_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_741_pp0_iter7_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_777[0] <= 1'b1;
    zext_ln48_1_reg_777[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_777_pp0_iter1_reg[0] <= 1'b1;
    zext_ln48_1_reg_777_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_777_pp0_iter2_reg[0] <= 1'b1;
    zext_ln48_1_reg_777_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_777_pp0_iter3_reg[0] <= 1'b1;
    zext_ln48_1_reg_777_pp0_iter3_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_777_pp0_iter4_reg[0] <= 1'b1;
    zext_ln48_1_reg_777_pp0_iter4_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_777_pp0_iter5_reg[0] <= 1'b1;
    zext_ln48_1_reg_777_pp0_iter5_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_777_pp0_iter6_reg[0] <= 1'b1;
    zext_ln48_1_reg_777_pp0_iter6_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_777_pp0_iter7_reg[0] <= 1'b1;
    zext_ln48_1_reg_777_pp0_iter7_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_839[1] <= 1'b1;
    zext_ln48_2_reg_839[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_839_pp0_iter2_reg[1] <= 1'b1;
    zext_ln48_2_reg_839_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_839_pp0_iter3_reg[1] <= 1'b1;
    zext_ln48_2_reg_839_pp0_iter3_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_839_pp0_iter4_reg[1] <= 1'b1;
    zext_ln48_2_reg_839_pp0_iter4_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_839_pp0_iter5_reg[1] <= 1'b1;
    zext_ln48_2_reg_839_pp0_iter5_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_839_pp0_iter6_reg[1] <= 1'b1;
    zext_ln48_2_reg_839_pp0_iter6_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_839_pp0_iter7_reg[1] <= 1'b1;
    zext_ln48_2_reg_839_pp0_iter7_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_839_pp0_iter8_reg[1] <= 1'b1;
    zext_ln48_2_reg_839_pp0_iter8_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_875[1:0] <= 2'b11;
    zext_ln48_3_reg_875[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_875_pp0_iter2_reg[1:0] <= 2'b11;
    zext_ln48_3_reg_875_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_875_pp0_iter3_reg[1:0] <= 2'b11;
    zext_ln48_3_reg_875_pp0_iter3_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_875_pp0_iter4_reg[1:0] <= 2'b11;
    zext_ln48_3_reg_875_pp0_iter4_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_875_pp0_iter5_reg[1:0] <= 2'b11;
    zext_ln48_3_reg_875_pp0_iter5_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_875_pp0_iter6_reg[1:0] <= 2'b11;
    zext_ln48_3_reg_875_pp0_iter6_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_875_pp0_iter7_reg[1:0] <= 2'b11;
    zext_ln48_3_reg_875_pp0_iter7_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_875_pp0_iter8_reg[1:0] <= 2'b11;
    zext_ln48_3_reg_875_pp0_iter8_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 